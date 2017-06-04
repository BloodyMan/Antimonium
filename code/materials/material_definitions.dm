/datum/material/cloth
	general_name = "cloth"
	strength = 0.1
	weight_modifier = 0.1
	sharpness_modifier = 0.1
	ignition_point = 700

/datum/material/cloth/cotton
	general_name = "cotton"
	colour = WHITE
	spinnable = TRUE

/datum/material/cloth/wool
	general_name = "wool"
	descriptor = "woolen"
	colour = WHITE
	spinnable = TRUE

/datum/material/cloth/felt
	general_name = "felt"
	descriptor = "felted"

/datum/material/wood
	general_name = "wood"
	descriptor = "wooden"
	strength = 0.3
	weight_modifier = 0.3
	sharpness_modifier = 0.3
	ignition_point = 600

/datum/material/wood/GetDebris(var/amount)
	return new /obj/item/stack/logs(material_path = type, _amount = amount)

/datum/material/wood/GetBuildableTurfs(var/obj/item/stack/building_with)
	if(building_with.singular_name == "plank")
		return list(/turf/floor/wood)
	return list(/turf/wall/wood)

/datum/material/meat
	general_name = "meat"
	descriptor = "raw"
	strength = 0.3
	weight_modifier = 0.3
	sharpness_modifier = 0.3
	ignition_point = 460

/datum/material/leather
	general_name = "leather"
	strength = 0.1
	weight_modifier = 0.2
	sharpness_modifier = 0.1
	thermal_insulation = TEMPERATURE_BURNING + 10 // placeholder

/datum/material/dirt
	general_name = "dirt"
	strength = 0.1
	weight_modifier = 0.2
	sharpness_modifier = 0.1
