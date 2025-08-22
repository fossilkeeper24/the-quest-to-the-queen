extends Node2D


func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/dialogue_with_queen.tscn")


func _on_button_3_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/startingscreen_real.tscn")


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/starting_forest.tscn")
