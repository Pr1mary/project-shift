extends Node2D

var viewport_size

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	viewport_size = get_viewport().get_visible_rect().size

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	var mouse_pos = get_viewport().get_mouse_position()
	
	if mouse_pos.x <= 0:
		position.x = 0
	elif mouse_pos.x >= viewport_size.x:
		position.x = viewport_size.x
	else:
		position.x = mouse_pos.x
	
	if Input.is_action_just_pressed("remote_click"):
		$AnimatedSprite2D.play("click")
		
