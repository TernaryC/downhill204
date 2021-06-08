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
//Data:            Name                Length, Score
global.trickdata[? "Ollie"]         = [15,     100];
global.trickdata[? "Kickflip"]      = [15,     200];
global.trickdata[? "Indy"]          = [20,     300];
global.trickdata[? "Melon"]         = [20,     300];
global.trickdata[? "Tailgrab"]      = [25,     300];
global.trickdata[? "Nosegrab"]      = [25,     300];
global.trickdata[? "Airwalk"]       = [35,     500];
global.trickdata[? "Japan"]         = [35,     500];
global.trickdata[? "Benihana"]      = [35,     500];
global.trickdata[? "Pop Shove-it"]  = [35,     500];
global.trickdata[? "Crossbone"]     = [35,     500];
global.trickdata[? "Nosebone"]      = [35,     500];
global.trickdata[? "Heelflip"]      = [35,     500];
global.trickdata[? "Madonna"]       = [35,     500];
global.trickdata[? "Impossible"]    = [35,     500];
global.trickdata[? "Weedle"]        = [35,     500];
global.trickdata[? "Sal Flip"]      = [35,     500];

