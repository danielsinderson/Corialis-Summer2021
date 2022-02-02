extends Control


onready var game_data = get_node("/root/GameData")


func _enter_tree():
	OS.set_window_fullscreen(true)
	OS.set_borderless_window(true)
	#var max_screen_size = OS.get_screen_size()
	#OS.set_window_size(max_screen_size)
	#OS.set_window_position(Vector2(0, 0))


func _on_ContinueButton_button_up():
	$ButtonClick.play()
	game_data.load_game()


func _on_QuitButton_button_up():
	$ButtonClick.play()
	get_tree().quit()


func _on_NewGameButton_button_up():
	$ButtonClick.play()
	game_data.resetData()
	game_data.save_game()
	game_data.load_game()
