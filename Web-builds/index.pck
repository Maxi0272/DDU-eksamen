GDPC                �                                                                         P   res://.godot/exported/133200997/export-3070c538c03ee49b7677ff960a3f5195-main.scn�"      V      7o��yČ`[��tf    `   res://.godot/exported/133200997/export-8f5a19ea160ef351ce9509ce94f7a978-Inner_box_template.scn        V      ��?�����jnc���    T   res://.godot/exported/133200997/export-d621d28d44db356ffe210d217a052eb1-new_box.scn �G            ˯iʫBZv
2��=���    X   res://.godot/exported/133200997/export-eaea00941734f144d9509a94cddf899c-standard_box.scnpg      �      $��I��WUP��]N    P   res://.godot/exported/133200997/export-f0a4ea32b72b64218d23e48a955cbc61-test.scn@v      �      @�68
q��޶PrCe    ,   res://.godot/global_script_class_cache.cfg  p�             ��Р�8���8~$}P�    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex0      �      �̛�*$q�*�́        res://.godot/uid_cache.bin  P�      �       �ud$Ao���#��       res://Add_but.gd        �       �8���i�"j;��n؂       res://Box_list_container.gd �      �       ��X����B�7�f       res://Camera_point.gd   �      �      ���Q�p��K8�2�       res://Inner_box_template.gd �      .      9�!|A�O,�����t�    $   res://Inner_box_template.tscn.remap @�      o       �`6�|�V�p�ѝ���       res://Layers_text.gdp      �       Rv#T,͢�j�X�       res://Manager.gd06      5       �*������
L���       res://add_new.gd�       �       �0hV"��[6g3eD       res://freq_slider_pos.gd@      �       �3TF%1�I�7%$?P       res://icon.svg  ��      �      C��=U���^Qu��U3       res://icon.svg.import         �       �:��Y���u=��>��-       res://main.gd   `             ˯ �9QM��(O�;�{       res://main.gdshader �      L      CD��.�c����D���       res://main.tscn.remap   ��      a       �J�Sw� ������       res://new_box.gdp6      +      ��5��􃲎h�,�\       res://new_box.tscn.remap �      d       �%/M6t/>t�`&�       res://project.binaryP�      �      iiV�Qi��Tǰe�Ҽ�       res://standard_box.gd   �`      �      �U90��q?����LyW        res://standard_box.tscn.remap   ��      i       ��9�9�u�Á6�       res://test.tscn.remap    �      a       �ڡ�$��h��h���    ��Aextends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
�extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


%!�7R�w�g]��Aextends VBoxContainer
const inner_box = preload("res://Inner_box_template.tscn")

func _on_new_box_buttonpress():
	var box_list_inst = inner_box.instantiate()
	self.add_child(box_list_inst)
�extends Node3D
var toggleL = false
var toggleR = false

func _process(_delta):
	if Input.is_action_pressed("ui_left"):
		rotate_y(0.01)
#Toggle for rotate LEFT with arrowkey

	if Input.is_action_pressed("ui_right"):
		rotate_y(-0.01)
#Toggle for rotate RIGHT with arrowkey

	if toggleL:
		rotate_y(0.01)
	if toggleR:
		rotate_y(-0.01)

func _on_middle_pressed():
	if toggleL:
		toggleL = false
	else:
		toggleL = true


func _on_left_button_down():
	toggleL = true

func _on_left_button_up():
	toggleL = false

#Toggle for rotate LEFT

func _on_right_button_down():
	toggleR = true

func _on_right_button_up():
	toggleR = false

