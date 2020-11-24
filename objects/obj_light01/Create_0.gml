mode = 0;
alarm[0] = 1;

// Variables utilisées dans Step
time = 0;
increment = 0.1;
l = 0;
d = 0;

SL_light_ini_begin(); // Commence l'initialisation de l'objet lumière

sl_light_texture = spr_light01;  // Index de la texture de lumière
sl_light_xscale  =scale;         // Facteurs d'étirement de la lumière
sl_light_yscale  = scale;
sl_light_color   = c_white;        // Couleur de la lumière
sl_light_shadowsharpness = 1; // Facteur de dureté des ombres

// Liste des objets projetant une ombre
// SL_light_cast_obj(obj,mask);
//SL_light_cast_obj( obj_crate01, -1 );
//SL_light_cast_obj( obj_crate02, -1 );
//SL_light_cast_obj( obj_crate03, -1 );
//SL_light_cast_obj( obj_shape01, -1 );
//SL_light_cast_obj( obj_shape03, -1 );
//SL_light_cast_obj( obj_shape04, -1 );
//SL_light_cast_obj( obj_ball,    -1 );
//SL_light_cast_obj( obj_papaj,    -1 );
//SL_light_cast_obj( obj_bush01,  -1 );
//SL_light_cast_obj( obj_npc,     spr_character_smask );
SL_light_cast_obj( obj_map_shadow_mask, -1 );
SL_light_cast_obj( obj_player, -1 );

SL_light_ini_end(); // Termine l'initialisation de l'objet lumière

