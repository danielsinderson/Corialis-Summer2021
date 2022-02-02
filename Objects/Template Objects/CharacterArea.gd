extends Area2D




onready var game_data = get_node("/root/GameData")
onready var text_data = get_node("/root/TextData")
onready var state_machine = get_node("/root/StateMachines")

export var clicked := false
export var character_name := ""
export var time_to_check := 5

var state := 0
var last_state := 0

signal was_clicked




func _ready():
	state = game_data.getObjectState(character_name)
	clicked = game_data.getObjectClicked(character_name)


func _process(delta):
	state = game_data.getObjectState(character_name)
	clicked = game_data.getObjectClicked(character_name)


func _on_CharacterArea_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("left_mouse_click"):
		if $CharacterSoundEffect.playing == false:
			$CharacterSoundEffect.play()
		
		var time = calcTime(game_data.getTime())
		last_state = state
		state = state_machine.changeState(character_name, state, clicked, time)
		
		state_machine.set_last_person(character_name, state)
			
		if clicked == false:
			clicked = true
			game_data.incTime(time_to_check)
			game_data.setObjectClicked(character_name, clicked)
		
		var s = text_data.getSensesText(character_name, state, time)
		var t = text_data.getThoughtsText(character_name, state, time)
		var d = text_data.getDialogueText(character_name, state, time)
		emit_signal("was_clicked", s, t, d, character_name, state)
		
		if last_state != state:
			game_data.incTime(time_to_check)
			game_data.setObjectState(character_name, state)


func calcTime(given_time):
	if given_time < (4*60): return 0
	elif given_time < (16*60): return 1
	else: return 3


func _exit_tree():
	queue_free()
