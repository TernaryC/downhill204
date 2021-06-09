/* Keybindings */
global.key = ds_map_create();
global.key[? "DOWN"] = ds_list_create();
ds_list_add(global.key[? "DOWN"], ord("S"));
ds_list_add(global.key[? "DOWN"], vk_down);
global.key[? "LEFT"] = ds_list_create();
ds_list_add(global.key[? "LEFT"], ord("A"));
ds_list_add(global.key[? "LEFT"], vk_left);
global.key[? "RIGHT"] = ds_list_create();
ds_list_add(global.key[? "RIGHT"], ord("D"));
ds_list_add(global.key[? "RIGHT"], vk_right);
global.key[? "UP"] = ds_list_create();
ds_list_add(global.key[? "UP"], ord("W"));
ds_list_add(global.key[? "UP"], vk_up);
/**/

function checkKey (keyName, aval) {
    if (aval == undefined) aval = 1;

    //keyName is the name of the binding to be checked
    //aval is how the key should be checked:
    // 0 - Only initial press
    // 1 - If pressed or while held (default)
    // 2 - Only final release

    var keys = global.key[? keyName];
    for (var i = 0; i < ds_list_size(keys); i++) {
        if (aval == 1 and keyboard_check(keys[| i])) return true;
        if (aval == 0 and keyboard_check_pressed(keys[| i])) return true;
        if (aval == 2 and keyboard_check_released(keys[| i])) return true;
    }
    return false;
}


global.gravity = 0.8;  //Gravity per frame
global.terminal = 10;  //Terminal Velocity

global.speed = 7;      //Speed of skater

global.combo = 0;
global.points = 0;


//List to store past tricks in
global.tricks = ds_list_create();
global.lastTrick = "";

//Map of trick information, by name
global.trickdata = ds_map_create();
//Data:            Name                Length, Score, Limit
global.trickdata[? "Ollie"]         = [15,     100,    0];
global.trickdata[? "Kickflip"]      = [30,     200,    0];
global.trickdata[? "Indy"]          = [35,     300,   25];
global.trickdata[? "Melon"]         = [35,     300,   30];
global.trickdata[? "Tailgrab"]      = [35,     300,   20];
global.trickdata[? "Nosegrab"]      = [35,     300,   20];
global.trickdata[? "Airwalk"]       = [ 0,     500,    0];
global.trickdata[? "Japan"]         = [ 0,     500,    0];
global.trickdata[? "Benihana"]      = [ 0,     500,    0];
global.trickdata[? "Shove"]         = [35,     500,   35];
global.trickdata[? "Crossbone"]     = [ 0,     500,    0];
global.trickdata[? "Nosebone"]      = [ 0,     500,    0];
global.trickdata[? "Heelflip"]      = [ 0,     500,    0];
global.trickdata[? "Madonna"]       = [ 0,     500,    0];
global.trickdata[? "Impossible"]    = [ 0,     500,    0];
global.trickdata[? "Weedle"]        = [ 0,     500,    0];
global.trickdata[? "Sal Flip"]      = [ 0,     500,    0];

