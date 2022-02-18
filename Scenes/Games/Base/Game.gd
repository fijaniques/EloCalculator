extends Control

onready var title = $VBox/LineEdit

func _ready():
	var part1 = filename.right(19)
	var part2 = part1.trim_suffix(".tscn")
	title.text = str(part2)
