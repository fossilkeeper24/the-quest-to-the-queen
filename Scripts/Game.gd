extends Node2D


var hoveredElement = null
var slectedElement = null

func unsetHoveredNode(node):
	if self.hoveredElement == node:
		self.hoveredElement = null

func setHoveredNode(node1):
	if self.hoveredElement == null or self.hoveredElement == node1:
		self.hoveredElement = node1
		return true
		
	var nodes = get_tree().get_nodes_in_group('clickableObject')
	
