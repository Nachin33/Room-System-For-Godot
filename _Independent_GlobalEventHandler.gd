#Put ts in the preload part of the proyect

extends  Node

var ContainsScene = false



func Change_Scene(SceneFilePath, Position, _Direction, wait):
	
	#print("Changing Scene")
	#Looking if Contains an Scene
	#if ContainsScene != false:
	for m in get_tree().current_scene.get_node("RoomContainer").get_children():
		m.call_deferred("queue_free")
	
	
	await get_tree().create_timer(wait).timeout
	
	
	#getting the .tscn file
	var NewScene = load(SceneFilePath)
	NewScene = NewScene.instantiate()
	if NewScene:
		get_tree().current_scene.get_node("RoomContainer").call_deferred("add_child", NewScene)

		
