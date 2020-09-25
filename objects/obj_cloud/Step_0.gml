speed = varspeed*(60/max(fps,1));
image_angle += varangle*(60/max(fps,1));

if x > room_width+(sprite_width/2)   x = -(sprite_width/2);
else if x < -(sprite_width/2)        x = room_width+(sprite_width/2);
if y > room_height+(sprite_height/2) y = -(sprite_height/2);
else if y < -(sprite_height/2)       y = room_height+(sprite_height/2);

SL_draw_sprite_shadow(5,sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_alpha);

