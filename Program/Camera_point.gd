extends Node3D
var toggleL = false
var toggleR = false


func _process(_delta):
	if Input.is_action_pressed("ui_left"):
		rotate_y(0.01)
#Toggle for rotate LEFT with arrowkey

	if Input.is_action_pressed("ui_right"):
		rotate_y(-0.01)
#Toggle for rotate RIGHT with arrowkey

	if toggleL:
		rotate_y(0.01)
	if toggleR:
		rotate_y(-0.01)

#Rotates the box when using on screen buttons via the toggles

func _on_middle_pressed():
	if toggleL:
		toggleL = false
	else:
		toggleL = true

#Toggle for permanent rotate

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
