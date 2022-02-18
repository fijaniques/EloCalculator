extends Button

var gameScene = preload("res://Scenes/Games/Base/Game.tscn")
var playerScene = preload("res://Scenes/Players/Base/Player.tscn")
var sceneName

func _ready():
	var packedScene = PackedScene.new() #Determina o tipo do arquivo a ser salvo
	var x
	if(get_tree().current_scene.name == "GamesMenu"):
		x = gameScene.instance()
	else:
		x = playerScene.instance()
	get_tree().current_scene.add_child(x)
	packedScene.pack(get_tree().current_scene.get_node(x.name)) #Empacota a cena com base no node
	get_tree().current_scene.remove_child(x)
	
	_create_dir()
	_create_name()

	ResourceSaver.save(sceneName, packedScene) #Salva arquivo com (nome, modelo)

func _on_Control_pressed():
	get_tree().change_scene(sceneName)

func _create_dir():
	if(get_tree().current_scene.name == "GamesMenu"):
		var dir = Directory.new()
		dir.open("res://Scenes/Games/")
		dir.make_dir(text)
	else:
		var dir = Directory.new()
		dir.open("res://Scenes/Players/")
		dir.make_dir(text)

func _create_name():
	if(get_tree().current_scene.name == "GamesMenu"):
		sceneName = str("res://Scenes/Games/" + text + "/" + text + ".tscn") #Nome do arquivo a ser salvo
	else:
		sceneName = str("res://Scenes/Players/" + text + "/" + text + ".tscn") #Nome do arquivo a ser salvo

func _add_scene():
	if(get_tree().current_scene.name == "GamesMenu"):
		pass
	else:
		pass
