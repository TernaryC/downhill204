/// @description Ending Tricks
if (!inAir and !tricking) {
	if (global.combo != 0) {
		global.points += global.combo;
		global.combo = 0;
		ds_list_clear(global.tricks);
		global.points += floor(trickTotal / 1500) * 100
		part_particles_create(global.system, x, y, global.PartSuccessR, 3);
		part_particles_create(global.system, x, y, global.PartSuccessL, 3);
	}
	
	trickTotal = 0;
}
if (!inAir and tricking) {
	if (global.lastTrick != "Kickflip" and
		global.lastTrick != "Ollie" and
		global.lastTrick != "Slam") {
			
		damage();
		tricking = false;
	}
}