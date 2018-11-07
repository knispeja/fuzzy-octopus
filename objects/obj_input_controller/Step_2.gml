/// @description Pan if necessary
if (!panning)
{
	return;
}

var mouse_view_x = window_view_mouse_get_x(0);
var mouse_view_y = window_view_mouse_get_y(0);

if (mouse_view_x != prev_pan_mouse_x || mouse_view_y != prev_pan_mouse_y)
{
	if (window_has_focus())
	{
		var camera = view_camera[0];
		var camera_new_x = camera_get_view_x(camera) - (mouse_view_x - prev_pan_mouse_x);
		var camera_new_y = camera_get_view_y(camera) - (mouse_view_y - prev_pan_mouse_y);
		camera_set_view_pos(camera, camera_new_x, camera_new_y);
	}
	else
	{
		panning = false;
	}
}
