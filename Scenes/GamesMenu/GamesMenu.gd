extends Control

onready var textInput = $VBox/AddGame

func _ready():
	textInput.text = "Click here to add game."
