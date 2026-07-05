extends Parallax2D

@export var hrac: Node2D

var last_player_pos: Vector2
#pohyb paralaxu podla x pozicie hraca
func _ready():
	last_player_pos = hrac.global_position

func _process(delta):
	var delta_x = hrac.global_position.x - last_player_pos.x
	scroll_offset.x += delta_x
	last_player_pos.x = hrac.global_position.x
