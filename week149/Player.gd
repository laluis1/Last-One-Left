extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export var speed = 100

func _ready():
	set_process(true);
	set_physics_process(true);

func _process(delta):
	pass

func _physics_process(delta):
	var vel = Vector2()
	if(Input.is_action_pressed("up")):
		vel.y -= 1;
	if(Input.is_action_pressed("down")):
		vel.y += 1;
	if(Input.is_action_pressed("left")):
		vel.x -= 1;
	if(Input.is_action_pressed("right")):
		vel.x += 1;
	vel = vel.normalized()
	move_and_collide(Vector2.RIGHT*vel.x*delta*speed);
	move_and_collide(Vector2.DOWN*vel.y*delta*speed);
