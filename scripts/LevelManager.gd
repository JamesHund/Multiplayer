extends Node

#This class is for managing all objects and entities that make up the level

func _ready():
	pass # Replace with function body.

func load_world(world : String):
	for node in get_children():
		node.queue_free()
	var level = load("res://scenes/levels/" + world + ".tscn")
	add_child(level.instance())
	
