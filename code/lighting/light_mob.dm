/mob
	var/obj/plane/master/master_plane
	var/obj/plane/dark/dark_plane

/mob/Login()
	. = ..()
	refresh_lighting()

/mob/proc/refresh_lighting()
	if(!master_plane)
		master_plane = new(client)
	else
		client.screen |= master_plane
