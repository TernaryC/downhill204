draw_self();
sprite_index = s_Skater;
if (duckTime > duckLimit) sprite_index = s_Skater_Duck;

//Debug counter for duckTime
draw_set_color(c_white);
draw_text(x + 32, y + 60, duckTime);
draw_text(x + 32, y + 75, kflipTime);