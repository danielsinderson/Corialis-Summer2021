extends Node2D


enum CURSOR_STATES {BLANK, OVER_CLICKABLE, OVER_CHARACTER, OVER_EXIT=4}
var cursor_state

export var senses_text := "This is a test object. There's not nothing here, but there's also not something."
export var thoughts_text := "How can something be there that's not there?"
export var dialogue_text := " "

signal was_clicked


func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	self.position = get_global_mouse_position()


func _physics_process(delta):
	self.position = get_global_mouse_position()
	
	match cursor_state:
		CURSOR_STATES.BLANK:
			$CursorAnimations.play("Blank Cursor")
		CURSOR_STATES.OVER_CLICKABLE:
			$CursorAnimations.play("Over Clickable")
		CURSOR_STATES.OVER_CHARACTER:
			$CursorAnimations.play("Over Character")
		CURSOR_STATES.OVER_EXIT:
			$CursorAnimations.play("Over Exit")


func _unhandled_input(event):
	if event.is_action_pressed("left_mouse_click"):
		$CursorSound.play()


func _on_CursorArea_area_shape_entered(area_id, area, area_shape, local_shape):
	cursor_state = area.collision_layer


func _on_CursorArea_area_shape_exited(area_id, area, area_shape, local_shape):
	cursor_state = CURSOR_STATES.BLANK
