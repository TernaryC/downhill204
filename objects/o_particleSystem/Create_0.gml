/// @description particl system
global.system = part_system_create();
// particles for the trail
type = part_type_create();
part_type_shape(type, pt_shape_square);
part_type_scale(type,1,1);
part_type_size(type,0.10,0.15,-.001,0);
part_type_color3(type,2733604,11936924,2373814);
part_type_alpha2(type,1,0.75);
part_type_speed(type,0.1,0.5,.1,0);
part_type_direction(type,140,155,0,0);
part_type_gravity(type,0.0002,90);
part_type_orientation(type,300,330,10,0,true);
part_type_life(type,100,150);
part_type_blend(type,true);
global.PartTrail = type


type = part_type_create();
part_type_shape(type, pt_shape_square);
part_type_scale(type,1,1);
part_type_size(type,0.10,0.15,-.001,0);
part_type_color1(type,2697516);
part_type_alpha2(type,1,0.75);
part_type_speed(type,0.1,0.5,.1,0);
part_type_direction(type,140,155,0,0);
part_type_gravity(type,0.0002,90);
part_type_orientation(type,300,330,10,0,true);
part_type_life(type,100,150);
part_type_blend(type,false);
global.PartSmoke = type


type = part_type_create();
part_type_shape(type, pt_shape_square);
part_type_scale(type,1,1);
part_type_size(type,0.10,0.15,-.001,0);
part_type_color1(type,63475);
part_type_alpha2(type,1,0.75);
part_type_speed(type,0.1,0.5,.1,0);
part_type_direction(type,45,0,0,0);
part_type_gravity(type,.09,270);
part_type_orientation(type,0,0,0,0,true);
part_type_life(type,300,300);
part_type_blend(type,false);
global.PartSuccessR = type


type = part_type_create();
part_type_shape(type, pt_shape_square);
part_type_scale(type,1,1);
part_type_size(type,0.10,0.15,-.001,0);
part_type_color1(type,63475);
part_type_alpha2(type,1,0.75);
part_type_speed(type,0.1,0.5,.1,0);
part_type_direction(type,135,0,0,0);
part_type_gravity(type,.09,270);
part_type_orientation(type,0,0,0,0,true);
part_type_life(type,300,300);
part_type_blend(type,false);
global.PartSuccessL = type