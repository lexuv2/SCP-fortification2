// Actualisation des variables de la lumière
if(instance_exists(obj_pause))exit;
sl_light_active = true;
dir=point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y)

sl_light_x      = obj_player.x + lengthdir_x(dist,dir);
sl_light_y      = obj_player.y + lengthdir_y(dist,dir);


var _dist = point_distance(to_x,to_y,mouse_x,mouse_y)/10;
var _dir =point_direction(to_x,to_y,mouse_x,mouse_y);

to_x+=lengthdir_x(_dist,_dir)
to_y+=lengthdir_y(_dist,_dir)

if !maslo
sl_light_angle  = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y)
else
sl_light_angle  = point_direction(obj_player.x,obj_player.y,to_x,to_y)

if (sl_light_power_override==0)
sl_light_power  = 0.85 + random(0.10);
else 
sl_light_power = sl_light_power_override;

