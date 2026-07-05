extends Sprite2D

var action_list = [
	"walking",
	"book",
	"e-circle",
	"e-square",
	"e-triangle",
	"f-circle",
	"f-square",
	"f-triangle",
	"dancing",
	"kissing",
	"laughing",
	"salute",
	"talking",
	"whispering"
]

var action: int = randi_range(1, len(action_list) - 1)
