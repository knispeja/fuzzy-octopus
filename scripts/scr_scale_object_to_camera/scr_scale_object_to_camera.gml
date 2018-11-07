/// @function scale_object_to_camera(width_ratio, height_ratio)
/// @param {real} width_ratio  Ratio of the camera width to scale the object to
/// @param {real} height_ratio  Ratio of the camera height to scale the object to
var camera = view_camera[0];
var view_w = camera_get_view_width(camera);
var view_h = camera_get_view_height(camera);

var desired_width = view_w * argument0;
var desired_height = view_h * argument1;
image_xscale = (image_xscale/sprite_get_width(spr_navigate_here))*desired_width;
image_yscale = (image_yscale/sprite_get_height(spr_navigate_here))*desired_height;
