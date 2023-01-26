extends GPUParticles2D

var mouse_inside:bool = false
@onready var default_amount = amount
@onready var default_time = lifetime

func _input(event):
	if event is InputEventMouseButton:
		if mouse_inside: 
			print("this works")
			emitting = true
			amount += amount
			lifetime += 0.2
		
		else: print("this should not excist")
	
	if event.is_action_pressed("reset"):
		emitting = false
		amount = default_amount
		lifetime = default_time

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass





func _on_click_area_mouse_entered(): mouse_inside = true
func _on_click_area_mouse_exited(): mouse_inside = false
