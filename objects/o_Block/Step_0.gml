//Move block to the left
x -= global.speed;
y = anchor.getIntersection(x); //Stick to slope

if (x < -128) instance_destroy(); //Destroy block when it's out of bounds