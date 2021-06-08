draw_self();
image_index = 0;
if (duckTime > duckLimit) image_index = 1;

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
