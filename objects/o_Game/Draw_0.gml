
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

draw_set_color(e_ui);
draw_set_font(f_Sans42);
draw_set_halign(fa_left);
draw_text(_x + 10, hy - 30, global.points);

draw_set_halign(fa_center);

if (global.combo > 0) {
    draw_set_color(e_white);
    draw_set_font(f_Sans18);
    draw_text(cx, _y + 160, global.combo);
    draw_set_font(f_Sans42);
    draw_text(cx, _y + 125, string_upper(global.lastTrick));
    draw_set_color(e_ui);
    draw_set_font(f_Sans28);
    var ts = ds_list_size(global.tricks);
    
    for (var i = 1; i <= 4; i++) {
        var ty = 110 - (30 * i);
        if (global.tricks[| i] != undefined)
            draw_text(cx, _y + ty, global.tricks[| i]);
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
