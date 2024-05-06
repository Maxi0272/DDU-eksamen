extends Node3D
@onready var new_box = $Canvas_layer/HUD/New_box

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func _process(_delta):
	pass


func _on_add_new_pressed():
	new_box.show()
	if Manager.shown == 0:
		var new_dict = {Manager.id:{"id" : Manager.id, "name" : "", "color" : Color(0,0,0,1),  "freq_low" : 50, "freq_high" : 50, "pan_pos" : 50, "pan_size" : 50 ,"depth_low" : 50, "depth_high": 50, "hidden" : false}}
		Manager.test.merge(new_dict)
		Manager.shown = 1
	var box_3d = load("res://standard_box.tscn").instantiate()
	$Outerbox.add_child(box_3d)
	box_3d.position = Vector3(-50,-50,-50)
