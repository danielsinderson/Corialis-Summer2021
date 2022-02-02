extends Node


var save_path := "user://save_data.json"

var default_object_states = {
	"Thing_Name": {"state": 0, "clicked": 0},
	"PlayersBed": {"state": 0, "clicked": 0},
	"BrothersBed": {"state": 0, "clicked": 0},
	"BedroomWindow": {"state": 0, "clicked": 0},
	"BedroomDresser": {"state": 0, "clicked": 0}, 
	"BedroomDrapes": {"state": 0, "clicked": 0},
	"StairsDown": {"state": 0, "clicked": 0},
	"HallDoor1L": {"state": 0, "clicked": 0}, 
	"HallDoor2L": {"state": 0, "clicked": 0}, 
	"HallDoor1R": {"state": 0, "clicked": 0},
	"HallDoor2R": {"state": 0, "clicked": 0}
}


var default_data = {
	"game_time": 0,
	"elapsed_time": 0,
	"current_scene": "res://Scenes/Places/BedroomScene.tscn",
	"object_states": {}
}

var data = {
	"game_time": 0,
	"elapsed_time": 0,
	"current_scene": "res://Scenes/Places/BedroomScene.tscn",
	"object_states": {}
}




func get_current_scene():
	return data["current_scene"]


func set_current_scene(path):
	data["current_scene"] = path


func getTime():
	return data["game_time"]


func incTime(amount):
	data["game_time"] += amount
	print(data["game_time"])


func getElapsedTime():
	return data["elapsed_time"]


func incElapsedTime():
	data["elapsed_time"] += 10
	print(data["elapsed_time"])


func getData():
	return data


func getDefaults():
	return default_data


func resetData():
	data = default_data.duplicate(true)


func getObjectState(name):
	if (name in data["object_states"]) == false:
		data["object_states"][name] = {"state": 0, "clicked": 0}
	return data["object_states"][name]["state"]


func setObjectState(name, value):
	data["object_states"][name]["state"] = value


func getObjectClicked(name):
	if (name in data["object_states"]) == false:
		data["object_states"][name] = {"state": 0, "clicked": 0}
	return data["object_states"][name]["clicked"]


func setObjectClicked(name, value):
	data["object_states"][name]["clicked"] = value


func load_game():
	var file = File.new()
	if not file.file_exists(save_path):
		resetData()
		get_tree().change_scene(data["current_scene"])
		return
	file.open(save_path, file.READ)
	var text = file.get_as_text()
	data = parse_json(text)
	file.close()

	get_tree().change_scene(data["current_scene"])


func save_game():
	var file
	file = File.new()
	file.open(save_path, File.WRITE)
	print(get_current_scene())
	file.store_line(to_json(data))
	file.close()
