unit threejs;

interface
{$mode objfpc}
{$modeswitch externalclass}

uses
  js,web;


type
  TJSVector3 = Class external name 'Vector3'
  Public
    x : double;
    y : double;
    z : double;
    isVector3 : boolean;
    function Doset(arg1: JSValue;arg2: JSValue;arg3: JSValue) : JSValue external name 'set';
    function setScalar(arg1: JSValue) : JSValue;
    function setX(arg1: JSValue) : JSValue;
    function setY(arg1: JSValue) : JSValue;
    function setZ(arg1: JSValue) : JSValue;
    function setComponent(arg1: JSValue;arg2: JSValue) : JSValue;
    function getComponent(arg1: JSValue) : JSValue;
    function clone() : JSValue;
    function copy(arg1: JSValue) : JSValue;
    function add(arg1: JSValue;arg2: JSValue) : JSValue;
    function addScalar(arg1: JSValue) : JSValue;
    function addVectors(arg1: JSValue;arg2: JSValue) : JSValue;
    function addScaledVector(arg1: JSValue;arg2: JSValue) : JSValue;
    function sub(arg1: JSValue;arg2: JSValue) : JSValue;
    function subScalar(arg1: JSValue) : JSValue;
    function subVectors(arg1: JSValue;arg2: JSValue) : JSValue;
    function multiply(arg1: JSValue;arg2: JSValue) : JSValue;
    function multiplyScalar(arg1: JSValue) : JSValue;
    function multiplyVectors(arg1: JSValue;arg2: JSValue) : JSValue;
    function applyEuler(arg1: JSValue) : JSValue;
    function applyAxisAngle(arg1: JSValue;arg2: JSValue) : JSValue;
    function applyMatrix3(arg1: JSValue) : JSValue;
    function applyMatrix4(arg1: JSValue) : JSValue;
    function applyQuaternion(arg1: JSValue) : JSValue;
    function project(arg1: JSValue) : JSValue;
    function unproject(arg1: JSValue) : JSValue;
    function transformDirection(arg1: JSValue) : JSValue;
    function divide(arg1: JSValue) : JSValue;
    function divideScalar(arg1: JSValue) : JSValue;
    function min(arg1: JSValue) : JSValue;
    function max(arg1: JSValue) : JSValue;
    function clamp(arg1: JSValue;arg2: JSValue) : JSValue;
    function clampScalar(arg1: JSValue;arg2: JSValue) : JSValue;
    function clampLength(arg1: JSValue;arg2: JSValue) : JSValue;
    function floor() : JSValue;
    function ceil() : JSValue;
    function round() : JSValue;
    function roundToZero() : JSValue;
    function negate() : JSValue;
    function dot(arg1: JSValue) : JSValue;
    function lengthSq() : JSValue;
    function length() : JSValue;
    function manhattanLength() : JSValue;
    function normalize() : JSValue;
    function setLength(arg1: JSValue) : JSValue;
    function lerp(arg1: JSValue;arg2: JSValue) : JSValue;
    function lerpVectors(arg1: JSValue;arg2: JSValue;arg3: JSValue) : JSValue;
    function cross(arg1: JSValue;arg2: JSValue) : JSValue;
    function crossVectors(arg1: JSValue;arg2: JSValue) : JSValue;
    function projectOnVector(arg1: JSValue) : JSValue;
    function projectOnPlane(arg1: JSValue) : JSValue;
    function reflect(arg1: JSValue) : JSValue;
    function angleTo(arg1: JSValue) : JSValue;
    function distanceTo(arg1: JSValue) : JSValue;
    function distanceToSquared(arg1: JSValue) : JSValue;
    function manhattanDistanceTo(arg1: JSValue) : JSValue;
    function setFromSpherical(arg1: JSValue) : JSValue;
    function setFromCylindrical(arg1: JSValue) : JSValue;
    function setFromMatrixPosition(arg1: JSValue) : JSValue;
    function setFromMatrixScale(arg1: JSValue) : JSValue;
    function setFromMatrixColumn(arg1: JSValue;arg2: JSValue) : JSValue;
    function equals(arg1: JSValue) : JSValue;
    function fromArray(arg1: JSValue;arg2: JSValue) : JSValue;
    function toArray(arg1: JSValue;arg2: JSValue) : JSValue;
    function fromBufferAttribute(arg1: JSValue;arg2: JSValue;arg3: JSValue) : JSValue;
    function setEulerFromRotationMatrix() : JSValue;
    function setEulerFromQuaternion() : JSValue;
    function getPositionFromMatrix(arg1: JSValue) : JSValue;
    function getScaleFromMatrix(arg1: JSValue) : JSValue;
    function getColumnFromMatrix(arg1: JSValue;arg2: JSValue) : JSValue;
    function applyProjection(arg1: JSValue) : JSValue;
    function fromAttribute(arg1: JSValue;arg2: JSValue;arg3: JSValue) : JSValue;
    function distanceToManhattan(arg1: JSValue) : JSValue;
    function lengthManhattan() : JSValue;
  end;

  TJSobject3D = Class external name 'object3D'
  Public
    id : double;
    uuid : string;
    name : string;
    Ftype : string external name 'type';
    parent : TJSObject;
    children : TJSArray;
    up : TJSVector3;
    position : TJSVector3;
    rotation : TJSVector3;
    quaternion : TJSVector3;
    scale : TJSVector3;
    modelViewMatrix : TJSObject;
    normalMatrix : TJSObject;
    matrix : TJSObject;
    matrixWorld : TJSObject;
    matrixAutoUpdate : boolean;
    matrixWorldNeedsUpdate : boolean;
    layers : TJSObject;
    visible : boolean;
    castShadow : boolean;
    receiveShadow : boolean;
    frustumCulled : boolean;
    renderOrder : double;
    userData : TJSObject;
    el : TJSObject;
    isGroup : boolean;
    isObject3D : boolean;
    function onBeforeRender() : JSValue;
    function onAfterRender() : JSValue;
    function applyMatrix(arg1: JSValue) : JSValue;
    function applyQuaternion(arg1: JSValue) : JSValue;
    function setRotationFromAxisAngle(arg1: JSValue;arg2: JSValue) : JSValue;
    function setRotationFromEuler(arg1: JSValue) : JSValue;
    function setRotationFromMatrix(arg1: JSValue) : JSValue;
    function setRotationFromQuaternion(arg1: JSValue) : JSValue;
    function rotateOnAxis(arg1: JSValue;arg2: JSValue) : JSValue;
    function rotateOnWorldAxis(arg1: JSValue;arg2: JSValue) : JSValue;
    function rotateX(arg1: JSValue) : JSValue;
    function rotateY(arg1: JSValue) : JSValue;
    function rotateZ(arg1: JSValue) : JSValue;
    function translateOnAxis(arg1: JSValue;arg2: JSValue) : JSValue;
    function translateX(arg1: JSValue) : JSValue;
    function translateY(arg1: JSValue) : JSValue;
    function translateZ(arg1: JSValue) : JSValue;
    function localToWorld(arg1: JSValue) : JSValue;
    function worldToLocal(arg1: JSValue) : JSValue;
    function lookAt(arg1: JSValue;arg2: JSValue;arg3: JSValue) : JSValue;
    function add(arg1: JSValue) : JSValue;
    function remove(arg1: JSValue) : JSValue;
    function getObjectById(arg1: JSValue) : JSValue;
    function getObjectByName(arg1: JSValue) : JSValue;
    function getObjectByProperty(arg1: JSValue;arg2: JSValue) : JSValue;
    function getWorldPosition(arg1: JSValue) : JSValue;
    function getWorldQuaternion(arg1: JSValue) : JSValue;
    function getWorldRotation(arg1: JSValue) : JSValue;
    function getWorldScale(arg1: JSValue) : JSValue;
    function getWorldDirection(arg1: JSValue) : JSValue;
    function raycast() : JSValue;
    function traverse(arg1: JSValue) : JSValue;
    function traverseVisible(arg1: JSValue) : JSValue;
    function traverseAncestors(arg1: JSValue) : JSValue;
    function updateMatrix() : JSValue;
    function updateMatrixWorld(arg1: JSValue) : JSValue;
    function clone(arg1: JSValue) : JSValue;
    function copy(arg1: JSValue;arg2: JSValue) : JSValue;
    function getChildByName(arg1: JSValue) : JSValue;
    function renderDepth() : JSValue;
    function translate(arg1: JSValue;arg2: JSValue) : JSValue;
  end;

  TJSTHREE = Class external name 'THREE'
  Public
    function Ib(arg1: JSValue;arg2: JSValue;arg3: JSValue) : JSValue;
    function jb(arg1: JSValue;arg2: JSValue;arg3: JSValue) : JSValue;
    function be(arg1: JSValue) : JSValue;
    ShaderLib : TJSObject;
    UniformsLib : TJSObject;
    UniformsUtils : TJSObject;
    ShaderChunk : TJSObject;
    DefaultLoadingManager : TJSObject;
    function ge(arg1: JSValue;arg2: JSValue;arg3: JSValue) : JSValue;
    function fd(arg1: JSValue) : JSValue;
    function me(arg1: JSValue) : JSValue;
    function wf(arg1: JSValue) : JSValue;
    function Ia(arg1: JSValue) : JSValue;
    function jd() : JSValue;
    LoaderUtils : TJSObject;
    Cache : TJSObject;
    AudioContext : TJSObject;
    AnimationUtils : TJSObject;
    Math : TJSObject;
    ImageUtils : TJSObject;
    ShapeUtils : TJSObject;
    REVISION : string;
    MOUSE : TJSObject;
    CullFaceNone : double;
    CullFaceBack : double;
    CullFaceFront : double;
    CullFaceFrontBack : double;
    FrontFaceDirectionCW : double;
    FrontFaceDirectionCCW : double;
    BasicShadowMap : double;
    PCFShadowMap : double;
    PCFSoftShadowMap : double;
    FrontSide : double;
    BackSide : double;
    DoubleSide : double;
    FlatShading : double;
    SmoothShading : double;
    NoColors : double;
    FaceColors : double;
    VertexColors : double;
    NoBlending : double;
    NormalBlending : double;
    AdditiveBlending : double;
    SubtractiveBlending : double;
    MultiplyBlending : double;
    CustomBlending : double;
    AddEquation : double;
    SubtractEquation : double;
    ReverseSubtractEquation : double;
    MinEquation : double;
    MaxEquation : double;
    ZeroFactor : double;
    OneFactor : double;
    SrcColorFactor : double;
    OneMinusSrcColorFactor : double;
    SrcAlphaFactor : double;
    OneMinusSrcAlphaFactor : double;
    DstAlphaFactor : double;
    OneMinusDstAlphaFactor : double;
    DstColorFactor : double;
    OneMinusDstColorFactor : double;
    SrcAlphaSaturateFactor : double;
    NeverDepth : double;
    AlwaysDepth : double;
    LessDepth : double;
    LessEqualDepth : double;
    EqualDepth : double;
    GreaterEqualDepth : double;
    GreaterDepth : double;
    NotEqualDepth : double;
    MultiplyOperation : double;
    MixOperation : double;
    AddOperation : double;
    NoToneMapping : double;
    LinearToneMapping : double;
    ReinhardToneMapping : double;
    Uncharted2ToneMapping : double;
    CineonToneMapping : double;
    ACESFilmicToneMapping : double;
    UVMapping : double;
    CubeReflectionMapping : double;
    CubeRefractionMapping : double;
    EquirectangularReflectionMapping : double;
    EquirectangularRefractionMapping : double;
    SphericalReflectionMapping : double;
    CubeUVReflectionMapping : double;
    CubeUVRefractionMapping : double;
    RepeatWrapping : double;
    ClampToEdgeWrapping : double;
    MirroredRepeatWrapping : double;
    NearestFilter : double;
    NearestMipMapNearestFilter : double;
    NearestMipMapLinearFilter : double;
    LinearFilter : double;
    LinearMipMapNearestFilter : double;
    LinearMipMapLinearFilter : double;
    UnsignedByteType : double;
    ByteType : double;
    ShortType : double;
    UnsignedShortType : double;
    IntType : double;
    UnsignedIntType : double;
    FloatType : double;
    HalfFloatType : double;
    UnsignedShort4444Type : double;
    UnsignedShort5551Type : double;
    UnsignedShort565Type : double;
    UnsignedInt248Type : double;
    AlphaFormat : double;
    RGBFormat : double;
    RGBAFormat : double;
    LuminanceFormat : double;
    LuminanceAlphaFormat : double;
    RGBEFormat : double;
    DepthFormat : double;
    DepthStencilFormat : double;
    RedFormat : double;
    RGB_S3TC_DXT1_Format : double;
    RGBA_S3TC_DXT1_Format : double;
    RGBA_S3TC_DXT3_Format : double;
    RGBA_S3TC_DXT5_Format : double;
    RGB_PVRTC_4BPPV1_Format : double;
    RGB_PVRTC_2BPPV1_Format : double;
    RGBA_PVRTC_4BPPV1_Format : double;
    RGBA_PVRTC_2BPPV1_Format : double;
    RGB_ETC1_Format : double;
    RGBA_ASTC_4x4_Format : double;
    RGBA_ASTC_5x4_Format : double;
    RGBA_ASTC_5x5_Format : double;
    RGBA_ASTC_6x5_Format : double;
    RGBA_ASTC_6x6_Format : double;
    RGBA_ASTC_8x5_Format : double;
    RGBA_ASTC_8x6_Format : double;
    RGBA_ASTC_8x8_Format : double;
    RGBA_ASTC_10x5_Format : double;
    RGBA_ASTC_10x6_Format : double;
    RGBA_ASTC_10x8_Format : double;
    RGBA_ASTC_10x10_Format : double;
    RGBA_ASTC_12x10_Format : double;
    RGBA_ASTC_12x12_Format : double;
    LoopOnce : double;
    LoopRepeat : double;
    LoopPingPong : double;
    InterpolateDiscrete : double;
    InterpolateLinear : double;
    InterpolateSmooth : double;
    ZeroCurvatureEnding : double;
    ZeroSlopeEnding : double;
    WrapAroundEnding : double;
    TrianglesDrawMode : double;
    TriangleStripDrawMode : double;
    TriangleFanDrawMode : double;
    LinearEncoding : double;
    sRGBEncoding : double;
    GammaEncoding : double;
    RGBEEncoding : double;
    LogLuvEncoding : double;
    RGBM7Encoding : double;
    RGBM16Encoding : double;
    RGBDEncoding : double;
    BasicDepthPacking : double;
    RGBADepthPacking : double;
    TangentSpaceNormalMap : double;
    ObjectSpaceNormalMap : double;
    function Face4(arg1: JSValue;arg2: JSValue;arg3: JSValue;arg4: JSValue;arg5: JSValue;arg6: JSValue;arg7: JSValue) : JSValue;
    function MeshFaceMaterial(arg1: JSValue) : JSValue;
    function MultiMaterial(arg1: JSValue) : JSValue;
    function PointCloud(arg1: JSValue;arg2: JSValue) : JSValue;
    function Particle(arg1: JSValue) : JSValue;
    function ParticleSystem(arg1: JSValue;arg2: JSValue) : JSValue;
    function PointCloudMaterial(arg1: JSValue) : JSValue;
    function ParticleBasicMaterial(arg1: JSValue) : JSValue;
    function ParticleSystemMaterial(arg1: JSValue) : JSValue;
    function Vertex(arg1: JSValue;arg2: JSValue;arg3: JSValue) : JSValue;
    function DynamicBufferAttribute(arg1: JSValue;arg2: JSValue) : JSValue;
    function Int8Attribute(arg1: JSValue;arg2: JSValue) : JSValue;
    function Uint8Attribute(arg1: JSValue;arg2: JSValue) : JSValue;
    function Uint8ClampedAttribute(arg1: JSValue;arg2: JSValue) : JSValue;
    function Int16Attribute(arg1: JSValue;arg2: JSValue) : JSValue;
    function Uint16Attribute(arg1: JSValue;arg2: JSValue) : JSValue;
    function Int32Attribute(arg1: JSValue;arg2: JSValue) : JSValue;
    function Uint32Attribute(arg1: JSValue;arg2: JSValue) : JSValue;
    function Float32Attribute(arg1: JSValue;arg2: JSValue) : JSValue;
    function Float64Attribute(arg1: JSValue;arg2: JSValue) : JSValue;
    function AxisHelper(arg1: JSValue) : JSValue;
    function BoundingBoxHelper(arg1: JSValue;arg2: JSValue) : JSValue;
    function EdgesHelper(arg1: JSValue;arg2: JSValue) : JSValue;
    function WireframeHelper(arg1: JSValue;arg2: JSValue) : JSValue;
    function XHRLoader(arg1: JSValue) : JSValue;
    function BinaryTextureLoader(arg1: JSValue) : JSValue;
    GeometryUtils : TJSObject;
    function Projector() : JSValue;
    function CanvasRenderer() : JSValue;
    function JSONLoader() : JSValue;
    SceneUtils : TJSObject;
    function LensFlare() : JSValue;
  end;

var
  THREE : TJSTHREE external name 'THREE';
implementation

end.
