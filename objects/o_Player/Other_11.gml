/// @description Gravity and Physics

if (o_Slope.getCollision(self) and vely > 0) {
    //If moving down and hit slope, snap to slope
	y = o_Slope.getIntersection(x);
	
	//creates the smoke particles when hitting the ground
	if (vely != global.gravity){
		part_particles_create(global.system, x-16, y-10, global.PartSmoke, 5);
	}
    vely = 0;
    inAir = false;
    event_user(3);
} 
/*
var landed = false;
for (var i = 0; i < instance_number(o_Building); i++) {
	var b = instance_find(o_Building, i);
	if (b.getCollision(self)) {
		land(b);
		landed = true;
		break;
	}
}
if (not landed) {
	if (o_Slope.getCollision(self))
		land(o_Slope);
}
*/

//Increase y-velocity by gravity, cap at global.terminal
vely += global.gravity;
if (vely >= global.terminal) vely = global.terminal;

