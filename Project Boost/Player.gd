extends RigidBody3D

var acceleration: float = 1.0
var deceleration: float = 0.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("boost"):
		apply_central_force(basis.y * delta * 1000.0)
	
	#elif deceleration > 0:
		#deceleration -= 0.2
		#position.y += (delta * deceleration)
		
	handle_rotation(delta)
		
func handle_rotation(delta: float) -> void:
	if Input.is_action_pressed("rotate-left"):
		apply_torque(Vector3(0.0, 0.0, 100.0 * delta))
	elif Input.is_action_pressed("rotate-right"):
		apply_torque(Vector3(0.0, 0.0, -100.0*delta))
