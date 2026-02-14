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
	
#var _minigame_active: bool = false

#func is_minigame_active() -> bool:
	#return _minigame_active 

func get_minigame_scene_path() -> String:
	return _MINIGAME_SCENE_PATH
	
func get_minigame_data() -> Dictionary:
	return _minigame_data
	
#func destroy_minigame() -> void:
	#var minigame_instance: Node = \
		#_minigame_node as Node
	#minigame_instance.queue_free()
	##_update_minigame_state(false)
#
#func instantiate_minigame(to_where: Node) -> void:
	#var minigame_scene: PackedScene = \
		#load(_MINIGAME_SCENE_PATH)
	#var minigame_node: Node = \
		#minigame_scene.instantiate()
		#
	#to_where.add_child(minigame_node)
	
	#_configure_instance(minigame_node)
	#_update_minigame_state(true)
	#
#func _update_minigame_state(state: bool) -> void:
	#_minigame_active = state

#func _configure_instance(_instance: Node3D) -> void:
	#pass
