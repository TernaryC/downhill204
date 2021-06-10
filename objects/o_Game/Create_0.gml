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
global.trickdata[? "Ollie"]         = [10,     100,    0];
global.trickdata[? "Kickflip"]      = [10,     200,    0];
global.trickdata[? "Indy"]          = [35,     350,   25];
global.trickdata[? "Melon"]         = [35,     400,   20];
global.trickdata[? "Tailgrab"]      = [35,     300,   20];
global.trickdata[? "Nosegrab"]      = [35,     300,   20];
global.trickdata[? "Airwalk"]       = [55,     650,   55];
global.trickdata[? "Shove"]         = [35,     450,   35];
global.trickdata[? "Fingerflip"]    = [35,     450,   35];
global.trickdata[? "Madonna"]       = [40,     500,   40];
global.trickdata[? "Impossible"]    = [40,     500,   40];
global.trickdata[? "Slam"]          = [ 0,     200,    0];
global.trickdata[? ""]              = [-1,       0,   -1];


e_ui = $FF8844;
e_white = $EEEEEE;
e_color = [
    $FF8844,
    $FF7777,
    $FF4499,
    $EE44BB
];
e_ui_i = 0;
e_ui_j = 0;
e_ui_dir = 1;
e_ui_step = 0.01;

global.anim_lts = 1;
global.anim_lt = false;

global.anim_ats = 0;
global.anim_at = false;

global.anim_sts = 0;
global.anim_st = false;

global.anim_sta = [0, -1, "", 1];
global.anim_stf = function () {
    global.anim_sta[0] = 1;
    global.anim_sta[1] = global.combo;
    global.anim_sta[2] = global.lastTrick;
}
global.anim_str = function () {
    global.anim_sta = [0, -1, "", 1];
}
global.anim_sca = 0;
global.anim_sc = false;