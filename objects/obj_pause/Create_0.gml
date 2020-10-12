/// @description Insert description here
// You can write your code in this editor
//
buttons = ds_list_create()
var inst = instance_create_layer(0,0,"layer_pause",obj_button_resume)
ds_list_add(buttons,inst);
inst.yoffset=-200

 inst = instance_create_layer(0,0,"layer_pause",obj_button_main_menu)
ds_list_add(buttons,inst);


//obj_button_save_game

 inst = instance_create_layer(0,0,"layer_pause",obj_button_save_game)
ds_list_add(buttons,inst);
inst.yoffset=200

global.draw_gui=false;