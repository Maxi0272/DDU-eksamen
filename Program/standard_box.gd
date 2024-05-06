extends Node3D
@onready var inner_box = $inner_box
@onready var id = Manager.id 
var max = 0
var min = 0


func _ready():
	var material = StandardMaterial3D.new()
	inner_box.material_override = material
	inner_box.material_override.set_transparency(1)
	


func _on_delete_box():
	queue_free()

func clamping():
	max = 100 - inner_box.size.y / 2
	min = 0 + inner_box.size.y / 2
	inner_box.position.y = clamp(inner_box.position.y,min,max)
	
	max = 100 - inner_box.size.x / 2
	min = 0 + inner_box.size.x / 2
	inner_box.position.x = clamp(inner_box.position.x,min,max)
	
	max = 100 - inner_box.size.z / 2
	min = 0 + inner_box.size.z / 2
	inner_box.position.z = clamp(inner_box.position.z,min,max)



func _process(_delta):
	if Manager.test[id]["hidden"] == true:
		Manager.test.erase(id)
		queue_free()
	else:
		inner_box.size.y = Manager.test[id]["freq_low"] / 2
		inner_box.position.y = Manager.test[id]["freq_high"]

		inner_box.size.x = Manager.test[id]["depth_low"] / 2
		inner_box.position.x = Manager.test[id]["depth_high"]

		inner_box.size.z = Manager.test[id]["pan_size"] / 2
		inner_box.position.z = 100 - Manager.test[id]["pan_pos"]

		clamping()

		inner_box.material_override.albedo_color = Manager.test[id]["color"]
