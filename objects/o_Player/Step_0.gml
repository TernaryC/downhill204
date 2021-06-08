event_user(0); /* Get Input */

//While ducking, duckTime increases
if (ducking) {
	if (duckTime < 50) duckTime++;
}
else duckTime = 0;

if (kflipping) kflipTime++;
else kflipTime = 0;

//While tricking, trickTime increases
if (tricking) {
	trickTime++;
	trickTotal++;
} else {
	trickTime = 0;
	trickTotal = 0;
}

event_user(2); /* Maintain tricks */

event_user(1); /* Gravity and Physics */

