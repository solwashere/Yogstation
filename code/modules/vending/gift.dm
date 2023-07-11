/obj/machinery/vending/gifts
	name = "\improper Gift Vendor"
	desc = "A vending machine for the gift shop."
	icon = 'yogstation/icons/obj/vending.dmi'
	icon_state = "gifts"
	icon_deny = "gifts-deny"
	req_access_txt = "36"
	product_slogans = "Toys For All!;Oh its a Gift!;A Gift for Your Loved ones!;Purchase more Gifts, Now!"
	vend_reply = "Thank you for using Gift Vendor!"
	products = list(/obj/item/toy/heartballoon = 3,
					/obj/item/toy/toyballoon = 3,
					/obj/item/toy/gun/toyglock = 3,
					/obj/item/toy/gun/toyflaregun = 3,
					/obj/item/toy/toygrenade = 15,
					/obj/item/balloonbox = 3,
					/obj/item/toy/plush/teddybear = 5,
					/obj/item/toy/plush/stuffedmonkey = 5,
					/obj/item/toy/plush/flowerbunch = 5,
					/obj/item/toy/plush/lizard/azeel = 5,
					/obj/item/camera_film = 30,
					/obj/item/storage/photo_album = 5,
					/obj/item/storage/photobook = 5,
					/obj/item/hourglass = 2,
					/obj/item/toy/frisbee = 2,
					/obj/item/toy/boomerang = 2,
					/obj/item/soccerball = 2,
					/obj/item/storage/bag/photo = 5,
					/obj/item/toy/plush/bubbleplush = 2,
					/obj/item/toy/plush/plushvar = 2,
					/obj/item/toy/plush/narplush = 2,
					/obj/item/toy/plush/lizardplushie = 2,
					/obj/item/toy/plush/snakeplushie = 2,
					/obj/item/toy/plush/nukeplushie = 2,
					/obj/item/toy/plush/slimeplushie = 2,
					/obj/item/toy/plush/inorixplushie = 2,
					/obj/item/toy/plush/beeplushie = 2,
					/obj/item/toy/plush/mothplushie = 2,
					/obj/item/toy/plush/foxplushie = 2,
					/obj/item/toy/plush/pkplushie = 2,
					/obj/item/toy/plush/cdragon = 2,
					/obj/item/clothing/head/yogs/froghat = 3,
					/obj/item/instrument/accordion = 1,
					/obj/item/instrument/eguitar = 1,
					/obj/item/instrument/glockenspiel = 1,
					/obj/item/instrument/harmonica = 1,
					/obj/item/instrument/recorder = 1,
					/obj/item/instrument/saxophone = 1,
					/obj/item/instrument/trombone = 1,
					/obj/item/instrument/trumpet = 1,
					/obj/item/instrument/piano_synth = 1,
					/obj/item/instrument/banjo = 1,
					/obj/item/storage/backpack = 4,
					/obj/item/reagent_containers/syringe = 3,
					/obj/item/reagent_containers/pill/patch/styptic = 2,
					/obj/item/reagent_containers/pill/patch/silver_sulf = 2,
					/obj/item/reagent_containers/glass/bottle/charcoal = 1,
					/obj/item/reagent_containers/pill/epinephrine = 1,
					/obj/item/reagent_containers/glass/beaker/large = 2,
					/obj/item/flashlight = 3,
					/obj/item/flashlight/flare = 1,
					/obj/item/flashlight/flare/signal = 1,
					/obj/item/storage/toolbox/mechanical = 1,
					/obj/item/stack/cable_coil/random = 4,
					/obj/item/pda = 8,
					/obj/item/cartridge/engineering = 2,
					/obj/item/cartridge/atmos = 2,
					/obj/item/cartridge/medical = 2,
					/obj/item/cartridge/chemistry = 2,
					/obj/item/cartridge/janitor = 2,
					/obj/item/cartridge/lawyer = 2,
					/obj/item/cartridge/curator = 2,
					/obj/item/cartridge/roboticist = 2,
					/obj/item/cartridge/quartermaster = 2)
	contraband = list(/obj/item/clothing/under/yogs/psyche = 1,
					  /obj/item/instrument/violin/golden = 1,
					  /obj/item/clothing/gloves/color/fyellow = 1,
					  /obj/item/airlock_painter = 1,
					  /obj/item/cartridge/security = 2,
					  /obj/item/cartridge/detective = 2,
					  /obj/item/cartridge/quartermaster = 2,
					  /obj/item/cartridge/head = 2,
					  /obj/item/cartridge/hop = 2,
					  /obj/item/cartridge/hos = 2,
					  /obj/item/cartridge/ce = 2,
					  /obj/item/cartridge/cmo = 2,
					  /obj/item/cartridge/rd = 2,
					  /obj/item/cartridge/captain = 1)
	premium = list(/obj/item/multitool = 1,
				   /obj/item/clothing/head/soft/fishfear = 4,
				   /obj/item/pda/clear = 1)

	default_price = 30
	extra_price = 75
	payment_department = ACCOUNT_SRV
