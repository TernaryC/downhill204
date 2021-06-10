/// @description Gravity and Physics
if (global.paused) return;

y += vely

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
/**/

//Increase y-velocity by gravity, cap at global.terminal
vely += global.gravity;
if (not noTerminal and vely >= global.terminal) vely = global.terminal;

