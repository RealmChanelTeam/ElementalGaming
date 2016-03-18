--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------

This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomJobFields


Add jobs under the following line:
---------------------------------------------------------------------------]]
TEAM_CADET = DarkRP.createJob("Clone Recruit", {
   color = Color(120, 216, 75, 255),
   model = {"models/player/testc/cgi cadet.mdl"},
   description = [[You need to be trained to become a higher rank.]],
   weapons = {"weapon_752_dc15atraining"},
   command = "cadet",
   max = 0,
   salary = 0,
   admin = 0,
   vote = false,
   candemote = false,
   category = "Recruits",
   sortOrder = 1,
   PlayerSpawn = function(ply)
   ply:SetHealth(100)
end
})
--[[Clones]]--
TEAM_CT = DarkRP.createJob("Clone Trooper", {
   color = Color(0, 56, 255, 255),
   model = {"models/player/trooper/cctrooper.mdl"},
   description = [[Clone Trooper Private | Congrats on passing the training!]],
   weapons = {"weapon_752_dc15a"},
   command = "clonetrooper",
   max = 0,
   salary = 10,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "clonetrooper" or ply:IsSuperAdmin()  end,
   category = "Clone Trooper",
   sortOrder = 2,
   PlayerSpawn = function(ply)
   ply:SetHealth(300)
end	
})
TEAM_CT = DarkRP.createJob("Clone Trooper Sergant", {
   color = Color(0, 56, 255, 255),
   model = {"models/player/testp2c/cgi ctp2.mdl"},
   description = [[You are a clonetrooper sergant! Congrats on the promotion!]],
   weapons = {"weapon_752_dc15a"},
   command = "clonetrooper-sergant",
   max = 0,
   salary = 45,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "clonetrooper-sergant" or ply:IsSuperAdmin()  end,
   category = "Clone Trooper",
   sortOrder = 2,
    PlayerSpawn = function(ply)
    ply:SetHealth(650)
	end
})
TEAM_CT = DarkRP.createJob("Clone Trooper Commander", {
   color = Color(0, 56, 255, 255),
   model = {"models/player/stew/stew.mdl"},
   description = [[You are the Clone Trooper Commander! Youorder your troopers!]],
   weapons = {"weapon_752_dc15a","weapon_752bf3_binoculars","weapon_752_dc17dual"},
   command = "clonetrooper-commander",
   max = 1,
   salary = 60,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "clonetrooper-commander" or ply:IsSuperAdmin()  end,
   category = "Clone Trooper",
   sortOrder = 2,
    PlayerSpawn = function(ply)
    ply:SetHealth(1000)
	end
})
TEAM_CG = DarkRP.createJob("Clone Guard Trooper", {
   color = Color(119, 19, 19, 255),
   model = {"models/player/cguard/cgi cguard.mdl"},
   description = [[You are a Clone Guard Private | Congrats on passing the tryouts!]],
   weapons = {"weapon_752_dc15a","riot_shield"},
   command = "cloneguard-trooper",
   max = 0,
   salary = 10,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "cloneguard-trooper" or ply:IsSuperAdmin()  end,
   category = "Clone Guards",
   sortOrder = 2,
   PlayerSpawn = function(ply)
   ply:SetHealth(300)
end	
})
TEAM_CG = DarkRP.createJob("Clone Guard Sergant", {
   color = Color(119, 19, 19, 255),
   model = {"models/player/cguard/cgi cguard.mdl"},
   description = [[You are a Clone Guard Sergant, congrats on the promotion!]],
   weapons = {"weapon_752_dc15a","riot_shield"},
   command = "cloneguard-sergant",
   max = 0,
   salary = 45,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "cloneguard-sergant" or ply:IsSuperAdmin()  end,
   category = "Clone Guards",
   sortOrder = 2,
    PlayerSpawn = function(ply)
    ply:SetHealth(650)
	end
})
TEAM_CG = DarkRP.createJob("Clone Guard Commander Fox", {
   color = Color(119, 19, 19, 255),
   model = {"models/player/fox/ccfox.mdl"},
   description = [[You are the Clone Guard Commander Fox! You order your troopers!]],
   weapons = {"weapon_752_dc15a","riot_shield","weapon_752bf3_binoculars","weapon_752_dc17dual"},
   command = "cloneguard-commander",
   max = 1,
   salary = 60,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "cloneguard-commander" or ply:IsSuperAdmin()  end,
   category = "Clone Guards",
   sortOrder = 2,
    PlayerSpawn = function(ply)
    ply:SetHealth(1000)
	end
})
TEAM_CTP = DarkRP.createJob("Clone Trooper Pilot", {
   color = Color(144, 62, 62, 255),
   model = {"models/player/bst/bst.mdl"},
   description = [[Clone Trooper Pilot]],
   weapons = {"weapon_752_dc15a","weapon_752_dc17"},
   command = "ctp-trooper",
   max = 5,
   salary = 10,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "ctp-trooper" or ply:IsSuperAdmin()  end,
   category = "Clone Trooper Pilot",
   sortOrder = 7,
   PlayerSpawn = function(ply)
   ply:SetHealth(300)
   end	
})
TEAM_CTP = DarkRP.createJob("Clone Trooper Pilot Sergant", {
   color = Color(144, 62, 62, 255),
   model = {"models/player/bst/bst.mdl"},
   description = [[Clone Trooper Pilot SGT]],
   weapons = {"weapon_752_dc15a","weapon_752_dc17"},
   command = "ctp-sergant",
   max = 2,
   salary = 45,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "ctp-sergant" or ply:IsSuperAdmin()  end,
   category = "Clone Trooper Pilot",
   sortOrder = 7,
    PlayerSpawn = function(ply)
    ply:SetHealth(650)
	end
})
TEAM_CTP = DarkRP.createJob("Clone Trooper Pilot Commander", {
   color = Color(144, 62, 62, 255),
   model = {"models/player/krieg/ckrieg.mdl"},
   description = [[You are the Clone Trooper Pilot Commander | Youorder your troopers!]],
   weapons = {"weapon_752_dc15a","weapon_752_dc17","macrobinoculars"},
   command = "ctp-commander",
   max = 2,
   salary = 60,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "ctp-commander" or ply:IsSuperAdmin()  end,
   category = "Clone Trooper Pilot",
   sortOrder = 7,
    PlayerSpawn = function(ply)
    ply:SetHealth(1000)
	end
})
TEAM_34th = DarkRP.createJob("34th Trooper", {
   color = Color(237, 49, 49, 255),
   model = {"models/player/testks/cgi keeli soldier.mdl"},
   description = [[You are a 34th Trooper | Welcome to the 34th!]],
   weapons = {"weapon_752_dc15a"},
   command = "34th-trooper",
   max = 0,
   salary = 10,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "34th-trooper" or ply:IsSuperAdmin()  end,
   category = "34th",
   sortOrder = 3,
   PlayerSpawn = function(ply)
   ply:SetHealth(300)
end	
})
TEAM_34th = DarkRP.createJob("34th Sergant", {
   color = Color(237, 49, 49, 255),
   model = {"models/player/testks/cgi keeli soldier.mdl"},
   description = [[You are a 34th Sergant | Congrats on the promotion!]],
   weapons = {"weapon_752_dc15a"},
   command = "34th-sergant",
   max = 10,
   salary = 15,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "34th-sergant" or ply:IsSuperAdmin()  end,
   category = "34th",
   sortOrder = 3,
   PlayerSpawn = function(ply)
   ply:SetHealth(400)
end	
})
TEAM_34th = DarkRP.createJob("34th Lieutnant", {
   color = Color(237, 49, 49, 255),
   model = {"models/player/stooge/stooge.mdl"},
   description = [[You are a 34th Sergant | Congrats on the promotion!]],
   weapons = {"weapon_752_dc15a"},
   command = "34th-lieutnant",
   max = 10,
   salary = 20,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "34th-lieutnant" or ply:IsSuperAdmin()  end,
   category = "34th",
   sortOrder = 3,
   PlayerSpawn = function(ply)
   ply:SetHealth(650)
end	
})
TEAM_34th = DarkRP.createJob("34th Captain", {
   color = Color(237, 49, 49, 255),
   model = {"models/player/stooge/stooge.mdl"},
   description = [[You are a 34th Captain | Congrats on the promotion!]],
   weapons = {"weapon_752_dc15a"},
   command = "34th-captain",
   max = 10,
   salary = 30,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "34th-captain" or ply:IsSuperAdmin()  end,
   category = "34th",
   sortOrder = 3,
   PlayerSpawn = function(ply)
   ply:SetHealth(800)
end	
})
TEAM_34th = DarkRP.createJob("34th Commander", {
   color = Color(237, 49, 49, 255),
   model = {"models/player/testk/cgi keeli.mdl"},
   description = [[You are a 34th Commander | Youorder your troopers!]],
   weapons = {"weapon_752_dc15a","macrobinoculars"},
   command = "34th-commander",
   max = 2,
   salary = 40,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "34th-commander" or ply:IsSuperAdmin()  end,
   category = "34th",
   sortOrder = 3,
   PlayerSpawn = function(ply)
   ply:SetHealth(1000)
end	
})
TEAM_101st = DarkRP.createJob("101st Medic Trooper", {
   color = Color(242, 177, 79, 255),
   model = {"models/player/dyna/dyna.mdl"},
   description = [[You are a 101st Advanced Medic Trooper | Welcome to the 101st!]],
   weapons = {"weapon_752_dc15a","health_injection"},
   command = "101st-trooper",
   max = 0,
   salary = 10,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "101st-trooper" or ply:IsSuperAdmin()  end,
   category = "101st",
   sortOrder = 3,
   PlayerSpawn = function(ply)
   ply:SetHealth(300)
end	
})
TEAM_101st = DarkRP.createJob("101st Advanced Medic Trooper", {
   color = Color(242, 177, 79, 255),
   model = {"models/player/veco/veco.mdl"},
   description = [[You are a 101st Advanced Medic Trooper! | Congrats on the promotion!]],
   weapons = {"weapon_752_dc15a","health_injection"},
   command = "101st-advanced-trooper",
   max = 10,
   salary = 10,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "101st-advanced-trooper" or ply:IsSuperAdmin()  end,
   category = "101st",
   sortOrder = 3,
   PlayerSpawn = function(ply)
   ply:SetHealth(300)
end	
})
TEAM_101st = DarkRP.createJob("101st Elite Medic Trooper", {
   color = Color(242, 177, 79, 255),
   model = {"models/player/moose/moose.mdl"},
   description = [[You are a 101st Elite Medic Trooper | Congrats on the promotion!]],
   weapons = {"weapon_752_dc15a","macrobinoculars","health_injection"},
   command = "101st-elite-trooper",
   max = 2,
   salary = 10,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "101st-elite-trooper" or ply:IsSuperAdmin()  end,
   category = "101st",
   sortOrder = 3,
   PlayerSpawn = function(ply)
   ply:SetHealth(300)
end	
})

