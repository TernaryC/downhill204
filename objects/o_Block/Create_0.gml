anchor = noone;

//Randomize Obstacle
var spr = irandom_range(0, 4);
switch (spr) {
    case 0: sprite_index = s_Crate; break;
    case 1: sprite_index = s_Crate_Large; break;
    case 2: sprite_index = s_Crate_Stack; break;
    case 3: sprite_index = s_Crate_Stack_Large; break;
    case 4: sprite_index = s_Dumpster; break;
}
//image_xscale = 3;
//image_yscale = 3;