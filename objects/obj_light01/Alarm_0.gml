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