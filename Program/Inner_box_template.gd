extends Control
@onready var label = $Color_rect_vbox/Label
@onready var color_rect = $Color_rect_vbox/ColorRect
var box_id = Manager.id
signal edit

func _ready():
	size_flags_vertical = SIZE_EXPAND
# 	Tænder for "Expand" på Hbox fordi dette ikke kan gøres i scenen da den ikke er barn af en control node

func _process(_delta):
	label.text = Manager.box_info[box_id]["name"]
	color_rect.color = Manager.box_info[box_id]["color"]
#	Sets and updates the name and color of the layer tab for each box.

func _on_delete_pressed():
	Manager.box_info[box_id]["hidden"] = true
	queue_free()
#	Sets the "hidden" value to true and deletes self

func _on_edit_pressed():
	edit.emit(box_id)
#	Emits signal to "New_box.gd" to tell it to open up the editing menu
