extends KinematicBody2D

var velocity : = Vector2()
var speed : float

func init(_speed):
	speed = _speed

func _physics_process(delta):
	move_and_slide(velocity)

func get_input():
	velocity = Vector2(0,0)
	if Input.is_action_pressed("ui_down"):
		velocity.y -= 1
	if Input.is_action_pressed("ui_up"):
		velocity.y += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	velocity = velocity.normalized() * speed
	