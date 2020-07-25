///@function example_input_char_filter_test(_callback_data)
///@desc input text callback
///@param {Array:EImGui_TextCallbackData}
function example_input_char_filter_callback() {
	var _callback_data = argument[0];
	var _user_data = argument[1];
	with (example) {
	  var char = _callback_data[@ EImGui_TextCallbackData.Char];
	  if (char == "a")
	    return 1;
  
	  _callback_data[@ EImGui_TextCallbackData.Char] = string_lower(char);
  
	} 


}
