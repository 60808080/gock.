extends Area3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	body_entered.connect(on_body_entered)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var ui = $"../../Control/Panel"
	if Input.is_action_just_pressed("Kinter") and ui.visible == true:
		ui.visible = false
		print("fuck off")

func on_body_entered(body: Node3D) -> void:
	print("lol")
	var ui = $"../../Control/Panel"
	ui.visible = true

		
