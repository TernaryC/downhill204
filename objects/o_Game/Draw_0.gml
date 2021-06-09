var _x = o_Camera.getCamera(0);
var _y = o_Camera.getCamera(1);

/* Debug Trick Info */
var player = instance_find(o_Player, 0); //Get Player Object
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
