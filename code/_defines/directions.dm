var/list/cardinal_dirs = list(NORTH, SOUTH, EAST, WEST)
var/list/all_dirs = list(NORTH, NORTHEAST, EAST, SOUTHEAST, SOUTH, SOUTHWEST, WEST, NORTHWEST)
var/list/reverse_dirs = list("[NORTH]" = SOUTH, "[SOUTH]" = NORTH, "[EAST]" = WEST, "[WEST]" = EAST)
var/list/corner_dirs = list(NORTHWEST, SOUTHEAST, NORTHEAST, SOUTHWEST)
var/list/corner_cull = list(
	"[NORTHEAST]" = list("[NORTH]", "[EAST]"),
	"[NORTHWEST]" = list("[NORTH]", "[WEST]"),
	"[SOUTHEAST]" = list("[SOUTH]", "[EAST]"),
	"[SOUTHWEST]" = list("[SOUTH]", "[WEST]")
)
