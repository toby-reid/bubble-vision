shader_type canvas_item;

uniform sampler2D mask_texture;
uniform vec2 mask_offset;

void fragment() {
   	vec2 mask_uv = UV - mask_offset;
    float mask_value = texture(mask_texture, mask_uv).r;

    // If the mask texture is active at this pixel, discard
    if (mask_value > 0.5) {
        discard;
    }
}
