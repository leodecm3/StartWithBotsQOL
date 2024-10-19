--data.lua

require("fusion-construction-robot")
require("InefficientSpeedModule")


data:extend({


  {
    type = "recipe",
    name = "Munda_Logistic_Roboter1",
    enabled = false,
    ingredients =
    {
      {"logistic-robot", 10},
      {"advanced-circuit", 10},
	  {"steel-plate", 20},
	  {"iron-gear-wheel", 20},
	  {"stack-filter-inserter", 1},
    },
    result = "Munda_Logistic_Roboter1"
  },
  {
    type = "item",
    name = "Munda_Logistic_Roboter1",
    icon = "__StartWithBotsQOL__/graphics/munda-logistic-robot-1.png",
    icon_size = 66,
    --flags = {"goes-to-quickbar"},
    subgroup = "logistic-network",
    order = "a[robot]-a[mogistic-robot]",
    place_result = "Munda_Logistic_Roboter1",
    stack_size = 50
  },
  {
    type = "technology",
    name = "Munda_Logistic_Roboter1",
    icon_size = 256,
    icon = "__base__/graphics/technology/logistic-robotics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "Munda_Logistic_Roboter1"
      }
    },
    prerequisites = { "robotics" },
    unit =
    {
      count = 300,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},

      },
      time = 30
    },
    order = "m-u-a",
  },
  {
    type = "logistic-robot",
    name = "Munda_Logistic_Roboter1",
    icon = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "Munda_Logistic_Roboter1"},
    resistances = { { type = "fire", percent = 85 } },
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},


    energy_per_tick = "0.001kJ",
    energy_per_move = "0.0001kJ",
    max_energy = "14MJ",
    max_speed = 10,
    speed = 10,
    max_payload_size = 20,






    max_health = 600, --- 100
	  -- max_payload_size = 10, --- 1
    -- speed = 0.15, --- 0.05
    transfer_distance = 1, -- 0.5
    -- max_energy = "14MJ", -- 1.5MJ
    -- energy_per_tick = "0.1kJ", -- 0.05
    speed_multiplier_when_out_of_energy = 0.7, -- 0.2
    -- energy_per_move = "10kJ", --5kj
    min_to_charge = 0.05,
    max_to_charge = 0.95,
    idle =
    {
      filename = "__StartWithBotsQOL__/graphics/munda-logistic-robot-1.png",
	    scale = 2,
      priority = "high",
      line_length = 16,
      width = 41,
      height = 42,
      frame_count = 1,
      shift = {0.015625, -0.09375},
      direction_count = 16,
      y = 42,
      hr_version = {
        filename = "__StartWithBotsQOL__/graphics/munda-logistic-robot-1.png",
        priority = "high",
        line_length = 16,
        width = 80,
        height = 84,
        frame_count = 1,
        shift = util.by_pixel(0, -3),
        direction_count = 16,
        y = 84,
        scale = 0.3
      }
    },
  
    idle_with_cargo =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
	    scale = 2,
      priority = "high",
      line_length = 16,
      width = 41,
      height = 42,
      frame_count = 1,
      shift = {0.015625, -0.09375},
      direction_count = 16,
      hr_version = {
        filename = "__StartWithBotsQOL__/graphics/munda-logistic-robot-1.png",
        priority = "high",
        line_length = 16,
        width = 80,
        height = 84,
        frame_count = 1,
        shift = util.by_pixel(0, -3),
        direction_count = 16,
        scale = 0.3
      }
    },
    in_motion =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
	    scale = 2,
      priority = "high",
      line_length = 16,
      width = 41,
      height = 42,
      frame_count = 1,
      shift = {0.015625, -0.09375},
      direction_count = 16,
      y = 126,
      hr_version = {
        filename = "__StartWithBotsQOL__/graphics/munda-logistic-robot-1.png",
        priority = "high",
        line_length = 16,
        width = 80,
        height = 84,
        frame_count = 1,
        shift = util.by_pixel(0, -3),
        direction_count = 16,
        y = 252,
        scale = 0.3
      }
    },
    in_motion_with_cargo =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
	    scale = 2,
      priority = "high",
      line_length = 16,
      width = 41,
      height = 42,
      frame_count = 1,
      shift = {0.015625, -0.09375},
      direction_count = 16,
      y = 84,
      hr_version = {
        filename = "__StartWithBotsQOL__/graphics/munda-logistic-robot-1.png",
        priority = "high",
        line_length = 16,
        width = 80,
        height = 84,
        frame_count = 1,
        shift = util.by_pixel(0, -3),
        direction_count = 16,
        y = 168,
        scale = 0.3
      }
    },
    shadow_idle =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
	    scale = 2,
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      direction_count = 16,
      y = 23,
      hr_version = {
        filename = "__base__/graphics/entity/logistic-robot/hr-logistic-robot-shadow.png",
        priority = "high",
        line_length = 16,
        width = 115,
        height = 57,
        frame_count = 1,
        shift = util.by_pixel(31.75, 19.75),
        direction_count = 16,
        y = 57,
        scale = 0.3
      }
    },
    shadow_idle_with_cargo =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
	    scale = 2,
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      direction_count = 16,
      hr_version = {
        filename = "__base__/graphics/entity/logistic-robot/hr-logistic-robot-shadow.png",
        priority = "high",
        line_length = 16,
        width = 115,
        height = 57,
        frame_count = 1,
        shift = util.by_pixel(31.75, 19.75),
        direction_count = 16,
        scale = 0.3
      }
    },
    shadow_in_motion =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
	    scale = 2,
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      direction_count = 16,
      y = 23,
      hr_version = {
        filename = "__base__/graphics/entity/logistic-robot/hr-logistic-robot-shadow.png",
        priority = "high",
        line_length = 16,
        width = 115,
        height = 57,
        frame_count = 1,
        shift = util.by_pixel(31.75, 19.75),
        direction_count = 16,
        y = 171,
        scale = 0.3
      }
    },
    shadow_in_motion_with_cargo =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
	    scale = 2,
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      direction_count = 16,
      hr_version = {
        filename = "__base__/graphics/entity/logistic-robot/hr-logistic-robot-shadow.png",
        priority = "high",
        line_length = 16,
        width = 115,
        height = 57,
        frame_count = 1,
        shift = util.by_pixel(31.75, 19.75),
        direction_count = 16,
        y = 114,
        scale = 0.3
      }
    },
    --working_sound = flying_robot_sounds(),
    cargo_centered = {0.0, 0.4},
  },
  













  





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
          scale = 0.3
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
          scale = 0.3
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