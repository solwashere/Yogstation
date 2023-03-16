/datum/martial_art/killbill
	name = "kill bill"
	id = MARTIALART_KILLBILL
	help_verb

/datum/martial_art/killbill/harm_act(mob/living/carbon/human/A, mob/living/B)
	return TRUE

/datum/martial_art/killbill/interceptclickon(mob/living/carbon/human/A, mob/living/B)
	if(!A.adjacent(B) || A==B)
		return
	if(A.a_intent == INTENT_HARM && isliving(B))
		roundhouse(A,B)

/datum/martial_art/killbill/proc/roundhouse(mob/living/carbon/human/A, mob/living/B)
	/var/mob/living/victim = B
	A.emote("Spin")
	/var/picked_hit_type = pick("kicks", "spins around and kicks", "launches")
	victim.apply_damage(5, brute)
	to_chat(victim, span_userdanger("[src] spins around and kicks you, sending you flying backwards!"))
	/var/turf/destination = get_edge_target_turf(victim, dir)
	victim.throw_at(destination, 10, 5, src)
	playsound(get_turf(victim), '/sound/effects/roundhousekick.ogg', 50, 1, -1)

/datum/martial_art/killbill/disarm_act(mob/living/carbon/human/A, mob/living/B)
	return TRUE

/datum/martial_art/killbill/interceptclickon(mob/living/carbon/human/A, /mob/living/B)
if(!A.adjacent(B) || A==B)
		return
	if(A.a_intent == INTENT_DISARM && isliving(B))
		disarm(A,B)

/datum/martial_art/killbill/proc/disarm/(mob/living/carbon/human/A, mob/living/B)
	/var/mob/living/victim = B
	/var/obj/item/I = null
	if(prob(60))
		I = B.get_active_held_item()
		if(I)
			if(B.temporarilyremoveitemfrominventory(I))
				A.put_in_hands(I)
		D.visible_message(span_danger("[A] has disarmed [B]!")), \
		span_userdanger("[A] has disarmed [B]!")
		playsound(B, 'sound/weapons/thudwoosh.ogg', 50, 1, -1)
	else
		D.visible_message(span_danger("[A] failed to disarm [B]!"))
			span_userdanger("[A] failed to disarm [B]!")
		playsound(B, 'sound/weapons/punchmiss.ogg', 25, 1, -1)
	log_combat(A, B, "disarmed (kill bill martial art)", "[I ? "removing \the [I]" : ""]")


