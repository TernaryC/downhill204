
var _x = o_Camera.getCamera(0);
var _y = o_Camera.getCamera(1);

/* Debug Trick Info */
var player = instance_find(o_Player, 0); //Get Player Object

draw_set_valign(fa_middle);

var w = o_Camera.getDimension(0)
var h = o_Camera.getDimension(1)
var cx = _x + w / 2;
var cy = _y + h / 2;
var wx = _x + w;
var hy = _y + h;

if (!global.paused or global.timer > 0) {
    draw_set_color(e_ui);
    draw_set_font(f_Sans42);
    draw_set_halign(fa_left);
    draw_text(_x + 10, hy - 30, global.points);
}

draw_set_halign(fa_center);

if (global.combo > 0) {
    draw_set_color(e_white);
    draw_set_font(f_Sans18);
    draw_text(cx, _y + 160, global.combo);
    draw_set_font(f_Sans42);
    draw_text_transformed(cx, _y + 125,
                          string_upper(global.lastTrick),
                          global.anim_lts, global.anim_lts, 0);
    draw_set_color(e_ui);
    draw_set_font(f_Sans28);
    var ts = ds_list_size(global.tricks);
    
    for (var i = 1; i <= 4; i++) {
        var ty = 110 - (30 * i) + (30 * global.anim_ats);
        if (global.tricks[| i] != undefined)
            draw_text(cx, _y + ty, global.tricks[| i]);
    }
} else if (global.anim_sta[0] != 0) {
    if (global.anim_sta[1] != 0) {
        var cbz = map(global.anim_sts, 0, 20, 1, 1.5);
        var cbx = map(global.anim_sts, 0, 20, cx, _x + 10);
        var cby = map(global.anim_sts, 0, 20, _y + 160, hy - 30);
        draw_set_font(f_Sans18);
        draw_text_transformed(cbx, cby, global.anim_sta[1],
                              cbz, cbz, 0);
    }
    draw_set_font(f_Sans42);
    var ltz = map(global.anim_sts, 10, 20, 1, 0);
    if (ltz > 1) ltz = 1;
    draw_text_transformed(cx, _y + 125,
                          string_upper(global.anim_sta[2]),
                          ltz, ltz, 0);
}
if (!global.paused or global.timer > 0) {
    draw_set_halign(fa_left);
    draw_set_font(f_Sans28);
    draw_set_color(e_ui);
    var time = "";
    var sec = seconds(global.timer);
    var mit = floor(sec / 60);
    sec = sec - (mit * 60);
    time += string(mit) + ":";
    if (sec < 10) time += "0";
    time += string(sec);
    draw_text(_x + 10, _y + 30, time);
}

if (global.paused) {
    draw_set_color($000000);
    draw_set_alpha(0.5);
    draw_rectangle(_x + 64, _y + 48, wx - 64, hy - 48, false);
    draw_set_alpha(1);
    
    draw_set_halign(fa_center);
    if (global.timer > 0) {
        draw_set_color(e_white);
        draw_set_font(f_Sans42);
        draw_text(cx, _y + 104, "Perform Tricks Using");
        draw_set_font(f_Sans28);
        draw_text(cx - 112, cy - 48, "W\nA S D");
        draw_text(cx + 112, cy - 48, "^\n< v >");
        var msg = "to Begin";
        if (global.begun) msg = "to Resume";
        draw_text(cx, cy + 112, "Press Enter or Esc\n" + msg);
    } else {
        draw_set_color(e_ui);
        draw_set_font(f_Sans42);
        draw_text(cx, _y + 104, "GAME OVER");
        draw_set_color(e_white);
        draw_set_font(f_Sans18);
        draw_text(cx, cy - 64, "You scored...");
        draw_set_font(f_Sans42);
        draw_text(cx, cy - 16, global.points);
        draw_set_font(f_Sans28);
        var msg = "to Restart";
        draw_text(cx, cy + 112, "Press Enter or Esc\n" + msg);
    }
}

/*
if (player != undefined) {
    draw_set_color(c_white);
    draw_text(_x + 5, _y + 5, global.combo);
    draw_set_color(c_lime);
    draw_text(_x + 5, _y + 17, global.points);
    draw_set_color(c_white);
    draw_text(_x + 5, _y + 30, player.tricking);
    draw_text(_x + 5, _y + 42, string(player.trickTime) + " / " + string(player.trickTotal));
    draw_text(_x + 5, _y + 54, "TL: " + string(player.trickLimit));
    draw_set_color($cbcbcb);
    for (var t = 0; t < ds_list_size(global.tricks); t++) {
        var i = (ds_list_size(global.tricks) - (t + 1)) * 12;
        draw_text(_x + 5, _y + 66 + i, global.tricks[| t]);
    }
    draw_set_color(c_white);
    draw_text(_x + 5, _y + 66, global.lastTrick);
}
/**/