TEAM_187th = DarkRP.createJob("187th Trooper", {
   color = Color(139, 87, 191, 255),
   model = {"models/player/asgclonewars/clonetrooper_187th/clonetrooper_187th.mdl"},
   description = [[You are the 187th trooper! Congrats on passing the tryouts!]],
   weapons = {"weapon_752_dc15a"},
   command = "187th-trooper",
   max = 0,
   salary = 10,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "187th-trooper" or ply:IsSuperAdmin()  end,
   category = "187th",
   sortOrder = 9,
    PlayerSpawn = function(ply)
    ply:SetHealth(300)
	end
})
TEAM_187th = DarkRP.createJob("187th Sergant", {
   color = Color(139, 87, 191, 255),
   model = {"models/player/asgclonewars/trooper_187th_para/clonetrooper_187th_para.mdl"},
   description = [[You are the 187th Sergant!]],
   weapons = {"weapon_752_dc15a"},
   command = "187th-sergant",
   max = 0,
   salary = 45,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "187th-sergant" or ply:IsSuperAdmin()  end,
   category = "187th",
   sortOrder = 9,
    PlayerSpawn = function(ply)
    ply:SetHealth(650)
	end
})
TEAM_187th = DarkRP.createJob("187th Commander Deviss", {
   color = Color(139, 87, 191, 255),
   model = {"models/player/187commander/assassinv3.mdl"},
   description = [[You are the 187th Commander!]],
   weapons = {"weapon_752_dc15a","macrobinoculars"},
   command = "187th-commander",
   max = 1,
   salary = 60,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "187th-commander" or ply:IsSuperAdmin()  end,
   category = "187th",
   sortOrder = 9,
    PlayerSpawn = function(ply)
    ply:SetHealth(1000)
	end
})
TEAM_212th = DarkRP.createJob("212th Trooper", {
   color = Color(183, 132, 1, 255),
   model = {"models/player/212th/c212th trooper.mdl"},
   description = [[212th Trooper | Welcome to the 212th!]],
   weapons = {"weapon_752_dc15a"},
   command = "212th-trooper",
   max = 0,
   salary = 10,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "212th-trooper" or ply:IsSuperAdmin()  end,
   category = "212th",
   sortOrder = 3,
   PlayerSpawn = function(ply)
   ply:SetHealth(300)
end	
})
TEAM_212th = DarkRP.createJob("212th Sergant", {
   color = Color(183, 132, 1, 255),
   model = {"models/player/goco/goco.mdl"},
   description = [[You are a 212th Sergant]],
   weapons = {"weapon_752_dc15a","weapon_752_e60r"},
   command = "212th-sergant",
   max = 10,
   salary = 45,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "212th-sergant" or ply:IsSuperAdmin()  end,
   category = "212th",
   sortOrder = 3,
    PlayerSpawn = function(ply)
    ply:SetHealth(650)
	end
})
TEAM_212th = DarkRP.createJob("212th Lieutnant", {
   color = Color(183, 132, 1, 255),
   model = {"models/player/goco/goco.mdl"},
   description = [[You are a 212th Lieutnant]],
   weapons = {"weapon_752_dc15a","weapon_752_e60r"},
   command = "212th-lieutnant",
   max = 10,
   salary = 50,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "212th-lieutnant" or ply:IsSuperAdmin()  end,
   category = "212th",
   sortOrder = 3,
    PlayerSpawn = function(ply)
    ply:SetHealth(650)
	end
})
TEAM_212th = DarkRP.createJob("212th Captain", {
   color = Color(183, 132, 1, 255),
   model = {"models/player/sokol/sokol.mdl"},
   description = [[You are a 212th Captain]],
   weapons = {"weapon_752_dc15a","weapon_752_e60r"},
   command = "212th-captain",
   max = 10,
   salary = 55,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "212th-captain" or ply:IsSuperAdmin()  end,
   category = "212th",
   sortOrder = 3,
    PlayerSpawn = function(ply)
    ply:SetHealth(650)
	end
})
TEAM_212th = DarkRP.createJob("212th XO", {
   color = Color(183, 132, 1, 255),
   model = {"models/player/sokol/sokol.mdl"},
   description = [[You are a 212th XO]],
   weapons = {"weapon_752_dc15a","weapon_752_e60r"},
   command = "212th-xo",
   max = 2,
   salary = 55,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "212th-xo" or ply:IsSuperAdmin()  end,
   category = "212th",
   sortOrder = 3,
    PlayerSpawn = function(ply)
    ply:SetHealth(650)
	end
})
TEAM_212th = DarkRP.createJob("212th Commander Cody", {
   color = Color(183, 132, 1, 255),
   model = {"models/player/testccc/ccody.mdl"},
   description = [[You are the 212th Commander! Youorder your troopers]],
   weapons = {"weapon_752_dc15a","macrobinoculars","weapon_752_e60r"},
   command = "212th-commander",
   max = 1,
   salary = 60,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "212th-commander" or ply:IsSuperAdmin()  end,
   category = "212th",
   sortOrder = 3,
    PlayerSpawn = function(ply)
    ply:SetHealth(1000)
	end
})

