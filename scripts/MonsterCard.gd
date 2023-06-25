extends MarginContainer

var CardName = "Pixie"

# Called when the node enters the scene tree for the first time.
func _ready():
	loadCard()
	
func loadCard():
	if CardName in CardDB.MONDATA:
		var CardInfo = CardDB.MONDATA[CardName]
		var CardImg = str("res://graphics/monster/",CardName.to_lower(),".png")
		$Bars/MidGap/CardImg.texture = load(CardImg)
		$Bars/MidGap/CardImg.scale = $Bars/MidGap/CardImg.get_size()
		$Bars/TopBar/Name/CenterContainer/Name.text = CardName
		$Bars/TopBar/HP/CenterContainer/HP.text = str(CardInfo.Life)
		$Bars/TopBar2/Nature/CenterContainer/Nature.text = str(CardInfo.Nature)
		$Bars/TopBar2/Terrain/CenterContainer/Terrain.text = CardInfo.Terrain
		$Bars/BottomBar/Region/CenterContainer/Name.text = CardInfo.Region
		$Bars/BottomBar2/MainBreed/CenterContainer/MainBreed.text = CardInfo.MainBreed
		$Bars/BottomBar2/SubBreed/CenterContainer/SubBreed.text = CardInfo.SubBreed
	else:
		$Bars/MidGap/CardImg.scale = $Bars/MidGap/CardImg.get_size()
		$Bars/TopBar/Name/CenterContainer/Name.text = "MONSTER"
		$Bars/TopBar/HP/CenterContainer/HP.text = "X"
		$Bars/TopBar2/Nature/CenterContainer/Nature.text = "X"
		$Bars/TopBar2/Terrain/CenterContainer/Terrain.text = "T"
		$Bars/BottomBar/Region/CenterContainer/Name.text = "REGION"
		$Bars/BottomBar2/MainBreed/CenterContainer/MainBreed.text = "MAIN"
		$Bars/BottomBar2/SubBreed/CenterContainer/SubBreed.text = "SUB"

func enlargeCard():
	var CardSize = Vector2(260, 350)
	size.x = 260
	size.y = 350
	$CardBG.scale = CardSize
	$CardBorder.visible = true
	$CardBorder2.visible = false
	$Bars.visible = true
	
func shrinkCard():
	var CardSize = Vector2(130, 175)
	size.x = 130
	size.y = 175
	$CardBG.scale = CardSize
	$CardBorder.visible = false
	$CardBorder2.visible = true
	$Bars.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _on_mouse_entered():
	enlargeCard()

func _on_mouse_exited():
	shrinkCard()
