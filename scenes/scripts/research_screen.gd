extends Control

func _on_structs_button_up():
	SceneManager.change_to_research_structures_scene()


func _on_back_button_up():
	SceneManager.change_to_core_scene()

func close_this_scene():
	queue_free()