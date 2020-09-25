// Crée l'objet lumière générant la lampe torche
with instance_create(x,y,obj_light_torch)
{parent = other.id;
 sl_light_xscale       = 2.8;
 sl_light_yscale       = 2.8;
 sl_light_shadowfactor = 1.03;
 SL_light_cast_obj(obj_npc,spr_character_smask)};

