extends Node3D

@export var next_level = "res://UI/UI_MainMenu.tscn"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_area_3d_body_entered(body: Node3D) -> void:	
	print(body.name)
	if body.name != "Duck":
		print("Not a player, ignoring")
		return
		
	var world_switcher = WorldSwitcher
	world_switcher.clear_objects()
	
	world_switcher.switch_to_light()
	
	print("Flag reached")
	get_tree().change_scene_to_file(next_level)
