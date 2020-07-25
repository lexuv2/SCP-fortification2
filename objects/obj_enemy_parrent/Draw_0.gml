/// @description Insert description here
// You can write your code in this editor

if slowed
{
shader_set(shd_slow)
draw_self()
shader_reset()
exit
}

if (white_effect)
{
shader_set(shd_whitening)
draw_self()
shader_reset()
exit
}

draw_self()
shader_reset()


//draw_path(path,x,y,0)