extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var cam2 = $"player/starting forest cam"
	cam2.make_current()
	global.vn_mode = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	global.change_scene()
	global.vn_mode = false


func _on_fairy_shop_enterance_body_entered(body: Node2D) -> void:
	if body.has_method("player"):
		global.transition_scene = true
		global.scene_want = "fairy shop"

func _on_fairy_shop_enterance_body_exited(body: Node2D) -> void:
	if body.has_method("player"):
		global.transition_scene = false



func _on_witch_forest_enterance_body_entered(body: Node2D) -> void:
	if body.has_method("player") and global.locket_bought == true:
		global.transition_scene = true
		global.scene_want = "witch forest"


func _on_witch_forest_enterance_body_exited(body: Node2D) -> void:
	if body.has_method("player"):
		global.transition_scene = false
