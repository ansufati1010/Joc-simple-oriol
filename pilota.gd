extends CharacterBody2D

var velocitat := 350
var punts: int = 0

@onready var label_punts: Label = get_tree().get_root().get_node("Node2D/Label")
@onready var detector: Area2D = $Area2D

func _ready() -> void:
	position = Vector2(100, 50)
	detector.connect("area_entered", _on_area_2d_area_entered)

func _process(delta: float) -> void:
	var direccio := Input.get_vector("moure_esquerra", "moure_dreta", "moure_amunt", "moure_abaix")
	velocity = direccio * velocitat
	move_and_slide()

func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("cercle"):
		punts += 1
		label_punts.text = "PUNTUACIÓ: %d" % punts
		area.queue_free()


func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://final.tscn")
