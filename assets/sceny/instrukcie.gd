extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#podrzanie buttonu zmena farmy pisma instrukcii
func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://assets/sceny/main.tscn")

#stlacenie buttonu, zmena farby pisma instrukcii

func _on_button_button_down() -> void:
	self.modulate = Color(0.0, 0.941, 0.416, 1.0)
#navrat

func _on_button_button_up() -> void:
	self.modulate = Color(1.0, 1.0, 1.0, 1.0)
