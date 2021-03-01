mode = 0;
alarm[0] = 3;

// Variables utilisées dans Step
time = 0;
increment = 0.1;
l = 0;
d = 0;

SL_light_ini_begin(); 
sl_light_texture = spr_light01;
sl_light_xscale  =scale;         
sl_light_yscale  = scale;
sl_light_color   = color;        
sl_light_power = light_power;
sl_light_ambientpower=-1
sl_light_shadowfactor=1.01
SL_light_cast_obj( obj_map_shadow_mask, -1 );




SL_light_ini_end(); // Termine l'initialisation de l'objet lumière

