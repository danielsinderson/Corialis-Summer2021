extends Area2D




onready var game_data = get_node("/root/GameData")
onready var text_data = get_node("/root/TextData")
onready var state_machine = get_node("/root/StateMachines")

export var clicked := false
export var blocked := false
export var time_to_check := 1
export var time_to_move := 5
export var exit_name := "Thing_Name"

var state := 0
var last_state := 0

export var destination := "res://Scenes/Places/TemplateScene.tscn"
export var destination_name := " "

export var blocked_senses_text := " "
export var blocked_thoughts_text := " "
export var blocked_dialogue_text := " "

signal was_clicked




func _ready():
	state = game_data.getObjectState(exit_name)
	clicked = game_data.getObjectClicked(exit_name)


func _on_ExitArea_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("right_mouse_click"):
		if self.blocked == true:
			emit_signal("was_clicked", blocked_senses_text, blocked_thoughts_text, blocked_dialogue_text, exit_name, state)
			if $BlockedSound.playing == false:
				$BlockedSound.play()
		else:
			if $ExitSound.playing == false:
				$ExitSound.play()
	elif event.is_action_pressed("left_mouse_click"):
		var time = calcTime(game_data.getTime())
		last_state = state
		state = state_machine.changeState(exit_name, state, clicked, time)
		
		if clicked == false:
			clicked = true
			game_data.incTime(time_to_check)
			game_data.setObjectClicked(exit_name, clicked)
		
		var s = text_data.getSensesText(exit_name, state, time)
		var t = text_data.getThoughtsText(exit_name, state, time)
		var d = text_data.getDialogueText(exit_name, state, time)
		emit_signal("was_clicked", s, t, d, exit_name, state)
		
		if last_state != state:
			game_data.incTime(time_to_check)
			game_data.setObjectState(exit_name, state)


func _on_ExitSound_finished():
	game_data.incTime(time_to_move)
	get_tree().change_scene(destination)


func calcTime(given_time):
	if given_time < (4*60): return 0
	elif given_time < (16*60): return 1
	else: return 3


func _exit_tree():
	queue_free()
