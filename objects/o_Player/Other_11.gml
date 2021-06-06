/// @description Gravity and Physics
if (vely != 1) print(vely)
y += vely; 
if (o_Slope.getCollision(self) and vely > 0) {
	
	y = o_Slope.getIntersection(x);
	
    vely = 0;
} 

vely += global.gravity;
if (vely >= global.terminal) vely = global.terminal;