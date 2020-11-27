// Actualisation des variables de la lumière
pre_power=sl_light_power
SL_light_ini_begin();
sl_light_active = true;
var _dir = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y);

sl_light_x      = parent.x + lengthdir_x(70,_dir);
sl_light_y      = parent.y + lengthdir_y(70,_dir);
sl_light_angle  = _dir;


 // Commence l'initialisation de l'objet lumière
sl_light_texture = spr_light02;  // Index de la texture de lumière
//asl_light_angle   = image_angle;  // Angle de la texture de lumière
sl_light_color   = c_white;      // Couleur de la lumière
//sl_light_power   = 0.001;            // Puissance de la lumière
sl_light_shadowsharpness = 1; // Facteur de dureté des ombres
sl_light_xscale = 5;
sl_light_yscale = 5;
SL_light_cast_obj(obj_map_shadow_mask,-1)


with(obj_map_shadow_mask_low)
{
	if (other.y<y)  
	{
		with(other.id)
		{
		SL_light_cast_obj(other.id,-1);
		}
	}
}

with(obj_map_shadow_mask_high)
{
	if (other.y>y)  
	{
		with(other.id)
		{
		SL_light_cast_obj(other.id,-1);
		}
	}
}



sl_light_power=pre_power
if !off
sl_light_power  = clamp( sl_light_power+turn_on_speed,0 ,0.85 + random(0.1));
else
{
sl_light_power-=turn_on_speed
if sl_light_power<=turn_on_speed
instance_destroy(id)

}
SL_light_ini_end();
pre_power=sl_light_power

