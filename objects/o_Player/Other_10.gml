/// @description Get Input
if (global.paused) return;

if (!inAir) {
	if (o_Game.checkKey("DOWN", 1)) {
	    ducking = true;
	} else if (ducking) {
		var thres = duckLimit
	    if (duckTime > thres) {
	        //Jump
	        vely = map(duckTime, thres, 30, -10, -23);
	        inAir = true;
			mustLand = true;
	        trick("Ollie");
	    }
	    ducking = false;
	}
	if (o_Game.checkKey("UP", 1)) {
		kflipping = true;
	} else if (kflipping) {
		if (kflipTime > kflipLimit) {
			trick("Kickflip");
		}
		kflipping = false;
	}
} else {
	if (o_Game.checkKey("DOWN", 0)) {
		if (trickTime < trickTrans) {
			if (global.lastTrick == "Melon")
				trick("Impossible");
			else if (global.lastTrick == "Tailgrab") {
				trick("Slam");
			} else trick("Melon");
		} else trick("Melon");
	}
	if (o_Game.checkKey("LEFT", 0)) {
		if (trickTime < trickTrans) {
			if (global.lastTrick == "Nosegrab")
				trick("Madonna");
			else trick("Tailgrab");
		} else trick("Tailgrab");
	}
	if (o_Game.checkKey("RIGHT", 0)) {
		if (trickTime < trickTrans) {
			if (global.lastTrick == "Nosegrab")
				trick("Airwalk");
			else trick("Nosegrab");
		} else trick("Nosegrab");
	}
	if (o_Game.checkKey("UP", 0)) {
		if (trickTime < trickTrans) {
			if (global.lastTrick == "Nosegrab")
				trick("Fingerflip");
			else if (global.lastTrick == "Indy")
				trick("Shove");
			else trick("Indy");
		} else trick("Indy");
	}
}

