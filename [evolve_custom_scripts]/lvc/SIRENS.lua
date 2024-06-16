--[[
---------------------------------------------------
LUXART VEHICLE CONTROL V3 (FOR FIVEM)
---------------------------------------------------
Coded by Lt.Caine
ELS Clicks by Faction
Additions by TrevorBarns
Additional custom sirens by Respawn Modifications
---------------------------------------------------
FILE: SIRENS.lua
PURPOSE: Associate specific sirens with specific
vehicles. Siren assignments. 
---------------------------------------------------
SIREN TONE TABLE: 
	ID- Generic Name	(SIREN STRING)									[vehicles.awc name]
	1 - Airhorn 		(SIRENS_AIRHORN)								[AIRHORN_EQD]
	2 - Wail 			(VEHICLES_HORNS_SIREN_1)						[SIREN_PA20A_WAIL]
	3 - Yelp 			(VEHICLES_HORNS_SIREN_2)						[SIREN_2]
	4 - Priority 		(VEHICLES_HORNS_POLICE_WARNING)					[POLICE_WARNING]
	5 - CustomA* 		(RESIDENT_VEHICLES_SIREN_WAIL_01)				[SIREN_WAIL_01]
	6 - CustomB* 		(RESIDENT_VEHICLES_SIREN_WAIL_02)				[SIREN_WAIL_02]
	7 - CustomC* 		(RESIDENT_VEHICLES_SIREN_WAIL_03)				[SIREN_WAIL_03]
	8 - CustomD* 		(RESIDENT_VEHICLES_SIREN_QUICK_01)				[SIREN_QUICK_01]
	9 - CustomE* 		(RESIDENT_VEHICLES_SIREN_QUICK_02)				[SIREN_QUICK_02]
	10 - CustomF* 		(RESIDENT_VEHICLES_SIREN_QUICK_03)				[SIREN_QUICK_03]
	11 - Powercall 		(VEHICLES_HORNS_AMBULANCE_WARNING)				[AMBULANCE_WARNING]
	12 - FireHorn	 	(VEHICLES_HORNS_FIRETRUCK_WARNING)				[FIRE_TRUCK_HORN]
	13 - Firesiren 		(RESIDENT_VEHICLES_SIREN_FIRETRUCK_WAIL_01)		[SIREN_FIRETRUCK_WAIL_01]
	14 - Firesiren2 	(RESIDENT_VEHICLES_SIREN_FIRETRUCK_QUICK_01)	[SIREN_FIRETRUCK_QUICK_01]
]]

--[[
Be sure to remove one of these if you remove their respective sound pack.
	Sirenpack1 = Code3 RLS
	Sirenpack2 = Whelen Gamma 2
	Sirenpack3 = Custom Fire/EMS sirens
	Sirenpack4 = Federal Signal PA4000
	Sirenpack5 = Powercall DX5
	Sirenpack6 = Whelen Cencom Sapphire
	Sirenpack7 = Federal Signal Smart Siren
]]
RequestScriptAudioBank("DLC_CODE3PACK\\CODE3RLS", true)

RequestScriptAudioBank("DLC_WHELENPACK\\WHELENGAMMA2", true)

RequestScriptAudioBank("DLC_FIREEMSPACK\\FIREEMS", true)

RequestScriptAudioBank("DLC_FEDSIGPACK\\FEDSIGPA4000", true)

RequestScriptAudioBank("DLC_DX5PACK\\DX5", true)

RequestScriptAudioBank("DLC_CENSAPPHIRE\\CENCOMSAPPHIRE", true)

RequestScriptAudioBank("DLC_SMARTSIREN\\SMARTSIREN", true)

