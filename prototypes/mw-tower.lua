----------------------------------------------------------------------------------------------------------------
-- Microwave Tower Entity (and Energy Interface)
-- We deep clone the corpse for a cute attempt at detecting tower varients (like Lighted Poles+ creates)
----------------------------------------------------------------------------------------------------------------
local microwaveTower = table.deepcopy(data.raw["electric-pole"]["big-electric-pole"])
local mwTowerCorpse = table.deepcopy(data.raw["corpse"][microwaveTower.corpse])			

mwTowerCorpse.name = "microwave-tower-remnants"
data:extend{ mwTowerCorpse }

microwaveTower.name = "microwave-tower"
microwaveTower.minable = { mining_time = 0.5, result = "microwave-tower" }
microwaveTower.icon = "__camedo-microwave__/graphics/icons/tower.png"
microwaveTower.icon_size = 32
microwaveTower.fast_replaceable_group = "electric-pole"
microwaveTower.corpse = mwTowerCorpse.name
microwaveTower.pictures = {
	layers = {
		{
			filename = "__camedo-microwave__/graphics/entity/tower/big-electric-pole.png",
			priority = "extra-high",
			width = 76,
			height = 156,
			direction_count = 4,
			shift = util.by_pixel(1, -51),
			hr_version = {
				filename = "__camedo-microwave__/graphics/entity/tower/hr-big-electric-pole.png",
				priority = "extra-high",
				width = 148,
				height = 312,
				direction_count = 4,
				shift = util.by_pixel(0, -51),
				scale = 0.5
			}
		},
		{
			filename = "__camedo-microwave__/graphics/entity/tower/big-electric-pole-shadow.png",
			priority = "extra-high",
			width = 188,
			height = 48,
			direction_count = 4,
			shift = util.by_pixel(60, 0),
			draw_as_shadow = true,
			hr_version = {
				filename = "__camedo-microwave__/graphics/entity/tower/hr-big-electric-pole-shadow.png",
				priority = "extra-high",
				width = 374,
				height = 94,
				direction_count = 4,
				shift = util.by_pixel(60, 0),
				draw_as_shadow = true,
				scale = 0.5
			}
		}
	}
}

data:extend{microwaveTower}

----------------------------------------------------------------------------------------------------------------
-- Microwave Tower Energy Interface
----------------------------------------------------------------------------------------------------------------
local transparent_pic = {
	filename = "__camedo-microwave__/graphics/transparent.png",
	priority = "extra-high",
	width = 1,
	height = 1,
	frame_count = 1
}

-- player_creation allows blueprinting and such, turned off.
-- flags = {"placeable-neutral", "player-creation"},
-- TODO: Did we screw up power interface inspection?
local mwInterface = {
	type="electric-energy-interface",
	name="microwave-tower-interface",
	icon=microwaveTower.icon,
	icon_size=microwaveTower.icon_size,
	hidden = true,
	flags = {
		"hide-alt-info",
		"not-selectable-in-game",
		"not-upgradable",
		"not-flammable",
		"not-on-map",
		"not-repairable"
	},
	max_health = 10000,
	selection_box = nil,
	selectable_in_game=false,
	energy_source = {
		type="electric",
		buffer_capacity="2MJ",
		usage_priority="secondary-input",
		input_flow_limit="2MW",
		output_flow_limit="0W"
	},
	picture=transparent_pic,
	order="z"
}

data:extend{mwInterface}
