extends Button

var gameScene = preload("res://Scenes/Games/Base/Game.tscn")
var sceneName

func _ready():
	var packedScene = PackedScene.new() #Determina o tipo do arquivo a ser salvo
	var x = gameScene.instance()
	get_tree().current_scene.add_child(x)
	packedScene.pack(get_tree().current_scene.get_node(x.name)) #Empacota a cena com base no node
	get_tree().current_scene.remove_child(x)
	sceneName = str("res://Scenes/Games/" + text + ".tscn") #Nome do arquivo a ser salvo

	ResourceSaver.save(sceneName, packedScene) #Salva arquivo com (nome, modelo)

func _on_Control_pressed():
	get_tree().change_scene(sceneName)
