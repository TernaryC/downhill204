draw_self();
image_index = 0;
if (ducktime > jumpThreshold) image_index = 1;

//Debug counter for ducktime
draw_set_color(c_white);
draw_text(x + 32, y + 80, ducktime);