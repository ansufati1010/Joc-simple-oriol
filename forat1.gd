extends Area2D

var velocitat := 350
var direccio := Vector2.ZERO

func _ready() -> void:
	position = Vector2(0, -100)
	
func _process(delta: float) -> void:
	position.y += 300*delta
