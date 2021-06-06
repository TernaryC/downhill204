draw_self();
image_index = 0;
if (ducking) image_index = 1;

draw_set_color(c_white);
draw_text(x + 32, y + 80, ducktime);