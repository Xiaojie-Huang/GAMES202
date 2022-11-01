class DirectionalLight {

    constructor(lightIntensity, lightColor, lightPos, focalPoint, lightUp, hasShadowMap, gl) {
        this.mesh = Mesh.cube(setTransform(0, 0, 0, 0.2, 0.2, 0.2, 0));
        this.mat = new EmissiveMaterial(lightIntensity, lightColor);
        this.lightPos = lightPos;
        this.focalPoint = focalPoint;
        this.lightUp = lightUp

        this.hasShadowMap = hasShadowMap;
        this.fbo = new FBO(gl);
        if (!this.fbo) {
            console.log("无法设置帧缓冲区对象");
            return;
        }
    }

    CalcLightMVP(translate, scale) {
        let lightMVP = mat4.create();
        let modelMatrix = mat4.create();
        let viewMatrix = mat4.create();
        let projectionMatrix = mat4.create();

        // Model transform
        //首先根据输入的位移和缩放构建模型矩阵
        //库API：translate(输出结果，输入结果，translate变换)
        mat4.translate(modelMatrix,modelMatrix,translate);
        mat4.scale(modelMatrix,modelMatrix,scale);


        // View transform
        //视图矩阵也可以直接通过API实现
        mat4.lookAt(viewMatrix,this.lightPos,this.focalPoint,this.lightUp);

        // Projection transform
        //作业推荐使用正交投影，得出线性深度信息，便于后续使用
        //正交投影为一个长方形视椎体，需要6个参数来定义（上下，前后，左右）
        //具体参数会影响SM覆盖范围，需要尝试
        var left = -100;
        var right = 100;
        var top = 100;
        var bottom = -100;
        var near = 0.01;
        var far = 400;
        mat4.ortho(projectionMatrix,left,right,bottom,top,near,far);

        mat4.multiply(lightMVP, projectionMatrix, viewMatrix);
        mat4.multiply(lightMVP, lightMVP, modelMatrix);

        return lightMVP;
    }
}
