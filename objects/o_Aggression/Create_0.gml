//Make sure there is an "Obstacles" layer
if (not layer_exists("Obstacles")) {
    layer_create(50, "Obstacles");
}

if (not layer_exists("Platforms")) {
    layer_create(150, "Platforms");
}

spawn_timer = 0
spawn_safe = 0

spawn_plat = noone;
spawn_plat_cool = 0;

self.spawnBox = function () {
    var bx = room_width + 600;
    var by = o_Slope.getIntersection(bx);;
    var spawn_chance = 1//random(1);
    var anchor = o_Slope;
    if (spawn_plat != noone and instance_exists(spawn_plat)) {
        if (spawn_chance > 0.5) {
            var ty = spawn_plat.getIntersection(bx);
            if (ty != undefined) {
                by = ty + 0;
                anchor = spawn_plat;
            }
        }
    }
    var block = instance_create_layer(bx, by, "Obstacles", o_Block);
    block.anchor = anchor;
}

self.spawnBuild = function () {
    print("Spawning...")
    var bx = room_width + 600;
    var by = o_Slope.getIntersection(bx);
    var plat = instance_create_layer(bx, by, "Platforms", o_Building);
    //plat.length = irandom_range(5, 8);
    //plat.height = random_range(2, 4.25);
    plat.length = 8
    plat.height = 2
    spawn_plat = plat;
    spawn_plat_cool = 5;
}

//spawnBuild();