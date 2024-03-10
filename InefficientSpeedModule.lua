
--copy data info from the speed module 1--
local copySpeedModuleOne = data.raw.module["speed-module"]

--[[Item]]--
data:extend({
  {
    type = "module",
    name = "InefficientSpeedModule",
    icon = "__StartWithBotsQOL__/graphics/icons/modules/InefficientSpeedModule.png",
	  icon_size = 32,
    subgroup = copySpeedModuleOne.subgroup,
    category = copySpeedModuleOne.category,
    tier = 1,
    order = copySpeedModuleOne.order,
    stack_size = 5000,
    default_request_amount = 10,
    effect = {speed = {bonus = 1.0}, consumption = {bonus = 100.0},productivity = {bonus = 0.00},pollution = {bonus = 10.0}},
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
	  {"wood", 10000}
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