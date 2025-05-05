extends Timer

func _ready():
	start()
	
func _on_timeout():
	get_tree().change_scene_to_file("res://final.tscn")
