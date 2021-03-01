/// @description toggle flashlight



if flash_inst==noone
{
flash_inst = instance_create_layer(0,0,"Lights",obj_light_torch)


}
else if flash_inst.sl_light_power>0.4
{

flash_inst.alarm[0]=1
flash_inst=noone
}

