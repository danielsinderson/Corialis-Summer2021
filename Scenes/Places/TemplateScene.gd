extends Node2D


onready var game_data = get_node("/root/GameData")

export var place_name = "TemplateScene"
export var file_path := "res://Scenes/Places/BedroomScene.tscn"

export var default_sense_text = "A slight hum from the computer fills the room. The sounds of the ocean are softer on this side of the building."
export var default_thoughts_text = "This is [someone's] room. The computer is always on but I have no idea what their doing."
export var default_dialogue_text = " "

var last_clicked_object = {"name": "", "state": 0}


func _ready():
	game_data.set_current_scene(file_path)
	connect_signals()
	setText(default_sense_text, default_thoughts_text, default_dialogue_text)
	$FadeIn.fade_in()


func _unhandled_input(event):
	if event.is_action_pressed('right_mouse_click'):
		if last_clicked_object["name"] != "":
			last_clicked_object['name'] = ""
			last_clicked_object['state'] = 0
			setText(default_sense_text, default_thoughts_text, default_dialogue_text)
	elif event.is_action_pressed("esc_pressed"):
		get_tree().change_scene("res://Scenes/Menus/Pause_Menu.tscn")
	elif event.is_action_pressed('quick_save'):
		game_data.save_game()
	elif event.is_action_pressed('quick_load'):
		game_data.load_game()


func connect_signals():
	for child in get_children():
		if child is Area2D:
			child.connect("was_clicked", self, "objectClicked")


func objectClicked(senses_text, thoughts_text, dialogue_text, name, state):
	print(last_clicked_object)
	if (name != last_clicked_object['name']) or (state != last_clicked_object['state']):
		last_clicked_object["name"] = name
		last_clicked_object["state"] = state
		setText(senses_text, thoughts_text, dialogue_text)
		print(last_clicked_object)


func setText(senses, thoughts, dialogue):
	#hide current text
	$TextBoxes/Senses/SensesAnimation.play("HideText")
	
	#set new text
	$TextBoxes/Senses/SensesText.bbcode_text = senses
	$TextBoxes/Metacognition/ThoughtsText.bbcode_text = thoughts
	$TextBoxes/Dialogue/DialogueText.bbcode_text = dialogue
	
	#set animation speed
	setAnimationSpeed(senses, thoughts, dialogue)
	
	#animate visibility for typewriter effect
	$TextBoxes/Senses/SensesAnimation.play("SenseTextAnim")
	$TextBoxes/Metacognition/ThoughtsAnimation.play("ThoughtsTextAnim")
	$TextBoxes/Dialogue/DialogueAnimation.play("DialogueTextAnim")


func setAnimationSpeed(senses, thoughts, dialogue):
	var base_animation_speed := 200.0
	var sense_length := base_animation_speed / len(senses) as float
	var thoughts_length := base_animation_speed / len(thoughts) as float
	var dialogue_length := base_animation_speed / len(dialogue) as float
	
	$TextBoxes/Senses/SensesAnimation.set_speed_scale(sense_length)
	$TextBoxes/Metacognition/ThoughtsAnimation.set_speed_scale(thoughts_length)
	$TextBoxes/Dialogue/DialogueAnimation.set_speed_scale(dialogue_length)


func _on_Timer_timeout() -> void:
	game_data.incElapsedTime()
