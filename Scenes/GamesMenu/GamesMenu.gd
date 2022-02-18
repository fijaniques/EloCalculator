extends Control

var button = preload("res://Objects/Button/Button.tscn")
onready var textInput = $VBox/AddGame

func _ready():
	textInput.text = "Click here to add game."

func _on_LineEdit_text_entered(new_text):
	var buttonInstance = button.instance()
	buttonInstance.text = new_text
	textInput.text = ""
	$VBox.add_child(buttonInstance)

func _on_LineEdit_focus_entered():
	textInput.text = ""

func _on_LineEdit_focus_exited():
	textInput.text = "Click here to add game."
