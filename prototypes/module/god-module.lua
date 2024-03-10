--[[Item]]--
data:extend({
  {
    type = "module",
    name = "god-module",
    icon = "__Advanced_Modules__/graphics/icons/modules/god-module.png",
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
    name = "god-module",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
	  {"iron-plate", 1}
    },
    result_count = 1,
    result = "god-module"
  },
  })

--[[Technology]]--
data:extend({
  {
    type = "technology",
    name = "god-module",
    icon = "__Advanced_Modules__/graphics/icons/modules/god-module.png",
	icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "god-module"
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