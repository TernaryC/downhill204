
var dy = sy + 0;
draw_sprite(s_Slope_Start, 0, x - 192, dy);

var dx = x;
for (var i = 0; i < length; i++) {
    draw_sprite(s_Slope2, 0, dx, dy);

    dx += 128;
    dy += 16 * 3;
}
draw_sprite(s_Slope_End, 0, dx, dy);