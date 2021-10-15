extends Node

var actions = [
	"ui_left",
	"ui_down",
	"ui_up",
	"ui_right"
]

var cools = [
	"Left",
	"Down",
	"Up",
	"Right"
]

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	for i in range(0, len(actions)):
		var act = actions[i]
		var node = get_node(cools[i])
		
		if Input.is_action_just_pressed(act):
			node.get_node("Sound").play()
		
		if Input.is_action_pressed(act):
			node.get_node("AnimatedSprite").play("confirm")
		else:
			node.get_node("AnimatedSprite").play("static")
