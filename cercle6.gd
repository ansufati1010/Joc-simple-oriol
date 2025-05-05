extends Area2D

var velocity := Vector2(0, -300)

func _ready() -> void:
	add_to_group("cercle")
	position = Vector2(700, 800)

func _process(delta: float) -> void:
	position += velocity * delta

func _on_cercle_body_entered(body):
	if body.name == "pilota": 
		queue_free()
