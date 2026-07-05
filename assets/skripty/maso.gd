extends Area2D
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D

# signal na zobrany predmetrst time.
signal zobrane
#pripojenie signalu
func _ready() -> void:
	if not body_entered.is_connected(_on_body_entered):
		body_entered.connect(_on_body_entered)
#kolizia a zmiznutie predmetu
func _on_body_entered(body: Node) -> void:
	if body.name == "Hrac":
		zobrane.emit()
		queue_free()
