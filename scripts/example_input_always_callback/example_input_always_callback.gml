///@function example_input_always_callback(_callback_data)
///@desc input text callback
///@param {Array:EImGui_TextCallbackData}
function example_input_always_callback() {
	var _callback_data = argument[0];
	var _user_data = argument[1];
	with (example) {
	  var cur_pos = _callback_data[EImGui_TextCallbackData.CurPos]
	  Always_out = "Cursor: " + string(cur_pos);
	  var sel_start = _callback_data[EImGui_TextCallbackData.SelectionStart];
	  var sel_end   = _callback_data[EImGui_TextCallbackData.SelectionEnd];
	  if (sel_start != sel_end) 
	    Always_out += " Selected: " + string (sel_end - sel_start) + " chars.";
	} 


}
