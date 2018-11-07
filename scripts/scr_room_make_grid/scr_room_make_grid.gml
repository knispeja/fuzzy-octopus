/// @function room_make_grid()
var room_cell_width = room_width div global.cell_width;
var room_cell_height = room_height div global.cell_height;

global.controllable_nav_grid = mp_grid_create(0, 0, room_cell_width, room_cell_height, global.cell_width, global.cell_height);
mp_grid_add_instances(global.controllable_nav_grid, obj_template_obstacle, false);

with(obj_template_pathable)
{
	if (path_exists(current_path))
	{
		var path_length = path_get_number(current_path) - 1;
		var current_path_x = path_get_point_x(current_path, path_length);
		var current_path_y = path_get_point_y(current_path, path_length);
		scr_path_if_possible(current_path_x, current_path_y);
	}
}
