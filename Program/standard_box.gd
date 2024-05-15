extends Node3D
@onready var inner_box = $inner_box
@onready var id = Manager.id 
@onready var front = $inner_box/Front
@onready var back = $inner_box/Back
@onready var right = $inner_box/Right
@onready var left = $inner_box/Left
@onready var top = $inner_box/Top


var max_box = 0
var min_box = 0


func _ready():
	var material = StandardMaterial3D.new()
	inner_box.material_override = material
	inner_box.material_override.set_transparency(1)
	


func clamping():
	max_box = 100 - inner_box.size.y / 2
	min_box = 0 + inner_box.size.y / 2
	inner_box.position.y = clamp(inner_box.position.y,min_box,max_box)
	
	max_box = 100 - inner_box.size.x / 2
	min_box = 0 + inner_box.size.x / 2
	inner_box.position.x = clamp(inner_box.position.x,min_box,max_box)
	
	max_box = 100 - inner_box.size.z / 2
	min_box = 0 + inner_box.size.z / 2
	inner_box.position.z = clamp(inner_box.position.z,min_box,max_box)



func _process(_delta):
	for i in inner_box.get_children():
		i.scale = Vector3(50,50,50)
		i.text = Manager.test[id]["name"]
	front.position.x = inner_box.size.x /2

	back.position.x = -inner_box.size.x /2

	right.position.z = inner_box.size.z /2

	left.position.z = -inner_box.size.z /2

	top.position.y = inner_box.size.y /2

	if Manager.test[id]["hidden"] == true:
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
