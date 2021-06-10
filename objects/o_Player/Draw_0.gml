draw_self();
if (tricking) {
	switch (global.lastTrick) {
		case "Kickflip":   setSprite(s_Skater_kFlip); break;
		case "Ollie":      setSprite(s_Skater_Hop);   break;
		case "Indy":       setSprite(s_Skater_Indy);  break;
		case "Melon":      setSprite(s_Skater_Melon); break;
		case "Nosegrab":   setSprite(s_Skater_Nose);  break;
		case "Tailgrab":   setSprite(s_Skater_Tail);  break;
		case "Shove":      setSprite(s_Skater_Shove); break;
		case "Fingerflip": setSprite(s_Skater_Finger); break;
		case "Airwalk":    setSprite(s_Skater_Airwalk); break;
		case "Madonna":    setSprite(s_Skater_Madonna); break;
		case "Impossible": setSprite(s_Skater_Imp); break;
		case "Slam":       setSprite(s_Skater_Slam_Start); break;
	}
} else {
	if (!inAir) {
		if (mustLand) {
			if (noTerminal) setSprite(s_Skater_Slam_End);
			else setSprite(s_Skater_Land);
		}
		else {
			//if (isInvinc) setSprite(s_Skater_Hurt);
			//else setSprite(s_Skater);
			setSprite(s_Skater);
		}
	}
	else {
		if (noTerminal) setSprite(s_Skater_Slam);
		else setSprite(s_Skater_Ollie);
	}
}
if (duckTime > duckLimit) setSprite(s_Skater_Duck);
if (duckTime > 40) setSprite(s_Skater_Deep);
if (kflipTime > kflipLimit) setSprite(s_Skater_kFlip0);
sprite_set_offset(sprite_index, 8, 29);

//Debug counter for duckTime
draw_set_color(c_white);
draw_text(x + 32, y + 60, duckTime);
draw_text(x + 32, y + 75, kflipTime);
draw_text(x + 32, y - 40, inAir);
draw_text(x + 32, y - 28, tricking);

//invincible frame display logic
if (isInvinc == true) {
	InvincCounter++;
	if (InvincCounter % 3) {
		image_alpha = 0.4;
	} else image_alpha = 1;
	if (InvincCounter > 30) {
		isInvinc = false;
		image_alpha = 1;
	}
} else {
	image_alpha = 1
}