TEAM_327th = DarkRP.createJob("327th Trooper", {
   color = Color(173, 175, 35, 255),
   model = {"models/player/327th/c327tht.mdl"},
   description = [[You are the 327th trooper! Congrats on passing the tryouts!]],
   weapons = {"weapon_752_dc15a"},
   command = "327th-trooper",
   max = 0,
   salary = 10,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "327th-trooper" or ply:IsSuperAdmin()  end,
   category = "327th",
   sortOrder = 4,
    PlayerSpawn = function(ply)
    ply:SetHealth(300)
	end
})
TEAM_327th = DarkRP.createJob("327th Sergant", {
   color = Color(173, 175, 35, 255),
   model = {"models/player/medt/medt.mdl"},
   description = [[You are the 327th Sergant!]],
   weapons = {"weapon_752_dc15a"},
   command = "327th-sergant",
   max = 10,
   salary = 45,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "327th-sergant" or ply:IsSuperAdmin()  end,
   category = "327th",
   sortOrder = 4,
    PlayerSpawn = function(ply)
    ply:SetHealth(650)
	end
})
TEAM_327th = DarkRP.createJob("327th Lieutnant", {
   color = Color(173, 175, 35, 255),
   model = {"models/player/medt/medt.mdl"},
   description = [[You are the 327th Lieutnant!]],
   weapons = {"weapon_752_dc15a"},
   command = "327th-lieutnant",
   max = 10,
   salary = 45,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "327th-lieutnant" or ply:IsSuperAdmin()  end,
   category = "327th",
   sortOrder = 4,
    PlayerSpawn = function(ply)
    ply:SetHealth(700)
	end
})
TEAM_327th = DarkRP.createJob("327th Captain", {
   color = Color(173, 175, 35, 255),
   model = {"models/player/king/king.mdl"},
   description = [[You are the 327th Captain!]],
   weapons = {"weapon_752_dc15a"},
   command = "327th-captain",
   max = 10,
   salary = 45,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "327th-captain" or ply:IsSuperAdmin()  end,
   category = "327th",
   sortOrder = 4,
    PlayerSpawn = function(ply)
    ply:SetHealth(750)
	end
})
TEAM_327th = DarkRP.createJob("327th XO", {
   color = Color(173, 175, 35, 255),
   model = {"models/player/king/king.mdl"},
   description = [[You are the 327th XO!]],
   weapons = {"weapon_752_dc15a"},
   command = "327th-xo",
   max = 2,
   salary = 45,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "327th-xo" or ply:IsSuperAdmin()  end,
   category = "327th",
   sortOrder = 4,
    PlayerSpawn = function(ply)
    ply:SetHealth(800)
	end
})

TEAM_327th = DarkRP.createJob("327th Commander Bly", {
   color = Color(173, 175, 35, 255),
   model = {"models/player/bly/cbly.mdl"},
   description = [[You are the 327th Commander!]],
   weapons = {"weapon_752_dc15a","macrobinoculars"},
   command = "327th-commander",
   max = 1,
   salary = 60,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "327th-commander" or ply:IsSuperAdmin()  end,
   category = "327th",
   sortOrder = 4,
    PlayerSpawn = function(ply)
    ply:SetHealth(1000)
	end
})
TEAM_501ST = DarkRP.createJob("501st Trooper", {
   color = Color(133, 229, 242, 255),
   model = {"models/player/501st/c501st.mdl"},
   description = [[You are a 501st trooper! Congrats on passing the tryouts!]],
   weapons = {"weapon_752_dc17","weapon_752_dc15a"},
   command = "501st-trooper",
   max = 0,
   salary = 10,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "501st-trooper" or ply:IsSuperAdmin()  end,
   category = "501st",
   sortOrder = 14,
    PlayerSpawn = function(ply)
    ply:SetHealth(300)
	end
})
TEAM_501ST = DarkRP.createJob("501st Sergant", {
   color = Color(133, 229, 242, 255),
   model = {"models/player/501stlt/c501stlt.mdl"},
   description = [[You are a 501st Sergant!]],
   weapons = {"weapon_752_dc17","weapon_752_dc15a"},
   command = "501st-sergant",
   max = 0,
   salary = 45,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "501st-sergant" or ply:IsSuperAdmin()  end,
   category = "501st",
   sortOrder = 14,
    PlayerSpawn = function(ply)
    ply:SetHealth(650)
	end
})
TEAM_501ST = DarkRP.createJob("501st Lieutnant", {
   color = Color(133, 229, 242, 255),
   model = {"models/player/kano/kano.mdl"},
   description = [[You are a 501st Lieutnant!]],
   weapons = {"weapon_752_dc17","weapon_752_dc15a"},
   command = "501st-lieutnant",
   max = 0,
   salary = 45,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "501st-lieutnant" or ply:IsSuperAdmin()  end,
   category = "501st",
   sortOrder = 14,
    PlayerSpawn = function(ply)
    ply:SetHealth(650)
	end
})
TEAM_501ST = DarkRP.createJob("501st Captain Rex", {
   color = Color(133, 229, 242, 255),
   model = {"models/player/test/rex.mdl"},
   description = [[You are the 501st Captain!]],
   weapons = {"weapon_752_dc17","weapon_752_dc15a","macrobinoculars"},
   command = "501st-captain",
   max = 2,
   salary = 60,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "501st-captain" or ply:IsSuperAdmin()  end,
   category = "501st",
   sortOrder = 14,
    PlayerSpawn = function(ply)
    ply:SetHealth(1000)
	end
})
TEAM_501ST = DarkRP.createJob("501st Commander", {
   color = Color(133, 229, 242, 255),
   model = {"models/player/501stlt/c501stlt.mdl"},
   description = [[You are the 501st Commander!]],
   weapons = {"weapon_752_dc17","weapon_752_dc15a","macrobinoculars"},
   command = "501st-commander",
   max = 2,
   salary = 60,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "501st-commander" or ply:IsSuperAdmin()  end,
   category = "501st",
   sortOrder = 14,
    PlayerSpawn = function(ply)
    ply:SetHealth(1000)
	end
})
TEAM_612th = DarkRP.createJob("612th Attack Battalion Trooper", {
   color = Color(144, 62, 62, 255),
   model = {"models/player/asgclonewars/612th_trooper/612th_trooper2.mdl"},
   description = [[You are the 612th Attack Battalion trooper! Congrats on passing the tryouts!]],
   weapons = {"weapon_752_dc15a"},
   command = "612th-trooper",
   max = 0,
   salary = 10,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "612th-trooper" or ply:IsSuperAdmin()  end,
   category = "612th Attack Battalion",
   sortOrder = 10,
    PlayerSpawn = function(ply)
    ply:SetHealth(300)
	end
})
TEAM_612th = DarkRP.createJob("612th Attack Battalion Sergant", {
   color = Color(144, 62, 62, 255),
   model = {"models/player/asgclonewars/612th_trooper/612th_trooper.mdl"},
   description = [[You are the 612th Sergant!]],
   weapons = {"weapon_752_dc15a"},
   command = "612th-sergant",
   max = 0,
   salary = 45,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "612th-sergant" or ply:IsSuperAdmin()  end,
   category = "612th Attack Battalion",
   sortOrder = 10,
    PlayerSpawn = function(ply)
    ply:SetHealth(650)
	end
})
TEAM_612th = DarkRP.createJob("612th Attack Battalion Commander Ganch", {
   color = Color(144, 62, 62, 255),
   model = {"models/player/asgclonewars/commander_fox/commander_fox.mdl"},
   description = [[You are the 612th Attack Battalion Commander Ganch!]],
   weapons = {"weapon_752_dc15a","macrobinoculars"},
   command = "612th-commander",
   max = 1,
   salary = 60,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "612th-commander" or ply:IsSuperAdmin()  end,
   category = "612th Attack Battalion",
   sortOrder = 10,
    PlayerSpawn = function(ply)
    ply:SetHealth(1000)
	end
})

