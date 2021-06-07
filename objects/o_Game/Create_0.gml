/* Keybindings */
global.key = ds_map_create();
global.key[? "DOWN"] = ord("S");
/**/

global.gravity = 0.8;    //Gravity per frame
global.terminal = 10; //Terminal Velocity

global.speed = 7;      //Speed of skater





system = part_system_create();

type = part_type_create();
part_type_shape(type, pt_shape_star);
part_type_color1(type, c_red);
part_type_speed(type, 1, 5, 0, 0);
part_type_direction(type, 0, 360, 0, 0);
part_type_life(type, 60, 60);

part_particles_create(system, 200, 200, type, 100);
