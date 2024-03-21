uniform float uSize;
uniform vec2 uResolution;
uniform float uProgress;

attribute float aSize;

void main() {

vec3 newPosition = position;
    // Final position
    vec4 modelPosition = modelMatrix * vec4(newPosition, 1.0);
    vec4 viewPosition = viewMatrix * modelPosition;
    gl_Position = projectionMatrix * viewPosition;

    // Final size
    gl_PointSize = uSize * uResolution.y * aSize;
    gl_PointSize *= 1.0 / - viewPosition.z;
}