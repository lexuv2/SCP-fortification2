SL_light_ini_begin(); // Commence l'initialisation de l'objet lumière

sl_light_texture = spr_light02;  // Index de la texture de lumière
sl_light_angle   = image_angle;  // Angle de la texture de lumière
sl_light_color   = c_white;      // Couleur de la lumière
sl_light_power   = 0.001;            // Puissance de la lumière
sl_light_shadowsharpness = 1; // Facteur de dureté des ombres
sl_light_xscale = 5;
sl_light_yscale = 5;
// Liste des objets projetant une ombre
// SL_light_cast_obj(obj,mask);
//SL_light_cast_obj( obj_crate01, -1 );
//SL_light_cast_obj( obj_crate02, -1 );
//SL_light_cast_obj( obj_crate03, -1 );
//SL_light_cast_obj( obj_shape01, -1 );
//SL_light_cast_obj( obj_shape03, -1 );
//SL_light_cast_obj( obj_shape04, -1 );
//SL_light_cast_obj( obj_ball,    -1 );
//SL_light_cast_obj( obj_bush01,  -1 );
//SL_light_cast_obj( obj_papaj,  -1 );
//SL_light_cast_obj( obj_vehicle, -1 );

off = false;

turn_on_speed =0.1

SL_light_cast_obj(obj_map_shadow_mask,-1)
parent=obj_player

SL_light_ini_end(); // Termine l'initialisation de l'objet lumière

