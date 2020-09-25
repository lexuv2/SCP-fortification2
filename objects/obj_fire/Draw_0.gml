image_speed = 0.7*60/max(fps,1);

// Affiche la texture de base en bm_add
draw_set_blend_mode(bm_add);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha);
draw_set_blend_mode(bm_normal);

// Affiche la texture dans le buffer de lumière
SL_draw_sprite_light(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha);

