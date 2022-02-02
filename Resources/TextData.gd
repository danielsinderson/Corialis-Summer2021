extends Node


var THE_BIG_BOOK_OF_TEXT : Dictionary = {
	"Thing_Name": {
		0: {
			0: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		}
	},
	"PlayersBed": {
		0: {
			0: {
				"senses": "Your bed. The sheets are thin and soft with age. Under the smell of the lemongrass detergent is a softer smell: varnish and old wood.",
				"thoughts": "It's comfortable here: quiet, dislocated.",
				"dialogue": " "
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		}
	},
	"BrothersBed": {
		0: {
			0: {
				"senses": "[brother's name]'s bed. Perfectly made.",
				"thoughts": "Huh, I usually have to remind him to make his bed.",
				"dialogue": " "
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		}
	},
	"BedroomWindow": {
		0: {
			0: {
				"senses": "A single pane window. You know the ocean is on the other side but it's too foggy to see.",
				"thoughts": "I wonder when the fog will burn off.",
				"dialogue": " "
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		},
	},
	"BedroomDresser": {
		0: {
			0: {
				"senses": "Varnished wood. Pine probably. It's old, you see staining, damage where a past guest spilled nail polish remover. In the top drawer are your clothes, a journal, and a book titled 'The Laminations'. The bottom drawer has [your brother]'s stuff: clothes etc. His sketchbook is missing.",
				"thoughts": "I keep forgetting these. Mom said 'The Laminations' was her favorite.",
				"dialogue": " "
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		}
	},
	"BedroomDrapes": {
		0: {
			0: {
				"senses": "A pattern of small flowers on a stained, white background. It's frayed and faded. When you get close you smell cigarette smoke.",
				"thoughts": "They must've really washed these to fade the cigarette smell like that.",
				"dialogue": " "
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		}
	},
	"StairsDown": {
		0: {
			0: {
				"senses": "The stairs to the lobby. They're dark.",
				"thoughts": "Hm, the stairwell light's still out. [Handyman's name] must've been busy with something else yesterday.",
				"dialogue": " "
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		}
	},
	"HallDoor1L": {
		0: {
			0: {
				"senses": "[]'s door. It's quiet.",
				"thoughts": "Probably still asleep.",
				"dialogue": " "
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		}
	},
	"HallDoor2L": {
		0: {
			0: {
				"senses": "This room is empty.",
				"thoughts": "They must keep the unoccupied rooms locked.",
				"dialogue": " "
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		}
	},
	"HallDoor1R": {
		0: {
			0: {
				"senses": "[]'s room. It sounds like someone is talking inside.",
				"thoughts": "Huh, is [] talking to themselves or is that just the TV?",
				"dialogue": " "
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		}
	},
	"HallDoor2R": {
		0: {
			0: {
				"senses": "[the handyman]'s room. A loud snoring sound is muffled by the door.",
				"thoughts": "Definitely still alseep.",
				"dialogue": " "
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		}
	},
	"TemplateDoug": {
		0: {
			0: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": "Hey there! Where would you like this conversation to go?\n [url=State1]State 1 bud![/url]\n[url=State2]State 2 my dude![/url]"
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		},
		1: {
			0: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": "Good choice. One is fun after all!"
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		},
		2: {
			0: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": "Aw man, state two means I have shit to do!"
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		}
	},
	"Bedroom1_Bed": {
		0: {
			0: {
				"senses": "Rumpled covers. There's a coffee stain on the sheets.",
				"thoughts": "Reminds me of the stacks of papers they're always moving about.",
				"dialogue": " "
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		}
	},
	"Bedroom1_Chair": {
		0: {
			0: {
				"senses": "A standard caster wheel desk chair. When it rolls across the floor it rumbles; you hear it sometimes from your room.",
				"thoughts": "[Someone] has been here a long time. Must've specially ordered this.",
				"dialogue": " "
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		}
	},
	"Bedroom1_Computer": {
		0: {
			0: {
				"senses": "An off-white cube with a single black eye; green text speckles the screen. Notes on something maybe? 'Ontology, Categories and Patterns: Abandoning the Notion of Differences in Kind....",
				"thoughts": "I wonder if it's the start of a new chapter. Every time I come in it seems like there's a different title on the screen but I never see anything else.",
				"dialogue": " "
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		}
	},
	"Bedroom1_Keyboard": {
		0: {
			0: {
				"senses": "An off white appendage of the desk's cyclopean stare. Plastic, grooved keys. A heavy clatter when used.",
				"thoughts": "Reminds me of an ear for some reason. Like it's waiting for me to say something.",
				"dialogue": " "
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		}
	},
	"Bedroom1_Mouse": {
		0: {
			0: {
				"senses": "Same off-white plastic as the computer, same angles. A sliver of the future extracted and left here on the operating table, still fuming.",
				"thoughts": "I've never used one of these. I wonder if [someone] would show me how sometime.",
				"dialogue": " "
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		}
	},
	"Bedroom1_Pen": {
		0: {
			0: {
				"senses": "A black and silver ballpoint pen. Smudges of blue-black ink on the desk top.",
				"thoughts": "It must leak slightly.",
				"dialogue": " "
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		}
	},
	"Bedroom1_Papers": {
		0: {
			0: {
				"senses": "A small pile of papers with handwritten notes across them at odd angles. You see a couple of fast scrawled phrases: 'consistency is a function of how blurred the viewer's vision is', 'the shape of you, the shape of me, the shape of pizza delivery', and 'mutual information ~ how real real thing A is to real thing B?'.",
				"thoughts": "Looks like [someone]'s notes on... something?",
				"dialogue": " "
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		}
	},
	"Bedroom1_Drapes": {
		0: {
			0: {
				"senses": "A floral print. These have gone yellow with nicotine.",
				"thoughts": "More stained than in my room. I wonder if [someone] used to smoke.",
				"dialogue": " "
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		}
	},
	"Bedroom1_Dresser": {
		0: {
			0: {
				"senses": "Lacquered wood. Probably from the 70s but it's in great condition.",
				"thoughts": "Probably shouldn't go rummaging around in here without [someone]'s permission.",
				"dialogue": " "
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		}
	},
	"LobbyDoorWay": {
		0: {
			0: {
				"senses": "The sound of the percolating coffee machine bubbles and pops from the back room. There's also the sound of shuffling feet and the clink-clatter of objects moved getting moved around.",
				"thoughts": "[Another someone] must be back there. Sounds like they're working on something.",
				"dialogue": " "
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		}
	},
	"LobbyDoor": {
		0: {
			0: {
				"senses": "A red door with a brass knob. Light at its window turned murky and gray, overpowered by the room's flourescents.",
				"thoughts": "It's so early, you can barely tell it's morning out there. I hope [brother] didn't go far.",
				"dialogue": " "
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		}
	},
	"LobbyStairWay": {
		0: {
			0: {
				"senses": "Same dark, wooden stairs. They creak when you walk on them.",
				"thoughts": "Silly to get spooked by these things.",
				"dialogue": " "
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		}
	},
	"LobbyClock": {
		0: {
			0: {
				"senses": "An old wood-framed clock. The glass in front of it is cracked. It looks like a bolt of lightning in a night sky. The seconds-hand ticks quietly.",
				"thoughts": "Huh, I wonder how it got cracked like that.",
				"dialogue": " "
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		}
	},
	"LobbyCalendar": {
		0: {
			0: {
				"senses": ".",
				"thoughts": ".",
				"dialogue": " "
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		}
	},
	"LobbyTelephone": {
		0: {
			0: {
				"senses": ".",
				"thoughts": ".",
				"dialogue": " "
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		}
	},
	"LobbyBulletinBoard": {
		0: {
			0: {
				"senses": ".",
				"thoughts": ".",
				"dialogue": " "
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		}
	},
	"LobbyKeyHooks": {
		0: {
			0: {
				"senses": ".",
				"thoughts": ".",
				"dialogue": " "
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		}
	},
	"LobbyPapers": {
		0: {
			0: {
				"senses": ".",
				"thoughts": ".",
				"dialogue": " "
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		}
	},
	"LobbyPenCup": {
		0: {
			0: {
				"senses": ".",
				"thoughts": ".",
				"dialogue": " "
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		}
	},
	"LobbyBook": {
		0: {
			0: {
				"senses": ".",
				"thoughts": ".",
				"dialogue": " "
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		}
	},
	"LobbyScuffMarks": {
		0: {
			0: {
				"senses": ".",
				"thoughts": ".",
				"dialogue": " "
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		}
	},
	"LobbyDoorMat": {
		0: {
			0: {
				"senses": ".",
				"thoughts": ".",
				"dialogue": " "
			},
			1: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			},
			2: {
				"senses": " ",
				"thoughts": " ",
				"dialogue": " "
			}
		}
	}
}


func getSensesText(thing, state, time):
	return THE_BIG_BOOK_OF_TEXT[thing][state][time]["senses"]

func getThoughtsText(thing, state, time):
	return THE_BIG_BOOK_OF_TEXT[thing][state][time]["thoughts"]

func getDialogueText(thing, state, time):
	return THE_BIG_BOOK_OF_TEXT[thing][state][time]["dialogue"]
