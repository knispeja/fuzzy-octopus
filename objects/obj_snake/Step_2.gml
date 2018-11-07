/// @description Start animation if player is near

var player_near = distance_to_object(obj_ghost) < 300.0;
if (player_near)
{
	image_speed = 1;
	
	if (image_index == image_number && sprite_index == spr_snake_enter)
	{
		sprite_index = spr_snake_idle;
	}
}
else if (image_speed > 0)
{
	if (sprite_index != spr_snake_enter)
	{
		sprite_index = spr_snake_enter;
		image_index = image_number-1;
	}
	
	image_speed = -1;
}
else if (image_index == 0)
{
	image_speed = 0;
}
