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
	populatePlayerField("Golem")
	populatePlayerField("Naga")
	populatePlayerField("Pixie")
	populateOpponentField("Pixie")
	populateOpponentField("Golem")
	populateOpponentField("Naga")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func populateOpponentField(monsterName):
	var new_monster = monster.instantiate()
	CardSelected = randi() % monSelect
	new_monster.CardName = monsterName
	new_monster.size.x = 1
	new_monster.size.y = 1
	$CardSetup/OpponentMonsters.add_child(new_monster)

func populatePlayerField(monsterName):
	var new_monster = monster.instantiate()
	CardSelected = randi() % monSelect
	new_monster.CardName = monsterName
	new_monster.size.x = 1
	new_monster.size.y = 1
	$CardSetup/PlayerMonsters.add_child(new_monster)

func drawCard():
		var new_skill = skill.instantiate()
		CardSelected = randi() % CardSelect
		new_skill.CardName = hand.CardList[CardSelected]
		new_skill.size.x = 0.1
		new_skill.size.y = 0.1
		new_skill.loadCard()
		$CardSetup/PlayerCards.add_child(new_skill)
		hand.CardList.pop_front()
		DeckSize -= 1
		$PlayerDeck/DeckSize.text = str(DeckSize)
		return DeckSize
