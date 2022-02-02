extends Node

# [name, current_state]
var last_person_clicked_name
var last_person_clicked_state



func changeState(thing, current_state, clicked, time):
	match [thing, current_state, clicked, time]:
		_:
			return current_state


func handleDialogue(text_clicked):
	var response
	match [last_person_clicked_name, last_person_clicked_state, text_clicked]:
		["TemplateDoug", 0, "State1"]:
			response = "Heck yea!"
			GameData.setObjectState(last_person_clicked_name, 1)
		["TemplateDoug", 0, "State2"]:
			response = "Gotcha."
			GameData.setObjectState(last_person_clicked_name, 2)
		_:
			response = "..."
			GameData.setObjectState(last_person_clicked_name, last_person_clicked_state)
	
	return response


func set_last_person(name, state):
	last_person_clicked_name = name
	last_person_clicked_state = state
