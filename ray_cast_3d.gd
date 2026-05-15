extends RayCast3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frSme.
func _process(delta: float) -> void:
	var pos = $"../../Playe/placeholder".global_position
	look_at(pos,Vector3.UP)
	if is_colliding():
		var collider = get_collider()
		var wallname = (collider.name)
		if wallname == ("WALL"):
			collider.hide()
		else:
			$"../../WALL".show()
			
		
	pass
