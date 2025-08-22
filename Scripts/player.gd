extends CharacterBody2D

const speed = 75
var current_dir = "none"
var player_name = "Selene"

func _physics_process(delta: float) -> void:
	if global.vn_mode == false:
		player_movement(delta)
	elif global.vn_mode==true:
		vn_mode()

func _process(delta: float) -> void:
	if global.vn_mode == false:
		player_movement(delta)
	elif global.vn_mode==true:
		vn_mode()

	#current_camera()

func player():
	pass

func player_movement(delta):
	
	if Input.is_action_pressed("right"):
		current_dir = "right"
		velocity.x = speed
		velocity.y = 0
	elif Input.is_action_pressed("left"):
		current_dir = "left"
		velocity.x = -speed
		velocity.y = 0
	elif Input.is_action_pressed("down"):
		current_dir = "down"
		velocity.x = 0
		velocity.y = speed
	elif Input.is_action_pressed("up"):
		current_dir = "up"
		velocity.x = 0
		velocity.y = -speed
	else:
		current_dir = "none"
		velocity.x = 0
		velocity.y = 0
	play_anim(current_dir)
	
	move_and_slide()
	
func play_anim(dir):
	
	var anim = $AnimatedSprite2D
	
	if dir == "right":
		anim.flip_h = false
		anim.play("side")
	if dir == "left":
		anim.flip_h = true
		anim.play("side")
	if dir == "up":
		anim.flip_h = false
		anim.play("back")
	if dir == "down":
		anim.flip_h = false
		anim.play("front")
	if dir == "none":
		anim.flip_h = false
		anim.play("front")
		
func current_camera():
	#print("global var: ", str(global.current_scene))
	if str(global.current_scene) == "starting_forest":
		$"starting forest cam".make_current()
	elif str(global.current_scene) == "fairy shop:<Node2D#34460403032>":
		$"fairy shop camera".make_current()
	elif str(global.current_scene) == "dialogue_with_queen":
		pass

func vn_mode():
	var anim = $AnimatedSprite2D
	anim.play("vn_img")
