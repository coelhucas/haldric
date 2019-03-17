extends Node

# Resources
var tileset = preload("res://graphics/tilesets/tileset.tres")

var version = _get_version_string()

# Toggle Fullscreen
func _input(event):
	if event.is_action_pressed("toggle_fullscreen"):
		OS.window_fullscreen = !OS.window_fullscreen

func _get_version_string():
	var version = ""
	version += str(ProjectSettings.get("application/version/major"), ".")
	version += str(ProjectSettings.get("application/version/minor"), ".")
	version += str(ProjectSettings.get("application/version/patch"), "-")
	version += str(ProjectSettings.get("application/version/status"))
	return version