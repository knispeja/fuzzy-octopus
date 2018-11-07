u_pixel_height = shader_get_uniform(shd_outline, "pixel_height");
u_pixel_width = shader_get_uniform(shd_outline, "pixel_width");
u_outline_r = shader_get_uniform(shd_outline, "outline_r");
u_outline_g = shader_get_uniform(shd_outline, "outline_g");
u_outline_b = shader_get_uniform(shd_outline, "outline_b");
u_outline_a = shader_get_uniform(shd_outline, "outline_a");

outline_colour = c_lime;
outline_opacity = 0.75;
outline_thickness_pixels = 2;

var sprite_texture = sprite_get_texture(sprite_index, 0);
texel_height = outline_thickness_pixels * texture_get_texel_height(sprite_texture);
texel_width = outline_thickness_pixels * texture_get_texel_width(sprite_texture);