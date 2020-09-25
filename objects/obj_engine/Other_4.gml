// Change la configuration du ToD en fonction de la room
 SL_engine_ini_begin(); // Commence l'initialisation du système

// Variables de base
global.sl_viewid  = 0;    // Index de la view dans laquelle afficher les effets
sl_buffer_xmargin = 8;    // Marges du buffer
sl_buffer_ymargin = 8;
sl_maxexposure    = 0.45; // Facteur maximal de saturation des lumières

// Variables relatives aux ombres solaires
sl_sunshadows_active      = false; // Active le rendu des ombres du soleil
sl_sunshadows_texturesize = 0.5;  // Facteur de taille de la texture d'ombre (Entre 0 et 1)
sl_sunshadows_quality     = 0.25; // Facteur déterminant le nombre de samples composant l'ombre (Entre 0 et 1)
sl_sunshadows_alpha       = 0.77; // Facteur de transparence de l'ombre (Entre 0 et 1)
sl_sunshadows_alphalimit  = 0.61; // Taux de luminosité ambiante minimum pour lequel les ombres solaires sont visibles
sl_sunshadows_margin      = 200;  // Taille de la marge entourant la surface d'ombre, en pixels

// Facteurs d'étirement des ombres solaires appliqués pour chaque layer
sl_sunshadows_layerscale[0] = 0.2;
sl_sunshadows_layerscale[1] = 0.35;
sl_sunshadows_layerscale[2] = 0.6;
sl_sunshadows_layerscale[3] = 1;
sl_sunshadows_layerscale[4] = 1;
sl_sunshadows_layerscale[5] = 1;

sl_ambientshadows_active = true; // Active le rendu des ombres ambiantes

// Génère les ambient maps

// Déclaration des objets projetant une ombre globale
// SL_global_cast_obj(layer,object,sprite,sun,amb);
//SL_global_cast_obj(5,-1,-1,0,0); // Layer vide pouvant être utilisé pour l'affichage des nuages (obj_cloud)

SL_add_light(obj_light_torch);
SL_add_light(obj_light01);
SL_add_light(obj_light_fast);
SL_add_light(obj_light_torch2)

SL_ToD_default();    // Initialisation du ToD
SL_set_time(14.5);   // Initialisation de l'heure
SL_engine_ini_end(); // Termine l'initialisation du système


 
 
 sl_tod_active = 1;
 {sl_tod_active=0 global.sl_ambient_light=0};

