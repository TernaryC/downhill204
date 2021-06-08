draw_self();
image_index = 0;
if (ducktime > jumpThreshold) image_index = 1;

//Debug counter for ducktime
draw_set_color(c_white);
draw_text(x + 32, y + 80, ducktime);

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