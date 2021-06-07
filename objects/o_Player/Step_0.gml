event_user(0); /* Get Input */



//While ducking, ducktime increases
if (ducking) {
	if (ducktime < 50) ducktime++;
}
else ducktime = 0;

event_user(1); /* Gravity and Physics */




