extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#zmena scen a ukoncenie cez buttony
func _on_hra_pressed() -> void:
	get_tree().change_scene_to_file("res://assets/sceny/levely/level1.tscn")


func _on_instrukcie_pressed() -> void:
	get_tree().change_scene_to_file("res://assets/sceny/instrukcie.tscn")


func _on_koniec_pressed() -> void:
	get_tree().quit()
