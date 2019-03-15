extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var mouseIn = false
var iniX = self.get_transform().get_origin().round().x
var iniY = self.get_transform().get_origin().round().y
var aterr = ""
signal llegar(nombre)
#var tst = Vector2(50,50)
func _ready():
	var verde = get_parent().get_node("verdeM")
	verde.connect("llegar",self,"cambiar_anim")
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass
func _physics_process(delta):
	 if(mouseIn && Input.is_action_pressed("click")):
	   set_position(get_viewport().get_mouse_position())

func _process(delta):
 pass



func _on_Area2D_mouse_entered():
	mouseIn=true
	pass # replace with function body


func _on_Area2D_mouse_exited():
	#mouseIn = true
	pass # replace with function body


func _on_Area2D_input_event(viewport, event, shape_idx):
    if event is InputEventMouseButton:
       if event.is_pressed() == false:
          mouseIn=false
          for i in get_parent().get_child_count():
            get_parent().get_node(aterr)
    pass # replace with function body
func cambiar_anim(nombre):
    aterr=nombre
	
	#print(nombre)

