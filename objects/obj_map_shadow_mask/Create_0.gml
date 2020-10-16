/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//var ww = sprite_width;
//var hh = sprite_height;

//points = array_create()
//points[0]=[x,y];
//points[1]=[x+ww,y];
//points[2]=[x,y+hh];
//points[3]=[x+ww,y+hh];


//polygon = polygon_create(points)

polygon = polygon_from_instance(id, image_angle);


// This shadow caster is static; it doesn't move or change state
flags |= eShadowCasterFlags.Static;