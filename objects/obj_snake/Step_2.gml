/// @description Manage animations
var player_near = distance_to_object(obj_ghost) < 300.0;
if (player_near)
{	
	if (sprite_index == spr_snake_enter)
	{
		image_speed = 1;
		if (image_index == image_number)
		{
			sprite_index = spr_snake_idle; // Idle after fully entered
		}
	}
	else if (image_index == 0 || image_index == image_number)
	{
		image_speed *= -1; // Ping-pong idle animation
	}
}
else if (sprite_index == spr_snake_idle)
{
	sprite_index = spr_snake_enter; // Play exit animation
	image_index = image_number-1;
	image_speed = -1;
}
else if (image_speed > 0)
{
	image_speed = -1; // Backtrack enter animation from the current frame
}
else if (image_index == 0)
{
	image_speed = 0; // Stop on invisible/exited frame
}
