//Rescale image
image_xscale = 64/16;
image_yscale = 128/32;

//Gameplay Variables
ducking = false;
duckTime = 0;
duckLimit = -1;
kflipLimit = -1;
kflipping = false;
kflipTime = 0;

inAir = true;
trickTime = 0;
trickTotal = 0;
trickLimit = -1;
tricking = false;

particleCounter = 0
isInvinc = false
InvincCounter = 0

//Movement Variables
vely = 0;

self.trick = function (trickName) {
	if (tricking and trickTime <= trickLimit / 4) return;
	tricking = true;
	trickTime = 0;
	trickLimit = global.trickdata[? trickName][0];
	ds_list_add(global.tricks, trickName);
	global.lastTrick = trickName;

	global.combo += global.trickdata[? trickName][1];
	var len = ds_list_size(global.tricks)
	if (len == 5) global.combo += 500
	if (len == 10) global.combo += 1000
}
