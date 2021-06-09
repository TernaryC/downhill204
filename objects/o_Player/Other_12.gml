/// @description Maintain Tricks
if (trickTime > trickLimit) {
	tricking = false;
	trickTime = 0;
	trickLimit = 0;
}
if (!inAir and !tricking) {
	if (global.combo != 0) {
		global.points += global.combo;
		global.combo = 0;
		ds_list_clear(global.tricks);
		global.points += floor(trickTotal / 1500) * 100
	}
	
	trickTotal = 0;
}
if (!inAir and tricking) {
	if (global.lastTrick != "Kickflip" and global.lastTrick != "Ollie") {
		damage();
	}
}