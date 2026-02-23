#Put ts as an asset to create a new Door Node

extends Area2D

class_name Door

enum Direction {Right, Left}


@export_file("*.tscn") var NextScene: String
@export var NexPos: Vector2
@export var Dir: Direction
@export var WaitTime: float = 0.5

func _ready() -> void:
	#  print(NexPos)
	await body_entered
	_change()

		

func _change():
	GlobalEventHandler.Change_Scene(NextScene, NexPos, Dir, WaitTime)
	Camera.Fade(0.1,WaitTime)
	
