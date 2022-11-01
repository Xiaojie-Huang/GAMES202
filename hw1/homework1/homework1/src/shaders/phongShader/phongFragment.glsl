#ifdef GL_ES
precision mediump float;
#endif

// Phong related variables
uniform sampler2D uSampler;
uniform vec3 uKd;
uniform vec3 uKs;
uniform vec3 uLightPos;
uniform vec3 uCameraPos;
uniform vec3 uLightIntensity;

varying highp vec2 vTextureCoord;
varying highp vec3 vFragPos;
varying highp vec3 vNormal;

// Shadow map related variables
#define NUM_SAMPLES 100
#define BLOCKER_SEARCH_NUM_SAMPLES NUM_SAMPLES
#define PCF_NUM_SAMPLES NUM_SAMPLES
#define NUM_RINGS 10

#define EPS 1e-3
#define PI 3.141592653589793
#define PI2 6.283185307179586

uniform sampler2D uShadowMap;

varying vec4 vPositionFromLight;

highp float rand_1to1(highp float x ) { 
  // -1 -1
  return fract(sin(x)*10000.0);
}

highp float rand_2to1(vec2 uv ) { 
  // 0 - 1
	const highp float a = 12.9898, b = 78.233, c = 43758.5453;
	highp float dt = dot( uv.xy, vec2( a,b ) ), sn = mod( dt, PI );
	return fract(sin(sn) * c);
}

float unpack(vec4 rgbaDepth) {
    const vec4 bitShift = vec4(1.0, 1.0/256.0, 1.0/(256.0*256.0), 1.0/(256.0*256.0*256.0));
    return dot(rgbaDepth, bitShift);
}

vec2 poissonDisk[NUM_SAMPLES];

void poissonDiskSamples( const in vec2 randomSeed ) {

  float ANGLE_STEP = PI2 * float( NUM_RINGS ) / float( NUM_SAMPLES );
  float INV_NUM_SAMPLES = 1.0 / float( NUM_SAMPLES );

  float angle = rand_2to1( randomSeed ) * PI2;
  float radius = INV_NUM_SAMPLES;
  float radiusStep = radius;

  for( int i = 0; i < NUM_SAMPLES; i ++ ) {
    poissonDisk[i] = vec2( cos( angle ), sin( angle ) ) * pow( radius, 0.75 );
    radius += radiusStep;
    angle += ANGLE_STEP;
  }
}

void uniformDiskSamples( const in vec2 randomSeed ) {

  float randNum = rand_2to1(randomSeed);
  float sampleX = rand_1to1( randNum ) ;
  float sampleY = rand_1to1( sampleX ) ;

  float angle = sampleX * PI2;
  float radius = sqrt(sampleY);

  for( int i = 0; i < NUM_SAMPLES; i ++ ) {
    poissonDisk[i] = vec2( radius * cos(angle) , radius * sin(angle)  );

    sampleX = rand_1to1( sampleY ) ;
    sampleY = rand_1to1( sampleX ) ;

    angle = sampleX * PI2;
    radius = sqrt(sampleY);
  }
}

float findBlocker( sampler2D shadowMap,  vec2 uv, float zReceiver ) {
  
  float SM_Size = 2048.0;
  float sum = 0.0;
  int num = 0;
  float offset = 20.0/SM_Size;

  poissonDiskSamples(uv);

  for(int i = 0;i < BLOCKER_SEARCH_NUM_SAMPLES;++i)
  {
    vec4 shadowColor = texture2D(shadowMap,uv+poissonDisk[i]*offset);
    float SM_Depth = unpack(shadowColor);
    //对于在阴影中的加上其depth，最后算出blocker的平均深度
    if(zReceiver > SM_Depth+EPS)
    {
      num++;
      sum += SM_Depth;
    }
  }

  //特殊情况处理
  if(num == 0)
    return 1.0;
	return sum/float(num);
}

