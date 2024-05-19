extends Node3D
@onready var new_box = $Canvas_layer/HUD/New_box
const inner_box = preload("res://Inner_box_template.tscn")
@onready var box_list_container = $Canvas_layer/HUD/Box_list_container

func _on_add_new_pressed():
	new_box.show()
	if Manager.shown == 0:
		print ("working")
		var new_dict = {Manager.id:{"id" : Manager.id, "name" : "", "color" : Color(0,0,0,1),  "freq_low" : 50, "freq_high" : 50, "pan_pos" : 50, "pan_size" : 50 ,"depth_low" : 50, "depth_high": 50, "hidden" : false, "editing" : false}}
		Manager.test.merge(new_dict)
		Manager.shown = 1
	var box_3d = load("res://standard_box.tscn").instantiate()
	$Outerbox.add_child(box_3d)
	box_3d.position = Vector3(-50,-50,-50)
#	var box_list_inst = inner_box.instantiate()
#	box_list_container.add_child(box_list_inst)
