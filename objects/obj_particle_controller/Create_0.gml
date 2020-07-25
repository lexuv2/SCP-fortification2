/// @description Insert description here
// You can write your code in this editor
global.part_system = part_system_create();
global.part_rocket_exhaust = part_type_create();
part_type_shape(global.part_rocket_exhaust,pt_shape_disk);
part_type_scale(global.part_rocket_exhaust,0.5,0.5);
part_type_size(global.part_rocket_exhaust,1,1,-0.05,0);
part_type_color3(global.part_rocket_exhaust,c_orange,c_red,c_gray);
part_type_speed(global.part_rocket_exhaust,0,0,0,0);
part_type_life(global.part_rocket_exhaust,10,15);

global.part_fire = part_type_create()
part_type_shape(global.part_fire,pt_shape_square);
part_type_scale(global.part_fire,1,1);
part_type_size(global.part_fire,0.2,0.3,0,0);
part_type_color3(global.part_fire,c_red,c_yellow,c_gray);
part_type_speed(global.part_fire,2,3,0,0);
part_type_life(global.part_fire,50,100);
part_type_direction(global.part_fire,80,100,0,40)

global.part_blood = part_type_create()
part_type_shape(global.part_blood,pt_shape_disk);
part_type_scale(global.part_blood,1,1);
part_type_size(global.part_blood,0.2,0.30,-0.01,0);
part_type_color3(global.part_blood,c_red,c_red,c_red);
part_type_speed(global.part_blood,10,20,-0.5,0);
part_type_life(global.part_blood,5,20);
part_type_direction(global.part_blood,80,100,0,40)