TEAM_WP = DarkRP.createJob("Wolf Pack Trooper", {
   color = Color(158, 156, 156, 255),
   model = {"models/wpclonetrooper.mdl"},
   description = [[You are a Wolf Pack Trooper | Congrats on passing the tryouts!]],
   weapons = {"weapon_752_dc15a","realistic_hook","riot_shield"},
   command = "wolf-pack-trooper",
   max = 0,
   salary = 10,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "wolf-pack-trooper" or ply:IsSuperAdmin()  end,
   category = "Wolf Pack",
   sortOrder = 5,
    PlayerSpawn = function(ply)
    ply:SetHealth(300)
	end
})
TEAM_WP = DarkRP.createJob("Wolf Pack Sergant", {
   color = Color(158, 156, 156, 255),
   model = {"models/wpclonetrooper2.mdl"},
   description = [[You are a Wolf Pack Sergant!]],
   weapons = {"weapon_752_dc15a","realistic_hook","riot_shield"},
   command = "wolf-pack-sergant",
   max = 0,
   salary = 45,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "wolf-pack-sergant" or ply:IsSuperAdmin()  end,
   category = "Wolf Pack",
   sortOrder = 5,
    PlayerSpawn = function(ply)
    ply:SetHealth(650)
	end
})
TEAM_WP = DarkRP.createJob("Wolf Pack Commander Wolffe", {
   color = Color(158, 156, 156, 255),
   model = {"models/player/wolffe/ccgi wolffe.mdl"},
   description = [[You are a Wolf Pack Commander Wolffe! Yourorder your troopers!]],
   weapons = {"weapon_752_dc15a","realistic_hook","riot_shield","macrobinoculars"},
   command = "wolf-pack-commander",
   max = 1,
   salary = 60,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "wolf-pack-commander" or ply:IsSuperAdmin()  end,
   category = "Wolf Pack",
   sortOrder = 5,
    PlayerSpawn = function(ply)
    ply:SetHealth(1000)
	end
})
TEAM_GC = DarkRP.createJob("Green Company Trooper", {
   color = Color(5, 252, 0, 255),
   model = {"models/player/41st/c41st.mdl"},
   description = [[Green Company Trooper]],
   weapons = {"weapon_752_dc15a","weapon_lasermgun"},
   command = "green-company-trooper",
   max = 0,
   salary = 10,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "green-company-trooper" or ply:IsSuperAdmin()  end,
   category = "Green Company",
   sortOrder = 6,
   PlayerSpawn = function(ply)
   ply:SetHealth(300)
   end	
})
TEAM_GC = DarkRP.createJob("Green Company Sergant", {
   color = Color(5, 252, 0, 255),
   model = {"models/player/41st/c41st.mdl"},
   description = [[Green Company SGT]],
   weapons = {"weapon_752_dc15a","weapon_lasermgun"},
   command = "green-company-sergant",
   max = 0,
   salary = 45,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "green-company-sergant" or ply:IsSuperAdmin()  end,
   category = "Green Company",
   sortOrder = 6,
    PlayerSpawn = function(ply)
    ply:SetHealth(650)
	end
})
TEAM_GC = DarkRP.createJob("Green Company Commander Gree", {
   color = Color(5, 252, 0, 255),
   model = {"models/player/sgg/starwars/clonetrooper_gree.mdl"},
   description = [[Green Company Commander]],
   weapons = {"weapon_752_dc15a","weapon_lasermgun","macrobinoculars"},
   command = "green-company-commander",
   max = 1,
   salary = 60,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "green-company-commander" or ply:GetNWString("usergroup") == "Moderator" or ply:IsSuperAdmin()  end,
   category = "Green Company",
   sortOrder = 6,
    PlayerSpawn = function(ply)
    ply:SetHealth(1000)
	end
})
TEAM_GM = DarkRP.createJob("Galatic Marine Trooper", {
   color = Color(138, 33, 242, 255),
   model = {"models/player/sgg/starwars/clonetrooper_marine.mdl"},
   description = [[Galatic Marine Trooper]],
   weapons = {"weapon_752_dc15a","weapon_752_dc17","weapon_752_dc17m_br"},
   command = "gm-trooper",
   max = 0,
   salary = 10,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "gm-trooper" or ply:IsSuperAdmin()  end,
   category = "Galatic Marine",
   sortOrder = 8,
   PlayerSpawn = function(ply)
   ply:SetHealth(300)
   end	
})
TEAM_GM = DarkRP.createJob("Galatic Marine Sergant", {
   color = Color(138, 33, 242, 255),
   model = {"models/player/sgg/starwars/clonetrooper_marine.mdl"},
   description = [[Galatic Marine SGT]],
   weapons = {"weapon_752_dc15a","weapon_752_dc17","weapon_752_dc17m_br"},
   command = "gm-sergant",
   max = 0,
   salary = 45,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "gm-sergant" or ply:IsSuperAdmin()  end,
   category = "Galatic Marine",
   sortOrder = 8,
    PlayerSpawn = function(ply)
    ply:SetHealth(650)
	end
})
TEAM_GM = DarkRP.createJob("Galatic Marine Commander Bacara", {
   color = Color(138, 33, 242, 255),
   model = {"models/player/sgg/starwars/clonetrooper_bacara.mdl"},
   description = [[You are the Galatic Marine Commander | Youorder your troopers!]],
   weapons = {"weapon_752_dc15a","weapon_752_dc17","weapon_752_dc17m_br"},
   command = "gm-commander",
   max = 1,
   salary = 60,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "gm-commander" or ply:IsSuperAdmin()  end,
   category = "Galatic Marine",
   sortOrder = 8,
    PlayerSpawn = function(ply)
    ply:SetHealth(1000)
	end
})
TEAM_EOD = DarkRP.createJob("EOD Trooper", {
   color = Color(247, 203, 46, 255),
   model = {"models/player/deckboy/custom_clone_pm/212_clone_pm.mdl"},
   description = [[You are the EOD trooper! Congrats on passing the tryouts!]],
   weapons = {"weapon_752_dc17"},
   command = "eod-trooper",
   max = 0,
   salary = 10,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "eod-trooper" or ply:IsSuperAdmin()  end,
   category = "EOD",
   sortOrder = 11,
    PlayerSpawn = function(ply)
    ply:SetHealth(300)
	end
})
TEAM_EOD = DarkRP.createJob("EOD Sergant", {
   color = Color(247, 203, 46, 255),
   model = {"models/player/deckboy/custom_clone_pm/212_clone_pm.mdl"},
   description = [[You are the EOD Sergant!]],
   weapons = {"weapon_752_dc17"},
   command = "eod-sergant",
   max = 0,
   salary = 45,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "eod-sergant" or ply:IsSuperAdmin()  end,
   category = "EOD",
   sortOrder = 11,
    PlayerSpawn = function(ply)
    ply:SetHealth(650)
	end
})
TEAM_EOD = DarkRP.createJob("EOD Commander", {
   color = Color(247, 203, 46, 255),
   model = {"models/player/asgclonewars/eod_trooper/eod_trooper.mdl"},
   description = [[You are the EOD Commander!]],
   weapons = {"weapon_752_dc17","macrobinoculars"},
   command = "eod-commander",
   max = 0,
   salary = 60,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "eod-commander" or ply:IsSuperAdmin()  end,
   category = "EOD",
   sortOrder = 11,
    PlayerSpawn = function(ply)
    ply:SetHealth(1000)
	end
})
TEAM_ARF = DarkRP.createJob("Advanced Recon Forces Trooper", {
   color = Color(255, 107, 0, 255),
   model = {"models/player/212a/cgi212a.mdl"},
   description = [[You are a Advanced Recon Forces trooper! Congrats on passing the tryouts!]],
   weapons = {"weapon_752_dc17m_sn","weapon_752_dc15a"},
   command = "advanced-recon-forces-trooper",
   max = 0,
   salary = 10,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "advanced-recon-forces-trooper" or ply:IsSuperAdmin()  end,
   category = "Advanced Recon Forces",
   sortOrder = 13,
    PlayerSpawn = function(ply)
    ply:SetHealth(300)
	end
})
TEAM_ARF = DarkRP.createJob("Advanced Recon Forces Lieutnant", {
   color = Color(255, 107, 0, 255),
   model = {"models/player/carf/ccarf.mdl"},
   description = [[You are a Advanced Recon Forces Lieutnant!]],
   weapons = {"weapon_752_dc17m_sn","weapon_752_dc15a"},
   command = "advanced-recon-forces-lieutnant",
   max = 10,
   salary = 45,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "advanced-recon-forces-lieutnant" or ply:IsSuperAdmin()  end,
   category = "Advanced Recon Forces",
   sortOrder = 13,
    PlayerSpawn = function(ply)
    ply:SetHealth(650)
	end
})
TEAM_ARF = DarkRP.createJob("Advanced Recon Forces Captain", {
   color = Color(255, 107, 0, 255),
   model = {"models/player/pat/pat.mdl"},
   description = [[You are a Advanced Recon Forces Captain!]],
   weapons = {"weapon_752_dc17m_sn","weapon_752_dc15a"},
   command = "advanced-recon-forces-captain",
   max = 10,
   salary = 55,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "advanced-recon-forces-captain" or ply:IsSuperAdmin()  end,
   category = "Advanced Recon Forces",
   sortOrder = 13,
    PlayerSpawn = function(ply)
    ply:SetHealth(750)
	end
})
TEAM_ARF = DarkRP.createJob("Advanced Recon Forces XO", {
   color = Color(255, 107, 0, 255),
   model = {"models/player/dansea/danseacb.mdl"},
   description = [[You are a Advanced Recon Forces XO!]],
   weapons = {"weapon_752_dc17m_sn","weapon_752_dc15a"},
   command = "advanced-recon-forces-xo",
   max = 5,
   salary = 60,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "advanced-recon-forces-xo" or ply:IsSuperAdmin()  end,
   category = "Advanced Recon Forces",
   sortOrder = 13,
    PlayerSpawn = function(ply)
    ply:SetHealth(850)
	end
})
TEAM_ARF = DarkRP.createJob("Advanced Recon Forces Battalion Commander", {
   color = Color(255, 107, 0, 255),
   model = {"models/player/dansea/danseacb.mdl"},
   description = [[You are the Advanced Recon Forces Commander!]],
   weapons = {"weapon_752_dc17m_sn","weapon_752_dc15a","macrobinoculars"},
   command = "advanced-recon-forces-bc",
   max = 1,
   salary = 65,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "advanced-recon-forces-bc" or ply:IsSuperAdmin()  end,
   category = "Advanced Recon Forces",
   sortOrder = 13,
    PlayerSpawn = function(ply)
    ply:SetHealth(1000)
	end
})
TEAM_ARF = DarkRP.createJob("Advanced Recon Forces Commander Trauma", {
   color = Color(255, 107, 0, 255),
   model = {"models/player/trauma/cctrauma.mdl"},
   description = [[You are the Advanced Recon Forces Commander!]],
   weapons = {"weapon_752_dc17m_sn","weapon_752_dc15a","macrobinoculars"},
   command = "trauma",
   max = 1,
   salary = 65,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "trauma" or ply:IsSuperAdmin()  end,
   category = "Advanced Recon Forces",
   sortOrder = 13,
    PlayerSpawn = function(ply)
    ply:SetHealth(1000)
	end
})
TEAM_ARC = DarkRP.createJob("ARC Trooper", {
   color = Color(0, 196, 239, 255),
   model = {"models/player/barc/cgicbarc.mdl"},
   description = [[You are a ARC trooper! Congrats on passing the tryouts!]],
   weapons = {"weapon_752_dc17","weapon_752_dc15a"},
   command = "arc-trooper",
   max = 0,
   salary = 10,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "arc-trooper" or ply:IsSuperAdmin()  end,
   category = "ARC",
   sortOrder = 14,
    PlayerSpawn = function(ply)
    ply:SetHealth(300)
	end
})
TEAM_ARC = DarkRP.createJob("ARC Sergant", {
   color = Color(0, 196, 239, 255),
   model = {"models/player/garc/garc.mdl"},
   description = [[You are a ARC Sergant!]],
   weapons = {"weapon_752_dc17","weapon_752_dc15a"},
   command = "arc-sergant",
   max = 10,
   salary = 45,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "arc-sergant" or ply:IsSuperAdmin()  end,
   category = "ARC",
   sortOrder = 14,
    PlayerSpawn = function(ply)
    ply:SetHealth(650)
	end
})
TEAM_ARC = DarkRP.createJob("ARC Lieutnant", {
   color = Color(0, 196, 239, 255),
   model = {"models/player/rarc/cgirarc.mdl"},
   description = [[You are a ARC Lieutnant!]],
   weapons = {"weapon_752_dc17","weapon_752_dc15a"},
   command = "arc-lieutnant",
   max = 5,
   salary = 45,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "arc-lieutnant" or ply:IsSuperAdmin()  end,
   category = "ARC",
   sortOrder = 14,
    PlayerSpawn = function(ply)
    ply:SetHealth(650)
	end
})
TEAM_ARC = DarkRP.createJob("ARC XO", {
   color = Color(0, 196, 239, 255),
   model = {"models/player/wuky/wuky.mdl"},
   description = [[You are a ARC XO!]],
   weapons = {"weapon_752_dc17","weapon_752_dc15a"},
   command = "arc-xo",
   max = 5,
   salary = 65,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "arc-xo" or ply:IsSuperAdmin()  end,
   category = "ARC",
   sortOrder = 14,
    PlayerSpawn = function(ply)
    ply:SetHealth(850)
	end
})
TEAM_ARC = DarkRP.createJob("ARC Commander", {
   color = Color(0, 196, 239, 255),
   model = {"models/player/yarc/cgicyarc.mdl"},
   description = [[You are the ARC Commander!]],
   weapons = {"weapon_752_dc17","weapon_752_dc15a","macrobinoculars"},
   command = "arc-commander",
   max = 2,
   salary = 60,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "arc-commander" or ply:IsSuperAdmin()  end,
   category = "ARC",
   sortOrder = 14,
    PlayerSpawn = function(ply)
    ply:SetHealth(1000)
	end
})
TEAM_RG = DarkRP.createJob("Royal Guard Trooper", {
   color = Color(255, 255, 255, 255),
   model = {"models/kriegsyntax/sw_752/meleetrooper_est.mdl"},
   description = [[You are a Royal Guard trooper! Congrats on passing the tryouts! (Donators only!)]],
   weapons = {"weapon_752_dc17","weapon_752_dc15a"},
   command = "rg-trooper",
   max = 0,
   salary = 10,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "rg-trooper" or ply:IsSuperAdmin()  end,
   category = "Royal Guard",
   sortOrder = 14,
    PlayerSpawn = function(ply)
    ply:SetHealth(300)
	end
})
TEAM_RG = DarkRP.createJob("Royal Guard Sergant", {
   color = Color(255, 255, 255, 255),
   model = {"models/kriegsyntax/sw_752/meleetrooper_est.mdl"},
   description = [[You are a Royal Guard trooper! Congrats on the promotion! (Donators only!)]],
   weapons = {"weapon_752_dc17","weapon_752_dc15a"},
   command = "rg-sergant",
   max = 10,
   salary = 25,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "rg-sergant" or ply:IsSuperAdmin()  end,
   category = "Royal Guard",
   sortOrder = 14,
    PlayerSpawn = function(ply)
    ply:SetHealth(600)
	end
})
TEAM_RG = DarkRP.createJob("Royal Guard Commander", {
   color = Color(255, 255, 255, 255),
   model = {"models/kriegsyntax/sw_752/meleetrooper_est.mdl"},
   description = [[You are a Royal Guard Commander! You can noworder your troopers! (Donators only!)]],
   weapons = {"weapon_752_dc17","weapon_752_dc15a"},
   command = "rg-commander",
   max = 2,
   salary = 25,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "rg-commander" or ply:IsSuperAdmin()  end,
   category = "Royal Guard",
   sortOrder = 14,
    PlayerSpawn = function(ply)
    ply:SetHealth(600)
	end
})
TEAM_CE = DarkRP.createJob("Clone Engineer Trooper", {
   color = Color(229, 103, 11, 255),
   model = {"models/player/clone engineer/ccgi engineer.mdl"},
   description = [[You are a Clone Engineer trooper! Congrats on passing the tryouts!]],
   weapons = {"weapon_752_dc17","weapon_752_dc15a"},
   command = "ce-trooper",
   max = 0,
   salary = 10,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "ce-trooper" or ply:IsSuperAdmin()  end,
   category = "Clone Engineer",
   sortOrder = 14,
    PlayerSpawn = function(ply)
    ply:SetHealth(300)
	end
})
TEAM_CE = DarkRP.createJob("Clone Engineer Commander", {
   color = Color(229, 103, 11, 255),
   model = {"models/player/dengi/dengi.mdl"},
   description = [[You are a Clone Engineer Commander! You can now order your troopers!]],
   weapons = {"weapon_752_dc17","weapon_752_dc15a"},
   command = "ce-commander",
   max = 2,
   salary = 25,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "ce-commander" or ply:IsSuperAdmin()  end,
   category = "Clone Engineer",
   sortOrder = 14,
    PlayerSpawn = function(ply)
    ply:SetHealth(600)
	end
})
TEAM_RC = DarkRP.createJob("Republic Commando Trooper", {
   color = Color(0, 94, 255, 255),
   model = {"models/player/sgg/starwars/clone_commando.mdl"},
   description = [[You are a Republic Commando trooper! Congrats on passing the tryouts!]],
   weapons = {"weapon_752_dc17","weapon_752_dc15a"},
   command = "rc-trooper",
   max = 0,
   salary = 10,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "rc-trooper" or ply:IsSuperAdmin()  end,
   category = "Republic Commandos",
   sortOrder = 14,
    PlayerSpawn = function(ply)
    ply:SetHealth(300)
	end
})
TEAM_RC = DarkRP.createJob("Republic Commando Commander Recon", {
   color = Color(0, 94, 255, 255),
   model = {"models/player/sgg/starwars/clone_commando_mp_d.mdl"},
   description = [[You are a Republic Commando Commander Recon! You can now order your troopers!]],
   weapons = {"weapon_752_dc17","weapon_752_dc15a"},
   command = "rc-recon",
   max = 1,
   salary = 25,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "rc-recon" or ply:IsSuperAdmin()  end,
   category = "Republic Commandos",
   sortOrder = 14,
    PlayerSpawn = function(ply)
    ply:SetHealth(600)
	end
})
TEAM_DS = DarkRP.createJob("Delta Squad Sev", {
   color = Color(0, 94, 255, 255),
   model = {"models/player/sgg/starwars/clone_commando_07.mdl"},
   description = [[You are Delta Squad Sev!]],
   weapons = {"weapon_752_dc17","weapon_752_dc15a"},
   command = "ds-sev",
   max = 1,
   salary = 15,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "ds-sev" or ply:IsSuperAdmin()  end,
   category = "Delta Squad",
   sortOrder = 14,
    PlayerSpawn = function(ply)
    ply:SetHealth(350)
	end
})
TEAM_DS = DarkRP.createJob("Delta Squad Fixer", {
   color = Color(0, 94, 255, 255),
   model = {"models/player/sgg/starwars/clone_commando_40.mdl"},
   description = [[You are Delta Squad Fixer!]],
   weapons = {"weapon_752_dc17","weapon_752_dc15a"},
   command = "ds-fixer",
   max = 1,
   salary = 25,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "ds-fixer" or ply:IsSuperAdmin()  end,
   category = "Delta Squad",
   sortOrder = 14,
    PlayerSpawn = function(ply)
    ply:SetHealth(450)
	end
})
TEAM_DS = DarkRP.createJob("Delta Squad Scorch", {
   color = Color(0, 94, 255, 255),
   model = {"models/player/sgg/starwars/clone_commando_62.mdl"},
   description = [[You are Delta Squad Scorch!]],
   weapons = {"weapon_752_dc17","weapon_752_dc15a"},
   command = "ds-scorch",
   max = 1,
   salary = 35,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "ds-scorch" or ply:IsSuperAdmin()  end,
   category = "Delta Squad",
   sortOrder = 14,
    PlayerSpawn = function(ply)
    ply:SetHealth(550)
	end
})
TEAM_DS = DarkRP.createJob("Delta Squad Commander Boss", {
   color = Color(0, 94, 255, 255),
   model = {"models/player/sgg/starwars/clone_commando_38.mdl"},
   description = [[You are Delta Squad Commander Boss!]],
   weapons = {"weapon_752_dc17","weapon_752_dc15a"},
   command = "ds-boss",
   max = 1,
   salary = 45,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "ds-boss" or ply:IsSuperAdmin()  end,
   category = "Delta Squad",
   sortOrder = 14,
    PlayerSpawn = function(ply)
    ply:SetHealth(750)
	end
})
TEAM_OS = DarkRP.createJob("Omega Squad Darman", {
   color = Color(0, 94, 255, 255),
   model = {"models/player/sgg/starwars/clone_commando_mp_a.mdl"},
   description = [[You are Omega Squad Darman!]],
   weapons = {"weapon_752_dc17","weapon_752_dc15a"},
   command = "os-darman",
   max = 1,
   salary = 25,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "os-darman" or ply:IsSuperAdmin()  end,
   category = "Omega Squad",
   sortOrder = 14,
    PlayerSpawn = function(ply)
    ply:SetHealth(450)
	end
})
TEAM_OS = DarkRP.createJob("Omega Squad Atin", {
   color = Color(0, 94, 255, 255),
   model = {"models/player/sgg/starwars/clone_commando_mp_a.mdl"},
   description = [[You are Omega Squad Atin!]],
   weapons = {"weapon_752_dc17","weapon_752_dc15a"},
   command = "os-atin",
   max = 1,
   salary = 25,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "os-atin" or ply:IsSuperAdmin()  end,
   category = "Omega Squad",
   sortOrder = 14,
    PlayerSpawn = function(ply)
    ply:SetHealth(450)
	end
})
TEAM_OS = DarkRP.createJob("Omega Squad FI", {
   color = Color(0, 94, 255, 255),
   model = {"models/player/sgg/starwars/clone_commando_mp_a.mdl"},
   description = [[You are Omega Squad FI!]],
   weapons = {"weapon_752_dc17","weapon_752_dc15a"},
   command = "os-fi",
   max = 1,
   salary = 35,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "os-fi" or ply:IsSuperAdmin()  end,
   category = "Omega Squad",
   sortOrder = 14,
    PlayerSpawn = function(ply)
    ply:SetHealth(550)
	end
})
TEAM_OS = DarkRP.createJob("Omega Squad Commander Niner", {
   color = Color(0, 94, 255, 255),
   model = {"models/player/sgg/starwars/clone_commando_mp_a.mdl"},
   description = [[You are Omega Squad Commander Niner!]],
   weapons = {"weapon_752_dc17","weapon_752_dc15a"},
   command = "os-niner",
   max = 1,
   salary = 45,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "os-niner" or ply:IsSuperAdmin()  end,
   category = "Omega Squad",
   sortOrder = 14,
    PlayerSpawn = function(ply)
    ply:SetHealth(750)
	end
})
TEAM_KC = DarkRP.createJob("Keeli Company Trooper",{
   color = Color(0, 94, 255, 255),
   model = {"models/player/csf/csf.mdl"},
   description = [[You are a Keeli Company Trooper! Congrats on passing the tryouts!]],
   weapons = {"weapon_752_dc17","weapon_752_dc15a"},
   command = "kc-trooper",
   max = 0,
   salary = 45,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "kc-trooper" or ply:IsSuperAdmin()  end,
   category = "Keeli Company",
   sortOrder = 14,
    PlayerSpawn = function(ply)
    ply:SetHealth(300)
	end
})
TEAM_KC = DarkRP.createJob("Keeli Company Sergeant",{
   color = Color(0, 94, 255, 255),
   model = {"models/player/deviss/ccdeviss.mdl"},
   description = [[You are a Keeli Company Sergeant!]],
   weapons = {"weapon_752_dc17","weapon_752_dc15a"},
   command = "kc-sergeant",
   max = 10,
   salary = 45,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "kc-sergeant" or ply:IsSuperAdmin()  end,
   category = "Keeli Company",
   sortOrder = 14,
    PlayerSpawn = function(ply)
    ply:SetHealth(650)
	end
})
TEAM_KC = DarkRP.createJob("Keeli Company Commander",{
   color = Color(0, 94, 255, 255),
   model = {"models/player/stooge/stooge.mdl"},
   description = [[You are a Keeli Company Sergeant!]],
   weapons = {"weapon_752_dc17","weapon_752_dc15a"},
   command = "kc-commander",
   max = 10,
   salary = 45,
   admin = 0,
   vote = false,
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "kc-commander" or ply:IsSuperAdmin()  end,
   category = "Keeli Company",
   sortOrder = 14,
    PlayerSpawn = function(ply)
    ply:SetHealth(1000)
	end
})
TEAM_GOAT = DarkRP.createJob("General Of The Army", {
   color = Color(63, 61, 61, 255),
   model = {"models/player/arcg/arcg.mdl"},
   description = [[You are the General Of The Army!]],
   weapons = {"weapon_752_dc17","weapon_752_dc15a","macrobinoculars"},
   command = "general-of-the-army",
   max = 1,
   salary = 60,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "general-of-the-army" or ply:IsSuperAdmin()  end,
   category = "General Of The Army",
   sortOrder = 14,
    PlayerSpawn = function(ply)
    ply:SetHealth(1200)
	end
})
--[[Fleet]]--
TEAM_FLEET = DarkRP.createJob("Fleet Cadet", {
   color = Color(102, 102, 102, 255),
   model = {"models/player/donut/donut.mdl"},
   description = [[You are a fleet, you help in the control room]],
   weapons = {"weapon_752_dc17"},
   command = "fleet-cadet",
   max = 0,
   salary = 100,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "fleet-cadet" or ply:IsSuperAdmin()  end,
   category = "Fleet",
   sortOrder = 68,
    PlayerSpawn = function(ply)
    ply:SetHealth(500)
	end
})
TEAM_FLEET = DarkRP.createJob("Fleet Captain", {
   color = Color(102, 102, 102, 255),
   model = {"models/player/donut/donut.mdl"},
   description = [[You are a fleet, you help in the control room]],
   weapons = {"weapon_752_dc17"},
   command = "fleet-cpt",
   max = 10,
   salary = 300,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "fleet-cpt" or ply:IsSuperAdmin()  end,
   category = "Fleet",
   sortOrder = 68,
    PlayerSpawn = function(ply)
    ply:SetHealth(1000)
	end
})
TEAM_FLEET = DarkRP.createJob("Fleet Commander", {
   color = Color(102, 102, 102, 255),
   model = {"models/player/donut/donut.mdl"},
   description = [[You are a fleet, you help in the control room]],
   weapons = {"weapon_752_dc17"},
   command = "fleet-commander",
   max = 10,
   salary = 300,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "fleet-commander" or ply:IsSuperAdmin()  end,
   category = "Fleet",
   sortOrder = 68,
    PlayerSpawn = function(ply)
    ply:SetHealth(1000)
	end
})
TEAM_FLEET = DarkRP.createJob("Fleet Admiral", {
   color = Color(102, 102, 102, 255),
   model = {"models/player/donut/donut.mdl"},
   description = [[You are a fleet, you help in the control room]],
   weapons = {"weapon_752_dc17"},
   command = "fleet-admiral",
   max = 2,
   salary = 500,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "fleet-admiral" or ply:IsSuperAdmin()  end,
   category = "Fleet",
   sortOrder = 68,
    PlayerSpawn = function(ply)
    ply:SetHealth(1500)
	end
})
TEAM_FLEET = DarkRP.createJob("Grand Admiral", {
   color = Color(102, 102, 102, 255),
   model = {"models/player/wullf/wullf.mdl"},
   description = [[You are a fleet, you help in the control room]],
   weapons = {"weapon_752_dc17"},
   command = "grand-admiral",
   max = 1,
   salary = 10000,
   admin = 0,
   vote = false,
   
   candemote = false,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "grand-admiral" or ply:IsSuperAdmin()  end,
   category = "Fleet",
   sortOrder = 68,
    PlayerSpawn = function(ply)
    ply:SetHealth(2000)
	end
})
--[[Jedis]]--
TEAM_JEDI = DarkRP.createJob("Ki Adi Mundi", {
color = Color(227, 169, 232, 255),
model = {"models/player/nav/mundi.mdl"},
description = [[You are the one and only Ki Adi Mundi]],
weapons = {"weapon_lightsaber"},
command = "kiadimundi",
max = 1,
salary = 100,
admin = 0,
vote = false,

candemote = false,
customCheck = function(ply) return ply:GetNWString("usergroup") == "kiadimundi" or  ply:IsSuperAdmin() end,
modelScale = 1,
category = "Hero Jobs",
sortOrder = 15,
PlayerSpawn = function(ply)
ply:SetHealth(10000)
end
})
TEAM_JEDI = DarkRP.createJob("Kit Fisto", {
color = Color(227, 169, 232, 255),
model = {"models/player/nav/kitfisto.mdl"},
description = [[You are the one and only Kit Fisto]],
weapons = {"weapon_lightsaber"},
command = "kitfisto",
max = 1,
salary = 100,
admin = 0,
vote = false,

candemote = false,
customCheck = function(ply) return ply:GetNWString("usergroup") == "kitfisto" or  ply:IsSuperAdmin() end,
modelScale = 1,
category = "Hero Jobs",
sortOrder = 15,
PlayerSpawn = function(ply)
ply:SetHealth(10000)
end
})
TEAM_JEDI = DarkRP.createJob("Plo Koon", {
color = Color(227, 169, 232, 255),
model = {"models/player/plokoon/plokoon.mdl"},
description = [[You are the one and only Plo Koon]],
weapons = {"weapon_lightsaber"},
command = "plokoon",
max = 1,
salary = 100,
admin = 0,
vote = false,

candemote = false,
customCheck = function(ply) return ply:GetNWString("usergroup") == "plokoon" or ply:IsSuperAdmin() end,
modelScale = 1,
category = "Hero Jobs",
sortOrder = 15,
PlayerSpawn = function(ply)
ply:SetHealth(10000)
end
})
TEAM_JEDI = DarkRP.createJob("Mace Windu", {
color = Color(227, 169, 232, 255),
model = {"models/player/mace/mace.mdl"},
description = [[You are the one and only Mace Windu]],
weapons = {"weapon_lightsaber"},
command = "macewindu",
max = 1,
salary = 100,
admin = 0,
vote = false,

candemote = false,
customCheck = function(ply) return ply:GetNWString("usergroup") == "macewindu" or ply:IsSuperAdmin() end,
modelScale = 1,
category = "Hero Jobs",
sortOrder = 15,PlayerSpawn = function(ply)
ply:SetHealth(10000)
end
})

