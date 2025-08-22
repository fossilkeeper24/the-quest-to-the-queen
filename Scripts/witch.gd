extends CharacterBody2D

@export var speed: float = 90.0
var player: Node2D = null
var player_chase: bool = false

func _physics_process(delta: float) -> void:
	velocity = Vector2.ZERO
	# var posistion = $AnimatedSprite2D.position
	if player_chase and player and global.vn_mode == false:
		velocity = (player.global_position - global_position).normalized()*speed
		$AnimatedSprite2D.play("attack_witch")
		
	elif global.vn_mode == true:
		$AnimatedSprite2D.play("vn_witch")
		
	else:
		$AnimatedSprite2D.play("idle_witch")
		
	move_and_slide()


func _on_detection_area_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"): #make sure your player is in this group
		player = body
		player_chase = true


func _on_detection_area_body_exited(body: Node2D) -> void:
	if body == player:
		player = null
		player_chase = false



func _on_steal_area_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		player_chase = false
		get_tree().change_scene_to_file("res://scenes/argue_with_witch.tscn")
