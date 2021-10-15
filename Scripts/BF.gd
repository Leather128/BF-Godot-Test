extends Node

var anim_Time = 0.0
var bpm = 100.0
var pressingSomething = false

var anim_Player

var inps = []

var actions = [
	"Left",
	"Down",
	"Up",
	"Right"
]

func _ready():
	anim_Player = get_node("AnimationPlayer")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	anim_Time += delta
	
	pressingSomething = false
	
	for act in actions:
		if Input.is_action_pressed("ui_" + act.to_lower()):
			anim_Time = 0.0
			
			pressingSomething = true
			anim_Player.play("Sing " + act)
	
	if anim_Time >= 60.0 / bpm:
		anim_Time = 0.0
		
		if not pressingSomething:
			anim_Player.play("Idle")
