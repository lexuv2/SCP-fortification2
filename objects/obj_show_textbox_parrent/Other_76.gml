/// @description Insert description here
// You can write your code in this editor


if event_data[? "event_type"] == "sequence event"
{
switch event_data[? "message"]
{
case "dialog":
if (in_sequence)
layer_sequence_pause(sequence_instance.elementID)
break;

}
}