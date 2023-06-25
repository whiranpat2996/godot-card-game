extends Node

# Monster Info = [Name, Health, Terrain, Region, Nature]
# Skill Info = [Type, Cost, Special Effect]

var MONDATA = { 
	"Naga": {
		"Life": 8, 
		"Terrain": "G", 
		"Region": "Jungle",
		"MainBreed": "Naga",
		"SubBreed": "Naga",
		"Nature": "-3"
		},
	"Golem": {
		"Life": 9,
		"Terrain": "G",
		"Region": "Forest",
		"MainBreed": "Golem",
		"SubBreed": "Golem",
		"Nature": "0"
		},
	"Pixie":{
		"Life": 6,
		"Terrain": "A",
		"Region": "Desert",
		"MainBreed": "Pixie",
		"SubBreed": "Pixie",
		"Nature": "-1"
	}
}

var SKILLDATA = {
	"Chop": {
		"CardType": "skills",
		"SkillType": "POW",
		"Cost": 4,
		"Damage": 8,
		"Effect": "No additional effect.",
	},
	"Kick": {
		"CardType": "skills",
		"SkillType": "POW",
		"Cost": 4,
		"Damage": 7,
		"Effect": "No additional effect.",
	},
	"Toss": {
		"CardType": "skills",
		"SkillType": "POW",
		"Cost": 5,
		"Damage": 5,
		"Effect": "If this isn't dodged, the enemy cannot act during the next turn.",
	},
	"Help": {
		"CardType": "tamer",
		"SkillType": "POW",
		"Cost": 0,
		"Damage": 1,
		"Effect": "No additional effect."
	}
}
