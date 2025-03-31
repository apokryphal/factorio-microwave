local tech_base = "__camedo-microwave__/graphics/technology/"
local tech_mw_tower_1 = tech_base.."tower.png"
local tech_mw_rx_1 = tech_base.."microwave1.png"
local tech_mw_rx_2 = tech_base.."microwave2.png"
local tech_mw_rx_3 = tech_base.."microwave3.png"


data:extend({
	-- ------------------------------------------------
	-- MICROWAVE CHARGING TECHNOLOGIES
	-- ------------------------------------------------
	
	{
		type = "technology",
		name = "microwave-charging1",
		icon = tech_mw_rx_1,
		icon_size = 128,
		prerequisites = {
			"processing-unit",
			"battery-equipment"
		},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "microwave-tower"
			},
			{
				type = "unlock-recipe",
				recipe = "microwave-receiver-small"
			},
		},
		unit = {
			count = 200,
			time = 30
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1}
			},
		},
		order = "g-i-a"
	},
	{
		type = "technology",
		name = "microwave-charging2",
		icon = tech_mw_rx_2,
		icon_size = 128,
		prerequisites = {
			"battery-mk2-equipment",
			"microwave-charging1"
		},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "microwave-receiver-large"
			},
		},
		unit = {
			count = 100,
			time = 30
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1}
			},
		},
		order = "g-i-b"
	},
	{
		type = "technology",
		name = "microwave-charging3",
		icon = tech_mw_rx_3,
		icon_size = 128,
		prerequisites = {
			"microwave-charging2"
		},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "microwave-receiver-biggus-dickus"
			},
		},
		unit = {
			count = 5000,
			time = 15
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"military-science-pack", 1},
				{"production-science-pack", 1},
				{"utility-science-pack", 1},
				{"space-science-pack", 1},
			},
		},
		order = "g-i-c"
	}
})