#Toggle for rotate RIGHT
Gextends HSlider


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[ ��F�h�(qH�[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://dl3q88rhmmhvf"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
 �c#��h�1k?*ƙ�extends Control
@onready var label = $Color_rect_vbox/Label
@onready var color_rect = $Color_rect_vbox/ColorRect
signal edit

var box_id = Manager.id - 1

func _ready():
	size_flags_vertical = SIZE_EXPAND
# 	Tænder for "Expand" på Hbox fordi dette ikke kan gøres i scenen da den ikke er barn af en control node

func _process(_delta):
	label.text = Manager.test[box_id]["name"]
	color_rect.color = Manager.test[box_id]["color"]

func _on_delete_pressed():
	Manager.test[box_id]["hidden"] = true
	queue_free()

func _on_edit_pressed():
	edit.emit(box_id)

�RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://Inner_box_template.gd ��������      local://PackedScene_nbglq          PackedScene          	         names "         Hbox    offset_right    offset_bottom    size_flags_vertical    script    HBoxContainer    Color_rect_vbox    layout_mode    size_flags_horizontal    VBoxContainer    Label    text    text_overrun_behavior 
   ColorRect    Button_vbox    delete    Button    edit    _on_delete_pressed    pressed    _on_edit_pressed    	   variants            WC     �B                         	   TROMBONE       DELETE       EDIT       node_count             nodes     S   ��������       ����                                        	      ����                          
   
   ����                                            ����                           	      ����                          ����                                ����                         conn_count             conns                                                              node_paths              editable_instances              version             RSRC�&�C�=VD��extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	vertical_scroll_mode = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
extends Node3D
@onready var new_box = $Canvas_layer/HUD/New_box

func _on_add_new_pressed():
	new_box.show()
	if Manager.shown == 0:
		var new_dict = {Manager.id:{"id" : Manager.id, "name" : "", "color" : Color(0,0,0,1),  "freq_low" : 50, "freq_high" : 50, "pan_pos" : 50, "pan_size" : 50 ,"depth_low" : 50, "depth_high": 50, "hidden" : false, "editing" : false}}
		Manager.test.merge(new_dict)
		Manager.shown = 1
	var box_3d = load("res://standard_box.tscn").instantiate()
	$Outerbox.add_child(box_3d)
	box_3d.position = Vector3(-50,-50,-50)
shader_type spatial;

render_mode cull_disabled;


uniform vec4 albedo : source_color = vec4(1.0);
uniform vec4 wire_color : source_color = vec4(0.0, 0.0, 0.0, 1.0);
uniform float wire_width : hint_range(0.0, 40.0) = 5.0;
uniform float wire_smoothness : hint_range(0.0, 0.1) = 0.01;

varying vec3 barys;

void vertex() {
    int index = VERTEX_ID % 3;
    switch (index) {
        case 0:
            barys = vec3(1.0, 0.0, 0.0);
            break;
        case 1:
            barys = vec3(0.0, 1.0, 0.0);
            break;
        case 2:
            barys = vec3(0.0, 0.0, 1.0);
            break;
    }
}

void fragment() {
    vec3 deltas = fwidth(barys);
    vec3 barys_s = smoothstep(deltas * wire_width - wire_smoothness, deltas * wire_width + wire_smoothness, barys);
    float wires = min(barys_s.x, min(barys_s.y, barys_s.z));
    float mixer = 0.0;
    if (UV.x <= 0.01 || UV.y <= 0.01) {
        mixer = 1.0;
    }
    if (UV.x >= 0.99 || UV.y >= 0.99) {
        mixer = 1.0;
    }
    
    ALBEDO = mix(wire_color.rgb, albedo.rgb, wires);
    ALPHA =  mixer *  (1.0-step(0.1, wires));
}RV��RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    render_priority 
   next_pass    shader    shader_parameter/albedo    shader_parameter/wire_color    shader_parameter/wire_width !   shader_parameter/wire_smoothness    script 	   _bundled       Script    res://main.gd ��������   Shader    res://main.gdshader ��������   Script    res://Box_list_container.gd ��������   PackedScene    res://new_box.tscn ��א+�R   Script    res://Camera_point.gd ��������      local://ShaderMaterial_c4s5m �         local://PackedScene_t2gmm )         ShaderMaterial                                           �?  �?  �?  �?                    �?        �@   )   {�G�z�?	         PackedScene    
      	         names "   @      Main    script    Node3D    DirectionalLight3D 
   transform    light_energy    DirectionalLight3D2    DirectionalLight3D3    DirectionalLight3D4 	   Outerbox    material_override    size 	   CSGBox3D    Panning    pixel_size    double_sided    text    Label3D 	   Panning2    Depth    Depth2    freq    freq1    freq2    freq3    Canvas_layer    CanvasLayer    HUD    layout_mode    anchors_preset    offset_right    offset_bottom    Control    Box_list_container    offset_left    offset_top    VBoxContainer    Layers_text    size_flags_vertical    scroll_active    RichTextLabel    add_new    Button    New_box    visible    Right    Left    Middle $   theme_override_font_sizes/font_size    toggle_mode    Camera_point 	   Camera3D    fov    _on_add_new_pressed    pressed    _on_new_box_buttonpress    buttonpress    _on_right_button_down    button_down    _on_right_button_up 
   button_up    _on_left_button_down    _on_left_button_up    _on_middle_pressed    	   variants    =                �5?   �   ?    �5?�5?�5�   �   ?  �B  C  �B      ?   ���IH�IH?    �5?�5?�Q�/��>/�Ͼ  �B  C       г]?��>���    �5?�5?   ?i��i�?      C  �B   vD����>���    �5?�5?��$?6�
?6�
�      C         �?              �?              �?  HB  HB  HB               �B  �B  �B   1�;��5��5?    �5?�5?  ��]�3]��  pB  4�                 PANNING    1�;��5?�5�    �5?�5?  �?]�3]��  p�  4�         �?            �5?�5?    �5��5?      H�  pB      DEPTH      ��]��3]���    �5?�5?1��3�5?�5�      H�  p�   ]���5��5?  �?1�;�    ]�3�5?�5?  \B      \�      FREQ.    � �3�5��5�  �?1�;31��3]���5��5?  \B      \B   ]�3�5?�5�  �?1�;�    ]���5��5�  \�      \B   ]�3�5?�5?  �?1�;�    ]�3�5?�5�  \�      \�                 @�D     �C     (B     �B     iC     }C                    �B     tB     0C     �B       Layers      �B     �A     /C     <B   
   + Add new                      A    �D     2�    �D    ��D     �A    `�D     PB    `�D     �D    ��D    `�D                  Rotate             �5?���i�?    г]?   ?�5����i�?  �B  �B  �B     pB      node_count             nodes     o  ��������       ����                            ����                                 ����                                 ����                                 ����                              	   ����         
                             ����      	            
                          ����                  
                          ����                  
                          ����                  
                          ����                  
                          ����                  
                          ����                  
                          ����                  
                           ����                      ����                                      $   !   ����         "      #                                   (   %   ����         "      #          !      "   &         #   '   
              *   )   ����         "   $   #   %      &      '      (              ���+   )      ,   
      *   "   +   #   ,      -      .              *   -   ����         "   /   #   0      1      2              *   .   ����         "   3   #   0      4      2              *   /   ����         "   5   #   0      6      2   0   7   1   8      9                  2   ����            :              3   3   ����      ;   4   <             conn_count             conns     1          6   5                    8   7                    :   9                    <   ;                    :   =                    <   >                    6   ?                    node_paths              editable_instances              version       	      RSRC�2�@[�to��extends Node

var test = {}
var id = 0
var shown = 0
E1:��3=�
�extends Control
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
jX0RRSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    content_margin_left    content_margin_top    content_margin_right    content_margin_bottom    script 	   _bundled       Script    res://new_box.gd ��������      local://StyleBoxEmpty_nrpef Z         local://StyleBoxEmpty_vw8qs x         local://StyleBoxEmpty_3nlck �         local://StyleBoxEmpty_np4pk �         local://StyleBoxEmpty_mmndr �         local://StyleBoxEmpty_vnlyr �         local://PackedScene_y64ki          StyleBoxEmpty             StyleBoxEmpty             StyleBoxEmpty             StyleBoxEmpty             StyleBoxEmpty             StyleBoxEmpty             PackedScene          	         names "   O      New_box    layout_mode    anchors_preset    anchor_right    anchor_bottom    offset_right    offset_bottom    grow_horizontal    grow_vertical    script    Control 
   ColorRect    color    add_new_text    offset_left    offset_top    text    scroll_active    RichTextLabel    VBoxContainer    Name_field    size_flags_vertical    HBoxContainer 
   Name_text    size_flags_horizontal 
   Name_edit    size_flags_stretch_ratio    placeholder_text 	   TextEdit    Color_field    Color_text    Color_button    ColorPickerButton    Freq_field_low    freq_text_low    freq_slider_range #   theme_override_styles/grabber_area -   theme_override_styles/grabber_area_highlight    value    rounded    HSlider    LOW +   theme_override_font_sizes/normal_font_size    HIGH    Freq_field_pos    freq_text_high    freq_slider_pos    pan_field_size 	   pan_text    pan_slider_size 
   min_value 
   max_value    LEFT    RIGHT    pan_field_pos    pan_slider_pos    depth_field_dry    depth_text_low    depth_slider_low    DRY    WET    depth_field_wet    depth_text_high    depth_slider_high    Add_but    Button    _on_name_edit_text_changed    text_changed    _on_color_button_color_changed    color_changed "   _on_freq_slider_low_value_changed    value_changed #   _on_freq_slider_high_value_changed "   _on_pan_slider_size_value_changed "   _on_pan_slider_left_value_changed #   _on_depth_slider_low_value_changed $   _on_depth_slider_high_value_changed    _on_add_but_pressed    pressed    	   variants    F                    �?    �W�    ���                            �C    ��C   ��X>��X>��X>  �?     $C     ��     vC     B      ADD NEW             0A     B    ��C    ��C      Name
       @      Text       Color
       Frequency range
                         HB           @A     ,B      B   
         SMALL      eC     PA     �C     �A      LARGE       Frequency pos.      B      LOW      fC    ��C      HIGH       Panning range                        �B     XB     �A     �C      Panning pos.       LEFT      �C      RIGHT       Depth range                        `A     B     dC     �C      Depth pos.       DRY      jC    ��C      WET       ADD       node_count    )         nodes     �  ��������
       ����	                                                    	                        ����                  	      
                     ����                                                               ����                                                  ����                                 ����                                             ����                                             ����                                 ����                                              ����                                    !   ����                    
          "   ����                                
       (   #   ����                      $      %      &      '                    )   ����                                  *   !      "                 +   ����            #      $      %      &   *   !      '                 ,   ����                              -   ����                   (                    (   .   ����                      $      %      &      '                    )   ����                        )          *   !      *                 +   ����            +      $      ,      &   *   !      -                 /   ����                              0   ����                   .                    (   1   ����                      $   /   %   0   2      3   1   &                    4   ����                        2      3   *   !      "                 5   ����            #      $      4      )   *   !      '                 6   ����                              0   ����                   5                    (   7   ����                      $   /   %   0   2      3   1   &                    4   ����                        )      3   *   !      6                 5   ����            #      $      7      )   *   !      8                 8   ����                              9   ����                   9                    (   :   ����                      $   :   %   ;   &                     ;   ����                  <            =   *   !      "                  <   ����            >      $      ?      )   *   !      '                 =   ����                    #          >   ����                   @             #       (   ?   ����                      $   :   %   ;   &          %          ;   ����                  <      )      =   *   !      A       %          <   ����            B      $      C      )   *   !      D              A   @   ����                   E             conn_count    	         conns     ?          C   B              	       E   D                     G   F                     G   H                     G   I                     G   J                      G   K              %       G   L              (       N   M                    node_paths              editable_instances              version             RSRC�_�����extends Node3D
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
�v W��RSRC                    PackedScene            ��������                                            o      resource_local_to_scene    resource_name    render_priority 
   next_pass    transparency    blend_mode 
   cull_mode    depth_draw_mode    no_depth_test    shading_mode    diffuse_mode    specular_mode    disable_ambient_light    vertex_color_use_as_albedo    vertex_color_is_srgb    albedo_color    albedo_texture    albedo_texture_force_srgb    albedo_texture_msdf 	   metallic    metallic_specular    metallic_texture    metallic_texture_channel 
   roughness    roughness_texture    roughness_texture_channel    emission_enabled 	   emission    emission_energy_multiplier    emission_operator    emission_on_uv2    emission_texture    normal_enabled    normal_scale    normal_texture    rim_enabled    rim 	   rim_tint    rim_texture    clearcoat_enabled 
   clearcoat    clearcoat_roughness    clearcoat_texture    anisotropy_enabled    anisotropy    anisotropy_flowmap    ao_enabled    ao_light_affect    ao_texture 
   ao_on_uv2    ao_texture_channel    heightmap_enabled    heightmap_scale    heightmap_deep_parallax    heightmap_flip_tangent    heightmap_flip_binormal    heightmap_texture    heightmap_flip_texture    subsurf_scatter_enabled    subsurf_scatter_strength    subsurf_scatter_skin_mode    subsurf_scatter_texture &   subsurf_scatter_transmittance_enabled $   subsurf_scatter_transmittance_color &   subsurf_scatter_transmittance_texture $   subsurf_scatter_transmittance_depth $   subsurf_scatter_transmittance_boost    backlight_enabled 
   backlight    backlight_texture    refraction_enabled    refraction_scale    refraction_texture    refraction_texture_channel    detail_enabled    detail_mask    detail_blend_mode    detail_uv_layer    detail_albedo    detail_normal 
   uv1_scale    uv1_offset    uv1_triplanar    uv1_triplanar_sharpness    uv1_world_triplanar 
   uv2_scale    uv2_offset    uv2_triplanar    uv2_triplanar_sharpness    uv2_world_triplanar    texture_filter    texture_repeat    disable_receive_shadows    shadow_to_opacity    billboard_mode    billboard_keep_scale    grow    grow_amount    fixed_size    use_point_size    point_size    use_particle_trails    proximity_fade_enabled    proximity_fade_distance    msdf_pixel_range    msdf_outline_size    distance_fade_mode    distance_fade_min_distance    distance_fade_max_distance    script 	   _bundled       Script    res://standard_box.gd ��������   !   local://StandardMaterial3D_i26ah V
         local://PackedScene_lbnmw y
         StandardMaterial3D    m         PackedScene    n      	         names "         Standard_box    script    Node3D 
   inner_box    material_override 	   CSGBox3D    Front 
   transform    double_sided    text    Label3D    Back    Right    Left    Top    	   variants    	                          1�;�      �?      �?      ��    1�;���?                     TEXT
    D�L2      ��      �?      �?    D�L2���             �?              �?              �?        ��?     ��    1���      �?    1��3      ��        ���     �?            1�;�  �?      ��1�;�    ��?          node_count             nodes     S   ��������       ����                            ����                    
      ����               	                 
      ����               	                 
      ����               	                 
      ����               	                 
      ����               	                conn_count              conns               node_paths              editable_instances              version       m      RSRC����i9)
