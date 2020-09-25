// Actualisation des variables de la lumière
sl_light_active  -=1;
sl_light_x      = obj_player.x + lengthdir_x(25,323+obj_player.image_angle);
sl_light_y      = obj_player.y + lengthdir_y(25,323+obj_player.image_angle);
sl_light_angle  = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y)
sl_light_power  = 0.85 + random(0.10);

