//if (keyboard_check_pressed(vk_backspace)) global.timer = 1000000;

if (checkKey("PAUSE", 0)) {
    if (!global.paused or global.timer > 0) {
        global.paused = !global.paused
        if (!global.begun) global.begun = true;
    } else {
        global.paused = false;
        global.timer = fulltime;
        global.points = 0;
        global.combo = 0;
        global.lastTrick = "";
        ds_list_clear(global.tricks);
        room_restart();
    }
}

if (!global.paused) {
    global.timer -= delta_time;
    if (global.timer < 0) {
        global.timer = 0
        global.paused = true;
    }
    
    layer_hspeed("Background", -16);
    layer_vspeed("Background", -6);
} else {
    layer_hspeed("Background", 0);
    layer_vspeed("Background", 0);
}

if (global.timer == 0) global.paused = true;

e_ui = merge_color(global.e_color[e_ui_j], global.e_color[e_ui_j + 1], e_ui_i);
e_ui_i += e_ui_step * e_ui_dir;
if (e_ui_i > 1 or e_ui_i < 0) {
    e_ui_j += 1 * e_ui_dir;
    if (e_ui_j > 2) {
        e_ui_j = 2;
        e_ui_dir = -1;
        e_ui_i = 1;
    } else if (e_ui_j < 0) {
        e_ui_j = 0;
        e_ui_dir = 1;
        e_ui_i = 0;
    } else {
        e_ui_i = (1 + e_ui_dir) / 2;
    }
}

if (global.anim_lt and global.anim_lts < 1.5)
    global.anim_lts += 0.5;
if (global.anim_lt and global.anim_lts >= 1.5)
    global.anim_lt = false;
if (!global.anim_lt and global.anim_lts > 1)
    global.anim_lts -= 0.3;
 
if (global.anim_ats == 1) global.anim_at = true;
if (global.anim_at and global.anim_ats > -0.2)
    global.anim_ats -= 0.2;
if (global.anim_at and global.anim_ats <= -0.2) 
    global.anim_at = false;
if (!global.anim_at and global.anim_ats < 0)
    global.anim_ats += 0.05;
    
if (global.anim_sts >= 20) {
    global.anim_sc = true;
    global.anim_st = false;
    global.anim_sts = 0;
    global.anim_str();
}
if (global.anim_st) global.anim_sts++;

if (global.anim_sc) {
    if (global.anim_sca >= 50) {
        global.points += 50;
        global.anim_sca -= 50;
    } else {
        global.points += global.anim_sca;
        global.anim_sca = 0;
        global.anim_sc = false;
    }
}

if (global.points < 0) global.points = 0;
