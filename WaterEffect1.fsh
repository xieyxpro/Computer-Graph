varying vec4 v_fragmentColor;
varying vec2 v_texCoord;

void main() {
    float timeFactor = 1;
    float texFactor = 10;
    float ampFactor = 0.01f;

    //just like rotate pixel according to texture coordinate
    vec2 v_texCoordN = v_texCoord;
    v_texCoordN.x += sin(CC_Time.y*timeFactor+v_texCoord.x*texFactor)*ampFactor;

    v_texCoordN.y += cos(CC_Time.y*timeFactor+v_texCoord.y*texFactor)*ampFactor;

    gl_FragColor = texture2D(CC_Texture0,v_texCoordN)*v_fragmentColor;

}