/// @description Ending Tricks
if (!inAir and !tricking) {
	if (ds_list_size(global.tricks) > 0) {
		global.anim_st = true;
		global.anim_stf();
		
		global.anim_sca += global.combo;
		global.combo = 0;
		ds_list_clear(global.tricks);
		global.anim_sca += floor(trickTotal / 1500) * 100
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