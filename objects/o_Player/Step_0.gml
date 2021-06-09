if (duckLimit == -1) duckLimit = global.trickdata[? "Ollie"][0];
if (kflipLimit == -1) kflipLimit = global.trickdata[? "Kickflip"][0];

event_user(0); /* Get Input */



//While ducking, duckTime increases
if (ducking) {
	if (duckTime < 50) duckTime++;
}
else duckTime = 0;
if (duckTime == 40) {
	part_particles_create(global.system, x, y, global.PartSuccessR, 3);
	part_particles_create(global.system, x, y, global.PartSuccessL, 3);
}

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

event_user(1); /* Gravity and Physics */

//creates the particles when touching ground
particleCounter++;
if (particleCounter == 30) {
		part_particles_create(global.system, x-16, y-10, global.PartTrail, 1);
		particleCounter = 0;
}
