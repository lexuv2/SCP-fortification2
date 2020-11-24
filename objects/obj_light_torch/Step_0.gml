// Actualisation des variables de la lumière
sl_light_active = true;
var _dir = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y);

sl_light_x      = parent.x + lengthdir_x(70,_dir);
sl_light_y      = parent.y + lengthdir_y(70,_dir);
sl_light_angle  = _dir;

if !off
sl_light_power  = clamp( sl_light_power+turn_on_speed,0 ,0.85 + random(0.1));
else
{
sl_light_power-=turn_on_speed
if sl_light_power<=turn_on_speed
instance_destroy(id)

}


