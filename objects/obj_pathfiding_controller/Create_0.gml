/// @description Insert description here
// You can write your code in this editor
var c_width = 32;
var c_height = 32;

var hc = room_width div c_width;
var vc = room_height div c_height

global.grid = mp_grid_create(0,0,hc,vc,c_width,c_height)

mp_grid_add_instances(global.grid,obj_collsision,true);
