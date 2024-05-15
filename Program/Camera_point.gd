extends Node3D
var toggleL = false
var toggleR = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace wi


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if toggleL:
		rotate_y(0.01)
	if toggleR:
		rotate_y(-0.01)

func _on_middle_pressed():
	if toggleL:
		toggleL = false
	else:
		toggleL = true


func _on_left_button_down():
	toggleL = true

func _on_left_button_up():
	toggleL = false

#Toggle for rotate LEFT

func _on_right_button_down():
	toggleR = true

func _on_right_button_up():
	toggleR = false

#Toggle for rotate RIGHT
