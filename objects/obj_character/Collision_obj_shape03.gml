// Collision avec un obstacle, le personnage s'arrête
motion_add(point_direction(other.x,other.y,x,y),speed);
move_outside_solid(point_direction(other.x,other.y,x,y),30);

