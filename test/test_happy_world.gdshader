shader_type canvas_item;

uniform sampler2D mask_texture;
uniform vec2 mask_offset;
uniform vec2 mask_scale;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
    // Calculate UV for the mask texture
    vec2 mask_uv = (UV - mask_offset) / mask_scale;

    // Sample the mask texture
    float mask_value = texture(mask_texture, mask_uv).r;

    // If the mask texture is active at this pixel, discard
    if (mask_value > 0.5) {
        discard;
    }

    // Otherwise, render the original sprite
    COLOR = texture(TEXTURE, UV) * COLOR;
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