��RSRC                    PackedScene            ��������                                            o      resource_local_to_scene    resource_name    render_priority 
   next_pass    transparency    blend_mode 
   cull_mode    depth_draw_mode    no_depth_test    shading_mode    diffuse_mode    specular_mode    disable_ambient_light    vertex_color_use_as_albedo    vertex_color_is_srgb    albedo_color    albedo_texture    albedo_texture_force_srgb    albedo_texture_msdf 	   metallic    metallic_specular    metallic_texture    metallic_texture_channel 
   roughness    roughness_texture    roughness_texture_channel    emission_enabled 	   emission    emission_energy_multiplier    emission_operator    emission_on_uv2    emission_texture    normal_enabled    normal_scale    normal_texture    rim_enabled    rim 	   rim_tint    rim_texture    clearcoat_enabled 
   clearcoat    clearcoat_roughness    clearcoat_texture    anisotropy_enabled    anisotropy    anisotropy_flowmap    ao_enabled    ao_light_affect    ao_texture 
   ao_on_uv2    ao_texture_channel    heightmap_enabled    heightmap_scale    heightmap_deep_parallax    heightmap_flip_tangent    heightmap_flip_binormal    heightmap_texture    heightmap_flip_texture    subsurf_scatter_enabled    subsurf_scatter_strength    subsurf_scatter_skin_mode    subsurf_scatter_texture &   subsurf_scatter_transmittance_enabled $   subsurf_scatter_transmittance_color &   subsurf_scatter_transmittance_texture $   subsurf_scatter_transmittance_depth $   subsurf_scatter_transmittance_boost    backlight_enabled 
   backlight    backlight_texture    refraction_enabled    refraction_scale    refraction_texture    refraction_texture_channel    detail_enabled    detail_mask    detail_blend_mode    detail_uv_layer    detail_albedo    detail_normal 
   uv1_scale    uv1_offset    uv1_triplanar    uv1_triplanar_sharpness    uv1_world_triplanar 
   uv2_scale    uv2_offset    uv2_triplanar    uv2_triplanar_sharpness    uv2_world_triplanar    texture_filter    texture_repeat    disable_receive_shadows    shadow_to_opacity    billboard_mode    billboard_keep_scale    grow    grow_amount    fixed_size    use_point_size    point_size    use_particle_trails    proximity_fade_enabled    proximity_fade_distance    msdf_pixel_range    msdf_outline_size    distance_fade_mode    distance_fade_min_distance    distance_fade_max_distance    script 	   _bundled        !   local://StandardMaterial3D_cro0k )
         local://PackedScene_8mggp d
         StandardMaterial3D          ��g?��l?      �?m         PackedScene    n      	         names "         TEST    Node3D 	   CSGBox3D    material_override 
   operation 	   Camera3D 
   transform    CSGSphere3D    	   variants                          �5?    �5?      �?    �5�    �5?)"@o��>   @     �?              �?              �?��	?              node_count             nodes     $   ��������       ����                      ����                                  ����                           ����                   conn_count              conns               node_paths              editable_instances              version       m      RSRC*I��/)嬀�[remap]

