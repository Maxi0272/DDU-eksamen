extends Control
const inner_box = preload("res://Inner_box_template.tscn")
@onready var name_edit = $VBoxContainer/Name_field/Name_edit
@onready var color_button = $VBoxContainer/Color_field/Color_button
@onready var freq_slider_range = $VBoxContainer/Freq_field_low/freq_slider_range
@onready var freq_slider_pos = $VBoxContainer/Freq_field_pos/freq_slider_pos
@onready var pan_slider_size = $VBoxContainer/pan_field_size/pan_slider_size
@onready var pan_slider_pos = $VBoxContainer/pan_field_pos/pan_slider_pos
@onready var depth_slider_high = $VBoxContainer/depth_field_wet/depth_slider_high
@onready var depth_slider_low = $VBoxContainer/depth_field_dry/depth_slider_low
@onready var box_list_container = $"../Box_list_container"
var self_id = 0
var editing_id = 0



func _process(_delta):
	var box_list_children = box_list_container.get_children()
	for i in box_list_children:
		if i.is_connected("edit",edit):
			pass
		else:
			i.connect("edit",edit)
# Connects the edit signal from all layer hud elements to new_box

func _on_add_but_pressed():
#This is the button inside of "new_box"
	self.hide()
	Manager.shown = 0
# Hides itself and update Shown value so main can create the next dictionary entry on button press

func _on_add_new_pressed():
#This is the button thats always on screen in the top left
	self_id = Manager.id
	Manager.box_info[editing_id]["editing"] = false
	var box_list_inst = inner_box.instantiate()
	box_list_container.add_child(box_list_inst)
	Manager.id += 1
	reset_slider()
# When the add new button is pressed updates the self_id so the values are added to the correct dictionary
# Then sets editing to false so that the correct dictinaies are updated.
# "spawns" a layer HUD element
# Increases manager.id by 1
# Resets the slider so the box starts in the default position

func reset_slider():
	freq_slider_range.value = 50
	freq_slider_pos.value = 50
	pan_slider_size.value = 50
	pan_slider_pos.value = 50
	depth_slider_high.value = 50
	depth_slider_low.value = 50
	name_edit.text = ""
	color_button.color = Color(0, 0, 0, 1)
# Function used to reset sliders to start position.

func edit(box_id):
	editing_id = box_id
	Manager.box_info[box_id]["editing"] = true
	freq_slider_range.value = Manager.box_info[box_id]["freq_low"]
	freq_slider_pos.value = Manager.box_info[box_id]["freq_high"]
	pan_slider_size.value = Manager.box_info[box_id]["pan_size"]
	pan_slider_pos.value = Manager.box_info[box_id]["pan_pos"]
	depth_slider_high.value = Manager.box_info[box_id]["depth_high"]
	depth_slider_low.value = Manager.box_info[box_id]["depth_low"]
	name_edit.text = Manager.box_info[box_id]["name"]
	color_button.color = Color(Manager.box_info[box_id]["color"])
	self.show()
# Used to set the values to the box thats being edited's values. Also shows self so the user can edit


func _on_freq_slider_low_value_changed(value):
	if Manager.box_info[editing_id]["editing"] == true:
		var freq_low = value
		Manager.box_info[editing_id]["freq_low"] = freq_low
	else:
		var freq_low = value
		Manager.box_info[self_id]["freq_low"] = freq_low


func _on_freq_slider_high_value_changed(value):
	if Manager.box_info[editing_id]["editing"] == true :
		var freq_high = value
		Manager.box_info[editing_id]["freq_high"] = freq_high
	else:
		var freq_high = value
		Manager.box_info[self_id]["freq_high"] = freq_high


func _on_pan_slider_left_value_changed(value):
	if Manager.box_info[editing_id]["editing"] == true :
		var pan_pos = value
		Manager.box_info[editing_id]["pan_pos"] = pan_pos
	else:
		var pan_pos = value
		Manager.box_info[self_id]["pan_pos"] = pan_pos


func _on_pan_slider_size_value_changed(value):
	if Manager.box_info[editing_id]["editing"] == true :
		var pan_size = value
		Manager.box_info[editing_id]["pan_size"] = pan_size
	else:
		var pan_size = value
		Manager.box_info[self_id]["pan_size"] = pan_size


func _on_depth_slider_low_value_changed(value):
	if Manager.box_info[editing_id]["editing"] == true :
		var depth_low = value
		Manager.box_info[editing_id]["depth_low"] = depth_low
	else:
		var depth_low = value
		Manager.box_info[self_id]["depth_low"] = depth_low


func _on_depth_slider_high_value_changed(value):
	if Manager.box_info[editing_id]["editing"] == true :
		var depth_high = value
		Manager.box_info[editing_id]["depth_high"] = depth_high
	else:
		var depth_high = value
		Manager.box_info[self_id]["depth_high"] = depth_high


func _on_color_button_color_changed(color):
	if Manager.box_info[editing_id]["editing"] == true :
		Manager.box_info[editing_id]["color"] = color
	else:
		Manager.box_info[self_id]["color"] = color


func _on_name_edit_text_changed():
	if Manager.box_info[editing_id]["editing"] == true :
		Manager.box_info[editing_id]["name"] = name_edit.text
	else:
		Manager.box_info[self_id]["name"] = name_edit.text

# All slider code functions the same. It checks if it is currently being edited
#	Depending on this it either updates the box that is being editeds values or the new boxes values
