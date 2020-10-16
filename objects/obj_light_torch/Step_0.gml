/// @description Insert description here
// You can write your code in this editor


var _dist = point_distance(to_x,to_y,mouse_x,mouse_y)/10;
var _dir =point_direction(to_x,to_y,mouse_x,mouse_y);

to_x+=lengthdir_x(_dist,_dir)
to_y+=lengthdir_y(_dist,_dir)

var dir = point_direction(obj_player.x,obj_player.y,to_x,to_y)


light[| eLight.Direction]  = dir




x=obj_player.x+lengthdir_x(65,dir);
y=obj_player.y+lengthdir_y(65,dir);

light[|eLight.X]=x;
light[|eLight.Y]=y;

lighting_set_dirty(true);
light[| eLight.Flags] |= eLightFlags.Dirty;
