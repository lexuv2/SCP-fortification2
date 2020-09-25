var a;

// Mise à jour des variables selon la vitesse de la room
c_speed  = 6*(60/max(fps,1)); // Vitesse du personnage
c_rspeed = 3*(60/max(fps,1)); // Vitesse de rotation du personnage
friction = 3*(60/max(fps,1)); // Friction du personnage

if mode=1 && point_distance(x,y,obj_character.x,obj_character.y)<800 // Comportement du garde
{
    if !collision_line(x,y,obj_character.x,obj_character.y,obj_crate01,false,true)
    && !collision_line(x,y,obj_character.x,obj_character.y,obj_crate03,false,true)
    && !collision_line(x,y,obj_character.x,obj_character.y,obj_bush01,false,true)
    can_see=true else can_see=false;

    if can_see && global.sl_ambient_light<0.4 && !obj_character.torch
    {
        if point_distance(x,y,obj_character.x,obj_character.y)<340 {direction=point_direction(x,y,obj_character.x,obj_character.y) timer=fps*4};
    }
    else if can_see=true {direction=point_direction(x,y,obj_character.x,obj_character.y) timer=fps*4};
    
    if timer>=0 timer-=1;
    if timer<=0 direction=90;
}
if mode=2 && fps!=0 path_speed=2*(60/fps); // Comportement du personnage en déplacement

// Rotation du personnage
a = direction-image_angle;

if abs(a) < 180 image_angle += c_rspeed*sign(a) else image_angle -= c_rspeed*sign(a);
if abs(a) <= c_rspeed image_angle = direction;

if image_angle > 360 image_angle = 0;
if image_angle < 0   image_angle = 360;

// Activation/désactivation de la torche
if global.sl_ambient_light<0.4 torch=true else torch=false;

