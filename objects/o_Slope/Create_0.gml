a = arctan2(48, 128);
sx = x + (room_width * 1.5) * cos(a);
sy = y + (room_width * 1.5) * sin(a);
//sx & sy are points far along the slope

function getCollision (obj) {
    //Returns whether an object is colliding with the slope
    return collision_line(x, y, sx, sy, obj, false, true) != noone;
}

function getIntersection (_x) {
    //Returns a y position given a certain x along the slope
    return (((sy - y) / (sx - x)) * (_x - x)) + y
}