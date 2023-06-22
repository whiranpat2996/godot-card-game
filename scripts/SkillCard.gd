extends MarginContainer

var CardName = "Help"

# Called when the node enters the scene tree for the first time.
func _ready():
	var CardSize = size
	$CardBG.scale = CardSize/$CardBG.texture.get_size()
	
	if CardName in CardDB.SKILLDATA:
		var CardInfo = CardDB.SKILLDATA[CardName]
		var CardImg = str("res://graphics/", CardInfo.CardType,"/",CardName.to_lower(),".png")
		$Bars/MidGap/CardImg.texture = load(CardImg)
		$Bars/MidGap/CardImg.scale = $Bars/MidGap/CardImg.get_size()
		$Bars/TopBar/Name/CenterContainer/Name.text = CardName
		$Bars/TopBar2/MidGap/Damage.text = str(CardInfo.Damage)
		$Bars/TopBar2/MidGap2/Cost.text = str(CardInfo.Cost)
		$Bars/TopBar/Type/CenterContainer/Type.text = CardInfo.SkillType
		$Bars/BottomBar2/Effect/CenterContainer/Name.text = CardInfo.Effect
	else:
		$Bars/TopBar/Name/CenterContainer/Name.text = "SKILL"
		$Bars/TopBar2/MidGap/Damage.text = "0"
		$Bars/TopBar2/MidGap2/Cost.text = "0"
		$Bars/TopBar/Type/CenterContainer/Type.text = "TYPE"
		$Bars/BottomBar2/Effect/CenterContainer/Name.text = "NO EFFECT"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