float PCF(sampler2D shadowMap, vec4 coords) {
  //用来记录卷积结果
  float sum = 0.0;
  //卷积偏移，步长/SM分辨率,这里分子越大边缘越模糊,并且和NUM_SAMPLE需要匹配，如果strider过大而实际采样NUM_SAMPLE较小，会出现明显噪点
  float SM_Size = 2048.0;
  float offset = 10.0/SM_Size;

  //两种采样方法
  poissonDiskSamples(coords.xy);
  //uniformDiskSamples(coords.xy);

  //卷积过程,若要阴影更加柔和，需要增大NUM_SAMPLES
  for(int i = 0; i < NUM_SAMPLES;++i)
  {
    //这里注意，给定采样点的偏移值需要根据步长进行调整
    vec4 shadowColor = texture2D(shadowMap,coords.xy+poissonDisk[i]*offset);

    float SM_Depth = unpack(shadowColor);
    if(coords.z >= SM_Depth + EPS)
      sum += 0.0;
    else
      sum += 1.0;
  }
  return sum/float(NUM_SAMPLES);
}

float PCSS(sampler2D shadowMap, vec4 coords){

  // STEP 1: avgblocker depth（根据公式准备好参数）
  float d_Blocker = findBlocker(shadowMap,coords.xy,coords.z);
  float d_Receiver = coords.z;
  float w_Light = 1.0;

  // STEP 2: penumbra size
  float w_penumbra = w_Light * (d_Receiver-d_Blocker)/d_Blocker;

  // STEP 3: filtering
  float SM_Size = 2048.0;
  float offset = 10.0/SM_Size;
  float sum = 0.0;

  for(int i = 0;i < NUM_SAMPLES;++i)
  {
    vec4 shadowColor = texture2D(shadowMap,coords.xy+poissonDisk[i]*offset*w_penumbra);

    float SM_Depth = unpack(shadowColor);
    if(coords.z >= SM_Depth + EPS)
      sum += 0.0;
    else
      sum += 1.0;
  }

  return sum/float(NUM_SAMPLES);

}


float useShadowMap(sampler2D shadowMap, vec4 shadowCoord){
  //查询SM
  vec4 shadowColor = texture2D(shadowMap,shadowCoord.xy);
  float SM_Depth = unpack(shadowColor);
  if(shadowCoord.z >= SM_Depth+EPS)
    return 0.0;
  else
    return 1.0;
}

vec3 blinnPhong() {
  vec3 color = texture2D(uSampler, vTextureCoord).rgb;
  color = pow(color, vec3(2.2));

  vec3 ambient = 0.05 * color;

  vec3 lightDir = normalize(uLightPos);
  vec3 normal = normalize(vNormal);
  float diff = max(dot(lightDir, normal), 0.0);
  vec3 light_atten_coff =
      uLightIntensity / pow(length(uLightPos - vFragPos), 2.0);
  vec3 diffuse = diff * light_atten_coff * color;

  vec3 viewDir = normalize(uCameraPos - vFragPos);
  vec3 halfDir = normalize((lightDir + viewDir));
  float spec = pow(max(dot(halfDir, normal), 0.0), 32.0);
  vec3 specular = uKs * light_atten_coff * spec;

  vec3 radiance = (ambient + diffuse + specular);
  vec3 phongColor = pow(radiance, vec3(1.0 / 2.2));
  return phongColor;
}

void main(void) {

  //归一NDC
  vec3 shadowCoord = vPositionFromLight.xyz/vPositionFromLight.w;
  shadowCoord.xyz = (shadowCoord.xyz+1.0)/2.0;
  float visibility;
  //visibility = useShadowMap(uShadowMap, vec4(shadowCoord, 1.0));
  //visibility = PCF(uShadowMap, vec4(shadowCoord, 1.0));
  visibility = PCSS(uShadowMap, vec4(shadowCoord, 1.0));

  vec3 phongColor = blinnPhong();

  gl_FragColor = vec4(phongColor * visibility, 1.0);
  //gl_FragColor = vec4(phongColor, 1.0);
}