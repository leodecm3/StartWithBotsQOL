--data.lua

require("fusion-construction-robot")
require("InefficientSpeedModule")


data:extend({
  {
      type = "generator-equipment",
      name = "fusion-reactor-equipment",
      sprite =
      {
        filename = "__base__/graphics/equipment/fusion-reactor-equipment.png",
        width = 128,
        height = 128,
        priority = "medium",
        hr_version =
        {
          filename = "__base__/graphics/equipment/hr-fusion-reactor-equipment.png",
          width = 256,
          height = 256,
          priority = "medium",
          scale = 0.5
        }
      },
      shape =
      {
        width = 4,
        height = 4,
        type = "full"
      },
      energy_source =
      {
        type = "electric",
        usage_priority = "primary-output"
      },
      power = "750GW",
      categories = {"armor"}
    },

    {
      type = "roboport-equipment",
      name = "personal-roboport-mk2-equipment",
      take_result = "personal-roboport-mk2-equipment",
      sprite =
      {
        filename = "__base__/graphics/equipment/personal-roboport-mk2-equipment.png",
        width = 64,
        height = 64,
        priority = "medium",
        hr_version =
        {
          filename = "__base__/graphics/equipment/hr-personal-roboport-mk2-equipment.png",
          width = 128,
          height = 128,
          priority = "medium",
          scale = 0.5
        }
      },
      shape =
      {
        width = 2,
        height = 2,
        type = "full"
      },
      energy_source =
      {
        type = "electric",
        buffer_capacity = "1GJ",
        input_flow_limit = "1GW",
        usage_priority = "secondary-input"
      },
      charging_energy = "1GW",
  
      robot_limit = 1000,
      construction_radius = 150,
      spawn_and_station_height = 0.4,
      spawn_and_station_shadow_height_offset = 0.5,
      charge_approach_distance = 2.6,
      robots_shrink_when_entering_and_exiting = true,
  
      recharging_animation =
      {
        filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
        draw_as_glow = true,
        priority = "high",
        width = 37,
        height = 35,
        frame_count = 16,
        scale = 1.5,
        animation_speed = 0.5
      },
      recharging_light = {intensity = 0.2, size = 3, color = {r = 0.5, g = 0.5, b = 1.0}},
      stationing_offset = {0, -0.6},
      charging_station_shift = {0, 0.5},
      charging_station_count = 1000,
      charging_distance = 1.6,
      charging_threshold_distance = 5,
      categories = {"armor"}
    }
})























data:extend({
	{
    type = "equipment-grid",
		name = "mini-equipment-grid",
		width = 6,
		height = 4,
		equipment_categories = {"armor"}
	},
	
	{
		type = "item",
		name = "fusion-construction-robot",
		icon = "__StartWithBotsQOL__/graphics/icons/fusion-construction-robot.png",
		icon_size = 64,
		icon_mipmaps = 4,
		subgroup = "logistic-network",
		order = "a[robot]-b[construction-robot]-a[fusion-construction-robot]",
		place_result = "fusion-construction-robot",
		stack_size = 1000
	},
	
	{
		type = "item",
		name = "mini-fusion-reactor-equipment",
		icons = 
		{{
			icon = "__base__/graphics/icons/fusion-reactor-equipment.png",
			tint = {r=0.53, g=0.81, b=0.92, a=1}
		}},		
		icon_size = 64,
		icon_mipmaps = 4,
		placed_as_equipment_result = "mini-fusion-reactor-equipment",
		subgroup = "equipment",
		order = "a[energy-source]-b[fusion-reactor]-a[mini-fusion-reactor-equipment]",
		stack_size = 20
	},
	
	{
		type = "armor",
		name = "mini-power-armor",
		icon = "__StartWithBotsQOL__/graphics/icons/mini-power-armor.png",
		icon_size = 64,
		icon_mipmaps = 4,
		subgroup = "armor",
		order = "c[modular-armor]-a[mini-power-armor]",
		stack_size = 1,
		infinite = true,
		equipment_grid = "mini-equipment-grid",
		inventory_size_bonus = 10
	},
	
	{
		type = "generator-equipment",
		name = "mini-fusion-reactor-equipment",
		sprite =
		{
			filename = "__StartWithBotsQOL__/graphics/equipment/mini-fusion-reactor-equipment.png",
			width = 65,
			height = 128,
			priority = "medium"
		},
		shape =
		{
			width = 2,
			height = 4,
			type = "full"
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "primary-output"
		},
		power = "250TW",
		categories = {"armor"}
	}
})