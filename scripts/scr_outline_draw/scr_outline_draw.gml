shader_set(shd_outline);
shader_set_uniform_f(u_pixel_height, texel_height);
shader_set_uniform_f(u_pixel_width, texel_width);
shader_set_uniform_f(u_outline_r, colour_get_red(outline_colour));
shader_set_uniform_f(u_outline_g, colour_get_green(outline_colour));
shader_set_uniform_f(u_outline_b, colour_get_blue(outline_colour));
shader_set_uniform_f(u_outline_a, outline_opacity);
draw_self();
shader_reset();
