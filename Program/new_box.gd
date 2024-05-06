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
var self_id = 0

func _ready():
	pass
	
func _process(_delta):
	pass


func _on_add_but_pressed():
	Manager.id += 1
	self_id = Manager.id
	color_button.color = Color(0, 0, 0, 1)
	var new_dict = {Manager.id:{"id" : Manager.id, "name" : "", "color" : Color(0,0,0,1),  "freq_low" : 50, "freq_high" : 50, "pan_pos" : 50 , "pan_size" : 50, "depth_low" : 50, "depth_high": 50, "hidden" : false}}
	Manager.test.merge(new_dict)
	print (Manager.test)
	print ("\n \n \n \n")
	reset_slider()
	self.hide()
	Manager.shown = 0
	buttonpress.emit()

	
func reset_slider():
	freq_slider_range.value = 50
	freq_slider_pos.value = 50
	pan_slider_size.value = 50
	pan_slider_pos.value = 50
	depth_slider_high.value = 50
	depth_slider_low.value = 50
	name_edit.text = ""



func _on_freq_slider_low_value_changed(value):
	var freq_low = value
	Manager.test[self_id]["freq_low"] = freq_low


func _on_freq_slider_high_value_changed(value):
	var freq_high = value
	Manager.test[self_id]["freq_high"] = freq_high

func _on_pan_slider_left_value_changed(value):
	var pan_pos = value
	Manager.test[self_id]["pan_pos"] = pan_pos

func _on_pan_slider_size_value_changed(value):
	var pan_size = value
	Manager.test[self_id]["pan_size"] = pan_size

func _on_depth_slider_low_value_changed(value):
	var depth_low = value
	Manager.test[self_id]["depth_low"] = depth_low

func _on_depth_slider_high_value_changed(value):
	var depth_high = value
	Manager.test[self_id]["depth_high"] = depth_high

func _on_color_button_color_changed(color):
	Manager.test[self_id]["color"] = color

func _on_name_edit_text_changed():
	Manager.test[self_id]["name"] = name_edit.text
