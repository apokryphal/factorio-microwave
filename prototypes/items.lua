local icon_base = "__camedo-microwave__/graphics/icons/"
local icon_mw_tower_1 = icon_base.."tower.png"
local icon_mw_rx_1 = icon_base.."microwave1.png"
local icon_mw_rx_2 = icon_base.."microwave2.png"
local icon_mw_rx_3 = icon_base.."microwave3.png"


----------------------------------------------------------------------------------------------------------------
-- Microwave Items
----------------------------------------------------------------------------------------------------------------
data:extend({
	{	-- Microwave-Tower
		type = "item",
		name = "microwave-tower",
		icon = icon_mw_tower_1,
		icon_size = 32,
		subgroup = "energy-pipe-distribution",
		order = "a[energy]-c[big-electric-pole]-a",
		place_result = "microwave-tower",
		stack_size = 50
	},	
	{	-- Microwave-Receiver-Small
		type = "item",
		name = "microwave-receiver-small",
		icon = icon_mw_rx_1,
		icon_size = 32,
		place_as_equipment_result = "microwave-receiver-small",
		subgroup = "equipment",
		order = "a[energy-source]-a[solar-panel]-b",
		stack_size = 100,
	},
	{	-- Microwave-Receiver-Large
		type = "item",
		name = "microwave-receiver-large",
		icon = icon_mw_rx_2,
		icon_size = 32,
		place_as_equipment_result = "microwave-receiver-large",
		subgroup = "equipment",
		order = "a[energy-source]-a[solar-panel]-c",
		stack_size = 50,
	},
	{	-- Microwave-Receiver-Biggus-Dickus
		type = "item",
		name = "microwave-receiver-biggus-dickus",
		icon = icon_mw_rx_3,
		icon_size = 32,
		place_as_equipment_result = "microwave-receiver-biggus-dickus",
		subgroup = "equipment",
		order = "a[energy-source]-a[solar-panel]-d",
		stack_size = 50,
	}
})
