/* Keybindings */
global.key = ds_map_create();
global.key[? "DOWN"] = ord("S");
/**/

global.gravity = 0.8;    //Gravity per frame
global.terminal = 10; //Terminal Velocity

global.speed = 7;      //Speed of skater





global.system = part_system_create();
#region
type = part_type_create();
part_type_shape(type, pt_shape_square);
part_type_scale(type,1,1);
part_type_size(type,0.10,0.15,-.001,0);
part_type_color3(type,2733604,11936924,2373814);
part_type_alpha2(type,1,0.75);
part_type_speed(type,0.1,0.5,.1,0);
part_type_direction(type,145,165,0,0);
part_type_gravity(type,0.0002,90);
part_type_orientation(type,300,330,10,0,true);
part_type_life(type,100,150);
part_type_blend(type,true);
global.type = type
#endregion

