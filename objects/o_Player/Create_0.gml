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
trickTrans = -1;
tricking = false;

particleCounter = 0
isInvinc = false
InvincCounter = 0

//Movement Variables
vely = 0;
mustLand = false;

self.trick = function (trickName) {
	if (tricking and trickTime <= trickTrans / 2) return;
	tricking = true;
	trickTime = 0;
	trickLimit = global.trickdata[? trickName][0];
	trickTrans = global.trickdata[? trickName][2];
	ds_list_add(global.tricks, trickName);
	global.lastTrick = trickName;

	global.combo += global.trickdata[? trickName][1];
	var len = ds_list_size(global.tricks);
	if (len == 5) global.combo += 500;
	if (len == 10) global.combo += 1000;
	
	isInvinc = false;
}

self.setSprite = function (sprite) {
	if (sprite_index != sprite) {
		sprite_index = sprite;
		image_index = 0;
	}
}

self.damage = function () {
	
	if (isInvinc == false) {
		part_particles_create(global.system, x-16, y-48, global.Blood, 3);
		isInvinc = true;
		InvincCounter = 0;
	}
}