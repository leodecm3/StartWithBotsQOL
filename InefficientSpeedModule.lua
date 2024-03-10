--[[Item]]--
data:extend({
  {
    type = "module",
    name = "InefficientSpeedModule",
    icon = "__StartWithBotsQOL__/graphics/icons/modules/InefficientSpeedModule.png",
	icon_size = 32,
    subgroup = "a-god",
    category = "god",
    tier = 1,
    order = "c[god]-a[god]",
    stack_size = 5000,
    default_request_amount = 10,
    effect = {speed = {bonus = 10.25}, consumption = {bonus = -2.25},productivity = {bonus = 0.01},pollution = {bonus = -2.25}},
  },
  })

--[[Recipe]]--
data:extend({
  {
    type = "recipe",
    name = "InefficientSpeedModule",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
	  {"iron-plate", 1}
    },
    result_count = 1,
    result = "InefficientSpeedModule"
  },
  })

--[[Technology]]--
data:extend({
  {
    type = "technology",
    name = "InefficientSpeedModule",
    icon = "__StartWithBotsQOL__/graphics/icons/modules/InefficientSpeedModule.png",
	icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "InefficientSpeedModule"
      }
    },
    prerequisites = {},
    unit =
    {
      count = 1,
      ingredients =
      {
        {"automation-science-pack", 1}
      },
      time = 1200
    },
    upgrade = true,
    order = "i-g-f"
  },
})