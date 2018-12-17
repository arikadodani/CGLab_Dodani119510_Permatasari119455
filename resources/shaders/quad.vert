#version 150
#extension GL_ARB_explicit_attrib_location : require

// vertex attributes of VAO
layout(location = 0) in vec3 in_Position;

uniform int effect;
uniform int grayscale;
uniform int blur;


out vec2 pass_texture;

flat out int pass_effect;
flat out int pass_grayscale;
flat out int pass_blur;


void main(void)
{
    gl_Position = vec4(in_Position.x, in_Position.y, in_Position.z, 1.0);
    pass_texture = vec2(in_Position.x + 1, in_Position.y + 1) / 2;
    pass_effect = effect;
    pass_grayscale =grayscale;
    pass_blur = blur;
}