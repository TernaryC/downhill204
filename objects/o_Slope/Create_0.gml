a = arctan2(48, 128);
sx = x + (room_width * 1.5) * cos(a);
sy = y + (room_width * 1.5) * sin(a);

function getCollision (obj) {
    return collision_line(x, y, sx, sy, obj, false, true) != noone;
}

function getIntersection (_x) {
    return (((sy - y) / (sx - x)) * (_x - x)) + y
}