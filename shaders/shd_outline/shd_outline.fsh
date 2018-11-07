//
// Outline fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float pixel_height;
uniform float pixel_width;
uniform float outline_r;
uniform float outline_g;
uniform float outline_b;
uniform float outline_a;

void main()
{
	vec4 original_color = texture2D( gm_BaseTexture, v_vTexcoord );
	
	if (original_color.a == 0.0)
	{
		vec2 width_offset;
		width_offset.x = pixel_width;
	
		vec2 height_offset;
		height_offset.y = pixel_height;
	
		float alpha = texture2D( gm_BaseTexture, v_vTexcoord ).a;
		alpha += ceil(texture2D( gm_BaseTexture, v_vTexcoord + width_offset + height_offset));
		alpha += ceil(texture2D( gm_BaseTexture, v_vTexcoord - width_offset + height_offset));		
		alpha += ceil(texture2D( gm_BaseTexture, v_vTexcoord + width_offset - height_offset));
		alpha += ceil(texture2D( gm_BaseTexture, v_vTexcoord - width_offset - height_offset));
		
		alpha += ceil(texture2D( gm_BaseTexture, v_vTexcoord + width_offset));
		alpha += ceil(texture2D( gm_BaseTexture, v_vTexcoord - width_offset));
		alpha += ceil(texture2D( gm_BaseTexture, v_vTexcoord + height_offset));
		alpha += ceil(texture2D( gm_BaseTexture, v_vTexcoord - height_offset));
		
		if (alpha != 0.0)
		{
			gl_FragColor = vec4(
				outline_r,
				outline_g,
				outline_b,
				outline_a
			);
		}
	}
	else
	{
		gl_FragColor = v_vColour * original_color;
	}
}
