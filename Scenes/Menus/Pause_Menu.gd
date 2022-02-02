extends Control


onready var game_data = get_node("/root/GameData")



func _on_ResumeButton_button_up():
	$ButtonClick.play()
	game_data.load_game()


func _on_MainMenuButton_button_up():
	$ButtonClick.play()
	game_data.resetData()
	get_tree().change_scene("res://Scenes/Menus/Main_Menu.tscn")


func _on_QuitButton_button_up():
	$ButtonClick.play()
	get_tree().quit()


func _on_SaveButton_button_up():
	$ButtonClick.play()
	game_data.save_game()



