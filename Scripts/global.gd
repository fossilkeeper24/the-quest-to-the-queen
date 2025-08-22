extends Node

var current_scene = "starting_forest"
var transition_scene = false
var scene_want = ""

var player_exit_fairyshop_posx = 0
var player_exit_fairyshop_posy = 0
var player_start_posx = 0
var player_start_posy = 0
var vn_mode = false

var locket_bought = false
var dialogue_box = false

func _process(delta: float) -> void:
	#var temp_current_scene = str(get_tree().current_scene)
	#if temp_current_scene == "starting forest:<Node2D#35433481560>":
	#	current_scene = "starting_forest"
	#elif temp_current_scene == "fairy shop:<Node2D#34393294168>":
	#	current_scene = "fairy shop"
	#elif temp_current_scene == "dialogue with queen:<Node2D#32564577624>":
	#	current_scene = "dialogue_with_queen"
	#else:
	current_scene = get_tree().current_scene
	#print(current_scene)
	
func change_scene():
	print(current_scene)
	if transition_scene == true:
		if scene_want == "fairy shop":
			get_tree().change_scene_to_file("res://scenes/fairy shop.tscn")
			finish_changescene()
		elif scene_want == "witch forest":
			get_tree().change_scene_to_file("res://scenes/witch_forest.tscn")
			finish_changescene()
		elif scene_want == "starting forest":
			get_tree().change_scene_to_file("res://scenes/starting_forest.tscn")
			finish_changescene()
		elif scene_want == "castle":
			get_tree().change_scene_to_file("res://scenes/castle.tscn")
			finish_changescene()

func finish_changescene():
	pass
	#if transition_scene == true:
		#transition_scene = false
		#if current_scene == "starting_forest":
			#current_scene = "cliff_side"
		#else:
			#current_scene = "starting_forest"
