/// @description Get Input

if (keyboard_check(global.key[? "DOWN"])) {
    ducking = true;
} else if (ducking) {
    if (ducktime > 10) {
        vely = jumpVel;
    }
    ducking = false;
}