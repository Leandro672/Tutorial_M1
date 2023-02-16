extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var lista = ["Banana", "maça", "manga"]

# Called when the node enters the scene tree for the first time.
#func Texto():
	#"leandro"

func _ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_botao_lp_pressed():
	$Label.text = str(lista[0]) +"\n" + str(lista[1]) +"\n" + str(lista[2])


func _on_Botao_e_pressed():
	$Label.text += "\n" + $LineEdit.text


func _on_Button_pressed():
	$Label.text = str("Leandro, 18 anos.") # Replace with function body.


func _on_Button2_pressed():
	pass# Replace with function body.
