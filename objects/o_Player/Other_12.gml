/// @description Maintain Tricks
if (trickTime > trickLimit) {
	tricking = false;
	trickTime = 0;
	trickLimit = -1;
	trickTrans = -1;
}