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
	inner_box.material_override.set_transparency(4)

#Creates new material and sets it transparency mode to 4 so the user can change it via the alpha

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

#Clamps the inner box to the outer box by checking its current size then clamping it via these sizes. 
#  This prevents the box from exiting the outer box

func _process(_delta):
	for i in inner_box.get_children():
		if i.text.length() >= 10:
			i.text = Manager.box_info[id]["name"].left(10)
		else:
			i.text = Manager.box_info[id]["name"]
		i.scale = Vector3(50,50,50)
# Sets the length of the text on box to max 10 charachters and scales up the size of the box to 50


	front.position.x = inner_box.size.x /2 +1
	front.scale.y = inner_box.size.y
	front.scale.x = inner_box.size.z
	
	back.position.x = -inner_box.size.x /2 -1
	back.scale.y = inner_box.size.y
	back.scale.x = inner_box.size.z
	
	right.position.z = inner_box.size.z /2 +1
	right.scale.y = inner_box.size.y
	right.scale.x = inner_box.size.x

	left.position.z = -inner_box.size.z /2 -1
	left.scale.y = inner_box.size.y
	left.scale.x = inner_box.size.x

	top.position.y = inner_box.size.y /2 +1
	top.scale.y = inner_box.size.z
	top.scale.x = inner_box.size.x
#Scaling of text only difference is what axis are = to the size of the box


	if Manager.box_info[id]["hidden"] == true:
		queue_free()
	else:
		inner_box.size.y = Manager.box_info[id]["freq_low"] 
		inner_box.position.y = Manager.box_info[id]["freq_high"]

		inner_box.size.x = Manager.box_info[id]["depth_low"] 
		inner_box.position.x = Manager.box_info[id]["depth_high"]

		inner_box.size.z = Manager.box_info[id]["pan_size"] 
		inner_box.position.z = 100 - Manager.box_info[id]["pan_pos"]

		clamping()

		inner_box.material_override.albedo_color = Manager.box_info[id]["color"]
#Setting the size of the box by acceseing the dictionary and checking if the box has been deleted by looking up the hidden value
#  in the dictionary. Also clamping calling the clamping function
