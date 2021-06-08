draw_self();
image_index = 0;
if (duckTime > global.limits[? "Ollie"]) image_index = 1;

//Debug counter for duckTime
draw_set_color(c_white);
draw_text(x + 32, y + 60, duckTime);
draw_text(x + 32, y + 75, kflipTime);