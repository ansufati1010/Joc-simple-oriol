extends Control

@onready var boto_tornar = $Button


func _ready():
	boto_tornar.pressed.connect(_on_tornar_pressed)

func _on_tornar_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://menu.tscn")
