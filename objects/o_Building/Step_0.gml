//Move block to the left
x -= global.speed;
y = o_Slope.getIntersection(x); //Stick to slope

if (x < -(256 + (length * 128))) instance_destroy(); //Destroy block when it's out of bounds

d = 192 + (length * 128);

sy = y - (height * 5 * 16);
ex = x + d * cos(a);
ey = sy + d * sin(a);