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
if (player_cast_shadow)SL_light_cast_obj( obj_player, -1 );

sl_light_texture = spr_light01;  // Index de la texture de lumière
sl_light_xscale  =scale;         // Facteurs d'étirement de la lumière
sl_light_yscale  = scale;
sl_light_color   = color;        // Couleur de la lumière
