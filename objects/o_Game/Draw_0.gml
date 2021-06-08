
/* Debug Trick Info */
var player = instance_find(o_Player, 0); //Get Player Object
if (player != undefined) {
    draw_set_color(c_white);
    draw_text(5, 5, global.combo);
    draw_set_color(c_lime);
    draw_text(5, 17, global.points);
    draw_set_color(c_white);
    draw_text(5, 30, player.tricking);
    draw_text(5, 42, string(player.trickTime) + " / " + string(player.trickTotal));
    draw_text(5, 54, player.trickLimit);
    draw_set_color($cbcbcb);
    for (var t = 0; t < ds_list_size(global.tricks); t++) {
        var i = (ds_list_size(global.tricks) - (t + 1)) * 12;
        draw_text(5, 66 + i, global.tricks[| t]);
    }
    draw_set_color(c_white);
    draw_text(5, 66, global.lastTrick);
}
/**/
