extends Area2D
@onready var animated_sprite_2d: AnimatedSprite2D =$AnimatedSprite2D
const SPEED= 100
var direction = -1.0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if not body_entered.is_connected(_on_body_entered):
		body_entered.connect(_on_body_entered)

# Called every frame. 'delta' is the elapsed time since the previous frame
#pohyb potkana
func _process(delta: float) -> void:
	position.x +=direction * SPEED * delta

#zmena smeru na signál timera 2 sekundy flip animacie
func _on_timer_timeout() -> void:
	direction *=-1
	animated_sprite_2d.flip_h =!animated_sprite_2d.flip_h
#navrat do menu pri kolizii
func _on_body_entered(body: Node) -> void:
		var root = get_tree().get_current_scene()
		#debug
		print ("Koniec Hry")
		if body.name == "Hrac":
			get_tree().call_deferred("change_scene_to_file", "res://assets/sceny/main.tscn")		
