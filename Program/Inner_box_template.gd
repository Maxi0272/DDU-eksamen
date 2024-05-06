extends Control
@onready var label = $Color_rect_vbox/Label
@onready var color_rect = $Color_rect_vbox/ColorRect

var box_id = Manager.id - 1

func _ready():
	size_flags_vertical = SIZE_EXPAND
	label.text = Manager.test[box_id]["name"]
	color_rect.color = Manager.test[box_id]["color"]
# 	Tænder for "Expand" på Hbox fordi dette ikke kan gøres i scenen da den ikke er barn af en control node


func _on_delete_pressed():
	Manager.test[box_id]["hidden"] = true
	queue_free()

