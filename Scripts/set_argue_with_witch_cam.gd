extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var cam2 = $"camera queen dialogue"
	cam2.make_current()
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
