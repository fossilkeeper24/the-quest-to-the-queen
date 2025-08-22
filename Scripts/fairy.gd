extends Node2D

var player: Node2D = null

func _ready() -> void:
	var cam2 = $"player/fairy shop camera2"
	cam2.make_current()
	global.vn_mode = false

func _process(delta: float) -> void:
	global.change_scene()
	global.vn_mode = false
	if global.dialogue_box == false:
		$"player/fairy shop camera2/dialogue box".hide()
	else:
		$"player/fairy shop camera2/dialogue box".show()


func _on_fairy_detect_body_entered(body: Node2D) -> void:
	print("detected")
	if body.is_in_group("Player") and global.locket_bought == false:
		print("detected2")
		global.dialogue_box = true


func _on_fairy_shop_exit_body_entered(body: Node2D) -> void:
	if body.has_method("player"):
		global.transition_scene = true
		global.scene_want = "starting forest"


func _on_fairy_shop_exit_body_exited(body: Node2D) -> void:
	if body.has_method("player"):
		global.transition_scene = false