TEAM_JEDI = DarkRP.createJob("Anakin Skywalker", {
color = Color(227, 169, 232, 255),
model = {"models/kriegsyntax/sw_752/anakin_est.mdl"},
description = [[You are the one and only Anakin Skywalker]],
weapons = {"weapon_lightsaber"},
command = "anakinskywalker",
max = 1,
salary = 100,
admin = 0,
vote = false,

candemote = false,
customCheck = function(ply) return ply:GetNWString("usergroup") == "anakinskywalker" or ply:IsSuperAdmin() end,
modelScale = 1,
category = "Hero Jobs",
sortOrder = 15,PlayerSpawn = function(ply)
ply:SetHealth(10000)
end
})

TEAM_JEDI = DarkRP.createJob("Obi Wan Kanobi", {
color = Color(227, 169, 232, 255),
model = {"models/player/generalkenobi/cgikenobi.mdl"},
description = [[You are Obi Wan Kanobi, Anakin Skywalker's master.]],
weapons = {"weapon_lightsaber"},
command = "obiwankanobi",
max = 1,
salary = 100,
admin = 0,
vote = false,

candemote = false,
customCheck = function(ply) return ply:GetNWString("usergroup") == "obiwankanobi" or ply:IsSuperAdmin() end,
modelScale = 1,
category = "Hero Jobs",
sortOrder = 15,PlayerSpawn = function(ply)
ply:SetHealth(10000)
end
})
TEAM_JEDI = DarkRP.createJob("Jedi Grand Master Yoda", {
color = Color(227, 169, 232, 255),
model = {"models/hgn/swrp/swrp/jedi_yoda.mdl"},
description = [[You are jedi grand master Yoda!]],
weapons = {"weapon_lightsaber"},
command = "yoda",
max = 1,
salary = 100,
admin = 0,
vote = false,

candemote = false,
customCheck = function(ply) return ply:GetNWString("usergroup") == "yoda" or ply:IsSuperAdmin() end,
modelScale = 0.5,
category = "Hero Jobs",
sortOrder = 15,PlayerSpawn = function(ply)
ply:SetHealth(15000)
end
})
TEAM_JEDI = DarkRP.createJob("Jedi Padawan", {
   color = Color(227, 169, 232, 255),
   model = {"models/player/b4p/b4p_ahsoka/ahsoka.mdl"},
   description = [[You are a Jedi Padawan! Await your training to pass the trials!]],
   weapons = {"weapon_lightsaber"},
   command = "jedipad",
   max = 0,
   salary = 100,
   admin = 0,
   vote = false,
   
   candemote = true,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "jedipadawan" or ply:IsSuperAdmin() end,
   category = "Jedi",
   sortOrder = 15,   PlayerSpawn = function(ply)
   ply:SetHealth(6500)
   end
   })
TEAM_JEDI = DarkRP.createJob("Jedi Knight", {
   color = Color(227, 169, 232, 255),
   model = {"models/kriegsyntax/sw_752/kyle_est.mdl"},
   description = [[You are a Jedi Knight! you passed training and are now a full Jedi!]],
   weapons = {"weapon_lightsaber"},
   command = "jediknight",
   max = 0,
   salary = 100,
   admin = 0,
   vote = false,
   
   candemote = true,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "jediknight" or ply:IsSuperAdmin() end,
   category = "Jedi",
   sortOrder = 15,   PlayerSpawn = function(ply)
   ply:SetHealth(9500)
   end
   })
TEAM_JEDI = DarkRP.createJob("Jedi Master", {
   color = Color(227, 169, 232, 255),
   model = {"models/player/nav/aayla.mdl"},
   description = [[You are a Jedi Master! Seek out a padawan and train him for his trials.]],
   weapons = {"weapon_lightsaber"},
   command = "jedimaster",
   max = 0,
   salary = 100,
   admin = 0,
   vote = false,
   
   candemote = true,
   customCheck = function(ply) return ply:GetNWString("usergroup") == "jedimaster" or ply:IsSuperAdmin() end,
   category = "Jedi",
   sortOrder = 15,   PlayerSpawn = function(ply)
   ply:SetHealth(12500)
   end
   })
--[[Staff Jobs]]--
TEAM_JEDI = DarkRP.createJob("Staff On Duty", {
   color = Color(227, 169, 232, 255),
   model = {"models/player/anon/anon.mdl"},
   description = [[You are staff, congratz.]],
   weapons = {"weapon_lightsaber"},
   command = "sod",
   max = 0,
   salary = 10000000000,
   admin = 0,
   vote = false,
   
   candemote = true,
   customCheck = function(ply) return ply:IsSuperAdmin() or ply:IsAdmin() end,
   category = "Staff On Duty",
   sortOrder = 15,   
   PlayerSpawn = function(ply)
   ply:SetHealth(100000)
   end
   })
--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CADET