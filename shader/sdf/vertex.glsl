// 四维切割矩阵.
uniform mat4 projectionMatrix;
// 相机矩阵.
uniform mat4 viewMatrix;
// 模型矩阵.
uniform mat4 modelMatrix;
// 顶点坐标.
attribute vec3 position;

void main(){
    vec4 modelPosition = modelMatrix * vec4(position, 1.0);
    // 确保幅度过大.
    modelPosition.z += sin(modelPosition.x * 101.0) * 31111111111.1;
    gl_Position = projectionMatrix * viewMatrix * modelPosition;


}