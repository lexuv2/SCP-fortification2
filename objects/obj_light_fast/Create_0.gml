mode = 0;
alarm[0] = 2;

// Variables utilisées dans Step
time = 0;
increment = 0.1;
l = 0;
d = 0;

SL_light_ini_begin(); // Commence l'initialisation de l'objet lumière

sl_light_texture = spr_light01;  // Index de la texture de lumière
sl_light_xscale  = 2.66;         // Facteurs d'étirement de la lumière
sl_light_yscale  = 2.66;
sl_light_color   = c_yellow;        // Couleur de la lumière
sl_light_shadowsharpness = 0.22; // Facteur de dureté des ombres

// Liste des objets projetant une ombre
// SL_light_cast_obj(obj,mask);
SL_light_cast_obj( obj_collsision, -1 );
SL_light_cast_obj( obj_player, -1 );
//SL_light_cast_obj( obj_vehicle, -1 );

SL_light_ini_end(); // Termine l'initialisation de l'objet lumière

