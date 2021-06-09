/// @description Gravity and Physics

y += vely; 

if (o_Slope.getCollision(self) and vely > 0) {
    //If moving down and hit slope, snap to slope
	y = o_Slope.getIntersection(x);
	
	//creates the smoke particles when hitting the ground
	if (vely != global.gravity){
		part_particles_create(global.system, x-16, y-10, global.PartSmoke, 5);
	}
    vely = 0;
    inAir = false;
    if (tricking) event_user(2);
} 

//Increase y-velocity by gravity, cap at global.terminal
vely += global.gravity;
if (vely >= global.terminal) vely = global.terminal;