path="res://.godot/exported/133200997/export-8f5a19ea160ef351ce9509ce94f7a978-Inner_box_template.scn"
[remap]

path="res://.godot/exported/133200997/export-3070c538c03ee49b7677ff960a3f5195-main.scn"
X$�/*.;��
B�[remap]

path="res://.godot/exported/133200997/export-d621d28d44db356ffe210d217a052eb1-new_box.scn"
�2/�q�Tb͐-[remap]

path="res://.godot/exported/133200997/export-eaea00941734f144d9509a94cddf899c-standard_box.scn"
����F�[remap]

path="res://.godot/exported/133200997/export-f0a4ea32b72b64218d23e48a955cbc61-test.scn"
"���9�]�M_k�:Hlist=Array[Dictionary]([])
�G�q<svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
���+1��H   +j����n   res://icon.svgwS�����L   res://Inner_box_template.tscn���X$G   res://main.tscn��א+�R   res://new_box.tscn��%�,;   res://standard_box.tscn�7X���I   res://test.tscn(�ʰ��#   res://arrow.png��TԻ;\   res://arrow2.0.pngA����%�U�ECFG	      application/config/name         Eksamen DDU    application/run/main_scene         res://main.tscn    application/config/features$   "         4.1    Forward Plus       application/config/icon         res://icon.svg     autoload/Manager         *res://Manager.gd   "   display/window/size/viewport_width        #   display/window/size/viewport_height      �     display/window/stretch/mode         viewport   display/window/stretch/aspect         ignore  �y�·4I��Gj