extends KinematicBody2D
var mov = Vector2() 

func _ready():
	mov.x = 200
	mov.y = 0
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $right.is_colliding():# and $up.is_colliding():
		mov.x = 0
		mov.y = 100
	if $down.is_colliding() :#and $left.is_colliding():
		mov.x = -100
		mov.y = 0
	if $left.is_colliding() :#and $down.is_colliding():
		mov.x = 0
		mov.y = -100
	if $up.is_colliding() :#and $right.is_colliding():
		mov.x = 100
		mov.y = 0
	move_and_collide(mov*delta)	
	pass
