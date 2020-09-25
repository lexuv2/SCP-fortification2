// Actualise la position de la lumière
sl_light_x = x;
sl_light_y = y;

if rotating
if fps!=0 sl_light_angle+=rotate_speed*(60/fps);

if doge_player
if point_distance(x,y,obj_player.x,obj_player.y) <= 70 sl_light_refresh = false;
else sl_light_refresh = true;



