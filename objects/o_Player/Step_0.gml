event_user(0); /* Get Input */



//While ducking, ducktime increases
if (ducking) {
	if (ducktime < 50) ducktime++;
}
else ducktime = 0;
if (ducktime == 40){
	part_particles_create(global.system, x, y, global.PartSuccessR, 3);
	part_particles_create(global.system, x, y, global.PartSuccessL, 3);
}
event_user(1); /* Gravity and Physics */
//creates the particles when touching ground
particleCounter++
if (particleCounter == 30){
		part_particles_create(global.system, x-16, y-10, global.PartTrail, 1);
		particleCounter = 0 
}


