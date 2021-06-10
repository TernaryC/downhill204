view_width = 1920/6;
view_height = 1080/6;

#macro view view_camera[0]

window_scale = 3;
window_set_size(view_width * window_scale, view_height * window_scale);

alarm[0] = 1;

surface_resize(application_surface, view_width * window_scale, view_height * window_scale);

self.getCamera = function (i) {
	if (i == 0) return camera_get_view_x(view);
	if (i == 1) return camera_get_view_y(view);
}

self.getDimension = function (i) {
	if (i == 0) return camera_get_view_width(view);
	if (i == 1) return camera_get_view_height(view);
}

