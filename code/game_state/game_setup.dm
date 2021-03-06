/datum/game_state/setup
	ident = GAME_SETTING_UP

/datum/game_state/setup/Init()

	_glob.mc = new()

	for(var/thing in _glob.atoms_to_initialize)
		var/atom/atom = thing
		atom.Initialize()
	_glob.atoms_to_initialize.Cut()

	world.UpdateStatus()

	..()

/datum/game_state/setup/Start()
	SwitchGameState(/datum/game_state/waiting)

/datum/game_state/setup/End()
	to_chat(world, "<h3><span class='notice'><b>Game setup complete!</b></span></h3>")

/datum/game_state/setup/OnLogin(var/client/player)
	to_chat(world, "<h3><span class='notice'><b>The game is setting up.</b></span></h3>")
