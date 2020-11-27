/// @description Insert description here
// You can write your code in this editor
image_angle+=10
speed/=1.1;
alpha-=random_range(0,0.2)
image_alpha=alpha
y+=10

if image_alpha<=0
instance_destroy(id)