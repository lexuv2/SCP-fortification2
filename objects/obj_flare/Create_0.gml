/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
inst = instance_create_layer(x,y,"Lights",obj_light_parrent)

inst.color=c_red
inst.scale=1
inst.sl_light_power=0.6
inst.player_cast_shadow=0;


var colls=ds_list_create()
collision_line_list(x,y,mouse_x,mouse_y,obj_collsision,false,false,colls,true)
direction=point_direction(x,y,mouse_x,mouse_y)
var _inst  = colls[|0]
if !ds_list_empty(colls) 
{
var cord =  cast_ray_rectangle(_inst.x,_inst.y,_inst.x+_inst.sprite_width,_inst.y+_inst.sprite_height,x,y,mouse_x+ldx(1000,direction),mouse_y+ldy(1000,direction));
speed = point_distance(x,y,cord.x,cord.y)/11
}
else
speed = point_distance(x,y,mouse_x,mouse_y)/10