--If you remmove sirens make sure to correct your numbers as the sirens go 1- whatever. So if you remove sirens 28-31, then you will have to go through and fix the numbers resuming after 27.
--If 28-31 were removed, the DX5 Horn would become the new 28 and so on.
--                |SIREN NAMES|                          |AUDIONAME|                                    |AUDIOREF|
SIRENS = {
	----------------------START DEFAULT GTA SIRENS------------------------------------------------------------------	
	--[[1]]	  { Name = 'Airhorn', 			String = 'SIRENS_AIRHORN', 								Ref = 0 }, --1
	--[[2]]	  { Name = 'Wail', 				String = 'VEHICLES_HORNS_SIREN_1', 						Ref = 0 }, --2
	--[[3]]	  { Name = 'Yelp', 				String = 'VEHICLES_HORNS_SIREN_2', 						Ref = 0 }, --3
	--[[4]]	  { Name = 'Priority', 			String = 'VEHICLES_HORNS_POLICE_WARNING', 				Ref = 0 }, --4
	--[[5]]	  { Name = 'CustomA', 			String = 'RESIDENT_VEHICLES_SIREN_WAIL_01', 			Ref = 0 }, --5
	--[[6]]	  { Name = 'CustomB', 			String = 'RESIDENT_VEHICLES_SIREN_WAIL_02', 			Ref = 0 }, --6
	--[[7]]	  { Name = 'CustomC', 			String = 'RESIDENT_VEHICLES_SIREN_WAIL_03', 			Ref = 0 }, --7
	--[[8]]	  { Name = 'CustomD', 			String = 'RESIDENT_VEHICLES_SIREN_QUICK_01', 			Ref = 0 }, --8
	--[[9]]	  { Name = 'CustomE',			String = 'RESIDENT_VEHICLES_SIREN_QUICK_02',			Ref = 0 }, --9
	--[[10]]  { Name = 'CustomF',			String = 'RESIDENT_VEHICLES_SIREN_QUICK_03', 			Ref = 0 }, --10
	--[[11]]  { Name = 'Powercall', 		String = 'VEHICLES_HORNS_AMBULANCE_WARNING', 			Ref = 0 }, --11
	--[[12]]  { Name = 'Fire Horn', 		String = 'VEHICLES_HORNS_FIRETRUCK_WARNING', 			Ref = 0 }, --12
	--[[13]]  { Name = 'Fire Yelp', 		String = 'RESIDENT_VEHICLES_SIREN_FIRETRUCK_WAIL_01', 	Ref = 0 }, --13
	--[[14]]  { Name = 'Fire Wail', 		String = 'RESIDENT_VEHICLES_SIREN_FIRETRUCK_QUICK_01', 	Ref = 0 }, --14
	----------------------END DEFAULT GTA SIRENS--------------------------------------------------------------------
    --[[15]]  { Name = "RLS Airhorn", 		String = "RLS_AIRHORN", 	        			Ref = "CODE3RLS_SOUNDSET" }, --15
    --[[16]]  { Name = "RLS Wail", 			String = "RLS_WAIL", 							Ref = "CODE3RLS_SOUNDSET" }, --16
    --[[17]]  { Name = "RLS Yelp", 			String = "RLS_YELP", 							Ref = "CODE3RLS_SOUNDSET" }, --17
    --[[18]]  { Name = "RLS Warning", 	    String = "RLS_WARNING", 						Ref = "CODE3RLS_SOUNDSET" }, --18
	--[[19]]  { Name = "Whelen Horn", 		String = "GAMMA_AIRHORN", 	        			Ref = "WHELENGAMMA2_SOUNDSET" }, --19
    --[[20]]  { Name = "Whelen Wail", 		String = "GAMMA_WAIL", 							Ref = "WHELENGAMMA2_SOUNDSET" }, --20
    --[[21]]  { Name = "Whelen Yelp", 		String = "GAMMA_YELP", 							Ref = "WHELENGAMMA2_SOUNDSET" }, --21
	--[[22]]  { Name = "Whelen Warn", 		String = "GAMMA_WARN", 							Ref = "WHELENGAMMA2_SOUNDSET" }, --22
    --[[23]]  { Name = "Whelen Riot", 		String = "GAMMA_RIOT", 							Ref = "WHELENGAMMA2_SOUNDSET" }, --23
	--[[24]]  { Name = "Fire Horn", 		String = "FIRE_HORN", 	        				Ref = "FIREEMS_SOUNDSET" }, --24
    --[[25]]  { Name = "Fire Wail", 		String = "FIRE_WAIL", 							Ref = "FIREEMS_SOUNDSET" }, --25
    --[[26]]  { Name = "Fire Yelp", 		String = "FIRE_YELP", 							Ref = "FIREEMS_SOUNDSET" }, --26
    --[[27]]  { Name = "Fire Warning", 		String = "FIRE_POWERCALL", 						Ref = "FIREEMS_SOUNDSET" }, --27
	--[[28]]  { Name = "PA Horn", 			String = "PA_AIRHORN", 	        				Ref = "FEDSIGPA4000_SOUNDSET" }, --28
    --[[29]]  { Name = "PA Wail", 			String = "PA_WAIL", 							Ref = "FEDSIGPA4000_SOUNDSET" }, --29
    --[[30]]  { Name = "PA Yelp", 			String = "PA_YELP", 							Ref = "FEDSIGPA4000_SOUNDSET" }, --30
    --[[31]]  { Name = "PA Warning", 	    String = "PA_WARNING", 							Ref = "FEDSIGPA4000_SOUNDSET" }, --31
	--[[32]]  { Name = "DX5 Horn", 			String = "DX5HORN", 	        				Ref = "DX5_SOUNDSET" }, --32
    --[[33]]  { Name = "DX5 Wail", 			String = "DX5WAIL", 							Ref = "DX5_SOUNDSET" }, --33
    --[[34]]  { Name = "DX5 Yelp", 			String = "DX5YELP", 							Ref = "DX5_SOUNDSET" }, --34
    --[[35]]  { Name = "DX5 Intersection", 	String = "DX5INTER", 							Ref = "DX5_SOUNDSET" }, --35
	--[[36]]  { Name = "DX5 HiLo", 	    	String = "DX5HILO", 							Ref = "DX5_SOUNDSET" }, --36
	--[[37]]  { Name = "DX5 Powercall", 	String = "DX5PCALLP", 							Ref = "DX5_SOUNDSET" }, --37
	--[[38]]  { Name = "Sapphire Horn", 	String = "SAPP_HORN", 	        				Ref = "CENCOMSAPPHIRE_SOUNDSET" }, --38
    --[[39]]  { Name = "Sapphire Wail", 	String = "SAPP_WAIL", 							Ref = "CENCOMSAPPHIRE_SOUNDSET" }, --39
    --[[40]]  { Name = "Sapphire Yelp", 	String = "SAPP_YELP", 							Ref = "CENCOMSAPPHIRE_SOUNDSET" }, --40
    --[[41]]  { Name = "Sapphire Warning", 	String = "SAPP_PIER", 							Ref = "CENCOMSAPPHIRE_SOUNDSET" }, --41
	--[[42]]  { Name = "Smart Siren Horn", 	String = "SSHORN", 								Ref = "SMARTSIREN_SOUNDSET" }, --42
	--[[43]]  { Name = "Smart Siren Wail", 	String = "SSWAIL", 								Ref = "SMARTSIREN_SOUNDSET" }, --43
	--[[44]]  { Name = "Smart Siren Yelp", 	String = "SSYELP", 								Ref = "SMARTSIREN_SOUNDSET" }, --44
	--[[45]]  { Name = "Smart Siren Prty", 	String = "SSPRTY", 								Ref = "SMARTSIREN_SOUNDSET" }, --45
	--[[46]]  { Name = "Smart Siren HiLo", 	String = "SSHILO", 								Ref = "SMARTSIREN_SOUNDSET" }, --46
}

--[[
ASSIGN SIRENS TO VEHICLES BELOW!

When adding vehicles make sure to check the vehicles.meta and use the GAMENAME not the spawn name or else the sirens won't be applied to the vehicle.
You can change the numbers to whatever you want for each department, this is just what I had set for each one.
]]
SIREN_ASSIGNMENTS = {
--['<gameName>'] = {tones},
['DEFAULT'] = {15, 16, 17, 18}, -- DO NOT REMOVE OR CHANGE! THIS IS A BACKUP FOR VEHICLES THAT HAVEN'T BEEN ADDED OR INCORRECTLY ADDED TO FALL BACK TOO!
-------------LSPD--------------
['DEFAULT'] = {15, 16, 17, 18},
-------------LSSD--------------
['DEFAULT'] = {28, 29, 30, 31},
-------------BCSO--------------
['DEFAULT'] = {38, 39, 40, 41},
-------------SAHP--------------
['DEFAULT'] = {42, 43, 44, 45, 46},
-------------SAFR--------------
['DEFAULT'] = {12, 14, 13, 11},
-------------Unmarked--------------
['DEFAULT'] = {42, 43, 44, 45, 46},
-----------Staff----------------------
['DEFAULT'] = {19, 20, 21, 22, 23},
}