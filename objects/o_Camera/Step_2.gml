camera_set_view_size(view, view_width * window_scale, view_height * window_scale);
if (instance_exists(o_Player)) {
	var _x = o_Player.x - view_width * window_scale/2 + 200;
	var _y = o_Player.y - view_height * window_scale/2 - 40;
	//camera_set_view_size(view,1080,1920) 
	camera_set_view_pos(view, _x, _y);
}

