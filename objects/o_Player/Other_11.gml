/// @description Gravity and Physics
y += vely;
if (o_Slope.getCollision(self)) {
    y = o_Slope.getIntersection(x);
    vely = 0;
}

vely += global.gravity;
if (vely >= global.terminal) vely = global.terminal;