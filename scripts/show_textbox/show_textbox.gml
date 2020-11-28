// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
///@function	show_textbox_enque(sprite,text)


//actions = ds_queue_create()
actions = ds_queue_create()




function show_textbox_enque(){
	spr_to_draw = argument0;
	text = argument1;
	

	ds_queue_enqueue(global.actions,[spr_to_draw,text])
	
	//var dq = ds_queue_dequeue(actions)
	//show_textbox(dq[0],dq[1])
	

	
}
function textbox_start()
{
	if (ds_queue_empty(global.actions))exit;
	var dq = ds_queue_dequeue(global.actions)
	show_textbox(dq[0],dq[1])
	
}
function show_textbox()
{
	spr_to_draw = argument0;
	text = argument1;
	inst = instance_create_layer(0,0,"UI",obj_show_textbox_parrent)
	inst.spr_to_draw=spr_to_draw;
	inst.text=text;
	return inst;
}