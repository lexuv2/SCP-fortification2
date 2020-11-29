/// @description Insert description here
// You can write your code in this editor
show_textbox_enque(sPlayer,"Welcome on daily security briefing")
show_textbox_enque(sPlayer,"We have malfunctioning generator on floor 1")
show_textbox_enque(sPlayer,"Our sources indicate that it might be cause of SCP-4307's interference")
show_textbox_enque(sPlayer,"But first you need to complete your weekly check-in")
show_textbox_enque(sPlayer,"Suit up in armory below and wait for orders")
textbox_start()
inst_28F2D7CE.alarm[1]=1
inst_2059A61F.alarm[1]=1;
instance_destroy(id)