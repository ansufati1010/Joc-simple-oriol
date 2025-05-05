extends Area2D

var velocitat := 350
var direccio := Vector2.ZERO

func _ready() -> void:
	position = Vector2(800, 200)

func _process(delta: float) -> void:
	position.x += -350*delta
