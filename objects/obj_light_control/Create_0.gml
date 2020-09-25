draw_fps         = false; // Affichage des FPS
draw_time        = true;  // Affichage de l'horloge
draw_map         = 1;     // Affichage de la minimap
draw_tods        = true;  // Affichage du slider jour/nuit
grab_toggle      = false; // Activation du mode de déplacement des objets
grab_active      = false; // Détermine si le déplacement d'objets avec la souris est actif ou non
transform_toggle = false; // Activation du mode de transformation de obj_character

// Variables relatives au fade out du curseur
mouse_xprev = mouse_x;
mouse_yprev = mouse_y;
mouse_counter = 0;

// Active/désactive certaines commandes du dev mode
global.dev = false;

// Police
draw_set_font(fnt_arial_12);

