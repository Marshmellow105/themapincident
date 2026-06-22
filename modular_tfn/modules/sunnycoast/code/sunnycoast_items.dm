/obj/item/smartphone/seneschal
	name = "phone"
	desc = "A rotary telephone used by the TransAmerica C.O.O"
	ONFLOOR_ICON_HELPER(null)
	icon = 'modular_darkpack/modules/phones/icons/phone.dmi'
	icon_state = "phone_black"
	anchored = TRUE

/obj/item/smartphone/seneschal/Initialize(mapload)
	sim_card = new /obj/item/sim_card()
	sim_card.phone_weakref = WEAKREF(src)
	phone_flags |= PHONE_OPEN
	. = ..()

/obj/item/smartphone/seneschal/attack_hand(mob/user, list/modifiers)
	. = ..()
	ui_interact(user)
