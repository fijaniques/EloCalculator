extends LineEdit

func _ready():
	_set_text()

func _on_AddGame_text_entered(new_text):
	var buttonInstance = SCENEMANAGER.button.instance()
	buttonInstance.text = new_text
	text = ""
	get_parent().add_child(buttonInstance)

func _on_AddGame_focus_entered():
	text = ""

func _on_AddGame_focus_exited():
	_set_text()

func _set_text():
	if(get_tree().current_scene.name == "Game"):
		text = "Click here to add player."
	else:
		text = "Click here to add game."
