e_ui = merge_color(e_color[e_ui_j], e_color[e_ui_j + 1], e_ui_i);
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
