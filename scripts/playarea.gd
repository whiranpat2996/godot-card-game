extends Control

const CardSize = Vector2(125, 175)
var monster = load("res://scenes/MonsterCard.tscn")
var skill = load("res://scenes/SkillCard.tscn")
var hand = load("res://scripts/playerhand.gd")

var CardSelected = []
var DeckSize = hand.CardList.size()

#var centerCardOval = get_viewport_rect().size * Vector2(0.5, 1)
#var horRad = get_viewport_rect().size.x*0.45
#var vertRad = get_viewport_rect().size.y*0.4
#var angle = deg_to_rad(90) - 0.6
#var OvalAngleVector = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func drawCard():
		var new_card = skill.instantiate()
		CardSelected = randi() % DeckSize
		new_card.CardName = hand.CardList[CardSelected]
#		new_card.position = get_global_mouse_position()
#		OvalAngleVector = Vector2(horRad * cos(angle), (-vertRad) * sin(angle))
#		new_card.position = centerCardOval + OvalAngleVector - new_card.size/2
#		new_card.scale = CardSize/new_card.size
		$Cards.add_child(new_card)
		hand.CardList.erase(hand.CardList[CardSelected])
#		angle += 0.3
		DeckSize -= 1
		return DeckSize
