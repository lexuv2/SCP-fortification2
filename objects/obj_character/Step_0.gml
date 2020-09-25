var t, a;

// Mise à jour des variables selon la vitesse de la room
c_speed  = 6*(60/max(fps,1)); // Vitesse du personnage
c_rspeed = 9*(60/max(fps,1)); // Vitesse de rotation du personnage
friction = 3*(60/max(fps,1)); // Friction du personnage

// Déplacements du personnage
if keyboard_check(vk_up)    motion_add(90, c_speed);
if keyboard_check(vk_down)  motion_add(270,c_speed);
if keyboard_check(vk_right) motion_add(0,  c_speed);
if keyboard_check(vk_left)  motion_add(180,c_speed);
speed = min(speed,c_speed);

// Limitation des mouvements aux extrémités de la room
if x>room_width x=room_width; if x<0 x=0; if y>room_height y=room_height; if y<0 y=0;

// Rotation du personnage
if point_distance(x,y,mouse_x,mouse_y) > 15
{
t = point_direction(x+lengthdir_x(12,image_angle-90),y+lengthdir_y(12,image_angle-90),mouse_x,mouse_y);
a = t-image_angle;

if abs(a) < 180 image_angle += c_rspeed*sign(a) else image_angle -= c_rspeed*sign(a);
if abs(a) <= c_rspeed image_angle = t;

if image_angle > 360 image_angle = 0;
if image_angle < 0   image_angle = 360;
}

// Activation/désactivation de la torche
if keyboard_check_pressed(ord("L")) or mouse_check_button_pressed(mb_left) torch = !torch;

