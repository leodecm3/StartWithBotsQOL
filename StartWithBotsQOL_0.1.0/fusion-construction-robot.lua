local fusion_robot = table.deepcopy(data.raw['construction-robot']['construction-robot'])
fusion_robot.name = "fusion-construction-robot"
fusion_robot.icon = "__StartWithBotsQOL__/graphics/icons/fusion-construction-robot.png"
fusion_robot.minable.result = "fusion-construction-robot"
fusion_robot.energy_per_tick = "0.1kJ"
fusion_robot.energy_per_move = "0.1kJ"
fusion_robot.max_speed = 1
fusion_robot.speed = 1
fusion_robot.idle.filename = "__StartWithBotsQOL__/graphics/entity/fusion-construction-robot.png"
fusion_robot.idle.hr_version.filename = "__StartWithBotsQOL__/graphics/entity/hr-fusion-construction-robot.png"
fusion_robot.in_motion.filename = "__StartWithBotsQOL__/graphics/entity/fusion-construction-robot.png"
fusion_robot.in_motion.hr_version.filename = "__StartWithBotsQOL__/graphics/entity/hr-fusion-construction-robot.png"
fusion_robot.shadow_idle.filename = "__StartWithBotsQOL__/graphics/entity/fusion-construction-robot-shadow.png"
fusion_robot.shadow_idle.hr_version.filename = "__StartWithBotsQOL__/graphics/entity/hr-fusion-construction-robot-shadow.png"
fusion_robot.shadow_in_motion.filename = "__StartWithBotsQOL__/graphics/entity/fusion-construction-robot-shadow.png"
fusion_robot.shadow_in_motion.hr_version.filename = "__StartWithBotsQOL__/graphics/entity/hr-fusion-construction-robot-shadow.png"
fusion_robot.working.filename = "__StartWithBotsQOL__/graphics/entity/fusion-construction-robot-working.png"
fusion_robot.working.hr_version.filename = "__StartWithBotsQOL__/graphics/entity/hr-fusion-construction-robot-working.png"
		
		
data:extend({fusion_robot})