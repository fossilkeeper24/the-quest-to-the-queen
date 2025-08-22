extends CharacterBody2D

func _process(delta: float) -> void:
	if global.vn_mode == false:
		$"AnimatedSprite2D".play("pixel_left")
	elif global.vn_mode == true:
		$"AnimatedSprite2D".play("vn_img")

func _on_queen_detect_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		get_tree().change_scene_to_file("res://scenes/dialogue_with_queen.tscn")
