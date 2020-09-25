// Animation de mouvement
if room != room2
{
    t += v*60/room_speed if t>=pi*2 t=0;
    l =  sin(t)*2;
    
    x = xstart + lengthdir_x(l,d);
    y = ystart + lengthdir_y(l,d);
}

