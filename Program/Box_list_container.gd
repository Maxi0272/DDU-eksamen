extends VBoxContainer
const inner_box = preload("res://Inner_box_template.tscn")

func _on_new_box_buttonpress():
	var box_list_inst = inner_box.instantiate()
	self.add_child(box_list_inst)
