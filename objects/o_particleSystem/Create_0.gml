/// @description particl system

self.dec = function (hex) {
    var str = string(hex);
    /// int hex(string);
    // if the script name "hex" collides with a variable or a resource somewhere
    // just rename it
     
    var result=0;
     
    // special unicode values
    var ZERO=ord("0");
    var NINE=ord("9");
    var A=ord("A");
    var F=ord("F");
     
    for (var i=1; i<=string_length(str); i++){
        var c=ord(string_char_at(string_upper(str), i));
        // you could also multiply by 16 but you get more nerd points for bitshifts
        result=result<<4;
        // if the character is a number or letter, add the value
        // it represents to the total
        if (c>=ZERO&&c<=NINE){
            result=result+(c-ZERO);
        } else if (c>=A&&c<=F){
            result=result+(c-A+10);
        // otherwise complain
        } else {
            // this will make the browser behave badly but you can leave it in
            // actual game maker if you want
            //show_error("bad input for hex(str)", true);
        }
    }
     
    return result;
}

global.system = part_system_create();
// particles for the trail
type = part_type_create();
part_type_shape(type, pt_shape_square);
part_type_scale(type,1,1);
part_type_size(type,0.10,0.15,-.001,0);
part_type_color1(type,dec($EEDD99));
part_type_alpha2(type,1,0.75);
part_type_speed(type,0.3,0.7,0.3,0);
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
part_type_color2(type,dec($EEEEEE),dec($FF99DD));
part_type_alpha2(type,1,0.75);
part_type_speed(type,0.3,0.7,0.3,0);
part_type_direction(type,140,155,0,0);
part_type_gravity(type,0.0002,90);
part_type_orientation(type,300,330,10,0,true);
part_type_life(type,100,150);
part_type_blend(type,true);
global.PartSuccessR = type


type = part_type_create();
part_type_shape(type, pt_shape_square);
part_type_scale(type,1,1);
part_type_size(type,0.10,0.15,-.001,0);
part_type_color2(type,dec($EEEEEE),dec($FF99DD));
part_type_alpha2(type,1,0.75);
part_type_speed(type,0.3,0.7,0.3,0);
part_type_direction(type,140,155,0,0);
part_type_gravity(type,0.0002,90);
part_type_orientation(type,300,330,10,0,true);
part_type_life(type,100,150);
part_type_blend(type,true);
global.PartSuccessL = type