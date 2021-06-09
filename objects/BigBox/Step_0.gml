/// @description Insert description here
// You can write your code in this editor
x -= global.speed;
y = o_Slope.getIntersection(x) - 100; //Stick to slope

if (x < -128) instance_destroy(); //Destroy block when it's out of bounds