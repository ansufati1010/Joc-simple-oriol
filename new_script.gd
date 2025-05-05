extends Sprite2D

var velocitat := 300
var direccio := Vector2.ZERO

func _ready() -> void:
	position = Vector2(100, 200)
	
func _process(delta: float) -> void:
	
	direccio = Input.get_vector("moure_esquerra","moure_dreta","moure_amunt","moure_abaix")
	var desplaçament: Vector2 = direccio * velocitat
	position = position + direccio * velocitat * delta
