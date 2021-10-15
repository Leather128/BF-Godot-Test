extends Node

var keys = [
	"C",
	"V",
	"N",
	"M"
]

var actions = [
	"Left",
	"Down",
	"Up",
	"Right"
]

func _setup_Binds():
	for i in range(0, len(actions)):
		var new_Event = InputEventKey.new()
		new_Event.set_scancode(OS.find_scancode_from_string(keys[i].to_lower()))
		InputMap.action_add_event("ui_" + actions[i].to_lower(), new_Event)
		
func _ready():
	_setup_Binds()
