#version 100
precision highp float;
varying highp vec2 v_texcoord;
uniform highp sampler2D tex;
uniform highp float time;

void main() {
    vec4 color = texture2D(tex, v_texcoord);

    // Calculate the distance from the current pixel to the center of the screen
    vec2 center = vec2(0.5, 0.0); // Move the center to the bottom of the screen
    vec2 normalizedCoord = abs(v_texcoord - center);
    normalizedCoord.x *= (1.0 / 0.5625); // Adjust the aspect ratio to make it a square

    // Define the size of the central rectangle where the rainbow effect will be applied
    float rectWidth = 0.02; // Adjust the width of the rectangle

    // Use the smoothstep function to determine the height of the rectangle based on time
    float peakHeight = 0.2; // Adjust the peak height (0.0 to 1.0)
    float speedFactor = 2.0; // Adjust the speed factor (higher values for faster speed)
    float adjustedTime = time * speedFactor;
    float rectHeight = smoothstep(0.0, 1.0, abs(sin(adjustedTime))) * peakHeight;

    // Center the rectangle horizontally
    normalizedCoord.x -= (rectWidth / 2.0);

    // Check if the current pixel is inside the central rectangle
    if (normalizedCoord.x < rectWidth && normalizedCoord.y > 1.0 - rectHeight) {
        // Calculate a rainbow color based on time
        vec3 rainbowColor = vec3(
            0.5 + 0.5 * sin(3.0 * adjustedTime),
            0.5 + 0.5 * sin(3.0 * adjustedTime + 2.0),
            0.5 + 0.5 * sin(3.0 * adjustedTime + 4.0)
        );

        // Blend the rainbow color with the original color inside the central rectangle
        color.rgb = mix(color.rgb, rainbowColor, 0.5); // Adjust the 0.5 to control the intensity
    }

    gl_FragColor = color;
}

