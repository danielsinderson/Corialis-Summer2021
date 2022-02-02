extends RichTextLabel


onready var game_data = get_node("/root/GameData")
onready var text_data = get_node("/root/TextData")
onready var state_machine = get_node("/root/StateMachines")

func _ready():
	connect("meta_clicked", self, "handle")


func handle(clicked_response_text):
	var new_text = state_machine.handleDialogue(clicked_response_text)
	self.text = new_text
