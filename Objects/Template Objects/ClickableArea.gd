extends Area2D




onready var game_data = get_node("/root/GameData")
onready var text_data = get_node("/root/TextData")
onready var state_machine = get_node("/root/StateMachines")

export var clicked := false
export var time_to_check := 1

export var max_clicks := 0
export var clickable_name := "Thing_Name"

var state := 0
var last_state := 0

signal was_clicked




func _ready():
	state = game_data.getObjectState(clickable_name)
	clicked = game_data.getObjectClicked(clickable_name)


func _on_ClickableArea_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("left_mouse_click"):
		state = game_data.getObjectState(clickable_name)
		clicked = game_data.getObjectClicked(clickable_name)
		
		var time = calcTime(game_data.getTime())
		last_state = state
		state = state_machine.changeState(clickable_name, state, clicked, time)
		
		if clicked == false:
			clicked = true
			game_data.incTime(time_to_check)
			game_data.setObjectClicked(clickable_name, clicked)
		
		var s = text_data.getSensesText(clickable_name, state, time)
		var t = text_data.getThoughtsText(clickable_name, state, time)
		var d = text_data.getDialogueText(clickable_name, state, time)
		emit_signal("was_clicked", s, t, d, clickable_name, state)
		
		if last_state != state:
			game_data.incTime(time_to_check)
			game_data.setObjectState(clickable_name, state)


func calcTime(given_time):
	if given_time < (4*60): return 0
	elif given_time < (16*60): return 1
	else: return 3


func _exit_tree():
	queue_free()
