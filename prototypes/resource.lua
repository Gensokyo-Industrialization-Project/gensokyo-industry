local resource_autoplace = require("resource-autoplace")

data:extend({
	{
		type = "item",
		name = "spirit-quartz-ore",
		icon = "__th-gensokyo-industry__/graphics/icons/spirit-quartz.png",
		icon_size = 64,
		subgroup = "raw-resource",
		stack_size = 50,
	},

	{
		type = "resource",
		name = "spirit-quartz-ore",
		icon = "__th-gensokyo-industry__/graphics/icons/spirit-quartz.png",
		icon_size = 64,
		flags = { "placeable-neutral" },
		order = "b--a-[spirit-quartz-ore]",
		tree_removal_probability = 0.8,
		tree_removal_max_distance = 32 * 32,
		minable = {
			mining_time = 1.5,
			result = "spirit-quartz-ore",
			count = 1,
		},
		map_color = { r = 0, g = 1.0, b = 0.9, a = 1.0 },
		collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
		selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		stage_counts = { 10000, 8000, 6000, 4000, 2000, 1000, 500, 100 },
		stages = {
			sheet = {
				filename = "__th-gensokyo-industry__/graphics/entity/spirit-quartz-ore.png",
				priority = "extra-high",
				size = 64,
				frame_count = 1,
				variation_count = 8,
				scale = 0.5,
			},
		},
		autoplace = resource_autoplace.resource_autoplace_settings({
			name = "spirit-quartz-ore",
			order = "b",
			base_density = 20,
			base_spots_per_km2 = 5,
			has_starting_area_placement = true,
		}),
	},
})
