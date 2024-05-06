extends VBoxContainer
const inner_box = preload("res://Inner_box_template.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_new_box_buttonpress():
	var box_list_inst = inner_box.instantiate()
	self.add_child(box_list_inst)
