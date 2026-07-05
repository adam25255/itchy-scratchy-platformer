extends Area2D

@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D

#pripojenie signalu cez kod
func _ready():
	if not body_entered.is_connected(_on_body_entered):
		body_entered.connect(_on_body_entered)

	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



#kolizia hraca s dverami, prechody
func _on_body_entered(body: Node) -> void:
		var root = get_tree().get_current_scene()
		#debug print a zmeny levelov
		print (root.scene_file_path)
		if body.name == "Hrac" and root.scene_file_path.ends_with("level2..tscn"):
			get_tree().call_deferred("change_scene_to_file", "res://assets/sceny/main.tscn")
			print ("Koniec Hry, vyhra")
		if body.name == "Hrac" and root.scene_file_path.ends_with("level1.tscn"):
			get_tree().call_deferred("change_scene_to_file", "res://assets/sceny/levely/level2..tscn")
			print ("Level2")
