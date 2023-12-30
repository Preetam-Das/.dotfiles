#version 100
precision highp float;
varying highp vec2 v_texcoord;
uniform highp sampler2D tex;
uniform vec2 rectDimensions;

void main() {
    // get the color of the pixel of texture tex at coordinate v_texcoord
    vec4 color = texture2D(tex, v_texcoord);

    // get the center of the screen
    vec2 center = vec2(0.5, 0.5);

    // define rectangle dimensions
    float rectWidth = 0.2;
    float rectHeight = 0.2;

    // calculate rectangle boundaries
    vec2 rectMin = center - (rectWidth/2.0, rectHeight/2.0);
    vec2 rectMax = center + (rectWidth/2.0, rectHeight/2.0);

    // current pixel position
    vec2 pixpos = v_texcoord;

    // if current pixel inside the rectangle
    if ((pixpos.x >= rectMin.x && pixpos.x <= rectMax.x) && (pixpos.y >= rectMin.y && pixpos.y <= rectMax.y)){
        // color the pixel
        // mix is used to interpolate between the to colors using the third value
        color = mix(color, vec4(0.0,0.0,0.0,0.1), 0.5);
    }

    gl_FragColor = color;
}
