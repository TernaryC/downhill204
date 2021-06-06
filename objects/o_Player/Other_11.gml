/// @description Gravity and Physics
//if (vely != 1) print(vely)
y += vely; 

if (o_Slope.getCollision(self) and vely > 0) {
    //If moving down and hit slope, snap to slope
	y = o_Slope.getIntersection(x);
    vely = 0;
} 

//Increase y-velocity by gravity, cap at global.terminal
vely += global.gravity;
if (vely >= global.terminal) vely = global.terminal;