SL_light_ini_begin(); // Commence l'initialisation de l'objet lumière

sl_light_texture = spr_light02;  // Index de la texture de lumière
sl_light_angle   = image_angle;  // Angle de la texture de lumière
sl_light_color   = c_white;      // Couleur de la lumière
sl_light_power   = 0;            // Puissance de la lumière
sl_light_shadowsharpness = 0.1; // Facteur de dureté des ombres
dist = 30
sl_light_xscale = 3
sl_light_yscale = 3
sl_light_shadowfactor = 1.005
// Liste des objets projetant une ombre
// SL_light_cast_obj(obj,mask);

SL_light_cast_obj( obj_map_shadow_mask, -1 );
SL_light_cast_obj( obj_turret_parrent, spr_shadow_mask_turret );

SL_light_ini_end(); // Termine l'initialisation de l'objet lumière

