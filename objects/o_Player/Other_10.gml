/// @description Get Input

if (!inAir) {
	if (o_Game.checkKey("DOWN", 1)) {
	    ducking = true;
	} else if (ducking) {
		var thres = duckLimit
	    if (duckTime > thres) {
	        //Jump
	        vely = map(duckTime, thres, 50, -10, -23);
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
			if (global.lastTrick == "Tailgrab")
				trick("Airwalk");
			else if (global.lastTrick == "Nosegrab")
				trick("Benihana");
			else trick("Melon");
		} else trick("Melon");
	}
	if (o_Game.checkKey("LEFT", 0)) {
		if (trickTime < trickTrans) {
			if (global.lastTrick == "Tailgrab")
				trick("Heelflip");
			else if (global.lastTrick == "Nosegrab")
				trick("Weedle");
			else if (global.lastTrick == "Melon")
				trick("Sal Flip");
			else trick("Tailgrab");
		} else trick("Tailgrab");
	}
	if (o_Game.checkKey("RIGHT", 0)) {
		if (trickTime < trickTrans) {
			if (global.lastTrick == "Tailgrab")
				trick("Impossible");
			else if (global.lastTrick == "Nosegrab")
				trick("Nosebone");
			else if (global.lastTrick == "Melon")
				trick("Crossbone");
			else trick("Nosegrab");
		} else trick("Nosegrab");
	}
	if (o_Game.checkKey("UP", 0)) {
		if (trickTime < trickTrans) {
			if (global.lastTrick == "Tailgrab")
				trick("Madonna");
			else if (global.lastTrick == "Nosegrab")
				trick("Japan");
			else if (global.lastTrick == "Indy")
				trick("Shove");
			else trick("Indy");
		} else trick("Indy");
	}
}

