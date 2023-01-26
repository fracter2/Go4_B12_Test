extends GPUParticles2D

@onready var default_amount = amount
@onready var default_time = lifetime

func _input(event):
	if event.is_action_released("reset"):
		amount = default_amount
		lifetime = default_time
		
	if event.is_action_released("ui_up"): amount *= 2
	elif event.is_action_released("ui_down"): amount *= 0.5
	elif event.is_action_released("ui_right"): lifetime += 0.2
	elif event.is_action_released("ui_left"): lifetime += -0.2


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
