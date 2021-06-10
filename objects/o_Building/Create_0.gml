length = 0;
height = 0;

d = 192 + (length * 128);
a = arctan2(48, 128);

sy = y - (height * 5 * 16);
ex = x + d * cos(a);
ey = sy + d * sin(a);


self.getCollision = function (obj) {
    //Returns whether an object is colliding with the slope
    return collision_line(x, sy, ex, ey, obj, false, true) != noone;
}

self.getIntersection = function (_x) {
    if (_x > x and _x < x + d) {
        return (((ey - sy) / (ex - x)) * (_x - x)) + sy;
    } else {
        return undefined;
    }
}

