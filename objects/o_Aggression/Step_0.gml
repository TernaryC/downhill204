
if (!instance_exists(spawn_plat)) spawn_plat = noone;
//if (spawn_plat != noone) print(spawn_plat);

spawn_timer++;
if (spawn_timer % 60 == 0) {
    //Every 40 frames, maybe spawn something
    //*
    var spawn_rand = random(1) * 100;
    if (spawn_safe > 10) {
        spawn_safe = 0;
        spawn_rand = map(spawn_rand, 0, 100, 40, 100);
    }
    if (spawn_rand < 70) {        //70
        spawn_safe++;
    } else if (spawn_rand < 90) { //20
        spawnBox();
    } else if (spawn_rand < 100) { //10
        if (spawn_plat_cool > 0) spawn_plat_cool--;
        else spawnBuild();
    }
    /**/
}