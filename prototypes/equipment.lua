local entity_rx_base = "__camedo-microwave__/graphics/entity/receivers/"
local entity_mw_rx_1 = entity_rx_base.."microwave1.png"
local entity_mw_rx_2 = entity_rx_base.."microwave2.png"
local entity_mw_rx_3 = entity_rx_base.."microwave3.png"


----------------------------------------------------------------------------------------------------------------
-- Microwave Equipment (Categories are overridden in data-final-fixes)
----------------------------------------------------------------------------------------------------------------
data:extend({
	{
		type = "battery-equipment",
		name = "microwave-receiver-small",
		sprite = { 
			filename = entity_mw_rx_1, 
			width = 64,
			height = 64, 
			priority = "medium", 
		},
		shape = { width = 2, height = 2, type = "full",},
		energy_source = { 
			type = "electric", 
			buffer_capacity = "500kJ",--"200kJ", 
			input_flow_limit="500kW",--"200kW", 
			output_flow_limit="50kW",--"20kW", 
			usage_priority = "tertiary" 
		},
		categories = {"armor"},
	},
	{
		type = "battery-equipment",
		name = "microwave-receiver-large",
		sprite = { 
			filename = entity_mw_rx_2, 
			width = 96, 
			height = 96, 
			priority = "medium", 
		},
		shape = { width = 3, height = 3, type = "full",},
		energy_source = { 
			type = "electric", 
			buffer_capacity = "1MJ",--"550kJ", 
			input_flow_limit = "1MW",--"550kW", 
			output_flow_limit = "100kW",--"55kW", 
			usage_priority = "tertiary" 
		},
		categories = {"armor"},
	},
	{
		type = "battery-equipment",
		name = "microwave-receiver-biggus-dickus",
		sprite = { 
			filename = entity_mw_rx_3, 
			width = 32, 
			height = 32, 
			priority = "medium", 
		},
		shape = { width = 1, height = 1, type = "full",},
		energy_source = { 
			type = "electric", 
			buffer_capacity = "50MJ",--"50MJ", 
			input_flow_limit = "50MW",--"50MW", 
			output_flow_limit = "10MW",--"10MW", 
			usage_priority = "tertiary" 
		},
		categories = {"armor"},
	}
})
