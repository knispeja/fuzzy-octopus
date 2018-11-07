/// @description Move to mouse position if selected
if (global.selected_object == id)
{
	var mouse_x_safe = mouse_x;
	var mouse_y_safe = mouse_y;
	if (scr_path_if_possible(mouse_x_safe, mouse_y_safe))
	{
		instance_create_layer(mouse_x_safe, mouse_y_safe, "Effects", obj_effect_navigate_here);
	}
}
