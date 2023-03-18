/datum/martial_art/killbill
	name = "kill bill"
	id = MARTIALART_KILLBILL
	help_verb = /mob/living/carbon/human/proc/killbill_help

/datum/martial_art/killbill/harm_act(mob/living/carbon/human/A, mob/living/B)
	. = TRUE
	var/mob/living/victim = B
	A.emote("Spin")
	var/picked_hit_type = pick("kicks", "spins around and kicks")
	victim.apply_damage(10, BRUTE)
	to_chat(victim, span_userdanger("[A] spins around and kicks you, sending you flying backwards!"))
	var/turf/destination = get_edge_target_turf(victim, get_dir(A,B))
	victim.throw_at(destination, 6, 10, A)
	playsound(get_turf(victim), 'sound/effects/hit_kick.ogg', 50, 1, -1)

/datum/martial_art/killbill/disarm_act(mob/living/carbon/human/A, mob/living/B)
	. = TRUE
	var/mob/living/victim = B
	var/obj/item/I = null
	if(prob(60))
		I = B.get_active_held_item()
		if(I)
			if(B.temporarilyRemoveItemFromInventory(I))
				A.put_in_hands(I)
		B.visible_message(span_danger("[A] has disarmed [B]!"), \
		span_userdanger("[A] has disarmed [B]!"))
		playsound(B, 'sound/weapons/thudswoosh.ogg', 50, 1, -1)
	else
		B.visible_message(span_danger("[A] failed to disarm [B]!"), \
			span_userdanger("[A] failed to disarm [B]!"))
		playsound(B, 'sound/weapons/punchmiss.ogg', 25, 1, -1)
	log_combat(A, B, "disarmed (kill bill martial art)", "[I ? "removing \the [I]" : ""]")

/obj/item/katana/truehanzo
	var/datum/martial_art/killbill/style = new

/obj/item/katana/truehanzo/equipped(mob/user, slot)
	. = ..()
	if(!ishuman(user))
		return
	if(slot == SLOT_HANDS)
		var/mob/living/carbon/human/A = user
		style.teach(A,1)

/obj/item/katana/truehanzo/dropped(mob/user, slot)
	. = ..()
	if(!ishuman(user))
		return
	var/mob/living/carbon/human/A = user
	if(A.get_item_by_slot(SLOT_HANDS) == src)
		style.remove(A)

/mob/living/carbon/human/proc/killbill_help()
	set name = "Pai Meis teachings"
	set desc = "Remember the techniques of the ancient martial arts master"
	set category = "killbill"
	to_chat(usr, span_notice("<b><i>You recall some of Pai Meis teachings</b></i>"))

	to_chat(usr, span_notice("<b><i>While wielding the sword you are able to master the arts of Pai Meis teachings</b></i>"))
	to_chat(usr, span_notice("<b>Disarm Intent</b> Has a chance to disarm the opponent's main hand, and immediately pick up the item if successful"))
	to_chat(usr, span_notice("<b>Harm Intent</b> will allow you to do a roundhouse kick, sending your target flying"))

