/// @function zoom(zoom_ratio)
/// @param {real} ratio  Ratio of the room size to scale by; a negative ratio will zoom out

var zoom_ratio = argument0;

var camera_to_zoom = view_camera[0];
var view_x = camera_get_view_x(camera_to_zoom);
var view_y = camera_get_view_y(camera_to_zoom);
var view_w = camera_get_view_width(camera_to_zoom);
var view_h = camera_get_view_height(camera_to_zoom);

// Current ratio of the mouse to the view
var _mouse_x = (mouse_x - view_x) / view_w;
var _mouse_y = (mouse_y - view_y) / view_h;

view_w -= zoom_ratio * room_width;
view_h -= zoom_ratio * room_height;
view_x = mouse_x - view_w * _mouse_x;
view_y = mouse_y - view_h * _mouse_y;

if (view_w > 0 && view_h > 0)
{
	camera_set_view_size(camera_to_zoom, view_w, view_h);
	camera_set_view_pos(camera_to_zoom, view_x, view_y);
}
