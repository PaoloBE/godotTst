extends AnimatedSprite
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_02Area2D_mouse_entered():
	var verde = get_parent().get_node("verdeM")
	verde.emit_signal("llegar",self.name)
	return self.name # Replace with function body.
