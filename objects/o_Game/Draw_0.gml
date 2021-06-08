
/* Debug Trick Info */
var player = instance_find(o_Player, 0); //Get Player Object
if (player != undefined) {
    draw_set_color(c_white);
    draw_text(5, 5, player.tricking);
    draw_text(5, 17, string(player.trickTime) + " / " + string(player.trickTotal));
    draw_text(5, 29, player.trickLimit);
    draw_set_color($cbcbcb);
    for (var t = 0; t < ds_list_size(global.tricks); t++) {
        var i = (ds_list_size(global.tricks) - (t + 1)) * 12;
        draw_text(5, 41 + i, global.tricks[| t]);
    }
    draw_set_color(c_white);
    draw_text(5, 41, global.lastTrick);
}
/**/
