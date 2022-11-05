# Install script for directory: D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/nori")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/build/ext_build/openexr/OpenEXR/IlmImf/Debug/IlmImf.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/build/ext_build/openexr/OpenEXR/IlmImf/Release/IlmImf.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/build/ext_build/openexr/OpenEXR/IlmImf/MinSizeRel/IlmImf.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/build/ext_build/openexr/OpenEXR/IlmImf/RelWithDebInfo/IlmImf.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenEXR" TYPE FILE FILES
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfForward.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfExport.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfAttribute.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfBoxAttribute.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfCRgbaFile.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfChannelList.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfChannelListAttribute.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfCompressionAttribute.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfDoubleAttribute.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfFloatAttribute.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfFrameBuffer.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfHeader.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfIO.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfInputFile.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfIntAttribute.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfLineOrderAttribute.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfMatrixAttribute.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfOpaqueAttribute.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfOutputFile.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfRgbaFile.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfStringAttribute.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfVecAttribute.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfHuf.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfWav.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfLut.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfArray.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfCompression.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfLineOrder.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfName.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfPixelType.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfVersion.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfXdr.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfConvert.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfPreviewImage.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfPreviewImageAttribute.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfChromaticities.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfChromaticitiesAttribute.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfKeyCode.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfKeyCodeAttribute.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfTimeCode.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfTimeCodeAttribute.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfRational.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfRationalAttribute.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfFramesPerSecond.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfStandardAttributes.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfEnvmap.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfEnvmapAttribute.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfInt64.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfRgba.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfTileDescription.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfTileDescriptionAttribute.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfTiledInputFile.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfTiledOutputFile.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfTiledRgbaFile.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfRgbaYca.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfTestFile.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfThreading.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfB44Compressor.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfStringVectorAttribute.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfMultiView.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfAcesFile.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfMultiPartOutputFile.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfGenericOutputFile.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfMultiPartInputFile.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfGenericInputFile.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfPartType.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfPartHelper.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfOutputPart.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfTiledOutputPart.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfInputPart.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfTiledInputPart.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepScanLineOutputFile.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepScanLineOutputPart.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepScanLineInputFile.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepScanLineInputPart.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepTiledInputFile.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepTiledInputPart.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepTiledOutputFile.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepTiledOutputPart.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepFrameBuffer.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepCompositing.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfCompositeDeepScanLine.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfNamespace.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfMisc.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepImageState.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepImageStateAttribute.h"
    "D:/FileRecv/Learning/GitHub/GAMES/GAMES202/HW2/prt/ext/openexr/OpenEXR/IlmImf/ImfFloatVectorAttribute.h"
    )
endif()

