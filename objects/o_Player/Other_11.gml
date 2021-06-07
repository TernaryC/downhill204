/// @description Gravity and Physics

y += vely; 

if (o_Slope.getCollision(self) and vely > 0) {
    //If moving down and hit slope, snap to slope
	y = o_Slope.getIntersection(x);
	
	//creates the particles when touching ground
	part_particles_create(global.system, x-16, y-10, global.PartTrail, 1);

	
    vely = 0;
} 

//Increase y-velocity by gravity, cap at global.terminal
vely += global.gravity;
if (vely >= global.terminal) vely = global.terminal;

