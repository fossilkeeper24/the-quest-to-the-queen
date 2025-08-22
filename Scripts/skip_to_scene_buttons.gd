extends OptionButton

func _ready():
	pass
	#var _err = get_tree().root.connect("size_changed", self, "_on_viewport_size_changed")

func _on_viewport_size_changed():
	var screensize = get_tree().root.get_viewport().size()
	#apply this value to all top level ui components.

func _on_item_selected(index: int) -> void:
	if index == 2:
		get_tree().change_scene_to_file("res://scenes/starting_forest.tscn")
	elif index == 7:
		get_tree().change_scene_to_file("res://scenes/dialogue_with_queen.tscn")
	elif index == 0:
		get_tree().change_scene_to_file("res://scenes/startingscreen_real.tscn")
	elif index == 3:
		get_tree().change_scene_to_file("res://scenes/fairy shop.tscn")
	elif index == 4:
		get_tree().change_scene_to_file("res://scenes/witch_forest.tscn")
	elif index == 5:
		get_tree().change_scene_to_file("res://scenes/argue_with_witch.tscn")
	elif index == 1:
		get_tree().change_scene_to_file("res://scenes/introduction.tscn")
	elif index == 8:
		get_tree().change_scene_to_file("res://scenes/ending_scene.tscn")
	elif index == 6:
		get_tree().change_scene_to_file("res://scenes/castle.tscn")
	elif index == 9:
		get_tree().change_scene_to_file("res://scenes/credits.tscn")
