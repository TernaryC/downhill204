/// @description Maintain Tricks
if (trickTime > trickLimit) {
	tricking = false;
	trickTime = 0;
	trickLimit = 0;
}
if (!inAir and !tricking) {
	trickTotal = 0
}