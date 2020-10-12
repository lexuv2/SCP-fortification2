/// @description Insert description here
// You can write your code in this editor
var filename = "save.json"

var file = file_text_open_read(filename)
var str = file_text_read_string(file)

var bygmap = json_decode(str)

show_debug_message(bygmap[?"player"])
show_debug_message(json_decode(bygmap[?"player"]))
