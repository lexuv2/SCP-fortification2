//mode = 0;
alarm[0] = 2;

// Variables utilisées dans Step
time = 0;
increment = 0.1;
l = 0;
d = 0;

SL_light_ini_begin(); // Commence l'initialisation de l'objet lumière

sl_light_texture = texture;  // Index de la texture de lumière
sl_light_xscale  = scale;         // Facteurs d'étirement de la lumière
sl_light_yscale  = scale;
sl_light_color   = color;        // Couleur de la lumière
sl_light_shadowsharpness = shadow_sharpness; // Facteur de dureté des ombres
sl_light_shadowlength = shadow_length
sl_light_shadowfactor = shadow_factor
sl_light_ambientpower = ambient_power
sl_light_angle = angle
sl_light_power = power1

// Liste des objets projetant une ombre
// SL_light_cast_obj(obj,mask);
SL_light_cast_obj( obj_map_shadow_mask, -1 );
if !doge_player
SL_light_cast_obj( obj_player, -1 );
//SL_light_cast_obj( obj_vehicle, -1 );

SL_light_ini_end(); // Termine l'initialisation de l'objet lumière


