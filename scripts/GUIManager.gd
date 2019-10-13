extends Node

#This class handles the Switching between GUI Screens

var mainmenu = preload("res://scenes/gui/MainMenu.tscn")

func _ready():
	pass # Replace with function body.

func show_MainMenu():
	add_child(mainmenu.instance())