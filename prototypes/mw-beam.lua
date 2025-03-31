local mwBeam2 = make_electric_beam("microwave-beam", 1, 0)
mwBeam2.action = nil
mwBeam2.random_target_offset = false

local beam_blend_mode = "additive-soft"
local beam_non_light_flags = { "trilinear-filtering" }


local mwBeam = {
	name = "microwave-beam",
	type = "beam",
	random_target_offset = false,
	hidden = true,
	width = 0.5,
	flags = { "not-on-map" },
	damage_interval = 20,
	graphics_set = {
		beam = {
			body = {
				{
					blend_mode = "additive-soft",
					draw_as_glow = true,
					filename = "__camedo-microwave__/graphics/entity/beam/beam-body-1.png",
					flags = {
						"trilinear-filtering"
					},
					frame_count = 16,
					height = 39,
					line_length = 16,
					width = 32
				},
				{
					blend_mode = "additive-soft",
					draw_as_glow = true,
					filename = "__camedo-microwave__/graphics/entity/beam/beam-body-2.png",
					flags = beam_non_light_flags,
					frame_count = 16,
					height = 39,
					line_length = 16,
					width = 32
				},
				{
					blend_mode = "additive-soft",
					draw_as_glow = true,
					filename = "__camedo-microwave__/graphics/entity/beam/beam-body-3.png",
					flags = beam_non_light_flags,
					frame_count = 16,
					height = 39,
					line_length = 16,
					width = 32
				},
				{
					blend_mode = "additive-soft",
					draw_as_glow = true,
					filename = "__camedo-microwave__/graphics/entity/beam/beam-body-4.png",
					flags = beam_non_light_flags,
					frame_count = 16,
					height = 39,
					line_length = 16,
					width = 32
				},
				{
					blend_mode = "additive-soft",
					draw_as_glow = true,
					filename = "__camedo-microwave__/graphics/entity/beam/beam-body-5.png",
					flags = beam_non_light_flags,
					frame_count = 16,
					height = 39,
					line_length = 16,
					width = 32
				},
				{
					blend_mode = "additive-soft",
					draw_as_glow = true,
					filename = "__camedo-microwave__/graphics/entity/beam/beam-body-6.png",
					flags = beam_non_light_flags,
					frame_count = 16,
					height = 39,
					line_length = 16,
					width = 32
				}
			},
			ending = {
				draw_as_glow = true,
				filename = "__camedo-microwave__/graphics/entity/beam/hr-tileable-beam-END.png",
				flags = beam_non_light_flags,
				frame_count = 16,
				height = 93,
				line_length = 4,
				scale = 0.5,
				shift = {
					-0.078125,
					-0.046875
				},
				width = 91
			},
			head = {
				blend_mode = "additive-soft",
				draw_as_glow = true,
				filename = "__camedo-microwave__/graphics/entity/beam/beam-head.png",
				flags = beam_non_light_flags,
				frame_count = 16,
				height = 39,
				line_length = 16,
				shift = {
					-0.109375,
					0
				},
				width = 38
			},
			start = {
				draw_as_glow = true,
				filename = "__camedo-microwave__/graphics/entity/beam/hr-tileable-beam-START.png",
				flags = beam_non_light_flags,
				frame_count = 16,
				height = 66,
				line_length = 4,
				scale = 0.5,
				shift = {
					0.53125,
					0
				},
				width = 94
			},
			tail = {
				blend_mode = "additive-soft",
				draw_as_glow = true,
				filename = "__camedo-microwave__/graphics/entity/beam/beam-tail.png",
				flags = beam_non_light_flags,
				frame_count = 16,
				height = 39,
				line_length = 16,
				shift = {
					0.09375,
					0
				},
				width = 39
			}
		},    
	},
	working_sound = {
		max_sounds_per_type = 4,
		sound = {
			filename = "__base__/sound/fight/electric-beam.ogg",
			volume = 0.7
		}
	}
}

-- log("New Beam: " .. serpent.block(mwBeam))
data:extend({mwBeam})

-- Not being used currently, kept for legacy reference --
local mwBeamLegacy = {
	{
		name = "microwave-beam",
		type = "beam",
		action = nil,
	graphics_set = {
		beam = {
			head = {
				layers = {{
					animation_speed = 0.5,
					blend_mode = "additive-soft",
					filename = "__camedo-microwave__/graphics/entity/beam/beam-head.png",
					frame_count = 16,
					height = 39,
					line_length = 16,
					width = 45
				}}				
			}},
			body = {{
				layers = {
					{
					blend_mode = "additive-soft",
					filename = "__camedo-microwave__/graphics/entity/beam/beam-body-1.png",
					frame_count = 16,
					height = 39,
					line_length = 16,
					width = 45
					},
					{
					blend_mode = "additive-soft",
					filename = "__camedo-microwave__/graphics/entity/beam/beam-body-2.png",
					frame_count = 16,
					height = 39,
					line_length = 16,
					width = 45
					},
					{
					blend_mode = "additive-soft",
					filename = "__camedo-microwave__/graphics/entity/beam/beam-body-3.png",
					frame_count = 16,
					height = 39,
					line_length = 16,
					width = 45
					},
					{
					blend_mode = "additive-soft",
					filename = "__camedo-microwave__/graphics/entity/beam/beam-body-4.png",
					frame_count = 16,
					height = 39,
					line_length = 16,
					width = 45
					},
					{
					blend_mode = "additive-soft",
					filename = "__camedo-microwave__/graphics/entity/beam/beam-body-5.png",
					frame_count = 16,
					height = 39,
					line_length = 16,
					width = 45
					},
					{
					blend_mode = "additive-soft",
					filename = "__camedo-microwave__/graphics/entity/beam/beam-body-6.png",
					frame_count = 16,
					height = 39,
					line_length = 16,
					width = 45
					}
				}
			},
			tail = {
				layers = {{
					blend_mode = "additive-soft",
					filename = "__camedo-microwave__/graphics/entity/beam/beam-tail.png",
					frame_count = 16,
					height = 39,
					line_length = 16,
					width = 45
				}}
			},
			start = {
				axially_symmetrical = false,
				direction_count = 1,
				filename = "__camedo-microwave__/graphics/entity/beam/tileable-beam-START.png",
				frame_count = 16,
				height = 40,
				hr_version = {
				axially_symmetrical = false,
				direction_count = 1,
				filename = "__camedo-microwave__/graphics/entity/beam/hr-tileable-beam-START.png",
				frame_count = 16,
				height = 66,
				line_length = 4,
				scale = 0.5,
				shift = { 0.53125, 0 },
				width = 94
				},
				line_length = 4,
				shift = { -0.03125, 0 },
				width = 52
			},	
			ending = {
				axially_symmetrical = false,
				direction_count = 1,
				filename = "__camedo-microwave__/graphics/entity/beam/tileable-beam-END.png",
				frame_count = 16,
				height = 54,
				hr_version = {
				axially_symmetrical = false,
				direction_count = 1,
				filename = "__camedo-microwave__/graphics/entity/beam/hr-tileable-beam-END.png",
				frame_count = 16,
				height = 93,
				line_length = 4,
				scale = 0.5,
				shift = {
					-0.078125,
					-0.046875
				},
				width = 91
				},
				line_length = 4,
				shift = {
				-0.046875,
				0
				},
				width = 49
			},					
		}
	},
		damage_interval = 20,
		flags = { "not-on-map" },
		width = 0.5,
		working_sound = {
			{
				filename = "__camedo-microwave__/sound/fight/electric-beam.ogg",
				volume = 0.3
			}
		}
	},
}
-- data:extend({mwBeamLegacy})