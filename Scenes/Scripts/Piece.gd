extends Node2D

export (String) var color;
var moveTween; 
var matched = false; 

# Called when the node enters the scene tree for the first time.
func _ready():
	moveTween = get_node("MoveTween");
	pass # Replace with function body.

func move(target):
	moveTween.interpolate_property(self, "position", position, 
		target, .3, Tween.TRANS_BOUNCE, Tween.EASE_OUT); 
	moveTween.start(); 
	pass; 

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func getMatched():
	return matched; 

func setMatched(match1):
	matched = match1; 
	pass; 

func dimMatchedPieces():
	var sprite = get_node("Sprite"); 
	sprite.modulate.a = .3;
	pass;
