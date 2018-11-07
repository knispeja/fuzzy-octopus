/// @function path_if_possible(goal_x, goal_y)
/// @param {real} goal_x	Exact x coordinate of the desired end position to convert to cell coordinate
/// @param {real} goal_y	Exact y coordinate of the desired end position to convert to cell coordinate
/// @return {bool}			Whether or not the pathing was possible

var true_goal_x = argument0;
var true_goal_y = argument1;

var goal_x = (true_goal_x div global.cell_width) * global.cell_width + global.cell_width/2;
var goal_y = (true_goal_y div global.cell_height) * global.cell_height + global.cell_height/2;

var grid = global.controllable_nav_grid;

var new_path = path_add();
if (mp_grid_path(grid, new_path, x + global.cell_width/2, y + global.cell_height/2, goal_x, goal_y, 1))
{
	path_start(new_path, path_speed, path_action_stop, false);
	scr_delete_path_if_exists(current_path);
	current_path = new_path;
	return true;
}

path_delete(new_path);
return false;
