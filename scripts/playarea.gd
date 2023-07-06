extends Control

const CardSize = Vector2(50, 100)
var monster = load("res://scenes/MonsterCard.tscn")
var skill = load("res://scenes/SkillCard.tscn")
var hand = load("res://scripts/playerhand.gd")

var CardSelected = []
var monSelect = hand.monList.size()
var CardSelect = hand.CardList.size()
var DeckSize = 60

# Called when the node enters the scene tree for the first time.
func _ready():
	$PlayerDeck/DeckSize.text = str(DeckSize)
	populatePlayerField("Pixie", "Naga", "Naga")
	populateOpponentField("Pixie", "Golem", "Golem")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func populateOpponentField(monster1, monster2, monster3):
	var list = [monster1, monster2, monster3]
	for unit in list:
		var new_monster = monster.instantiate()
		new_monster.CardName = unit
		$CardSetup/OpponentMonsters.add_child(new_monster)

func populatePlayerField(monster1, monster2, monster3):
	var list = [monster1, monster2, monster3]
	for unit in list:
		var new_monster = monster.instantiate()
		new_monster.CardName = unit
		$CardSetup/PlayerMonsters.add_child(new_monster)

func drawCard():
		var new_skill = skill.instantiate()
		CardSelected = randi() % CardSelect
		new_skill.CardName = hand.CardList[CardSelected]
		$CardSetup/PlayerCards.add_child(new_skill)
		DeckSize -= 1
		$PlayerDeck/DeckSize.text = str(DeckSize)
		return DeckSize
