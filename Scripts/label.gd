extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_text("Welcome to 
~ The Quest to the Queen ~")
	await get_tree().create_timer(3).timeout
	set_text("Hiiii")
	print("winning")
	await get_tree().create_timer(3).timeout
	set_text("welcome")
	await get_tree().create_timer(3).timeout
	set_text("greetings")



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
