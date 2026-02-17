class_name MinigameThinking extends Node
static var ref: MinigameThinking
func _init() -> void:
	ref = self
	
const _MINIGAME_DIRECTORY_NAME: String = "minigame_thinking"
const _MINIGAME_RES_DIRECTORY: String = \
	"res://" + _MINIGAME_DIRECTORY_NAME + "/"
const _MINIGAME_SCENE_PATH: String = \
	_MINIGAME_RES_DIRECTORY + "/Scenes/main.tscn"

## Keys are functions on the parent project. Values are arrays of those functions parameters
var _callback_string_on_creation: Dictionary[String,Array] = {
	"_assign_3D_minigame_pos": [
		_MINIGAME_DIRECTORY_NAME,
		]
	}

var _minigame_data: Dictionary[String,Dictionary] = {
	"callback_data_on_creation": _callback_string_on_creation
	}

func get_minigame_scene_path() -> String:
	return _MINIGAME_SCENE_PATH
	
func get_minigame_data() -> Dictionary:
	return _minigame_data
