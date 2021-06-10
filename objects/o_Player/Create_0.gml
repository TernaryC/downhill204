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
noTerminal = false;

self.trick = function (trickName) {
	if (noTerminal) return;
	if (tricking and trickTime <= trickTrans / 2) return;
	tricking = true;
	trickTime = 0;
	trickLimit = global.trickdata[? trickName][0];
	trickTrans = global.trickdata[? trickName][2];
	ds_list_insert(global.tricks, 0, trickName);
	global.lastTrick = trickName;
	
	if (trickName != "Kickflip" and
		trickName != "Ollie" and
		trickName != "Slam") {
			
		if (vely > 0) vely -= 12;
	}
	if (trickName == "Slam") {
		slam();
	}

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
		isInvinc = true;
		InvincCounter = 0;
		tricking = false;
	}
}

self.land = function (anchor) {
	if (vely > 0) {
	    //If moving down and hit slope, snap to slope
		var ty = anchor.getIntersection(x);
		if (ty != undefined) y = ty;
		else return;
		
		//creates the smoke particles when hitting the ground
		if (vely != global.gravity){
			part_particles_create(global.system, x-16, y-10, global.PartSmoke, 5);
		}
	    vely = 0;
	    inAir = false;
	    event_user(3);
	} 
}

self.slam = function () {
	vely += 15;
	noTerminal = true;
}

