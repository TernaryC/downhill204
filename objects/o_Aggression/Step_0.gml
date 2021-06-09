spawn_timer++;
if (spawn_timer % 500 == 0) {
    //Every 500 frames, spawn a block at the end of the slope
    var bx = room_width + 100;
    var by = o_Slope.getIntersection(bx);
    instance_create_layer(bx, by, "Obstacles", o_Block);
}
if (spawn_timer % 500 == 0) {
    //Every 500 frames, spawn a block at the end of the slope
    var bx = room_width + 100;
    var by = o_Slope.getIntersection(bx)-400;
    instance_create_layer(bx, by, "Obstacles", o_Platform);
}