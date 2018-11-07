/// @description Draw outline if selected
if (global.selected_object = id)
{
	scr_outline_draw();
}
else
{
	draw_self();
}