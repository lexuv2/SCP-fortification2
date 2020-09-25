// Actualisation des variables de la lumière
sl_light_active = true;
dir=point_direction(x,y,mouse_x,mouse_y)

sl_light_x      = oPlayer.x + lengthdir_x(dist,dir);
sl_light_y      = oPlayer.y + lengthdir_y(dist,dir);
sl_light_angle  = point_direction(oPlayer.x,oPlayer.y,mouse_x,mouse_y)
sl_light_power  = 0.85 + random(0.10);

