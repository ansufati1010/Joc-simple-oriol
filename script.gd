extends CharacterBody2D

var velocitat := 350
var direccio := Vector2.ZERO

func _ready() -> void:
	position = Vector2(100, 200)
	
func _process(delta: float) -> void:
	
	direccio = Input.get_vector("moure_esquerra","moure_dreta","moure_amunt","moure_abaix")
	var desplaçament: Vector2 = direccio * velocitat
	velocity = direccio * velocitat
	move_and_slide()
