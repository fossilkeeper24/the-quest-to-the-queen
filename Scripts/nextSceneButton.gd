extends Area2D


func leftMouseClick():
	get_tree().get_root().selectedElement = self
	print('this object is on the top, and clicked!')
	get_tree().change_scene_to_file("res://scenes/testForest2.tscn")
	
func _on_Area2D_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseMotion:
		get_tree().get_root().setHoveredNode(self)

func _on_Area2D_mouse_exited():
	get_tree().get_root().unsetHoveredNode(self)
