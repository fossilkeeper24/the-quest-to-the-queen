extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	global.change_scene()
	global.vn_mode = false


func _on_castle_detect_body_entered(body: Node2D) -> void:
	if body.has_method("player"):
		global.transition_scene = true
		global.scene_want = "castle"



func _on_starting_forest_detect_body_entered(body: Node2D) -> void:
	if body.has_method("player"):
		global.transition_scene = true
		global.scene_want = "starting forest"


func _on_castle_detect_body_exited(body: Node2D) -> void:
	if body.has_method("player"):
		global.transition_scene = false


func _on_starting_forest_detect_body_exited(body: Node2D) -> void:
	if body.has_method("player"):
		global.transition_scene = false
