/// @description Get Input

if (keyboard_check(global.key[? "DOWN"])) {
    ducking = true;
} else if (ducking) {
    if (ducktime > jumpThreshold) {
        //Jump
        vely = map(ducktime, jumpThreshold, 50, -10, -23);
    }
    ducking = false;
}