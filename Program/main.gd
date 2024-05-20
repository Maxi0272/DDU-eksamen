extends Node3D
@onready var new_box = $Canvas_layer/HUD/New_box
const inner_box = preload("res://Inner_box_template.tscn")


func _on_add_new_pressed():
	new_box.show()
#	Shows "new_box" which contains sliders for editing the inner box
	var new_dict = {Manager.id:{"name" : "", "color" : Color(0,0,0,1),  "freq_low" : 50, "freq_high" : 50, "pan_pos" : 50, "pan_size" : 50 ,"depth_low" : 50, "depth_high": 50, "hidden" : false, "editing" : false}}
	Manager.box_info.merge(new_dict)
#		Creates and adds new dictionary to current dictionary for the next inner box.
	var box_3d = load("res://standard_box.tscn").instantiate()
	$Outerbox.add_child(box_3d)
	box_3d.position = Vector3(-50,-50,-50)
#	Creates an inner box and sets its position to the middle of the outer box
