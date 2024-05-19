extends CSGBox3D
@onready var outerbox = $"."


var my_basis = Basis.IDENTITY
var angle = TAU / 2
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
#
#func _process(delta: float) -> void:
#	basis = basis.rotated(Vector3.UP, rad_to_deg(delta * 360))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#	self.my_basis
#	if Input.is_action_pressed("ui_right"):
#		my_basis = my_basis.rotated(Vector3.DOWN, 0.01)
#		basis = my_basis
##Toggle for rotate RIGHT with arrowkey
#	if Input.is_action_pressed("ui_up"):
#		my_basis = my_basis.rotated(Vector3.RIGHT, 0.01)
#		basis = my_basis
	pass
