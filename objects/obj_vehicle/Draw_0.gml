draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);

if global.sl_ambient_light < 0.5
{
    // Affichage des flares des phares avant
    draw_set_blend_mode(bm_add);
    draw_sprite_ext(spr_light01,0,x+lengthdir_x(170,image_angle+25),y+lengthdir_y(170,image_angle+25),0.1,0.1,0,c_white,0.6);
    draw_sprite_ext(spr_light01,0,x+lengthdir_x(170,image_angle+335),y+lengthdir_y(170,image_angle+335),0.1,0.1,0,c_white,0.6);
    draw_set_blend_mode(bm_normal);
    
    // Affichage des feux arrière
    SL_draw_sprite_light(spr_light01,0,x+lengthdir_x(-190,image_angle+22),y+lengthdir_y(-190,image_angle+22),0.4,0.4,0,c_red,0.7);
    SL_draw_sprite_light(spr_light01,0,x+lengthdir_x(-190,image_angle+338),y+lengthdir_y(-190,image_angle+338),0.4,0.4,0,c_red,0.7);
}

