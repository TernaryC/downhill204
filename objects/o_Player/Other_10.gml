/// @description Get Input

if (!inAir) {
	if (o_Game.checkKey("DOWN", 1)) {
	    ducking = true;
	} else if (ducking) {
		var thres = global.limits[? "Ollie"]
	    if (duckTime > thres) {
	        //Jump
	        vely = map(duckTime, thres, 50, -10, -23);
	        inAir = true;
	        trick("Ollie");
	    }
	    ducking = false;
	}
	if (o_Game.checkKey("UP", 1)) {
		kflipping = true;
	} else if (kflipping) {
		if (kflipTime > global.limits[? "Kickflip"]) {
			trick("Kickflip");
		}
		kflipping = false;
	}
} else {
	if (o_Game.checkKey("DOWN", 0)) {
		trick("Melon");
	}
	if (o_Game.checkKey("LEFT", 0)) {
		trick("Tailgrab");
	}
	if (o_Game.checkKey("RIGHT", 0)) {
		trick("Nosegrab");
	}
	if (o_Game.checkKey("UP", 0)) {
		if (global.lastTrick == "Tailgrab" and trickTime < (trickLimit / 2)) {
			trick("Airwalk");
		} else {
			trick("Indy");
		}
	}
}

