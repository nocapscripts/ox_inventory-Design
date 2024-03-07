return {
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			},
			{
				label = 'What do you call a vegan burger?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('A misteak.')
				end
			},
			{
				label = 'What do frogs like to eat with their hamburgers?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('French flies.')
				end
			},
			{
				label = 'Why were the burger and fries running?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('Because they\'re fast food.')
				end
			}
		},
		consume = 0.3
	},

	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['black_money'] = {
		label = 'Dirty Money',
	},

	['burger'] = {
		label = 'Burger',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['cola'] = {
		label = 'eCola',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with cola'
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identification',
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
	},

	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	['money'] = {
		label = 'Money',
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	['water'] = {
		label = 'Water',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},

	['mastercard'] = {
		label = 'Mastercard',
		stack = false,
		weight = 10,
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},

	["var_medkit"] = {
		label = "CPR Medical Kit",
		weight = 1000,
		stack = true,
		close = true,
		description = "VAR CPR Kit",
		client = {
			image = "firstaid.png",
		}
	},

	["bengali_platter"] = {
		label = "bengali platter",
		weight = 0,
		stack = true,
		close = true,
		description = "food",
		client = {
			image = "bengali_platter.png",
		}
	},

	["marijuana_1oz_mid"] = {
		label = "1oz marijuana",
		weight = 2800,
		stack = false,
		close = false,
		description = "1oz mid grade marijuana",
		client = {
			image = "marijuana.png",
		}
	},

	["raw_sausage"] = {
		label = "Raw Sausage",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "raw_sausage.png",
		}
	},

	["rgbcontroller"] = {
		label = "RGB Controller",
		weight = 50,
		stack = true,
		close = true,
		description = "Sorry I cant hear you over the sound of my RGB!",
		client = {
			image = "rgbcontroller.png",
		}
	},

	["dugtrio"] = {
		label = "Dugtrio",
		weight = 0,
		stack = true,
		close = false,
		description = "5/6 for Earth Badge",
		client = {
			image = "dugtrio.png",
		}
	},

	["ak-47"] = {
		label = "Raw ak-47",
		weight = 450,
		stack = true,
		close = false,
		description = "Raw AK-47",
		client = {
			image = "ak47.png",
		}
	},

	["laptop_12"] = {
		label = "MemberShip 12",
		weight = 0,
		stack = true,
		close = true,
		description = "Magic Item",
		client = {
			image = "laptop_gold.png",
		}
	},

	["petfood"] = {
		label = "pet food",
		weight = 500,
		stack = true,
		close = true,
		description = "food for your companion!",
		client = {
			image = "petfood.png",
		}
	},

	["suspension1"] = {
		label = "Lowered Suspension",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "suspension1.png",
		}
	},

	["chair43"] = {
		label = "Wicker Lawn Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair43.png",
		}
	},

	["firstaid"] = {
		label = "Esmaabi",
		weight = 2500,
		stack = true,
		close = true,
		description = "You can use this First Aid kit to get people back on their feet",
		client = {
			image = "firstaid.png",
		}
	},

	["sok"] = {
		label = "Red Sock Mask",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "Clothing_1_32.png",
		}
	},

	["steakburger"] = {
		label = "Steak Burger",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 21,
			},
			image = "steakburger.png",
		}
	},

	["pdbadge"] = {
		label = "Police Badge",
		weight = 1000,
		stack = true,
		close = true,
		description = "Special Badge of Law Enforcements",
		client = {
			image = "badge.png",
		}
	},

	["pickaxe"] = {
		label = "Pickaxe",
		weight = 1000,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "pickaxe.png",
		}
	},

	["grape"] = {
		label = "Mahl",
		weight = 100,
		stack = true,
		close = false,
		description = "Mmmmh yummie, grapes",
		client = {
			image = "grape.png",
		}
	},

	["fishtacklebox"] = {
		label = "Tackle Box",
		weight = 1000,
		stack = true,
		close = true,
		description = "Seems to be left over tackle box from another fisherman",
		client = {
			image = "fishtacklebox.png",
		}
	},

	["e2_cpu"] = {
		label = "E2",
		weight = 1000,
		stack = true,
		close = true,
		description = "Sometimes you'd want everything to burn..",
		client = {
			image = "e2_cpu.png",
		}
	},

	["mala_roupas"] = {
		label = "Clothing Bag",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mala_roupas.png",
		}
	},

	["poachingbait"] = {
		label = "Poaching Bait",
		weight = 100,
		stack = true,
		close = true,
		description = "A mixture of old meats and vegetables to attract rare animals on a special island",
		client = {
			image = "huntingbait.png",
		}
	},

	["keepcompanionmtlion"] = {
		label = "MtLion",
		weight = 500,
		stack = false,
		close = true,
		description = "MtLion is your royal companion!",
		client = {
			image = "A_C_MtLion.png",
		}
	},

	["chair66"] = {
		label = "Yellow Wicker Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair66.png",
		}
	},

	["petnametag"] = {
		label = "Name tag",
		weight = 500,
		stack = true,
		close = true,
		description = "Rename your pet",
		client = {
			image = "petnametag.png",
		}
	},

	["tentacool"] = {
		label = "Tentacool",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tentacool.png",
		}
	},

	["surgical_gloves"] = {
		label = "Surgical gloves",
		weight = 500,
		stack = true,
		close = true,
		description = "edit here",
		client = {
			image = "surgical_gloves.png",
		}
	},

	["ruby_necklace_silver"] = {
		label = "Ruby Necklace Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ruby_necklace_silver.png",
		}
	},

	["weed_ak47_seed"] = {
		label = "AK47 Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of AK47",
		client = {
			image = "weed_seed.png",
		}
	},

	["hackerphone"] = {
		label = "root@hackerphone",
		weight = 2000,
		stack = false,
		close = true,
		description = "Hahaha Lets GO NCBoys",
		client = {
			image = "hackerphone.png",
		}
	},

	["bellsprout"] = {
		label = "Bellsprout",
		weight = 0,
		stack = true,
		close = false,
		description = "5/6 for Rainbow Badge",
		client = {
			image = "bellsprout.png",
		}
	},

	["sapphire"] = {
		label = "Sapphire",
		weight = 100,
		stack = true,
		close = false,
		description = "A Sapphire that shimmers",
		client = {
			image = "sapphire.png",
		}
	},

	["burger_bleeder"] = {
		label = "Suur Burger",
		weight = 250,
		stack = true,
		close = true,
		description = "Sates Hunger.",
		client = {
			image = "bs_the-bleeder.png",
		}
	},

	["pancake"] = {
		label = "PawCake",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 40,
			},
			image = "pawcakes.png",
		}
	},

	["marshbadge"] = {
		label = "MarshBadge",
		weight = 0,
		stack = true,
		close = false,
		description = "6/8 for Trophy Badge",
		client = {
			image = "marshBadge.png",
		}
	},

	["flusher"] = {
		label = "The Flusher",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 25,
			},
			image = "flusher.png",
		}
	},

	["tosti"] = {
		label = "Grilljuustu sai",
		weight = 200,
		stack = true,
		close = true,
		description = "Nice to eat",
		client = {
			image = "tosti.png",
		}
	},

	["bluechip"] = {
		label = "Oxy Chip",
		weight = 0,
		stack = true,
		close = false,
		description = "Diamond Casino Roulette Chip",
		client = {
			image = "laptop-green.png",
		}
	},

	["huntingcarcass1"] = {
		label = "Level 1 carcass",
		weight = 100,
		stack = true,
		close = true,
		description = "A sellable resource to a certified hunter",
		client = {
			image = "huntingcarcass1.png",
		}
	},

	["hydrochloric_acid"] = {
		label = "Hydrochloric Acid",
		weight = 1500,
		stack = true,
		close = true,
		description = "Chemicals, handle with care!",
		client = {
			image = "hydrochloric_acid.png",
		}
	},

	["emerald_earring_silver"] = {
		label = "Emerald Earrings Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "emerald_earring_silver.png",
		}
	},

	["chair98"] = {
		label = "Red/Green Gamer Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair98.png",
		}
	},

	["grilledwrap"] = {
		label = "Grilled Wrap",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 22,
			},
			image = "grilledwrap.png",
		}
	},

	["sandshrew"] = {
		label = "Sandshrew",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sandshrew.png",
		}
	},

	["housewhite"] = {
		label = "House White Wine",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 25,
			},
			image = "housewhite.png",
		}
	},

	["meowth"] = {
		label = "Meowth",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "meowth.png",
		}
	},

	["painkillers"] = {
		label = "Valuvaigistid",
		weight = 0,
		stack = true,
		close = true,
		description = "For pain you can't stand anymore, take this pill that'd make you feel great again",
		client = {
			image = "painkillers.png",
		}
	},

	["blastoise"] = {
		label = "Blastoise",
		weight = 0,
		stack = true,
		close = false,
		description = "1/6 for Cascade Badge - Ultra Rare",
		client = {
			image = "blastoise.png",
		}
	},

	["tequila"] = {
		label = "Tequila",
		weight = 200,
		stack = true,
		close = true,
		description = "Tequila",
		client = {
			status = {
				thirst = 43,
			},
			image = "tequila.png",
		}
	},

	["pasta"] = {
		label = "Bag of Pasta",
		weight = 200,
		stack = true,
		close = false,
		description = "A bag of Pasta",
		client = {
			status = {
				hunger = 46,
			},
			image = "pasta.png",
		}
	},

	["var_usb1"] = {
		label = "Master Key (25%)",
		weight = 1000,
		stack = false,
		close = true,
		description = "Combine multiple USBs to create a master encryption key.",
		client = {
			image = "var_usb.png",
		}
	},

	["gallary_starry_night"] = {
		label = "Sstarry Night Art",
		weight = 0,
		stack = true,
		close = true,
		description = "Just a lawyer badge?",
		client = {
			image = "gallary_starry_night.png",
		}
	},

	["alakazam"] = {
		label = "Alakazam",
		weight = 0,
		stack = true,
		close = false,
		description = "1/6 for Marsh Badge",
		client = {
			image = "alakazam.png",
		}
	},

	["chair81"] = {
		label = "Blue Deco Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair81.png",
		}
	},

	["casino_bluechip"] = {
		label = "Casino Chip",
		weight = 0,
		stack = true,
		close = false,
		description = "Diamond Casino Roulette Chip",
		client = {
			image = "casino_bluechip.png",
		}
	},

	["hamsandwich"] = {
		label = "Ham Sandwich",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 26,
			},
			image = "hamsandwich.png",
		}
	},

	["blackbandana"] = {
		label = "Blackbandana",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "Clothing_1_51.png",
		}
	},

	["magikarp"] = {
		label = "Magikarp",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "magikarp.png",
		}
	},

	["chair58"] = {
		label = "Zebra Print Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair58.png",
		}
	},

	["gallary_maneki_neko"] = {
		label = "Maneki Neko",
		weight = 0,
		stack = true,
		close = true,
		description = "Just a lawyer badge?",
		client = {
			image = "gallary_maneki_neko.png",
		}
	},

	["bean-cappuccino"] = {
		label = "Cappuccino",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "latte.png",
		}
	},

	["sharkhammer"] = {
		label = "Haikala",
		weight = 5000,
		stack = false,
		close = false,
		description = "Hammerhead Shark",
		client = {
			image = "sharkhammer.png",
		}
	},

	["standard_cpu"] = {
		label = "Standard Cpu",
		weight = 1000,
		stack = true,
		close = true,
		description = "Sometimes you'd want everything to burn..",
		client = {
			image = "standard_cpu.png",
		}
	},

	["housered"] = {
		label = "House Red Wine",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 20,
			},
			image = "housered.png",
		}
	},

	["snowball"] = {
		label = "Snowball",
		weight = 0,
		stack = true,
		close = true,
		description = "Should have catched it :D",
		client = {
			image = "snowball.png",
		}
	},

	["uncut_emerald"] = {
		label = "Uncut Emerald",
		weight = 100,
		stack = true,
		close = false,
		description = "A rough Emerald",
		client = {
			image = "uncut_emerald.png",
		}
	},

	["brokengameboy"] = {
		label = "Broken Gameboy",
		weight = 200,
		stack = true,
		close = false,
		description = "A Broken Gameboy",
		client = {
			image = "brokengameboy.png",
		}
	},

	["empty_evidence_bag"] = {
		label = "Empty Evidence Bag",
		weight = 0,
		stack = true,
		close = false,
		description = "Used a lot to keep DNA from blood, bullet shells and more",
		client = {
			image = "evidence_empty.png",
		}
	},

	["chair90"] = {
		label = "White Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair90.png",
		}
	},

	["keepcompanionretriever"] = {
		label = "Retriever",
		weight = 500,
		stack = false,
		close = true,
		description = "Retriever is your royal companion!",
		client = {
			image = "A_C_Retriever.png",
		}
	},

	["soybeans"] = {
		label = "Soy Beans",
		weight = 10,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "soybeans.png",
		}
	},

	["marijuana_baggies"] = {
		label = "Baggies",
		weight = 0,
		stack = true,
		close = true,
		description = "Need some baggies? i got some baggies",
		client = {
			image = "marijuana_baggies.png",
		}
	},

	["recyclablematerial"] = {
		label = "Recycle Box",
		weight = 100,
		stack = true,
		close = false,
		description = "A box of Recyclable Materials",
		client = {
			image = "recyclablematerial.png",
		}
	},

	["emerald_ring_silver"] = {
		label = "Emerald Ring Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "emerald_ring_silver.png",
		}
	},

	["chair22"] = {
		label = "Posh Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair22.png",
		}
	},

	["dratini"] = {
		label = "Dratini",
		weight = 0,
		stack = true,
		close = false,
		description = "Ultra Rare",
		client = {
			image = "dratini.png",
		}
	},

	["sausageeggs"] = {
		label = "Sausage and Eggs",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 25,
			},
			image = "sausageeggs.png",
		}
	},

	["emp_bucket"] = {
		label = "Bucket",
		weight = 70,
		stack = true,
		close = true,
		description = "A Empty Bucket.",
		client = {
			image = "emp_bucket.png",
		}
	},

	["tentacruel"] = {
		label = "Tentacruel",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tentacruel.png",
		}
	},

	["magicitem6"] = {
		label = "[STRESS] Potion of Uncomfort",
		weight = 0,
		stack = true,
		close = true,
		description = "Magic Item",
		client = {
			image = "MagicPotionYellow.png",
		}
	},

	["cg_chain"] = {
		label = "Chang Gang Chain",
		weight = 50,
		stack = true,
		close = false,
		description = "CHANG GANG Chain",
		client = {
			image = "np_cg_chain.png",
		}
	},

	["slaughteredchicken"] = {
		label = "slaughteredchicken",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "slaughteredchicken.png",
		}
	},

	["chair32"] = {
		label = "Luxury Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair32.png",
		}
	},

	["laptop_4"] = {
		label = "MemberShip 4",
		weight = 0,
		stack = true,
		close = true,
		description = "Magic Item",
		client = {
			image = "laptop_gold.png",
		}
	},

	["medfruits"] = {
		label = "Fresh Fruit Medly",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 30,
			},
			image = "medfruits.png",
		}
	},

	["coke"] = {
		label = "coke",
		weight = 0,
		stack = true,
		close = true,
		description = "food",
		client = {
			image = "coke.png",
		}
	},

	["roshomalai"] = {
		label = "roshomalai",
		weight = 0,
		stack = true,
		close = true,
		description = "food",
		client = {
			image = "roshomalai.png",
		}
	},

	["magicitem14"] = {
		label = "[BRING] Summon",
		weight = 0,
		stack = true,
		close = true,
		description = "Magic Item",
		client = {
			image = "MagicBookYellow.png",
		}
	},

	["burriedtreasure"] = {
		label = "Burried treasure",
		weight = 200,
		stack = true,
		close = false,
		description = "Burried Treasure, woah",
		client = {
			image = "burriedtreasure.png",
		}
	},

	["chair27"] = {
		label = "Black Leather Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair27.png",
		}
	},

	["pikachuv"] = {
		label = "Pikachu V",
		weight = 0,
		stack = true,
		close = false,
		description = "V Card",
		client = {
			image = "pikachuv.png",
		}
	},

	["goldeen"] = {
		label = "Goldeen",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "goldeen.png",
		}
	},

	["dusche"] = {
		label = "Dusche Gold",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 44,
			},
			image = "dusche.png",
		}
	},

	["peach"] = {
		label = "Peach",
		weight = 200,
		stack = true,
		close = true,
		description = "A peach",
		client = {
			status = {
				hunger = 50,
			},
			image = "peach.png",
		}
	},

	["chair83"] = {
		label = "Orange Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair83.png",
		}
	},

	["green_usb"] = {
		label = "Green USB",
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to shut down some systems",
		client = {
			image = "green_usb.png",
		}
	},

	["chair11"] = {
		label = "Black Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair11.png",
		}
	},

	["marijuana_crop_mid"] = {
		label = "Harvested Crop",
		weight = 5500,
		stack = true,
		close = false,
		description = "mid grade harvested marijuana crop",
		client = {
			image = "marijuana_crop.png",
		}
	},

	["flower"] = {
		label = "Rose Flower",
		weight = 25,
		stack = true,
		close = true,
		description = "A Rose Flower.",
		client = {
			image = "flower.png",
		}
	},

	["marijuana_crop_low"] = {
		label = "Harvested Crop",
		weight = 5500,
		stack = true,
		close = false,
		description = "low grade harvested marijuana crop",
		client = {
			image = "marijuana_crop.png",
		}
	},

	["slowpoke"] = {
		label = "Slowpoke",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "slowpoke.png",
		}
	},

	["chair15"] = {
		label = "Old Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair15.png",
		}
	},

	["deer_meat"] = {
		label = "Deer Meat",
		weight = 1000,
		stack = true,
		close = true,
		description = "Boom boom we have meat to night",
		client = {
			image = "deer_meat.png",
		}
	},

	["gallary_greek_bust"] = {
		label = "Greek Bust",
		weight = 0,
		stack = true,
		close = true,
		description = "Just a lawyer badge?",
		client = {
			image = "gallary_greek_bust.png",
		}
	},

	["iphone"] = {
		label = "iPhone",
		weight = 1000,
		stack = true,
		close = true,
		description = "Very expensive phone",
		client = {
			image = "iphone.png",
		}
	},

	["moneybag"] = {
		label = "Money Bag",
		weight = 0,
		stack = false,
		close = true,
		description = "A bag with cash",
		client = {
			image = "moneybag.png",
		}
	},

	["chair100"] = {
		label = "Blue Metal Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair100.png",
		}
	},

	["tauros"] = {
		label = "Tauros",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tauros.png",
		}
	},

	["prosciuttio"] = {
		label = "Prosciuttio E Funghi",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 23,
			},
			image = "proscuttio.png",
		}
	},

	["surgerypass"] = {
		label = "Surgery Pass",
		weight = 100,
		stack = false,
		close = false,
		description = "surgerypass",
		client = {
			image = "surgerypass.png",
		}
	},

	["diamond_necklace"] = {
		label = "Diamond Necklace",
		weight = 200,
		stack = true,
		close = false,
		description = "A diamond necklace seems like the jackpot to me!",
		client = {
			image = "diamond_necklace.png",
		}
	},

	["cooked_ham"] = {
		label = "Cooked Ham",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cooked_ham.png",
		}
	},

	["chair77"] = {
		label = "Yellow Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair77.png",
		}
	},

	["caraudiosystem"] = {
		label = "Car Audio System",
		weight = 5500,
		stack = true,
		close = true,
		description = "Hm.. lets do some fun in the car..",
		client = {
			image = "caraudiosystem.png",
		}
	},

	["tape"] = {
		label = "Tape",
		weight = 500,
		stack = true,
		close = true,
		description = "edit here",
		client = {
			image = "tape.png",
		}
	},

	["keepcompanionrottweiler"] = {
		label = "Rottweiler",
		weight = 500,
		stack = false,
		close = true,
		description = "Rottweiler is your royal companion!",
		client = {
			image = "A_Rottweiler.png",
		}
	},

	["milk_pack"] = {
		label = "Milk Pack",
		weight = 500,
		stack = true,
		close = true,
		description = "Milk pack",
		client = {
			image = "milk_pack.png",
		}
	},

	["grapes"] = {
		label = "Grapes",
		weight = 15,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "grapes.png",
		}
	},

	["blueberry"] = {
		label = "Blueberry",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 48,
			},
			image = "blueberry.png",
		}
	},

	["syringe"] = {
		label = "Syringe",
		weight = 500,
		stack = true,
		close = true,
		description = "edit here",
		client = {
			image = "syringe.png",
		}
	},

	["aluminumcan"] = {
		label = "Aluminium Can",
		weight = 200,
		stack = true,
		close = false,
		description = "Alumunim Cans",
		client = {
			image = "aluminiumcan.png",
		}
	},

	["prosecco"] = {
		label = "Prosecco",
		weight = 200,
		stack = true,
		close = true,
		description = "Prosecco",
		client = {
			status = {
				thirst = 44,
			},
			image = "prosecco.png",
		}
	},

	["chair12"] = {
		label = "Used Brown Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair12.png",
		}
	},

	["casino_member"] = {
		label = "Casino Membership",
		weight = 500,
		stack = false,
		close = false,
		description = "Diamond Casino Member Card",
		client = {
			image = "casino_member.png",
		}
	},

	["hunting_knife"] = {
		label = "Hunting Knife",
		weight = 1000,
		stack = true,
		close = true,
		description = "Hunt for some meat",
		client = {
			image = "huntingknife.png",
		}
	},

	["chair107"] = {
		label = "Red Deco Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair107.png",
		}
	},

	["corncob"] = {
		label = "Corn Cob",
		weight = 15,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "corncob.png",
		}
	},

	["sulfuric_acid"] = {
		label = "Sulfuric Acid",
		weight = 1500,
		stack = true,
		close = false,
		description = "Chemicals, handle with care!",
		client = {
			image = "sulfuric_acid.png",
		}
	},

	["pizza"] = {
		label = "Kitty Pizza",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 48,
			},
			image = "catpizza.png",
		}
	},

	["empty_bag"] = {
		label = "Empty Bag",
		weight = 500,
		stack = true,
		close = true,
		description = "A empty bag",
		client = {
			image = "weed_baggy_empty.png",
		}
	},

	["antipatharia_coral"] = {
		label = "Antipatharia",
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as black corals or thorn corals",
		client = {
			image = "antipatharia_coral.png",
		}
	},

	["cooked_sausage"] = {
		label = "Cooked Sausage",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cooked_sausage.png",
		}
	},

	["emsbag"] = {
		label = "emsbag",
		weight = 150,
		stack = true,
		close = true,
		description = "EMS Bag",
		client = {
			image = "emsbag.png",
		}
	},

	["olives"] = {
		label = "Olives",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "olives.png",
		}
	},

	["meth_pooch"] = {
		label = "Meth Package",
		weight = 1000,
		stack = true,
		close = false,
		description = "Can be sold.",
		client = {
			image = "meth_packaged.png",
		}
	},

	["cappucc"] = {
		label = "Cappuccinotini",
		weight = 200,
		stack = true,
		close = true,
		description = "Cappuccinotini Cocktail",
		client = {
			status = {
				thirst = 24,
			},
			image = "cappucc.png",
		}
	},

	["chair69"] = {
		label = "Dark Material Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair69.png",
		}
	},

	["flareon"] = {
		label = "Flareon",
		weight = 0,
		stack = true,
		close = false,
		description = "Rare",
		client = {
			image = "flareon.png",
		}
	},

	["mixednails"] = {
		label = "Mixed Nails",
		weight = 100,
		stack = true,
		close = true,
		description = "Mixed Nails",
		client = {
			image = "blacknails.png",
		}
	},

	["trojan_usb"] = {
		label = "Trojan USB",
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to shut down some systems",
		client = {
			image = "usb_device.png",
		}
	},

	["chair50"] = {
		label = "Plastic Lawn Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair50.png",
		}
	},

	["newscam"] = {
		label = "News Camera",
		weight = 100,
		stack = false,
		close = true,
		description = "A camera for the news",
		client = {
			image = "newscam.png",
		}
	},

	["hotsauce"] = {
		label = "Hot Sauce",
		weight = 15,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "hotsauce.png",
		}
	},

	["highnoon"] = {
		label = "Highnoon",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 28,
			},
			image = "highnoon.png",
		}
	},

	["popdonut"] = {
		label = "Donut",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 24,
			},
			image = "popdonut.png",
		}
	},

	["roof"] = {
		label = "Vehicle Roof",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "roof.png",
		}
	},

	["bigfruit"] = {
		label = "The Big Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 21,
			},
			image = "bigfruit.png",
		}
	},

	["helm8"] = {
		label = "Black Army helmet",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "helmet_89.png",
		}
	},

	["morog_polao"] = {
		label = "morog polao",
		weight = 0,
		stack = true,
		close = true,
		description = "food",
		client = {
			image = "morog_polao.png",
		}
	},

	["handcuffs"] = {
		label = "Handcuffs",
		weight = 100,
		stack = true,
		close = true,
		description = "Comes in handy when people misbehave. Maybe it can be used for something else?",
		client = {
			image = "handcuffs.png",
		}
	},

	["screwdriver"] = {
		label = "Screwdriver",
		weight = 200,
		stack = true,
		close = true,
		description = "Screwdriver",
		client = {
			status = {
				thirst = 44,
			},
			image = "screwdriver.png",
		}
	},

	["bean-latte"] = {
		label = "Latte",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "latte.png",
		}
	},

	["ekans"] = {
		label = "Ekans",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ekans.png",
		}
	},

	["casino_whitechip"] = {
		label = "Casino Chip",
		weight = 0,
		stack = true,
		close = false,
		description = "Diamond Casino Slot Machine Chip",
		client = {
			image = "casino_whitechip.png",
		}
	},

	["chair103"] = {
		label = "Green Metal Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair103.png",
		}
	},

	["box"] = {
		label = "Box",
		weight = 100,
		stack = true,
		close = true,
		description = "box",
		client = {
			image = "box.png",
		}
	},

	["pixellaptop"] = {
		label = "Car Boosting",
		weight = 2000,
		stack = false,
		close = true,
		description = "Looks pretty expensive",
		client = {
			image = "pixellaptop.png",
		}
	},

	["articuno"] = {
		label = "Articuno",
		weight = 0,
		stack = true,
		close = false,
		description = "Ultra Rare",
		client = {
			image = "articuno.png",
		}
	},

	["sapphire_necklace"] = {
		label = "Sapphire Necklace",
		weight = 200,
		stack = true,
		close = false,
		description = "A sapphire necklace seems like the jackpot to me!",
		client = {
			image = "sapphire_necklace.png",
		}
	},

	["chair87"] = {
		label = "White Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair87.png",
		}
	},

	["acetone"] = {
		label = "Acetone",
		weight = 5000,
		stack = true,
		close = false,
		description = "Stuff to cook!",
		client = {
			image = "acetone.png",
		}
	},

	["ccookie"] = {
		label = "Cranberry Cookie",
		weight = 200,
		stack = true,
		close = true,
		description = "Cranberry Cookie Cocktail",
		client = {
			status = {
				thirst = 22,
			},
			image = "ccookie.png",
		}
	},

	["rosso"] = {
		label = "Rosso Del Montalcino",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 24,
			},
			image = "rosso.png",
		}
	},

	["muk"] = {
		label = "Muk",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "muk.png",
		}
	},

	["vegetariana"] = {
		label = "Vegetariana",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 21,
			},
			image = "vegetariana.png",
		}
	},

	["gunkaccino"] = {
		label = "The Gunkaccino",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 26,
			},
			image = "gunkaccino.png",
		}
	},

	["jimsausages"] = {
		label = "Vorstid",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 24,
			},
			image = "jimsausages.png",
		}
	},

	["terror"] = {
		label = "Balaclava",
		weight = 1,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "Clothing_1_57.png",
		}
	},

	["spoiler"] = {
		label = "Vehicle Spoiler",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "spoiler.png",
		}
	},

	["keepcompanionwesty"] = {
		label = "Westy",
		weight = 500,
		stack = false,
		close = true,
		description = "Westy is your royal companion!",
		client = {
			image = "A_C_Westy.png",
		}
	},

	["tofu"] = {
		label = "Tofu",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 49,
			},
			image = "tofu.png",
		}
	},

	["chair68"] = {
		label = "White Metal Dining Chair 2",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair68.png",
		}
	},

	["casino_redchip"] = {
		label = "Casino Chip",
		weight = 0,
		stack = true,
		close = false,
		description = "Diamond Casino Inside Track Chip",
		client = {
			image = "casino_redchip.png",
		}
	},

	["gift_box"] = {
		label = "Gift Box",
		weight = 1000,
		stack = false,
		close = true,
		description = "Welcome To Los Santos",
		client = {
			image = "gift_box.png",
		}
	},

	["rims"] = {
		label = "Custom Wheel Rims",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "rims.png",
		}
	},

	["coke_brick"] = {
		label = "Coke Brick",
		weight = 1000,
		stack = false,
		close = true,
		description = "Heavy package of cocaine, mostly used for deals and takes a lot of space",
		client = {
			image = "coke_brick.png",
		}
	},

	["tomatopaste"] = {
		label = "tomato Paste",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tomatopaste.png",
		}
	},

	["burger_toy1"] = {
		label = "Action Figure",
		weight = 50,
		stack = false,
		close = false,
		description = "An Action Figure From the late 90",
		client = {
			image = "action_figure.png",
		}
	},

	["petgroomingkit"] = {
		label = "Pet Grooming Kit",
		weight = 1000,
		stack = false,
		close = true,
		description = "Pet Grooming Kit",
		client = {
			image = "petgroomingkit.png",
		}
	},

	["charizardv"] = {
		label = "Charizard V",
		weight = 0,
		stack = true,
		close = false,
		description = "V Card",
		client = {
			image = "charizardv.png",
		}
	},

	["dragonite"] = {
		label = "Dragonite",
		weight = 0,
		stack = true,
		close = false,
		description = "Ultra Rare",
		client = {
			image = "dragonite.png",
		}
	},

	["rice"] = {
		label = "Bowl of Rice",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 44,
			},
			image = "rice.png",
		}
	},

	["trophybadge"] = {
		label = "Trophy Badge",
		weight = 0,
		stack = true,
		close = false,
		description = "OwO You have a Trophy",
		client = {
			image = "trophyBadge.png",
		}
	},

	["trimming_scissors"] = {
		label = "Trimming Scissors",
		weight = 1500,
		stack = true,
		close = false,
		description = "Very Sharp Trimming Scissors",
		client = {
			image = "trimming_scissors.png",
		}
	},

	["diamond_ring"] = {
		label = "Diamond Ring",
		weight = 200,
		stack = true,
		close = false,
		description = "A diamond ring seems like the jackpot to me!",
		client = {
			image = "diamond_ring.png",
		}
	},

	["emerald_earring"] = {
		label = "Emerald Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "emerald_earring.png",
		}
	},

	["dolceto"] = {
		label = "Dolcetto D'Alba",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 26,
			},
			image = "dolceto.png",
		}
	},

	["amarone"] = {
		label = "Amarone",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 28,
			},
			image = "amarone.png",
		}
	},

	["pig_leather"] = {
		label = "Pig Skin",
		weight = 50,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pig_leather.png",
		}
	},

	["jigglypuff"] = {
		label = "Jigglypuff",
		weight = 0,
		stack = true,
		close = false,
		description = "Rare",
		client = {
			image = "jigglypuff.png",
		}
	},

	["tshirtmask"] = {
		label = "Tshirtmask",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "Clothing_1_54.png",
		}
	},

	["weed_white-widow_seed"] = {
		label = "White Widow Seed",
		weight = 0,
		stack = true,
		close = false,
		description = "A weed seed of White Widow",
		client = {
			image = "weed_seed.png",
		}
	},

	["feest"] = {
		label = "PartyMask",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "Clothing_1_6.png",
		}
	},

	["krabby"] = {
		label = "Krabby",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "krabby.png",
		}
	},

	["marinarabox"] = {
		label = "Boxed Marinara",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pizzabox.png",
		}
	},

	["dendrogyra_coral"] = {
		label = "Dendrogyra",
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as pillar coral",
		client = {
			image = "dendrogyra_coral.png",
		}
	},

	["pig_meat"] = {
		label = "Pig Meat",
		weight = 1000,
		stack = true,
		close = true,
		description = "Boom boom we have meat to night",
		client = {
			image = "deer_meat.png",
		}
	},

	["zirapani"] = {
		label = "zirapani",
		weight = 0,
		stack = true,
		close = true,
		description = "food",
		client = {
			image = "zirapani.png",
		}
	},

	["poppyresin"] = {
		label = "Poppy resin",
		weight = 2000,
		stack = true,
		close = false,
		description = "It sticks to your fingers when you handle it.",
		client = {
			image = "poppyresin.png",
		}
	},

	["magnemite"] = {
		label = "Magnemite",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "magnemite.png",
		}
	},

	["noodles"] = {
		label = "Instant Noodles",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "noodles.png",
		}
	},

	["paintcan"] = {
		label = "Vehicle Spray Can",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "spraycan.png",
		}
	},

	["fitbit"] = {
		label = "Fitbit",
		weight = 500,
		stack = false,
		close = true,
		description = "I like fitbit",
		client = {
			image = "fitbit.png",
		}
	},

	["kingler"] = {
		label = "Kingler",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "kingler.png",
		}
	},

	["magicitem13"] = {
		label = "[KILL] Toll of the Dead",
		weight = 0,
		stack = true,
		close = true,
		description = "Magic Item",
		client = {
			image = "MagicBookRed.png",
		}
	},

	["tires"] = {
		label = "Drift Smoke Tires",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "tires.png",
		}
	},

	["weezing"] = {
		label = "Weezing",
		weight = 0,
		stack = true,
		close = false,
		description = "2/6 for Soul Badge",
		client = {
			image = "weezing.png",
		}
	},

	["omanyte"] = {
		label = "Omanyte",
		weight = 0,
		stack = true,
		close = false,
		description = "Ultra Rare",
		client = {
			image = "omanyte.png",
		}
	},

	["sapphire_earring"] = {
		label = "Sapphire Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sapphire_earring.png",
		}
	},

	["cubone"] = {
		label = "Cubone",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "cubone.png",
		}
	},

	["margherita"] = {
		label = "Margherita",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 27,
			},
			image = "margherita.png",
		}
	},

	["basil"] = {
		label = "Basil",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "basil.png",
		}
	},

	["rainbowmewtwogx"] = {
		label = "Rainbow Mewtwo",
		weight = 0,
		stack = true,
		close = false,
		description = "Rainbow Card",
		client = {
			image = "rainbowmewtwogx.png",
		}
	},

	["burger_heartstopper"] = {
		label = "Mega Burger",
		weight = 2500,
		stack = true,
		close = true,
		description = "Sates Hunger.",
		client = {
			image = "bs_the-heart-stopper.png",
		}
	},

	["meat"] = {
		label = "Meat",
		weight = 100,
		stack = true,
		close = true,
		description = "A sellable resource to a certified hunter",
		client = {
			image = "meat.png",
		}
	},

	["gym_membership"] = {
		label = "Gym Membership",
		weight = 0,
		stack = false,
		close = true,
		description = "Gym Membership for Pump and Run (For 1 Day)",
		client = {
			image = "gym_membership.png",
		}
	},

	["seat"] = {
		label = "Seat Cosmetics",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "seat.png",
		}
	},

	["goldpan"] = {
		label = "Gold Panning Tray",
		weight = 10,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "goldpan.png",
		}
	},

	["metalwire"] = {
		label = "Metal Trash",
		weight = 200,
		stack = true,
		close = false,
		description = "Trashed Wires",
		client = {
			image = "metalwire.png",
		}
	},

	["hitmonlee"] = {
		label = "Hitmonlee",
		weight = 0,
		stack = true,
		close = false,
		description = "Rare",
		client = {
			image = "hitmonlee.png",
		}
	},

	["chair37"] = {
		label = "Dark Brown Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair37.png",
		}
	},

	["golduck"] = {
		label = "Golduck",
		weight = 0,
		stack = true,
		close = false,
		description = "5/6 for Cascade Badge",
		client = {
			image = "golduck.png",
		}
	},

	["tablet"] = {
		label = "Tahvel",
		weight = 2000,
		stack = false,
		close = true,
		description = "Expensive tablet",
		client = {
			image = "tablet.png",
		}
	},

	["hacking-laptop"] = {
		label = "Bank Laptop",
		weight = 80,
		stack = false,
		close = true,
		description = "Package",
		client = {
			image = "laptop.png",
		}
	},

	["abra"] = {
		label = "Abra",
		weight = 0,
		stack = true,
		close = false,
		description = "3/6 for Marsh Badge",
		client = {
			image = "abra.png",
		}
	},

	["security_card_05"] = {
		label = "Turva kaart E",
		weight = 0,
		stack = true,
		close = true,
		description = "A Turva kaart... I wonder what it goes to",
		client = {
			image = "security_card_05.png",
		}
	},

	["djstand"] = {
		label = "DJ Stand",
		weight = 5000,
		stack = false,
		close = true,
		description = "Lets FUCKING GO!",
		client = {
			image = "djstand.png",
		}
	},

	["roodc"] = {
		label = "Red Chinese Mask",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "Clothing_1_94.png",
		}
	},

	["underglow_controller"] = {
		label = "Neon Controller",
		weight = 0,
		stack = true,
		close = true,
		description = "RGB LED Vehicle Remote",
		client = {
			image = "underglow_controller.png",
		}
	},

	["electrode"] = {
		label = "Electrode",
		weight = 0,
		stack = true,
		close = false,
		description = "5/6 for Thunder Badge",
		client = {
			image = "electrode.png",
		}
	},

	["b52"] = {
		label = "B-52",
		weight = 200,
		stack = true,
		close = true,
		description = "B-52 Cocktail",
		client = {
			status = {
				thirst = 30,
			},
			image = "b52.png",
		}
	},

	["seadra"] = {
		label = "Seadra",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "seadra.png",
		}
	},

	["emerald"] = {
		label = "Emerald",
		weight = 100,
		stack = true,
		close = false,
		description = "A Emerald that shimmers",
		client = {
			image = "emerald.png",
		}
	},

	["mewtwogx"] = {
		label = "Mewtwo Vmax",
		weight = 0,
		stack = true,
		close = false,
		description = "Vmax Card",
		client = {
			image = "mewtwogx.png",
		}
	},

	["magicitem7"] = {
		label = "[TP] Teleportation",
		weight = 0,
		stack = true,
		close = true,
		description = "Magic Item",
		client = {
			image = "MagicBookBlue.png",
		}
	},

	["chair39"] = {
		label = "Striped Wicker Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair39.png",
		}
	},

	["weepinbell"] = {
		label = "Weepinbell",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "weepinbell.png",
		}
	},

	["chair44"] = {
		label = "Old Posh Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair44.png",
		}
	},

	["speedball"] = {
		label = "The SpeedBall",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 26,
			},
			image = "speedball.png",
		}
	},

	["hqscale"] = {
		label = "High Quality Scales",
		weight = 1000,
		stack = true,
		close = true,
		description = "high quality scales.",
		client = {
			image = "np_high-quality-scales.png",
		}
	},

	["margheritabox"] = {
		label = "Boxed Margherita",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pizzabox.png",
		}
	},

	["calamari"] = {
		label = "Calamari Marinara",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 30,
			},
			image = "calamari.png",
		}
	},

	["citrine_ring"] = {
		label = "Citrine Ring",
		weight = 0,
		stack = true,
		close = true,
		description = "citrine ring",
		client = {
			image = "np_gallery_citrine-ring.png",
		}
	},

	["silverearring"] = {
		label = "Silver Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "silver_earring.png",
		}
	},

	["croasant-ovo"] = {
		label = "Egg Croisant",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "croasant.png",
		}
	},

	["nos"] = {
		label = "NOS Bottle",
		weight = 0,
		stack = false,
		close = true,
		description = "A full bottle of NOS",
		client = {
			image = "nos.png",
		}
	},

	["goldbar"] = {
		label = "Kullakang",
		weight = 700,
		stack = true,
		close = true,
		description = "Looks pretty expensive to me",
		client = {
			image = "goldbar.png",
		}
	},

	["uncut_diamond"] = {
		label = "Uncut Diamond",
		weight = 100,
		stack = true,
		close = false,
		description = "A rough Diamond",
		client = {
			image = "uncut_diamond.png",
		}
	},

	["ironoxide"] = {
		label = "Iron Powder",
		weight = 0,
		stack = true,
		close = false,
		description = "Some powder to mix with.",
		client = {
			image = "ironoxide.png",
		}
	},

	["riceball"] = {
		label = "Neko Onigiri",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 41,
			},
			image = "catrice.png",
		}
	},

	["mechanic_tools"] = {
		label = "Mehaaniku kast",
		weight = 0,
		stack = false,
		close = true,
		description = "Needed for vehicle repairs",
		client = {
			image = "mechanic_tools.png",
		}
	},

	["magicitem8"] = {
		label = "[SPARE] Book Cyan",
		weight = 0,
		stack = true,
		close = true,
		description = "Magic Item",
		client = {
			image = "MagicBookCyan.png",
		}
	},

	["cheeseburger"] = {
		label = "Cheese Burger",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 26,
			},
			image = "cheeseburger.png",
		}
	},

	["thermite"] = {
		label = "Thermiit",
		weight = 1000,
		stack = true,
		close = true,
		description = "Sometimes you'd wish for everything to burn",
		client = {
			image = "thermite.png",
		}
	},

	["fuchka"] = {
		label = "fuchka",
		weight = 0,
		stack = true,
		close = true,
		description = "food",
		client = {
			image = "fuchka.png",
		}
	},

	["laptop_3"] = {
		label = "MemberShip 3",
		weight = 0,
		stack = true,
		close = true,
		description = "Magic Item",
		client = {
			image = "laptop_gold.png",
		}
	},

	["chair31"] = {
		label = "Black Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair31.png",
		}
	},

	["voodoo"] = {
		label = "Voodoo",
		weight = 200,
		stack = true,
		close = true,
		description = "Voodoo Cocktail",
		client = {
			status = {
				thirst = 29,
			},
			image = "voodoo.png",
		}
	},

	["juicebottle"] = {
		label = "Bottle",
		weight = 100,
		stack = true,
		close = true,
		description = "Smoke is the life!",
		client = {
			image = "juicebottle.png",
		}
	},

	["transmission3"] = {
		label = "Transmission Lvl 3",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "transmission3.png",
		}
	},

	["ivysaur"] = {
		label = "Ivysaur",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ivysaur.png",
		}
	},

	["rhydon"] = {
		label = "Rhydon",
		weight = 0,
		stack = true,
		close = false,
		description = "1/6 for Earth Badge",
		client = {
			image = "rhydon.png",
		}
	},

	["lsa"] = {
		label = "LSA",
		weight = 500,
		stack = true,
		close = false,
		description = "Almost ready to party...",
		client = {
			image = "lsa.png",
		}
	},

	["mechboard"] = {
		label = "Mechanic Sheet",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "mechboard.png",
		}
	},

	["watermelon"] = {
		label = "WaterMelon Slice",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 21,
				thirst = 26,
			},
			image = "watermelon.png",
		}
	},

	["strawmargarita"] = {
		label = "Strawberry Margarita",
		weight = 200,
		stack = true,
		close = true,
		description = "Starberry Margarita",
		client = {
			status = {
				thirst = 50,
			},
			image = "strawmargarita.png",
		}
	},

	["canofcorn"] = {
		label = "Can Of Corn",
		weight = 15,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "canofcorn.png",
		}
	},

	["chair106"] = {
		label = "Purple Deco Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair106.png",
		}
	},

	["chair38"] = {
		label = "Ol Rocking Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair38.png",
		}
	},

	["advancedlockpick"] = {
		label = "Tugev Muukvara",
		weight = 500,
		stack = true,
		close = true,
		description = "If you lose your keys a lot this is very useful... Also useful to open your beers",
		client = {
			image = "advancedlockpick.png",
		}
	},

	["magicitem1"] = {
		label = "[SPEED] Potion of Speed",
		weight = 0,
		stack = true,
		close = true,
		description = "Magic Item",
		client = {
			image = "MagicPotionBlue.png",
		}
	},

	["chair79"] = {
		label = "Black Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair79.png",
		}
	},

	["livery"] = {
		label = "Livery Roll",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "livery.png",
		}
	},

	["earthbadge"] = {
		label = "Earth Badge",
		weight = 0,
		stack = true,
		close = false,
		description = "8/8 for Trophy Badge",
		client = {
			image = "earthBadge.png",
		}
	},

	["lapras"] = {
		label = "Lapras",
		weight = 0,
		stack = true,
		close = false,
		description = "4/6 for Cascade Badge - Rare",
		client = {
			image = "lapras.png",
		}
	},

	["mrmime"] = {
		label = "Mr_mime",
		weight = 0,
		stack = true,
		close = false,
		description = "2/6 for Marsh Badge",
		client = {
			image = "mrmime.png",
		}
	},

	["boarcarcass2"] = {
		label = "Level 2 boar",
		weight = 115,
		stack = true,
		close = true,
		description = "A sellable resource to an uncertified hunter",
		client = {
			image = "huntingcarcass2.png",
		}
	},

	["wartortle"] = {
		label = "Wartortle",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "wartortle.png",
		}
	},

	["diving_gear"] = {
		label = "Diving Gear",
		weight = 30000,
		stack = false,
		close = true,
		description = "An oxygen tank and a rebreather",
		client = {
			image = "diving_gear.png",
		}
	},

	["big_drill"] = {
		label = "Suur puur",
		weight = 200,
		stack = true,
		close = false,
		description = "The real deal...",
		client = {
			image = "big_drill.png",
		}
	},

	["bkamikaze"] = {
		label = "Blue Kamikaze",
		weight = 200,
		stack = true,
		close = true,
		description = "Blue Kamikaze Cocktail",
		client = {
			status = {
				thirst = 21,
			},
			image = "bkamikaze.png",
		}
	},

	["headlights"] = {
		label = "Xenon Headlights",
		weight = 0,
		stack = false,
		close = true,
		description = "8k HID headlights",
		client = {
			image = "headlights.png",
		}
	},

	["illegalcarcass2"] = {
		label = "Level 2 poached carcass",
		weight = 100,
		stack = true,
		close = true,
		description = "A sellable resource to an uncertified hunter",
		client = {
			image = "huntingcarcass2.png",
		}
	},

	["fearow"] = {
		label = "Fearow",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "fearow.png",
		}
	},

	["illegalcarcass3"] = {
		label = "Level 3 poached carcass",
		weight = 100,
		stack = true,
		close = true,
		description = "A sellable resource to an uncertified hunter",
		client = {
			image = "huntingcarcass3.png",
		}
	},

	["cascadeBadge"] = {
		label = "CascadeBadge",
		weight = 0,
		stack = true,
		close = false,
		description = "2/8 for Trophy Badge",
		client = {
			image = "cascadeBadge.png",
		}
	},

	["scotch"] = {
		label = "Scotch",
		weight = 200,
		stack = true,
		close = true,
		description = "A bottle of Scotch",
		client = {
			status = {
				thirst = 26,
			},
			image = "scotch.png",
		}
	},

	["mdm_chain"] = {
		label = "MandeM Chain",
		weight = 50,
		stack = true,
		close = false,
		description = "MDM Chain",
		client = {
			image = "np_mdm_chain.png",
		}
	},

	["exeggutor"] = {
		label = "Exeggutor",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "exeggutor.png",
		}
	},

	["magicitem9"] = {
		label = "[REVIVE] Raise Dead",
		weight = 0,
		stack = true,
		close = true,
		description = "Magic Item",
		client = {
			image = "MagicBookGreen.png",
		}
	},

	["emerald_necklace_silver"] = {
		label = "Emerald Necklace Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "emerald_necklace_silver.png",
		}
	},

	["rollcage"] = {
		label = "Roll Cage",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "rollcage.png",
		}
	},

	["chair6"] = {
		label = "Grey Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair6.png",
		}
	},

	["beedrill"] = {
		label = "Beedrill",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "beedrill.png",
		}
	},

	["weed_skunk_seed"] = {
		label = "Skunk Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Skunk",
		client = {
			image = "weed_seed.png",
		}
	},

	["gelato"] = {
		label = "Choc and Vanilla Gelato",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 26,
			},
			image = "gelato.png",
		}
	},

	["noselong"] = {
		label = "Long Nose",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "Clothing_1_12.png",
		}
	},

	["boombox_tape_branchez3"] = {
		label = "BoomBox Tape #3",
		weight = 500,
		stack = true,
		close = true,
		description = "Tape #3",
		client = {
			image = "boombox_tape_branchez3.png",
		}
	},

	["silverchain"] = {
		label = "Silver Chain",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "silverchain.png",
		}
	},

	["keepcompanionhusky"] = {
		label = "Husky",
		weight = 500,
		stack = false,
		close = true,
		description = "Husky is your royal companion!",
		client = {
			image = "A_C_Husky.png",
		}
	},

	["redphone"] = {
		label = "Red Meth Phone",
		weight = 200,
		stack = true,
		close = false,
		description = "A communication device used to contact russian mafia.",
		client = {
			image = "redphone.png",
		}
	},

	["prosciuttiobox"] = {
		label = "Boxed Prosciuttio E Funghi",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pizzabox.png",
		}
	},

	["chair101"] = {
		label = "Black Deco Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair101.png",
		}
	},

	["weedle"] = {
		label = "Weedle",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "weedle.png",
		}
	},

	["caffeagra"] = {
		label = "Caffeagra",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 25,
			},
			image = "caffeagra.png",
		}
	},

	["porygon"] = {
		label = "Porygon",
		weight = 0,
		stack = true,
		close = false,
		description = "Ultra Rare",
		client = {
			image = "porygon.png",
		}
	},

	["ranchwrap"] = {
		label = "Ranch Wrap",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 23,
			},
			image = "ranchwrap.png",
		}
	},

	["housekeys"] = {
		label = "House Keys",
		weight = 200,
		stack = true,
		close = false,
		description = "Random House Keys",
		client = {
			image = "housekeys.png",
		}
	},

	["laptop_9"] = {
		label = "MemberShip 9",
		weight = 0,
		stack = true,
		close = true,
		description = "Magic Item",
		client = {
			image = "laptop_gold.png",
		}
	},

	["drone"] = {
		label = "Troon",
		weight = 150,
		stack = true,
		close = false,
		description = "Dronee baby!",
		client = {
			image = "drone.png",
		}
	},

	["helm3"] = {
		label = "Normale Helmet",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "helmet_17.png",
		}
	},

	["squirtle"] = {
		label = "Squirtle",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "squirtle.png",
		}
	},

	["cloyster"] = {
		label = "Cloyster",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "cloyster.png",
		}
	},

	["hack_usb"] = {
		label = "Usb Häkk",
		weight = 200,
		stack = true,
		close = false,
		description = "The real deal...",
		client = {
			image = "np_hacking_device.png",
		}
	},

	["bass"] = {
		label = "Bass",
		weight = 1250,
		stack = false,
		close = false,
		description = "A normal fish Tatses pretty good!",
		client = {
			image = "bass.png",
		}
	},

	["ruby_earring_silver"] = {
		label = "Ruby Earrings Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ruby_earring_silver.png",
		}
	},

	["croasant-chocolate"] = {
		label = "Cholate Croisant",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "croasant.png",
		}
	},

	["anchor"] = {
		label = "Paadi ankur",
		weight = 2500,
		stack = true,
		close = true,
		description = "Paadi ankur",
		client = {
			image = "anchor.png",
		}
	},

	["laptop_gold"] = {
		label = "Gold Laptop",
		weight = 15000,
		stack = false,
		close = true,
		description = "A security Laptop",
		client = {
			image = "laptop_gold.png",
		}
	},

	["vutacos"] = {
		label = "Tacos",
		weight = 200,
		stack = true,
		close = false,
		description = "Tacos",
		client = {
			status = {
				hunger = 49,
			},
			image = "tacos.png",
		}
	},

	["chair13"] = {
		label = "Orange Leather Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair13.png",
		}
	},

	["fishingtin"] = {
		label = "Fishing Tin",
		weight = 2500,
		stack = true,
		close = false,
		description = "Fishing Tin",
		client = {
			image = "fishingtin.png",
		}
	},

	["huntingbait"] = {
		label = "Hunting Bait",
		weight = 100,
		stack = true,
		close = true,
		description = "A mixture of old meats and vegetables to attract animals",
		client = {
			image = "huntingbait.png",
		}
	},

	["charizard"] = {
		label = "Charizard",
		weight = 0,
		stack = true,
		close = false,
		description = "5/6 for Volcano Badge - Ultra Rare",
		client = {
			image = "charizard.png",
		}
	},

	["vegetarianabox"] = {
		label = "Boxed Vegetariana",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pizzabox.png",
		}
	},

	["tangela"] = {
		label = "Tangela",
		weight = 0,
		stack = true,
		close = false,
		description = "2/6 for Rainbow Badge",
		client = {
			image = "tangela.png",
		}
	},

	["blowtorch"] = {
		label = "Leegiheitja",
		weight = 200,
		stack = true,
		close = false,
		description = "The real deal...",
		client = {
			image = "blowtorch.png",
		}
	},

	["seaking"] = {
		label = "Seaking",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "seaking.png",
		}
	},

	["gloom"] = {
		label = "Gloom",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "gloom.png",
		}
	},

	["blue_usb"] = {
		label = "Blue USB",
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to shut down some systems",
		client = {
			image = "blue_usb.png",
		}
	},

	["chair85"] = {
		label = "Wine Red Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair85.png",
		}
	},

	["sapphire_ring_silver"] = {
		label = "Sapphire Ring Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sapphire_ring_silver.png",
		}
	},

	["popicecream"] = {
		label = "Ice Cream",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 25,
			},
			image = "popicecream.png",
		}
	},

	["gallary_dora_maar_auchat"] = {
		label = "Dora Maar Auchat",
		weight = 0,
		stack = true,
		close = true,
		description = "Just a lawyer badge?",
		client = {
			image = "gallary_dora_maar_auchat.png",
		}
	},

	["fishbait"] = {
		label = "Kala toit",
		weight = 400,
		stack = true,
		close = true,
		description = "Fishing bait",
		client = {
			image = "fishbait.png",
		}
	},

	["pocketwatch"] = {
		label = "Pocket Watch",
		weight = 200,
		stack = true,
		close = true,
		description = "A pocket watch",
		client = {
			image = "pocketwatch.png",
		}
	},

	["ww2relic"] = {
		label = "WW2 Relic",
		weight = 200,
		stack = true,
		close = false,
		description = "I rememeber this from history class.",
		client = {
			image = "ww2relic.png",
		}
	},

	["handcuffkey"] = {
		label = "Handcuff Key",
		weight = 50,
		stack = true,
		close = true,
		description = "Good for getting a person out of cuffs",
		client = {
			image = "handcuffkey.png",
		}
	},

	["haunter"] = {
		label = "Haunter",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "haunter.png",
		}
	},

	["cranberry"] = {
		label = "Cranberry Juice",
		weight = 200,
		stack = true,
		close = true,
		description = "Cranberry Juice",
		client = {
			status = {
				thirst = 26,
			},
			image = "cranberry.png",
		}
	},

	["keepcompanionhen"] = {
		label = "Hen",
		weight = 500,
		stack = false,
		close = true,
		description = "Hen is your royal companion!",
		client = {
			image = "A_C_Hen.png",
		}
	},

	["marijuana_3.5_low"] = {
		label = "3.5g marijuana",
		weight = 2800,
		stack = false,
		close = true,
		description = "3.5g low grade marijuana",
		client = {
			image = "marijuana.png",
		}
	},

	["chair48"] = {
		label = "Brown Metal Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair48.png",
		}
	},

	["newsmic"] = {
		label = "News Microphone",
		weight = 100,
		stack = false,
		close = true,
		description = "A microphone for the news",
		client = {
			image = "newsmic.png",
		}
	},

	["chair1"] = {
		label = "Black Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair1.png",
		}
	},

	["boombox_tape_branchez1"] = {
		label = "BoomBox Tape #1",
		weight = 500,
		stack = true,
		close = true,
		description = "Tape #1",
		client = {
			image = "boombox_tape_branchez1.png",
		}
	},

	["heroin"] = {
		label = "Heroin",
		weight = 500,
		stack = true,
		close = false,
		description = "Really addictive depressant...",
		client = {
			image = "heroin.png",
		}
	},

	["chair73"] = {
		label = "Dark Brown Wood Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair73.png",
		}
	},

	["jerrycan"] = {
		label = "Jerry Can",
		weight = 15000,
		stack = false,
		close = true,
		description = "A Jerry Can made to hold gasoline.",
		client = {
			image = "jerrycan.png",
		}
	},

	["meth_raw"] = {
		label = "Raw Meth",
		weight = 4000,
		stack = true,
		close = false,
		description = "Can be processed into Meth Bag",
		client = {
			image = "raw_meth.png",
		}
	},

	["marijuana_3.5_mid"] = {
		label = "3.5g marijuana",
		weight = 2800,
		stack = false,
		close = true,
		description = "3.5g mid grade marijuana",
		client = {
			image = "marijuana.png",
		}
	},

	["firework4"] = {
		label = "Weeping Willow",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework4.png",
		}
	},

	["delivery-box"] = {
		label = "Delivery Package",
		weight = 50,
		stack = false,
		close = true,
		description = "Package",
		client = {
			image = "deliverybox.png",
		}
	},

	["skateboard"] = {
		label = "SkateBoard",
		weight = 500,
		stack = true,
		close = true,
		description = "lets gooooooooo",
		client = {
			image = "skateboard.png",
		}
	},

	["corn_kernel"] = {
		label = "Cone Kernel",
		weight = 300,
		stack = true,
		close = true,
		description = "Corn kernel",
		client = {
			image = "corn_kernel.png",
		}
	},

	["masker3"] = {
		label = "Face Mask",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "Clothing_1_101.png",
		}
	},

	["groen"] = {
		label = "Green Mask",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "Clothing_1_50.png",
		}
	},

	["diglett"] = {
		label = "Diglett",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "diglett.png",
		}
	},

	["kakuna"] = {
		label = "Kakuna",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "kakuna.png",
		}
	},

	["venusaurvmax"] = {
		label = "Venusaur Vmax",
		weight = 0,
		stack = true,
		close = false,
		description = "Vmax Card",
		client = {
			image = "venusaurvmax.png",
		}
	},

	["jolteon"] = {
		label = "Jolteon",
		weight = 0,
		stack = true,
		close = false,
		description = "3/6 for Thunder Badge - Rare",
		client = {
			image = "jolteon.png",
		}
	},

	["policespikes"] = {
		label = "Spike Strip",
		weight = 1000,
		stack = true,
		close = true,
		description = "Spikes to deflate tires",
		client = {
			image = "policespikes.png",
		}
	},

	["chair10"] = {
		label = "Black Office Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair10.png",
		}
	},

	["gallery_premium"] = {
		label = "Gallery Premium",
		weight = 0,
		stack = true,
		close = true,
		description = "Just a lawyer badge?",
		client = {
			image = "gallery_premium.png",
		}
	},

	["jimeggs"] = {
		label = "Munad",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 22,
			},
			image = "jimeggs.png",
		}
	},

	["noodlebowl"] = {
		label = "Bowl of Noodles",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 43,
			},
			image = "noodlebowl.png",
		}
	},

	["boombox_tape_branchez2"] = {
		label = "BoomBox Tape #2",
		weight = 500,
		stack = true,
		close = true,
		description = "Tape #2",
		client = {
			image = "boombox_tape_branchez2.png",
		}
	},

	["hamcheesesandwich"] = {
		label = "Ham and Cheese Sandwich",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 24,
			},
			image = "hamcheesesandwich.png",
		}
	},

	["drugscales"] = {
		label = "Small Scale",
		weight = 5000,
		stack = true,
		close = false,
		description = "For all your precision measurements",
		client = {
			image = "drugscales.png",
		}
	},

	["mystery_bigbox"] = {
		label = "Big Mystery Box",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mystery_bigBox.png",
		}
	},

	["id_card"] = {
		label = "ID Kaart",
		weight = 0,
		stack = false,
		close = true,
		description = "A card containing all your information to identify yourself",
		client = {
			image = "id_card.png",
		}
	},

	["midori"] = {
		label = "Midori",
		weight = 200,
		stack = true,
		close = true,
		description = "Midori",
		client = {
			status = {
				thirst = 41,
			},
			image = "midori.png",
		}
	},

	["chair7"] = {
		label = "Fancy Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair7.png",
		}
	},

	["mystery_mediumbox"] = {
		label = "Medium Mystery Box",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mystery_mediumBox.png",
		}
	},

	["chair60"] = {
		label = "Brown Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair60.png",
		}
	},

	["advancedrepairkit"] = {
		label = "Kaasaaegne parandus Komplekt",
		weight = 4000,
		stack = true,
		close = true,
		description = "A nice toolbox with stuff to repair your vehicle",
		client = {
			image = "advancedkit.png",
		}
	},

	["shellder"] = {
		label = "Shellder",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "shellder.png",
		}
	},

	["transmission2"] = {
		label = "Transmission Lvl 2",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "transmission2.png",
		}
	},

	["persian"] = {
		label = "Persian",
		weight = 0,
		stack = true,
		close = false,
		description = "6/6 for Earth Badge",
		client = {
			image = "persian.png",
		}
	},

	["diamond_earring"] = {
		label = "Diamond Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "diamond_earring.png",
		}
	},

	["jelly"] = {
		label = "Jelly",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 25,
			},
			image = "jelly.png",
		}
	},

	["lighter"] = {
		label = "Lighter",
		weight = 0,
		stack = true,
		close = true,
		description = "On new years eve a nice fire to stand next to",
		client = {
			image = "lighter.png",
		}
	},

	["backpack2"] = {
		label = "Backpack 2",
		weight = 10000,
		stack = false,
		close = true,
		description = "Backpack",
		client = {
			image = "backpack_boy.png",
		}
	},

	["harness"] = {
		label = "Rakmed",
		weight = 1000,
		stack = false,
		close = true,
		description = "Racing Harness so no matter what you stay in the car",
		client = {
			image = "harness.png",
		}
	},

	["jade_ring"] = {
		label = "Jade Ring",
		weight = 0,
		stack = true,
		close = true,
		description = "Jade Ring",
		client = {
			image = "np_gallery_jade-ring.png",
		}
	},

	["kabutops"] = {
		label = "Kabutops",
		weight = 0,
		stack = true,
		close = false,
		description = "4/6 for Boulder Badge - Ultra Rare",
		client = {
			image = "kabutops.png",
		}
	},

	["barbera"] = {
		label = "Barbera D'Asti",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 27,
			},
			image = "barbera.png",
		}
	},

	["marijuana_1oz_low"] = {
		label = "1oz marijuana",
		weight = 2800,
		stack = false,
		close = false,
		description = "1oz low grade marijuana",
		client = {
			image = "marijuana.png",
		}
	},

	["methtray"] = {
		label = "Meth Tray",
		weight = 200,
		stack = true,
		close = false,
		description = "make some meth",
		client = {
			image = "meth_tray.png",
		}
	},

	["mystery_smallbox"] = {
		label = "Small Mystery Box",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mystery_smallBox.png",
		}
	},

	["laptop"] = {
		label = "Läptop",
		weight = 4000,
		stack = true,
		close = true,
		description = "Expensive laptop",
		client = {
			image = "laptop.png",
		}
	},

	["bean-cafe"] = {
		label = "Coffee",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cafe.png",
		}
	},

	["can"] = {
		label = "Empty Can",
		weight = 10,
		stack = true,
		close = false,
		description = "An empty can, good for recycling",
		client = {
			image = "can.png",
		}
	},

	["radioscanner"] = {
		label = "Raadio Skänner",
		weight = 1000,
		stack = true,
		close = true,
		description = "With this you can get some police alerts. Not 100% effective however",
		client = {
			image = "radioscanner.png",
		}
	},

	["xenons"] = {
		label = "Xenon Headlights",
		weight = 1000,
		stack = true,
		close = true,
		description = "Shine bright like a diamond!",
		client = {
			image = "xenons.png",
		}
	},

	["cerberus_chain"] = {
		label = "Cerberus Chain",
		weight = 50,
		stack = true,
		close = false,
		description = "Cerberus Chain",
		client = {
			image = "np_cerberus_chain.png",
		}
	},

	["marijuana_nutrition"] = {
		label = "Plant Fertilizer",
		weight = 0,
		stack = true,
		close = true,
		description = "Plant nutrition",
		client = {
			image = "marijuana_nutrition.png",
		}
	},

	["laptop_blue"] = {
		label = "Blue Laptop",
		weight = 15000,
		stack = false,
		close = true,
		description = "A security Laptop",
		client = {
			image = "laptop_blue.png",
		}
	},

	["oxy"] = {
		label = "Prescription Oxy",
		weight = 100,
		stack = true,
		close = true,
		description = "The Label Has Been Ripped Off",
		client = {
			image = "oxy.png",
		}
	},

	["skunk"] = {
		label = "Skunk",
		weight = 200,
		stack = true,
		close = true,
		description = "A Road To Happieness!!",
		client = {
			image = "skunk.png",
		}
	},

	["venomoth"] = {
		label = "Venomoth",
		weight = 0,
		stack = true,
		close = false,
		description = "4/6 for Soul Badge",
		client = {
			image = "venomoth.png",
		}
	},

	["clefairy"] = {
		label = "Clefairy",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "clefairy.png",
		}
	},

	["finescale"] = {
		label = "Fine Scale",
		weight = 200,
		stack = true,
		close = false,
		description = "Scale Used for Fine Powders and Materials.",
		client = {
			image = "finescale.png",
		}
	},

	["emerald_ring"] = {
		label = "Emerald Ring",
		weight = 200,
		stack = true,
		close = false,
		description = "A emerald ring seems like the jackpot to me!",
		client = {
			image = "emerald_ring.png",
		}
	},

	["omastar"] = {
		label = "Omastar",
		weight = 0,
		stack = true,
		close = false,
		description = "3/6 for Boulder Badge - Ultra Rare",
		client = {
			image = "omastar.png",
		}
	},

	["raw_bacon"] = {
		label = "Raw Bacon",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "raw_bacon.png",
		}
	},

	["mocha"] = {
		label = "Mocha Meow",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 40,
			},
			image = "mochameow.png",
		}
	},

	["amaretto"] = {
		label = "Amaretto",
		weight = 200,
		stack = true,
		close = true,
		description = "A bottle of Amaretto",
		client = {
			status = {
				thirst = 25,
			},
			image = "amaretto.png",
		}
	},

	["turbo"] = {
		label = "Supercharger Turbo",
		weight = 0,
		stack = true,
		close = true,
		description = "Who doesn't need a 65mm Turbo??",
		client = {
			image = "turbo.png",
		}
	},

	["hamburger"] = {
		label = "Hamburger",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 29,
			},
			image = "hamburger.png",
		}
	},

	["hockeymask"] = {
		label = "Hockeymask",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "Clothing_1_4.png",
		}
	},

	["boombox_tape_branchez5"] = {
		label = "BoomBox Tape #5",
		weight = 500,
		stack = true,
		close = true,
		description = "Tape #5",
		client = {
			image = "boombox_tape_branchez5.png",
		}
	},

	["360cctv"] = {
		label = "360D CCTV Cam",
		weight = 10000,
		stack = true,
		close = true,
		description = "360 Degree Revolvable CCTV Camera (Manually Placeable)",
		client = {
			image = "mcctv.png",
		}
	},

	["mintleaf"] = {
		label = "Mint",
		weight = 200,
		stack = true,
		close = false,
		description = "Mint Leaves",
		client = {
			status = {
				hunger = 50,
			},
			image = "mint.png",
		}
	},

	["wolfcarcass3"] = {
		label = "Level 3 wolf",
		weight = 120,
		stack = true,
		close = true,
		description = "A sellable resource to an uncertified hunter",
		client = {
			image = "huntingcarcass3.png",
		}
	},

	["camera"] = {
		label = "CCTV Camera",
		weight = 1000,
		stack = false,
		close = true,
		description = "A CCTV Camera... wonder what you can do with this",
		client = {
			image = "camera.png",
		}
	},

	["water_bottle"] = {
		label = "Vesi",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "water_bottle.png",
		}
	},

	["slicedpie"] = {
		label = "Slice of Pie",
		weight = 10,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "slicedpie.png",
		}
	},

	["chair104"] = {
		label = "Blue Metal Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair104.png",
		}
	},

	["ifak"] = {
		label = "IFAK",
		weight = 0,
		stack = true,
		close = true,
		description = "Heavy duty medical supplies",
		client = {
			image = "ifak.png",
		}
	},

	["atmobject"] = {
		label = "ATM",
		weight = 200,
		stack = false,
		close = true,
		description = "ATM",
		client = {
			image = "atmobj.png",
		}
	},

	["boxofxtc"] = {
		label = "A Box Of XTC",
		weight = 1200,
		stack = true,
		close = true,
		description = "A sus box",
		client = {
			image = "boxof.png",
		}
	},

	["baconeggs"] = {
		label = "Bacon and Eggs",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 24,
			},
			image = "baconeggs.png",
		}
	},

	["burger_mshakeformula"] = {
		label = "Piima kokteil",
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient",
		client = {
			image = "bs_ingredients_icecream.png",
		}
	},

	["gallary_trophy"] = {
		label = "Trophy",
		weight = 0,
		stack = true,
		close = true,
		description = "Just a lawyer badge?",
		client = {
			image = "gallary_trophy.png",
		}
	},

	["chair42"] = {
		label = "Brown Metal Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair42.png",
		}
	},

	["apple"] = {
		label = "Õun",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "apple.png",
		}
	},

	["weed_purple-haze_seed"] = {
		label = "Purple Haze Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Purple Haze",
		client = {
			image = "weed_seed.png",
		}
	},

	["customplate"] = {
		label = "Customized Plates",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "plate.png",
		}
	},

	["flour"] = {
		label = "Flour",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 47,
			},
			image = "flour.png",
		}
	},

	["gengar"] = {
		label = "Gengar",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "gengar.png",
		}
	},

	["weaponlicense"] = {
		label = "Relvaluba",
		weight = 0,
		stack = false,
		close = true,
		description = "Weapon License",
		client = {
			image = "weapon_license.png",
		}
	},

	["orange"] = {
		label = "Orange",
		weight = 100,
		stack = true,
		close = true,
		description = "Orange",
		client = {
			image = "orange.png",
		}
	},

	["bobatea"] = {
		label = "Boba Tea",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 49,
			},
			image = "bubbletea.png",
		}
	},

	["zwart2"] = {
		label = "Skull Black Mask",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "Clothing_1_29.png",
		}
	},

	["gastly"] = {
		label = "Gastly",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "gastly.png",
		}
	},

	["chopradio"] = {
		label = "Chop Radio",
		weight = 500,
		stack = true,
		close = true,
		description = "Special radio which informs you about cool stuff",
		client = {
			image = "chopradio.png",
		}
	},

	["bltsandwich"] = {
		label = "BLT Sandwich",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 25,
			},
			image = "bltsandwich.png",
		}
	},

	["stingray"] = {
		label = "Stingray",
		weight = 2500,
		stack = false,
		close = false,
		description = "Stingray",
		client = {
			image = "stingray.png",
		}
	},

	["squid"] = {
		label = "Calamari",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "squid.png",
		}
	},

	["briefcase"] = {
		label = "Briefcase",
		weight = 10000,
		stack = false,
		close = true,
		description = "Briefcase",
		client = {
			image = "briefcase.png",
		}
	},

	["marowak"] = {
		label = "Marowak",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "marowak.png",
		}
	},

	["blacknails"] = {
		label = "Black Nails",
		weight = 100,
		stack = true,
		close = true,
		description = "Black Nails",
		client = {
			image = "blacknails.png",
		}
	},

	["snorlax"] = {
		label = "Snorlax",
		weight = 0,
		stack = true,
		close = false,
		description = "3/6 for Soul Badge - Ultra Rare",
		client = {
			image = "snorlax.png",
		}
	},

	["cheesecake"] = {
		label = "Cheese Cake",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 24,
			},
			image = "cheesecake.png",
		}
	},

	["tots"] = {
		label = "Tits or Tots",
		weight = 200,
		stack = true,
		close = false,
		description = "Sexy Tots",
		client = {
			status = {
				hunger = 48,
			},
			image = "tots.png",
		}
	},

	["goldenphone"] = {
		label = "Golden Coke Phone",
		weight = 200,
		stack = true,
		close = false,
		description = "A communication device used to contact russian mafia.",
		client = {
			image = "goldenphone.png",
		}
	},

	["kabuto"] = {
		label = "Kabuto",
		weight = 0,
		stack = true,
		close = false,
		description = "Ultra Rare",
		client = {
			image = "kabuto.png",
		}
	},

	["chimpcarcass1"] = {
		label = "Level 1 poached chimp",
		weight = 100,
		stack = true,
		close = true,
		description = "A sellable resource to an uncertified hunter",
		client = {
			image = "huntingcarcass1.png",
		}
	},

	["diamond_necklace_silver"] = {
		label = "Diamond Necklace Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "diamond_necklace_silver.png",
		}
	},

	["collarpet"] = {
		label = "Pet collar",
		weight = 500,
		stack = true,
		close = true,
		description = "Rename your pets!",
		client = {
			image = "collarpet.png",
		}
	},

	["sapphire_ring"] = {
		label = "Sapphire Ring",
		weight = 200,
		stack = true,
		close = false,
		description = "A sapphire ring seems like the jackpot to me!",
		client = {
			image = "sapphire_ring.png",
		}
	},

	["keepcompanionshepherd"] = {
		label = "Shepherd",
		weight = 500,
		stack = false,
		close = true,
		description = "Shepherd is your royal companion!",
		client = {
			image = "A_C_shepherd.png",
		}
	},

	["marijuana_joint"] = {
		label = "White Widow Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "1g joint",
		client = {
			image = "joint.png",
		}
	},

	["adrenaline"] = {
		label = "Adrenaline",
		weight = 0,
		stack = true,
		close = true,
		description = "Give you adrenaline.",
		client = {
			image = "adrenaline.png",
		}
	},

	["chair75"] = {
		label = "Oak Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair75.png",
		}
	},

	["sandslash"] = {
		label = "Sandslash",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sandslash.png",
		}
	},

	["dim_polao"] = {
		label = "dim polao",
		weight = 0,
		stack = true,
		close = true,
		description = "food",
		client = {
			image = "dim_polao.png",
		}
	},

	["meth_brick"] = {
		label = "Meth Brick",
		weight = 1000,
		stack = true,
		close = true,
		description = "1KG Meth Brick to sell to large customers.",
		client = {
			image = "methbrick.png",
		}
	},

	["greenpepper"] = {
		label = "Green Pepper",
		weight = 15,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "greenpepper.png",
		}
	},

	["chair94"] = {
		label = "Grey Luxury Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair94.png",
		}
	},

	["petwaterbottleportable"] = {
		label = "Portable water bottle",
		weight = 1000,
		stack = false,
		close = true,
		description = "Flask to store water for your pets",
		client = {
			image = "petwaterbottleportable.png",
		}
	},

	["gallary_vip"] = {
		label = "Gallery VIP",
		weight = 0,
		stack = true,
		close = true,
		description = "Just a lawyer badge?",
		client = {
			image = "gallary_vip.png",
		}
	},

	["car_armor"] = {
		label = "Vehicle Armor",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "armour.png",
		}
	},

	["chair110"] = {
		label = "Black Metal Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair110.png",
		}
	},

	["terrorwit"] = {
		label = "Pig Mask",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "Clothing_1_1.png",
		}
	},

	["rentalpapers"] = {
		label = "Rental Papers",
		weight = 0,
		stack = false,
		close = false,
		description = "Yea, this is my car i can prove it!",
		client = {
			image = "rentalpapers.png",
		}
	},

	["skullzwart"] = {
		label = "Skull Black Mask",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "Clothing_1_15.png",
		}
	},

	["chair89"] = {
		label = "Light Blue Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair89.png",
		}
	},

	["thionyl_chloride"] = {
		label = "Thionyl Chloride",
		weight = 1500,
		stack = true,
		close = false,
		description = "Chemicals, handle with care!",
		client = {
			image = "thionyl_chloride.png",
		}
	},

	["megaphone"] = {
		label = "Megaphone (POLICE)",
		weight = 1000,
		stack = true,
		close = true,
		description = "Megaphone :)",
		client = {
			image = "np_megaphone.png",
		}
	},

	["wolfcarcass1"] = {
		label = "Level 1 wolf",
		weight = 100,
		stack = true,
		close = true,
		description = "A sellable resource to an uncertified hunter",
		client = {
			image = "huntingcarcass1.png",
		}
	},

	["engine1"] = {
		label = "Shonen Engine",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "shonen.png",
		}
	},

	["rolex"] = {
		label = "Kuldne käekell",
		weight = 600,
		stack = true,
		close = true,
		description = "A golden watch seems like the jackpot to me!",
		client = {
			image = "rolex.png",
		}
	},

	["koffing"] = {
		label = "Koffing",
		weight = 0,
		stack = true,
		close = false,
		description = "1/6 for Soul Badge",
		client = {
			image = "koffing.png",
		}
	},

	["chair23"] = {
		label = "Posh White Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair23.png",
		}
	},

	["burger_moneyshot"] = {
		label = "Keskmine Burger",
		weight = 300,
		stack = true,
		close = true,
		description = "Sates Hunger.",
		client = {
			image = "bs_money-shot.png",
		}
	},

	["transmission1"] = {
		label = "Transmission Lvl 1",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "transmission1.png",
		}
	},

	["bong"] = {
		label = "Bong",
		weight = 1000,
		stack = true,
		close = true,
		description = "Bong",
		client = {
			image = "bong.png",
		}
	},

	["woowoo"] = {
		label = "Woo Woo",
		weight = 200,
		stack = true,
		close = true,
		description = "Woowoo Cocktail",
		client = {
			status = {
				thirst = 29,
			},
			image = "woowoo.png",
		}
	},

	["salami"] = {
		label = "Salami",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "salami.png",
		}
	},

	["bolognese"] = {
		label = "Bolognese",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 23,
			},
			image = "bolognese.png",
		}
	},

	["vmaxcharizard"] = {
		label = "Charizard Vmax",
		weight = 0,
		stack = true,
		close = false,
		description = "Vmax Card",
		client = {
			image = "vmaxcharizard.png",
		}
	},

	["helm1"] = {
		label = "Black Silver Helmet ",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "helmet_51.png",
		}
	},

	["chair33"] = {
		label = "Black Comfy Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair33.png",
		}
	},

	["marijuana_3.5_high"] = {
		label = "3.5g marijuana",
		weight = 2800,
		stack = false,
		close = true,
		description = "3.5g high grade marijuana",
		client = {
			image = "marijuana.png",
		}
	},

	["zapdos"] = {
		label = "Zapdos",
		weight = 0,
		stack = true,
		close = false,
		description = "1/6 for Thunder Badge - Ultra Rare",
		client = {
			image = "zapdos.png",
		}
	},

	["chair19"] = {
		label = "White Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair19.png",
		}
	},

	["burger_lettuce"] = {
		label = "Salatileht",
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient",
		client = {
			image = "bs_lettuce.png",
		}
	},

	["gyarados"] = {
		label = "Gyarados",
		weight = 0,
		stack = true,
		close = false,
		description = "Rare",
		client = {
			image = "gyarados.png",
		}
	},

	["diving_fill"] = {
		label = "Diving Tube",
		weight = 3000,
		stack = false,
		close = true,
		client = {
			image = "diving_tube.png",
		}
	},

	["goldennugget"] = {
		label = "The Mojave Nugget",
		weight = 200,
		stack = true,
		close = false,
		description = "This seems valuable, hmm",
		client = {
			image = "goldnugget.png",
		}
	},

	["wigglytuff"] = {
		label = "Wigglytuff",
		weight = 0,
		stack = true,
		close = false,
		description = "Rare",
		client = {
			image = "wigglytuff.png",
		}
	},

	["bean-mocha"] = {
		label = "Mocha",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cafe.png",
		}
	},

	["cubasil"] = {
		label = "Cucumber Basil",
		weight = 200,
		stack = true,
		close = false,
		description = "Hand full of Cucumber and Basil",
		client = {
			status = {
				hunger = 42,
			},
			image = "cubasil.png",
		}
	},

	["chair28"] = {
		label = "Grey Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair28.png",
		}
	},

	["goldearring"] = {
		label = "Golden Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "gold_earring.png",
		}
	},

	["jerry_can"] = {
		label = "Kanister",
		weight = 20000,
		stack = true,
		close = true,
		description = "A can full of Fuel",
		client = {
			image = "jerry_can.png",
		}
	},

	["chair82"] = {
		label = "Small Black Stool",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair82.png",
		}
	},

	["gin"] = {
		label = "Gin",
		weight = 200,
		stack = true,
		close = true,
		description = "A bottle of Gin",
		client = {
			status = {
				thirst = 29,
			},
			image = "gin.png",
		}
	},

	["whiskey"] = {
		label = "Viski",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "whiskey.png",
		}
	},

	["maccheese"] = {
		label = "Mac n Cheese",
		weight = 200,
		stack = true,
		close = true,
		description = "A bowl of maccaroni and cheese",
		client = {
			status = {
				hunger = 41,
			},
			image = "maccheese.png",
		}
	},

	["raw_ham"] = {
		label = "Raw Ham",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "raw_ham.png",
		}
	},

	["goldchain"] = {
		label = "Golden Chain",
		weight = 200,
		stack = true,
		close = false,
		description = "A golden chain seems like the jackpot to me!",
		client = {
			image = "goldchain.png",
		}
	},

	["boombox_tape_branchez10"] = {
		label = "BoomBox Tape #10",
		weight = 500,
		stack = true,
		close = true,
		description = "Tape #10",
		client = {
			image = "boombox_tape_branchez10.png",
		}
	},

	["chubby"] = {
		label = "Chubby Bubble Juice",
		weight = 100,
		stack = true,
		close = true,
		description = "Smoke is the life!",
		client = {
			image = "chubby.png",
		}
	},

	["silver_ring"] = {
		label = "Silver Ring",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "silver_ring.png",
		}
	},

	["certificate"] = {
		label = "Certificate",
		weight = 0,
		stack = true,
		close = true,
		description = "Certificate that proves you own certain stuff",
		client = {
			image = "certificate.png",
		}
	},

	["arcadegreen"] = {
		label = "Green Arcade Card",
		weight = 0,
		stack = false,
		close = false,
		description = "Green Arcade Card",
		client = {
			image = "arcadegreen.png",
		}
	},

	["blastoisevmax"] = {
		label = "Blastoise Vmax",
		weight = 0,
		stack = true,
		close = false,
		description = "Vmax Card",
		client = {
			image = "blastoisevmax.png",
		}
	},

	["chair71"] = {
		label = "Brown Lounger",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair71.png",
		}
	},

	["chair95"] = {
		label = "Dark Brown Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair95.png",
		}
	},

	["pinsir"] = {
		label = "Pinsir",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "pinsir.png",
		}
	},

	["pangash_bhat"] = {
		label = "pangash bhat",
		weight = 0,
		stack = true,
		close = true,
		description = "food",
		client = {
			image = "pangash_bhat.png",
		}
	},

	["nidoran"] = {
		label = "Nidoran",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "nidoran.png",
		}
	},

	["chocolate"] = {
		label = "Chocolate",
		weight = 200,
		stack = true,
		close = false,
		description = "Chocolate Bar",
		client = {
			status = {
				hunger = 21,
			},
			image = "chocolate.png",
		}
	},

	["apple_juice"] = {
		label = "Õuna mahl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "apple_juice.png",
		}
	},

	["driver_license"] = {
		label = "Juhiload",
		weight = 0,
		stack = false,
		close = false,
		description = "Permit to show you can drive a vehicle",
		client = {
			image = "driver_license.png",
		}
	},

	["brakes2"] = {
		label = "GT Big Brakes",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "brakes2.png",
		}
	},

	["potato"] = {
		label = "Potatoes",
		weight = 500,
		stack = true,
		close = false,
		description = "Food",
		client = {
			image = "potatoes.png",
		}
	},

	["bowlingreceipt"] = {
		label = "Bowling Recepit",
		weight = 150,
		stack = true,
		close = true,
		description = "Bowling Recepit",
		client = {
			image = "bowlingreceipt.png",
		}
	},

	["slowbro"] = {
		label = "Slowbro",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "slowbro.png",
		}
	},

	["burger_bun"] = {
		label = "Sai",
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient",
		client = {
			image = "bs_bun.png",
		}
	},

	["vpn"] = {
		label = "Vpn",
		weight = 0,
		stack = false,
		close = false,
		description = "Lawyer security passport ID",
		client = {
			image = "vpn.png",
		}
	},

	["helm6"] = {
		label = "Black Open helmet",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "helmet_67.png",
		}
	},

	["aluminum"] = {
		label = "Aluminium",
		weight = 0,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
		client = {
			image = "aluminum.png",
		}
	},

	["marijuana_phone"] = {
		label = "Burner Phone",
		weight = 0,
		stack = true,
		close = true,
		description = "Burner phone used to sell eights",
		client = {
			image = "marijuana_phone.png",
		}
	},

	["soulbadge"] = {
		label = "SoulBadge",
		weight = 0,
		stack = true,
		close = false,
		description = "5/8 for Trophy Badge",
		client = {
			image = "soulBadge.png",
		}
	},

	["diavolabox"] = {
		label = "Boxed Diavola",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pizzabox.png",
		}
	},

	["raw_beef"] = {
		label = "Raw Beef",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "raw_beef.png",
		}
	},

	["mint"] = {
		label = "Matcha",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "matcha.png",
		}
	},

	["lion_meat"] = {
		label = "Lion Meat",
		weight = 1000,
		stack = true,
		close = true,
		description = "Boom boom we have meat to night",
		client = {
			image = "deer_meat.png",
		}
	},

	["curaco"] = {
		label = "Curaco",
		weight = 200,
		stack = true,
		close = true,
		description = "A bottle of Curaco",
		client = {
			status = {
				thirst = 29,
			},
			image = "curaco.png",
		}
	},

	["chair49"] = {
		label = "Brown Wodd Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair49.png",
		}
	},

	["hacking_device"] = {
		label = "Programeerimise Seade",
		weight = 500,
		stack = false,
		close = true,
		description = "A multi purpose hacking device",
		client = {
			image = "hacking_device.png",
		}
	},

	["crisps"] = {
		label = "Crisps",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 30,
			},
			image = "chips.png",
		}
	},

	["clefable"] = {
		label = "Clefable",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "clefable.png",
		}
	},

	["surgical_tray"] = {
		label = "Surgical tray",
		weight = 500,
		stack = true,
		close = true,
		description = "edit here",
		client = {
			image = "surgical_tray.png",
		}
	},

	["fake_plate"] = {
		label = "Registri Number",
		weight = 500,
		stack = false,
		close = true,
		description = "A fake plate?",
		client = {
			image = "fake_plate.png",
		}
	},

	["radioscannerticket"] = {
		label = "Deal Acceptence",
		weight = 100,
		stack = false,
		close = true,
		description = "Order List",
		client = {
			image = "stickynote.png",
		}
	},

	["brokendetector"] = {
		label = "Broken Detector",
		weight = 200,
		stack = true,
		close = false,
		description = "A broken metal detector",
		client = {
			image = "brokendetector.png",
		}
	},

	["friedpick"] = {
		label = "Fried Pickles",
		weight = 200,
		stack = true,
		close = true,
		description = "A plate of fried pickles",
		client = {
			status = {
				hunger = 49,
			},
			image = "friedpick.png",
		}
	},

	["burger_torpedo"] = {
		label = "Torpedo",
		weight = 310,
		stack = true,
		close = true,
		description = "Sates Hunger.",
		client = {
			image = "bs_torpedo.png",
		}
	},

	["gorilla"] = {
		label = "Gorilla Mask",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "Clothing_1_96.png",
		}
	},

	["bento"] = {
		label = "Bento Box",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 40,
			},
			image = "bento.png",
		}
	},

	["arcadegold"] = {
		label = "Gold Arcade Card",
		weight = 0,
		stack = false,
		close = false,
		description = "Gold Arcade Card",
		client = {
			image = "arcadegold.png",
		}
	},

	["stickynote"] = {
		label = "Sticky note",
		weight = 0,
		stack = false,
		close = false,
		description = "Sometimes handy to remember something :)",
		client = {
			image = "stickynote.png",
		}
	},

	["surgical_staple"] = {
		label = "Surgical staple",
		weight = 500,
		stack = true,
		close = true,
		description = "edit here",
		client = {
			image = "surgical_staple.png",
		}
	},

	["paras"] = {
		label = "Paras",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "paras.png",
		}
	},

	["goldore"] = {
		label = "Gold Ore",
		weight = 1000,
		stack = true,
		close = false,
		description = "Gold Ore",
		client = {
			image = "goldore.png",
		}
	},

	["burger_meatfree"] = {
		label = "VEGAN Burger",
		weight = 125,
		stack = true,
		close = true,
		description = "Sates Hunger.",
		client = {
			image = "bs_meat-free.png",
		}
	},

	["rhyhorn"] = {
		label = "Rhyhorn",
		weight = 0,
		stack = true,
		close = false,
		description = "2/6 for Boulder Badge",
		client = {
			image = "rhyhorn.png",
		}
	},

	["chair76"] = {
		label = "Black Deco Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair76.png",
		}
	},

	["vileplume"] = {
		label = "Vileplume",
		weight = 0,
		stack = true,
		close = false,
		description = "3/6 for Rainbow Badge",
		client = {
			image = "vileplume.png",
		}
	},

	["pidgeot"] = {
		label = "Pidgeot",
		weight = 0,
		stack = true,
		close = false,
		description = "6/6 for Earth Badge",
		client = {
			image = "pidgeot.png",
		}
	},

	["green_laptop"] = {
		label = "Roheline Läptop",
		weight = 1000,
		stack = true,
		close = true,
		description = "A green laptop..",
		client = {
			image = "laptop-green.png",
		}
	},

	["chair29"] = {
		label = "Blue Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair29.png",
		}
	},

	["chair72"] = {
		label = "Grey Sun Lounger",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair72.png",
		}
	},

	["brakes1"] = {
		label = "Performance Brakes",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "brakes1.png",
		}
	},

	["onyx_ring"] = {
		label = "Onyx Ring",
		weight = 0,
		stack = true,
		close = true,
		description = "onyx ring",
		client = {
			image = "np_gallery_onyx-ring.png",
		}
	},

	["chair97"] = {
		label = "Plastic Lawn Chair 2",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair97.png",
		}
	},

	["screwdriverset"] = {
		label = "Kruvikeeraja Komplekt",
		weight = 1000,
		stack = true,
		close = false,
		description = "Very useful to screw... screws...",
		client = {
			image = "screwdriverset.png",
		}
	},

	["lawyerpass"] = {
		label = "Lawyer Pass",
		weight = 0,
		stack = false,
		close = false,
		description = "Pass exclusive to lawyers to show they can represent a suspect",
		client = {
			image = "lawyerpass.png",
		}
	},

	["laptop_pink"] = {
		label = "Pink Laptop",
		weight = 15000,
		stack = false,
		close = true,
		description = "A security Laptop",
		client = {
			image = "laptop_pink.png",
		}
	},

	["handdrill"] = {
		label = "Hand Drill",
		weight = 1000,
		stack = true,
		close = false,
		description = "A Hand Drill, can be used on jewellery",
		client = {
			image = "handdrill.png",
		}
	},

	["chair56"] = {
		label = "Old Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair56.png",
		}
	},

	["electabuzz"] = {
		label = "Electabuzz",
		weight = 0,
		stack = true,
		close = false,
		description = "4/6 for Thunder Badge",
		client = {
			image = "electabuzz.png",
		}
	},

	["mankey"] = {
		label = "Mankey",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "mankey.png",
		}
	},

	["doduo"] = {
		label = "Doduo",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "doduo.png",
		}
	},

	["scyther"] = {
		label = "Scyther",
		weight = 0,
		stack = true,
		close = false,
		description = "4/6 for Rainbow Badge - Rare",
		client = {
			image = "scyther.png",
		}
	},

	["helm7"] = {
		label = "Spike Helmet",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "helmet_88.png",
		}
	},

	["boba"] = {
		label = "Boba",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 48,
			},
			image = "boba.png",
		}
	},

	["chair105"] = {
		label = "Light Material Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair105.png",
		}
	},

	["gauze"] = {
		label = "Gauze",
		weight = 500,
		stack = true,
		close = true,
		description = "edit here",
		client = {
			image = "gauze.png",
		}
	},

	["snorlaxvmax"] = {
		label = "Snorlax Vmax",
		weight = 0,
		stack = true,
		close = false,
		description = "Vmax Card",
		client = {
			image = "snorlaxvmax.png",
		}
	},

	["diavola"] = {
		label = "Diavola",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 24,
			},
			image = "diavola.png",
		}
	},

	["ecocoffee"] = {
		label = "The Eco-ffee",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 26,
			},
			image = "ecoffee.png",
		}
	},

	["var_usb3"] = {
		label = "Master Key (25%)",
		weight = 1000,
		stack = false,
		close = true,
		description = "Combine multiple USBs to create a master encryption key.",
		client = {
			image = "var_usb.png",
		}
	},

	["veggiewrap"] = {
		label = "Veggie Wrap",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 24,
			},
			image = "veggiewrap.png",
		}
	},

	["pokebox"] = {
		label = "Pokemon TCG Box",
		weight = 50,
		stack = false,
		close = true,
		description = "Pokemon TCG Storage Box",
		client = {
			image = "pokebox.png",
		}
	},

	["blastoisev"] = {
		label = "Blastoise V",
		weight = 0,
		stack = true,
		close = false,
		description = "V Card",
		client = {
			image = "blastoisev.png",
		}
	},

	["mtlioncarcass1"] = {
		label = "Level 1 mountain lion",
		weight = 100,
		stack = true,
		close = true,
		description = "A sellable resource to a certified hunter",
		client = {
			image = "huntingcarcass1.png",
		}
	},

	["vape_pen"] = {
		label = "Vape Pen",
		weight = 100,
		stack = true,
		close = true,
		description = "Smoke is the life!",
		client = {
			image = "vape_pen.png",
		}
	},

	["ironore"] = {
		label = "Iron Ore",
		weight = 1000,
		stack = true,
		close = false,
		description = "Iron, a base ore.",
		client = {
			image = "ironore.png",
		}
	},

	["chimpcarcass3"] = {
		label = "Level 3 poached chimp",
		weight = 120,
		stack = true,
		close = true,
		description = "A sellable resource to an uncertified hunter",
		client = {
			image = "huntingcarcass3.png",
		}
	},

	["arcanine"] = {
		label = "Arcanine",
		weight = 0,
		stack = true,
		close = false,
		description = "1/6 for Volcano Badge",
		client = {
			image = "arcanine.png",
		}
	},

	["diamond"] = {
		label = "Diamond",
		weight = 100,
		stack = true,
		close = false,
		description = "A Diamond that shimmers",
		client = {
			image = "diamond.png",
		}
	},

	["stone"] = {
		label = "Stone",
		weight = 2000,
		stack = true,
		close = false,
		description = "Stone woo",
		client = {
			image = "stone.png",
		}
	},

	["exhaust"] = {
		label = "Vehicle Exhaust",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "exhaust.png",
		}
	},

	["horsea"] = {
		label = "Horsea",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "horsea.png",
		}
	},

	["casino_blackchip"] = {
		label = "Casino Chip",
		weight = 0,
		stack = true,
		close = false,
		description = "Diamond Casino Blackjack Chip",
		client = {
			image = "casino_blackchip.png",
		}
	},

	["chair59"] = {
		label = "Lime Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair59.png",
		}
	},

	["binoculars"] = {
		label = "Binoculars",
		weight = 600,
		stack = true,
		close = true,
		description = "Sneaky Breaky...",
		client = {
			image = "binoculars.png",
		}
	},

	["helm5"] = {
		label = "Green helmet",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "helmet_62.png",
		}
	},

	["nplate"] = {
		label = "Nachos Plate",
		weight = 200,
		stack = true,
		close = true,
		description = "A plate of nachos and cheese",
		client = {
			status = {
				hunger = 48,
			},
			image = "nplate.png",
		}
	},

	["bakingsoda"] = {
		label = "Baking Soda",
		weight = 2000,
		stack = true,
		close = false,
		description = "For all the Baking Enthusiast",
		client = {
			image = "bakingsoda.png",
		}
	},

	["rplate"] = {
		label = "Ribs Plate",
		weight = 200,
		stack = true,
		close = true,
		description = "A plate of Ribs",
		client = {
			status = {
				hunger = 43,
			},
			image = "rplate.png",
		}
	},

	["boombox_tape_branchez4"] = {
		label = "BoomBox Tape #4",
		weight = 500,
		stack = true,
		close = true,
		description = "Tape #4",
		client = {
			image = "boombox_tape_branchez4.png",
		}
	},

	["chair46"] = {
		label = "White Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair46.png",
		}
	},

	["oystershell"] = {
		label = "Oyster Shell",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "oyster.png",
		}
	},

	["please"] = {
		label = "Please Gold Mask",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "Clothing_1_30.png",
		}
	},

	["eevee"] = {
		label = "Eevee",
		weight = 0,
		stack = true,
		close = false,
		description = "Rare",
		client = {
			image = "eevee.png",
		}
	},

	["og-kush"] = {
		label = "Raw Og-Kush",
		weight = 450,
		stack = true,
		close = false,
		description = "Raw Og-Kush",
		client = {
			image = "og-kush.png",
		}
	},

	["chair21"] = {
		label = "Metal Lawn Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair21.png",
		}
	},

	["burger_toy2"] = {
		label = "Roosa Teddy",
		weight = 50,
		stack = false,
		close = false,
		description = "A Fluffy Pink Teddy from the Atic",
		client = {
			image = "beaniebaby.png",
		}
	},

	["starmie"] = {
		label = "Starmie",
		weight = 0,
		stack = true,
		close = false,
		description = "2/6 for Cascade Badge - Rare",
		client = {
			image = "starmie.png",
		}
	},

	["panqueca-nutela"] = {
		label = "Nutela Pancake",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "panutela.png",
		}
	},

	["chemicals"] = {
		label = "Chemicals",
		weight = 1500,
		stack = true,
		close = false,
		description = "Chemicals, handle with care...",
		client = {
			image = "chemicals.png",
		}
	},

	["huntingcarcass3"] = {
		label = "Level 3 carcass",
		weight = 100,
		stack = true,
		close = true,
		description = "A sellable resource to a certified hunter",
		client = {
			image = "huntingcarcass3.png",
		}
	},

	["raichu"] = {
		label = "Raichu",
		weight = 0,
		stack = true,
		close = false,
		description = "Rare",
		client = {
			image = "raichu.png",
		}
	},

	["burger_sodasyrup"] = {
		label = "Siirup",
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient",
		client = {
			image = "bs_ingredients_hfcs.png",
		}
	},

	["iflag"] = {
		label = "Irish Flag",
		weight = 200,
		stack = true,
		close = true,
		description = "Irish Flag Cocktail",
		client = {
			status = {
				thirst = 23,
			},
			image = "iflag.png",
		}
	},

	["voltorb"] = {
		label = "Voltorb",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "voltorb.png",
		}
	},

	["marijuana_seeds"] = {
		label = "Marijuana Seeds",
		weight = 500,
		stack = true,
		close = true,
		description = "marijuana seeds",
		client = {
			image = "marijuana_seeds.png",
		}
	},

	["aluminumoxide"] = {
		label = "Aluminium Powder",
		weight = 0,
		stack = true,
		close = false,
		description = "Some powder to mix with",
		client = {
			image = "aluminumoxide.png",
		}
	},

	["leather"] = {
		label = "Level 1 Leather ",
		weight = 200,
		stack = true,
		close = true,
		description = "A sellable resource to a certified hunter",
		client = {
			image = "leather.png",
		}
	},

	["keepcompanionpug"] = {
		label = "Pug",
		weight = 500,
		stack = false,
		close = true,
		description = "Pug is your royal companion!",
		client = {
			image = "A_C_Pug.png",
		}
	},

	["togepi"] = {
		label = "Togepi",
		weight = 0,
		stack = true,
		close = false,
		description = "6/6 for Cascade Badge - Rare",
		client = {
			image = "togepi.png",
		}
	},

	["sandwich"] = {
		label = "Võileib",
		weight = 200,
		stack = true,
		close = true,
		description = "Söö raisk",
		client = {
			image = "sandwich.png",
		}
	},

	["chair18"] = {
		label = "Blue Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair18.png",
		}
	},

	["ruby_ring"] = {
		label = "Ruby Ring",
		weight = 200,
		stack = true,
		close = false,
		description = "A ruby ring seems like the jackpot to me!",
		client = {
			image = "ruby_ring.png",
		}
	},

	["bplate"] = {
		label = "Brisket Plate",
		weight = 200,
		stack = true,
		close = true,
		description = "A Brisket Plate",
		client = {
			status = {
				hunger = 42,
			},
			image = "bplate.png",
		}
	},

	["cplate"] = {
		label = "Fish Plate",
		weight = 200,
		stack = true,
		close = true,
		description = "A Catfish Plate",
		client = {
			status = {
				hunger = 41,
			},
			image = "cplate.png",
		}
	},

	["chair34"] = {
		label = "Red Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair34.png",
		}
	},

	["wine"] = {
		label = "Vein",
		weight = 300,
		stack = true,
		close = false,
		description = "Some good wine to drink on a fine evening",
		client = {
			image = "wine.png",
		}
	},

	["chair3"] = {
		label = "Metal Deco Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair3.png",
		}
	},

	["snorlaxvmaxrainbow"] = {
		label = "Rainbox Snorlax",
		weight = 0,
		stack = true,
		close = false,
		description = "Rainbow Card",
		client = {
			image = "snorlaxvmaxrainbow.png",
		}
	},

	["sodiumoxide"] = {
		label = "Sodiumoxide",
		weight = 1000,
		stack = true,
		close = false,
		description = "sodiumoxide.",
		client = {
			image = "aluminumoxide.png",
		}
	},

	["cakepop"] = {
		label = "Cat Cake-Pop",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 41,
			},
			image = "cakepop.png",
		}
	},

	["metaldetector"] = {
		label = "Metal Detector",
		weight = 200,
		stack = true,
		close = true,
		description = "Detect Metal beep",
		client = {
			image = "metaldetector.png",
		}
	},

	["chair16"] = {
		label = "White Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair16.png",
		}
	},

	["psyduck"] = {
		label = "Psyduck",
		weight = 0,
		stack = true,
		close = false,
		description = "3/6 for Cascade Badge",
		client = {
			image = "psyduck.png",
		}
	},

	["empty_weed_bag"] = {
		label = "Empty Weed Bag",
		weight = 0,
		stack = true,
		close = true,
		description = "A small empty bag",
		client = {
			image = "weed_baggy_empty.png",
		}
	},

	["hood"] = {
		label = "Vehicle Hood",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "hood.png",
		}
	},

	["wolfcarcass4"] = {
		label = "Level 4 wolf",
		weight = 125,
		stack = true,
		close = true,
		description = "A sellable resource to an uncertified hunter",
		client = {
			image = "huntingcarcass4.png",
		}
	},

	["ice-tea-pessego"] = {
		label = "Peach Ice Tea",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "icetea.png",
		}
	},

	["laptop_8"] = {
		label = "MemberShip 8",
		weight = 0,
		stack = true,
		close = true,
		description = "Magic Item",
		client = {
			image = "laptop_gold.png",
		}
	},

	["pizzadough"] = {
		label = "Pizza Dough",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "pizzadough.png",
		}
	},

	["chair41"] = {
		label = "Grey Metal Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair41.png",
		}
	},

	["rednails"] = {
		label = "Red Nails",
		weight = 100,
		stack = true,
		close = true,
		description = "Red Nails",
		client = {
			image = "blacknails.png",
		}
	},

	["boarcarcass4"] = {
		label = "Level 4 boar",
		weight = 125,
		stack = true,
		close = true,
		description = "A sellable resource to an uncertified hunter",
		client = {
			image = "huntingcarcass4.png",
		}
	},

	["burger_potato"] = {
		label = "Kott kartuleid",
		weight = 1500,
		stack = true,
		close = true,
		description = "An Ingredient",
		client = {
			image = "bs_potato.png",
		}
	},

	["brussian"] = {
		label = "Black Russian",
		weight = 200,
		stack = true,
		close = true,
		description = "Black Russian Cocktail",
		client = {
			status = {
				thirst = 20,
			},
			image = "brussian.png",
		}
	},

	["nidoking"] = {
		label = "Nidoking",
		weight = 0,
		stack = true,
		close = false,
		description = "2/6 for Earth Badge - Rare",
		client = {
			image = "nidoking.png",
		}
	},

	["lemon"] = {
		label = "Lemon",
		weight = 200,
		stack = true,
		close = false,
		description = "A Lemon.",
		client = {
			image = "lemon.png",
		}
	},

	["coca_leaf"] = {
		label = "Cocaine leaves",
		weight = 1500,
		stack = true,
		close = false,
		description = "Cocaine leaves that must be processed !",
		client = {
			image = "coca_leaf.png",
		}
	},

	["electronickit"] = {
		label = "Elektrooniline seade",
		weight = 100,
		stack = true,
		close = true,
		description = "If you've always wanted to build a robot you can maybe start here. Maybe you'll be the new Elon Musk?",
		client = {
			image = "electronickit.png",
		}
	},

	["coffee"] = {
		label = "Kohv",
		weight = 200,
		stack = true,
		close = true,
		description = "Pump 4 Caffeine",
		client = {
			image = "coffee.png",
		}
	},

	["nekocookie"] = {
		label = "Neko Cookie",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 40,
			},
			image = "catcookie.png",
		}
	},

	["var_usb5"] = {
		label = "Master Key (100%)",
		weight = 1000,
		stack = false,
		close = true,
		description = "Master Key to access encrypted data.",
		client = {
			image = "var_usb.png",
		}
	},

	["helm2"] = {
		label = "Motocross Helmet",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "helmet_16.png",
		}
	},

	["centralchip"] = {
		label = "Central Chip",
		weight = 1000,
		stack = false,
		close = true,
		description = "Hahaha Lets GO NCBoys",
		client = {
			image = "centralchip.png",
		}
	},

	["fishingloot"] = {
		label = "Metal Box",
		weight = 500,
		stack = true,
		close = true,
		description = "Seems to be a corroded from the salt water, Should be easy to open",
		client = {
			image = "fishingloot.png",
		}
	},

	["gallery_regular"] = {
		label = "Gallery Subscription",
		weight = 0,
		stack = true,
		close = true,
		description = "Just a lawyer badge?",
		client = {
			image = "gallery_regular.png",
		}
	},

	["repairkit"] = {
		label = "Parandus Komplekt",
		weight = 2500,
		stack = true,
		close = true,
		description = "A nice toolbox with stuff to repair your vehicle",
		client = {
			image = "repairkit.png",
		}
	},

	["burger_tomato"] = {
		label = "Tomatid",
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient",
		client = {
			image = "bs_tomato.png",
		}
	},

	["crack_baggy"] = {
		label = "Bag of Crack",
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy faster",
		client = {
			image = "crack_baggy.png",
		}
	},

	["cooked_pork"] = {
		label = "Cooked Pork",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cooked_pork.png",
		}
	},

	["ambeer"] = {
		label = "AM Beer",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 48,
			},
			image = "ambeer.png",
		}
	},

	["steeltrash"] = {
		label = "Steel Trash",
		weight = 200,
		stack = true,
		close = false,
		description = "A steel can",
		client = {
			image = "steelcan.png",
		}
	},

	["towingrope"] = {
		label = "Towing Rope",
		weight = 200,
		stack = false,
		close = true,
		description = "Towing Rope",
		client = {
			image = "towingrope.png",
		}
	},

	["armor"] = {
		label = "Armor",
		weight = 15000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?",
		client = {
			image = "armor.png",
		}
	},

	["dewgong"] = {
		label = "Dewgong",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "dewgong.png",
		}
	},

	["silveringot"] = {
		label = "Silver Ingot",
		weight = 1000,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "silveringot.png",
		}
	},

	["gallary_portrait_of_drgachet"] = {
		label = "Portrait of Drgachet",
		weight = 0,
		stack = true,
		close = true,
		description = "Just a lawyer badge?",
		client = {
			image = "gallary_portrait_of_drgachet.png",
		}
	},

	["rolling_paper"] = {
		label = "Rolling Paper",
		weight = 0,
		stack = true,
		close = true,
		description = "Paper made specifically for encasing and smoking tobacco or cannabis.",
		client = {
			image = "rolling_paper.png",
		}
	},

	["laptop_1"] = {
		label = "MemberShip 1",
		weight = 0,
		stack = true,
		close = true,
		description = "Magic Item",
		client = {
			image = "laptop_gold.png",
		}
	},

	["kadabra"] = {
		label = "Kadabra",
		weight = 0,
		stack = true,
		close = false,
		description = "4/6 for Marsh Badge - Rare",
		client = {
			image = "kadabra.png",
		}
	},

	["brakes3"] = {
		label = "Competition Brakes",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "brakes3.png",
		}
	},

	["tanzanite_ring"] = {
		label = "tanzanite_ring",
		weight = 0,
		stack = true,
		close = true,
		description = "tanzanite ring",
		client = {
			image = "np_gallery_tanzanite-ring.png",
		}
	},

	["chair62"] = {
		label = "Green Camping Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair62.png",
		}
	},

	["gallary_mona_lisa"] = {
		label = "Mona Lisa",
		weight = 0,
		stack = true,
		close = true,
		description = "Just a lawyer badge?",
		client = {
			image = "gallary_mona_lisa.png",
		}
	},

	["beer"] = {
		label = "Õlu",
		weight = 500,
		stack = true,
		close = true,
		description = "Nothing like a good cold beer!",
		client = {
			image = "beer.png",
		}
	},

	["greenphone"] = {
		label = "Green Weed Phone",
		weight = 200,
		stack = true,
		close = false,
		description = "A communication device used to contact russian mafia.",
		client = {
			image = "greenphone.png",
		}
	},

	["joint"] = {
		label = "Joint",
		weight = 0,
		stack = true,
		close = true,
		description = "Sidney would be very proud at you",
		client = {
			image = "joint.png",
		}
	},

	["ecola"] = {
		label = "eCola",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 22,
			},
			image = "ecola.png",
		}
	},

	["quantum_cpu"] = {
		label = "Quantum",
		weight = 1000,
		stack = true,
		close = true,
		description = "Sometimes you'd want everything to burn..",
		client = {
			image = "quantum_cpu.png",
		}
	},

	["helm4"] = {
		label = "Full Black helmet",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "helmet_50.png",
		}
	},

	["paramedicbag"] = {
		label = "Paramedic bag",
		weight = 10000,
		stack = false,
		close = true,
		description = "Paramedic bag",
		client = {
			image = "paramedic_bag.png",
		}
	},

	["rainbowvmaxcharizard"] = {
		label = "Rainbow Charizard",
		weight = 0,
		stack = true,
		close = false,
		description = "Rainbow Card",
		client = {
			image = "rainbowvmaxcharizard.png",
		}
	},

	["noscolour"] = {
		label = "NOS Colour Injector",
		weight = 0,
		stack = true,
		close = false,
		description = "Make that purge spray",
		client = {
			image = "noscolour.png",
		}
	},

	["lime"] = {
		label = "Lime",
		weight = 200,
		stack = true,
		close = false,
		description = "A Lime.",
		client = {
			image = "lime.png",
		}
	},

	["steel"] = {
		label = "Steel",
		weight = 0,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
		client = {
			image = "steel.png",
		}
	},

	["venonat"] = {
		label = "Venonat",
		weight = 0,
		stack = true,
		close = false,
		description = "5/6 for Soul Badge",
		client = {
			image = "venonat.png",
		}
	},

	["rum"] = {
		label = "Rum",
		weight = 200,
		stack = true,
		close = true,
		description = "A bottle of Rum",
		client = {
			status = {
				thirst = 30,
			},
			image = "rum.png",
		}
	},

	["weed_amnesia"] = {
		label = "Amnesia 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Amnesia",
		client = {
			image = "weed_baggy.png",
		}
	},

	["zubat"] = {
		label = "Zubat",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "zubat.png",
		}
	},

	["xtcbaggy"] = {
		label = "Bag of XTC",
		weight = 0,
		stack = true,
		close = true,
		description = "Pop those pills baby",
		client = {
			image = "xtc_baggy.png",
		}
	},

	["newsbmic"] = {
		label = "Boom Microphone",
		weight = 100,
		stack = false,
		close = true,
		description = "A Useable BoomMic",
		client = {
			image = "newsbmic.png",
		}
	},

	["var_usb2"] = {
		label = "Master Key (25%)",
		weight = 1000,
		stack = false,
		close = true,
		description = "Combine multiple USBs to create a master encryption key.",
		client = {
			image = "var_usb.png",
		}
	},

	["parasect"] = {
		label = "Parasect",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "parasect.png",
		}
	},

	["marijuana_lighter"] = {
		label = "Lighter",
		weight = 0,
		stack = true,
		close = true,
		description = "Cheap tweaker lighter, Still does the job",
		client = {
			image = "lighter.png",
		}
	},

	["toolbox"] = {
		label = "Tööriista kast",
		weight = 0,
		stack = false,
		close = true,
		description = "Needed for Performance part removal",
		client = {
			image = "toolbox.png",
		}
	},

	["ladder"] = {
		label = "Ladder",
		weight = 5000,
		stack = true,
		close = true,
		description = "A wooden ladder",
		client = {
			image = "ladder.png",
		}
	},

	["sangria"] = {
		label = "Sangria",
		weight = 200,
		stack = true,
		close = true,
		description = "Sangria",
		client = {
			status = {
				thirst = 49,
			},
			image = "sangria.png",
		}
	},

	["lickitung"] = {
		label = "Lickitung",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "lickitung.png",
		}
	},

	["charmander"] = {
		label = "Charmander",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "charmander.png",
		}
	},

	["laptop_7"] = {
		label = "MemberShip 7",
		weight = 0,
		stack = true,
		close = true,
		description = "Magic Item",
		client = {
			image = "laptop_gold.png",
		}
	},

	["chimpcarcass2"] = {
		label = "Level 2 poached chimp",
		weight = 115,
		stack = true,
		close = true,
		description = "A sellable resource to an uncertified hunter",
		client = {
			image = "huntingcarcass2.png",
		}
	},

	["pinacolada"] = {
		label = "Pina Colada",
		weight = 200,
		stack = true,
		close = true,
		description = "Pine Colada",
		client = {
			status = {
				thirst = 50,
			},
			image = "pinacolada.png",
		}
	},

	["wolfcarcass2"] = {
		label = "Level 2 wolf",
		weight = 115,
		stack = true,
		close = true,
		description = "A sellable resource to an uncertified hunter",
		client = {
			image = "huntingcarcass2.png",
		}
	},

	["capricciosa"] = {
		label = "Capriccosa",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 26,
			},
			image = "capricciosa.png",
		}
	},

	["mtlioncarcass4"] = {
		label = "Level 4 mountain lion",
		weight = 150,
		stack = true,
		close = true,
		description = "A sellable resource to a certified hunter",
		client = {
			image = "huntingcarcass4.png",
		}
	},

	["bodycam"] = {
		label = "Body Cam",
		weight = 0,
		stack = true,
		close = true,
		description = "Bodycam For Recording",
		client = {
			image = "bodycam.png",
		}
	},

	["alla"] = {
		label = "Alla Vodka",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 26,
			},
			image = "alla.png",
		}
	},

	["borhani"] = {
		label = "borhani",
		weight = 0,
		stack = true,
		close = true,
		description = "food",
		client = {
			image = "borhani.png",
		}
	},

	["gallary_dragon"] = {
		label = "Golden Dragon",
		weight = 0,
		stack = true,
		close = true,
		description = "Just a lawyer badge?",
		client = {
			image = "gallary_dragon.png",
		}
	},

	["leather1"] = {
		label = "Level 2 Leather ",
		weight = 200,
		stack = true,
		close = true,
		description = "A sellable resource to an uncertified hunter",
		client = {
			image = "leather.png",
		}
	},

	["uncut_sapphire"] = {
		label = "Uncut Sapphire",
		weight = 100,
		stack = true,
		close = false,
		description = "A rough Sapphire",
		client = {
			image = "uncut_sapphire.png",
		}
	},

	["milk"] = {
		label = "Piim",
		weight = 50,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "milk.png",
		}
	},

	["skirts"] = {
		label = "Vehicle Skirts",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "skirts.png",
		}
	},

	["black_usb"] = {
		label = "Black USB",
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to shut down some systems",
		client = {
			image = "black_usb.png",
		}
	},

	["bulletcasings"] = {
		label = "Bullet Casings",
		weight = 200,
		stack = true,
		close = false,
		description = "Bullet Casings",
		client = {
			image = "bulletcasings.png",
		}
	},

	["ramen"] = {
		label = "Bowl of Ramen",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 49,
			},
			image = "ramen.png",
		}
	},

	["chair67"] = {
		label = "White Metal Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair67.png",
		}
	},

	["kamikaze"] = {
		label = "Kamikaze",
		weight = 200,
		stack = true,
		close = true,
		description = "Kamikase Cocktail",
		client = {
			status = {
				thirst = 24,
			},
			image = "kamikaze.png",
		}
	},

	["bean-sprunk"] = {
		label = "Sprunk",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "sprunk.png",
		}
	},

	["boombox_tape_branchez7"] = {
		label = "BoomBox Tape #7",
		weight = 500,
		stack = true,
		close = true,
		description = "Tape #7",
		client = {
			image = "boombox_tape_branchez7.png",
		}
	},

	["mew"] = {
		label = "Mew",
		weight = 0,
		stack = true,
		close = false,
		description = "Ultra Rare",
		client = {
			image = "mew.png",
		}
	},

	["disabler"] = {
		label = "Disabler",
		weight = 500,
		stack = true,
		close = true,
		description = "Something for dystoying",
		client = {
			image = "disabler.png",
		}
	},

	["beef"] = {
		label = "Beef",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "beef.png",
		}
	},

	["laptop_red"] = {
		label = "Red Laptop",
		weight = 15000,
		stack = false,
		close = true,
		description = "A security Laptop",
		client = {
			image = "laptop_red.png",
		}
	},

	["emptycowbucket"] = {
		label = "Empty Bucket",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "emptybucket.png",
		}
	},

	["brokenknife"] = {
		label = "Broken Knife",
		weight = 200,
		stack = true,
		close = false,
		description = "Rusted Knife",
		client = {
			image = "brokenknife.png",
		}
	},

	["toastbacon"] = {
		label = "Bacon and Toast",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 21,
			},
			image = "toastbacon.png",
		}
	},

	["gold_usb"] = {
		label = "Gold USB",
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to shut down some systems",
		client = {
			image = "gold_usb.png",
		}
	},

	["blue_access_card"] = {
		label = "Sinine kaart",
		weight = 0,
		stack = true,
		close = true,
		description = "A card... I wonder what it goes to",
		client = {
			image = "cb.png",
		}
	},

	["rainbowbadge"] = {
		label = "RainbowBadge",
		weight = 0,
		stack = true,
		close = false,
		description = "4/6 for Rainbow Badge",
		client = {
			image = "rainbowBadge.png",
		}
	},

	["burger_murdermeal"] = {
		label = "Suur eine",
		weight = 125,
		stack = true,
		close = true,
		description = "An Amazing Murder Meal with a chance of a toy.",
		client = {
			image = "burger_box.png",
		}
	},

	["tracker"] = {
		label = "Tracker",
		weight = 1000,
		stack = false,
		close = true,
		description = "Hahaha Lets GO NCBoys",
		client = {
			image = "tracker.png",
		}
	},

	["chair52"] = {
		label = "Worn Metal Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair52.png",
		}
	},

	["laptop_6"] = {
		label = "MemberShip 6",
		weight = 0,
		stack = true,
		close = true,
		description = "Magic Item",
		client = {
			image = "laptop_gold.png",
		}
	},

	["miso"] = {
		label = "Miso Soup",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 47,
			},
			image = "miso.png",
		}
	},

	["boosterbox"] = {
		label = "Boosterbox",
		weight = 200,
		stack = true,
		close = true,
		description = "Box Of Card Packs",
		client = {
			image = "boosterBox.png",
		}
	},

	["chair64"] = {
		label = "Striped Camping Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair64.png",
		}
	},

	["mesa_craft"] = {
		label = "Crafting table",
		weight = 70000,
		stack = true,
		close = true,
		description = "Good job! - now you can craft weapons. enjoy 3 days.",
		client = {
			image = "mesa_craft.png",
		}
	},

	["arbok"] = {
		label = "Arbok",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "arbok.png",
		}
	},

	["cocainekey"] = {
		label = "Key B",
		weight = 200,
		stack = true,
		close = false,
		description = "Random Key, with a Razorblade Engraved on the Back...",
		client = {
			image = "keyb.png",
		}
	},

	["fishingkey"] = {
		label = "Corroded Key",
		weight = 100,
		stack = true,
		close = true,
		description = "A weathered key that looks usefull",
		client = {
			image = "fishingkey.png",
		}
	},

	["gallary_les_femmes_dalger"] = {
		label = "Les Femme Dalger",
		weight = 0,
		stack = true,
		close = true,
		description = "Just a lawyer badge?",
		client = {
			image = "gallary_les_femmes_dalger.png",
		}
	},

	["victreebel"] = {
		label = "Victreebel",
		weight = 0,
		stack = true,
		close = false,
		description = "1/6 for Rainbow Badge",
		client = {
			image = "victreebel.png",
		}
	},

	["vaporeon"] = {
		label = "Vaporeon",
		weight = 0,
		stack = true,
		close = false,
		description = "Rare",
		client = {
			image = "vaporeon.png",
		}
	},

	["zwart1"] = {
		label = "Full Black Mask",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "Clothing_1_28.png",
		}
	},

	["geodude"] = {
		label = "Geodude",
		weight = 0,
		stack = true,
		close = false,
		description = "6/6 for Boulder Badge",
		client = {
			image = "geodude.png",
		}
	},

	["vodka"] = {
		label = "Vodka",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "vodka.png",
		}
	},

	["cryptostick"] = {
		label = "Krüpto pulk",
		weight = 200,
		stack = false,
		close = true,
		description = "Why would someone ever buy money that doesn't exist.. How many would it contain..?",
		client = {
			image = "cryptostick.png",
		}
	},

	["internals"] = {
		label = "Internal Cosmetics",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "internals.png",
		}
	},

	["gallary_skull"] = {
		label = "Skull",
		weight = 0,
		stack = true,
		close = true,
		description = "Just a lawyer badge?",
		client = {
			image = "gallary_skull.png",
		}
	},

	["strawberry"] = {
		label = "Strawberry",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 45,
			},
			image = "strawberry.png",
		}
	},

	["magneton"] = {
		label = "Magneton",
		weight = 0,
		stack = true,
		close = false,
		description = "6/6 for Thunder Badge",
		client = {
			image = "magneton.png",
		}
	},

	["packagedchicken"] = {
		label = "packagedchicken",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "packagedchicken.png",
		}
	},

	["weed_purple-haze"] = {
		label = "Purple Haze 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Purple Haze",
		client = {
			image = "weed_baggy.png",
		}
	},

	["marijuana_trowel"] = {
		label = "Trowel",
		weight = 0,
		stack = true,
		close = true,
		description = "Small handheld garden shovel",
		client = {
			image = "marijuana_trowel.png",
		}
	},

	["deercarcass2"] = {
		label = "Level 2 poached deer",
		weight = 115,
		stack = true,
		close = true,
		description = "A sellable resource to an uncertified hunter",
		client = {
			image = "huntingcarcass2.png",
		}
	},

	["meth"] = {
		label = "Meth",
		weight = 500,
		stack = true,
		close = false,
		description = "Really addictive stimulant...",
		client = {
			image = "meth.png",
		}
	},

	["seel"] = {
		label = "Seel",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "seel.png",
		}
	},

	["nori"] = {
		label = "Nori",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "nori.png",
		}
	},

	["hypno"] = {
		label = "Hypno",
		weight = 0,
		stack = true,
		close = false,
		description = "5/6 for Marsh Badge",
		client = {
			image = "hypno.png",
		}
	},

	["rhinohorn"] = {
		label = "Rhino Horn",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "rhinohorn.png",
		}
	},

	["machoke"] = {
		label = "Machoke",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "machoke.png",
		}
	},

	["chair30"] = {
		label = "Light Grey Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair30.png",
		}
	},

	["antiquecoin"] = {
		label = "Antique Coin",
		weight = 200,
		stack = true,
		close = false,
		description = "This seems old...",
		client = {
			image = "antiquecoin.png",
		}
	},

	["pidgey"] = {
		label = "Pidgey",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "pidgey.png",
		}
	},

	["paardu"] = {
		label = "Uinicorn Mask",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "Clothing_1_98.png",
		}
	},

	["magicitem12"] = {
		label = "[SPARE] Book Purple",
		weight = 0,
		stack = true,
		close = true,
		description = "Magic Item",
		client = {
			image = "MagicBookPurple.png",
		}
	},

	["aerodactyl"] = {
		label = "Aerodactyl",
		weight = 0,
		stack = true,
		close = false,
		description = "Ultra Rare",
		client = {
			image = "aerodactyl.png",
		}
	},

	["cutter"] = {
		label = "Cutter",
		weight = 550,
		stack = true,
		close = true,
		description = "Cutter",
		client = {
			image = "cutter.png",
		}
	},

	["cokebaggy"] = {
		label = "Bag of Coke",
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy real quick",
		client = {
			image = "cocaine_baggy.png",
		}
	},

	["vmaxpikachu"] = {
		label = "Pikachu Vmax",
		weight = 0,
		stack = true,
		close = false,
		description = "Vmax Card",
		client = {
			image = "vmaxpikachu.png",
		}
	},

	["pill"] = {
		label = "Pill",
		weight = 500,
		stack = true,
		close = true,
		description = "edit here",
		client = {
			image = "pill.png",
		}
	},

	["laptop_5"] = {
		label = "MemberShip 5",
		weight = 0,
		stack = true,
		close = true,
		description = "Magic Item",
		client = {
			image = "laptop_gold.png",
		}
	},

	["bean-agua"] = {
		label = "Water",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "water_bottle.png",
		}
	},

	["golbat"] = {
		label = "Golbat",
		weight = 0,
		stack = true,
		close = false,
		description = "6/6 for Soul Badge",
		client = {
			image = "golbat.png",
		}
	},

	["boombox_tape_branchez8"] = {
		label = "BoomBox Tape #8",
		weight = 500,
		stack = true,
		close = true,
		description = "Tape #8",
		client = {
			image = "boombox_tape_branchez8.png",
		}
	},

	["notepad"] = {
		label = "Notepad",
		weight = 100,
		stack = true,
		close = 1,
		description = "",
		client = {
			image = "notepad.png",
		}
	},

	["marijuana_1oz_high"] = {
		label = "1oz marijuana",
		weight = 2800,
		stack = false,
		close = false,
		description = "1oz high grade marijuana",
		client = {
			image = "marijuana.png",
		}
	},

	["ninetails"] = {
		label = "Ninetails",
		weight = 0,
		stack = true,
		close = false,
		description = "3/6 for Volcano badge",
		client = {
			image = "ninetails.png",
		}
	},

	["weed_og-kush_seed"] = {
		label = "OGKush Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of OG Kush",
		client = {
			image = "weed_seed.png",
		}
	},

	["chair109"] = {
		label = "Cream Wicker Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair109.png",
		}
	},

	["deercarcass4"] = {
		label = "Level 4 poached deer",
		weight = 125,
		stack = true,
		close = true,
		description = "A sellable resource to an uncertified hunter",
		client = {
			image = "huntingcarcass4.png",
		}
	},

	["sodiumchloride"] = {
		label = "Sodiumchloride",
		weight = 1000,
		stack = true,
		close = false,
		description = "sodiumchloride.",
		client = {
			image = "sodiumchloride.png",
		}
	},

	["farfetchd"] = {
		label = "Farfetchd",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "farfetchd.png",
		}
	},

	["chair20"] = {
		label = "Blue Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair20.png",
		}
	},

	["boosterpack"] = {
		label = "Boosterpack",
		weight = 0,
		stack = true,
		close = true,
		description = "Pack of Cards",
		client = {
			image = "boosterPack.png",
		}
	},

	["gold_ring"] = {
		label = "Gold Ring",
		weight = 200,
		stack = true,
		close = false,
		description = "A gold ring seems like the jackpot to me!",
		client = {
			image = "gold_ring.png",
		}
	},

	["chair47"] = {
		label = "Black Wicker Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair47.png",
		}
	},

	["boulderbadge"] = {
		label = "boulderbadge",
		weight = 0,
		stack = true,
		close = false,
		description = "1/8 for Trophy Badge",
		client = {
			image = "boulderBadge.png",
		}
	},

	["volcanobadge"] = {
		label = "Volcano Badge",
		weight = 0,
		stack = true,
		close = false,
		description = "7/8 for Trophy Badge",
		client = {
			image = "volcanoBadge.png",
		}
	},

	["poliwag"] = {
		label = "Poliwag",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "poliwag.png",
		}
	},

	["laptop_green"] = {
		label = "Green Laptop",
		weight = 15000,
		stack = false,
		close = true,
		description = "A security Laptop",
		client = {
			image = "laptop_green.png",
		}
	},

	["keepcompanionpoodle"] = {
		label = "Poodle",
		weight = 500,
		stack = false,
		close = true,
		description = "Poodle is your royal companion!",
		client = {
			image = "A_C_Poodle.png",
		}
	},

	["esv_chain"] = {
		label = "Vagos Chain",
		weight = 50,
		stack = true,
		close = false,
		description = "ESV Chain",
		client = {
			image = "np_vagos_chain.png",
		}
	},

	["dodrio"] = {
		label = "Dodrio",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "dodrio.png",
		}
	},

	["laptop_2"] = {
		label = "MemberShip 2",
		weight = 0,
		stack = true,
		close = true,
		description = "Magic Item",
		client = {
			image = "laptop_gold.png",
		}
	},

	["weedkey"] = {
		label = "Key C",
		weight = 200,
		stack = true,
		close = false,
		description = "Random Key, with a Seed Engraved on the Back...",
		client = {
			image = "keyc.png",
		}
	},

	["aquamarine_ring"] = {
		label = "Aquamarine Ring",
		weight = 0,
		stack = true,
		close = true,
		description = "aquamarine ring",
		client = {
			image = "np_gallery_aquamarine-ring.png",
		}
	},

	["chair84"] = {
		label = "Orange Deco Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair84.png",
		}
	},

	["nitrous"] = {
		label = "Nitro",
		weight = 1000,
		stack = true,
		close = true,
		description = "Speed up, gas pedal! :D",
		client = {
			image = "nitrous.png",
		}
	},

	["eggsandwich"] = {
		label = "Eggs Sandwich",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 29,
			},
			image = "eggsandwich.png",
		}
	},

	["wings"] = {
		label = "Plate of Wings",
		weight = 200,
		stack = true,
		close = true,
		description = "A plate of Chicken Wings",
		client = {
			status = {
				hunger = 44,
			},
			image = "wings.png",
		}
	},

	["magmar"] = {
		label = "Magmar",
		weight = 0,
		stack = true,
		close = false,
		description = "4/6 for Volcano Badge",
		client = {
			image = "magmar.png",
		}
	},

	["cigar"] = {
		label = "cigar",
		weight = 40,
		stack = false,
		close = true,
		description = "Time for a smoke",
		client = {
			image = "cigar.png",
		}
	},

	["chair78"] = {
		label = "Wine Red Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair78.png",
		}
	},

	["gatecrack"] = {
		label = "Aiamuuk",
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to tear down some fences",
		client = {
			image = "usb_device.png",
		}
	},

	["mystery_expensivebox"] = {
		label = "Super Mystery Box",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mystery_expensiveBox.png",
		}
	},

	["bean-cola"] = {
		label = "Coke",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cola.png",
		}
	},

	["longisland"] = {
		label = "Long Island Ice tea",
		weight = 200,
		stack = true,
		close = true,
		description = "Long Island Ice Tea",
		client = {
			status = {
				thirst = 41,
			},
			image = "longisland.png",
		}
	},

	["zak"] = {
		label = "Bag Mask",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "Clothing_1_49.png",
		}
	},

	["killerwhale"] = {
		label = "Whale",
		weight = 15000,
		stack = false,
		close = false,
		description = "Killer Whale",
		client = {
			image = "killerwhale.png",
		}
	},

	["burger_fries"] = {
		label = "Friikartulid",
		weight = 125,
		stack = true,
		close = true,
		description = "Sates Hunger.",
		client = {
			image = "bs_fries.png",
		}
	},

	["snikkel_candy"] = {
		label = "Snickers",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious candy :O",
		client = {
			image = "snikkel_candy.png",
		}
	},

	["butterfree"] = {
		label = "Butterfree",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "butterfree.png",
		}
	},

	["diamond_ring_silver"] = {
		label = "Diamond Ring Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "diamond_ring_silver.png",
		}
	},

	["chair92"] = {
		label = "Brown Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair92.png",
		}
	},

	["metalscrap"] = {
		label = "Metal Scrap",
		weight = 0,
		stack = true,
		close = false,
		description = "You can probably make something nice out of this",
		client = {
			image = "metalscrap.png",
		}
	},

	["security_card_03"] = {
		label = "Turva kaart C",
		weight = 0,
		stack = true,
		close = true,
		description = "A Turva kaart... I wonder what it goes to",
		client = {
			image = "security_card_03.png",
		}
	},

	["sapphire_necklace_silver"] = {
		label = "Sapphire Necklace Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sapphire_necklace_silver.png",
		}
	},

	["chair61"] = {
		label = "Cream Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair61.png",
		}
	},

	["pizzmushrooms"] = {
		label = "Mushrooms",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "mushrooms.png",
		}
	},

	["chair35"] = {
		label = "Ergonomic Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair35.png",
		}
	},

	["capricciosabox"] = {
		label = "Boxed Capriccosa",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pizzabox.png",
		}
	},

	["chair14"] = {
		label = "White Leather Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair14.png",
		}
	},

	["cha"] = {
		label = "cha",
		weight = 0,
		stack = true,
		close = true,
		description = "cha",
		client = {
			image = "cha.png",
		}
	},

	["panqueca-mel"] = {
		label = "Honey Pancake",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "panutela.png",
		}
	},

	["metapod"] = {
		label = "Metapod",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "metapod.png",
		}
	},

	["magicitem5"] = {
		label = "[HEAL] Potion of Healing",
		weight = 0,
		stack = true,
		close = true,
		description = "Magic Item",
		client = {
			image = "MagicPotionRed.png",
		}
	},

	["twerks_candy"] = {
		label = "Twix",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious candy :O",
		client = {
			image = "twerks_candy.png",
		}
	},

	["burger_mshake"] = {
		label = "Vahustatud piim",
		weight = 125,
		stack = true,
		close = true,
		description = "Hand-scooped for you!",
		client = {
			image = "bs_milkshake.png",
		}
	},

	["sake"] = {
		label = "Sake",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 48,
			},
			image = "sake.png",
		}
	},

	["boarcarcass3"] = {
		label = "Level 3 boar",
		weight = 120,
		stack = true,
		close = true,
		description = "A sellable resource to an uncertified hunter",
		client = {
			image = "huntingcarcass3.png",
		}
	},

	["chair17"] = {
		label = "Green Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair17.png",
		}
	},

	["staryu"] = {
		label = "Staryu",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "staryu.png",
		}
	},

	["fish"] = {
		label = "CatFish",
		weight = 200,
		stack = true,
		close = false,
		description = "A Catfish",
		client = {
			status = {
				hunger = 47,
			},
			image = "fish.png",
		}
	},

	["tillie"] = {
		label = "Tillie Mae",
		weight = 200,
		stack = true,
		close = true,
		description = "The Tillie Mae Special",
		client = {
			status = {
				thirst = 28,
			},
			image = "tillie.png",
		}
	},

	["iodine"] = {
		label = "Iodine",
		weight = 500,
		stack = true,
		close = true,
		description = "edit here",
		client = {
			image = "iodine.png",
		}
	},

	["gallary_trophy2"] = {
		label = "Food Trophy",
		weight = 0,
		stack = true,
		close = true,
		description = "Just a lawyer badge?",
		client = {
			image = "gallary_trophy2.png",
		}
	},

	["gallary_maltese_falcon"] = {
		label = "Maltese Falcon",
		weight = 0,
		stack = true,
		close = true,
		description = "Just a lawyer badge?",
		client = {
			image = "gallary_maltese_falcon.png",
		}
	},

	["bumper"] = {
		label = "Vehicle Bumper",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "bumper.png",
		}
	},

	["logger"] = {
		label = "Logger Beer",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 44,
			},
			image = "logger.png",
		}
	},

	["cupcake-morango"] = {
		label = "Straberry Cupcake",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cupmorango.png",
		}
	},

	["security_card_01"] = {
		label = "Turva kaart A",
		weight = 0,
		stack = true,
		close = true,
		description = "A Turva kaart... I wonder what it goes to",
		client = {
			image = "security_card_01.png",
		}
	},

	["boombox_tape_branchez6"] = {
		label = "BoomBox Tape #6",
		weight = 500,
		stack = true,
		close = true,
		description = "Tape #6",
		client = {
			image = "boombox_tape_branchez6.png",
		}
	},

	["ducttape"] = {
		label = "Teip",
		weight = 0,
		stack = true,
		close = true,
		description = "Good for quick fixes",
		client = {
			image = "bodyrepair.png",
		}
	},

	["keepcompanionmtlion2"] = {
		label = "Panter",
		weight = 500,
		stack = false,
		close = true,
		description = "Panter is your royal companion!",
		client = {
			image = "A_C_MtLion.png",
		}
	},

	["schnapps"] = {
		label = "Peach Schnapps",
		weight = 200,
		stack = true,
		close = true,
		description = "A bottle of Peach Schnapps",
		client = {
			status = {
				thirst = 20,
			},
			image = "schnapps.png",
		}
	},

	["venusaurv"] = {
		label = "Venusaur V",
		weight = 0,
		stack = true,
		close = false,
		description = "V Card",
		client = {
			image = "venusaurv.png",
		}
	},

	["charmeleon"] = {
		label = "Charmeleon",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "charmeleon.png",
		}
	},

	["chansey"] = {
		label = "Chansey",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "chansey.png",
		}
	},

	["koil_chain"] = {
		label = "Sloth Chain",
		weight = 50,
		stack = true,
		close = false,
		description = "KOIL Chain",
		client = {
			image = "np_sloth_chain.png",
		}
	},

	["sauce"] = {
		label = "Tomato Sauce",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sauce.png",
		}
	},

	["boarcarcass1"] = {
		label = "Level 1 boar",
		weight = 100,
		stack = true,
		close = true,
		description = "A sellable resource to an uncertified hunter",
		client = {
			image = "huntingcarcass1.png",
		}
	},

	["casinochips"] = {
		label = "Casino Chips",
		weight = 0,
		stack = true,
		close = false,
		description = "Chips For Casino Gambling",
		client = {
			image = "casinochips.png",
		}
	},

	["deercarcass3"] = {
		label = "Level 3 poached deer",
		weight = 120,
		stack = true,
		close = true,
		description = "A sellable resource to an uncertified hunter",
		client = {
			image = "huntingcarcass3.png",
		}
	},

	["ruby_earring"] = {
		label = "Ruby Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ruby_earring.png",
		}
	},

	["pisswasser3"] = {
		label = "Pißwasser Pale Ale",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 47,
			},
			image = "pisswaser3.png",
		}
	},

	["security_card_04"] = {
		label = "Turva kaart D",
		weight = 0,
		stack = true,
		close = true,
		description = "A Turva kaart... I wonder what it goes to",
		client = {
			image = "security_card_04.png",
		}
	},

	["lettuce"] = {
		label = "Lettuce",
		weight = 100,
		stack = true,
		close = false,
		description = "Some big taco brother",
		client = {
			image = "lettuce.png",
		}
	},

	["keepcompanionrabbit"] = {
		label = "Rabbit",
		weight = 500,
		stack = false,
		close = true,
		description = "Rabbit is your royal companion!",
		client = {
			image = "A_C_Rabbit_01.png",
		}
	},

	["burger_meat"] = {
		label = "Cooked Patty",
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient",
		client = {
			image = "bs_patty.png",
		}
	},

	["growlithe"] = {
		label = "Growlithe",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "growlithe.png",
		}
	},

	["vulpix"] = {
		label = "Vulpix",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "vulpix.png",
		}
	},

	["guitar"] = {
		label = "Guitar",
		weight = 0,
		stack = true,
		close = true,
		description = "guitar",
		client = {
			image = "guitar.png",
		}
	},

	["burger_raw"] = {
		label = "Raw Patty",
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient",
		client = {
			image = "bs_patty_raw.png",
		}
	},

	["ice-tea-limao"] = {
		label = "Lemon Ice Tea",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "icetea.png",
		}
	},

	["chair45"] = {
		label = "Dark Brown Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair45.png",
		}
	},

	["fruit_pack"] = {
		label = "Fruit Pack",
		weight = 300,
		stack = true,
		close = true,
		description = "Fruit Pack",
		client = {
			image = "fruit_pack.png",
		}
	},

	["beandonut"] = {
		label = "Donut",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 22,
			},
			image = "popdonut.png",
		}
	},

	["casino_vip"] = {
		label = "V.I.P Membership",
		weight = 500,
		stack = false,
		close = false,
		description = "Diamond Casino V.I.P Card",
		client = {
			image = "casino_vip.png",
		}
	},

	["tomato"] = {
		label = "tomato",
		weight = 15,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tomato.png",
		}
	},

	["polywhirl"] = {
		label = "Polywhirl",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "polywhirl.png",
		}
	},

	["chair24"] = {
		label = "Old White Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair24.png",
		}
	},

	["grapejuice"] = {
		label = "Grape Juice",
		weight = 15,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "grapejuice.png",
		}
	},

	["kurkakola"] = {
		label = "Coca Cola",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "cola.png",
		}
	},

	["nekolatte"] = {
		label = "Neko Latte",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 41,
			},
			image = "latte.png",
		}
	},

	["weedscissors"] = {
		label = "Weed Scissors",
		weight = 1000,
		stack = true,
		close = true,
		description = "Weed Scissors",
		client = {
			image = "weedscissors.png",
		}
	},

	["chair70"] = {
		label = "Dark Brown Metal Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair70.png",
		}
	},

	["chair36"] = {
		label = "Comfy Ergonomic Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair36.png",
		}
	},

	["chair102"] = {
		label = "Red Deco Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair102.png",
		}
	},

	["chair26"] = {
		label = "Blue Plastic Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair26.png",
		}
	},

	["laptop_11"] = {
		label = "MemberShip 11",
		weight = 0,
		stack = true,
		close = true,
		description = "Magic Item",
		client = {
			image = "laptop_gold.png",
		}
	},

	["noscan"] = {
		label = "Empty NOS Bottle",
		weight = 0,
		stack = true,
		close = false,
		description = "An Empty bottle of NOS",
		client = {
			image = "noscan.png",
		}
	},

	["magicitem4"] = {
		label = "[DRUNK] Potion of Confusion",
		weight = 0,
		stack = true,
		close = true,
		description = "Magic Item",
		client = {
			image = "MagicPotionPink.png",
		}
	},

	["drifttires"] = {
		label = "Drift Tires",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "drifttires.png",
		}
	},

	["meatball"] = {
		label = "Homemade Meatballs",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 21,
			},
			image = "meatball.png",
		}
	},

	["gallary_egg"] = {
		label = "Golden Egg",
		weight = 0,
		stack = true,
		close = true,
		description = "Just a lawyer badge?",
		client = {
			image = "gallary_egg.png",
		}
	},

	["sprunk"] = {
		label = "Sprunk",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 25,
			},
			image = "sprunk.png",
		}
	},

	["skullr"] = {
		label = "No Skin Mask",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "Clothing_1_99.png",
		}
	},

	["codfish"] = {
		label = "Cod",
		weight = 2500,
		stack = false,
		close = false,
		description = "Cod",
		client = {
			image = "codfish.png",
		}
	},

	["washedstone"] = {
		label = "Washed Stone",
		weight = 3500,
		stack = true,
		close = false,
		description = "ORE",
		client = {
			image = "washedstone.png",
		}
	},

	["police_stormram"] = {
		label = "Stormram",
		weight = 18000,
		stack = true,
		close = true,
		description = "A nice tool to break into doors",
		client = {
			image = "police_stormram.png",
		}
	},

	["engine2"] = {
		label = "V8 Engine",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "v8engine.png",
		}
	},

	["rubber"] = {
		label = "Rubber",
		weight = 0,
		stack = true,
		close = false,
		description = "Rubber, I believe you can make your own rubber ducky with it :D",
		client = {
			image = "rubber.png",
		}
	},

	["ruby_necklace"] = {
		label = "Ruby Necklace",
		weight = 200,
		stack = true,
		close = false,
		description = "A ruby necklace seems like the jackpot to me!",
		client = {
			image = "ruby_necklace.png",
		}
	},

	["chair5"] = {
		label = "Old Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair5.png",
		}
	},

	["cake"] = {
		label = "Strawberry Cake",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 46,
			},
			image = "cake.png",
		}
	},

	["moltres"] = {
		label = "Moltres",
		weight = 0,
		stack = true,
		close = false,
		description = "6/6 for Volcano Badge - Ultra Rare",
		client = {
			image = "moltres.png",
		}
	},

	["drowzee"] = {
		label = "Drowzee",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "drowzee.png",
		}
	},

	["chair99"] = {
		label = "Gamer Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair99.png",
		}
	},

	["spearow"] = {
		label = "Spearow",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "spearow.png",
		}
	},

	["forceps"] = {
		label = "Forceps",
		weight = 500,
		stack = true,
		close = true,
		description = "edit here",
		client = {
			image = "forceps.png",
		}
	},

	["security_card_02"] = {
		label = "Turva kaart B",
		weight = 0,
		stack = true,
		close = true,
		description = "A Turva kaart... I wonder what it goes to",
		client = {
			image = "security_card_02.png",
		}
	},

	["chair74"] = {
		label = "Yellow Deco Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair74.png",
		}
	},

	["cooked_bacon"] = {
		label = "Cooked Bacon",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cooked_bacon.png",
		}
	},

	["pumpkinpiebox"] = {
		label = "Box of Pie",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pumpkinpiebox.png",
		}
	},

	["mewv"] = {
		label = "Mew V",
		weight = 0,
		stack = true,
		close = false,
		description = "V Card",
		client = {
			image = "mewv.png",
		}
	},

	["omochi"] = {
		label = "Orange Mochi",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 43,
			},
			image = "mochiorange.png",
		}
	},

	["cannabis"] = {
		label = "Cannabis",
		weight = 2500,
		stack = true,
		close = true,
		description = "Uncured cannabis",
		client = {
			image = "cannabis.png",
		}
	},

	["pizzabase"] = {
		label = "Pizza Base",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "base2.png",
		}
	},

	["clown"] = {
		label = "Clown Mask",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "Clothing_1_95.png",
		}
	},

	["drill"] = {
		label = "Puur",
		weight = 200,
		stack = true,
		close = false,
		description = "The real deal...",
		client = {
			image = "drill.png",
		}
	},

	["scarecrowmask"] = {
		label = "Scarecrowmask",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "Clothing_1_69.png",
		}
	},

	["sbullet"] = {
		label = "Silver Bullet",
		weight = 200,
		stack = true,
		close = true,
		description = "Silver Bullet Cocktail",
		client = {
			status = {
				thirst = 30,
			},
			image = "sbullet.png",
		}
	},

	["pmochi"] = {
		label = "Pink Mochi",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 43,
			},
			image = "mochipink.png",
		}
	},

	["snorlaxv"] = {
		label = "Snorlax V",
		weight = 0,
		stack = true,
		close = false,
		description = "V Card",
		client = {
			image = "snorlaxv.png",
		}
	},

	["silver"] = {
		label = "Silver Mask",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "Clothing_1_16.png",
		}
	},

	["chair51"] = {
		label = "Green Lawn Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair51.png",
		}
	},

	["pinknails"] = {
		label = "Pink Nails",
		weight = 100,
		stack = true,
		close = true,
		description = "Pink Nails",
		client = {
			image = "blacknails.png",
		}
	},

	["vape"] = {
		label = "Vape",
		weight = 500,
		stack = true,
		close = true,
		description = "Blow clouds",
		client = {
			image = "vape.png",
		}
	},

	["copperore"] = {
		label = "Copper Ore",
		weight = 1000,
		stack = true,
		close = false,
		description = "Copper, a base ore.",
		client = {
			image = "copperore.png",
		}
	},

	["pescatore"] = {
		label = "Pescatore",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 27,
			},
			image = "pescatore.png",
		}
	},

	["boombox_tape_branchez9"] = {
		label = "BoomBox Tape #9",
		weight = 500,
		stack = true,
		close = true,
		description = "Tape #9",
		client = {
			image = "boombox_tape_branchez9.png",
		}
	},

	["nightvision"] = {
		label = "Night Vision goggles",
		weight = 5,
		stack = false,
		close = true,
		description = "Bravo Six, going dark",
		client = {
			image = "nightvision.png",
		}
	},

	["fishingboot"] = {
		label = "Fishing Boot",
		weight = 2500,
		stack = true,
		close = false,
		description = "Fishing Boot",
		client = {
			image = "fishingboot.png",
		}
	},

	["uncut_ruby"] = {
		label = "Uncut Ruby",
		weight = 100,
		stack = true,
		close = false,
		description = "A rough Ruby",
		client = {
			image = "uncut_ruby.png",
		}
	},

	["primeape"] = {
		label = "Primeape",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "primeape.png",
		}
	},

	["laptop_10"] = {
		label = "MemberShip 10",
		weight = 0,
		stack = true,
		close = true,
		description = "Magic Item",
		client = {
			image = "laptop_gold.png",
		}
	},

	["dolphin"] = {
		label = "Dolphin",
		weight = 5000,
		stack = false,
		close = false,
		description = "Dolphin",
		client = {
			image = "dolphin.png",
		}
	},

	["labkey"] = {
		label = "Key",
		weight = 500,
		stack = false,
		close = true,
		description = "Key for a lock...?",
		client = {
			image = "labkey.png",
		}
	},

	["cosmopolitan"] = {
		label = "Cosmopolitan",
		weight = 200,
		stack = true,
		close = true,
		description = "Cosmopolitan",
		client = {
			status = {
				thirst = 48,
			},
			image = "cosmopolitan.png",
		}
	},

	["gameboy"] = {
		label = "Gameboy",
		weight = 200,
		stack = true,
		close = true,
		description = "A working Gameboy.",
		client = {
			image = "nc_toy.png",
		}
	},

	["bowlingball"] = {
		label = "Bowling Ball",
		weight = 150,
		stack = true,
		close = true,
		description = "Bowling Ball",
		client = {
			image = "bowlingball.png",
		}
	},

	["glass"] = {
		label = "Glass",
		weight = 0,
		stack = true,
		close = false,
		description = "It is very fragile, watch out",
		client = {
			image = "glass.png",
		}
	},

	["miningdrill"] = {
		label = "Mining Drill",
		weight = 1000,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "miningdrill.png",
		}
	},

	["chair80"] = {
		label = "Orange Louncher",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair80.png",
		}
	},

	["chair2"] = {
		label = "Wood Lounger",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair2.png",
		}
	},

	["obobatea"] = {
		label = "Orange Boba Tea",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 40,
			},
			image = "bubbleteaorange.png",
		}
	},

	["huntingcarcass4"] = {
		label = "Level 4 carcass",
		weight = 100,
		stack = true,
		close = true,
		description = "A sellable resource to a certified hunter",
		client = {
			image = "huntingcarcass4.png",
		}
	},

	["methkey"] = {
		label = "Key A",
		weight = 200,
		stack = true,
		close = false,
		description = "Random Key, with Walter Engraved on the Back...",
		client = {
			image = "keya.png",
		}
	},

	["chair93"] = {
		label = "Brown Luxury Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair93.png",
		}
	},

	["irontrash"] = {
		label = "Iron Trash",
		weight = 200,
		stack = true,
		close = false,
		description = "Trashed Iron",
		client = {
			image = "irontrash.png",
		}
	},

	["bellini"] = {
		label = "Bellini",
		weight = 200,
		stack = true,
		close = true,
		description = "Bellini",
		client = {
			status = {
				thirst = 50,
			},
			image = "bellini.png",
		}
	},

	["raw_pork"] = {
		label = "Raw Pork",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "raw_pork.png",
		}
	},

	["huntingcarcass2"] = {
		label = "Level 2 carcass",
		weight = 100,
		stack = true,
		close = true,
		description = "A sellable resource to a certified hunter",
		client = {
			image = "huntingcarcass2.png",
		}
	},

	["chair53"] = {
		label = "Fancy Garden Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair53.png",
		}
	},

	["poliwrath"] = {
		label = "Poliwrath",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "poliwrath.png",
		}
	},

	["chair91"] = {
		label = "White Leather Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair91.png",
		}
	},

	["gmochi"] = {
		label = "Green Mochi",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 41,
			},
			image = "mochigreen.png",
		}
	},

	["emerald_necklace"] = {
		label = "Emerald Necklace",
		weight = 200,
		stack = true,
		close = false,
		description = "A emerald necklace seems like the jackpot to me!",
		client = {
			image = "emerald_necklace.png",
		}
	},

	["diamond_earring_silver"] = {
		label = "Diamond Earrings Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "diamond_earring_silver.png",
		}
	},

	["nidoqueen"] = {
		label = "Nidoqueen",
		weight = 0,
		stack = true,
		close = false,
		description = "3/6 for Earth Badge",
		client = {
			image = "nidoqueen.png",
		}
	},

	["pikachu"] = {
		label = "Pikachu",
		weight = 0,
		stack = true,
		close = false,
		description = "2/6 for Thunder Badge",
		client = {
			image = "pikachu.png",
		}
	},

	["marijuana"] = {
		label = "Marijuana",
		weight = 500,
		stack = true,
		close = true,
		description = "Some fine smelling buds.",
		client = {
			image = "marijuana.png",
		}
	},

	["drillbit"] = {
		label = "Drill Bit",
		weight = 1000,
		stack = true,
		close = false,
		description = "A Drill Bit, needs to be used with a Hand Drill",
		client = {
			image = "drillbit.png",
		}
	},

	["rainbowvmaxpikachu"] = {
		label = "Rainbow Pikachu",
		weight = 0,
		stack = true,
		close = false,
		description = "Rainbow Card",
		client = {
			image = "rainbowvmaxpikachu.png",
		}
	},

	["dragonair"] = {
		label = "Dragonair",
		weight = 0,
		stack = true,
		close = false,
		description = "Ultra Rare",
		client = {
			image = "dragonair.png",
		}
	},

	["pidgeotto"] = {
		label = "Pidgeotto",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "pidgeotto.png",
		}
	},

	["horn"] = {
		label = "Custom Vehicle Horn",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "horn.png",
		}
	},

	["corn_packet"] = {
		label = "Cone Packet",
		weight = 500,
		stack = true,
		close = true,
		description = "Corn Packet",
		client = {
			image = "corn_packet.png",
		}
	},

	["bmochi"] = {
		label = "Blue Mochi",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 49,
			},
			image = "mochiblue.png",
		}
	},

	["chillypepper"] = {
		label = "Chilly Pepper",
		weight = 15,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chillypepper.png",
		}
	},

	["suspension3"] = {
		label = "Racing Suspension",
		weight = 0,
		stack = false,
		close = true,
		description = "Street Racing level Suspension",
		client = {
			image = "suspension3.png",
		}
	},

	["marinara"] = {
		label = "Marinara",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 27,
			},
			image = "marinara.png",
		}
	},

	["keepcompanioncat"] = {
		label = "Cat",
		weight = 500,
		stack = false,
		close = true,
		description = "Cat is your royal companion!",
		client = {
			image = "A_C_Cat_01.png",
		}
	},

	["mozz"] = {
		label = "Mozzeralla",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "mozz.png",
		}
	},

	["tunasandwich"] = {
		label = "Tuna Sandwich",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 25,
			},
			image = "tunasandwich.png",
		}
	},

	["amarettosour"] = {
		label = "Amaretto Sour",
		weight = 200,
		stack = true,
		close = true,
		description = "Amaretto Sour",
		client = {
			status = {
				thirst = 43,
			},
			image = "amarettosour.png",
		}
	},

	["cheesesandwich"] = {
		label = "Cheese Sandwich",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 20,
			},
			image = "cheesesandwich.png",
		}
	},

	["alivechicken"] = {
		label = "alivechicken",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "alivechicken.png",
		}
	},

	["hunting_rounds"] = {
		label = "223 Hunting Rounds",
		weight = 3000,
		stack = true,
		close = false,
		description = "Ammunition intended for Hunting Rifles.",
		client = {
			image = "223ammo.png",
		}
	},

	["green_access_card"] = {
		label = "Roheline kaart",
		weight = 0,
		stack = true,
		close = true,
		description = "A card... I wonder what it goes to",
		client = {
			image = "cg.png",
		}
	},

	["hitmonchan"] = {
		label = "Hitmonchan",
		weight = 0,
		stack = true,
		close = false,
		description = "Rare",
		client = {
			image = "hitmonchan.png",
		}
	},

	["iron"] = {
		label = "Iron",
		weight = 0,
		stack = true,
		close = false,
		description = "Handy piece of metal that you can probably use for something",
		client = {
			image = "iron.png",
		}
	},

	["silverore"] = {
		label = "Silver Ore",
		weight = 1000,
		stack = true,
		close = false,
		description = "Silver Ore",
		client = {
			image = "silverore.png",
		}
	},

	["sjoint"] = {
		label = "Skunk Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "Virus would be very proud at you",
		client = {
			image = "joint.png",
		}
	},

	["mackerel"] = {
		label = "Mackerel",
		weight = 2500,
		stack = false,
		close = false,
		description = "Mackerel",
		client = {
			image = "mackerel.png",
		}
	},

	["markedbills"] = {
		label = "Marked Money",
		weight = 1000,
		stack = false,
		close = true,
		description = "Money?",
		client = {
			image = "markedbills.png",
		}
	},

	["firework3"] = {
		label = "WipeOut",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework3.png",
		}
	},

	["gbobatea"] = {
		label = "Green Boba Tea",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 42,
			},
			image = "bubbleteagreen.png",
		}
	},

	["marijuana_rollingpapers"] = {
		label = "Rolling Papers",
		weight = 0,
		stack = true,
		close = true,
		description = "These aint Raw Rolling Papers!!?",
		client = {
			image = "rolling_paper.png",
		}
	},

	["pinejuice"] = {
		label = "Pineapple Juice",
		weight = 200,
		stack = true,
		close = true,
		description = "Pineapple Juice",
		client = {
			status = {
				thirst = 43,
			},
			image = "pinejuice.png",
		}
	},

	["paard"] = {
		label = "Horse Mask",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "Clothing_1_97.png",
		}
	},

	["marijuana_scale"] = {
		label = "Scale",
		weight = 0,
		stack = true,
		close = false,
		description = "This is not what it looks like",
		client = {
			image = "drugscales.png",
		}
	},

	["fishicebox"] = {
		label = "Kalastus kast",
		weight = 2500,
		stack = false,
		close = true,
		description = "Ice Box to store all of your fish",
		client = {
			image = "fishicebox.png",
		}
	},

	["rattata"] = {
		label = "Rattata",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "rattata.png",
		}
	},

	["lotto"] = {
		label = "Lotto ticket",
		weight = 10,
		stack = true,
		close = true,
		description = "Lucky Ticket",
		client = {
			image = "lotto.png",
		}
	},

	["chair88"] = {
		label = "Black Deco Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair88.png",
		}
	},

	["ancientcoin"] = {
		label = "Ancient Coin",
		weight = 200,
		stack = true,
		close = false,
		description = "This seems really old and unique.",
		client = {
			image = "aincientcoin.png",
		}
	},

	["gallary_stolenart"] = {
		label = "Art",
		weight = 0,
		stack = true,
		close = true,
		description = "Just a lawyer badge?",
		client = {
			image = "gallary_stolenart.png",
		}
	},

	["chair4"] = {
		label = "Old Metal Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair4.png",
		}
	},

	["casino_goldchip"] = {
		label = "Casino Chip",
		weight = 0,
		stack = true,
		close = false,
		description = "Diamond Casino Chip",
		client = {
			image = "casino_goldchip.png",
		}
	},

	["visa"] = {
		label = "Visa Kaart",
		weight = 0,
		stack = false,
		close = false,
		description = "Visa can be used via ATM",
		client = {
			image = "visacard.png",
		}
	},

	["sprunklight"] = {
		label = "Sprunk Light",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 20,
			},
			image = "sprunklight.png",
		}
	},

	["emp_flower_box"] = {
		label = "Empty Flower Box",
		weight = 70,
		stack = true,
		close = true,
		description = "A Empty Flowers Box.",
		client = {
			image = "flower_emp_box.png",
		}
	},

	["commonjuice"] = {
		label = "Juice",
		weight = 100,
		stack = true,
		close = true,
		description = "Smoke is the life!",
		client = {
			image = "commonjuice.png",
		}
	},

	["var_helmet"] = {
		label = "VAR Helmet",
		weight = 1000,
		stack = false,
		close = true,
		description = "VAR Helmet",
		client = {
			image = "var_helmet.png",
		}
	},

	["bandageg"] = {
		label = "Bandage",
		weight = 500,
		stack = true,
		close = true,
		description = "edit here",
		client = {
			image = "bandageg.png",
		}
	},

	["triplsec"] = {
		label = "Triple Sec",
		weight = 200,
		stack = true,
		close = true,
		description = "Triple Sec",
		client = {
			status = {
				thirst = 40,
			},
			image = "triplesec.png",
		}
	},

	["heavyarmor"] = {
		label = "Heavy Armor",
		weight = 30000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?",
		client = {
			image = "heavyarmor.png",
		}
	},

	["rapidash"] = {
		label = "Rapidash",
		weight = 0,
		stack = true,
		close = false,
		description = "2/6 for Volcano Badge",
		client = {
			image = "rapidash.png",
		}
	},

	["payticket"] = {
		label = "Receipt",
		weight = 150,
		stack = true,
		close = false,
		description = "Cash these in at the bank!",
		client = {
			image = "ticket.png",
		}
	},

	["gallary_trophy3"] = {
		label = "Racing Trophy",
		weight = 0,
		stack = true,
		close = true,
		description = "Just a lawyer badge?",
		client = {
			image = "gallary_trophy3.png",
		}
	},

	["margarita"] = {
		label = "Margarita",
		weight = 200,
		stack = true,
		close = true,
		description = "Margarita",
		client = {
			status = {
				thirst = 41,
			},
			image = "margarita.png",
		}
	},

	["illegalcarcass4"] = {
		label = "Level 4 poached carcass",
		weight = 100,
		stack = true,
		close = true,
		description = "A sellable resource to an uncertified hunter",
		client = {
			image = "huntingcarcass4.png",
		}
	},

	["splate"] = {
		label = "Steak Plate",
		weight = 200,
		stack = true,
		close = true,
		description = "A Steak Plate",
		client = {
			status = {
				hunger = 44,
			},
			image = "splate.png",
		}
	},

	["chair8"] = {
		label = "Lime Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair8.png",
		}
	},

	["wet_weed"] = {
		label = "Moist Weed",
		weight = 3000,
		stack = true,
		close = false,
		description = "Wet weed that needs to be treated!",
		client = {
			image = "wet_weed.png",
		}
	},

	["burger_softdrink"] = {
		label = "Õrn jook",
		weight = 125,
		stack = true,
		close = true,
		description = "An Ice Cold Drink.",
		client = {
			image = "bs_softdrink.png",
		}
	},

	["filled_evidence_bag"] = {
		label = "Evidence Bag",
		weight = 200,
		stack = false,
		close = false,
		description = "A filled evidence bag to see who committed the crime >:(",
		client = {
			image = "evidence.png",
		}
	},

	["cleaningkit"] = {
		label = "Puhastus Komplekt",
		weight = 250,
		stack = true,
		close = true,
		description = "A microfiber cloth with some soap will let your car sparkle again!",
		client = {
			image = "cleaningkit.png",
		}
	},

	["chair86"] = {
		label = "Red Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair86.png",
		}
	},

	["neonkit"] = {
		label = "Neon Kit",
		weight = 800,
		stack = true,
		close = true,
		description = "The more RGB the better!",
		client = {
			image = "neonkit.png",
		}
	},

	["ecolalight"] = {
		label = "eCola Light",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 29,
			},
			image = "ecolalight.png",
		}
	},

	["c4_bomb"] = {
		label = "C4 Pomm",
		weight = 200,
		stack = true,
		close = false,
		description = "The real deal...",
		client = {
			image = "c4_bomb.png",
		}
	},

	["bbobatea"] = {
		label = "Blue Boba Tea",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 40,
			},
			image = "bubbleteablue.png",
		}
	},

	["skullmask"] = {
		label = "Skullmask",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "Clothing_1_2.png",
		}
	},

	["weed_nutrition"] = {
		label = "Plant Fertilizer",
		weight = 2000,
		stack = true,
		close = true,
		description = "Plant nutrition",
		client = {
			image = "weed_nutrition.png",
		}
	},

	["rabbit_meat"] = {
		label = "Rabbit Meat",
		weight = 1000,
		stack = true,
		close = true,
		description = "Boom boom we have meat to night",
		client = {
			image = "deer_meat.png",
		}
	},

	["sugar"] = {
		label = "Sugar",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 50,
			},
			image = "sugar.png",
		}
	},

	["chair65"] = {
		label = "Posh Lounger",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair65.png",
		}
	},

	["icream"] = {
		label = "Irish Cream",
		weight = 200,
		stack = true,
		close = true,
		description = "A bottle of Irish Cream Liquer",
		client = {
			status = {
				thirst = 23,
			},
			image = "icream.png",
		}
	},

	["samsungphone"] = {
		label = "Samsung S10",
		weight = 1000,
		stack = true,
		close = true,
		description = "Very expensive phone",
		client = {
			image = "samsungphone.png",
		}
	},

	["pinger"] = {
		label = "Pinger",
		weight = 1000,
		stack = true,
		close = true,
		description = "With a pinger and your phone you can send out your location",
		client = {
			image = "pinger.png",
		}
	},

	["chair40"] = {
		label = "Grey Leather Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair40.png",
		}
	},

	["bag"] = {
		label = "Kott",
		weight = 200,
		stack = true,
		close = false,
		description = "The real deal...",
		client = {
			image = "bag.png",
		}
	},

	["boombox"] = {
		label = "BoomBox",
		weight = 5500,
		stack = true,
		close = true,
		description = "lets play some shit",
		client = {
			image = "boombox.png",
		}
	},

	["exeggcute"] = {
		label = "Exeggcute",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "exeggcute.png",
		}
	},

	["magicitem11"] = {
		label = "[SPARE] Book Pink",
		weight = 0,
		stack = true,
		close = true,
		description = "Magic Item",
		client = {
			image = "MagicBookPink.png",
		}
	},

	["arcadeblue"] = {
		label = "Blue Arcade Card",
		weight = 0,
		stack = false,
		close = false,
		description = "Blue Arcade Card",
		client = {
			image = "arcadeblue.png",
		}
	},

	["goldingot"] = {
		label = "Gold Ingot",
		weight = 1000,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "goldingot.png",
		}
	},

	["pisswasser"] = {
		label = "Pißwasser",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 46,
			},
			image = "pisswaser1.png",
		}
	},

	["mininglaser"] = {
		label = "Mining Laser",
		weight = 900,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "mininglaser.png",
		}
	},

	["gsf_chain"] = {
		label = "GSF GANG GANG",
		weight = 50,
		stack = true,
		close = false,
		description = "GSF Chain",
		client = {
			image = "np_gsf_chain.png",
		}
	},

	["highqualityscales"] = {
		label = "Large Scale",
		weight = 10000,
		stack = true,
		close = false,
		description = "For all your big commericial measurements",
		client = {
			image = "highqualityscales.png",
		}
	},

	["onix"] = {
		label = "Onix",
		weight = 0,
		stack = true,
		close = false,
		description = "5/6 for Boulder Badge - Rare",
		client = {
			image = "onix.png",
		}
	},

	["copper"] = {
		label = "Copper",
		weight = 0,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
		client = {
			image = "copper.png",
		}
	},

	["engine3"] = {
		label = "V10 Engine",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "v10engine.png",
		}
	},

	["tunerlaptop"] = {
		label = "Tuuneri Arvuti",
		weight = 2000,
		stack = false,
		close = true,
		description = "With this tunerchip you can get your car on steroids... If you know what you're doing",
		client = {
			image = "tunerchip.png",
		}
	},

	["fishinglootbig"] = {
		label = "Treasure Chest",
		weight = 2500,
		stack = true,
		close = true,
		description = "The lock seems to be intact, Might need a key",
		client = {
			image = "fishinglootbig.png",
		}
	},

	["nidorina"] = {
		label = "Nidorina",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "nidorina.png",
		}
	},

	["machop"] = {
		label = "Machop",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "machop.png",
		}
	},

	["car_key"] = {
		label = "Auto võtmed",
		weight = 5,
		stack = false,
		close = true,
		description = "Auto võtmed",
		client = {
			image = "car_keys.png",
		}
	},

	["beancoffee"] = {
		label = "Coffe Beans",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 27,
			},
			image = "beancoffee.png",
		}
	},

	["suspension2"] = {
		label = "Street Suspension",
		weight = 0,
		stack = false,
		close = true,
		description = "Street Racing level Suspension",
		client = {
			image = "suspension2.png",
		}
	},

	["pearlscard"] = {
		label = "Pearls Seafood",
		weight = 100,
		stack = true,
		close = true,
		description = "A special member of Pearl's Seafood Restaurant",
		client = {
			image = "pearlscard.png",
		}
	},

	["ponyta"] = {
		label = "Ponyta",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ponyta.png",
		}
	},

	["goldcoin"] = {
		label = "Gold coin",
		weight = 200,
		stack = true,
		close = false,
		description = "o.O GOLD!",
		client = {
			image = "goldcoin.png",
		}
	},

	["vusliders"] = {
		label = "Sliders",
		weight = 200,
		stack = true,
		close = false,
		description = "Sliders",
		client = {
			status = {
				hunger = 49,
			},
			image = "sliders.png",
		}
	},

	["keepcompanioncoyote"] = {
		label = "Coyote",
		weight = 500,
		stack = false,
		close = true,
		description = "Coyote is your royal companion!",
		client = {
			image = "A_C_Coyote.png",
		}
	},

	["chair108"] = {
		label = "White Casino Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair108.png",
		}
	},

	["strawdaquiri"] = {
		label = "Strawberry Daquiri",
		weight = 200,
		stack = true,
		close = true,
		description = "Strawberry Daquiri",
		client = {
			status = {
				thirst = 45,
			},
			image = "strawdaquiri.png",
		}
	},

	["liquidmix"] = {
		label = "Liquid Chem Mix",
		weight = 1500,
		stack = true,
		close = false,
		description = "Chemicals, handle with care!",
		client = {
			image = "liquidmix.png",
		}
	},

	["treasurekey"] = {
		label = "Treasure key",
		weight = 200,
		stack = true,
		close = false,
		description = "A key? Maybe for treasure",
		client = {
			image = "treasurekey.png",
		}
	},

	["venusaur"] = {
		label = "Venusaur",
		weight = 0,
		stack = true,
		close = false,
		description = "6/6 for Rainbow Badge - Rare",
		client = {
			image = "venusaur.png",
		}
	},

	["brokenphone"] = {
		label = "Broken Phone",
		weight = 200,
		stack = true,
		close = false,
		description = "Broken Phone",
		client = {
			image = "brokenphone.png",
		}
	},

	["firework1"] = {
		label = "2Brothers",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework1.png",
		}
	},

	["illegalcarcass1"] = {
		label = "Level 1 poached carcass",
		weight = 100,
		stack = true,
		close = true,
		description = "A sellable resource to an uncertified hunter",
		client = {
			image = "huntingcarcass1.png",
		}
	},

	["flower_paper"] = {
		label = "Flower Paper",
		weight = 10,
		stack = true,
		close = true,
		description = "A Flower Paper.",
		client = {
			image = "flower_paper.png",
		}
	},

	["ditto"] = {
		label = "Ditto",
		weight = 0,
		stack = true,
		close = false,
		description = "Rare",
		client = {
			image = "ditto.png",
		}
	},

	["tiramisu"] = {
		label = "Tiramisu",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 28,
			},
			image = "tiramisu.png",
		}
	},

	["bean-cha"] = {
		label = "Tea",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tea.png",
		}
	},

	["cheddar"] = {
		label = "Cheddar Slice",
		weight = 500,
		stack = true,
		close = false,
		description = "Food",
		client = {
			image = "cheddar.png",
		}
	},

	["marijuana_joint3g"] = {
		label = "White Widow Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "3g joint",
		client = {
			image = "joint.png",
		}
	},

	["ruby_ring_silver"] = {
		label = "Ruby Ring Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ruby_ring_silver.png",
		}
	},

	["chair9"] = {
		label = "Standard Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair9.png",
		}
	},

	["lithium"] = {
		label = "Lithium",
		weight = 1000,
		stack = true,
		close = false,
		description = "Stuff to cook!",
		client = {
			image = "lithium.png",
		}
	},

	["weed_brick"] = {
		label = "Weed Brick",
		weight = 1000,
		stack = true,
		close = true,
		description = "1KG Weed Brick to sell to large customers.",
		client = {
			image = "weed_brick.png",
		}
	},

	["weed_ak47"] = {
		label = "AK47 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g AK47",
		client = {
			image = "weed_baggy.png",
		}
	},

	["bluenails"] = {
		label = "Blue Nails",
		weight = 100,
		stack = true,
		close = true,
		description = "Blue Nails",
		client = {
			image = "blacknails.png",
		}
	},

	["chair57"] = {
		label = "Purple Leather Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair57.png",
		}
	},

	["blauw"] = {
		label = "Blue Mask",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "Clothing_1_14.png",
		}
	},

	["pickle"] = {
		label = "Pickle",
		weight = 200,
		stack = true,
		close = true,
		description = "A jar of Pickles",
		client = {
			status = {
				hunger = 41,
			},
			image = "pickle.png",
		}
	},

	["nachos"] = {
		label = "Nachos",
		weight = 200,
		stack = true,
		close = true,
		description = "A bag of Nachos",
		client = {
			status = {
				hunger = 42,
			},
			image = "nachos.png",
		}
	},

	["bratte"] = {
		label = "The Bratte",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 30,
			},
			image = "bratte.png",
		}
	},

	["chickenbreast"] = {
		label = "Kanaliha",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 21,
			},
			image = "chickenbreast.png",
		}
	},

	["flower_box"] = {
		label = "Flower Box",
		weight = 70,
		stack = true,
		close = true,
		description = "A Flowers Box.",
		client = {
			image = "flower_box.png",
		}
	},

	["milkbucket"] = {
		label = "Milk Bucket",
		weight = 75,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "milkbucket.png",
		}
	},

	["flounder"] = {
		label = "Flounder",
		weight = 2500,
		stack = false,
		close = false,
		description = "Flounder",
		client = {
			image = "flounder.png",
		}
	},

	["bprooftires"] = {
		label = "Bulletproof Tires",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "bprooftires.png",
		}
	},

	["bivak1"] = {
		label = "Balaclava 2",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "Clothing_1_53.png",
		}
	},

	["mtlioncarcass3"] = {
		label = "Level 3 mountainlion",
		weight = 125,
		stack = true,
		close = true,
		description = "A sellable resource to a certified hunter",
		client = {
			image = "huntingcarcass3.png",
		}
	},

	["kangaskhan"] = {
		label = "Kangaskhan",
		weight = 0,
		stack = true,
		close = false,
		description = "Rare",
		client = {
			image = "kangaskhan.png",
		}
	},

	["mewtwo"] = {
		label = "Mewtwo",
		weight = 0,
		stack = true,
		close = false,
		description = "4/6 for Earth Badge - Ultra Rare",
		client = {
			image = "mewtwo.png",
		}
	},

	["machamp"] = {
		label = "Machamp",
		weight = 0,
		stack = true,
		close = false,
		description = "Rare",
		client = {
			image = "machamp.png",
		}
	},

	["bigfootfur"] = {
		label = "Big Foot Fur",
		weight = 500,
		stack = true,
		close = true,
		description = "The fur of an ancient, mythical animal",
		client = {
			image = "bigfootfur.png",
		}
	},

	["printerdocument"] = {
		label = "Document",
		weight = 500,
		stack = false,
		close = true,
		description = "A nice document",
		client = {
			image = "printerdocument.png",
		}
	},

	["trophy"] = {
		label = "Trophy",
		weight = 0,
		stack = true,
		close = true,
		description = "trophy",
		client = {
			image = "np_civ-trophy.png",
		}
	},

	["ruby"] = {
		label = "Ruby",
		weight = 100,
		stack = true,
		close = false,
		description = "A Ruby that shimmers",
		client = {
			image = "ruby.png",
		}
	},

	["cupcake-baunilha"] = {
		label = "Vanilla Cupcake",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cuplimao.png",
		}
	},

	["ham"] = {
		label = "Ham",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ham.png",
		}
	},

	["backpack1"] = {
		label = "Backpack 1",
		weight = 10000,
		stack = false,
		close = true,
		description = "Backpack",
		client = {
			image = "backpack_girl.png",
		}
	},

	["bottle"] = {
		label = "Empty Bottle",
		weight = 10,
		stack = true,
		close = false,
		description = "A glass bottle",
		client = {
			image = "bottle.png",
		}
	},

	["weed_white-widow"] = {
		label = "White Widow 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g White Widow",
		client = {
			image = "weed_baggy.png",
		}
	},

	["graveler"] = {
		label = "Graveler",
		weight = 0,
		stack = true,
		close = false,
		description = "1/6 for Boulder Badge",
		client = {
			image = "graveler.png",
		}
	},

	["walkstick"] = {
		label = "Käe tugi",
		weight = 1000,
		stack = true,
		close = true,
		description = "Walking stick for ya'll grannies out there.. HAHA",
		client = {
			image = "walkstick.png",
		}
	},

	["mtlioncarcass2"] = {
		label = "Level 2 mountain lion",
		weight = 115,
		stack = true,
		close = true,
		description = "A sellable resource to a certified hunter",
		client = {
			image = "huntingcarcass2.png",
		}
	},

	["chimpcarcass4"] = {
		label = "Level 4 poached chimp",
		weight = 125,
		stack = true,
		close = true,
		description = "A sellable resource to an uncertified hunter",
		client = {
			image = "huntingcarcass4.png",
		}
	},

	["bulbasaur"] = {
		label = "Bulbasaur",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "bulbasaur.png",
		}
	},

	["golem"] = {
		label = "Golem",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "golem.png",
		}
	},

	["red_usb"] = {
		label = "Red USB",
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to shut down some systems",
		client = {
			image = "red_usb.png",
		}
	},

	["syphoningkit"] = {
		label = "Syphoning Kit",
		weight = 5000,
		stack = false,
		close = true,
		description = "A kit made to siphon gasoline from vehicles.",
		client = {
			image = "syphoningkit.png",
		}
	},

	["methlab"] = {
		label = "Lab",
		weight = 15000,
		stack = true,
		close = false,
		description = "Stuff to cook!",
		client = {
			image = "lab.png",
		}
	},

	["chocpudding"] = {
		label = "Chocolate Pudding",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 28,
			},
			image = "chocpudding.png",
		}
	},

	["chair96"] = {
		label = "Light Brown Metal Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair96.png",
		}
	},

	["lsd"] = {
		label = "LSD",
		weight = 500,
		stack = true,
		close = false,
		description = "Lets get this party started!",
		client = {
			image = "lsd.png",
		}
	},

	["plastic"] = {
		label = "Plastic",
		weight = 0,
		stack = true,
		close = false,
		description = "RECYCLE! - Greta Thunberg 2019",
		client = {
			image = "plastic.png",
		}
	},

	["pbobatea"] = {
		label = "Pink Boba Tea",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 42,
			},
			image = "bubbleteapink.png",
		}
	},

	["deercarcass1"] = {
		label = "Level 1 poached deer",
		weight = 100,
		stack = true,
		close = true,
		description = "A sellable resource to an uncertified hunter",
		client = {
			image = "huntingcarcass1.png",
		}
	},

	["suspension4"] = {
		label = "Rally Suspension",
		weight = 0,
		stack = false,
		close = true,
		description = "Street Racing level Suspension",
		client = {
			image = "suspension4.png",
		}
	},

	["marijuana_crop_high"] = {
		label = "Harvested Crop",
		weight = 5500,
		stack = true,
		close = false,
		description = "high grade harvested marijuana crop",
		client = {
			image = "marijuana_crop.png",
		}
	},

	["marijuana_water"] = {
		label = "Plant Water",
		weight = 0,
		stack = true,
		close = true,
		description = "Plant water",
		client = {
			image = "marijuana_water.png",
		}
	},

	["thunderbadge"] = {
		label = "ThunderBadge",
		weight = 0,
		stack = true,
		close = false,
		description = "3/8 for Trophy Badge",
		client = {
			image = "thunderBadge.png",
		}
	},

	["var_usb4"] = {
		label = "Master Key (25%)",
		weight = 1000,
		stack = false,
		close = true,
		description = "Combine multiple USBs to create a master encryption key.",
		client = {
			image = "var_usb.png",
		}
	},

	["chair55"] = {
		label = "Old Metal ",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair55.png",
		}
	},

	["chemicalvapor"] = {
		label = "Chemical Vapors",
		weight = 1500,
		stack = true,
		close = false,
		description = "High Pressure Chemical Vapors, Explosive!",
		client = {
			image = "chemicalvapor.png",
		}
	},

	["weed_skunk"] = {
		label = "Skunk 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Skunk",
		client = {
			image = "weed_baggy.png",
		}
	},

	["firework2"] = {
		label = "Poppelers",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework2.png",
		}
	},

	["monkeymask"] = {
		label = "Monkeymask",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "Clothing_1_3.png",
		}
	},

	["tennisball"] = {
		label = "Tennis Ball",
		weight = 550,
		stack = true,
		close = true,
		description = "Tennis ball to ur pettetos",
		client = {
			image = "tennisball.png",
		}
	},

	["weed_amnesia_seed"] = {
		label = "Amnesia Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Amnesia",
		client = {
			image = "weed_seed.png",
		}
	},

	["jynx"] = {
		label = "Jynx",
		weight = 0,
		stack = true,
		close = false,
		description = "6/6 for Marsh Badge - Rare",
		client = {
			image = "jynx.png",
		}
	},

	["onion"] = {
		label = "Onion",
		weight = 500,
		stack = true,
		close = false,
		description = "An onion",
		client = {
			image = "burger_onion.png",
		}
	},

	["grimer"] = {
		label = "Grimer",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "grimer.png",
		}
	},

	["nekodonut"] = {
		label = "Neko Donut",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 49,
			},
			image = "catdonut.png",
		}
	},

	["engine4"] = {
		label = "V12 Engine",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "v12engine.png",
		}
	},

	["magicitem2"] = {
		label = "[TRANSFORM] Polyjuice Potion",
		weight = 0,
		stack = true,
		close = true,
		description = "Magic Item",
		client = {
			image = "MagicPotionCyan.png",
		}
	},

	["coke_small_brick"] = {
		label = "Coke Package",
		weight = 350,
		stack = false,
		close = true,
		description = "Small package of cocaine, mostly used for deals and takes a lot of space",
		client = {
			image = "coke_small_brick.png",
		}
	},

	["pisswasser2"] = {
		label = "Pißwasser Stout",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 42,
			},
			image = "pisswaser2.png",
		}
	},

	["externals"] = {
		label = "Exterior Cosmetics",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "mirror.png",
		}
	},

	["bandanab"] = {
		label = "Blue Bandana",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "Clothing_1_51(BLAU).png",
		}
	},

	["chair54"] = {
		label = "Old Wooden Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair54.png",
		}
	},

	["thermalvision"] = {
		label = "Thermal Vision",
		weight = 100,
		stack = false,
		close = true,
		description = "thermalvision.",
		client = {
			image = "thermalvision.png",
		}
	},

	["flower_bulck"] = {
		label = "Flower Bulck",
		weight = 50,
		stack = true,
		close = true,
		description = "A Flowers Bulck.",
		client = {
			image = "flower_bulck.png",
		}
	},

	["chair63"] = {
		label = "Blue Camping Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair63.png",
		}
	},

	["magicitem10"] = {
		label = "[DAMAGE] Fireball",
		weight = 0,
		stack = true,
		close = true,
		description = "Magic Item",
		client = {
			image = "MagicBookOrange.png",
		}
	},

	["nidorino"] = {
		label = "Nidorino",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "nidorino.png",
		}
	},

	["scarf"] = {
		label = "scarf",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "Clothing_1_115.png",
		}
	},

	["sapphire_earring_silver"] = {
		label = "Sapphire Earrings Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sapphire_earring_silver.png",
		}
	},

	["weed_og-kush"] = {
		label = "OGKush 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g OG Kush",
		client = {
			image = "weed_baggy.png",
		}
	},

	["carbon"] = {
		label = "Carbon",
		weight = 1000,
		stack = true,
		close = false,
		description = "Carbon, a base ore.",
		client = {
			image = "carbon.png",
		}
	},

	["rawpumpkin"] = {
		label = "Raw Pumpkin",
		weight = 50,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "raw_pumpkin.png",
		}
	},

	["muffin-chocolate"] = {
		label = "Chocolate Muffin",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mufchocolate.png",
		}
	},

	["sharktiger"] = {
		label = "Haikala",
		weight = 5000,
		stack = false,
		close = false,
		description = "Tigershark",
		client = {
			image = "sharktiger.png",
		}
	},

	["gallary_payne_portrait"] = {
		label = "Gallery Payne Portrait",
		weight = 0,
		stack = true,
		close = true,
		description = "Just a lawyer badge?",
		client = {
			image = "gallary_payne_portrait.png",
		}
	},

	["oddish"] = {
		label = "Oddish",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "oddish.png",
		}
	},

	["fishingrod"] = {
		label = "Kalaõng",
		weight = 750,
		stack = true,
		close = true,
		description = "A fishing rod for adventures with friends!!",
		client = {
			image = "fishingrod.png",
		}
	},

	["camviewer"] = {
		label = "CamViewer",
		weight = 7000,
		stack = true,
		close = true,
		description = "Remote Camera Viewer and Controller",
		client = {
			image = "camviewer.png",
		}
	},

	["kacci"] = {
		label = "kacci",
		weight = 0,
		stack = true,
		close = true,
		description = "food",
		client = {
			image = "kacci.png",
		}
	},

	["sodium_hydroxide"] = {
		label = "Sodium Hydroxide",
		weight = 1500,
		stack = true,
		close = true,
		description = "Chemicals, handle with care!",
		client = {
			image = "sodium_hydroxide.png",
		}
	},

	["raticate"] = {
		label = "Raticate",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "raticate.png",
		}
	},

	["chair25"] = {
		label = "Red Plastic Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair25.png",
		}
	},

	["bburrito"] = {
		label = "Breakfast Burrito",
		weight = 200,
		stack = true,
		close = true,
		description = "A breakfast Burrito",
		client = {
			status = {
				hunger = 48,
			},
			image = "bburrito.png",
		}
	},

	["firstaidforpet"] = {
		label = "First aid for pet",
		weight = 500,
		stack = true,
		close = true,
		description = "Revive your pet!",
		client = {
			image = "firstaidforpet.png",
		}
	},

	["carrotcake"] = {
		label = "Carrot Cake",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 23,
			},
			image = "carrotcake.png",
		}
	},

	["cow_leather"] = {
		label = "Cow Skin",
		weight = 50,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cow_leather.png",
		}
	},

	["caterpie"] = {
		label = "Caterpie",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "caterpie.png",
		}
	},

	["purrito"] = {
		label = "Purrito",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 49,
			},
			image = "purrito.png",
		}
	},

	["magicitem3"] = {
		label = "[SLOW] Sloth Potion",
		weight = 0,
		stack = true,
		close = true,
		description = "Magic Item",
		client = {
			image = "MagicPotionGreen.png",
		}
	},
}