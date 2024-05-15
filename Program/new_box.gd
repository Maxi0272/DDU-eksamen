extends Control
signal buttonpress
@onready var name_edit = $VBoxContainer/Name_field/Name_edit
@onready var color_button = $VBoxContainer/Color_field/Color_button
@onready var freq_slider_range = $VBoxContainer/Freq_field_low/freq_slider_range
@onready var freq_slider_pos = $VBoxContainer/Freq_field_pos/freq_slider_pos
@onready var pan_slider_size = $VBoxContainer/pan_field_size/pan_slider_size
@onready var pan_slider_pos = $VBoxContainer/pan_field_pos/pan_slider_pos
@onready var depth_slider_high = $VBoxContainer/depth_field_wet/depth_slider_high
@onready var depth_slider_low = $VBoxContainer/depth_field_dry/depth_slider_low
@onready var box_list_container = $"../Box_list_container"
@onready var new_box = $"."
var self_id = 0
var editing_id = 0
var hidden_box = false

func _ready():
	pass
	
func _process(_delta):
	var box_list_children = box_list_container.get_children()
	for i in box_list_children:
		if i.is_connected("edit",edit):
			pass
		else:
			i.connect("edit",edit)


func _on_add_but_pressed():
	hidden_box = Manager.test[editing_id]["hidden"]
	Manager.id += 1
	self_id = Manager.id
	var new_dict = {Manager.id:{"id" : Manager.id, "name" : "", "color" : Color(0,0,0,1),  "freq_low" : 50, "freq_high" : 50, "pan_pos" : 50 , "pan_size" : 50, "depth_low" : 50, "depth_high": 50, "hidden" : false, "editing" : false}}
	Manager.test.merge(new_dict)
	if Manager.test[editing_id]["editing"] == true:
		pass
	else:
		buttonpress.emit()
	Manager.test[editing_id]["editing"] = false
	self.hide()
	reset_slider()
	Manager.shown = 0
	

	
func reset_slider():
	freq_slider_range.value = 50
	freq_slider_pos.value = 50
	pan_slider_size.value = 50
	pan_slider_pos.value = 50
	depth_slider_high.value = 50
	depth_slider_low.value = 50
	name_edit.text = ""
	color_button.color = Color(0, 0, 0, 1)

func edit(box_id):
	editing_id = box_id
	Manager.test[box_id]["editing"] = true
	freq_slider_range.value = Manager.test[box_id]["freq_low"]
	freq_slider_pos.value = Manager.test[box_id]["freq_high"]
	pan_slider_size.value = Manager.test[box_id]["pan_size"]
	pan_slider_pos.value = Manager.test[box_id]["pan_pos"]
	depth_slider_high.value = Manager.test[box_id]["depth_high"]
	depth_slider_low.value = Manager.test[box_id]["depth_low"]
	name_edit.text = Manager.test[box_id]["name"]
	color_button.color = Color(Manager.test[box_id]["color"])
	self.show()
	print(box_id)

func _on_freq_slider_low_value_changed(value):
	if Manager.test[editing_id]["editing"] == true and not hidden_box:
		var freq_low = value
		Manager.test[editing_id]["freq_low"] = freq_low
	else:
		var freq_low = value
		Manager.test[self_id]["freq_low"] = freq_low

func _on_freq_slider_high_value_changed(value):
	if Manager.test[editing_id]["editing"] == true and not hidden_box:
		var freq_high = value
		Manager.test[editing_id]["freq_high"] = freq_high
	else:
		var freq_high = value
		Manager.test[self_id]["freq_high"] = freq_high

func _on_pan_slider_left_value_changed(value):
	if Manager.test[editing_id]["editing"] == true and not hidden_box:
		var pan_pos = value
		Manager.test[editing_id]["pan_pos"] = pan_pos
	else:
		var pan_pos = value
		Manager.test[self_id]["pan_pos"] = pan_pos
		
func _on_pan_slider_size_value_changed(value):
	if Manager.test[editing_id]["editing"] == true and not hidden_box:
		var pan_size = value
		Manager.test[editing_id]["pan_size"] = pan_size
	else:
		var pan_size = value
		Manager.test[self_id]["pan_size"] = pan_size
		
func _on_depth_slider_low_value_changed(value):
	if Manager.test[editing_id]["editing"] == true and not hidden_box:
		var depth_low = value
		Manager.test[editing_id]["depth_low"] = depth_low
	else:
		var depth_low = value
		Manager.test[self_id]["depth_low"] = depth_low
		
func _on_depth_slider_high_value_changed(value):
	if Manager.test[editing_id]["editing"] == true and not hidden_box:
		var depth_high = value
		Manager.test[editing_id]["depth_high"] = depth_high
	else:
		var depth_high = value
		Manager.test[self_id]["depth_high"] = depth_high
		
func _on_color_button_color_changed(color):
	if Manager.test[editing_id]["editing"] == true and not hidden_box:
		Manager.test[editing_id]["color"] = color
	else:
		Manager.test[self_id]["color"] = color

func _on_name_edit_text_changed():
	if Manager.test[editing_id]["editing"] == true and not hidden_box:
		Manager.test[editing_id]["name"] = name_edit.text
	else:
		Manager.test[self_id]["name"] = name_edit.text
