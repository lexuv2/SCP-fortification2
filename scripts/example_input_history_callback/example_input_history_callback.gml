///@function example_input_history_callback(_callback_data)
///@desc input text callback
///@param {Array:EImGui_TextCallbackData}
///@param {Array:[ history_list, current_index ]}
function example_input_history_callback() {
	var _callback_data = argument[0];
	var _user_data = argument[1];
	with (example) {
	  var key = _callback_data[@ EImGui_TextCallbackData.Key];
	  if (key == EImGui_Key.UpArrow) {
	    _callback_data[@ EImGui_TextCallbackData.Text] = "History Up!";
	  } else if (key == EImGui_Key.DownArrow) {
	    _callback_data[@ EImGui_TextCallbackData.Text] = "History Down!"; 
	  }
	} 


}
