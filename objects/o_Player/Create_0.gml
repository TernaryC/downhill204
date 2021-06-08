image_speed = 0;
//Rescale image
image_xscale = 64/16;
image_yscale = 128/32;

//Gameplay Variables
ducking = false;
duckTime = 0;
kflipping = false;
kflipTime = 0;

inAir = true;
trickTime = 0;
trickTotal = 0;
trickLimit = -1;
tricking = false;

//Movement Variables
vely = 0;

self.trick = function (trickName) {
	tricking = true;
	trickTime = 0;
	trickLimit = global.limits[? trickName];
	ds_list_add(global.tricks, trickName);
	global.lastTrick = trickName;
}
