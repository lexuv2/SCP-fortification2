// Actualisation des variables de la lumière
sl_light_active  -=1;
sl_light_x      = oPlayer.x + lengthdir_x(25,323+oPlayer.image_angle);
sl_light_y      = oPlayer.y + lengthdir_y(25,323+oPlayer.image_angle);
sl_light_angle  = point_direction(oPlayer.x,oPlayer.y,mouse_x,mouse_y)
sl_light_power  = 0.85 + random(0.10);

