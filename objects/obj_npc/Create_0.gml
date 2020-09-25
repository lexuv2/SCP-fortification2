torch = false; // Détermine si la torche est allumée ou non
timer = 0;     // Variable relative à l'IA
//if !variable_local_exists("mode") mode = 0;

// Crée l'objet lumière générant la lampe torhe
with instance_create(x,y,obj_light_torch)
{parent = other.id;
 sl_light_xscale       = 2.64;
 sl_light_yscale       = 2.64;
 sl_light_shadowlength = 3;
 SL_light_cast_obj(obj_character,spr_character_smask)};

