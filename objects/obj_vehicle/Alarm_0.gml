// Création des objets light constituant les phares
with instance_create(x+lengthdir_x(170,image_angle+25),y+lengthdir_y(170,image_angle+25),obj_light01)   { mode=18 sl_light_angle=other.image_angle };
with instance_create(x+lengthdir_x(170,image_angle+335),y+lengthdir_y(170,image_angle+335),obj_light01) { mode=18 sl_light_angle=other.image_angle };

