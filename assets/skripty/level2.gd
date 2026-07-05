extends Node2D

var skore: int = 0

@onready var hrac := $Hrac


#pripojenie predmetov, inicializácia labelu so skore
func _ready() -> void:
	pripoj_predmety()
	$Label.text=str(skore)
	

#funkcia na pripojenie skupiny s predmetmi
func pripoj_predmety() -> void:
	var kontajner = get_node("predmety")

	for predmet in kontajner.get_children():
		if predmet.has_signal("zobrane"):
			predmet.zobrane.connect(_on_predmet_zobrany)
#pripocitanoie a update cisla skore v labeli
func _on_predmet_zobrany() -> void:
	skore += 1
	$Label.text=str(skore)
