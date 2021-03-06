/datum/chat_command/help
	command = "help"
	usage = "/HELP"
	description = "Lists available chat commands."

/datum/chat_command/help/Invoke(var/mob/invoker, var/text)
	invoker.Notify("<b>Chat command list:</b>")
	for(var/chatkey in _glob.all_chat_commands)
		var/datum/chat_command/command = _glob.all_chat_commands[chatkey]
		if(command.CanInvoke(invoker))
			invoker.Notify("<b>[command.command]</b> - [command.usage] - [command.description]")

/datum/chat_command/objectives
	command = "objectives"
	usage = "/OBJECTIVES"
	description = "Lists your current objectives, if any."

/datum/chat_command/objectives/Invoke(var/mob/invoker, var/text)
	if(invoker.role)
		invoker.role.ShowObjectives()

/datum/chat_command/emote
	command = "me"
	usage = "/ME \<emote\>"
	description = "Perform an emote."

/datum/chat_command/emote/Invoke(var/mob/invoker, var/text)
	invoker.DoEmote(text)

/datum/chat_command/who
	command = "who"
	usage = "/WHO"
	description = "Lists currently online players."

/datum/chat_command/who/Invoke(var/mob/invoker, var/text)
	invoker.Notify("Players currently online:")
	for(var/client/player in _glob.clients)
		if(player.admin_permissions)
			invoker.Notify("[player.key] (<b>[player.admin_permissions.title]</b>)")
		else
			invoker.Notify("[player.key]")
	invoker.Notify("Total players: [_glob.clients.len].")

/datum/chat_command/ooc
	command = "ooc"
	usage = "/OOC \<message\>"
	description = "Send a global out of character message."

/datum/chat_command/ooc/Invoke(var/mob/invoker, var/text)
	invoker.DoOocMessage(text)

/datum/chat_command/respawn
	command = "respawn"
	usage = "/RESPAWN"
	description = "Return to the lobby."

/datum/chat_command/respawn/Invoke(var/mob/invoker, var/text)

	if(!istype(invoker, /mob/abstract/ghost))
		invoker.Notify("You must be dead to use this command.")
		return

	invoker.TransferControlTo(new /mob/abstract/new_player())
	QDel(invoker, "respawn complete")

/datum/chat_command/keybind
	command = "keybind"
	usage = "/KEYBIND"
	description = "Opens the key rebinding dialogue."

/datum/chat_command/keybind/Invoke(var/mob/invoker, var/text)
	if(invoker.client)
		invoker.client.RebindKey()
		invoker.client.SaveData()

/datum/chat_command/keybind_reset
	command = "rkeybind"
	usage = "/RKEYBIND"
	description = "Resets key bindings to default."

/datum/chat_command/keybind_reset/Invoke(var/mob/invoker, var/text)
	if(invoker.client)
		invoker.client.ResetKeybinds()
		invoker.client.SaveData()

/datum/chat_command/client_fps
	command = "setfps"
	usage = "/SETFPS"
	description = "Open the client FPS dialogue."

/datum/chat_command/client_fps/Invoke(var/mob/invoker, var/text)
	if(invoker.client)
		invoker.client.SetClientFps()