extends Sprite

var mouseIn = false
var posiX = self.get_transform().x
var posiY = self.get_transform().y
func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	# You need to create a action caleld "click"(Left mouse click) in the project input map.
	# Você precisa criar uma ação chamada click(botão esquerdo do mouse) no input map do seu projeto
	
	if(mouseIn && Input.is_action_pressed("click")):
		set_position(get_viewport().get_mouse_position())
	pass

func _on_Area2D_mouse_entered():
	mouseIn = true
	pass # replace with function body


func _on_Area2D_mouse_exited():
	mouseIn = false
	pass # replace with function body


    
func _on_Area2D_input_event(viewport, event, shape_idx):
  print(get_parent().get_node("Teste").get_transform().get_origin().round()," con:",get_viewport().get_mouse_position().round())
  if event is InputEventMouseButton:
    if event.is_pressed() == false:
	     print("no en: ", event.position)
    else:
         print("si en: ", event.position)
  
  pass # replace with function body
