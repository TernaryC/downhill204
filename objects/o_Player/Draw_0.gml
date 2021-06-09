draw_self();
sprite_index = s_Skater;
if (duckTime > duckLimit) sprite_index = s_Skater_Duck;

//Debug counter for duckTime
draw_set_color(c_white);
draw_text(x + 32, y + 60, duckTime);
draw_text(x + 32, y + 75, kflipTime);

//invincible frame display logic
if isInvinc == true{
	InvincCounter++
	if InvincCounter % 3{
		o_Player.image_alpha = .4
	}else o_Player.image_alpha = 1
	if InvincCounter > 30{
		isInvinc = false
		o_Player.image_alpha = 1
	}

}
