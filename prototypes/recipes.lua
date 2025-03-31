data:extend({
		{
				type = "recipe",
				name = "microwave-tower",
				enabled = false,
				energy_required = 12,
				ingredients = { 
			{type = "item", name = "processing-unit", amount = 10}, 
			{type = "item", name = "battery", amount = 5}, 
			{type = "item", name = "big-electric-pole", amount = 1} 
		},
		results={{type="item", name="microwave-tower", amount=1}}
		},	
		{
				type = "recipe",
				name = "microwave-receiver-small",
				enabled = false,
				energy_required = 2,
				ingredients = { 
			{type = "item", name = "plastic-bar", amount = 2}, 
			{type = "item", name = "processing-unit", amount = 2}, 
			{type = "item", name = "battery-equipment", amount = 1} 
		},
		results={{type="item", name="microwave-receiver-small", amount=1}}
		},
		{
				type = "recipe",
				name = "microwave-receiver-large",
				enabled = false,
				energy_required = 3,
				ingredients = { 
			{type = "item", name = "microwave-receiver-small", amount = 2}, 
			{type = "item", name = "processing-unit", amount = 2}, 
			{type = "item", name = "battery-mk2-equipment", amount = 1} 
		},
		results={{type="item", name="microwave-receiver-large", amount=1}}
		},
		{
				type = "recipe",
				name = "microwave-receiver-biggus-dickus",
				enabled = false,
				energy_required = 3,
				ingredients = { 
			{type = "item", name = "microwave-receiver-large", amount = 10}, 
			{type = "item", name = "processing-unit", amount = 100}, 
			{type = "item", name = "battery-mk2-equipment", amount = 10} 
		},
		results={{type="item", name="microwave-receiver-biggus-dickus", amount=1}}
		}
})
