extends Control
@onready var label = $Color_rect_vbox/Label
@onready var color_rect = $Color_rect_vbox/ColorRect
signal edit

var box_id = Manager.id - 1

func _ready():
	size_flags_vertical = SIZE_EXPAND
# 	Tænder for "Expand" på Hbox fordi dette ikke kan gøres i scenen da den ikke er barn af en control node

func _process(delta):
	label.text = Manager.test[box_id]["name"]
	color_rect.color = Manager.test[box_id]["color"]

func _on_delete_pressed():
	Manager.test[box_id]["hidden"] = true
	queue_free()

func _on_edit_pressed():
	edit.emit(box_id)

