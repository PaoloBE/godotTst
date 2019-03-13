extends Sprite

var mouseIn = false
var iniX = self.get_transform().get_origin().round().x
var iniY = self.get_transform().get_origin().round().y
var tst = Vector2(50,50)
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
  print(get_viewport().get_mouse_position().round() - get_parent().get_node("Teste").get_transform().origin)
  #print(iniX,",",iniY," con: ",get_viewport().get_mouse_position().round())
  #print(get_parent().get_node("Teste").texture.get_size())
  #print(get_parent().get_node("Teste").get_transform().get_origin().round()," con:",get_viewport().get_mouse_position().round())
  if event is InputEventMouseButton:
    if event.is_pressed() == false:
         print("no en: ", event.position)
         if abs(get_viewport().get_mouse_position().round().x - get_parent().get_node("Teste").get_transform().origin.x) >= 25 or abs(get_viewport().get_mouse_position().round().y - get_parent().get_node("Teste").get_transform().origin.y) >= 25:
            set_position(Vector2(iniX,iniY))
    else:
         print("si en: ", event.position)
  
  pass # replace with function body
