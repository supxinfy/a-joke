extends Node2D

@export var Title: Label
var velocity: Vector2 = Vector2(400,400)
var color_change_speed: float = 50

func _ready() -> void:
	print(Title)

func _process(delta: float) -> void:
	Title.position += velocity * delta
	
	var window_size = get_viewport().size
	
	Title.modulate = Color(sin(Title.position.x),
						 cos(Title.position.x),
						 sin(Title.position.y))
	
	print(Title.modulate)
	
	if Title.position.x <= 0 or Title.position.x >= window_size.x - Title.size.x:
		velocity.x = -velocity.x

	if Title.position.y <= 0 or Title.position.y >= window_size.y - Title.size.y:
		velocity.y = -velocity.y
