SL_light_ini_begin(); // Commence l'initialisation de l'objet lumière

sl_light_texture = spr_light01;  // Index de la texture de lumière
sl_light_angle   = image_angle;  // Angle de la texture de lumière
sl_light_color   = c_yellow;      // Couleur de la lumière
sl_light_power   = 0;            // Puissance de la lumière
sl_light_shadowsharpness = 0.26; // Facteur de dureté des ombres

// Liste des objets projetant une ombre
// SL_light_cast_obj(obj,mask);
SL_light_cast_obj( obj_collsision, -1 );

SL_light_ini_end(); // Termine l'initialisation de l'objet lumière

