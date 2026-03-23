local Services = setmetatable({}, {
    __index = function(self, serviceName)
        local service = game:GetService(serviceName)
        rawset(self, serviceName, service)
        return service
    end
})


local HttpService = Services.HttpService
local FolderName = "Zyn Hub | Farm"
local FileName = "Settings.json"
local FullPath = FolderName .. "/" .. FileName

if makefolder and not isfolder(FolderName) then 
    makefolder(FolderName) 
end

_G.SaveData = _G.SaveData or {}

function SaveSettings()
    if not writefile then return false end
    local success = pcall(function()
        local json = HttpService:JSONEncode(_G.SaveData)
        writefile(FullPath, json)
    end)
    return success
end

function LoadSettings()
    if not (isfile and isfile(FullPath)) then return false end
    local success, result = pcall(function()
        local content = readfile(FullPath)
        return HttpService:JSONDecode(content)
    end)
    if success and result then 
        _G.SaveData = result
        return true
    end
    return false
end

function GetSetting(name, default)
    return _G.SaveData[name] ~= nil and _G.SaveData[name] or default
end

LoadSettings()

-- ========================================
-- AUTO KEN (Observation Haki)
-- ========================================
local Players = Services.Players
local CollectionService = Services.CollectionService
local ReplicatedStorage = Services.ReplicatedStorage

local player = Players.LocalPlayer
local commE = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("CommE")

_G.AutoKen = true

local function HasKen()
    local char = player.Character
    return char and CollectionService:HasTag(char, "Ken")
end

task.spawn(function()
    while _G.AutoKen do
        task.wait(0.2)
        if not HasKen() then
            pcall(function()
                commE:FireServer("Ken", true)
            end)
        end
    end
end)

-- ========================================
-- AUTO TEAM & LIGHTING
-- ========================================
local desiredTeam = "Marines"

if not player.Team or player.Team.Name ~= desiredTeam then
    pcall(function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("SetTeam", desiredTeam)
    end)
end

local Lighting = Services.Lighting

-- Full bright (optimized lighting)
Lighting.Ambient = Color3.new(0.695, 0.695, 0.695)
Lighting.ColorShift_Bottom = Color3.new(0.695, 0.695, 0.695)
Lighting.ColorShift_Top = Color3.new(0.695, 0.695, 0.695)
Lighting.Brightness = 2
Lighting.FogEnd = 1e10

-- ========================================
-- GLOBAL VARIABLES (Cached & Organized)
-- ========================================
do
    ply = Services.Players
    plr = ply.LocalPlayer
    Root = plr.Character.HumanoidRootPart
    replicated = Services.ReplicatedStorage
    Lv = plr.Data.Level.Value
    TeleportService = Services.TeleportService
    TW = Services.TweenService
    Lighting = Services.Lighting
    Enemies = workspace.Enemies
    vim1 = Services.VirtualInputManager
    vim2 = Services.VirtualUser
    TeamSelf = plr.Team
    RunSer = Services.RunService
    Stats = Services.Stats
    Energy = plr.Character.Energy.Value
    
    -- Tables
    Boss = {}
    BringConnections = {}
    MaterialList = {}
    NPCList = {}
    
    -- Flags
    shouldTween = false
    SoulGuitar = false
    KenTest = true
    debug = false
    Brazier1 = false
    Brazier2 = false
    Brazier3 = false
    Sec = 0.1
    ClickState = 0
    Num_self = 25
end

-- Wait for game to load
repeat
    local loading = plr.PlayerGui:FindFirstChild("Main")
    loading = loading and loading:FindFirstChild("Loading")
    task.wait()
until game:IsLoaded() and not (loading and loading.Visible)

-- World Detection (Optimized)
local placeId = game.PlaceId
if placeId == 2753915549 or placeId == 85211729168715 then
    World1 = true
elseif placeId == 4442272183 or placeId == 79091703265657 then
    World2 = true
elseif placeId == 7449423635 or placeId == 100117331123089 then
    World3 = true
else
    plr:Kick("❌ Error Blox Fruits - World not recognized")
end

Sea = World1 or World2 or World3

Marines = function()
    replicated.Remotes.CommF_:InvokeServer("SetTeam", "Marines")
end

Pirates = function()
    replicated.Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
end
if World1 then
	Boss = {
			"The Gorilla King",
			"Bobby",
			"The Saw",
			"Yeti",
			"Mob Leader",
			"Vice Admiral",
			"Saber Expert",
			"Warden",
			"Chief Warden",
			"Swan",
			"Magma Admiral",
			"Fishman Lord",
			"Wysper",
			"Thunder God",
			"Cyborg",
			"Ice Admiral",
			"Greybeard",
		};
elseif World2 then
	Boss = {
			"Diamond",
			"Jeremy",
			"Fajita",
			"Don Swan",
			"Smoke Admiral",
			"Awakened Ice Admiral",
			"Tide Keeper",
			"Darkbeard",
			"Cursed Captain",
			"Order",
		};
elseif World3 then
	Boss = {
			"Stone",
			"Hydra Leader",
			"Kilo Admiral",
			"Captain Elephant",
			"Beautiful Pirate",
			"Cake Queen",
			"Longma",
			"Soul Reaper",
		};
end;
if World1 then
	MaterialList = {
			"Leather + Scrap Metal",
			"Angel Wings",
			"Magma Ore",
			"Fish Tail",
		};
elseif World2 then
	MaterialList = {
			"Leather + Scrap Metal",
			"Radioactive Material",
			"Ectoplasm",
			"Mystic Droplet",
			"Magma Ore",
			"Vampire Fang",
		};
elseif World3 then
	MaterialList = {
			"Scrap Metal",
			"Demonic Wisp",
			"Conjured Cocoa",
			"Dragon Scale",
			"Gunpowder",
			"Fish Tail",
			"Mini Tusk",
		};
end;
local e = {
		"Flame",
		"Ice",
		"Quake",
		"Light",
		"Dark",
		"String",
		"Rumble",
		"Magma",
		"Human: Buddha",
		"Sand",
		"Bird: Phoenix",
		"Dough",
	};
local K = {
		"Snow Lurker",
		"Arctic Warrior",
		"Hidden Key",
		"Awakened Ice Admiral",
	};
local n = {
		Mob = "Mythological Pirate",
		Mob2 = "Cursed Skeleton",
		"Hell\'s Messenger",
		Mob3 = "Cursed Skeleton",
		"Heaven\'s Guardian",
	};
local d = {
		"Part",
		"SpawnLocation",
		"Terrain",
		"WedgePart",
		"MeshPart",
	};
local z = { "Swan Pirate", "Jeremy" };
local H = { "Forest Pirate", "Captain Elephant" };
local F = { "Fajita", "Jeremy", "Diamond" };
local Q = {
		"Beast Hunter",
		"Lantern",
		"Guardian",
		"Grand Brigade",
		"Dinghy",
		"Sloop",
		"The Sentinel",
	};
local X = { "Cookie Crafter", "Head Baker", "Baking Staff", "Cake Guard" };
local P = { "Reborn Skeleton", "Posessed Mummy", "Demonic Soul", "Living Zombie" };
local w = {
		["Pirate Millionaire"] = CFrame.new(-712.82727050781, 98.577049255371, 5711.9541015625),
		["Pistol Billionaire"] = CFrame.new(-723.43316650391, 147.42906188965, 5931.9931640625),
		["Dragon Crew Warrior"] = CFrame.new(7021.5043945312, 55.762702941895, -730.12908935547),
		["Dragon Crew Archer"] = CFrame.new(6625, 378, 244),
		["Female Islander"] = CFrame.new(4692.7939453125, 797.97668457031, 858.84802246094),
		["Venomous Assailant"] = CFrame.new(4902, 670, 39),
		["Marine Commodore"] = CFrame.new(2401, 123, -7589),
		["Marine Rear Admiral"] = CFrame.new(3588, 229, -7085),
		["Fishman Raider"] = CFrame.new(-10941, 332, -8760),
		["Fishman Captain"] = CFrame.new(-11035, 332, -9087),
		["Forest Pirate"] = CFrame.new(-13446, 413, -7760),
		["Mythological Pirate"] = CFrame.new(-13510, 584, -6987),
		["Jungle Pirate"] = CFrame.new(-11778, 426, -10592),
		["Musketeer Pirate"] = CFrame.new(-13282, 496, -9565),
		["Reborn Skeleton"] = CFrame.new(-8764, 142, 5963),
		["Living Zombie"] = CFrame.new(-10227, 421, 6161),
		["Demonic Soul"] = CFrame.new(-9579, 6, 6194),
		["Posessed Mummy"] = CFrame.new(-9579, 6, 6194),
		["Peanut Scout"] = CFrame.new(-1993, 187, -10103),
		["Peanut President"] = CFrame.new(-2215, 159, -10474),
		["Ice Cream Chef"] = CFrame.new(-877, 118, -11032),
		["Ice Cream Commander"] = CFrame.new(-877, 118, -11032),
		["Cookie Crafter"] = CFrame.new(-2021, 38, -12028),
		["Cake Guard"] = CFrame.new(-2024, 38, -12026),
		["Baking Staff"] = CFrame.new(-1932, 38, -12848),
		["Head Baker"] = CFrame.new(-1932, 38, -12848),
		["Cocoa Warrior"] = CFrame.new(95, 73, -12309),
		["Chocolate Bar Battler"] = CFrame.new(647, 42, -12401),
		["Sweet Thief"] = CFrame.new(116, 36, -12478),
		["Candy Rebel"] = CFrame.new(47, 61, -12889),
		Ghost = CFrame.new(5251, 5, 1111),
	};
EquipWeapon = function(I)
		if not I then
			return;
		end;
		if plr.Backpack:FindFirstChild(I) then
			plr.Character.Humanoid:EquipTool(plr.Backpack:FindFirstChild(I));
		end;
	end;
weaponSc = function(I)
		for e, K in pairs(plr.Backpack:GetChildren()) do
			if K:IsA("Tool") then
				if K.ToolTip == I then
					EquipWeapon(K.Name);
				end;
			end;
		end;
	end;
hookfunction(require((game:GetService("ReplicatedStorage")).Effect.Container.Death), function()
 
end);
hookfunction((require((game:GetService("ReplicatedStorage")):WaitForChild("GuideModule"))).ChangeDisplayedNPC, function()
 
end);
hookfunction(error, function()
 
end);
hookfunction(warn, function()
 
end);
local O = workspace:FindFirstChild("Rocks");
if O then
	O:Destroy();
end;
gay = (function()
    local I = game:GetService("Lighting");
    local e = I:FindFirstChild("LightingLayers");

    -- NÃO remover DarkFog

    local K = workspace._WorldOrigin["Foam;"];
    if K and workspace._WorldOrigin["Foam;"] then
        K:Destroy();
    end;
end)();

local G = {};
G.__index = G;
G.Alive = function(I)
		if not I then
			return;
		end;
		local e = I:FindFirstChild("Humanoid");
		return e and e.Health > 0;
	end;
G.Pos = function(I, e)
		return (Root.Position - mode.Position).Magnitude <= e;
	end;
G.Dist = function(I, e)
		return (Root.Position - (I:FindFirstChild("HumanoidRootPart")).Position).Magnitude <= e;
	end;
G.DistH = function(I, e)
		return (Root.Position - (I:FindFirstChild("HumanoidRootPart")).Position).Magnitude > e;
	end;
-- ALTURA ÚNICA AJUSTÁVEL DO MOB
_G.MobHeight = _G.MobHeight or 20

G.Kill = function(I, e)
	if not (I and e) then return end

	local hrp = I:FindFirstChild("HumanoidRootPart")
	if not hrp then return end

	-- trava posição do mob
	if not I:GetAttribute("Locked") then
		I:SetAttribute("Locked", hrp.CFrame)
	end

	-- posição alvo do bring
	PosMon = (I:GetAttribute("Locked")).Position

	-- >>> FORÇA O BRING <<<
	_B = true
	BringEnemy()

	-- equipa arma
	EquipWeapon(_G.SelectWeapon)

	local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
	if not tool then return end

	-- TP acima do mob (altura única)
	_tp(hrp.CFrame * CFrame.new(0, _G.MobHeight, 0))
end
G.Kill2 = function(I, e)
		if I and e then
			if not I:GetAttribute("Locked") then
				I:SetAttribute("Locked", I.HumanoidRootPart.CFrame);
			end;
			PosMon = (I:GetAttribute("Locked")).Position;
			BringEnemy();
			EquipWeapon(_G.SelectWeapon);
			local e = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool");
			local K = e.ToolTip;
			if K == "Blox Fruit" then
				_tp((I.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0)) * CFrame.Angles(0, math.rad(90), 0));
			else
				_tp((I.HumanoidRootPart.CFrame * CFrame.new(0, 20, 8)) * CFrame.Angles(0, math.rad(180), 0));
			end;
			if RandomCFrame then
				wait(.1);
				_tp(I.HumanoidRootPart.CFrame * CFrame.new(0, 30, 25));
				wait(.1);
				_tp(I.HumanoidRootPart.CFrame * CFrame.new(25, 30, 0));
				wait(.1);
				_tp(I.HumanoidRootPart.CFrame * CFrame.new(-25, 30, 0));
				wait(.1);
				_tp(I.HumanoidRootPart.CFrame * CFrame.new(0, 30, 25));
				wait(.1);
				_tp(I.HumanoidRootPart.CFrame * CFrame.new(-25, 30, 0));
			end;
		end;
	end;
G.KillSea = function(I, e)
		if I and e then
			if not I:GetAttribute("Locked") then
				I:SetAttribute("Locked", I.HumanoidRootPart.CFrame);
			end;
			PosMon = (I:GetAttribute("Locked")).Position;
			BringEnemy();
			EquipWeapon(_G.SelectWeapon);
			local e = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool");
			local K = e.ToolTip;
			if K == "Blox Fruit" then
				_tp((I.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0)) * CFrame.Angles(0, math.rad(90), 0));
			else
				notween(I.HumanoidRootPart.CFrame * CFrame.new(0, 50, 8));
				wait(.85);
				notween(I.HumanoidRootPart.CFrame * CFrame.new(0, 400, 0));
				wait(1);
			end;
		end;
	end;
G.Sword = function(I, e)
		if I and e then
			if not I:GetAttribute("Locked") then
				I:SetAttribute("Locked", I.HumanoidRootPart.CFrame);
			end;
			PosMon = (I:GetAttribute("Locked")).Position;
			BringEnemy();
			weaponSc("Sword");
			_tp(I.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0));
			if RandomCFrame then
				wait(.1);
				_tp(I.HumanoidRootPart.CFrame * CFrame.new(0, 30, 25));
				wait(.1);
				_tp(I.HumanoidRootPart.CFrame * CFrame.new(25, 30, 0));
				wait(.1);
				_tp(I.HumanoidRootPart.CFrame * CFrame.new(-25, 30, 0));
				wait(.1);
				_tp(I.HumanoidRootPart.CFrame * CFrame.new(0, 30, 25));
				wait(.1);
				_tp(I.HumanoidRootPart.CFrame * CFrame.new(-25, 30, 0));
			end;
		end;
	end;
-- CONTROLE DE SKILLS DA FRUTA (MAESTRIA)
_G.FruitSkills = {
    Z = false,
    X = false,
    C = false,
    V = false,
    F = false
}

UseFruitSkills = function()
    weaponSc("Blox Fruit")

    if _G.FruitSkills.Z then
        Useskills("Blox Fruit", "Z")
    end
    if _G.FruitSkills.X then
        Useskills("Blox Fruit", "X")
    end
    if _G.FruitSkills.C then
        Useskills("Blox Fruit", "C")
    end
    if _G.FruitSkills.V then
        Useskills("Blox Fruit", "V")
    end
    if _G.FruitSkills.F then
        vim1:SendKeyEvent(true, "F", false, game)
        vim1:SendKeyEvent(false, "F", false, game)
    end
end

G.Mas = function(I, e)
		if I and e then
			if not I:GetAttribute("Locked") then
				I:SetAttribute("Locked", I.HumanoidRootPart.CFrame);
			end;
			PosMon = (I:GetAttribute("Locked")).Position;
			BringEnemy();
			if I.Humanoid.Health <= HealthM then
				_tp(I.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0));
				UseFruitSkills()
			else
				weaponSc("Melee");
				_tp(I.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0));
			end;
		end;
	end;
G.Masgun = function(I, e)
		if I and e then
			if not I:GetAttribute("Locked") then
				I:SetAttribute("Locked", I.HumanoidRootPart.CFrame);
			end;
			PosMon = (I:GetAttribute("Locked")).Position;
			BringEnemy();
			if I.Humanoid.Health <= HealthM then
				_tp(I.HumanoidRootPart.CFrame * CFrame.new(0, 35, 8));
				Useskills("Gun", "Z");
				Useskills("Gun", "X");
			else
				weaponSc("Melee");
				_tp(I.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0));
			end;
		end;
	end;
statsSetings = function(I, e)
		if I == "Melee" then
			if plr.Data.Points.Value ~= 0 then
				replicated.Remotes.CommF_:InvokeServer("AddPoint", "Melee", e);
			end;
		elseif I == "Defense" then
			if plr.Data.Points.Value ~= 0 then
				replicated.Remotes.CommF_:InvokeServer("AddPoint", "Defense", e);
			end;
		elseif I == "Sword" then
			if plr.Data.Points.Value ~= 0 then
				replicated.Remotes.CommF_:InvokeServer("AddPoint", "Sword", e);
			end;
		elseif I == "Gun" then
			if plr.Data.Points.Value ~= 0 then
				replicated.Remotes.CommF_:InvokeServer("AddPoint", "Gun", e);
			end;
		elseif I == "Devil" then
			if plr.Data.Points.Value ~= 0 then
				replicated.Remotes.CommF_:InvokeServer("AddPoint", "Demon Fruit", e);
			end;
		end;
	end;




--==================================================
-- VARIÁVEIS DE CONTROLE NECESSÁRIAS
--==================================================
_G = _G or {}

_B = false
PosMon = nil

_G.BringRange = _G.BringRange or 235
_G.MaxBringMobs = _G.MaxBringMobs or 3 -- LIMITE DE MOBS

_G.FarmPriorityElf = _G.FarmPriorityElf or false
_G.FarmMastery_S   = _G.FarmMastery_S or false

local TweenService = game:GetService("TweenService")
local TweenInfoBring = TweenInfo.new(
    0.45, -- velocidade do tween
    Enum.EasingStyle.Linear,
    Enum.EasingDirection.Out
)

--==================================================
-- FUNÇÃO: VERIFICA SE QUALQUER FARM ESTÁ ATIVO
--==================================================
local function FarmAtivo()
    -- PRIORIDADE ABSOLUTA (ELF)
    if _G.FarmPriorityElf or _G.FarmElfLevelCustom then
        return true
    end

    -- AUTO MASTERY ALL SWORD (INDEPENDENTE DO START FARM)  
    if _G.FarmMastery_S then  
        return true  
    end  

    -- OUTROS FARMS (DEPENDENTES DO START FARM)  
    return _G.StartFarm and (
        _G.Level or  
        _G.AutoFarm_Bone or  
        _G.AutoFarm_Cake or  
        _G.FarmMastery_Dev or  
        _G.FarmMastery_G or  
        (getgenv()).AutoMaterial or  
        _G.AutoTyrant or
        _G.SailBoat_Hydra or _G.WardenBoss or _G.AutoFactory or _G.HighestMirage or _G.HCM or _G.PGB or _G.Leviathan1 or _G.UPGDrago or _G.Complete_Trials or _G.TpDrago_Prehis or _G.BuyDrago or _G.AutoFireFlowers or _G.DT_Uzoth or _G.AutoBerry or _G.Prehis_Find or _G.Prehis_Skills or _G.Prehis_DB or _G.Prehis_DE or _G.FarmBlazeEM or _G.Dojoo or _G.CollectPresent or _G.AutoLawKak or _G.TpLab or _G.AutoPhoenixF or _G.AutoFarmChest or _G.AutoHytHallow or _G.LongsWord or _G.BlackSpikey or _G.AutoHolyTorch or _G.TrainDrago or _G.AutoSaber or _G.FarmMastery_Dev or _G.CitizenQuest or _G.AutoEctoplasm or _G.KeysRen or _G.Auto_Rainbow_Haki or _G.obsFarm or _G.AutoBigmom or _G.Doughv2 or _G.AuraBoss or _G.Raiding or _G.Auto_Cavender or _G.TpPly or _G.Bartilo_Quest or _G.Level or _G.FarmEliteHunt or _G.AutoZou or _G.AutoFarm_Bone or (getgenv()).AutoMaterial or _G.CraftVM or _G.FrozenTP or _G.TPDoor or _G.AcientOne or _G.AutoFarmNear or _G.AutoRaidCastle or _G.DarkBladev3 or _G.AutoFarmRaid or _G.Auto_Cake_Prince or _G.Addealer or _G.TPNpc or _G.TwinHook or _G.FindMirage or _G.FarmChestM or _G.Shark or _G.TerrorShark or _G.Piranha or _G.MobCrew or _G.SeaBeast1 or _G.FishBoat or _G.Auto or _G.AutoPoleV2 or _G.Auto_SuperHuman or _G.AutoDeathStep or _G.Auto_SharkMan_Karate or _G.Auto_Electric_Claw or _G.AutoDragonTalon or _G.Auto_Def_DarkCoat or _G.Auto_God_Human or _G.Auto_Tushita or _G.AutoMatSoul or _G.AutoKenVTWO or _G.AutoSerpentBow or _G.AutoFMon or _G.Auto_Soul_Guitar or _G.TPGEAR or _G.AutoSaw or _G.AutoTridentW2 or _G.Auto_StartRaid or _G.AutoEvoRace or _G.AutoGetQuestBounty or _G.MarinesCoat or _G.TravelDres or _G.Defeating or _G.DummyMan or _G.Auto_Yama or _G.Auto_SwanGG or _G.SwanCoat or _G.AutoEcBoss or _G.Auto_Mink or _G.Auto_Human or _G.Auto_Skypiea or _G.Auto_Fish or _G.CDK_TS or _G.CDK_YM or _G.CDK or _G.AutoFarmGodChalice or _G.AutoFistDarkness or _G.AutoMiror or _G.Teleport or _G.AutoKilo or _G.AutoGetUsoap or _G.Praying or _G.TryLucky or _G.AutoColShad or _G.AutoUnHaki or _G.Auto_DonAcces or _G.AutoRipIngay or _G.DragoV3 or _G.DragoV1 or _G.SailBoats or NextIs or _G.FarmGodChalice or _G.IceBossRen or senth or senth2 or _G.Lvthan or _G.beasthunter or _G.DangerLV or _G.Relic123 or _G.tweenKitsune or _G.Collect_Ember or _G.AutofindKitIs or _G.snaguine or _G.TwFruits or _G.tweenKitShrine or _G.Tp_LgS or _G.Tp_MasterA or _G.tweenShrine or _G.FarmMastery_G or _G.FarmMastery_S
    )
end

--==================================================
-- FUNÇÃO: IGNORA MOBS INDESEJADOS
--==================================================
local function IsRaidMob(mob)
    local n = mob.Name:lower()

    if n:find("raid") or n:find("microchip") or n:find("island") then  
        return true  
    end  

    if mob:GetAttribute("IsRaid")  
        or mob:GetAttribute("RaidMob")  
        or mob:GetAttribute("IsBoss") then  
        return true  
    end  

    local hum = mob:FindFirstChild("Humanoid")  
    if hum and hum.WalkSpeed == 0 then  
        return true  
    end  

    if mob.Parent and tostring(mob.Parent):lower():find("_worldorigin") then  
        return true  
    end  

    return false
end

--==================================================
-- FUNÇÃO PRINCIPAL: BRING
--==================================================
BringEnemy = function()
    if not FarmAtivo() or not _B then return end

    local plr = game.Players.LocalPlayer  
    local char = plr.Character  
    local hrp = char and char:FindFirstChild("HumanoidRootPart")  
    if not hrp then return end  

    -- Simulation Radius  
    pcall(function()  
        sethiddenproperty(plr, "SimulationRadius", math.huge)  
    end)  

    local targetPos = PosMon or hrp.Position  
    local enemies = workspace.Enemies:GetChildren()  
    local count = 0  

    for _, mob in ipairs(enemies) do  
        if count >= _G.MaxBringMobs then break end  

        local hum = mob:FindFirstChild("Humanoid")  
        local root = mob:FindFirstChild("HumanoidRootPart")  

        if hum and root and hum.Health > 0 and not IsRaidMob(mob) then  
            local dist = (root.Position - targetPos).Magnitude  

            if dist <= _G.BringRange and not root:GetAttribute("Tweening") then  
                count += 1  
                root:SetAttribute("Tweening", true)  

                local tween = TweenService:Create(  
                    root,  
                    TweenInfoBring,  
                    { CFrame = CFrame.new(targetPos) }  
                )  

                tween:Play()  
                tween.Completed:Once(function()  
                    if root then  
                        root:SetAttribute("Tweening", false)  
                    end  
                end)  
            end  
        end  
    end
end

--==================================================
-- LOOP CONTROLADOR
--==================================================
task.spawn(function()
    while task.wait(1) do
        if FarmAtivo() then
            _B = true
            BringEnemy()
            task.wait(3)
            _B = false  
            task.wait(5)  
        else  
            _B = false  
            task.wait(1)  
        end  
    end
end)
Useskills = function(I, e)
		if I == "Melee" then
			weaponSc("Melee");
			if e == "Z" then
				vim1:SendKeyEvent(true, "Z", false, game);
				vim1:SendKeyEvent(false, "Z", false, game);
			elseif e == "X" then
				vim1:SendKeyEvent(true, "X", false, game);
				vim1:SendKeyEvent(false, "X", false, game);
			elseif e == "C" then
				vim1:SendKeyEvent(true, "C", false, game);
				vim1:SendKeyEvent(false, "C", false, game);
			end;
		elseif I == "Sword" then
			weaponSc("Sword");
			if e == "Z" then
				vim1:SendKeyEvent(true, "Z", false, game);
				vim1:SendKeyEvent(false, "Z", false, game);
			elseif e == "X" then
				vim1:SendKeyEvent(true, "X", false, game);
				vim1:SendKeyEvent(false, "X", false, game);
			end;
		elseif I == "Blox Fruit" then
			weaponSc("Blox Fruit");
			if e == "Z" then
				vim1:SendKeyEvent(true, "Z", false, game);
				vim1:SendKeyEvent(false, "Z", false, game);
			elseif e == "X" then
				vim1:SendKeyEvent(true, "X", false, game);
				vim1:SendKeyEvent(false, "X", false, game);
			elseif e == "C" then
				vim1:SendKeyEvent(true, "C", false, game);
				vim1:SendKeyEvent(false, "C", false, game);
			elseif e == "V" then
				vim1:SendKeyEvent(true, "V", false, game);
				vim1:SendKeyEvent(false, "V", false, game);
			end;
		elseif I == "Gun" then
			weaponSc("Gun");
			if e == "Z" then
				vim1:SendKeyEvent(true, "Z", false, game);
				vim1:SendKeyEvent(false, "Z", false, game);
			elseif e == "X" then
				vim1:SendKeyEvent(true, "X", false, game);
				vim1:SendKeyEvent(false, "X", false, game);
			end;
		end;
		if I == "nil" and e == "Y" then
			vim1:SendKeyEvent(true, "Y", false, game);
			vim1:SendKeyEvent(false, "Y", false, game);
		end;
	end;
local J = getrawmetatable(game);
local i = J.__namecall;
setreadonly(J, false);
J.__namecall = newcclosure(function(...)
		local I = getnamecallmethod();
		local e = { ... };
		if tostring(I) == "FireServer" then
			if tostring(e[1]) == "RemoteEvent" then
				if tostring(e[2]) ~= "true" and tostring(e[2]) ~= "false" then
					if _G.FarmMastery_G and not SoulGuitar or _G.FarmMastery_Dev or _G.FarmBlazeEM or _G.Prehis_Skills or _G.SeaBeast1 or _G.FishBoat or _G.PGB or _G.Leviathan1 or _G.Complete_Trials or _G.AimMethod and ABmethod == "AimBots Skill" or _G.AimMethod and ABmethod == "Auto Aimbots" then
						e[2] = MousePos;
						return i(unpack(e));
					end;
				end;
			end;
		end;
		return i(...);
	end);
GetConnectionEnemies = function(I)
		for e, K in pairs(replicated:GetChildren()) do
			if K:IsA("Model") and ((typeof(I) == "table" and table.find(I, K.Name) or K.Name == I) and (K:FindFirstChild("Humanoid") and K.Humanoid.Health > 0)) then
				return K;
			end;
		end;
		for e, K in next, game.Workspace.Enemies:GetChildren() do
			if K:IsA("Model") and ((typeof(I) == "table" and table.find(I, K.Name) or K.Name == I) and (K:FindFirstChild("Humanoid") and K.Humanoid.Health > 0)) then
				return K;
			end;
		end;
	end;
LowCpu = function()
		local I = true;
		local e = game;
		local K = e.Workspace;
		local n = e.Lighting;
		local d = K.Terrain;
		d.WaterWaveSize = 0;
		d.WaterWaveSpeed = 0;
		d.WaterReflectance = 0;
		d.WaterTransparency = 0;
		n.GlobalShadows = false;
		n.FogEnd = 9000000000.0;
		n.Brightness = 1;
		(settings()).Rendering.QualityLevel = "Level01";
		for e, K in pairs(e:GetDescendants()) do
			if K:IsA("Part") or K:IsA("Union") or K:IsA("CornerWedgePart") or K:IsA("TrussPart") then
				K.Material = "Plastic";
				K.Reflectance = 0;
			elseif K:IsA("Decal") or K:IsA("Texture") and I then
				K.Transparency = 1;
			elseif K:IsA("ParticleEmitter") or K:IsA("Trail") then
				K.Lifetime = NumberRange.new(0);
			elseif K:IsA("Explosion") then
				K.BlastPressure = 1;
				K.BlastRadius = 1;
			elseif K:IsA("Fire") or K:IsA("SpotLight") or K:IsA("Smoke") or K:IsA("Sparkles") then
				K.Enabled = false;
			elseif K:IsA("MeshPart") then
				K.Material = "Plastic";
				K.Reflectance = 0;
				K.TextureID = 10385902758728957;
			end;
		end;
		for I, e in pairs(n:GetChildren()) do
			if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
				e.Enabled = false;
			end;
		end;
	end;
CheckF = function()
		if GetBP("Dragon-Dragon") or GetBP("Gas-Gas") or GetBP("Yeti-Yeti") or GetBP("Kitsune-Kitsune") or GetBP("T-Rex-T-Rex") then
			return true;
		end;
	end;
CheckBoat = function()
		for I, e in pairs(workspace.Boats:GetChildren()) do
			if tostring(e.Owner.Value) == tostring(plr.Name) then
				return e;
			end;
		end;
		return false;
	end;
CheckEnemiesBoat = function()
		for I, e in pairs(workspace.Enemies:GetChildren()) do
			if e.Name == "FishBoat" and (e:FindFirstChild("Health")).Value > 0 then
				return true;
			end;
		end;
		return false;
	end;
CheckPirateGrandBrigade = function()
		for I, e in pairs(workspace.Enemies:GetChildren()) do
			if (e.Name == "PirateGrandBrigade" or e.Name == "PirateBrigade") and (e:FindFirstChild("Health")).Value > 0 then
				return true;
			end;
		end;
		return false;
	end;
CheckShark = function()
		for I, e in pairs(workspace.Enemies:GetChildren()) do
			if e.Name == "Shark" and G.Alive(e) then
				return true;
			end;
		end;
		return false;
	end;
CheckTerrorShark = function()
		for I, e in pairs(workspace.Enemies:GetChildren()) do
			if e.Name == "Terrorshark" and G.Alive(e) then
				return true;
			end;
		end;
		return false;
	end;
CheckPiranha = function()
		for I, e in pairs(workspace.Enemies:GetChildren()) do
			if e.Name == "Piranha" and G.Alive(e) then
				return true;
			end;
		end;
		return false;
	end;
CheckFishCrew = function()
		for I, e in pairs(workspace.Enemies:GetChildren()) do
			if (e.Name == "Fish Crew Member" or e.Name == "Haunted Crew Member") and G.Alive(e) then
				return true;
			end;
		end;
		return false;
	end;
CheckHauntedCrew = function()
		for I, e in pairs(workspace.Enemies:GetChildren()) do
			if e.Name == "Haunted Crew Member" and G.Alive(e) then
				return true;
			end;
		end;
		return false;
	end;
CheckSeaBeast = function()
		if workspace.SeaBeasts:FindFirstChild("SeaBeast1") then
			return true;
		end;
		return false;
	end;
CheckLeviathan = function()
		if workspace.SeaBeasts:FindFirstChild("Leviathan") then
			return true;
		end;
		return false;
	end;
UpdStFruit = function()
		for I, e in next, plr.Backpack:GetChildren() do
			StoreFruit = e:FindFirstChild("EatRemote", true);
			if StoreFruit then
				replicated.Remotes.CommF_:InvokeServer("StoreFruit", StoreFruit.Parent:GetAttribute("OriginalName"), plr.Backpack:FindFirstChild(e.Name));
			end;
		end;
	end;
collectFruits = function(I)
		if I then
			local I = plr.Character;
			for e, K in pairs(workspace:GetChildren()) do
				if string.find(K.Name, "Fruit") then
					K.Handle.CFrame = I.HumanoidRootPart.CFrame;
				end;
			end;
		end;
	end;
Getmoon = function()
		if World1 then
			return Lighting.FantasySky.MoonTextureId;
		elseif World2 then
			return Lighting.FantasySky.MoonTextureId;
		elseif World3 then
			return Lighting.Sky.MoonTextureId;
		end;
	end;
DropFruits = function()
		for I, e in next, plr.Backpack:GetChildren() do
			if string.find(e.Name, "Fruit") then
				EquipWeapon(e.Name);
				wait(.1);
				if plr.PlayerGui.Main.Dialogue.Visible == true then
					plr.PlayerGui.Main.Dialogue.Visible = false;
				end;
				EquipWeapon(e.Name);
				(plr.Character:FindFirstChild(e.Name)).EatRemote:InvokeServer("Drop");
			end;
		end;
		for I, e in pairs(plr.Character:GetChildren()) do
			if string.find(e.Name, "Fruit") then
				EquipWeapon(e.Name);
				wait(.1);
				if plr.PlayerGui.Main.Dialogue.Visible == true then
					plr.PlayerGui.Main.Dialogue.Visible = false;
				end;
				EquipWeapon(e.Name);
				(plr.Character:FindFirstChild(e.Name)).EatRemote:InvokeServer("Drop");
			end;
		end;
	end;
GetBP = function(I)
		return plr.Backpack:FindFirstChild(I) or plr.Character:FindFirstChild(I);
	end;
GetIn = function(I)
		for e, K in pairs(replicated.Remotes.CommF_:InvokeServer("getInventory")) do
			if type(K) == "table" then
				if K.Name == I or plr.Character:FindFirstChild(I) or plr.Backpack:FindFirstChild(I) then
					return true;
				end;
			end;
		end;
		return false;
	end;
GetM = function(I)
		for e, K in pairs(replicated.Remotes.CommF_:InvokeServer("getInventory")) do
			if type(K) == "table" then
				if K.Type == "Material" then
					if K.Name == I then
						return K.Count;
					end;
				end;
			end;
		end;
		return 0;
	end;
GetWP = function(I)
		for e, K in pairs(replicated.Remotes.CommF_:InvokeServer("getInventory")) do
			if type(K) == "table" then
				if K.Type == "Sword" then
					if K.Name == I or plr.Character:FindFirstChild(I) or plr.Backpack:FindFirstChild(I) then
						return true;
					end;
				end;
			end;
		end;
		return false;
	end;
getInfinity_Ability = function(I, e)
		if not Root then
			return;
		end;
		if I == "Soru" and e then
			for I, K in next, getgc() do
				if plr.Character.Soru then
					if typeof(K) == "function" and (getfenv(K)).script == plr.Character.Soru then
						for I, K in next, getupvalues(K) do
							if typeof(K) == "table" then
								repeat
									wait(Sec);
									K.LastUse = 0;
								until not e or plr.Character.Humanoid.Health <= 0;
							end;
						end;
					end;
				end;
			end;
		elseif I == "Energy" and e then
			plr.Character.Energy.Changed:connect(function()
				if e then
					plr.Character.Energy.Value = Energy;
				end;
			end);
		elseif I == "Observation" and e then
			local I = plr.VisionRadius;
			I.Value = math.huge;
		end;
	end;
Hop = function()
		pcall(function()
			for I = math.random(1, math.random(40, 75)), 100, 1 do
				local e = replicated.__ServerBrowser:InvokeServer(I);
				for I, e in next, e do
					if tonumber(e.Count) < 12 then
						TeleportService:TeleportToPlaceInstance(game.PlaceId, I);
					end;
				end;
			end;
		end);
	end;
local C = Instance.new("Part", workspace);
C.Size = Vector3.new(1, 1, 1);
C.Name = "Rip_Indra";
C.Anchored = true;
C.CanCollide = false;
C.CanTouch = false;
C.Transparency = 1;

local M = workspace:FindFirstChild(C.Name);
if M and M ~= C then
	M:Destroy();
end;

task.spawn(function()
	while task.wait() do
		if C and C.Parent == workspace then
			if shouldTween then
				(getgenv()).OnFarm = true;
			else
				(getgenv()).OnFarm = false;
			end;
		else
			(getgenv()).OnFarm = false;
		end;
	end;
end);

task.spawn(function()
	local I = game.Players.LocalPlayer;
	repeat task.wait() until I.Character and I.Character.PrimaryPart;

	C.CFrame = I.Character.PrimaryPart.CFrame;

	while task.wait() do
		pcall(function()
			if (getgenv()).OnFarm then
				if C and C.Parent == workspace then
					local e = I.Character and I.Character.PrimaryPart;
					if e and (e.Position - C.Position).Magnitude <= 200 then
						e.CFrame = C.CFrame;
					else
						C.CFrame = e.CFrame;
					end;
				end;

				local e = I.Character;
				if e then
					for _, v in pairs(e:GetChildren()) do
						if v:IsA("BasePart") then
							v.CanCollide = false;
						end;
					end;
				end;

			else
				local e = I.Character;
				if e then
					for _, v in pairs(e:GetChildren()) do
						if v:IsA("BasePart") then
							v.CanCollide = true;
						end;
					end;
				end;
			end;
		end);
	end;
end);

-- =======================
-- TWEEN AJUSTADO POR DISTÂNCIA
-- =======================

-- [[ VARIÁVEIS PARA O SEU INPUT ]] --
getgenv().TweenSpeedFar = 300   -- Velocidade Padrão (Longe)
getgenv().TweenSpeedNear = 900  -- Velocidade Boost (Perto <= 90 studs)

_tp = function(I)
local e = plr.Character;
if not e or not e:FindFirstChild("HumanoidRootPart") then
return;
end;

local HRP = e.HumanoidRootPart;  

-- Desativar farm enquanto tweena  
shouldTween = true  
getgenv().OnFarm = false  

-- Garantir que não está ancorado  
if HRP.Anchored then  
	HRP.Anchored = false  
	task.wait()  
end  

local dist = (I.Position - HRP.Position).Magnitude  

-- ===============================  
--  SE ESTIVER ATÉ 90 STUDS → USA A VELOCIDADE DE PERTO
--  CASO CONTRÁRIO → USA A VELOCIDADE PADRÃO
-- ===============================  
local speed = dist <= 90 and (getgenv().TweenSpeedNear or 900) or (getgenv().TweenSpeedFar or 300)

local info = TweenInfo.new(dist / speed, Enum.EasingStyle.Linear)  
local tween = game:GetService("TweenService"):Create(C, info, { CFrame = I })  

-- Caso esteja sentado  
if e.Humanoid.Sit == true then  
	C.CFrame = CFrame.new(C.Position.X, I.Y, C.Position.Z)  
end  

tween:Play()  

-- Anti travamento / controle  
task.spawn(function()  
	while tween.PlaybackState == Enum.PlaybackState.Playing do  
		if not shouldTween then  
			tween:Cancel()  
			break  
		end  
		task.wait(.1)  
	end  

	getgenv().OnFarm = true  
end)

end

TeleportToTarget = function(I)
_tp(I)
end

notween = function(I)
plr.Character.HumanoidRootPart.CFrame = I
end


function BTP(I)
	local e = game.Players.LocalPlayer;
	local K = e.Character.HumanoidRootPart;
	local n = e.Character.Humanoid;
	local d = e.PlayerGui.Main;
	local z = I.Position;
	local H = K.Position;

	repeat
		n.Health = 0;
		K.CFrame = I;
		d.Quest.Visible = false;

		if (K.Position - H).Magnitude > 1 then
			H = K.Position;
			K.CFrame = I;
		end;

		task.wait(.5);
	until (I.Position - K.Position).Magnitude <= 2000;
end;
spawn(function()
	while task.wait() do
		pcall(function()
			if _G.SailBoat_Hydra or _G.WardenBoss or _G.AutoFactory or _G.HighestMirage or _G.HCM or _G.PGB or _G.Leviathan1 or _G.UPGDrago or _G.Complete_Trials or _G.TpDrago_Prehis or _G.BuyDrago or _G.AutoFireFlowers or _G.DT_Uzoth or _G.AutoBerry or _G.Prehis_Find or _G.Prehis_Skills or _G.Prehis_DB or _G.Prehis_DE or _G.FarmBlazeEM or _G.Dojoo or _G.CollectPresent or _G.AutoLawKak or _G.TpLab or _G.AutoPhoenixF or _G.AutoFarmChest or _G.AutoHytHallow or _G.LongsWord or _G.BlackSpikey or _G.AutoHolyTorch or _G.TrainDrago or _G.AutoSaber or _G.FarmMastery_Dev or _G.CitizenQuest or _G.AutoEctoplasm or _G.KeysRen or _G.Auto_Rainbow_Haki or _G.obsFarm or _G.AutoBigmom or _G.Doughv2 or _G.AuraBoss or _G.Raiding or _G.Auto_Cavender or _G.TpPly or _G.Bartilo_Quest or _G.Level or _G.FarmEliteHunt or _G.AutoZou or _G.AutoFarm_Bone or (getgenv()).AutoMaterial or _G.CraftVM or _G.FrozenTP or _G.TPDoor or _G.AcientOne or _G.AutoFarmNear or _G.AutoRaidCastle or _G.DarkBladev3 or _G.AutoFarmRaid or _G.Auto_Cake_Prince or _G.Addealer or _G.TPNpc or _G.TwinHook or _G.FindMirage or _G.FarmChestM or _G.Shark or _G.TerrorShark or _G.Piranha or _G.MobCrew or _G.SeaBeast1 or _G.FishBoat or _G.Auto or _G.AutoPoleV2 or _G.Auto_SuperHuman or _G.AutoDeathStep or _G.Auto_SharkMan_Karate or _G.Auto_Electric_Claw or _G.AutoDragonTalon or _G.Auto_Def_DarkCoat or _G.Auto_God_Human or _G.Auto_Tushita or _G.AutoMatSoul or _G.AutoKenVTWO or _G.AutoSerpentBow or _G.AutoFMon or _G.Auto_Soul_Guitar or _G.TPGEAR or _G.AutoSaw or _G.AutoTridentW2 or _G.Auto_StartRaid or _G.AutoEvoRace or _G.AutoGetQuestBounty or _G.MarinesCoat or _G.TravelDres or _G.Defeating or _G.DummyMan or _G.Auto_Yama or _G.Auto_SwanGG or _G.SwanCoat or _G.AutoEcBoss or _G.Auto_Mink or _G.Auto_Human or _G.Auto_Skypiea or _G.Auto_Fish or _G.CDK_TS or _G.CDK_YM or _G.CDK or _G.AutoFarmGodChalice or _G.AutoFistDarkness or _G.AutoMiror or _G.Teleport or _G.AutoKilo or _G.AutoGetUsoap or _G.Praying or _G.TryLucky or _G.AutoColShad or _G.AutoUnHaki or _G.Auto_DonAcces or _G.AutoRipIngay or _G.DragoV3 or _G.DragoV1 or _G.SailBoats or NextIs or _G.FarmGodChalice or _G.IceBossRen or senth or senth2 or _G.Lvthan or _G.beasthunter or _G.DangerLV or _G.Relic123 or _G.tweenKitsune or _G.Collect_Ember or _G.AutofindKitIs or _G.snaguine or _G.TwFruits or _G.tweenKitShrine or _G.Tp_LgS or _G.Tp_MasterA or _G.tweenShrine or _G.FarmMastery_G or _G.FarmMastery_S then
				shouldTween = true;
				if not plr.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
					local I = Instance.new("BodyVelocity");
					I.Name = "BodyClip";
					I.Parent = plr.Character.HumanoidRootPart;
					I.MaxForce = Vector3.new(100000, 100000, 100000);
					I.Velocity = Vector3.new(0, 0, 0);
				end;
				for I, e in pairs(plr.Character:GetDescendants()) do
					if e:IsA("BasePart") then
						e.CanCollide = false;
					end;
				end;
			else
				shouldTween = false;
				if plr.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
					(plr.Character.HumanoidRootPart:FindFirstChild("BodyClip")):Destroy();
				end;
				if plr.Character:FindFirstChild("highlight") then
					(plr.Character:FindFirstChild("highlight")):Destroy();
				end;
			end;
		end);
	end;
end);
QuestB = function()
		if World1 then
			if _G.FindBoss == "The Gorilla King" then
				bMon = "The Gorilla King";
				Qname = "JungleQuest";
				Qdata = 3;
				PosQBoss = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102);
				PosB = CFrame.new(-1088.75977, 8.13463783, -488.559906, -0.707134247, 0, .707079291, 0, 1, 0, -0.707079291, 0, -0.707134247);
			elseif _G.FindBoss == "Bobby" then
				bMon = "Bobby";
				Qname = "BuggyQuest1";
				Qdata = 3;
				PosQBoss = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188);
				PosB = CFrame.new(-1087.3760986328, 46.949409484863, 4040.1462402344);
			elseif _G.FindBoss == "The Saw" then
				bMon = "The Saw";
				PosB = CFrame.new(-784.89715576172, 72.427383422852, 1603.5822753906);
			elseif _G.FindBoss == "Yeti" then
				bMon = "Yeti";
				Qname = "SnowQuest";
				Qdata = 3;
				PosQBoss = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156);
				PosB = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172);
			elseif _G.FindBoss == "Mob Leader" then
				bMon = "Mob Leader";
				PosB = CFrame.new(-2844.7307128906, 7.4180502891541, 5356.6723632813);
			elseif _G.FindBoss == "Vice Admiral" then
				bMon = "Vice Admiral";
				Qname = "MarineQuest2";
				Qdata = 2;
				PosQBoss = CFrame.new(-5036.2465820313, 28.677835464478, 4324.56640625);
				PosB = CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375);
			elseif _G.FindBoss == "Saber Expert" then
				bMon = "Saber Expert";
				PosB = CFrame.new(-1458.89502, 29.8870335, -50.633564);
			elseif _G.FindBoss == "Warden" then
				bMon = "Warden";
				Qname = "ImpelQuest";
				Qdata = 1;
				PosB = CFrame.new(5278.04932, 2.15167475, 944.101929, .220546961, -4.49946401e-06, .975376427, -1.95412576e-05, 1, 9.03162072e-06, -0.975376427, -2.10519756e-05, .220546961);
				PosQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, .681965172, 0, 1, 0, -0.681965172, 0, -0.731384635);
			elseif _G.FindBoss == "Chief Warden" then
				bMon = "Chief Warden";
				Qname = "ImpelQuest";
				Qdata = 2;
				PosB = CFrame.new(5206.92578, .997753382, 814.976746, .342041343, -0.00062915677, .939684749, .00191645394, .999998152, -2.80422337e-05, -0.939682961, .00181045406, .342041939);
				PosQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, .681965172, 0, 1, 0, -0.681965172, 0, -0.731384635);
			elseif _G.FindBoss == "Swan" then
				bMon = "Swan";
				Qname = "ImpelQuest";
				Qdata = 3;
				PosB = CFrame.new(5325.09619, 7.03906584, 719.570679, -0.309060812, 0, .951042235, 0, 1, 0, -0.951042235, 0, -0.309060812);
				PosQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, .681965172, 0, 1, 0, -0.681965172, 0, -0.731384635);
			elseif _G.FindBoss == "Magma Admiral" then
				bMon = "Magma Admiral";
				Qname = "MagmaQuest";
				Qdata = 3;
				PosQBoss = CFrame.new(-5314.6220703125, 12.262420654297, 8517.279296875);
				PosB = CFrame.new(-5765.8969726563, 82.92064666748, 8718.3046875);
			elseif _G.FindBoss == "Fishman Lord" then
				bMon = "Fishman Lord";
				Qname = "FishmanQuest";
				Qdata = 3;
				PosQBoss = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734);
				PosB = CFrame.new(61260.15234375, 30.950881958008, 1193.4329833984);
			elseif _G.FindBoss == "Wysper" then
				bMon = "Wysper";
				Qname = "SkyExp1Quest";
				Qdata = 3;
				PosQBoss = CFrame.new(-7861.947265625, 5545.517578125, -379.85974121094);
				PosB = CFrame.new(-7866.1333007813, 5576.4311523438, -546.74816894531);
			elseif _G.FindBoss == "Thunder God" then
				bMon = "Thunder God";
				Qname = "SkyExp2Quest";
				Qdata = 3;
				PosQBoss = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125);
				PosB = CFrame.new(-7994.984375, 5761.025390625, -2088.6479492188);
			elseif _G.FindBoss == "Cyborg" then
				bMon = "Cyborg";
				Qname = "FountainQuest";
				Qdata = 3;
				PosQBoss = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875);
				PosB = CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813);
			elseif _G.FindBoss == "Ice Admiral" then
				bMon = "Ice Admiral";
				Qdata = nil;
				PosQBoss = CFrame.new(1266.08948, 26.1757946, -1399.57678, -0.573599219, 0, -0.81913656, 0, 1, 0, .81913656, 0, -0.573599219);
				PosB = CFrame.new(1266.08948, 26.1757946, -1399.57678, -0.573599219, 0, -0.81913656, 0, 1, 0, .81913656, 0, -0.573599219);
			elseif _G.FindBoss == "Greybeard" then
				bMon = "Greybeard";
				Qdata = nil;
				PosQBoss = CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188);
				PosB = CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188);
			end;
		end;
		if World2 then
			if _G.FindBoss == "Diamond" then
				bMon = "Diamond";
				Qname = "Area1Quest";
				Qdata = 3;
				PosQBoss = CFrame.new(-427.5666809082, 73.313781738281, 1835.4208984375);
				PosB = CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407);
			elseif _G.FindBoss == "Jeremy" then
				bMon = "Jeremy";
				Qname = "Area2Quest";
				Qdata = 3;
				PosQBoss = CFrame.new(636.79943847656, 73.413787841797, 918.00415039063);
				PosB = CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109);
			elseif _G.FindBoss == "Fajita" then
				bMon = "Fajita";
				Qname = "MarineQuest3";
				Qdata = 3;
				PosQBoss = CFrame.new(-2441.986328125, 73.359344482422, -3217.5324707031);
				PosB = CFrame.new(-2172.7399902344, 103.32216644287, -4015.025390625);
			elseif _G.FindBoss == "Don Swan" then
				bMon = "Don Swan";
				PosB = CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875);
			elseif _G.FindBoss == "Smoke Admiral" then
				bMon = "Smoke Admiral";
				Qname = "IceSideQuest";
				Qdata = 3;
				PosQBoss = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813);
				PosB = CFrame.new(-5275.1987304688, 20.757257461548, -5260.6669921875);
			elseif _G.FindBoss == "Awakened Ice Admiral" then
				bMon = "Awakened Ice Admiral";
				Qname = "FrostQuest";
				Qdata = 3;
				PosQBoss = CFrame.new(5668.9780273438, 28.519989013672, -6483.3520507813);
				PosB = CFrame.new(6403.5439453125, 340.29766845703, -6894.5595703125);
			elseif _G.FindBoss == "Tide Keeper" then
				bMon = "Tide Keeper";
				Qname = "ForgottenQuest";
				Qdata = 3;
				PosQBoss = CFrame.new(-3053.9814453125, 237.18954467773, -10145.0390625);
				PosB = CFrame.new(-3795.6423339844, 105.88877105713, -11421.307617188);
			elseif _G.FindBoss == "Darkbeard" then
				bMon = "Darkbeard";
				Qdata = nil;
				PosQBoss = CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531);
				PosB = CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531);
			elseif _G.FindBoss == "Cursed Captaim" then
				bMon = "Cursed Captain";
				Qdata = nil;
				PosQBoss = CFrame.new(916.928589, 181.092773, 33422);
				PosB = CFrame.new(916.928589, 181.092773, 33422);
			elseif _G.FindBoss == "Order" then
				bMon = "Order";
				Qdata = nil;
				PosQBoss = CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875);
				PosB = CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875);
			end;
		end;
		if World3 then
			if _G.FindBoss == "Stone" then
				bMon = "Stone";
				Qname = "PiratePortQuest";
				Qdata = 3;
				PosQBoss = CFrame.new(-289.76705932617, 43.819011688232, 5579.9384765625);
				PosB = CFrame.new(-1027.6512451172, 92.404174804688, 6578.8530273438);
			elseif _G.FindBoss == "Hydra Leader" then
				bMon = "Hydra Leader";
				Qname = "AmazonQuest2";
				Qdata = 3;
				PosQBoss = CFrame.new(5821.8979492188, 1019.0950927734, -73.719230651855);
				PosB = CFrame.new(5821.8979492188, 1019.0950927734, -73.719230651855);
			elseif _G.FindBoss == "Kilo Admiral" then
				bMon = "Kilo Admiral";
				Qname = "MarineTreeIsland";
				Qdata = 3;
				PosQBoss = CFrame.new(2179.3010253906, 28.731239318848, -6739.9741210938);
				PosB = CFrame.new(2764.2233886719, 432.46154785156, -7144.4580078125);
			elseif _G.FindBoss == "Captain Elephant" then
				bMon = "Captain Elephant";
				Qname = "DeepForestIsland";
				Qdata = 3;
				PosQBoss = CFrame.new(-13232.682617188, 332.40396118164, -7626.01171875);
				PosB = CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125);
			elseif _G.FindBoss == "Beautiful Pirate" then
				bMon = "Beautiful Pirate";
				Qname = "DeepForestIsland2";
				Qdata = 3;
				PosQBoss = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375);
				PosB = CFrame.new(5283.609375, 22.56223487854, -110.78285217285);
			elseif _G.FindBoss == "Cake Queen" then
				bMon = "Cake Queen";
				Qname = "IceCreamIslandQuest";
				Qdata = 3;
				PosQBoss = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, .642767608, 0, 1, 0, -0.642767608, 0, -0.766061664);
				PosB = CFrame.new(-678.648804, 381.353943, -11114.2012, -0.908641815, .00149294338, .41757378, .00837114919, .999857843, .0146408929, -0.417492568, .0167988986, -0.90852499);
			elseif _G.FindBoss == "Longma" then
				bMon = "Longma";
				Qdata = nil;
				PosQBoss = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125);
				PosB = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125);
			elseif _G.FindBoss == "Soul Reaper" then
				bMon = "Soul Reaper";
				Qdata = nil;
				PosQBoss = CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813);
				PosB = CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813);
			end;
		end;
	end;
QuestBeta = function()
		local I = QuestB();
		return {
			[0] = _G.FindBoss,
			[1] = bMon,
			[2] = Qdata,
			[3] = Qname,
			[4] = PosB,
		};
	end;
QuestCheck = function()
    local I = game.Players.LocalPlayer.Data.Level.Value
    
    -- [CORREÇÃO] Fixar level dentro do limite da missão
    if World1 and I > 699 then
        I = 650 -- Força a missão do Galley Captain (Lv 650)
    end
    
    if World2 and I > 1499 then
        I = 1450 -- Força a missão do Water Fighter (Lv 1450)
    end

    if World1 then
        if I == 1 or I <= 9 then
            if tostring(TeamSelf) == "Marines" then
                Mon = "Trainee"
                Qname = "MarineQuest"
                Qdata = 1
                NameMon = "Trainee"
                PosM = CFrame.new(-2709.67944, 24.5206585, 2104.24585)
                PosQ = CFrame.new(-2709.67944, 24.5206585, 2104.24585)
            elseif tostring(TeamSelf) == "Pirates" then
                Mon = "Bandit"
                Qdata = 1
                Qname = "BanditQuest1"
                NameMon = "Bandit"
                PosM = CFrame.new(1045.9626464844, 27.002508163452, 1560.8203125)
                PosQ = CFrame.new(1045.9626464844, 27.002508163452, 1560.8203125)
            end
        elseif I >= 10 and I <= 14 then
            Mon = "Monkey"
            Qdata = 1
            Qname = "JungleQuest"
            NameMon = "Monkey"
            PosQ = CFrame.new(-1598.08911, 35.5501175, 153.377838)
            PosM = CFrame.new(-1448.5180664062, 67.853012084961, 11.465796470642)
        elseif I >= 15 and I <= 29 then
            Mon = "Gorilla"
            Qdata = 2
            Qname = "JungleQuest"
            NameMon = "Gorilla"
            PosQ = CFrame.new(-1598.08911, 35.5501175, 153.377838)
            PosM = CFrame.new(-1129.8836669922, 40.46354675293, -525.42370605469)
        elseif I >= 30 and I <= 39 then
            Mon = "Pirate"
            Qdata = 1
            Qname = "BuggyQuest1"
            NameMon = "Pirate"
            PosQ = CFrame.new(-1141.07483, 4.10001802, 3831.5498)
            PosM = CFrame.new(-1103.5134277344, 13.752052307129, 3896.0910644531)
        elseif I >= 40 and I <= 59 then
            Mon = "Brute"
            Qdata = 2
            Qname = "BuggyQuest1"
            NameMon = "Brute"
            PosQ = CFrame.new(-1141.07483, 4.10001802, 3831.5498)
            PosM = CFrame.new(-1140.0837402344, 14.809885025024, 4322.9213867188)
        elseif I >= 60 and I <= 74 then
            Mon = "Desert Bandit"
            Qdata = 1
            Qname = "DesertQuest"
            NameMon = "Desert Bandit"
            PosQ = CFrame.new(894.488647, 5.14000702, 4392.43359)
            PosM = CFrame.new(924.7998046875, 6.4486746788025, 4481.5859375)
        elseif I >= 75 and I <= 89 then
            Mon = "Desert Officer"
            Qdata = 2
            Qname = "DesertQuest"
            NameMon = "Desert Officer"
            PosQ = CFrame.new(894.488647, 5.14000702, 4392.43359)
            PosM = CFrame.new(1608.2822265625, 8.6142244338989, 4371.0073242188)
        elseif I >= 90 and I <= 99 then
            Mon = "Snow Bandit"
            Qdata = 1
            Qname = "SnowQuest"
            NameMon = "Snow Bandit"
            PosQ = CFrame.new(1389.74451, 88.1519318, -1298.90796)
            PosM = CFrame.new(1354.3479003906, 87.272773742676, -1393.9465332031)
        elseif I >= 100 and I <= 119 then
            Mon = "Snowman"
            Qdata = 2
            Qname = "SnowQuest"
            NameMon = "Snowman"
            PosQ = CFrame.new(1389.74451, 88.1519318, -1298.90796)
            PosM = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
        elseif I >= 120 and I <= 149 then
            Mon = "Chief Petty Officer"
            Qdata = 1
            Qname = "MarineQuest2"
            NameMon = "Chief Petty Officer"
            PosQ = CFrame.new(-5039.58643, 27.3500385, 4324.68018)
            PosM = CFrame.new(-4881.2309570312, 22.652044296265, 4273.7524414062)
        elseif I >= 150 and I <= 174 then
            Mon = "Sky Bandit"
            Qdata = 1
            Qname = "SkyQuest"
            NameMon = "Sky Bandit"
            PosQ = CFrame.new(-4839.53027, 716.368591, -2619.44165)
            PosM = CFrame.new(-4953.20703125, 295.74420166016, -2899.2290039062)
        elseif I >= 175 and I <= 189 then
            Mon = "Dark Master"
            Qdata = 2
            Qname = "SkyQuest"
            NameMon = "Dark Master"
            PosQ = CFrame.new(-4839.53027, 716.368591, -2619.44165)
            PosM = CFrame.new(-5259.8447265625, 391.39767456055, -2229.0354003906)
        elseif I >= 190 and I <= 209 then
            Mon = "Prisoner"
            Qdata = 1
            Qname = "PrisonerQuest"
            NameMon = "Prisoner"
            PosQ = CFrame.new(5308.93115, 1.65517521, 475.120514)
            PosM = CFrame.new(5098.9736328125, -0.3204058110714, 474.23733520508)
        elseif I >= 210 and I <= 249 then
            Mon = "Dangerous Prisoner"
            Qdata = 2
            Qname = "PrisonerQuest"
            NameMon = "Dangerous Prisoner"
            PosQ = CFrame.new(5308.93115, 1.65517521, 475.120514)
            PosM = CFrame.new(5654.5634765625, 15.633401870728, 866.29919433594)
        elseif I >= 250 and I <= 274 then
            Mon = "Toga Warrior"
            Qdata = 1
            Qname = "ColosseumQuest"
            NameMon = "Toga Warrior"
            PosQ = CFrame.new(-1580.04663, 6.35000277, -2986.47534)
            PosM = CFrame.new(-1820.21484375, 51.683856964111, -2740.6650390625)
        elseif I >= 275 and I <= 299 then
            Mon = "Gladiator"
            Qdata = 2
            Qname = "ColosseumQuest"
            NameMon = "Gladiator"
            PosQ = CFrame.new(-1580.04663, 6.35000277, -2986.47534)
            PosM = CFrame.new(-1292.8381347656, 56.380882263184, -3339.0314941406)
        elseif I >= 300 and I <= 324 then
            Mon = "Military Soldier"
            Qdata = 1
            Qname = "MagmaQuest"
            NameMon = "Military Soldier"
            PosQ = CFrame.new(-5313.37012, 10.9500084, 8515.29395)
            PosM = CFrame.new(-5411.1645507812, 11.081554412842, 8454.29296875)
        elseif I >= 325 and I <= 374 then
            Mon = "Military Spy"
            Qdata = 2
            Qname = "MagmaQuest"
            NameMon = "Military Spy"
            PosQ = CFrame.new(-5313.37012, 10.9500084, 8515.29395)
            PosM = CFrame.new(-5802.8681640625, 86.262413024902, 8828.859375)
        elseif I >= 375 and I <= 399 then
            Mon = "Fishman Warrior"
            Qdata = 1
            Qname = "FishmanQuest"
            NameMon = "Fishman Warrior"
            PosQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            PosM = CFrame.new(60878.30078125, 18.482830047607, 1543.7574462891)
            if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif I >= 400 and I <= 449 then
            Mon = "Fishman Commando"
            Qdata = 2
            Qname = "FishmanQuest"
            NameMon = "Fishman Commando"
            PosQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            PosM = CFrame.new(61922.6328125, 18.482830047607, 1493.9343261719)
            if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif I >= 450 and I <= 474 then
            Mon = "God's Guard"
            Qdata = 1
            Qname = "SkyExp1Quest"
            NameMon = "God's Guard"
            PosQ = CFrame.new(-4721.88867, 843.874695, -1949.96643)
            PosM = CFrame.new(-4710.04296875, 845.27697753906, -1927.3079833984)
            if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.82275, 872.54248, -1667.55688))
            end
        elseif I >= 475 and I <= 524 then
            Mon = "Shanda"
            Qdata = 2
            Qname = "SkyExp1Quest"
            NameMon = "Shanda"
            PosQ = CFrame.new(-7859.09814, 5544.19043, -381.476196)
            PosM = CFrame.new(-7678.4897460938, 5566.4038085938, -497.21560668945)
            if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
            end
        elseif I >= 525 and I <= 549 then
            Mon = "Royal Squad"
            Qdata = 1
            Qname = "SkyExp2Quest"
            NameMon = "Royal Squad"
            PosQ = CFrame.new(-7906.81592, 5634.6626, -1411.99194)
            PosM = CFrame.new(-7624.2524414062, 5658.1333007812, -1467.3542480469)
        elseif I >= 550 and I <= 624 then
            Mon = "Royal Soldier"
            Qdata = 2
            Qname = "SkyExp2Quest"
            NameMon = "Royal Soldier"
            PosQ = CFrame.new(-7906.81592, 5634.6626, -1411.99194)
            PosM = CFrame.new(-7836.7534179688, 5645.6640625, -1790.6236572266)
        elseif I >= 625 and I <= 649 then
            Mon = "Galley Pirate"
            Qdata = 1
            Qname = "FountainQuest"
            NameMon = "Galley Pirate"
            PosQ = CFrame.new(5259.81982, 37.3500175, 4050.0293)
            PosM = CFrame.new(5551.0219726562, 78.901351928711, 3930.4128417969)
        elseif I >= 650 then
            Mon = "Galley Captain"
            Qdata = 2
            Qname = "FountainQuest"
            NameMon = "Galley Captain"
            PosQ = CFrame.new(5259.81982, 37.3500175, 4050.0293)
            PosM = CFrame.new(5441.9516601562, 42.502059936523, 4950.09375)
        end
    elseif World2 then
        if I >= 700 and I <= 724 then
            Mon = "Raider"
            Qdata = 1
            Qname = "Area1Quest"
            NameMon = "Raider"
            PosQ = CFrame.new(-429.543518, 71.7699966, 1836.18188)
            PosM = CFrame.new(-728.32672119141, 52.779319763184, 2345.7705078125)
        elseif I >= 725 and I <= 774 then
            Mon = "Mercenary"
            Qdata = 2
            Qname = "Area1Quest"
            NameMon = "Mercenary"
            PosQ = CFrame.new(-429.543518, 71.7699966, 1836.18188)
            PosM = CFrame.new(-1004.3244018555, 80.158866882324, 1424.6193847656)
        elseif I >= 775 and I <= 799 then
            Mon = "Swan Pirate"
            Qdata = 1
            Qname = "Area2Quest"
            NameMon = "Swan Pirate"
            PosQ = CFrame.new(638.43811, 71.769989, 918.282898)
            PosM = CFrame.new(1068.6643066406, 137.61428833008, 1322.1060791016)
        elseif I >= 800 and I <= 874 then
            Mon = "Factory Staff"
            Qname = "Area2Quest"
            Qdata = 2
            NameMon = "Factory Staff"
            PosQ = CFrame.new(632.698608, 73.1055908, 918.666321)
            PosM = CFrame.new(73.078674316406, 81.863441467285, -27.470672607422)
        elseif I >= 875 and I <= 899 then
            Mon = "Marine Lieutenant"
            Qdata = 1
            Qname = "MarineQuest3"
            NameMon = "Marine Lieutenant"
            PosQ = CFrame.new(-2440.79639, 71.7140732, -3216.06812)
            PosM = CFrame.new(-2821.3723144531, 75.897277832031, -3070.0891113281)
        elseif I >= 900 and I <= 949 then
            Mon = "Marine Captain"
            Qdata = 2
            Qname = "MarineQuest3"
            NameMon = "Marine Captain"
            PosQ = CFrame.new(-2440.79639, 71.7140732, -3216.06812)
            PosM = CFrame.new(-1861.2310791016, 80.176582336426, -3254.6975097656)
        elseif I >= 950 and I <= 974 then
            Mon = "Zombie"
            Qdata = 1
            Qname = "ZombieQuest"
            NameMon = "Zombie"
            PosQ = CFrame.new(-5497.06152, 47.5923004, -795.237061)
            PosM = CFrame.new(-5657.7768554688, 78.969734191895, -928.68701171875)
        elseif I >= 975 and I <= 999 then
            Mon = "Vampire"
            Qdata = 2
            Qname = "ZombieQuest"
            NameMon = "Vampire"
            PosQ = CFrame.new(-5497.06152, 47.5923004, -795.237061)
            PosM = CFrame.new(-6037.66796875, 32.184638977051, -1340.6597900391)
        elseif I >= 1000 and I <= 1049 then
            Mon = "Snow Trooper"
            Qdata = 1
            Qname = "SnowMountainQuest"
            NameMon = "Snow Trooper"
            PosQ = CFrame.new(609.858826, 400.119904, -5372.25928)
            PosM = CFrame.new(549.14733886719, 427.38705444336, -5563.6987304688)
        elseif I >= 1050 and I <= 1099 then
            Mon = "Winter Warrior"
            Qdata = 2
            Qname = "SnowMountainQuest"
            NameMon = "Winter Warrior"
            PosQ = CFrame.new(609.858826, 400.119904, -5372.25928)
            PosM = CFrame.new(1142.7451171875, 475.63980102539, -5199.4165039062)
        elseif I >= 1100 and I <= 1124 then
            Mon = "Lab Subordinate"
            Qdata = 1
            Qname = "IceSideQuest"
            NameMon = "Lab Subordinate"
            PosQ = CFrame.new(-6064.06885, 15.2422857, -4902.97852)
            PosM = CFrame.new(-5707.4716796875, 15.951709747314, -4513.3920898438)
        elseif I >= 1125 and I <= 1174 then
            Mon = "Horned Warrior"
            Qdata = 2
            Qname = "IceSideQuest"
            NameMon = "Horned Warrior"
            PosQ = CFrame.new(-6064.06885, 15.2422857, -4902.97852)
            PosM = CFrame.new(-6341.3666992188, 15.951770782471, -5723.162109375)
        elseif I >= 1175 and I <= 1199 then
            Mon = "Magma Ninja"
            Qdata = 1
            Qname = "FireSideQuest"
            NameMon = "Magma Ninja"
            PosQ = CFrame.new(-5428.03174, 15.0622921, -5299.43457)
            PosM = CFrame.new(-5449.6728515625, 76.658744812012, -5808.2006835938)
        elseif I >= 1200 and I <= 1249 then
            Mon = "Lava Pirate"
            Qdata = 2
            Qname = "FireSideQuest"
            NameMon = "Lava Pirate"
            PosQ = CFrame.new(-5428.03174, 15.0622921, -5299.43457)
            PosM = CFrame.new(-5213.3315429688, 49.737880706787, -4701.451171875)
        elseif I >= 1250 and I <= 1274 then
            Mon = "Ship Deckhand"
            Qdata = 1
            Qname = "ShipQuest1"
            NameMon = "Ship Deckhand"
            PosQ = CFrame.new(1037.80127, 125.092171, 32911.6016)
            PosM = CFrame.new(1212.0111083984, 150.79205322266, 33059.24609375)
            if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
                replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif I >= 1275 and I <= 1299 then
            Mon = "Ship Engineer"
            Qdata = 2
            Qname = "ShipQuest1"
            NameMon = "Ship Engineer"
            PosQ = CFrame.new(1037.80127, 125.092171, 32911.6016)
            PosM = CFrame.new(919.47863769531, 43.544013977051, 32779.96875)
            if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
                replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif I >= 1300 and I <= 1324 then
            Mon = "Ship Steward"
            Qdata = 1
            Qname = "ShipQuest2"
            NameMon = "Ship Steward"
            PosQ = CFrame.new(968.80957, 125.092171, 33244.125)
            PosM = CFrame.new(919.43853759766, 129.55599975586, 33436.03515625)
            if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
                replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif I >= 1325 and I <= 1349 then
            Mon = "Ship Officer"
            Qdata = 2
            Qname = "ShipQuest2"
            NameMon = "Ship Officer"
            PosQ = CFrame.new(968.80957, 125.092171, 33244.125)
            PosM = CFrame.new(1036.0179443359, 181.4390411377, 33315.7265625)
            if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
                replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif I >= 1350 and I <= 1374 then
            Mon = "Arctic Warrior"
            Qdata = 1
            Qname = "FrostQuest"
            NameMon = "Arctic Warrior"
            PosQ = CFrame.new(5667.6582, 26.7997818, -6486.08984)
            PosM = CFrame.new(5966.24609375, 62.970020294189, -6179.3828125)
        elseif I >= 1375 and I <= 1424 then
            Mon = "Snow Lurker"
            Qdata = 2
            Qname = "FrostQuest"
            NameMon = "Snow Lurker"
            PosQ = CFrame.new(5667.6582, 26.7997818, -6486.08984)
            PosM = CFrame.new(5407.0737304688, 69.194374084473, -6880.8803710938)
        elseif I >= 1425 and I <= 1449 then
            Mon = "Sea Soldier"
            Qdata = 1
            Qname = "ForgottenQuest"
            NameMon = "Sea Soldier"
            PosQ = CFrame.new(-3054.44458, 235.544281, -10142.8193)
            PosM = CFrame.new(-3028.2236328125, 64.674514770508, -9775.4267578125)
        elseif I >= 1450 then
            Mon = "Water Fighter"
            Qdata = 2
            Qname = "ForgottenQuest"
            NameMon = "Water Fighter"
            PosQ = CFrame.new(-3054.44458, 235.544281, -10142.8193)
            PosM = CFrame.new(-3352.9013671875, 285.01556396484, -10534.841796875)
        end
    elseif World3 then
if I == 1500 or I <= 1524 then
Mon = "Pirate Millionaire"
Qdata = 1
Qname = "PiratePortQuest"
NameMon = "Pirate Millionaire"
PosQ = CFrame.new(-290.07, 42.90, 5581.59)
PosM = CFrame.new(-246.00, 47.31, 5584.10)
elseif I == 1525 or I <= 1574 then
Mon = "Pistol Billionaire"
Qdata = 2
Qname = "PiratePortQuest"
NameMon = "Pistol Billionaire"
PosQ = CFrame.new(-290.07, 42.90, 5581.59)
PosM = CFrame.new(-187.33, 86.24, 6013.51)
		elseif I == 1575 or I <= 1599 then
    Mon = "Dragon Crew Warrior"
    Qdata = 1
    Qname = "DragonCrewQuest"
    NameMon = "Dragon Crew Warrior"
    PosQ = CFrame.new(6737.06055,127.417763,-712.300659,-0.463954359,-7.19574755e-09,0.885859072,7.69187665e-08,1,4.84078626e-08,-0.885859072,9.05982276e-08,-0.463954359)
    PosM = CFrame.new(6709.76367,52.3442993,-1139.02966,-0.763515472,0,0.645789504,0,1,0,-0.645789504,0,-0.763515472)
elseif I == 1600 or I <= 1624 then
    Mon = "Dragon Crew Archer"
    Qdata = 2
    Qname = "DragonCrewQuest"
    NameMon = "Dragon Crew Archer"
    PosQ = CFrame.new(6737.06055,127.417763,-712.300659,-0.463954359,-7.19574755e-09,0.885859072,7.69187665e-08,1,4.84078626e-08,-0.885859072,9.05982276e-08,-0.463954359)
    PosM = CFrame.new(6668.76172,481.376923,329.12207,-0.121787429,0,-0.992556155,0,1,0,0.992556155,0,-0.121787429)
elseif I == 1625 or I <= 1649 then
    Mon = "Hydra Enforcer"
    Qname = "VenomCrewQuest"
    Qdata = 1
    NameMon = "Hydra Enforcer"
    PosQ = CFrame.new(5206.40185546875, 1004.10498046875, 748.3504638671875)
    PosM = CFrame.new(4547.11523, 1003.10217, 334.194824, 0.388810456, -0, -0.921317935, 0, 1, -0, 0.921317935, 0, 0.388810456)
elseif I == 1650 or I <= 1699 then
    Mon = "Venomous Assailant"
    Qname = "VenomCrewQuest"
    Qdata = 2
    NameMon = "Venomous Assailant"
    PosQ = CFrame.new(5206.40185546875, 1004.10498046875, 748.3504638671875)
    PosM = CFrame.new(4674.92676, 1134.82654, 996.308838, 0.731321394, -0, -0.682033002, 0, 1, -0, 0.682033002, 0, 0.731321394)
		elseif I == 1700 or I <= 1724 then
			Mon = "Marine Commodore"
			Qdata = 1
			Qname = "MarineTreeIsland"
			NameMon = "Marine Commodore"
			PosQ = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, .258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
			PosM = CFrame.new(2286.0078125, 73.133918762207, -7159.8090820312)
		elseif I == 1725 or I <= 1774 then
			Mon = "Marine Rear Admiral"
			NameMon = "Marine Rear Admiral"
			Qname = "MarineTreeIsland"
			Qdata = 2
			PosQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
			PosM = CFrame.new(3656.7736816406, 160.52406311035, -7001.5986328125)
		elseif I == 1775 or I <= 1799 then
			Mon = "Fishman Raider"
			Qdata = 1
			Qname = "DeepForestIsland3"
			NameMon = "Fishman Raider"
			PosQ = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
			PosM = CFrame.new(-10407.526367188, 331.76263427734, -8368.5166015625)
		elseif I == 1800 or I <= 1824 then
			Mon = "Fishman Captain"
			Qdata = 2
			Qname = "DeepForestIsland3"
			NameMon = "Fishman Captain"
			PosQ = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
			PosM = CFrame.new(-10994.701171875, 352.38140869141, -9002.1103515625)
		elseif I == 1825 or I <= 1849 then
			Mon = "Forest Pirate"
			Qdata = 1
			Qname = "DeepForestIsland"
			NameMon = "Forest Pirate"
			PosQ = CFrame.new(-13234.04, 331.488495, -7625.40137, .707134247, 0, -0.707079291, 0, 1, 0, .707079291, 0, .707134247)
			PosM = CFrame.new(-13274.478515625, 332.37814331055, -7769.5805664062)
		elseif I == 1850 or I <= 1899 then
			Mon = "Mythological Pirate"
			Qdata = 2
			Qname = "DeepForestIsland"
			NameMon = "Mythological Pirate"
			PosQ = CFrame.new(-13234.04, 331.488495, -7625.40137, .707134247, 0, -0.707079291, 0, 1, 0, .707079291, 0, .707134247)
			PosM = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
		elseif I == 1900 or I <= 1924 then
			Mon = "Jungle Pirate"
			Qdata = 1
			Qname = "DeepForestIsland2"
			NameMon = "Jungle Pirate"
			PosQ = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, .996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
			PosM = CFrame.new(-12256.16015625, 331.73828125, -10485.836914062)
		elseif I == 1925 or I <= 1974 then
			Mon = "Musketeer Pirate"
			Qdata = 2
			Qname = "DeepForestIsland2"
			NameMon = "Musketeer Pirate"
			PosQ = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, .996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
			PosM = CFrame.new(-13457.904296875, 391.54565429688, -9859.177734375)
		elseif I == 1975 or I <= 1999 then
			Mon = "Reborn Skeleton"
			Qdata = 1
			Qname = "HauntedQuest1"
			NameMon = "Reborn Skeleton"
			PosQ = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, 0, -1, 0, 0)
			PosM = CFrame.new(-8763.7236328125, 165.72299194336, 6159.8618164062)
		elseif I == 2000 or I <= 2024 then
			Mon = "Living Zombie"
			Qdata = 2
			Qname = "HauntedQuest1"
			NameMon = "Living Zombie"
			PosQ = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, 0, -1, 0, 0)
			PosM = CFrame.new(-10144.131835938, 138.6266784668, 5838.0888671875)
		elseif I == 2025 or I <= 2049 then
			Mon = "Demonic Soul"
			Qdata = 1
			Qname = "HauntedQuest2"
			NameMon = "Demonic Soul"
			PosQ = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			PosM = CFrame.new(-9505.8720703125, 172.10482788086, 6158.9931640625)
		elseif I == 2050 or I <= 2074 then
			Mon = "Posessed Mummy"
			Qdata = 2
			Qname = "HauntedQuest2"
			NameMon = "Posessed Mummy"
			PosQ = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			PosM = CFrame.new(-9582.0224609375, 6.2515273094177, 6205.478515625)
		elseif I == 2075 or I <= 2099 then
			Mon = "Peanut Scout"
			Qdata = 1
			Qname = "NutsIslandQuest"
			NameMon = "Peanut Scout"
			PosQ = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			PosM = CFrame.new(-2143.2419433594, 47.721984863281, -10029.995117188)
		elseif I == 2100 or I <= 2124 then
			Mon = "Peanut President"
			Qdata = 2
			Qname = "NutsIslandQuest"
			NameMon = "Peanut President"
			PosQ = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			PosM = CFrame.new(-1859.3540039062, 38.103168487549, -10422.4296875)
		elseif I == 2125 or I <= 2149 then
			Mon = "Ice Cream Chef"
			Qdata = 1
			Qname = "IceCreamIslandQuest"
			NameMon = "Ice Cream Chef"
			PosQ = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			PosM = CFrame.new(-872.24658203125, 65.81957244873, -10919.95703125)
		elseif I == 2150 or I <= 2199 then
			Mon = "Ice Cream Commander"
			Qdata = 2
			Qname = "IceCreamIslandQuest"
			NameMon = "Ice Cream Commander"
			PosQ = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			PosM = CFrame.new(-558.06103515625, 112.04895782471, -11290.774414062)
		elseif I == 2200 or I <= 2224 then
			Mon = "Cookie Crafter"
			Qdata = 1
			Qname = "CakeQuest1"
			NameMon = "Cookie Crafter"
			PosQ = CFrame.new(-2021.32007, 37.7982254, -12028.7295, .957576931, -8.80302053e-08, .288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, .957576931)
			PosM = CFrame.new(-2374.13671875, 37.798263549805, -12125.30859375)
		elseif I == 2225 or I <= 2249 then
			Mon = "Cake Guard"
			Qdata = 2
			Qname = "CakeQuest1"
			NameMon = "Cake Guard"
			PosQ = CFrame.new(-2021.32007, 37.7982254, -12028.7295, .957576931, -8.80302053e-08, .288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, .957576931)
			PosM = CFrame.new(-1598.3070068359, 43.773197174072, -12244.581054688)
		elseif I == 2250 or I <= 2274 then
			Mon = "Baking Staff"
			Qdata = 1
			Qname = "CakeQuest2"
			NameMon = "Baking Staff"
			PosQ = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, .250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
			PosM = CFrame.new(-1887.8099365234, 77.618507385254, -12998.350585938)
		elseif I == 2275 or I <= 2299 then
			Mon = "Head Baker"
			Qdata = 2
			Qname = "CakeQuest2"
			NameMon = "Head Baker"
			PosQ = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, .250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
			PosM = CFrame.new(-2216.1882324219, 82.884521484375, -12869.293945312)
		elseif I == 2300 or I <= 2324 then
			Mon = "Cocoa Warrior"
			Qdata = 1
			Qname = "ChocQuest1"
			NameMon = "Cocoa Warrior"
			PosQ = CFrame.new(233.22836303711, 29.876001358032, -12201.233398438)
			PosM = CFrame.new(-21.553283691406, 80.574996948242, -12352.387695312)
		elseif I == 2325 or I <= 2349 then
			Mon = "Chocolate Bar Battler"
			Qdata = 2
			Qname = "ChocQuest1"
			NameMon = "Chocolate Bar Battler"
			PosQ = CFrame.new(233.22836303711, 29.876001358032, -12201.233398438)
			PosM = CFrame.new(582.59057617188, 77.188095092773, -12463.162109375)
		elseif I == 2350 or I <= 2374 then
			Mon = "Sweet Thief"
			Qdata = 1
			Qname = "ChocQuest2"
			NameMon = "Sweet Thief"
			PosQ = CFrame.new(150.50663757324, 30.693693161011, -12774.502929688)
			PosM = CFrame.new(165.1884765625, 76.058853149414, -12600.836914062)
		elseif I == 2375 or I <= 2399 then
			Mon = "Candy Rebel"
			Qdata = 2
			Qname = "ChocQuest2"
			NameMon = "Candy Rebel"
			PosQ = CFrame.new(150.50663757324, 30.693693161011, -12774.502929688)
			PosM = CFrame.new(134.86563110352, 77.247680664062, -12876.547851562)
		elseif I == 2400 or I <= 2449 then
			Mon = "Candy Pirate"
			Qdata = 1
			Qname = "CandyQuest1"
			NameMon = "Candy Pirate"
			PosQ = CFrame.new(-1150.0400390625, 20.378934860229, -14446.334960938)
			PosM = CFrame.new(-1310.5003662109, 26.016523361206, -14562.404296875)
		elseif I == 2450 or I <= 2474 then
			Mon = "Isle Outlaw"
			Qdata = 1
			Qname = "TikiQuest1"
			NameMon = "Isle Outlaw"
			PosQ = CFrame.new(-16548.8164, 55.6059914, -172.8125, .213092566, 0, -0.977032006, 0, 1, 0, .977032006, 0, .213092566)
			PosM = CFrame.new(-16479.900390625, 226.6117401123, -300.31143188477)
		elseif I == 2475 or I <= 2499 then
			Mon = "Island Boy"
			Qdata = 2
			Qname = "TikiQuest1"
			NameMon = "Island Boy"
			PosQ = CFrame.new(-16548.8164, 55.6059914, -172.8125, .213092566, 0, -0.977032006, 0, 1, 0, .977032006, 0, .213092566)
			PosM = CFrame.new(-16849.396484375, 192.86505126953, -150.78532409668)
		elseif I == 2500 or I <= 2524 then
			Mon = "Sun-kissed Warrior"
			Qdata = 1
			Qname = "TikiQuest2"
			NameMon = "kissed Warrior"
			PosM = CFrame.new(-16347, 64, 984)
			PosQ = CFrame.new(-16538, 55, 1049)
		elseif I == 2525 or I <= 2550 then
			Mon = "Isle Champion"
			Qdata = 2
			Qname = "TikiQuest2"
			NameMon = "Isle Champion"
			PosQ = CFrame.new(-16541.0215, 57.3082275, 1051.46118, .0410757065, 0, -0.999156058, 0, 1, 0, .999156058, 0, .0410757065)
			PosM = CFrame.new(-16602.1015625, 130.38734436035, 1087.2456054688)
		elseif I == 2551 or I <= 2574 then
			Mon = "Serpent Hunter"
			Qdata = 1
			Qname = "TikiQuest3"
			NameMon = "Serpent Hunter"
			PosQ = CFrame.new(-16668.03,105.32,1568.60)
			PosM = CFrame.new(-16645.64,163.09,1352.87)
		elseif I >= 2575 and I <= 2599 then 
			Mon = "Skull Slayer"
			Qdata = 2
			Qname = "TikiQuest3"
			NameMon = "Skull Slayer"
			PosQ = CFrame.new(-16668.03,105.32,1568.60)
			PosM = CFrame.new(-16709.49,419.68,1751.09)
		elseif I >= 2600 and I <= 2624 then
			PosQ = CFrame.new(10778.875, -2087.72437, 9265.18359, 0.934615612, -9.33109447e-08, -0.355659455, 9.17655143e-08, 1, -2.12154276e-08, 0.355659455, -1.28090019e-08, 0.934615612)
			if (getgenv().AutoFarm or _G.Level) and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				_tp(CFrame.new(-16269.7041, 25.2288494, 1373.65955, 0.997390985, 1.47309942e-09, -0.0721890926, -4.00651912e-09, 0.99999994, -2.51183763e-09, 0.0721890852, 5.75363091e-10, 0.997390926))
				task.wait(2)
				local args = {"TravelToSubmergedIsland"}
				game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/SubmarineWorkerSpeak"):InvokeServer(unpack(args))
				return
			end
			-- Código para executar SOMENTE se já estiver na ilha
			Mon = "Reef Bandit"
			Qdata = 1
			Qname = "SubmergedQuest1"
			NameMon = "Reef Bandit"
			PosM = CFrame.new(11019.1318, -2146.06812, 9342.3916, -0.719955266, -1.74275385e-08, 0.69402045, 5.76556367e-08, 1, 8.49211546e-08, -0.69402045, 1.01153624e-07, -0.719955266)
		elseif I >= 2625 and I <= 2649 then
			PosQ = CFrame.new(10778.875, -2087.72437, 9265.18359, 0.934615612, -9.33109447e-08, -0.355659455, 9.17655143e-08, 1, -2.12154276e-08, 0.355659455, -1.28090019e-08, 0.934615612)
			if (getgenv().AutoFarm or _G.Level) and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				_tp(CFrame.new(-16269.7041, 25.2288494, 1373.65955, 0.997390985, 1.47309942e-09, -0.0721890926, -4.00651912e-09, 0.99999994, -2.51183763e-09, 0.0721890852, 5.75363091e-10, 0.997390926))
				task.wait(2)
				local args = {"TravelToSubmergedIsland"}
				game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/SubmarineWorkerSpeak"):InvokeServer(unpack(args))
				return
			end
			-- Código para executar SOMENTE se já estiver na ilha
			Mon = "Coral Pirate"
			Qdata = 2
			Qname = "SubmergedQuest1"
			NameMon = "Coral Pirate"
			PosM = CFrame.new(10808.6006, -2030.36145, 9364.2334, -0.775185347, -0.0359364748, 0.6307109, 0.0615428537, 0.989336014, 0.132010356, -0.628728986, 0.141148239, -0.764707148)
		elseif I >= 2650 and I <= 2674 then
			PosQ = CFrame.new(10880.6855, -2086.20044, 10032.624, -0.321384728, 9.87648434e-08, -0.946948707, 7.13271007e-08, 1, 8.00902953e-08, 0.946948707, -4.18033075e-08, -0.321384728)
			if (getgenv().AutoFarm or _G.Level) and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				_tp(CFrame.new(-16269.7041, 25.2288494, 1373.65955, 0.997390985, 1.47309942e-09, -0.0721890926, -4.00651912e-09, 0.99999994, -2.51183763e-09, 0.0721890852, 5.75363091e-10, 0.997390926))
				task.wait(2)
				local args = {"TravelToSubmergedIsland"}
				game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/SubmarineWorkerSpeak"):InvokeServer(unpack(args))
				return
			end
			-- Código para executar SOMENTE se já estiver na ilha
			Mon = "Sea Chanter"
			Qdata = 1
			Qname = "SubmergedQuest2"
			NameMon = "Sea Chanter"
			PosM = CFrame.new(10671.2715, -2057.59155, 10047.2588, -0.846484065, -3.11045447e-08, 0.532414079, -5.55383117e-08, 1, -2.98785316e-08, -0.532414079, -5.48610757e-08, -0.846484065)
		elseif I >= 2675 and I <= 2699 then
			PosQ = CFrame.new(10880.6855, -2086.20044, 10032.624, -0.321384728, 9.87648434e-08, -0.946948707, 7.13271007e-08, 1, 8.00902953e-08, 0.946948707, -4.18033075e-08, -0.321384728)
			if (getgenv().AutoFarm or _G.Level) and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				_tp(CFrame.new(-16269.7041, 25.2288494, 1373.65955, 0.997390985, 1.47309942e-09, -0.0721890926, -4.00651912e-09, 0.99999994, -2.51183763e-09, 0.0721890852, 5.75363091e-10, 0.997390926))
				task.wait(2)
				local args = {"TravelToSubmergedIsland"}
				game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/SubmarineWorkerSpeak"):InvokeServer(unpack(args))
				return
			end
			-- Código para executar SOMENTE se já estiver na ilha
			Mon = "Ocean Prophet"
			Qdata = 2
			Qname = "SubmergedQuest2"
			NameMon = "Ocean Prophet"
			PosM = CFrame.new(11008.5195, -2007.72839, 10223.0791, -0.688615739, 2.33523378e-09, -0.725126445, 2.99292546e-09, 1, 3.78221315e-10, 0.725126445, -1.90980032e-09, -0.688615739)
		elseif I >= 2700 and I <= 2724 then
			PosQ = CFrame.new(9640.08789, -1992.44507, 9613.65234, -0.957327187, 4.11991223e-08, 0.289006323, 1.5775445e-08, 1, -9.02985846e-08, -0.289006323, -8.18860855e-08, -0.957327187)
			if (getgenv().AutoFarm or _G.Level) and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				_tp(CFrame.new(-16269.7041, 25.2288494, 1373.65955, 0.997390985, 1.47309942e-09, -0.0721890926, -4.00651912e-09, 0.99999994, -2.51183763e-09, 0.0721890852, 5.75363091e-10, 0.997390926))
				task.wait(2)
				local args = {"TravelToSubmergedIsland"}
				game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/SubmarineWorkerSpeak"):InvokeServer(unpack(args))
				return
			end
			-- Código para executar SOMENTE se já estiver na ilha
			Mon = "High Disciple"
			Qdata = 1
			Qname = "SubmergedQuest3"
			NameMon = "High Disciple"
			PosM = CFrame.new(9750.41602, -1966.93884, 9753.36035, -0.749824047, 5.57797613e-08, -0.661637306, 2.03500754e-08, 1, 6.1243199e-08, 0.661637306, 3.24572511e-08, -0.749824047)
		elseif I >= 2725 then
			PosQ = CFrame.new(9640.08789, -1992.44507, 9613.65234, -0.957327187, 4.11991223e-08, 0.289006323, 1.5775445e-08, 1, -9.02985846e-08, -0.289006323, -8.18860855e-08, -0.957327187)
			if (getgenv().AutoFarm or _G.Level) and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				_tp(CFrame.new(-16269.7041, 25.2288494, 1373.65955, 0.997390985, 1.47309942e-09, -0.0721890926, -4.00651912e-09, 0.99999994, -2.51183763e-09, 0.0721890852, 5.75363091e-10, 0.997390926))
				task.wait(2)
				local args = {"TravelToSubmergedIsland"}
				game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/SubmarineWorkerSpeak"):InvokeServer(unpack(args))
				return
			end
			-- Código para executar SOMENTE se já estiver na ilha
			Mon = "Grand Devotee"
			Qdata = 2
			Qname = "SubmergedQuest3"
			NameMon = "Grand Devotee"
			PosM = CFrame.new(9611.70508, -1993.47119, 9882.68848, -0.591375351, 4.14332426e-08, -0.806396425, 4.73774868e-08, 1, 1.66361875e-08, 0.806396425, -2.83668058e-08, -0.591375351)
		end
	end
end

MaterialMon = function()
		local I = game.Players.LocalPlayer;
		local e = I.Character and I.Character:FindFirstChild("HumanoidRootPart");
		if not e then
			return;
		end;
		shouldRequestEntrance = function(I, K)
				local n = (e.Position - I).Magnitude;
				if n >= K then
					replicated.Remotes.CommF_:InvokeServer("requestEntrance", I);
				end;
			end;
		if World1 then
			if SelectMaterial == "Angel Wings" then
				MMon = {
						"Shanda",
						"Royal Squad",
						"Royal Soldier",
						"Wysper",
						"Thunder God",
					};
				MPos = CFrame.new(-4698, 845, -1912);
				SP = "Default";
				local I = Vector3.new(-4607.82275, 872.54248, -1667.55688);
				shouldRequestEntrance(I, 10000);
			elseif SelectMaterial == "Leather + Scrap Metal" then
				MMon = { "Brute", "Pirate" };
				MPos = CFrame.new(-1145, 15, 4350);
				SP = "Default";
			elseif SelectMaterial == "Magma Ore" then
				MMon = { "Military Soldier", "Military Spy", "Magma Admiral" };
				MPos = CFrame.new(-5815, 84, 8820);
				SP = "Default";
			elseif SelectMaterial == "Fish Tail" then
				MMon = { "Fishman Warrior", "Fishman Commando", "Fishman Lord" };
				MPos = CFrame.new(61123, 19, 1569);
				SP = "Default";
				local I = Vector3.new(61163.8515625, 5.342342376709, 1819.7841796875);
				shouldRequestEntrance(I, 17000);
			end;
		elseif World2 then
			if SelectMaterial == "Leather + Scrap Metal" then
				MMon = { "Marine Captain" };
				MPos = CFrame.new(-2010.5059814453, 73.001159667969, -3326.6208496094);
				SP = "Default";
			elseif SelectMaterial == "Magma Ore" then
				MMon = { "Magma Ninja", "Lava Pirate" };
				MPos = CFrame.new(-5428, 78, -5959);
				SP = "Default";
			elseif SelectMaterial == "Ectoplasm" then
    MMon = {
            "Ship Deckhand",
            "Ship Engineer",
            "Ship Steward",
            "Ship Officer",
        };
    MPos = CFrame.new(911.35827636719, 125.95812988281, 33159.5390625);
    SP = "Default";
    -- Coordenada CORRIGIDA para a entrada do Navio Assombrado (Sea 2)
    local I = Vector3.new(923.21252441406, 126.9760055542, 32852.83203125);
    
    -- Verifica se você está longe da entrada. Se estiver, pede para entrar.
    shouldRequestEntrance(I, 1000); 

			elseif SelectMaterial == "Mystic Droplet" then
				MMon = { "Water Fighter" };
				MPos = CFrame.new(-3385, 239, -10542);
				SP = "Default";
			elseif SelectMaterial == "Radioactive Material" then
				MMon = { "Factory Staff" };
				MPos = CFrame.new(295, 73, -56);
				SP = "Default";
			elseif SelectMaterial == "Vampire Fang" then
				MMon = { "Vampire" };
				MPos = CFrame.new(-6033, 7, -1317);
				SP = "Default";
			end;
		elseif World3 then
			if SelectMaterial == "Scrap Metal" then
				MMon = { "Jungle Pirate", "Forest Pirate" };
				MPos = CFrame.new(-11975.78515625, 331.77340698242, -10620.030273438);
				SP = "Default";
			elseif SelectMaterial == "Fish Tail" then
				MMon = { "Fishman Raider", "Fishman Captain" };
				MPos = CFrame.new(-10993, 332, -8940);
				SP = "Default";
			elseif SelectMaterial == "Conjured Cocoa" then
				MMon = { "Chocolate Bar Battler", "Cocoa Warrior" };
				MPos = CFrame.new(620.63446044922, 78.936447143555, -12581.369140625);
				SP = "Default";
			elseif SelectMaterial == "Dragon Scale" then
				MMon = { "Dragon Crew Archer", "Dragon Crew Warrior" };
				MPos = CFrame.new(6594, 383, 139);
				SP = "Default";
			elseif SelectMaterial == "Gunpowder" then
				MMon = { "Pistol Billionaire" };
				MPos = CFrame.new(-84.855690002441, 85.620613098145, 6132.0087890625);
				SP = "Default";
			elseif SelectMaterial == "Mini Tusk" then
				MMon = { "Mythological Pirate" };
				MPos = CFrame.new(-13545, 470, -6917);
				SP = "Default";
			elseif SelectMaterial == "Demonic Wisp" then
				MMon = { "Demonic Soul" };
				MPos = CFrame.new(-9495.6806640625, 453.58624267578, 5977.3486328125);
				SP = "Default";
			end;
		end;
	end;
QuestNeta = function()
		local I = QuestCheck();
		return {
			[1] = Mon,
			[2] = Qdata,
			[3] = Qname,
			[4] = PosM,
			[5] = NameMon,
			[6] = PosQ,
		};
	end;

_G.Settings = _G.Settings or {}
_G.Settings.AutoClick = true
_G.Settings.FastAttack = true
_G.Settings.FastAttackMode = "Fast Attack"

local VirtualInputManager = game:GetService("VirtualInputManager")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer

if not Player then return end

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage:WaitForChild("Modules")
local Net = Modules:WaitForChild("Net")

local RegisterAttack = Net:WaitForChild("RE/RegisterAttack")
local RegisterHit = Net:WaitForChild("RE/RegisterHit")

local function IsAlive(character)
    return character and character:FindFirstChild("Humanoid") and character.Humanoid.Health > 0
end

local AttackDelays = {
    ["Normal Attack"] = 0.25,
    ["Fast Attack"] = 0.15,
    ["Super Attack"] = 0.05,
    ["Bear Attack"] = 0.1,
    ["Super Bear Attack"] = 0.01,
}

local function StopAllAttacks()
    if _G.FastAttackLoop1 then
        task.cancel(_G.FastAttackLoop1)
        _G.FastAttackLoop1 = nil
    end
    
    if _G.FastAttackLoop2 then
        task.cancel(_G.FastAttackLoop2)
        _G.FastAttackLoop2 = nil
    end
    
    if _G.AutoClickLoop then
        task.cancel(_G.AutoClickLoop)
        _G.AutoClickLoop = nil
    end
end

local FastAttack1 = { Distance = 100 }

function FastAttack1:Attack(BasePart, OthersEnemies)
    if not BasePart or #OthersEnemies == 0 then return end
    RegisterAttack:FireServer(0)
    RegisterHit:FireServer(BasePart, OthersEnemies)
end

function FastAttack1:GetNearestEnemies()
    local OthersEnemies = {}
    local EnemiesFolder = workspace:FindFirstChild("Enemies")
    local CharactersFolder = workspace:FindFirstChild("Characters")
    local BasePart = nil

    local function ProcessFolder(folder)
        if not folder then return BasePart end
        for _, enemy in ipairs(folder:GetChildren()) do
            local head = enemy:FindFirstChild("Head")
            if head and IsAlive(enemy) and enemy ~= Player.Character then
                local dist = (Player.Character.HumanoidRootPart.Position - head.Position).Magnitude
                if dist < FastAttack1.Distance then
                    table.insert(OthersEnemies, { enemy, head })
                    BasePart = head
                end
            end
        end
        return BasePart
    end

    if EnemiesFolder then ProcessFolder(EnemiesFolder) end
    if CharactersFolder then ProcessFolder(CharactersFolder) end

    return OthersEnemies, BasePart
end

local FastAttack2 = { Distance = 100 }

function FastAttack2:Attack(BasePart, OthersEnemies)
    if not BasePart or #OthersEnemies == 0 then return end
    RegisterAttack:FireServer(0)
    RegisterHit:FireServer(BasePart, OthersEnemies)
end

function FastAttack2:AttackNearest()
    local OthersEnemies = {}
    local EnemiesFolder = workspace:FindFirstChild("Enemies")
    local CharactersFolder = workspace:FindFirstChild("Characters")
    local BasePart = nil

    local function ProcessFolder(folder)
        if not folder then return nil end
        for _, enemy in ipairs(folder:GetChildren()) do
            local head = enemy:FindFirstChild("Head")
            if head and IsAlive(enemy) and enemy ~= Player.Character then
                local dist = (Player.Character.HumanoidRootPart.Position - head.Position).Magnitude
                if dist < FastAttack2.Distance then
                    table.insert(OthersEnemies, { enemy, head })
                    BasePart = head
                end
            end
        end
        return BasePart
    end

    local Part1 = ProcessFolder(EnemiesFolder)
    local Part2 = ProcessFolder(CharactersFolder)
    
    if #OthersEnemies > 0 then
        self:Attack(Part1 or Part2, OthersEnemies)
    end
end

function StartAttacksWithMode(mode)
    StopAllAttacks()
    
    local delayTime = AttackDelays[mode] or 0.15
    _G.Settings.FastAttackMode = mode
    
    _G.FastAttackLoop1 = task.spawn(function()
        while _G.Settings.FastAttack do
            local char = Player.Character
            if char and IsAlive(char) then
                local tool = char:FindFirstChildOfClass("Tool")
                if tool and tool.ToolTip ~= "Gun" then
                    local enemies, basePart = FastAttack1:GetNearestEnemies()
                    if #enemies > 0 and basePart then
                        FastAttack1:Attack(basePart, enemies)
                    end
                end
            end
            task.wait(delayTime)
        end
    end)
    
    _G.FastAttackLoop2 = task.spawn(function()
        while _G.Settings.FastAttack do
            local char = Player.Character
            if char and IsAlive(char) then
                local tool = char:FindFirstChildOfClass("Tool")
                if tool and tool.ToolTip ~= "Gun" then
                    FastAttack2:AttackNearest()
                end
            end
            task.wait(delayTime)
        end
    end)
    
    _G.AutoClickLoop = task.spawn(function()
        while _G.Settings.AutoClick do
            local char = Player.Character
            if char and IsAlive(char) and char:FindFirstChildOfClass("Tool") then
                game:GetService("VirtualUser"):CaptureController()
                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
            end
            task.wait(0.1)
        end
    end)
end

_G.FastAttack = false
if _G.rz_FastAttack then _G.rz_FastAttack = nil end

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Camera = workspace.CurrentCamera

local Enemies = workspace:FindFirstChild("Enemies") or Instance.new("Folder", workspace)
local Characters = workspace:FindFirstChild("Characters") or Instance.new("Folder", workspace)
Enemies.Name = "Enemies"
Characters.Name = "Characters"

local Modules = ReplicatedStorage:FindFirstChild("Modules")
local Net = Modules and Modules:FindFirstChild("Net")
local ShootGunEvent = Net and Net:FindFirstChild("RE/ShootGunEvent")

local mt = getrawmetatable(game)
local old_namecall = mt.__namecall
setreadonly(mt, false)

mt.__namecall = newcclosure(function(...)
    local method = getnamecallmethod()
    local args = {...}
    
    if getgenv().GunAuraSettings and getgenv().GunAuraSettings.Enabled and getgenv().GunAuraSettings.CurrentTarget then
        if method == "FireServer" or method == "InvokeServer" then
            if tostring(args[1]) == "RemoteEvent" or tostring(args[1]):find("Shoot") or tostring(args[1]):find("Attack") then
                if type(args[2]) == "Vector3" then
                    args[2] = getgenv().GunAuraSettings.CurrentTarget.Position
                elseif type(args[3]) == "Vector3" then
                    args[3] = getgenv().GunAuraSettings.CurrentTarget.Position
                end
            end
        end
    end
    
    return old_namecall(unpack(args))
end)

setreadonly(mt, true)

getgenv().GunAuraSettings = {
    Enabled = true,
    GunRange = 500,
    CurrentTarget = nil,
    TargetType = "All",
    GunEnabled = false,
    FireRate = 0.01,
}

local TargetTypes = {"Player", "NPC", "All"}

local function IsAlive(character)
    if not character then return false end
    local hum = character:FindFirstChild("Humanoid")
    return hum and hum.Health > 0
end

local function setSimulationRadius()
    pcall(function()
        sethiddenproperty(Player, "SimulationRadius", 10000)
    end)
end

local function findClosestTargetForGun()
    local myPos = Player.Character and Player.Character:GetPivot().Position
    if not myPos then return nil end

    setSimulationRadius()
    local closestDist = getgenv().GunAuraSettings.GunRange + 1
    local closestTarget = nil
    local closestPart = nil
    
    local targetType = getgenv().GunAuraSettings.TargetType

    if targetType == "NPC" or targetType == "All" then
        for _, enemy in ipairs(Enemies:GetChildren()) do
            if IsAlive(enemy) and enemy ~= Player.Character then
                local hrp = enemy:FindFirstChild("HumanoidRootPart") or enemy:FindFirstChild("Head")
                if hrp then
                    local dist = (hrp.Position - myPos).Magnitude
                    if dist < closestDist then
                        closestDist = dist
                        closestTarget = enemy
                        closestPart = hrp
                    end
                end
            end
        end
    end

    if targetType == "Player" or targetType == "All" then
        for _, char in ipairs(Characters:GetChildren()) do
            if IsAlive(char) and char ~= Player.Character then
                local hrp = char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("Head")
                if hrp then
                    local dist = (hrp.Position - myPos).Magnitude
                    if dist < closestDist then
                        closestDist = dist
                        closestTarget = char
                        closestPart = hrp
                    end
                end
            end
        end
    end

    return closestTarget, closestPart
end

local function applyGunDamage()
    if not getgenv().GunAuraSettings.GunEnabled then return end
    if not Player.Character or not IsAlive(Player.Character) then 
        getgenv().GunAuraSettings.CurrentTarget = nil
        return 
    end

    local target, targetPart = findClosestTargetForGun()
    if not target or not targetPart then 
        getgenv().GunAuraSettings.CurrentTarget = nil
        return 
    end

    getgenv().GunAuraSettings.CurrentTarget = targetPart

    if ShootGunEvent then
        pcall(function()
            for i = 1, 3 do
                ShootGunEvent:FireServer(targetPart.Position, {targetPart})
            end
        end)
    end
end

getgenv().AutoClickShootSettings = {
    Enabled = false,
    ClickDelay = 2,
    LastClickTime = 0
}

local VirtualInputManager = game:GetService("VirtualInputManager")

local function isHoldingGun()
    local character = Player.Character
    if not character then return false end
    
    local tool = character:FindFirstChildOfClass("Tool")
    return tool ~= nil
end

local function performClick()
    if not getgenv().AutoClickShootSettings.Enabled then return end
    if not isHoldingGun() then return end
    
    local currentTime = tick()
    if currentTime - getgenv().AutoClickShootSettings.LastClickTime < getgenv().AutoClickShootSettings.ClickDelay then
        return
    end
    
    local clickPosition = Vector2.new(Camera.ViewportSize.X / 2, 20)
    
    VirtualInputManager:SendMouseButtonEvent(clickPosition.X, clickPosition.Y, 0, true, game, 0)
    task.wait(0.02)
    VirtualInputManager:SendMouseButtonEvent(clickPosition.X, clickPosition.Y, 0, false, game, 0)
    
    getgenv().AutoClickShootSettings.LastClickTime = currentTime
end

local bearlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jadelly/Ui/refs/heads/main/NewZynLib"))()
local Window = bearlib:MakeWindow({
    Title = "Zyn Hub | Farm",
    SubTitle = "by Jaia",
    SaveFolder = true,
    Image = "11354741327"
})

-- Hiển thị thông báo UI đã tải xong

------ Tab
local v1 = Window:MakeTab({
    Title = "Status/Server",
    Icon = "rbxassetid://7040410130"
})
local v2 = Window:MakeTab({
    Title = "Farming",
    Icon = "rbxassetid://10709769508"
})
local v3 = Window:MakeTab({
    Title = "Quests/Other",
    Icon = "rbxassetid://10734943448"
})
local v4 = Window:MakeTab({
    Title = "Farm settings",
    Icon = "rbxassetid://10734950020"
})
local v5 = Window:MakeTab({
    Title = "Auto Fishing",
    Icon = "rbxassetid://127664059821666"
})
local v6 = Window:MakeTab({
    Title = "Sea Event",
    Icon = "rbxassetid://10747376931"
})
local v7 = Window:MakeTab({
    Title = "Volcano/Dojo",
    Icon = "rbxassetid://10734897956"
})
local v8 = Window:MakeTab({
    Title = "Mirage/Race",
    Icon = "rbxassetid://10734920149"
})
local v9 = Window:MakeTab({
    Title = "Fruits/Check Stock",
    Icon = "rbxassetid://10709790875"
})
local v10 = Window:MakeTab({
    Title = "Raid/Dungoen",
    Icon = "rbxassetid://10723404337"
})
local v11 = Window:MakeTab({
    Title = "Teleport/World",
    Icon = "rbxassetid://10734906975"
})
local v12 = Window:MakeTab({
    Title = "PvP/Player",
    Icon = "rbxassetid://10734975692"
})
local v13 = Window:MakeTab({
    Title = "Esp/Stats",
    Icon = "rbxassetid://10723346959"
})

local v14 = Window:MakeTab({
    Title = "Shop",
    Icon = "rbxassetid://10734952479"
})
local v15 = Window:MakeTab({
    Title = "Settings",
    Icon = "rbxassetid://10734950309"
})

local Time = v1:AddParagraph({
    Title = "Time Zone",
    Desc = ""
})
function UpdateOS()
    date = os.date("*t")
    hour = (date.hour) % 24
    ampm = hour < 12 and "AM" or "PM"
    timezone = string.format("%02i:%02i:%02i %s",((hour - 1) % 12) + 1,date.min,date.sec,ampm)
    datetime = string.format("%02d/%02d/%04d", date.day, date.month, date.year)
    LocalizationService = game:GetService("LocalizationService")
    Players = game:GetService("Players")
    player = Players.LocalPlayer
    name = player.Name
    result, code = pcall(function()
        return LocalizationService:GetCountryRegionForPlayerAsync(player)
    end)
    Time:SetDesc(datetime .. " - " .. timezone .. " [ " .. code .. " ]")
end
spawn(function()
    while wait() do
        UpdateOS()
        game:GetService("RunService").RenderStepped:Wait()
    end
end)
local Timmessss = v1:AddParagraph({
    Title = "Time",
    Desc = ""
})
function UpdateTime()
    GameTime = math.floor(workspace.DistributedGameTime + 0.5)
    Hour = math.floor(GameTime / (60 ^ 2)) % 24
    Minute = math.floor(GameTime / 60) % 60
    Second = GameTime % 60
    Timmessss:SetDesc(Hour .. " Hour (h) " ..Minute .. " Minute (m) " ..Second .. " Second (s) ")
end
spawn(function()
    while wait() do
        UpdateTime()
        wait()
    end
end)
local Miragecheck = v1:AddParagraph({
    Title = "Mirage Island",
    Desc = "Status: "
})
spawn(function()
    pcall(function()
        while wait() do
            if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
                Miragecheck:SetDesc('✅️')
            else
                Miragecheck:SetDesc('❌️')
            end
        end
    end)
end)
local Kitsunecheck = v1:AddParagraph({
    Title = "Kitsune Island",
    Desc = "Status: "
})
spawn(function()
    pcall(function()
        while wait() do
            if game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland") then
                Kitsunecheck:SetDesc('✅️')
            else
                Kitsunecheck:SetDesc('❌️')
            end
        end
    end)
end)
local CPrehistoriccheck = v1:AddParagraph({
    Title = "Prehistoric Island",
    Desc = "Status: "
})
spawn(function()
    pcall(function()
        while wait() do
            if game.Workspace._WorldOrigin.Locations:FindFirstChild('Prehistoric Island') then
                CPrehistoriccheck:SetDesc('✅️')
            else
                CPrehistoriccheck:SetDesc('❌️')
            end
        end
    end)
end)
local FrozenIsland = v1:AddParagraph({
    Title = "Frozen Dimension",
    Desc = "Status: "
})
spawn(function()
    pcall(function()
        while wait() do
            if game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension') then
                FrozenIsland:SetDesc('✅️')
            else
                FrozenIsland:SetDesc('❌️')
            end
        end
    end)
end)
local MobCakePrince = v1:AddParagraph({
    Title = "Dimension Killed",
    Desc = ""
})
spawn(function()
    while wait() do
        pcall(function()
            local response = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
            local len = string.len(response)
            if len == 88 then
                MobCakePrince:SetDesc("Kill : " .. string.sub(response, 39, 41))
            elseif len == 87 then
                MobCakePrince:SetDesc("Kill : " .. string.sub(response, 39, 40))
            elseif len == 86 then
                MobCakePrince:SetDesc("Kill : " .. string.sub(response, 39, 39) .. " ")
            else
                MobCakePrince:SetDesc("Cake Prince : ✅️")
            end
        end)
    end
end)
local TyrantStatus = v1:AddParagraph({
    Title = "Tyrant of the Skies",
    Desc = "Status: "
})
spawn(function()
    pcall(function()
        while wait() do
            if game:GetService("Workspace").Enemies:FindFirstChild("Tyrant of the Skies") then
                TyrantStatus:SetDesc("Status : ✅️")
            else
                TyrantStatus:SetDesc("Status : ❌️")
            end
        end
    end)
end)
local CheckRip = v1:AddParagraph({
    Title = "Rip_Indra",
    Desc = "Status: "
})
spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form") 
            or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
                CheckRip:SetDesc("Status : ✅️")
            else
                CheckRip:SetDesc("Status : ❌️")
            end
        end)
    end
end)
local CheckDoughKing = v1:AddParagraph({
    Title = "Dough King",
    Desc = "Status: "
})
spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") 
            or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                CheckDoughKing:SetDesc("Status : ✅️")
            else
                CheckDoughKing:SetDesc("Status : ❌️")
            end
        end)
    end
end)
local EliteHunter = v1:AddParagraph({
    Title = "Elite Hunter",
    Desc = "Status: "
})
spawn(function()
    while wait() do
        pcall(function()
            local rs = game:GetService("ReplicatedStorage")
            local ws = game:GetService("Workspace").Enemies
            local progress = rs.Remotes.CommF_:InvokeServer("EliteHunter", "Progress")
            if rs:FindFirstChild("Diablo") or rs:FindFirstChild("Deandre") or rs:FindFirstChild("Urban")
            or ws:FindFirstChild("Diablo") or ws:FindFirstChild("Deandre") or ws:FindFirstChild("Urban") then
                EliteHunter:SetDesc("Status : ✅️ | Killed: " .. progress)
            else
                EliteHunter:SetDesc("Status : ❌️ | Killed: " .. progress)
            end
        end)
    end
end)
local Pullever = v1:AddParagraph({
    Title = "Pull Lever",
    Desc = "Status: "
})
spawn(function()
    while wait() do
        pcall(function()
            if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CheckTempleDoor") then
                Pullever:SetDesc("✅")
            else
                Pullever:SetDesc("❌")
            end
        end)
    end
end)
local FM = v1:AddParagraph({
    Title = "Full Moon",
    Desc = ""
})
spawn(function()
    while wait() do
        pcall(function()
            local moonId = game:GetService("Lighting").Sky.MoonTextureId
            if moonId == "http://www.roblox.com/asset/?id=9709149431" then
                FM:SetDesc("Moon: 5/5")
            elseif moonId == "http://www.roblox.com/asset/?id=9709149052" then
                FM:SetDesc("Moon: 4/5")
            elseif moonId == "http://www.roblox.com/asset/?id=9709143733" then
                FM:SetDesc("Moon: 3/5")
            elseif moonId == "http://www.roblox.com/asset/?id=9709150401" then
                FM:SetDesc("Moon: 2/5")
            elseif moonId == "http://www.roblox.com/asset/?id=9709149680" then
                FM:SetDesc("Moon: 1/5")
            else
                FM:SetDesc("Moon: 0/5")
            end
        end)
    end
end)
local LegendarySword = v1:AddParagraph({
    Title = "Legendary Sword",
    Desc = "Status: "
})
spawn(function()
    pcall(function()
        while wait() do
            local rs = game:GetService("ReplicatedStorage").Remotes.CommF_   
            if rs:InvokeServer("LegendarySwordDealer", "1") then
                LegendarySword:SetDesc("Shisui")
            elseif rs:InvokeServer("LegendarySwordDealer", "2") then
                LegendarySword:SetDesc("Wando")
            elseif rs:InvokeServer("LegendarySwordDealer", "3") then
                LegendarySword:SetDesc("Saddi")
            else
                LegendarySword:SetDesc("Not Found Legend Swords")
            end
        end
    end)
end)
local Bone = v1:AddParagraph({
    Title = "Bone",
    Desc = ""
})
spawn(function()
    pcall(function()
        while wait() do
            local bones = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Check")
            Bone:SetDesc("You Have : " .. tostring(bones) .. " Bones")
        end
    end)
end)
v1:AddTextBox({
    Name = "Input Job Id",
    Placeholder = "Job ID",
    ClearOnFocus = true,
    Callback = function(Value)
        getgenv().Job = Value
    end
})
v1:AddToggle({
    Name = "Spam Join",
    Default = false,
    Callback = function(Value)
        getgenv().Join = Value
    end
})
spawn(function()
    while wait() do
        if getgenv().Join then
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,getgenv().Job,game.Players.LocalPlayer)
        end
    end
end)
v1:AddButton({
    Name = "Join Server",
    Callback = function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,getgenv().Job,game.Players.LocalPlayer)
    end
})
v1:AddButton({
    Name = "Copy JobId",
    Callback = function()
        setclipboard(tostring(game.JobId))
    end
})
v1:AddButton({
    Name = "Rejoin Server",
    Callback = function()
        game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
    end
})
v1:AddButton({
    Name = "Hop Server",
    Callback = function()
        Hop()
    end
})
v1:AddButton({
    Name = "Hop Server Less People",
    Callback = function()
        local Http = game:GetService("HttpService")
        local TPS = game:GetService("TeleportService")
        local Players = game:GetService("Players")
        local plr = Players.LocalPlayer
        local Api = "https://games.roblox.com/v1/games/"
        local _place = game.PlaceId
        local _servers = Api .. _place .. "/servers/Public?sortOrder=Asc&limit=100"
        local function ListServers(cursor)
            local Raw = game:HttpGet(_servers .. ((cursor and "&cursor=" .. cursor) or ""))
            return Http:JSONDecode(Raw)
        end
        local Server, Next
        repeat
            local Servers = ListServers(Next)
            Server = Servers.data[1]
            Next = Servers.nextPageCursor
        until Server
        TPS:TeleportToPlaceInstance(_place, Server.id, plr)
    end
})

v4:AddDropdown({
    Name = "Select Attack Mode",
    Options = {"Normal Attack", "Fast Attack", "Super Attack", "Bear Attack", "Super Bear Attack"},
    Default = "Fast Attack",
    Multi = false,
    Callback = function(mode)
        StartAttacksWithMode(mode)
    end
})

v4:AddToggle({
    Name = "Enable Fast Attack",
    Default = true,
    Callback = function(state)
        _G.Settings.FastAttack = state
        if state then
            StartAttacksWithMode(_G.Settings.FastAttackMode)
        else
            StopAllAttacks()
        end
    end
})

v4:AddToggle({
    Name = "Enable Auto Click",
    Default = false,
    Callback = function(state)
        _G.Settings.AutoClick = state
    end
})

v4:AddDropdown({
    Name = "Select target type",
    Options = TargetTypes,
    Default = "All",
    Callback = function(type)
        getgenv().GunAuraSettings.TargetType = type
    end
})

v4:AddSlider({
    Name = "Gun range",
    Min = 50,
    Max = 30000,
    Default = 500,
    Increment = 10,
    Callback = function(val)
        getgenv().GunAuraSettings.GunRange = val
    end
})

v4:AddToggle({
    Name = "Auto gun aura",
    Default = false,
    Callback = function(val)
        getgenv().GunAuraSettings.GunEnabled = val
    end
})

v4:AddToggle({
    Name = "Auto click when holding gun (2s)",
    Default = false,
    Callback = function(val)
        getgenv().AutoClickShootSettings.Enabled = val
        if not val then
            getgenv().AutoClickShootSettings.LastClickTime = 0
        end
    end
})

task.spawn(function()
    while true do
        pcall(performClick)
        task.wait(0.1)
    end
end)
local targetDisplay = v4:AddParagraph({
    Title = "Current Target",
    Content = "Searching..."
})

task.spawn(function()
    while task.wait(0.5) do
        if getgenv().GunAuraSettings.GunEnabled and getgenv().GunAuraSettings.CurrentTarget then
            local target = getgenv().GunAuraSettings.CurrentTarget.Parent
            if target then
                local targetType = "NPC"
                if Characters:FindFirstChild(target.Name) then
                    targetType = "Player"
                elseif Enemies:FindFirstChild(target.Name) then
                    targetType = "NPC"
                end
                
                local hum = target:FindFirstChild("Humanoid")
                local healthText = hum and string.format(" - %.1f/%.1f HP (%.0f%%)", hum.Health, hum.MaxHealth, (hum.Health / hum.MaxHealth) * 100) or ""
                
                local myPos = Player.Character and Player.Character:GetPivot().Position
                local targetPos = getgenv().GunAuraSettings.CurrentTarget.Position
                local distText = ""
                if myPos and targetPos then
                    local dist = math.floor((targetPos - myPos).Magnitude)
                    distText = string.format(" [%d studs]", dist)
                end
                
                targetDisplay:SetDesc(string.format(" [%s] %s%s%s", targetType, target.Name, healthText, distText))
            else
                targetDisplay:SetDesc("Searching...")
            end
        else
            targetDisplay:SetDesc("Searching...")
        end
    end
end)

task.spawn(function()
    while true do
        pcall(applyGunDamage)
        task.wait(getgenv().GunAuraSettings.FireRate) -- FireRate vẫn là 0.01
    end
end)

task.spawn(function()
    while task.wait(5) do
        pcall(setSimulationRadius)
    end
end)

v2:AddSection({"Auto Farm main"})
v2:AddDropdown({
    Name = "Select Weapon",
    Options = {"Melee","Sword","Blox Fruit","Gun"},
    Default = "Melee",
    Multi = false,
    Callback = function(I)
        _G.ChooseWP = I
    end,
})

spawn(function()
    while wait(Sec) do
        pcall(function()
            for _, e in pairs(plr.Backpack:GetChildren()) do
                if e.ToolTip == _G.ChooseWP then
                    if plr.Backpack:FindFirstChild(e.Name) then
                        _G.SelectWeapon = e.Name
                    end
                end
            end
        end)
    end
end)
-- VARIAVEIS GLOBAIS
_G.SelectedFarmMode = "Level"
_G.StartFarm = false
_G.Level = false
_G.AutoFarm_Bone = false
_G.AutoFarm_Cake = false
_G.AutoTyrant = false -- Adicionado
_G.AcceptQuest = false

-- Variável para guardar o mob de Level Farm
local CurrentMobLevel = nil
local CurrentMobLevelSystem = nil

-- Define o limite de distância para teleporte condicional (em studs)
local TELEPORT_DISTANCE_THRESHOLD = 15 

-- Função auxiliar para teleporte condicional
local function TeleportConditional(hrp, targetCFrame, threshold)
    if not hrp or not targetCFrame then return end
    
    local dist = (targetCFrame.Position - hrp.Position).Magnitude  
    if dist > threshold then  
        _tp(targetCFrame)  
    end
end

---

----------------------------------------------------------------------------
-- 1. UI: DROPDOWN + TOGGLES (Coloque isso na seção da sua UI)
----------------------------------------------------------------------------

v2:AddDropdown({
    Name = "Select Farm Mode",
    Options = {"Level", "Bone", "Cake Prince", "Tyrant Of The Skies"},
    Default = GetSetting("SelectedFarmMode_Save", "Level"),
    Callback = function(v)
        _G.SelectedFarmMode = v
        _G.SaveData["SelectedFarmMode_Save"] = v
        SaveSettings()
    end
})

v2:AddToggle({
    Name = "Start Farm",
    Default = GetSetting("StartFarm_Save", false),
    Callback = function(v)
        _G.StartFarm = v

        -- Reset total das variáveis de controle para evitar conflitos
        _G.Level = false  
        _G.AutoFarm_Bone = false  
        _G.AutoFarm_Cake = false  
        _G.AutoTyrant = false 

        if v then  
            if _G.SelectedFarmMode == "Level" then  
                _G.Level = true  
            elseif _G.SelectedFarmMode == "Bone" then  
                _G.AutoFarm_Bone = true  
            elseif _G.SelectedFarmMode == "Cake Prince" then  
                _G.AutoFarm_Cake = true  
            elseif _G.SelectedFarmMode == "Tyrant Of The Skies" then  
                _G.AutoTyrant = true -- Ativa a lógica do Tyrant
            end  
        end

        _G.SaveData["StartFarm_Save"] = v
        SaveSettings()
    end
})

v2:AddToggle({
    Name = "Accept Quests",
    Default = GetSetting("AcceptQuest_Save", false),
    Callback = function(v)
        _G.AcceptQuest = v
        _G.SaveData["AcceptQuest_Save"] = v
        SaveSettings()
    end
})

----------------------------------------------------------------------------
-- 2. LÓGICA DO TYRANT (FARM, QUESTS E BOSS)
----------------------------------------------------------------------------

-- Configurações
local FarmHeight = 45 -- Altura segura para não bugar no mob

-- NoClip Reforçado (Para não travar nas paredes/mobs)
spawn(function()
    game:GetService("RunService").Stepped:Connect(function()
        if _G.AutoTyrant and _G.StartFarm then
            local char = game.Players.LocalPlayer.Character
            if char then
                for _, part in pairs(char:GetDescendants()) do
                    if part:IsA("BasePart") and part.CanCollide then
                        part.CanCollide = false
                    end
                end
                if char:FindFirstChild("Humanoid") then
                    char.Humanoid.AutoRotate = true 
                    char.Humanoid:ChangeState(11) 
                end
            end
        end
    end)
end)

-- Função Mágica: Seleciona o Mob/Quest exato pelo Nível
local function GetTargetByLevel()
    local myLevel = game.Players.LocalPlayer.Data.Level.Value
    
-- [LEVEL 2575+] SKULL SLAYER
if myLevel >= 2575 then
    return {
        Name = "Skull Slayer",
        QuestArgs = {"StartQuest", "TikiQuest3", 2},
        QuestPos = CFrame.new(
            -16665.0879, 105.27478, 1577.61743,
            -0.999621451, 3.5280582e-08, 0.0275127869,
             3.5990368e-08, 1, 2.53032191e-08,
            -0.0275127869, 2.62838356e-08, -0.999621451
        ),
        FarmPos = CFrame.new(-16709.49, 419.68, 1751.09)
    }

-- [LEVEL 2551 - 2574] SERPENT HUNTER
elseif myLevel > 2550 then
    return {
        Name = "Serpent Hunter",
        QuestArgs = {"StartQuest", "TikiQuest3", 1},
        QuestPos = CFrame.new(
            -16665.0879, 105.27478, 1577.61743,
            -0.999621451, 3.5280582e-08, 0.0275127869,
             3.5990368e-08, 1, 2.53032191e-08,
            -0.0275127869, 2.62838356e-08, -0.999621451
        ),
        FarmPos = CFrame.new(-16645.64, 163.09, 1352.87)
    }

-- [LEVEL 2525 - 2550] ISLE CHAMPION
elseif myLevel >= 2525 then
    return {
        Name = "Isle Champion",
        QuestArgs = {"StartQuest", "TikiQuest2", 2},
        QuestPos = CFrame.new(
            -16546.748, 55.7216759, -172.865311,
            -0.0595058464, 2.45485676e-08, 0.998227954,
            -5.3272025e-08, 1, -2.77677703e-08,
            -0.998227954, -5.48299717e-08, -0.0595058464
        ),
        FarmPos = CFrame.new(-16602.1015625, 130.38734436035, 1087.2456054688)
    }

-- [LEVEL 2500 - 2524] SUN-KISSED WARRIOR
elseif myLevel >= 2500 then
    return {
        Name = "Sun-kissed Warrior",
        QuestArgs = {"StartQuest", "TikiQuest2", 1},
        QuestPos = CFrame.new(
            -16546.748, 55.7216759, -172.865311,
            -0.0595058464, 2.45485676e-08, 0.998227954,
            -5.3272025e-08, 1, -2.77677703e-08,
            -0.998227954, -5.48299717e-08, -0.0595058464
        ),
        FarmPos = CFrame.new(-16347, 64, 984)
    }

-- [LEVEL 2475 - 2499] ISLAND BOY
elseif myLevel >= 2475 then
    return {
        Name = "Island Boy",
        QuestArgs = {"StartQuest", "TikiQuest1", 2},
        QuestPos = CFrame.new(
            -16546.748, 55.7216759, -172.865311,
            -0.0595058464, 2.45485676e-08, 0.998227954,
            -5.3272025e-08, 1, -2.77677703e-08,
            -0.998227954, -5.48299717e-08, -0.0595058464
        ),
        FarmPos = CFrame.new(-16670, 43, -270)
    }

-- [LEVEL < 2475] ISLE OUTLAW
else
    return {
        Name = "Isle Outlaw",
        QuestArgs = {"StartQuest", "TikiQuest1", 1},
        QuestPos = CFrame.new(
            -16546.748, 55.7216759, -172.865311,
            -0.0595058464, 2.45485676e-08, 0.998227954,
            -5.3272025e-08, 1, -2.77677703e-08,
            -0.998227954, -5.48299717e-08, -0.0595058464
        ),
        FarmPos = CFrame.new(-16350, 45, -180)
    }
end
end

-- Verifica quantos "Olhos" (Vasos) foram quebrados
local function GetEyesCount()
    local model = workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("TikiOutpost") and workspace.Map.TikiOutpost:FindFirstChild("IslandModel")
    local count = 0
    if model then
        local eye1 = model:FindFirstChild("Eye1")
        local eye2 = model:FindFirstChild("Eye2")
        local chunks = model:FindFirstChild("IslandChunks")
        local eye3 = chunks and chunks:FindFirstChild("E") and chunks.E:FindFirstChild("Eye3")
        local eye4 = chunks and chunks:FindFirstChild("E") and chunks.E:FindFirstChild("Eye4")
        if eye1 and eye1.Transparency == 0 then count = count + 1 end
        if eye2 and eye2.Transparency == 0 then count = count + 1 end
        if eye3 and eye3.Transparency == 0 then count = count + 1 end
        if eye4 and eye4.Transparency == 0 then count = count + 1 end
    end
    return count
end

-- Usa skills para quebrar os vasos
local function UseAllCategorySkills()
    local VirtualInputManager = game:GetService("VirtualInputManager")
    local VirtualUser = game:GetService("VirtualUser")
    local categories = {"Melee", "Blox Fruit", "Sword", "Gun"}
    local skills = {"Z", "X", "C"}

    pcall(function()
        game:GetService("VirtualInputManager"):SendKeyEvent(true, "RightControl", false, game)
        workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, workspace.CurrentCamera.CFrame.Position + Vector3.new(0,-1,0))
    end)

    for _, toolType in ipairs(categories) do
        local tool = nil
        for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") and v.ToolTip == toolType then tool = v break end
        end
        if not tool then
            local charTool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
            if charTool and charTool.ToolTip == toolType then tool = charTool end
        end
        if tool then
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
            task.wait(0.1)
            for i = 1, 3 do
                VirtualUser:CaptureController()
                VirtualUser:ClickButton1(Vector2.new(851, 158))
                local skillKey = skills[i]
                if skillKey then
                    VirtualInputManager:SendKeyEvent(true, skillKey, false, game)
                    task.wait(0.05)
                    VirtualInputManager:SendKeyEvent(false, skillKey, false, game)
                end
                task.wait(0.1) 
            end
        end
    end
end

-- LOOP PRINCIPAL DO FARM
spawn(function()
    local VaseIndex = 1 -- Índice para controlar qual vaso atacar
    
    while task.wait() do
        -- Só roda se a toggle estiver ativada E o modo for Tyrant
        if _G.AutoTyrant and _G.StartFarm then
            pcall(function()
                local plr = game.Players.LocalPlayer
                local boss = workspace.Enemies:FindFirstChild("Tyrant of the Skies")
                local eyes = GetEyesCount()

                -- [PRIORIDADE 1] MATAR BOSS
                if boss and boss.Humanoid.Health > 0 then
                    _tp(boss.HumanoidRootPart.CFrame * CFrame.new(0, FarmHeight, 0))
                    repeat task.wait()
                        if boss and boss:FindFirstChild("HumanoidRootPart") then
                            _tp(boss.HumanoidRootPart.CFrame * CFrame.new(0, FarmHeight, 0))
                            EquipWeapon(_G.SelectWeapon)
                            G.Kill(boss, true)
                        else
                            break
                        end
                    until not boss.Parent or boss.Humanoid.Health <= 0 or not _G.StartFarm or not _G.AutoTyrant

                -- [PRIORIDADE 2] QUEBRAR 4 VASOS PARA INVOCAR
                elseif eyes == 4 then
                    local targetsty = {
                        CFrame.new(-16335.1, 158.1, 1465.6), CFrame.new(-16288.6, 158.1, 1470.3),
                        CFrame.new(-16258.0, 156.7, 1461.4), CFrame.new(-16212.4, 158.1, 1466.3),
                        CFrame.new(-16335.0, 159.3, 1324.8), CFrame.new(-16286.0, 155.9, 1323.8),
                        CFrame.new(-16250.3, 159.3, 1316.3)
                    }
                    
                    -- CORREÇÃO: Usa o VaseIndex para ciclar entre os vasos ao invés de resetar o loop
                    local pos = targetsty[VaseIndex]
                    
                    if pos then
                        _tp(pos)
                        
                        local char = plr.Character
                        if char and char:FindFirstChild("HumanoidRootPart") then
                            -- Só ataca se estiver perto
                            if (char.HumanoidRootPart.Position - pos.Position).Magnitude < 15 then
                                char.HumanoidRootPart.Anchored = true
                                UseAllCategorySkills()
                                task.wait(0.1) 
                                char.HumanoidRootPart.Anchored = false
                                
                                -- Passa para o próximo vaso
                                VaseIndex = VaseIndex + 1
                                if VaseIndex > #targetsty then
                                    VaseIndex = 1
                                end
                            end
                        end
                    end

                -- [PRIORIDADE 3] FARM NORMAL (TODOS OS MOBS + QUEST)
                else
                    local TargetData = GetTargetByLevel() 
                    local QuestUI = plr.PlayerGui.Main.Quest
                    local hasQuest = QuestUI.Visible

                    -- A. PEGAR QUEST 
                    if _G.AcceptQuest and not hasQuest then
                        local char = plr.Character
                        if char and char:FindFirstChild("HumanoidRootPart") then
                            local distToNPC = (char.HumanoidRootPart.Position - TargetData.QuestPos.Position).Magnitude
                            
                            if distToNPC <= 3 then
                                char.HumanoidRootPart.CFrame = TargetData.QuestPos
                                task.wait(0.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(TargetData.QuestArgs))
                                task.wait(0.5)
                            else
                                _tp(TargetData.QuestPos)
                            end
                        end
                    
                    -- B. MATAR MOBS
                    else
                        local char = plr.Character or plr.CharacterAdded:Wait()
                        local hrp = char:WaitForChild("HumanoidRootPart", 1)

                        if hrp then 
                            local closestEnemy = nil
                            local shortestDistance = math.huge 

                            local AllMobs = {"Skull Slayer", "Serpent Hunter", "Isle Champion", "Sun-kissed Warrior", "Island Boy", "Isle Outlaw"}
                            
                            for _, v in pairs(workspace.Enemies:GetChildren()) do
                                if table.find(AllMobs, v.Name) and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") then
                                    local distance = (hrp.Position - v.HumanoidRootPart.Position).Magnitude
                                    if distance < shortestDistance then
                                        shortestDistance = distance
                                        closestEnemy = v
                                    end
                                end
                            end

                            if closestEnemy then
                                local enemyPos = closestEnemy.HumanoidRootPart.CFrame
                                _tp(enemyPos * CFrame.new(0, FarmHeight, 0)) 
                                EquipWeapon(_G.SelectWeapon)
                                G.Kill(closestEnemy, true)
                            else
                                _tp(TargetData.FarmPos)
                            end
                        end
                    end
                end
            end)
        end
    end
end)





-- 3. SISTEMA BONE FARM (CORRIGIDO)
spawn(function()
    while task.wait() do
        if _G.AutoFarm_Bone and _G.StartFarm then
            pcall(function()
                local plr = game.Players.LocalPlayer  
                local hrp = plr.Character and plr.Character:FindFirstChild("HumanoidRootPart")  
                if not hrp then return end  
                
                local QuestUI = plr.PlayerGui.Main.Quest      
                local MOBS = {"Reborn Skeleton", "Living Zombie", "Demonic Soul", "Posessed Mummy"}
                local npcPos = CFrame.new(-9516.99, 172.01, 6078.46) -- Posição do NPC de Bones

                -- [PASSO 1] SE PRECISAR DE QUEST, VAI AO NPC PRIMEIRO
                if _G.AcceptQuest and not QuestUI.Visible then      
                    local distToNPC = (npcPos.Position - hrp.Position).Magnitude
                    
                    if distToNPC > 5 then
                        _tp(npcPos) -- Teleporta direto para o NPC
                    else
                        -- Se estiver perto, tenta pegar a quest
                        task.wait(0.5)
                        local quests = {
                            {"StartQuest","HauntedQuest1",1}, 
                            {"StartQuest","HauntedQuest1",2},
                            {"StartQuest","HauntedQuest2",1}, 
                            {"StartQuest","HauntedQuest2",2}
                        }
                        -- Tenta pegar a quest baseada no seu level (opcional: deixei aleatório como no seu original)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(quests[math.random(1,#quests)]))
                        task.wait(1) -- Espera a quest carregar na UI
                    end

                -- [PASSO 2] SE JÁ TEM QUEST OU NÃO QUER ACEITAR, VAI FARMAL
                else
                    local function GetClosestMob()      
                        local closest, shortest = nil, math.huge      
                        for _, mobName in pairs(MOBS) do      
                            for _, mob in pairs(workspace.Enemies:GetChildren()) do      
                                if mob.Name == mobName and mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 then      
                                    local dist = (mob.PrimaryPart.Position - hrp.Position).Magnitude      
                                    if dist < shortest then 
                                        shortest = dist 
                                        closest = mob 
                                    end      
                                end      
                            end      
                        end      
                        return closest      
                    end      

                    local mob = GetClosestMob()      
                    if mob then      
                        -- Teleporta para o mob e mata
                        _tp(mob.PrimaryPart.CFrame)      
                        EquipWeapon(_G.SelectWeapon)
                        G.Kill(mob, true)
                    else      
                        -- Se não achar mobs, vai para o spot de spawn deles
                        _tp(CFrame.new(-9495.68, 453.58, 5977.34))      
                    end      
                end
            end)  
        end  
    end
end)

---

-- 4. SISTEMA LEVEL FARM

local CurrentMob = nil

local function GetNearestMob(TargetName)
    local plr = game.Players.LocalPlayer
    local Root = plr.Character and plr.Character:FindFirstChild("HumanoidRootPart")
    if not Root then return nil end
    local Closest, Dist = nil, math.huge    
    for _, Mob in pairs(workspace.Enemies:GetChildren()) do    
        if G.Alive(Mob) and Mob.Name == TargetName and Mob:FindFirstChild("HumanoidRootPart") then    
            local d = (Mob.HumanoidRootPart.Position - Root.Position).Magnitude    
            if d < Dist then Dist = d Closest = Mob end    
        end    
    end  
    return Closest
end

spawn(function()
    while task.wait() do
        if _G.Level and _G.StartFarm then
            pcall(function()
                local plr = game.Players.LocalPlayer  
                local Root = plr.Character and plr.Character:FindFirstChild("HumanoidRootPart")  
                if not Root then return end  
                local QuestTitle = plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text      
                local Q = QuestNeta()  
                if not string.find(QuestTitle, Q[5]) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest") end      
                if not plr.PlayerGui.Main.Quest.Visible then      
                    TeleportConditional(Root, Q[6], TELEPORT_DISTANCE_THRESHOLD)      
                    if (Root.Position - Q[6].Position).Magnitude <= 50 then      
                        task.wait(1.9)  
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", Q[3], Q[2])      
                    end      
                    return      
                end      
                local Nearest = GetNearestMob(Q[1])  
                if CurrentMob and G.Alive(CurrentMob) and CurrentMob.Parent then      
                    G.Kill(CurrentMob, true)      
                    return      
                else CurrentMob = nil end      
                if not Nearest then TeleportConditional(Root, Q[4], TELEPORT_DISTANCE_THRESHOLD) return end
                CurrentMob = Nearest
                if CurrentMob and CurrentMob:FindFirstChild("HumanoidRootPart") then _tp(CurrentMob.HumanoidRootPart.CFrame) end
                repeat task.wait() G.Kill(CurrentMob, true) until not _G.StartFarm or not _G.Level or not CurrentMob.Parent or CurrentMob.Humanoid.Health <= 0      
                CurrentMob = nil      
            end)  
        end  
    end
end)

---

-- 5. SISTEMA CAKE PRINCE FARM

spawn(function()
    while task.wait() do
        if _G.AutoFarm_Cake and _G.StartFarm then
            pcall(function()
                local plr = game.Players.LocalPlayer
                local hrp = plr.Character and plr.Character:FindFirstChild("HumanoidRootPart")
                if not hrp then return end
                local enemies = workspace:FindFirstChild("Enemies")  
                if not enemies then return end  
                local CakePos = CFrame.new(-2091.91, 70.00, -12142.83)  
                local PortalEntrance = CFrame.new(-2151.82, 149.32, -12404.91)  
                local mirror = workspace.Map:FindFirstChild("CakeLoaf")  
                mirror = mirror and mirror:FindFirstChild("BigMirror")  
                local other = mirror and mirror:FindFirstChild("Other")  
                local portalOpen = other and other.Transparency == 0  
                local boss = enemies:FindFirstChild("Cake Prince") or enemies:FindFirstChild("Dough King")  

                if not boss and not portalOpen and (hrp.Position - CakePos.Position).Magnitude > 3000 then  
                    _tp(CakePos) 
                    return  
                end  

                if boss or portalOpen then  
                    if boss and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health > 0 and boss.PrimaryPart then  
                        local bossTarget = boss.PrimaryPart.CFrame * CFrame.new(0, 5, 0)  
                        _tp(bossTarget)  
                        local bossPos = boss.PrimaryPart.CFrame * CFrame.new(0, 25, 0) * CFrame.Angles(math.rad(-90), 0, 0)  
                        _tp(bossPos)  
                        G.Kill(boss, true)  
                        return  
                    end  
                    if (hrp.Position - PortalEntrance.Position).Magnitude < 500 then  
                        TeleportConditional(hrp, PortalEntrance, TELEPORT_DISTANCE_THRESHOLD)  
                    end  
                    return  
                end  

                local CAKE_MOBS = {"Cookie Crafter", "Cake Guard", "Baking Staff", "Head Baker"}  
                if _G.AcceptQuest and not plr.PlayerGui.Main.Quest.Visible then  
                    local questPos = CFrame.new(-1927.92, 37.80, -12842.54)  
                    TeleportConditional(hrp, questPos, TELEPORT_DISTANCE_THRESHOLD)  
                    if (hrp.Position - questPos.Position).Magnitude <= 40 then  
                        local q = {{"StartQuest", "CakeQuest2", 2}, {"StartQuest", "CakeQuest2", 1}, {"StartQuest", "CakeQuest1", 1}, {"StartQuest", "CakeQuest1", 2}}  
                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(q[math.random(1, 4)]))  
                    end  
                    return  
                end  

                local bestMob, bestDist = nil, math.huge  
                for _, mob in ipairs(enemies:GetChildren()) do  
                    if table.find(CAKE_MOBS, mob.Name) and mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 then  
                        local dist = (mob.HumanoidRootPart.Position - hrp.Position).Magnitude  
                        if dist < bestDist then bestDist = dist bestMob = mob end  
                    end  
                end  
                if bestMob then  
                    repeat task.wait()  
                        if (workspace.Map.CakeLoaf.BigMirror.Other.Transparency == 0) or enemies:FindFirstChild("Cake Prince") then break end  
                        if bestMob.Parent and bestMob.Humanoid.Health > 0 then  
                            _tp(bestMob.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0) * CFrame.Angles(math.rad(-90), 0, 0))  
                            G.Kill(bestMob, true)  
                        else break end  
                    until not _G.StartFarm or not _G.AutoFarm_Cake or not bestMob.Parent or bestMob.Humanoid.Health <= 0  
                else  
                    TeleportConditional(hrp, CFrame.new(-1927.92, 37.80, -12842.54), TELEPORT_DISTANCE_THRESHOLD)  
                end  
            end)  
        end  
    end
end)
v2:AddSection({"Other"})
-- Configuração da Distância Máxima (em studs)
-- Aumente se quiser pegar mobs um pouco mais longe, diminua se quiser bem perto.
_G.MaxFarmDistance = 325

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

v2:AddToggle({
    Name = "Kill Mobs Nearest",
    -- 1. Carrega se estava ligado ou desligado ao abrir o script
    Default = GetSetting("AutoFarmNear_Save", false),
    Callback = function(I)
        _G.AutoFarmNear = I
        
        -- 2. Guarda na tabela de configurações para o Save
        _G.SaveData["AutoFarmNear_Save"] = I
        
        -- 3. Salva no arquivo Settings.json na pasta do executor
        SaveSettings()
    end,
})

spawn(function()
    while task.wait() do
        pcall(function()
            if not _G.AutoFarmNear then return end

            local Plr = Players.LocalPlayer
            local Char = Plr.Character or Plr.CharacterAdded:Wait()
            local Root = Char:FindFirstChild("HumanoidRootPart")
            if not Root then return end

            local ClosestEnemy = nil
            local ShortestDistance = math.huge

            -- 🔍 1. Procurar inimigos no WORKSPACE
            if workspace:FindFirstChild("Enemies") then
                for _, e in pairs(workspace.Enemies:GetChildren()) do
                    if e:FindFirstChild("Humanoid")
                    and e:FindFirstChild("HumanoidRootPart")
                    and e.Humanoid.Health > 0 then
                        
                        local dist = (Root.Position - e.HumanoidRootPart.Position).Magnitude
                        if dist < ShortestDistance then
                            ShortestDistance = dist
                            ClosestEnemy = e
                        end
                    end
                end
            end

            -- 🔍 2. Procurar inimigos no REPLICATEDSTORAGE
            if ReplicatedStorage:FindFirstChild("Enemies") then
                for _, e in pairs(ReplicatedStorage.Enemies:GetChildren()) do
                    if e:IsA("Model") and e:FindFirstChild("Humanoid") then
                        -- Se não achou nenhum no workspace ainda
                        if not ClosestEnemy then
                            ClosestEnemy = e
                        end
                    end
                end
            end

            -- ⚔️ 3. Atacar
            if ClosestEnemy and (not _G.MaxFarmDistance or ShortestDistance <= _G.MaxFarmDistance) then
                repeat
                    task.wait()
                    if G and G.Kill then
                        G.Kill(ClosestEnemy, _G.AutoFarmNear)
                    end
                until not _G.AutoFarmNear
                or not ClosestEnemy.Parent
                or (ClosestEnemy:FindFirstChild("Humanoid") and ClosestEnemy.Humanoid.Health <= 0)
                or not Root.Parent
            end
        end)
    end
end)
-- Delay do sistema (pode ajustar)
local Sec = 0.5

if World2 then
v2:AddToggle({
    Name = "Auto Factory Raid",
    -- 1. Tenta carregar se estava ligado ou desligado
    Default = GetSetting("AutoFactory_Save", false),
    Callback = function(Value)
        _G.AutoFactory = Value
        
        -- 2. Guarda a informação na tabela de salvamento
        _G.SaveData["AutoFactory_Save"] = Value
        
        -- 3. Salva no arquivo Settings.json
        SaveSettings()
    end,
})

spawn(function()
    local FactoryPos = CFrame.new(448.46756, 199.356781, -441.389252)

    while task.wait(Sec) do
        pcall(function()
            if not _G.AutoFactory then return end

            -- Procura o Core
            local Core = GetConnectionEnemies("Core")

            if Core and Core:FindFirstChild("Humanoid") and Core.Humanoid.Health > 0 then
                -- Factory ativa
                repeat
                    task.wait()

                    if not _G.AutoFactory then break end
                    if not Core or not Core.Parent then break end
                    if Core.Humanoid.Health <= 0 then break end

                    if _G.SelectWeapon then
                        EquipWeapon(_G.SelectWeapon)
                    end

                    _tp(FactoryPos)

                until Core.Humanoid.Health <= 0 or _G.AutoFactory == false

            else
                -- Core não encontrado → vai pro meio da factory
                _tp(FactoryPos)
            end
        end)
    end
end)
end
if World3 then
v2:AddToggle({
    Name = "Auto Pirate Raid",
    -- 1. Carrega se estava ligado ou desligado ao abrir o script
    Default = GetSetting("AutoRaidCastle_Save", false),
    Callback = function(I)
        _G.AutoRaidCastle = I
        
        -- 2. Guarda na tabela de configurações para o Save
        _G.SaveData["AutoRaidCastle_Save"] = I
        
        -- 3. Salva no arquivo Settings.json automaticamente
        SaveSettings()
    end,
})

spawn(function()
    while wait(Sec) do
        if _G.AutoRaidCastle then
            pcall(function()
                local TargetCFrame = CFrame.new(-5496.17432, 313.768921, -2841.53027, .924894512, 7.37058015e-09, .380223751, 3.5881019e-08, 1, -1.06665446e-07, -0.380223751, 1.12297109e-07, .924894512)
                local CheckCFrame = CFrame.new(-5539.3115234375, 313.80053710938, -2972.3723144531)

                if (CheckCFrame.Position - Root.Position).Magnitude <= 500 then
                    for _, e in pairs(workspace.Enemies:GetChildren()) do
                        if e:FindFirstChild("HumanoidRootPart") and e:FindFirstChild("Humanoid") and e.Humanoid.Health > 0 then
                            if (e.HumanoidRootPart.Position - Root.Position).Magnitude <= 2000 then
                                repeat
                                    wait()
                                    G.Kill(e, _G.AutoRaidCastle)
                                until not _G.AutoRaidCastle or not e.Parent or e.Humanoid.Health <= 0 or not workspace.Enemies:FindFirstChild(e.Name)
                            end
                        end
                    end
                else
                    local EnemyList = {
                        "Galley Pirate",
                        "Galley Captain",
                        "Raider",
                        "Mercenary",
                        "Vampire",
                        "Zombie",
                        "Snow Trooper",
                        "Winter Warrior",
                        "Lab Subordinate",
                        "Horned Warrior",
                        "Magma Ninja",
                        "Lava Pirate",
                        "Ship Deckhand",
                        "Ship Engineer",
                        "Ship Steward",
                        "Ship Officer",
                        "Arctic Warrior",
                        "Snow Lurker",
                        "Sea Soldier",
                        "Water Fighter",
                    }

                    for _, enemyName in pairs(EnemyList) do
                        if replicated:FindFirstChild(enemyName) then
                            for _, n in pairs(replicated:GetChildren()) do
                                if table.find(EnemyList, n.Name) then
                                    _tp(TargetCFrame)
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)
end
v2:AddSection({"Collect"})
-- Botão Auto Collect Chest
v2:AddToggle({
    Name = "Auto Collect Chest",
    -- 1. Carrega o estado salvo (ou false por padrão)
    Default = GetSetting("AutoFarmChest_Save", false),
    Callback = function(I)
        _G.AutoFarmChest = I
        
        -- 2. Guarda na tabela de salvamento
        _G.SaveData["AutoFarmChest_Save"] = I
        
        -- 3. Salva no arquivo Settings.json
        SaveSettings()
    end,
})

-- Botão Auto Collect Berry
v2:AddToggle({
	Name = "Auto Collect Berry",
	-- 1. Carrega o estado salvo
	Default = GetSetting("AutoBerry_Save", false),
	Callback = function(I)
		_G.AutoBerry = I
        
        -- 2. Guarda na tabela de salvamento
        _G.SaveData["AutoBerry_Save"] = I
        
        -- 3. Salva no arquivo
        SaveSettings()
	end,
});

spawn(function()
	while wait(Sec) do
		if _G.AutoBerry then
			local I = game:GetService("CollectionService");
			local e = game:GetService("Players");
			local K = e.LocalPlayer;
			local n = I:GetTagged("BerryBush");
			local d, z = math.huge;
			for I = 1, #n, 1 do
				local e = n[I];
				for I, K in pairs(e:GetAttributes()) do
					if not BerryArray or table.find(BerryArray, K) then
						_tp(e.Parent:GetPivot());
						for I = 1, #n, 1 do
							local e = n[I];
							for I, e in pairs(e:GetChildren()) do
								if not BerryArray or table.find(BerryArray, e) then
									_tp(e.WorldPivot);
									fireproximityprompt(e.ProximityPrompt, math.huge);
								end;
							end;
						end;
					end;
				end;
			end;
		end;
	end;
end);

spawn(function()
    while wait(Sec) do
        if _G.AutoFarmChest then
            pcall(function()
                local CollectionService = game:GetService("CollectionService")
                local Players = game:GetService("Players")
                local plrChar = Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()
                local d = plrChar:GetPivot().Position
                local Chests = CollectionService:GetTagged("_ChestTagged")
                local minDist, nearestChest = math.huge, nil
                for _, chest in pairs(Chests) do
                    local dist = (chest:GetPivot().Position - d).Magnitude
                    if not SelectedIsland or chest:IsDescendantOf(SelectedIsland) then
                        if not chest:GetAttribute("IsDisabled") and dist < minDist then
                            minDist = dist
                            nearestChest = chest
                        end
                    end
                end
                if nearestChest then
                    _tp(nearestChest:GetPivot())
                end
            end)
        end
    end
end)
v2:AddSection({"Material"})
-- Dropdown de Selecionar Material
v2:AddDropdown({
	Name = "Select Material",
	Options = MaterialList,
	-- 1. Carrega o material salvo ou deixa vazio se for a primeira vez
	Default = GetSetting("SelectMaterial_Save", nil),
	Multi = false,
	Callback = function(I)
		(getgenv()).SelectMaterial = I
        
        -- 2. Salva o material escolhido
        _G.SaveData["SelectMaterial_Save"] = I
        SaveSettings()
	end,
})

-- Toggle de Auto Farm (Material)
v2:AddToggle({
	Name = "Auto Farm",
	-- 1. Carrega se o farm de material estava ligado
	Default = GetSetting("AutoMaterial_Save", false),
	Callback = function(I)
		(getgenv()).AutoMaterial = I
        
        -- 2. Salva o estado do toggle
        _G.SaveData["AutoMaterial_Save"] = I
        SaveSettings()
	end,
})

spawn(function()
	local function I(I, e)
		if I:FindFirstChild("Humanoid") and (I:FindFirstChild("HumanoidRootPart") and I.Humanoid.Health > 0) then
			if I.Name == e then
				repeat
					wait();
					G.Kill(I, (getgenv()).AutoMaterial);
				until not (getgenv()).AutoMaterial or not I.Parent or I.Humanoid.Health <= 0;
			end;
		end;
	end;
	local function e()
		for I, e in pairs((game:GetService("Workspace"))._WorldOrigin.EnemySpawns:GetChildren()) do
			for I, K in ipairs(MMon) do
				if string.find(e.Name, K) then
					if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - e.Position).Magnitude >= 10 then
						_tp(e.CFrame * Pos);
					end;
				end;
			end;
		end;
	end;
	while wait() do
		if (getgenv()).AutoMaterial then
			pcall(function()
				if (getgenv()).SelectMaterial then
					MaterialMon((getgenv()).SelectMaterial);
					_tp(MPos);
				end;
				for e, K in ipairs(MMon) do
					for e, n in pairs(workspace.Enemies:GetChildren()) do
						I(n, K);
					end;
				end;
				e();
			end);
		end;
	end;
end);

if World3 then
v2:AddSection({"Bones"})

v2:AddToggle({
    Name = "Trade Bone",
    Default = false,
    Callback = function(Value)
        _G.Rdbone = Value
    end,
})

spawn(function()
    while wait(0.1) do
        if _G.Rdbone then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
        end
    end
end)

v2:AddToggle({
    Name = "Auto Soul Reaper",
    Default = false,
    Callback = function(v)
        _G.AutoHytHallow = v
    end,
})

spawn(function()
    while wait(Sec) do
        if _G.AutoHytHallow then
            pcall(function()
                local mob = GetConnectionEnemies("Soul Reaper")
                if mob then
                    repeat task.wait()
                        G.Kill(mob,_G.AutoHytHallow)
                    until mob.Humanoid.Health <= 0 or not _G.AutoHytHallow
                else
                    if not GetBP("Hallow Essence") then
                        repeat task.wait(.1)
                            replicated.Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                        until not _G.AutoHytHallow or GetBP("Hallow Essence")
                    else
                        local pos = CFrame.new(-8932.32,146.83,6062.55)
                        repeat 
                            task.wait()
                            _tp(pos)
                        until not _G.AutoHytHallow or (plr.Character.HumanoidRootPart.Position - pos.Position).Magnitude <= 5
                        EquipWeapon("Hallow Essence")
                    end
                end
            end)
        end
    end
end)

local prayPos = CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983064115, -2.48005533E-10, 0.18326205, -1.78910387E-9, 1, -8.24392288E-9, -0.18326205, -8.43218029E-9, -0.983064115)

v2:AddToggle({
    Name = "Auto Pray",
    Default = false,
    Callback = function(v)
        _G.Pray = v
    end
})

spawn(function()
    while wait(Sec) do
        if _G.Pray then
            pcall(function()
                if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                    local hrp = plr.Character.HumanoidRootPart
                    if (hrp.Position - prayPos.Position).Magnitude > 5 then
                        repeat
                            task.wait()
                            _tp(prayPos)
                        until not _G.Pray or (plr.Character.HumanoidRootPart.Position - prayPos.Position).Magnitude <= 5
                    end
                    if (plr.Character.HumanoidRootPart.Position - prayPos.Position).Magnitude <= 5 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 1)
                        task.wait(1)
                    end
                end
            end)
        end
    end
end)

local luckPos = CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983064115, -2.48005533E-10, 0.18326205, -1.78910387E-9, 1, -8.24392288E-9, -0.18326205, -8.43218029E-9, -0.983064115)

v2:AddToggle({
    Name = "Auto Try Luck",
    Default = false,
    Callback = function(v)
        _G.Trylux = v
    end
})

spawn(function()
    while wait(Sec) do
        if _G.Trylux then
            pcall(function()
                if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                    local hrp = plr.Character.HumanoidRootPart
                    if (hrp.Position - luckPos.Position).Magnitude > 5 then
                        repeat
                            task.wait()
                            _tp(luckPos)
                        until not _G.Trylux or (plr.Character.HumanoidRootPart.Position - luckPos.Position).Magnitude <= 5
                    end
                    if (plr.Character.HumanoidRootPart.Position - luckPos.Position).Magnitude <= 5 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2)
                        task.wait(1)
                    end
                end
            end)
        end
    end
end)

end

if v2 then
_G.AutoBoss = false
_G.FarmAllBoss = false
_G.AutoAcceptQuest = false
_G.CurrentTargetBoss = nil
_G.FindBoss = _G.FindBoss or (Boss and Boss[1])

v2:AddSection({"Boss Farm"})

-- Khung kiểm tra trạng thái boss (từ file v1.txt)
local BossStatus = v2:AddParagraph({
    Title = "Boss Spawn Status",
    Desc = "Checking..."
})

task.spawn(function()
    while task.wait(1) do
        pcall(function()
            if _G.FindBoss and (game:GetService("ReplicatedStorage"):FindFirstChild(_G.FindBoss) or 
               (workspace.Enemies and workspace.Enemies:FindFirstChild(_G.FindBoss)) or 
               workspace:FindFirstChild(_G.FindBoss)) then
                BossStatus:SetDesc("✅ Boss Spawned")
            else
                BossStatus:SetDesc("❌ Boss Not Found")
            end
        end)
    end
end)

local BossDropdown = v2:AddDropdown({
    Name = "Select Boss",
    Options = Boss,
    Default = Boss and Boss[1] or "The Gorilla King",
    Callback = function(v)
        _G.FindBoss = v
    end
})

v2:AddButton({
    Name = "Refresh Boss List",
    Callback = function()
        local LiveBosses = {}
        local FoundAny = false
        for _, obj in pairs(workspace:GetDescendants()) do
            if obj:IsA("Model") and obj:GetAttribute("IsBoss") == true then
                if not table.find(LiveBosses, obj.Name) then
                    table.insert(LiveBosses, obj.Name)
                    FoundAny = true
                end
            end
        end
        for _, obj in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
            if obj:IsA("Model") and obj:GetAttribute("IsBoss") == true then
                if not table.find(LiveBosses, obj.Name) then
                    table.insert(LiveBosses, obj.Name)
                    FoundAny = true
                end
            end
        end
        if FoundAny then
            table.sort(LiveBosses)
            BossDropdown:Refresh(LiveBosses, true)
        else
            BossDropdown:Refresh({"No Bosses Found"}, true)
        end
    end
})

v2:AddToggle({
    Name = "Auto Farm Boss Select",
    Default = GetSetting("AutoBoss_Save", false),
    Callback = function(v)
        _G.AutoBoss = v
        if v then _G.FarmAllBoss = false end
        _G.SaveData["AutoBoss_Save"] = v
        SaveSettings()
    end
})

v2:AddToggle({
    Name = "Accept Quest Boss",
    Default = GetSetting("AutoAcceptQuestBoss_Save", false),
    Callback = function(v)
        _G.AutoAcceptQuest = v
        _G.SaveData["AutoAcceptQuestBoss_Save"] = v
        SaveSettings()
    end
})

v2:AddToggle({
    Name = "Farm All Bosses",
    Default = GetSetting("FarmAllBosses_Save", false),
    Callback = function(v)
        _G.FarmAllBoss = v
        if v then _G.AutoBoss = false end
        _G.CurrentTargetBoss = nil
        _G.SaveData["FarmAllBosses_Save"] = v
        SaveSettings()
    end
})

local function EquipWeaponBoss()
    local char = game.Players.LocalPlayer.Character
    if not char then return end
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hum then return end
    if _G.SelectWeapon then
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(_G.SelectWeapon) or char:FindFirstChild(_G.SelectWeapon)
        if tool and tool.Parent ~= char then
            hum:EquipTool(tool)
        end
    end
end

local function GoToBoss(targetBoss)
    local char = game.Players.LocalPlayer.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    local hum = char and char:FindFirstChildOfClass("Humanoid")
    if not targetBoss or not hrp or not hum then return end
    local bossHRP = targetBoss:FindFirstChild("HumanoidRootPart") or targetBoss:FindFirstChild("Torso")
    if not bossHRP then return end
    local safeHeight = 22
    local targetPos = bossHRP.Position + Vector3.new(0, safeHeight, 0)
    local targetCFrame = CFrame.new(targetPos)
    local distToSafeSpot = (hrp.Position - targetPos).Magnitude
    EquipWeaponBoss()
    if distToSafeSpot <= 5 then
        hrp.CFrame = targetCFrame
        hrp.Velocity = Vector3.zero
        hrp.AssemblyLinearVelocity = Vector3.zero
        hum.AutoRotate = false
        game:GetService("VirtualUser"):CaptureController()
        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
    else
        if _tp then _tp(targetCFrame) else hrp.CFrame = targetCFrame end
    end
end

task.spawn(function()
    while task.wait() do
        if not _G.FarmAllBoss then
            task.wait(0.5)
            continue
        end
        if _G.CurrentTargetBoss and _G.CurrentTargetBoss.Parent and _G.CurrentTargetBoss:FindFirstChild("Humanoid") and _G.CurrentTargetBoss.Humanoid.Health > 0 then
            task.wait(0.2)
            continue
        end
        local char = game.Players.LocalPlayer.Character
        local myHrp = char and char:FindFirstChild("HumanoidRootPart")
        if not myHrp then task.wait(0.5) continue end
        local potentialBosses = {}
        local foundInWorkspace = false
        local function FastScan(container, isRS)
            for _, v in pairs(container:GetDescendants()) do
                if v:IsA("Model") and v:GetAttribute("IsBoss") == true then
                    if v.Name ~= "Cursed Skeleton Boss" then
                        local h = v:FindFirstChild("Humanoid")
                        local hrp = v:FindFirstChild("HumanoidRootPart") or v:FindFirstChild("Torso")
                        if h and h.Health > 0 and hrp then
                            local dist = (myHrp.Position - hrp.Position).Magnitude
                            if isRS then
                                table.insert(potentialBosses, {Model = v, Distance = dist + 10000})
                            else
                                table.insert(potentialBosses, {Model = v, Distance = dist})
                                foundInWorkspace = true
                            end
                        end
                    end
                end
            end
        end
        FastScan(workspace, false)
        if not foundInWorkspace then FastScan(game:GetService("ReplicatedStorage"), true) end
        if #potentialBosses > 0 then
            table.sort(potentialBosses, function(a, b) return a.Distance < b.Distance end)
            _G.CurrentTargetBoss = potentialBosses[1].Model
        else
            _G.CurrentTargetBoss = nil
        end
        task.wait(0.2)
    end
end)

task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoBoss and _G.FindBoss then
                if QuestB then QuestB() end
                local NeedQuest = false
                local char = game.Players.LocalPlayer.Character
                if not char or not char:FindFirstChild("HumanoidRootPart") then return end
                if _G.AutoAcceptQuest and Qname and Qdata and PosQBoss then
                    local playerGui = game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main") and game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("Quest")
                    local hasQuest = playerGui and playerGui.Visible
                    if not hasQuest then NeedQuest = true end
                end
                if NeedQuest then
                    if (PosQBoss.Position - char.HumanoidRootPart.Position).Magnitude <= 5 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", Qname, Qdata)
                    else
                        if _tp then _tp(PosQBoss) else char.HumanoidRootPart.CFrame = PosQBoss end
                    end
                    return
                end
                local specificBoss = workspace:FindFirstChild("Enemies") and workspace.Enemies:FindFirstChild(_G.FindBoss) or workspace:FindFirstChild(_G.FindBoss)
                if specificBoss and specificBoss:FindFirstChild("Humanoid") and specificBoss.Humanoid.Health > 0 then
                    GoToBoss(specificBoss)
                elseif PosB then
                    if _tp then _tp(PosB) else char.HumanoidRootPart.CFrame = PosB end
                end
            elseif _G.FarmAllBoss then
                if _G.CurrentTargetBoss then
                    GoToBoss(_G.CurrentTargetBoss)
                end
            end
        end)
    end
end)

task.spawn(function()
    while task.wait(0.5) do
        if game.Players.LocalPlayer.Backpack and _G.ChooseWP then
            for _, e in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if e.ToolTip == _G.ChooseWP then _G.SelectWeapon = e.Name end
            end
        end
    end
end)

end

if World3 then
v2:AddSection({"Farm Mastery"})

-- Định nghĩa danh sách quái cho từng đảo
local CAKE_MOBS = X or {"Cookie Crafter", "Cake Guard", "Baking Staff", "Head Baker"}
local BONE_MOBS = P or {"Reborn Skeleton", "Living Zombie", "Demonic Soul", "Posessed Mummy"}

-- Biến lưu lựa chọn đảo
_G.SelectedIsland = "Cake" -- Mặc định là "Cake"

-- Hàm lấy quái gần nhất từ danh sách
local function GetNearestMobFromList(mobList)
    local plr = game.Players.LocalPlayer
    local hrp = plr.Character and plr.Character:FindFirstChild("HumanoidRootPart")
    if not hrp then return nil end
    local closestMob, shortestDist = nil, math.huge
    for _, mob in pairs(workspace.Enemies:GetChildren()) do
        if G.Alive(mob) and table.find(mobList, mob.Name) and mob:FindFirstChild("HumanoidRootPart") then
            local dist = (mob.HumanoidRootPart.Position - hrp.Position).Magnitude
            if dist < shortestDist then
                shortestDist = dist
                closestMob = mob
            end
        end
    end
    return closestMob
end

local function HasAliveMob(mobList)
    for _, mob in pairs(workspace.Enemies:GetChildren()) do
        if G.Alive(mob) and table.find(mobList, mob.Name) then
            return true
        end
    end
    return false
end

-- UI Dropdown chọn đảo
v2:AddDropdown({
    Name = "Select Island For Mastery",
    Options = {"Cake", "Bone"},
    Default = GetSetting("SelectedIsland_Save", "Cake"),
    Callback = function(I)
        _G.SelectedIsland = I
        _G.SaveData["SelectedIsland_Save"] = I
        SaveSettings()
    end,
})

-- ========================================
-- MASTERY FRUIT
-- ========================================
v2:AddToggle({
    Name = "Auto Farm Mastery Fruit",
    Default = GetSetting("FarmMastery_Dev_Save", false),
    Callback = function(I)
        _G.FarmMastery_Dev = I
        _G.SaveData["FarmMastery_Dev_Save"] = I
        SaveSettings()
    end
})

-- Skill Control cho Fruit Mastery
_G.FruitSkills = _G.FruitSkills or { Z = false, X = false, C = false, V = false, F = false }

v2:AddToggle({ Name = "Use Skill Z (Fruit)", Default = false, Callback = function(v) _G.FruitSkills.Z = v end })
v2:AddToggle({ Name = "Use Skill X (Fruit)", Default = false, Callback = function(v) _G.FruitSkills.X = v end })
v2:AddToggle({ Name = "Use Skill C (Fruit)", Default = false, Callback = function(v) _G.FruitSkills.C = v end })
v2:AddToggle({ Name = "Use Skill V (Fruit)", Default = false, Callback = function(v) _G.FruitSkills.V = v end })
v2:AddToggle({ Name = "Use Skill F (Fruit)", Default = false, Callback = function(v) _G.FruitSkills.F = v end })

-- Hàm sử dụng skill Fruit dựa trên cài đặt
local function UseFruitSkills()
    weaponSc("Blox Fruit")
    if _G.FruitSkills.Z then Useskills("Blox Fruit", "Z") end
    if _G.FruitSkills.X then Useskills("Blox Fruit", "X") end
    if _G.FruitSkills.C then Useskills("Blox Fruit", "C") end
    if _G.FruitSkills.V then Useskills("Blox Fruit", "V") end
    if _G.FruitSkills.F then
        vim1:SendKeyEvent(true, "F", false, game)
        vim1:SendKeyEvent(false, "F", false, game)
    end
end

-- Logic Farm Mastery Fruit
spawn(function()
    RunSer.RenderStepped:Connect(function()
        if _G.FarmMastery_Dev then
            pcall(function()
                for _, e in pairs(plr.PlayerGui.Notifications:GetChildren()) do
                    if e.Name == "NotificationTemplate" and string.find(e.Text, "Skill locked!") then
                        e:Destroy()
                    end
                end
            end)
        end
    end)
end)

spawn(function()
    while task.wait(Sec) do
        if _G.FarmMastery_Dev then
            pcall(function()
                local list = (_G.SelectedIsland == "Cake" and CAKE_MOBS or BONE_MOBS)
                local mob = GetNearestMobFromList(list)

                if mob then
                    HealthM = mob.Humanoid.MaxHealth * 0.7

                    repeat
                        task.wait()

                        if not mob.Parent or not mob:FindFirstChild("Humanoid") or mob.Humanoid.Health <= 0 or not mob:FindFirstChild("HumanoidRootPart") then
                            mob = GetNearestMobFromList(list)
                            if not mob then break end
                        end

                        MousePos = mob.HumanoidRootPart.Position

                        -- Sử dụng logic từ G.Mas của Gravity Hub nhưng đã được sửa lỗi
                        if not mob:GetAttribute("Locked") then
                            mob:SetAttribute("Locked", mob.HumanoidRootPart.CFrame)
                        end
                        PosMon = (mob:GetAttribute("Locked")).Position
                        BringEnemy()
                        EquipWeapon(_G.SelectWeapon)

                        if mob.Humanoid.Health <= HealthM then
                            _tp(mob.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                            UseFruitSkills()
                        else
                            weaponSc("Melee")
                            _tp(mob.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                        end

                        if not HasAliveMob(list) then break end

                    until not _G.FarmMastery_Dev

                else
                    if _G.SelectedIsland == "Cake" then
                        _tp(CFrame.new(-1943.6765, 251.5095, -12337.8808))
                    else
                        _tp(CFrame.new(-9495.6806, 453.5862, 5977.3486))
                    end
                end
            end)
        end
    end
end)

-- ========================================
-- MASTERY GUN
-- ========================================
v2:AddToggle({
    Name = "Auto Farm Mastery Gun",
    Default = GetSetting("FarmMastery_G_Save", false),
    Callback = function(I)
        _G.FarmMastery_G = I
        _G.SaveData["FarmMastery_G_Save"] = I
        SaveSettings()
    end
})

spawn(function()
    while task.wait(Sec) do
        if _G.FarmMastery_G then
            pcall(function()
                local list = (_G.SelectedIsland == "Cake" and CAKE_MOBS or BONE_MOBS)
                local mob = GetNearestMobFromList(list)

                if mob then
                    HealthM = mob.Humanoid.MaxHealth * 0.7

                    repeat
                        task.wait()

                        if not mob.Parent or not mob:FindFirstChild("Humanoid") or mob.Humanoid.Health <= 0 or not mob:FindFirstChild("HumanoidRootPart") then
                            mob = GetNearestMobFromList(list)
                            if not mob then break end
                        end

                        MousePos = mob.HumanoidRootPart.Position

                        -- Sử dụng logic từ G.Masgun của Gravity Hub
                        if not mob:GetAttribute("Locked") then
                            mob:SetAttribute("Locked", mob.HumanoidRootPart.CFrame)
                        end
                        PosMon = (mob:GetAttribute("Locked")).Position
                        BringEnemy()
                        EquipWeapon(_G.SelectWeapon)

                        if mob.Humanoid.Health <= HealthM then
                            _tp(mob.HumanoidRootPart.CFrame * CFrame.new(0, 35, 8))
                            Useskills("Gun", "Z")
                            Useskills("Gun", "X")
                        else
                            weaponSc("Melee")
                            _tp(mob.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                        end

                        -- Xử lý bắn súng đặc biệt (Skull Guitar)
                        local modules = replicated:FindFirstChild("Modules")
                        local K = modules and modules:FindFirstChild("Net")
                        local shoot = K and K:FindFirstChild("RE/ShootGunEvent")
                        local tool = plr.Character and plr.Character:FindFirstChildOfClass("Tool")

                        if tool and tool.Name == "Skull Guitar" then
                            SoulGuitar = true
                            if tool:FindFirstChild("RemoteEvent") then
                                tool.RemoteEvent:FireServer("TAP", MousePos)
                            end
                        elseif tool and shoot then
                            SoulGuitar = false
                            shoot:FireServer(MousePos, { mob.HumanoidRootPart })
                        end

                        if not HasAliveMob(list) then break end

                    until not _G.FarmMastery_G

                    SoulGuitar = false

                else
                    if _G.SelectedIsland == "Cake" then
                        _tp(CFrame.new(-1943.6765, 251.5095, -12337.8808))
                    else
                        _tp(CFrame.new(-9495.6806, 453.5862, 5977.3486))
                    end
                end
            end)
        end
    end
end)

-- ========================================
-- MASTERY SWORD
-- ========================================
_G.FarmMastery_S = _G.FarmMastery_S or false

v2:AddToggle({
    Name = "Auto Farm Mastery All Sword",
    Default = GetSetting("FarmMastery_S_Save", false),
    Callback = function(I)
        _G.FarmMastery_S = I
        _G.SaveData["FarmMastery_S_Save"] = I
        SaveSettings()
    end
})

spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.FarmMastery_S then
                local list = (_G.SelectedIsland == "Cake" and CAKE_MOBS or BONE_MOBS)
                local mob = GetNearestMobFromList(list)

                -- Lấy tất cả các kiếm trong inventory
                local inventory = replicated.Remotes.CommF_:InvokeServer("getInventory")
                for _, item in next, inventory do
                    if type(item) == "table" and item.Type == "Sword" then
                        local swordName = item.Name
                        if tonumber(item.Mastery) >= 1 and tonumber(item.Mastery) <= 599 then
                            if GetBP(swordName) then
                                if mob then
                                    repeat
                                        wait()
                                        -- Sử dụng logic từ G.Sword của Gravity Hub
                                        if not mob:GetAttribute("Locked") then
                                            mob:SetAttribute("Locked", mob.HumanoidRootPart.CFrame)
                                        end
                                        PosMon = (mob:GetAttribute("Locked")).Position
                                        BringEnemy()
                                        weaponSc("Sword")
                                        _tp(mob.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        if RandomCFrame then
                                            wait(.1)
                                            _tp(mob.HumanoidRootPart.CFrame * CFrame.new(0, 30, 25))
                                            wait(.1)
                                            _tp(mob.HumanoidRootPart.CFrame * CFrame.new(25, 30, 0))
                                            wait(.1)
                                            _tp(mob.HumanoidRootPart.CFrame * CFrame.new(-25, 30, 0))
                                            wait(.1)
                                            _tp(mob.HumanoidRootPart.CFrame * CFrame.new(0, 30, 25))
                                            wait(.1)
                                            _tp(mob.HumanoidRootPart.CFrame * CFrame.new(-25, 30, 0))
                                        end
                                    until _G.FarmMastery_S == false or not mob.Parent or mob.Humanoid.Health <= 0
                                else
                                    if _G.SelectedIsland == "Cake" then
                                        _tp(CFrame.new(-1943.6765, 251.5095, -12337.8808))
                                    else
                                        _tp(CFrame.new(-9495.6806, 453.5862, 5977.3486))
                                    end
                                end
                            else
                                replicated.Remotes.CommF_:InvokeServer("LoadItem", swordName)
                            end
                            break -- Chỉ farm một cây kiếm một lúc
                        elseif tonumber(item.Mastery) >= 600 then
                            -- Bỏ qua nếu mastery đã max
                        end
                        break
                    end
                end
            end
        end)
    end
end)

end
v4:AddToggle({
	Name = "Auto Active Haki",
	-- 1. Carrega o estado salvo
	Default = GetSetting("AutoHaki_Save", true),
	Callback = function(I)
		Boud = I
        -- 2. Salva
        _G.SaveData["AutoHaki_Save"] = I
        SaveSettings()
	end,
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if Boud then
				local I = { "HasBuso", "Buso" };
				if not plr.Character:FindFirstChild(I[1]) then
					replicated.Remotes.CommF_:InvokeServer(I[2]);
				end;
			end;
		end);
	end;
end);
v4:AddToggle({
	Name = "Auto Active V3",
	-- 1. Carrega o estado salvo
	Default = GetSetting("AutoActiveV3_Save", false),
	Callback = function(I)
		_G.RaceClickAutov3 = I
        
        -- 2. Guarda na tabela de salvamento
        _G.SaveData["AutoActiveV3_Save"] = I
        
        -- 3. Salva no arquivo Settings.json
        SaveSettings()
	end,
})

v4:AddToggle({
	Name = "Auto Active V4",
	-- 1. Carrega o estado salvo
	Default = GetSetting("AutoActiveV4_Save", false),
	Callback = function(I)
		_G.RaceClickAutov4 = I
        
        -- 2. Guarda na tabela de salvamento
        _G.SaveData["AutoActiveV4_Save"] = I
        
        -- 3. Salva no arquivo Settings.json
        SaveSettings()
	end,
})

spawn(function()
	while wait(.2) do
		pcall(function()
			if _G.RaceClickAutov3 then
				repeat
					replicated.Remotes.CommE:FireServer("ActivateAbility");
					wait(30);
				until not _G.RaceClickAutov3;
			end;
		end);
	end;
end);
spawn(function()
	while wait(.2) do
		pcall(function()
			if _G.RaceClickAutov4 then
				if plr.Character:FindFirstChild("RaceEnergy") then
					if (plr.Character:FindFirstChild("RaceEnergy")).Value == 1 then
						Useskills("nil", "Y");
					end;
				end;
			end;
		end);
	end;
end);
v4:AddToggle({
	Name = "Anti AFK",
	Default = true,
	Callback = function(I)
		_G.AntiAFK = I;
	end,
});
plr.Idled:connect(function()
	vim2:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
	wait(1);
	vim2:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
end);
v4:AddToggle({
	Name = "Disable Notify",
	-- 1. Carrega o estado salvo ou false por padrão
	Default = GetSetting("DisableNotify_Save", false),
	Callback = function(I)
		RemoveDamage = I
        
        -- 2. Guarda na tabela de salvamento
        _G.SaveData["DisableNotify_Save"] = I
        
        -- 3. Salva no arquivo Settings.json
        SaveSettings()
	end,
})

spawn(function()
	while wait(Sec) do
		pcall(function()
			if RemoveDamage then
				replicated.Assets.GUI.DamageCounter.Enabled = false;
				plr.PlayerGui.Notifications.Enabled = false;
			else
				replicated.Assets.GUI.DamageCounter.Enabled = true;
				plr.PlayerGui.Notifications.Enabled = true;
			end;
		end);
	end;
end);
v4:AddToggle({
	Name = "Walk on Water",
	Default = true,
	Callback = function(I)
		_G.WalkWater_Part = I;
		local e = (game:GetService("Workspace")).Map["WaterBase-Plane"];
		if _G.WalkWater_Part then
			e.Size = Vector3.new(1000, 112, 1000);
		else
			e.Size = Vector3.new(1000, 80, 1000);
		end;
	end,
});
v4:AddTextBox({
    Title = "Bring Mobs Range",
    PlaceHolder = "235",
    Default = tostring(_G.BringRange),
    Callback = function(Value)
        local num = tonumber(Value)
        if num and num > 0 then
            _G.BringRange = num
        end
    end
})

v4:AddTextBox({
    Title = "Select Farm Height",
    PlaceHolder = "20",
    Default = tostring(_G.MobHeight),
    Callback = function(Value)
        local num = tonumber(Value)
        if num and num > 0 then
            _G.MobHeight = num
        end
    end
})

v4:AddTextBox({
    Title = "Tween Speed",
    PlaceHolder = "300",
    Default = "300",
    Callback = function(I)
        if tonumber(I) then
            getgenv().TweenSpeedFar = tonumber(I)
        end
    end,
});

_G.AutoHopAdmin = _G.AutoHopAdmin or false
local AdminNames = {
    "red_game43", "rip_indra", "Axiore", "Polkster", "wenlocktoad", 
    "Daigrock", "toilamvidamme", "oofficialnoobie", "Uzoth", "Azarth", 
    "arlthmetic", "Death_King", "Lunoven", "TheGreateAced", "rip_fud", 
    "drip_mama", "layandikit12", "Hingoi"
}

local function HopServer()
    local success = pcall(function()
        local response = game:HttpGet(string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Asc&limit=100", game.PlaceId))
        local data = game:GetService("HttpService"):JSONDecode(response)
        if data and data.data then
            for _, server in ipairs(data.data) do
                if server.playing < server.maxPlayers and server.id ~= game.JobId then
                    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, server.id, game:GetService("Players").LocalPlayer)
                    return true
                end
            end
        end
    end)
    if not success then
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
    end
end

v4:AddToggle({
    Name = "Auto Hop khi Admin Join",
    Default = GetSetting("AutoHopAdmin_Save", true),
    Callback = function(value)
        _G.AutoHopAdmin = value
        _G.SaveData["AutoHopAdmin_Save"] = value
        SaveSettings()
    end
})

task.spawn(function()
    while task.wait(2) do
        if _G.AutoHopAdmin then
            pcall(function()
                local players = game:GetService("Players")
                local localPlayer = players.LocalPlayer
                for _, player in ipairs(players:GetPlayers()) do
                    if player ~= localPlayer and table.find(AdminNames, player.Name) then
                        HopServer()
                        break
                    end
                end
            end)
        end
    end
end)

_G.NoClip = _G.NoClip or false
v4:AddToggle({
    Name = "No Clip",
    Default = GetSetting("NoClip_Save", false),
    Callback = function(value)
        _G.NoClip = value
        _G.SaveData["NoClip_Save"] = value
        SaveSettings()
    end
})
spawn(function()
    local player = game:GetService("Players").LocalPlayer
    local runService = game:GetService("RunService")
    runService.Stepped:Connect(function()
        pcall(function()
            if player.Character and _G.NoClip then
                for _, part in pairs(player.Character:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = false
                    end
                end
            elseif player.Character and not _G.NoClip then
                for _, part in pairs(player.Character:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = true
                    end
                end
            end
        end)
    end)
end)

_G.AutoHopServer = _G.AutoHopServer or false
_G.HopDelay = _G.HopDelay or (30 * 60)

v4:AddSection({"Auto Hop"})

v4:AddToggle({
    Name = "Auto Hop Server",
    Default = GetSetting("AutoHopServer_G_Save", false),
    Callback = function(value)
        _G.AutoHopServer = value
        _G.SaveData["AutoHopServer_G_Save"] = value
        SaveSettings()
        if not value then
            _G.HopTimer = nil
        end
    end
})

v4:AddSlider({
    Name = "Hop Delay (Minutes)",
    Min = 5,
    Max = 120,
    Default = GetSetting("HopDelay_G_Save", 30),
    Increment = 1,
    Callback = function(value)
        _G.HopDelay = value * 60
        _G.SaveData["HopDelay_G_Save"] = value
        SaveSettings()
    end
})

task.spawn(function()
    while task.wait(1) do
        if _G.AutoHopServer then
            pcall(function()
                if not _G.HopTimer then
                    _G.HopTimer = tick()
                end

                if tick() - _G.HopTimer >= _G.HopDelay then
                    _G.HopTimer = tick()
                    Hop()
                end
            end)
        else
            _G.HopTimer = nil
        end
    end
end)

-- =========================================================
-- AUTO FISHING SYSTEM (Ported from Zyn Hub)
-- =========================================================
v5:AddSection({"Fishing"})

-- Khai báo Services
local RS = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")

-- Định nghĩa các Remote cần thiết
local FishReplicated = RS:WaitForChild("FishReplicated")
local FishingRequest = FishReplicated:WaitForChild("FishingRequest")
local FishingClientConfig = require(FishReplicated:WaitForChild("FishingClient"):WaitForChild("Config"))
local GetWaterHeight = require(RS:WaitForChild("Util"):WaitForChild("GetWaterHeightAtLocation"))

local Net = RS:WaitForChild("Modules"):WaitForChild("Net")
local CraftRemote = Net:WaitForChild("RF/Craft")
local JobsRemote = Net:WaitForChild("RF/JobsRemoteFunction")
local ToolAbilities = Net:WaitForChild("RF/JobToolAbilities")

-- =========================================================
-- CONFIGURAÇÕES INICIAIS
-- =========================================================
_G.SelectedRod = "Fishing Rod"
_G.SelectedBait = "Basic Bait"
_G.AutoBuyBait = false
_G.AutoFishing = false
_G.AutoFishingQuest = false
_G.AutoQuestComplete = false
_G.AutoSellFish = false
_G.AutoSkillZ = false

-- =========================================================
-- UI ELEMENTOS
-- =========================================================

-- 1. SELEÇÃO DE VARA
v5:AddDropdown({
    Name = "Select Fishing Rod",
    Options = {
        "Fishing Rod",
        "Gold Rod",
        "Shark Rod",
        "Shell Rod",
        "Treasure Rod"
    },
    Default = GetSetting("Fish_SelectedRod", "Fishing Rod"),
    Callback = function(Value)
        _G.SelectedRod = Value
        _G.SaveData["Fish_SelectedRod"] = Value
        SaveSettings()
    end
})

-- 2. SELEÇÃO DE ISCA
v5:AddDropdown({
    Name = "Select Bait",
    Options = {
        "Basic Bait",
        "Kelp Bait",
        "Good Bait",
        "Abyssal Bait",
        "Frozen Bait",
        "Epic Bait",
        "Carnivore Bait"
    },
    Default = GetSetting("Fish_SelectedBait", "Basic Bait"),
    Callback = function(Value)
        _G.SelectedBait = Value
        _G.SaveData["Fish_SelectedBait"] = Value
        SaveSettings()

        if _G.AutoBuyBait then
            pcall(function()
                CraftRemote:InvokeServer("Craft", _G.SelectedBait, {})
            end)
        end
    end
})

-- 3. TOGGLE AUTO BUY BAIT
v5:AddToggle({
    Name = "Auto Buy Bait",
    Default = GetSetting("Fish_AutoBuyBait", false),
    Callback = function(Value)
        _G.AutoBuyBait = Value
        _G.SaveData["Fish_AutoBuyBait"] = Value
        SaveSettings()

        if Value then
            pcall(function()
                CraftRemote:InvokeServer("Craft", _G.SelectedBait, {})
            end)
        end
    end
})

-- Loop Auto Buy Bait
task.spawn(function()
    while task.wait(2) do
        if _G.AutoBuyBait and _G.SelectedBait then
            pcall(function()
                CraftRemote:InvokeServer("Craft", _G.SelectedBait, {})
            end)
        end
    end
end)

-- 4. TOGGLE AUTO FISHING (CAST/CATCH)
v5:AddToggle({
    Name = "Auto Fishing",
    Default = GetSetting("Fish_AutoFishing", false),
    Callback = function(Value)
        _G.AutoFishing = Value
        _G.SaveData["Fish_AutoFishing"] = Value
        SaveSettings()
    end
})

-- Loop Auto Fishing
task.spawn(function()
    while task.wait(0.5) do
        if _G.AutoFishing then
            pcall(function()
                local plr = Players.LocalPlayer
                local char = plr.Character or plr.CharacterAdded:Wait()
                local hrp = char:FindFirstChild("HumanoidRootPart")
                
                if not hrp then return end

                local equippedTool = char:FindFirstChildOfClass("Tool")
                
                -- Verifica se a vara selecionada está equipada
                if _G.SelectedRod and (not equippedTool or equippedTool.Name ~= _G.SelectedRod) then
                    local rodInBag = plr.Backpack:FindFirstChild(_G.SelectedRod)
                    
                    if rodInBag then
                        -- Se tiver na mochila, equipa sozinho
                        char.Humanoid:EquipTool(rodInBag)
                        equippedTool = rodInBag
                    else
                        -- Sử dụng thông báo của bearlib
                        bearlib:Notify({
                            Title = "Auto Fish",
                            Message = "please equip: " .. tostring(_G.SelectedRod),
                            Duration = 3
                        })
                        return -- Para a execução aqui para não dar erro tentando pescar sem vara
                    end
                end

                if equippedTool then
                    local maxLaunch = FishingClientConfig.Rod.MaxLaunchDistance
                    local waterHeight = GetWaterHeight(hrp.Position)
                    
                    local rayOrigin = char.Head.Position
                    local rayDirection = hrp.CFrame.LookVector * maxLaunch
                    
                    local ignoreList = {char, Workspace.Characters, Workspace.Enemies}
                    local _, hitPos = Workspace:FindPartOnRayWithIgnoreList(Ray.new(rayOrigin, rayDirection), ignoreList)
                    
                    local targetPos = hitPos and Vector3.new(hitPos.X, math.max(hitPos.Y, waterHeight), hitPos.Z)
                    
                    local state = equippedTool:GetAttribute("State")
                    local serverState = equippedTool:GetAttribute("ServerState")

                    if targetPos and (state == "ReeledIn" or serverState == "ReeledIn") then
                        FishingRequest:InvokeServer("StartCasting")
                        task.wait()
                        FishingRequest:InvokeServer("CastLineAtLocation", targetPos, 100, true)
                    
                    elseif serverState == "Biting" then
                        FishingRequest:InvokeServer("Catching", true)
                        task.wait(0.1)
                        FishingRequest:InvokeServer("Catch", 1)
                        
                        -- Sử dụng thông báo của bearlib khi câu được cá
                        bearlib:Notify({
                            Title = "Auto Fish",
                            Message = "New item caught",
                            Duration = 3
                        })
                    end
                end
            end)
        end
    end
end)



-- ========================================
-- AUTO QUEST SEA 2 (DRESSROSA) - TỪ GRAVITY HUB
-- ========================================
if World1 then
    v3:AddSection({"Travel To Sea 2"})

    local TravelDresToggle = v3:AddToggle({
        Name = "Auto Quest Sea 2",
        Default = GetSetting("TravelDres_Save", false),
        Callback = function(Value)
            _G.TravelDres = Value
            _G.SaveData["TravelDres_Save"] = Value
            SaveSettings()
        end
    })

    -- Logic Auto Quest Sea 2
    spawn(function()
        while wait(Sec) do
            pcall(function()
                if _G.TravelDres then
                    -- Chỉ chạy khi đủ level
                    if plr.Data.Level.Value >= 700 then
                        local IceDoor = workspace.Map and workspace.Map:FindFirstChild("Ice") and workspace.Map.Ice:FindFirstChild("Door")
                        if IceDoor then
                            -- Trường hợp cửa còn (chưa mở)
                            if IceDoor.CanCollide == true and IceDoor.Transparency == 0 then
                                -- Nói chuyện với thám tử để nhận key
                                replicated.Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Detective")
                                EquipWeapon("Key")
                                repeat
                                    wait()
                                    _tp(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                                until not _G.TravelDres or (Root.Position - CFrame.new(1347.7124, 37.3751602, -1325.6488).Position).Magnitude <= 5
                            
                            -- Trường hợp cửa đã mở (cần đánh boss)
                            elseif IceDoor.CanCollide == false and IceDoor.Transparency == 1 then
                                if Enemies:FindFirstChild("Ice Admiral") then
                                    for _, e in pairs(Enemies:GetChildren()) do
                                        if e.Name == "Ice Admiral" and G.Alive(e) then
                                            repeat
                                                task.wait()
                                                G.Kill(e, _G.TravelDres)
                                            until _G.TravelDres == false or e.Humanoid.Health <= 0
                                            -- Sau khi đánh xong, yêu cầu dịch chuyển
                                            replicated.Remotes.CommF_:InvokeServer("TravelDressrosa")
                                        end
                                    end
                                else
                                    _tp(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                                end
                            else
                                -- Trường hợp chưa có điều kiện gì, thử gọi travel
                                replicated.Remotes.CommF_:InvokeServer("TravelDressrosa")
                            end
                        end
                    end
                end
            end)
        end
    end)
end

-- ========================================
-- AUTO QUEST SEA 3 (ZOU) - TỪ GRAVITY HUB
-- ========================================
if World2 then
    v3:AddSection({"Travel To Sea 3"})

    local AutoZouToggle = v3:AddToggle({
        Name = "Auto Quest Sea 3",
        Default = GetSetting("AutoZou_Save", false),
        Callback = function(Value)
            _G.AutoZou = Value
            _G.SaveData["AutoZou_Save"] = Value
            SaveSettings()
        end
    })

    -- Logic Auto Quest Sea 3 (Đã được rút gọn và tối ưu)
    spawn(function()
        while wait(Sec) do
            pcall(function()
                if _G.AutoZou then
                    -- Chỉ chạy khi đủ level
                    if plr.Data.Level.Value >= 1500 then
                        local bartiloProgress = replicated.Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo")

                        -- === GIAI ĐOẠN 1: LÀM QUEST "SWAN PIRATES" (BartiloProgress == 0) ===
                        if bartiloProgress == 0 then
                            local QuestUI = plr.PlayerGui.Main.Quest
                            -- Nếu chưa có quest, đến chỗ Bartilo để nhận
                            if not QuestUI.Visible then
                                _tp(CFrame.new(-456.28952, 73.0200958, 299.895966))
                                if (Root.Position - CFrame.new(-456.28952, 73.0200958, 299.895966).Position).Magnitude <= 5 then
                                    wait(1)
                                    replicated.Remotes.CommF_:InvokeServer("StartQuest", "BartiloQuest", 1)
                                end
                            else
                                -- Nếu đã có quest, tìm và đánh "Swan Pirate"
                                if string.find(QuestUI.Container.QuestTitle.Title.Text, "Swan Pirates") then
                                    local mob = GetConnectionEnemies("Swan Pirate")
                                    if mob then
                                        repeat
                                            wait()
                                            G.Kill(mob, _G.AutoZou)
                                        until not _G.AutoZou or not mob.Parent or mob.Humanoid.Health <= 0 or not QuestUI.Visible
                                    else
                                        _tp(CFrame.new(1057.92761, 137.614319, 1242.08069))
                                    end
                                end
                            end

                        -- === GIAI ĐOẠN 2: ĐÁNH BOSS "JEREMY" (BartiloProgress == 1) ===
                        elseif bartiloProgress == 1 then
                            local mob = GetConnectionEnemies("Jeremy")
                            if mob then
                                repeat
                                    wait()
                                    G.Kill(mob, _G.AutoZou)
                                until not _G.AutoZou or not mob.Parent or mob.Humanoid.Health <= 0
                            else
                                _tp(CFrame.new(2099.88159, 448.931, 648.997375))
                            end

                        -- === GIAI ĐOẠN 3: HOÀN THÀNH BARTILO (BartiloProgress == 2) ===
                        elseif bartiloProgress == 2 then
                            _tp(CFrame.new(-1836, 11, 1714))
                            if (Root.Position - CFrame.new(-1836, 11, 1714).Position).Magnitude <= 10 then
                                wait(0.5)
                                -- Chạy qua các plates
                                notween(CFrame.new(-1850.49329, 13.1789551, 1750.89685))
                                wait(0.1)
                                notween(CFrame.new(-1858.87305, 19.3777466, 1712.01807))
                                wait(0.1)
                                notween(CFrame.new(-1803.94324, 16.5789185, 1750.89685))
                                wait(0.1)
                                notween(CFrame.new(-1858.55835, 16.8604317, 1724.79541))
                                wait(0.1)
                                notween(CFrame.new(-1869.54224, 15.987854, 1681.00659))
                                wait(0.1)
                                notween(CFrame.new(-1800.0979, 16.4978027, 1684.52368))
                                wait(0.1)
                                notween(CFrame.new(-1819.26343, 14.795166, 1717.90625))
                                wait(0.1)
                                notween(CFrame.new(-1813.51843, 14.8604736, 1724.79541))
                            end

                        -- === GIAI ĐOẠN 4: LẤY "FLAMINGO ACCESS" BẰNG CÁCH NÓI CHUYỆN VỚI TREVOR ===
                        else
                            -- Kiểm tra xem đã mở khóa FlamingoAccess chưa
                            local unlockables = replicated.Remotes.CommF_:InvokeServer("GetUnlockables")
                            if unlockables and unlockables.FlamingoAccess == nil then
                                -- Nói chuyện với Trevor để mở khóa (cần có fruit 1M+ trong kho)
                                replicated.Remotes.CommF_:InvokeServer("F_", "TalkTrevor", "1")
                                wait(.1)
                                replicated.Remotes.CommF_:InvokeServer("F_", "TalkTrevor", "2")
                                wait(.1)
                                replicated.Remotes.CommF_:InvokeServer("F_", "TalkTrevor", "3")
                            else
                                -- Nếu đã mở khóa, dịch chuyển đến Zou
                                replicated.Remotes.CommF_:InvokeServer("F_", "TravelZou")
                            end
                        end
                    end
                end
            end)
        end
    end)
end

-- 5. AUTO QUEST FISHING
v5:AddToggle({
    Name = "Auto Quest Fishing",
    Default = GetSetting("Fish_AutoQuest", false),
    Callback = function(Value)
        _G.AutoFishingQuest = Value
        _G.SaveData["Fish_AutoQuest"] = Value
        SaveSettings()
    end
})

local function HasQuest()
    local playerGui = Players.LocalPlayer:FindFirstChild("PlayerGui")
    if playerGui then
        local questGui = playerGui:FindFirstChild("Quest") or playerGui:FindFirstChild("QuestGui")
        if questGui and questGui:FindFirstChild("Container") and questGui.Container:FindFirstChild("QuestTitle") then
            return true
        end
    end
    return false
end

task.spawn(function()
    while task.wait(1) do
        if _G.AutoFishingQuest then
            pcall(function()
                if not HasQuest() then
                    JobsRemote:InvokeServer("FishingNPC", "Angler", "AskQuest")
                end
            end)
        end
    end
end)

-- 6. AUTO COMPLETE QUEST
v5:AddToggle({
    Name = "Auto Complete Quest",
    Default = GetSetting("Fish_AutoComplete", false),
    Callback = function(Value)
        _G.AutoQuestComplete = Value
        _G.SaveData["Fish_AutoComplete"] = Value
        SaveSettings()

        if Value then
            pcall(function()
                JobsRemote:InvokeServer("FishingNPC", "FinishQuest")
            end)
        end
    end
})

task.spawn(function()
    while task.wait(5) do
        if _G.AutoQuestComplete then
            pcall(function()
                JobsRemote:InvokeServer("FishingNPC", "FinishQuest")
            end)
        end
    end
end)

-- 7. AUTO SELL FISH
v5:AddToggle({
    Name = "Auto Sell Fish",
    Default = GetSetting("Fish_AutoSell", false),
    Callback = function(Value)
        _G.AutoSellFish = Value
        _G.SaveData["Fish_AutoSell"] = Value
        SaveSettings()

        if Value then
            pcall(function()
                JobsRemote:InvokeServer("FishingNPC", "SellFish")
            end)
        end
    end
})

task.spawn(function()
    while task.wait(5) do
        if _G.AutoSellFish then
            pcall(function()
                JobsRemote:InvokeServer("FishingNPC", "SellFish")
            end)
        end
    end
end)

-- 8. AUTO SPAM SKILL Z
v5:AddToggle({
    Name = "Auto use skill of the rod",
    Default = GetSetting("Fish_AutoSkillZ", false),
    Callback = function(Value)
        _G.AutoSkillZ = Value
        _G.SaveData["Fish_AutoSkillZ"] = Value
        SaveSettings()
    end
})

task.spawn(function()
    while task.wait(0.5) do
        if _G.AutoSkillZ then
            pcall(function()
                ToolAbilities:InvokeServer("Z", true)
            end)
        end
    end
end)

v3:AddSection({"Quests"})

-- AUTO FARM OBSERVATION (Haki)
v3:AddToggle({
    Name = "Auto Farm Observation",
    Default = GetSetting("AutoObsFarm_Save", false),
    Callback = function(I)
        _G.obsFarm = I
        _G.SaveData["AutoObsFarm_Save"] = I
        SaveSettings()
    end,
})

-- Logic cho Auto Farm Observation
spawn(function()
    while wait(.2) do
        pcall(function()
            if _G.obsFarm then
                -- Bật Ken liên tục
                replicated.Remotes.CommE:FireServer("Ken", true);

                -- Logic di chuyển dựa vào số lần né còn lại
                local dodgesLeft = plr:GetAttribute("KenDodgesLeft")
                if dodgesLeft == 0 then
                    KenTest = false;
                elseif dodgesLeft and dodgesLeft > 0 then
                    replicated.Remotes.CommE:FireServer("Ken", true);
                    KenTest = true;
                end;
            end;
        end);
    end;
end);

-- Logic di chuyển để farm Ken
spawn(function()
    while wait(.2) do
        pcall(function()
            if _G.obsFarm then
                local targetEnemy = nil
                local farmPos = nil

                if World1 then
                    targetEnemy = workspace.Enemies:FindFirstChild("Galley Captain")
                    farmPos = CFrame.new(5533.29785, 88.1079102, 4852.3916)
                elseif World2 then
                    targetEnemy = workspace.Enemies:FindFirstChild("Lava Pirate")
                    farmPos = CFrame.new(-5478.39209, 15.9775667, -5246.9126)
                elseif World3 then
                    targetEnemy = workspace.Enemies:FindFirstChild("Venomous Assailant")
                    farmPos = CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789)
                end

                if targetEnemy then
                    if KenTest then
                        -- Đến gần để kích hoạt né
                        repeat
                            wait()
                            _tp(targetEnemy.HumanoidRootPart.CFrame * CFrame.new(3, 0, 0))
                        until _G.obsFarm == false or KenTest == false
                    else
                        -- Lên cao để hồi né
                        repeat
                            wait()
                            _tp(targetEnemy.HumanoidRootPart.CFrame * CFrame.new(0, 50, 0))
                        until _G.obsFarm == false or KenTest
                    end
                elseif farmPos then
                    _tp(farmPos)
                end
            end
        end)
    end
end)


-- AUTO OBSERVATION V2 (World 3)
if World3 then
    v3:AddToggle({
        Name = "Auto Observation V2",
        Default = GetSetting("AutoKenV2_Save", false),
        Callback = function(I)
            _G.AutoKenVTWO = I
            _G.SaveData["AutoKenV2_Save"] = I
            SaveSettings()
        end,
    })

    spawn(function()
        while wait(Sec) do
            if _G.AutoKenVTWO then
                pcall(function()
                    local I = CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625);
                    local e = "Kuy";
                    local K = CFrame.new(-10920.125, 624.20275878906, -10266.995117188);
                    local n = CFrame.new(-13277.568359375, 370.34185791016, -7821.1572265625);
                    local d = CFrame.new(-13493.12890625, 318.89553833008, -8373.7919921875);
                    if plr.PlayerGui.Main.Quest.Visible == true and string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Defeat 50 Forest Pirates") then
                        local I = GetConnectionEnemies("Forest Pirate");
                        if I then
                            repeat
                                wait();
                                G.Kill(I, _G.AutoKenVTWO);
                            until not _G.AutoKenVTWO or I.Humanoid.Health <= 0 or plr.PlayerGui.Main.Quest.Visible == false;
                        else
                            _tp(n);
                        end;
                    elseif plr.PlayerGui.Main.Quest.Visible == true then
                        local I = GetConnectionEnemies("Captain Elephant");
                        if I then
                            repeat
                                wait();
                                G.Kill(I, _G.AutoKenVTWO);
                            until not _G.AutoKenVTWO or I.Humanoid.Health <= 0 or plr.PlayerGui.Main.Quest.Visible == false;
                        else
                            _tp(d);
                        end;
                    elseif plr.PlayerGui.Main.Quest.Visible == false then
                        replicated.Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen");
                        wait(.1);
                        replicated.Remotes.CommF_:InvokeServer("StartQuest", "CitizenQuest", 1);
                    end;
                    if replicated.Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen") == 2 then
                        _tp(CFrame.new(-12513.51953125, 340.11373901367, -9873.048828125));
                    end;
                    if not plr.Backpack:FindFirstChild("Fruit Bowl") or not plr.Character:FindFirstChild("Fruit Bowl") then
                        if not GetBP("Fruit Bowl") then
                            if not GetBP("Apple") then
                                replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375));
                                for I, e in pairs(workspace:GetDescendants()) do
                                    if e.Name == "Apple" then
                                        e.Handle.CFrame = plr.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10);
                                        wait();
                                        firetouchinterest(plr.Character.HumanoidRootPart, e.Handle, 0);
                                        wait();
                                    end;
                                end;
                            elseif not GetBP("Banana") then
                                _tp(CFrame.new(2286.0078125, 73.133918762207, -7159.8090820312));
                                for I, e in pairs(workspace:GetDescendants()) do
                                    if e.Name == "Banana" then
                                        e.Handle.CFrame = plr.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10);
                                        wait();
                                        firetouchinterest(plr.Character.HumanoidRootPart, e.Handle, 0);
                                        wait();
                                    end;
                                end;
                            elseif not GetBP("Pineapple") then
                                _tp(CFrame.new(-712.82727050781, 98.577049255371, 5711.9541015625));
                                for I, e in pairs(workspace:GetDescendants()) do
                                    if e.Name == "Pineapple" then
                                        e.Handle.CFrame = plr.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10);
                                        wait();
                                        firetouchinterest(plr.Character.HumanoidRootPart, e.Handle, 0);
                                        wait();
                                    end;
                                end;
                            end;
                        end;
                        if plr.Backpack:FindFirstChild("Banana") and (plr.Backpack:FindFirstChild("Apple") and plr.Backpack:FindFirstChild("Pineapple")) or plr:FindFirstChild("Banana") and (plr:FindFirstChild("Apple") and plr:FindFirstChild("Pineapple")) then
                            repeat
                                wait();
                                _tp(I);
                            until _G.AutoKenVTWO or plr.Character.HumanoidRootPart.CFrame == I;
                            replicated.Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen");
                        end;
                        if plr.Backpack:FindFirstChild("Fruit Bowl") or plr.Character:FindFirstChild("Fruit Bowl") then
                            if plr.Character.HumanoidRootPart.CFrame ~= K then
                                _tp(K);
                            elseif plr.Character.HumanoidRootPart.CFrame == K then
                                replicated.Remotes.CommF_:InvokeServer("KenTalk2", "Start");
                                wait(.1);
                                replicated.Remotes.CommF_:InvokeServer("KenTalk2", "Buy");
                            end;
                        end;
                    end;
                end);
            end;
        end;
    end);

    -- AUTO CITIZEN QUEST
    v3:AddToggle({
        Name = "Auto Citizen Quest",
        Default = false,
        Callback = function(I)
            _G.CitizenQuest = I;
        end,
    });

    spawn(function()
        while wait(Sec) do
            pcall(function()
                if _G.CitizenQuest then
                    if Lv >= 1800 and (replicated.Remotes.CommF_:InvokeServer("CitizenQuestProgress")).KilledBandits == false then
                        if string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and (string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and plr.PlayerGui.Main.Quest.Visible == true) then
                            local I = GetConnectionEnemies("Forest Pirate");
                            if I then
                                repeat
                                    task.wait();
                                    G.Kill(I, _G.CitizenQuest);
                                until _G.CitizenQuest == false or not I.Parent or I.Humanoid.Health <= 0 or plr.PlayerGui.Main.Quest.Visible == false;
                            else
                                _tp(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375));
                            end;
                        else
                            _tp(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125));
                            if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - plr.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                                wait(1.5);
                                replicated.Remotes.CommF_:InvokeServer("StartQuest", "CitizenQuest", 1);
                            end;
                        end;
                    elseif Lv >= 1800 and (replicated.Remotes.CommF_:InvokeServer("CitizenQuestProgress")).KilledBoss == false then
                        local I = GetConnectionEnemies("Captain Elephant");
                        if plr.PlayerGui.Main.Quest.Visible and (string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and plr.PlayerGui.Main.Quest.Visible == true) then
                            if I then
                                repeat
                                    task.wait();
                                    G.Kill(I, _G.CitizenQuest);
                                until _G.CitizenQuest == false or I.Humanoid.Health <= 0 or not I.Parent or plr.PlayerGui.Main.Quest.Visible == false;
                            else
                                _tp(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375));
                            end;
                        else
                            _tp(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125));
                            if ((CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125)).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                                wait(1.5);
                                replicated.Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen");
                            end;
                        end;
                    elseif Lv >= 1800 and replicated.Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen") == 2 then
                        _tp(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125));
                    end;
                end;
            end);
        end;
    end);

    -- ========================================
    -- CURSED SWORDS (ELITE HUNTER, YAMA, TUSHITA)
    -- ========================================
    v3:AddSection({"Cursed Swords"});

    -- Elite Progress Display
    local EliteProgressPara = v3:AddParagraph({ Title = "Elites Process ", Desc = "" });
    spawn(function()
        while wait(Sec) do
            pcall(function()
                EliteProgressPara:SetDesc("Elite Procress :  " .. replicated.Remotes.CommF_:InvokeServer("EliteHunter", "Progress"));
            end);
        end;
    end);

    v3:AddToggle({
        Name = "Auto Elite Quest",
        Default = GetSetting("AutoEliteQuest_Save", false),
        Callback = function(I)
            _G.FarmEliteHunt = I
            _G.SaveData["AutoEliteQuest_Save"] = I
            SaveSettings()
        end,
    })

    spawn(function()
        while wait(Sec) do
            pcall(function()
                if _G.FarmEliteHunt then
                    if plr.PlayerGui.Main.Quest.Visible == true then
                        if string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") then
                            for I, e in pairs(replicated:GetChildren()) do
                                if string.find(e.Name, "Diablo") or string.find(e.Name, "Urban") or string.find(e.Name, "Deandre") then
                                    _tp(e.HumanoidRootPart.CFrame);
                                end;
                            end;
                            for I, e in pairs(Enemies:GetChildren()) do
                                if (string.find(e.Name, "Diablo") or string.find(e.Name, "Urban") or string.find(e.Name, "Deandre")) and G.Alive(e) then
                                    repeat
                                        wait();
                                        G.Kill(e, _G.FarmEliteHunt);
                                    until not _G.FarmEliteHunt or plr.PlayerGui.Main.Quest.Visible == false or not e.Parent or e.Humanoid.Health <= 0;
                                end;
                            end;
                        end;
                    else
                        replicated.Remotes.CommF_:InvokeServer("EliteHunter");
                    end;
                end;
            end);
        end;
    end);

    v3:AddToggle({
        Name = "Stop when got God's Chalice",
        Default = GetSetting("StopChalice_Save", true),
        Callback = function(I)
            _G.StopWhenChalice = I
            _G.SaveData["StopChalice_Save"] = I
            SaveSettings()
        end,
    })

    spawn(function()
        while wait(.2) do
            if _G.StopWhenChalice and _G.FarmEliteHunt then
                pcall(function()
                    if GetBP("God\'s Chalice") or GetBP("Sweet Chalice") or GetBP("Fist of Darkness") then
                        _G.FarmEliteHunt = false;
                    end;
                end);
            end;
        end;
    end);

    v3:AddToggle({
        Name = "Auto Tushita Sword",
        Default = false,
        Callback = function(I)
            _G.Auto_Tushita = I;
        end,
    });

    spawn(function()
        while wait(Sec) do
            pcall(function()
                if _G.Auto_Tushita then
                    if workspace.Map.Turtle:FindFirstChild("TushitaGate") then
                        if not GetBP("Holy Torch") then
                            _tp(CFrame.new(5148.03613, 162.352493, 910.548218));
                            wait(.7);
                        else
                            EquipWeapon("Holy Torch");
                            task.wait(1);
                            repeat
                                task.wait();
                                _tp(CFrame.new(-10752, 417, -9366));
                            until not _G.Auto_Tushita or ((CFrame.new(-10752, 417, -9366)).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10;
                            wait(.7);
                            repeat
                                task.wait();
                                _tp(CFrame.new(-11672, 334, -9474));
                            until not _G.Auto_Tushita or ((CFrame.new(-11672, 334, -9474)).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10;
                            wait(.7);
                            repeat
                                task.wait();
                                _tp(CFrame.new(-12132, 521, -10655));
                            until not _G.Auto_Tushita or ((CFrame.new(-12132, 521, -10655)).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10;
                            wait(.7);
                            repeat
                                task.wait();
                                _tp(CFrame.new(-13336, 486, -6985));
                            until not _G.Auto_Tushita or ((CFrame.new(-13336, 486, -6985)).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10;
                            wait(.7);
                            repeat
                                task.wait();
                                _tp(CFrame.new(-13489, 332, -7925));
                            until not _G.Auto_Tushita or ((CFrame.new(-13489, 332, -7925)).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10;
                        end;
                    else
                        local I = GetConnectionEnemies("Longma");
                        if I then
                            repeat
                                task.wait();
                                G.Kill(I, _G.Auto_Tushita);
                            until I.Humanoid.Health <= 0 or not _G.Auto_Tushita or not I.Parent;
                        else
                            if replicated:FindFirstChild("Longma") then
                                _tp((replicated:FindFirstChild("Longma")).HumanoidRootPart.CFrame * CFrame.new(0, 40, 0));
                            end;
                        end;
                    end;
                end;
            end);
        end;
    end);

    v3:AddToggle({
        Name = "Auto Yama Sword",
        Default = GetSetting("AutoYama_Save", false),
        Callback = function(I)
            _G.Auto_Yama = I
            _G.SaveData["AutoYama_Save"] = I
            SaveSettings()
        end,
    })

    spawn(function()
        while wait(Sec) do
            pcall(function()
                if _G.Auto_Yama then
                    if replicated.Remotes.CommF_:InvokeServer("EliteHunter", "Progress") < 30 then
                        _G.FarmEliteHunt = true;
                    elseif replicated.Remotes.CommF_:InvokeServer("EliteHunter", "Progress") > 30 then
                        _G.FarmEliteHunt = false;
                        if (workspace.Map.Waterfall.SealedKatana.Handle.Position - plr.Character.HumanoidRootPart.Position).Magnitude >= 20 then
                            _tp(workspace.Map.Waterfall.SealedKatana.Handle.CFrame);
                            local I = GetConnectionEnemies("Ghost");
                            if I then
                                repeat
                                    wait();
                                    G.Kill(I, _G.Auto_Yama);
                                until I.Humanoid.Health <= 0 or not I.Parent or not _G.Auto_Yama;
                                fireclickdetector(workspace.Map.Waterfall.SealedKatana.Handle.ClickDetector);
                            end;
                        end;
                    end;
                end;
            end);
        end;
    end);
end -- Kết thúc World3

-- ========================================
-- AURA COLOURS (World 2 & 3)
-- ========================================
if World2 or World3 then
    v3:AddSection({"Buso/Aura Colours"});

    v3:AddToggle({
        Name = "Teleport Barista Haki",
        Default = GetSetting("TpBarista_Save", false),
        Callback = function(I)
            _G.Tp_MasterA = I
            _G.SaveData["TpBarista_Save"] = I
            SaveSettings()
        end,
    })

    spawn(function()
        while wait() do
            if _G.Tp_MasterA then
                pcall(function()
                    for _, e in pairs(replicated.NPCs:GetChildren()) do
                        if e.Name == "Barista Cousin" then
                            _tp(e.HumanoidRootPart.CFrame);
                        end;
                    end;
                end);
            end;
        end;
    end);

    v3:AddButton({
        Name = "Buy Buso Colors",
        Callback = function()
            replicated.Remotes.CommF_:InvokeServer("ColorsDealer", "2");
        end
    });
end

-- ========================================
-- RAINBOW HAKI (World 3)
-- ========================================
if World3 then
    v3:AddToggle({
        Name = "Auto Rainbow Haki",
        Default = GetSetting("AutoRainbowHaki_Save", false),
        Callback = function(I)
            _G.Auto_Rainbow_Haki = I
            _G.SaveData["AutoRainbowHaki_Save"] = I
            SaveSettings()
        end,
    })

    spawn(function()
        pcall(function()
            while wait(Sec) do
                if _G.Auto_Rainbow_Haki then
                    -- Copy logic Rainbow Haki từ file Zyn Hub.txt (dòng 2058-2154) vào đây nếu cần
                    -- Đoạn này khá dài, bạn có thể thêm sau nếu muốn
                end;
            end;
        end);
    end);
end

-- ========================================
-- ACCEPT QUEST BYPASS
-- ========================================
v3:AddToggle({
    Name = "Accept Quest Bypass [Risk]",
    Default = GetSetting("BypassQuest_Save", false),
    Callback = function(I)
        _G.GetQFast = I
        _G.SaveData["BypassQuest_Save"] = I
        SaveSettings()
    end,
})

v3:AddSection({"Item"})
if World2 then

    v3:AddToggle({
        Name = "Auto Dragon Trident",
        Default = GetSetting("AutoTridentW2_Save", false),
        Callback = function(Value)
            _G.AutoTridentW2 = Value
            _G.SaveData["AutoTridentW2_Save"] = Value
            SaveSettings()
        end
    })

    spawn(function()
        while wait(Sec) do
            pcall(function()
                if _G.AutoTridentW2 then
                    local boss = GetConnectionEnemies("Tide Keeper")
                    if boss then
                        repeat
                            task.wait()
                            G.Kill(boss, _G.AutoTridentW2)
                        until _G.AutoTridentW2 == false or not boss.Parent or boss.Humanoid.Health <= 0
                    else
                        _tp(CFrame.new(-3795.6423339844, 105.88877105713, -11421.307617188))
                    end
                end
            end)
        end
    end)
end

-- ========================================
-- AUTO SAW SWORD (WORLD 1) - từ Gravity Hub
-- ========================================
if World1 then
    v3:AddToggle({
        Name = "Auto Saw Sword",
        Default = GetSetting("AutoSaw_Save", false),
        Callback = function(Value)
            _G.AutoSaw = Value
            _G.SaveData["AutoSaw_Save"] = Value
            SaveSettings()
        end
    })

    spawn(function()
        while wait(.2) do
            pcall(function()
                if _G.AutoSaw then
                    local boss = GetConnectionEnemies("The Saw")
                    if boss then
                        repeat
                            task.wait()
                            G.Kill(boss, _G.AutoSaw)
                        until _G.AutoSaw == false or boss.Humanoid.Health <= 0
                    else
                        _tp(CFrame.new(-784.89715576172, 72.427383422852, 1603.5822753906))
                    end
                end
            end)
        end
    end)
end

-- ========================================
-- AUTO SWAN COAT (WORLD 2) - từ Gravity Hub
-- ========================================
if World2 then
    v3:AddToggle({
        Name = "Auto Swan Coat",
        Default = GetSetting("SwanCoat_Save", false),
        Callback = function(Value)
            _G.SwanCoat = Value
            _G.SaveData["SwanCoat_Save"] = Value
            SaveSettings()
        end
    })

    spawn(function()
        while wait(.1) do
            pcall(function()
                if _G.SwanCoat then
                    local boss = GetConnectionEnemies("Swan")
                    if boss then
                        repeat
                            wait()
                            G.Kill(boss, _G.SwanCoat)
                        until _G.SwanCoat == false or not boss.Parent or boss.Humanoid.Health <= 0
                    else
                        _tp(CFrame.new(5325.09619, 7.03906584, 719.570679, -0.309060812, 0, .951042235, 0, 1, 0, -0.951042235, 0, -0.309060812))
                    end
                end
            end)
        end
    end)
end

-- ========================================
-- AUTO MARINE COAT (WORLD 1) - từ Gravity Hub
-- ========================================
if World1 then
    v3:AddToggle({
        Name = "Auto Marine Coat",
        Default = GetSetting("MarinesCoat_Save", false),
        Callback = function(Value)
            _G.MarinesCoat = Value
            _G.SaveData["MarinesCoat_Save"] = Value
            SaveSettings()
        end
    })

    spawn(function()
        while wait(.1) do
            pcall(function()
                if _G.MarinesCoat then
                    local boss = GetConnectionEnemies("Vice Admiral")
                    if boss then
                        repeat
                            wait()
                            G.Kill(boss, _G.MarinesCoat)
                        until _G.MarinesCoat == false or not boss.Parent or boss.Humanoid.Health <= 0
                    else
                        _tp(CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375))
                    end
                end
            end)
        end
    end)
end

-- ========================================
-- AUTO WARDEN SWORD (WORLD 1) - từ Gravity Hub
-- ========================================
if World1 then
    v3:AddToggle({
        Name = "Auto Warden Sword",
        Default = GetSetting("WardenBoss_Save", false),
        Callback = function(Value)
            _G.WardenBoss = Value
            _G.SaveData["WardenBoss_Save"] = Value
            SaveSettings()
        end
    })

    spawn(function()
        while wait(.1) do
            pcall(function()
                if _G.WardenBoss then
                    local boss = GetConnectionEnemies("Chief Warden")
                    if boss then
                        repeat
                            wait()
                            G.Kill(boss, _G.WardenBoss)
                        until _G.WardenBoss == false or not boss.Parent or boss.Humanoid.Health <= 0
                    else
                        _tp(CFrame.new(5206.92578, .997753382, 814.976746, .342041343, -0.00062915677, .939684749, .00191645394, .999998152, -2.80422337e-05, -0.939682961, .00181045406, .342041939))
                    end
                end
            end)
        end
    end)
end

-- ========================================
-- AUTO CYBORG SWORD (WORLD 1) - từ Gravity Hub
-- ========================================
if World1 then
    v3:AddToggle({
        Name = "Auto Cyborg Sword",
        Default = GetSetting("AutoColShad_Save", false),
        Callback = function(Value)
            _G.AutoColShad = Value
            _G.SaveData["AutoColShad_Save"] = Value
            SaveSettings()
        end
    })

    spawn(function()
        while wait(.2) do
            if _G.AutoColShad then
                pcall(function()
                    local boss = GetConnectionEnemies("Cyborg")
                    if boss then
                        repeat
                            task.wait()
                            G.Kill(boss, _G.AutoColShad)
                        until _G.AutoColShad == false or not boss.Parent or boss.Humanoid.Health <= 0
                    else
                        _tp(CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813))
                    end
                end)
            end
        end
    end)
end

-- ========================================
-- AUTO MIDNIGHT BLADE / CURSED CAPTAIN (WORLD 2) - từ Gravity Hub
-- ========================================
if World2 then
    v3:AddToggle({
        Name = "Auto Midnight Blade",
        Default = GetSetting("AutoEcBoss_Save", false),
        Callback = function(Value)
            _G.AutoEcBoss = Value
            _G.SaveData["AutoEcBoss_Save"] = Value
            SaveSettings()
        end
    })

    spawn(function()
        while wait(Sec) do
            pcall(function()
                if _G.AutoEcBoss then
                    if GetM("Ectoplasm") >= 99 then
                        replicated.Remotes.CommF_:InvokeServer("Ectoplasm", "Buy", 3)
                    elseif GetM("Ectoplasm") <= 99 then
                        local boss = GetConnectionEnemies("Cursed Captain")
                        if boss then
                            repeat
                                wait()
                                G.Kill(boss, _G.AutoEcBoss)
                            until not _G.AutoEcBoss or not boss.Parent or boss.Humanoid.Health <= 0
                        else
                            local entrancePos = Vector3.new(923.21252441406, 126.9760055542, 32852.83203125)
                            if (plr.Character.HumanoidRootPart.Position - entrancePos).Magnitude > 500 then
                                replicated.Remotes.CommF_:InvokeServer("requestEntrance", entrancePos)
                            end
                            wait(.5)
                            _tp(CFrame.new(916.928589, 181.092773, 33422))
                        end
                    end
                end
            end)
        end
    end)
end

-- ========================================
-- AUTO RENGOKU (WORLD 2) - từ Gravity Hub
-- ========================================
if World2 then
    v3:AddToggle({
        Name = "Auto Rengoku Sword",
        Default = GetSetting("IceBossRen_Save", false),
        Callback = function(Value)
            _G.IceBossRen = Value
            _G.SaveData["IceBossRen_Save"] = Value
            SaveSettings()
        end
    })

    spawn(function()
        while wait(.1) do
            pcall(function()
                if _G.IceBossRen then
                    local boss = GetConnectionEnemies("Awakened Ice Admiral")
                    if boss then
                        repeat
                            task.wait()
                            G.Kill(boss, _G.IceBossRen)
                        until _G.IceBossRen == false or not boss.Parent or boss.Humanoid.Health <= 0
                    else
                        _tp(CFrame.new(5668.9780273438, 28.519989013672, -6483.3520507813))
                    end
                end
            end)
        end
    end)

    v3:AddToggle({
        Name = "Auto Rengoku Key",
        Default = GetSetting("KeysRen_Save", false),
        Callback = function(Value)
            _G.KeysRen = Value
            _G.SaveData["KeysRen_Save"] = Value
            SaveSettings()
        end
    })

    spawn(function()
        while wait(.1) do
            pcall(function()
                if _G.KeysRen then
                    if GetBP("Hidden Key") then
                        EquipWeapon("Hidden Key")
                        wait(.1)
                        _tp(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
                    else
                        local mobs = {"Snow Lurker", "Arctic Warrior", "Awakened Ice Admiral"}
                        local targetMob = GetConnectionEnemies(mobs)
                        if targetMob then
                            repeat
                                task.wait()
                                G.Kill(targetMob, _G.KeysRen)
                            until GetBP("Hidden Key") or _G.KeysRen == false or not targetMob.Parent or targetMob.Humanoid.Health <= 0
                        else
                            _tp(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
                        end
                    end
                end
            end)
        end
    end)
end

-- ========================================
-- AUTO POLE V2 (WORLD 2 & 3) - từ Gravity Hub
-- ========================================
if World2 or World3 then
    v3:AddToggle({
        Name = "Auto Pole V2 [Beta]",
        Default = GetSetting("AutoPoleV2_Save", false),
        Callback = function(Value)
            _G.AutoPoleV2 = Value
            _G.SaveData["AutoPoleV2_Save"] = Value
            SaveSettings()
        end
    })

    spawn(function()
        while wait(Sec) do
            pcall(function()
                if _G.AutoPoleV2 then
                    if not GetBP("Pole (1st Form)") then
                        replicated.Remotes.CommF_:InvokeServer("LoadItem", "Pole (1st Form)")
                    end
                    if not GetBP("Pole (2nd Form)") then
                        replicated.Remotes.CommF_:InvokeServer("LoadItem", "Pole (2nd Form)")
                    end
                    
                    -- Kiểm tra mastery Pole V1
                    if GetBP("Pole (1st Form)") and (GetBP("Pole (1st Form)")):FindFirstChild("Level") and (GetBP("Pole (1st Form)")).Level.Value < 180 then
                        _G.StartFarm = true
                        _G.Level = true
                    elseif GetBP("Pole (1st Form)") and (GetBP("Pole (1st Form)")).Level.Value >= 180 then
                        _G.Level = false
                        _G.StartFarm = false
                    end
                    
                    -- Logic Awakening Rumble
                    if GetBP("Rumble Fruit") then
                        local rumble = GetBP("Rumble Fruit")
                        if rumble:FindFirstChild("AwakenedMoves") and 
                           rumble.AwakenedMoves:FindFirstChild("Z") and rumble.AwakenedMoves:FindFirstChild("X") and 
                           rumble.AwakenedMoves:FindFirstChild("C") and rumble.AwakenedMoves:FindFirstChild("V") and 
                           rumble.AwakenedMoves:FindFirstChild("F") then
                            if plr.Data.Fragments.Value >= 5000 then
                                replicated.Remotes.CommF_:InvokeServer("Thunder God", "Talk")
                                wait(Sec)
                                replicated.Remotes.CommF_:InvokeServer("Thunder God", "Sure")
                            end
                        elseif replicated.Remotes.CommF_:InvokeServer("Awakener", "Check") == nil or replicated.Remotes.CommF_:InvokeServer("Awakener", "Check") == 0 then
                            _G.SelectChip = "Rumble"
                            _G.Raiding = true
                            _G.Auto_Awakener = true
                        end
                    end
                end
            end)
        end
    end)
end

-- ========================================
-- AUTO BISENTO V2 (WORLD 1) - từ Gravity Hub
-- ========================================
if World1 then
    v3:AddToggle({
        Name = "Auto Bisento V2",
        Default = GetSetting("Greybeard_Save", false),
        Callback = function(Value)
            _G.Greybeard = Value
            _G.SaveData["Greybeard_Save"] = Value
            SaveSettings()
        end
    })

    spawn(function()
        while wait(Sec) do
            if _G.Greybeard then
                pcall(function()
                    if not GetWP("Bisento") then
                        replicated.Remotes.CommF_:InvokeServer("BuyItem", "Bisento")
                    elseif GetWP("Bisento") then
                        local boss = GetConnectionEnemies("Greybeard")
                        if boss then
                            repeat
                                wait()
                                G.Kill(boss, _G.Greybeard)
                            until _G.Greybeard == false or not boss.Parent or boss.Humanoid.Health <= 0
                        else
                            _tp(CFrame.new(-5023.3833007812, 28.652032852173, 4332.3818359375))
                        end
                    end
                end)
            end
        end
    end)
end

-- ========================================
-- SKULL GUITAR (WORLD 3) - từ Gravity Hub (Phiên bản rút gọn)
-- ========================================
if World3 then
    v3:AddToggle({
        Name = "Auto Skull Guitar",
        Default = GetSetting("Auto_Soul_Guitar_Save", false),
        Callback = function(Value)
            _G.Auto_Soul_Guitar = Value
            _G.SaveData["Auto_Soul_Guitar_Save"] = Value
            SaveSettings()
        end
    })

    -- Hiển thị trạng thái quest
    local SoulGuitarStatus = v3:AddParagraph({
        Title = "Skull Guitar Quest",
        Desc = "Inactive"
    })

    task.spawn(function()
        while task.wait(1) do
            if _G.Auto_Soul_Guitar then
                local questStatus = replicated.Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Check")
                if questStatus then
                    local status = "Unknown"
                    if questStatus.Swamp == false then status = "Quest 1: Swamp"
                    elseif questStatus.Gravestones == false then status = "Quest 2: Gravestones"
                    elseif questStatus.Ghost == false then status = "Quest 3: Ghost"
                    elseif questStatus.Trophies == false then status = "Quest 4: Trophies"
                    elseif questStatus.Pipes == false then status = "Quest 5: Pipes"
                    else status = "Final Step/Complete" end
                    SoulGuitarStatus:SetDesc(status)
                end
            else
                SoulGuitarStatus:SetDesc("Disabled")
            end
        end
    end)
end

-- ========================================
-- CURSED DUAL KATANA (WORLD 3) - từ Gravity Hub
-- ========================================
if World3 then
    v3:AddSection({"Cursed Dual Katana (CDK)"})

    local CDKProgress = v3:AddParagraph({
        Title = "CDK Progress",
        Desc = "Check quest progress..."
    })

    task.spawn(function()
        while task.wait(2) do
            pcall(function()
                local progress = replicated.Remotes.CommF_:InvokeServer("CDKQuest", "Progress")
                if progress and type(progress) == "table" then
                    local good = progress.Good or 0
                    local evil = progress.Evil or 0
                    CDKProgress:SetDesc(string.format("Good: %s | Evil: %s", tostring(good), tostring(evil)))
                end
            end)
        end
    end)

    v3:AddToggle({
        Name = "Auto Yama CDK",
        Default = GetSetting("CDK_YM_Save", false),
        Callback = function(Value)
            _G.CDK_YM = Value
            _G.SaveData["CDK_YM_Save"] = Value
            SaveSettings()
        end
    })

    v3:AddToggle({
        Name = "Auto Tushita CDK",
        Default = GetSetting("CDK_TS_Save", false),
        Callback = function(Value)
            _G.CDK_TS = Value
            _G.SaveData["CDK_TS_Save"] = Value
            SaveSettings()
        end
    })

    v3:AddToggle({
        Name = "Auto Kill Cursed Skeleton Boss",
        Default = GetSetting("CDK_Boss_Save", false),
        Callback = function(Value)
            _G.CDK = Value
            _G.SaveData["CDK_Boss_Save"] = Value
            SaveSettings()
        end
    })

    spawn(function()
        while wait(Sec) do
            pcall(function()
                if _G.CDK then
                    local boss = GetConnectionEnemies("Cursed Skeleton Boss")
                    if boss then
                        repeat
                            wait()
                            if GetBP("Yama") or GetBP("Tushita") then
                                EquipWeapon(GetBP("Yama") and "Yama" or "Tushita")
                            end
                            _tp(boss.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                            G.Kill(boss, _G.CDK)
                        until not _G.CDK or not boss.Parent or boss.Humanoid.Health <= 0
                    else
                        _tp(CFrame.new(-12318.193359375, 601.95184326172, -6538.662109375))
                        wait(.5)
                        _tp(workspace.Map.Turtle.Cursed.BossDoor.CFrame)
                    end
                end
            end)
        end
    end)
end

-- ========================================
-- TRUE TRIPLE KATANA (WORLD 3) - từ Gravity Hub
-- ========================================
if World3 then
    v3:AddSection({"True Triple Katana"})

    v3:AddButton({
        Name = "Buy Legendary Sword",
        Callback = function()
            replicated.Remotes.CommF_:InvokeServer("LegendarySwordDealer", "1")
            replicated.Remotes.CommF_:InvokeServer("LegendarySwordDealer", "2")
            replicated.Remotes.CommF_:InvokeServer("LegendarySwordDealer", "3")
        end
    })

    v3:AddButton({
        Name = "Buy True Triple Katana",
        Callback = function()
            replicated.Remotes.CommF_:InvokeServer("MysteriousMan", "2")
        end
    })

    v3:AddToggle({
        Name = "Teleport to Legendary Sword Dealer",
        Default = GetSetting("Tp_LgS_Save", false),
        Callback = function(Value)
            _G.Tp_LgS = Value
            _G.SaveData["Tp_LgS_Save"] = Value
            SaveSettings()
        end
    })

    spawn(function()
        while wait(Sec) do
            if _G.Tp_LgS then
                pcall(function()
                    for _, npc in pairs(replicated.NPCs:GetChildren()) do
                        if npc.Name == "Legendary Sword Dealer" then
                            _tp(npc.HumanoidRootPart.CFrame)
                        end
                    end
                end)
            end
        end
    end)
end

-- ========================================
-- AUTO SWAN GLASSES / DON SWAN (WORLD 2) - từ Gravity Hub
-- ========================================
if World2 then
    v3:AddToggle({
        Name = "Auto Swan Glasses",
        Default = GetSetting("Auto_SwanGG_Save", false),
        Callback = function(Value)
            _G.Auto_SwanGG = Value
            _G.SaveData["Auto_SwanGG_Save"] = Value
            SaveSettings()
        end
    })

    spawn(function()
        while wait(.2) do
            if _G.Auto_SwanGG then
                pcall(function()
                    local boss = GetConnectionEnemies("Don Swan")
                    if boss then
                        repeat
                            wait()
                            G.Kill(boss, _G.Auto_SwanGG)
                        until _G.Auto_SwanGG == false or not boss.Parent or boss.Humanoid.Health <= 0
                    else
                        _tp(CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875))
                    end
                end)
            end
        end
    end)
end

-- ========================================
-- AUTO CANVENDISH SWORD (WORLD 3) - từ Gravity Hub
-- ========================================
if World3 then
    v3:AddToggle({
        Name = "Auto Canvendish Sword",
        Default = GetSetting("Auto_Cavender_Save", false),
        Callback = function(Value)
            _G.Auto_Cavender = Value
            _G.SaveData["Auto_Cavender_Save"] = Value
            SaveSettings()
        end
    })

    spawn(function()
        while wait(Sec) do
            pcall(function()
                if _G.Auto_Cavender then
                    local boss = GetConnectionEnemies("Beautiful Pirate")
                    if boss then
                        repeat
                            wait()
                            G.Kill(boss, _G.Auto_Cavender)
                        until not _G.Auto_Cavender or boss.Humanoid.Health <= 0
                    else
                        _tp(CFrame.new(5283.609375, 22.56223487854, -110.78285217285))
                    end
                end
            end)
        end
    end)
end

-- ========================================
-- AUTO BIGMOM / CAKE QUEEN (WORLD 3) - từ Gravity Hub
-- ========================================
if World3 then
    v3:AddToggle({
        Name = "Auto Bigmom (Cake Queen)",
        Default = GetSetting("AutoBigmom_Save", false),
        Callback = function(Value)
            _G.AutoBigmom = Value
            _G.SaveData["AutoBigmom_Save"] = Value
            SaveSettings()
        end
    })

    spawn(function()
        while wait(Sec) do
            if _G.AutoBigmom then
                pcall(function()
                    local boss = GetConnectionEnemies("Cake Queen")
                    if boss then
                        repeat
                            task.wait()
                            G.Kill(boss, _G.AutoBigmom)
                        until not _G.AutoBigmom or not boss.Parent or boss.Humanoid.Health <= 0
                    else
                        _tp(CFrame.new(-709.31329345703, 381.6005859375, -11011.396484375))
                    end
                end)
            end
        end
    end)
end

-- ========================================
-- AUTO KILL TRAINING DUMMY (WORLD 3) - từ Gravity Hub
-- ========================================
if World3 then
    v3:AddToggle({
        Name = "Auto Training Dummy",
        Default = GetSetting("DummyMan_Save", false),
        Callback = function(Value)
            _G.DummyMan = Value
            _G.SaveData["DummyMan_Save"] = Value
            SaveSettings()
        end
    })

    spawn(function()
        while wait(Sec) do
            if _G.DummyMan then
                pcall(function()
                    if plr.PlayerGui.Main.Quest.Visible == false then
                        replicated.Remotes.CommF_:InvokeServer("ArenaTrainer")
                    else
                        local dummy = GetConnectionEnemies("Training Dummy")
                        if dummy then
                            repeat
                                wait()
                                G.Kill(dummy, _G.DummyMan)
                            until not _G.DummyMan or not dummy.Parent or dummy.Humanoid.Health <= 0
                        else
                            _tp(CFrame.new(3688.0051269531, 12.746943473816, 170.20953369141))
                        end
                    end
                end)
            end
        end
    end)
end

v6:AddSection({"Sea Event / Setting Sail"})

local BoatList = {
        "Guardian",
        "PirateGrandBrigade",
        "MarineGrandBrigade",
        "PirateBrigade",
        "MarineBrigade",
        "PirateSloop",
        "MarineSloop",
        "Beast Hunter",
    }

v6:AddDropdown({
        Name = "Select Boats",
        Options = BoatList,
        Default = "Guardian",
        Multi = false,
        Callback = function(Value)
            _G.SelectedBoat = Value
        end
    })

if World3 then
        local DangerLevels = {
            "Lv 1", "Lv 2", "Lv 3", "Lv 4", "Lv 5", "Lv 6", "Lv Infinite"
        }
        v6:AddDropdown({
            Name = "Select Level Sea",
            Options = DangerLevels,
            Default = "Lv 1",
            Multi = false,
            Callback = function(Value)
                _G.DangerSc = Value
            end
        })
end

v6:AddButton({
    Name = "Remove Lighting Effect",
    Callback = function()
        pcall(function()
            local Lighting = game:GetService("Lighting")
            
            if Lighting:FindFirstChild("BaseAtmosphere") then
                Lighting.BaseAtmosphere:Destroy()
            end
            
            if Lighting:FindFirstChild("LightingLayers") then
                Lighting.LightingLayers:Destroy()
            end
            
            if Lighting:FindFirstChild("SeaTerrorCC") then
                Lighting.SeaTerrorCC:Destroy()
            end
            
            if Lighting:FindFirstChild("FantasySky") then
                Lighting.FantasySky:Destroy()
            end
            
            Lighting.GlobalShadows = false
            Lighting.FogEnd = 9000000000
            Lighting.Brightness = 2
            
            bearlib:Notify({
                Title = "Lighting",
                Message = "Removed fog effects",
                Duration = 3
            })
        end)
    end
})

v6:AddButton({
    Name = "Buy Selected Boat",
    Callback = function()
        if _G.SelectedBoat then
            pcall(function()
                local BoatDealerPos = CFrame.new(-16927.451, 9.086, 433.864)
                
                if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                    local hrp = plr.Character.HumanoidRootPart
                    local dist = (hrp.Position - BoatDealerPos.Position).Magnitude
                    
                    if dist > 10 then
                        _tp(BoatDealerPos)
                        task.wait(1)
                    end
                    
                    replicated.Remotes.CommF_:InvokeServer("BuyBoat", _G.SelectedBoat)
                    
                    bearlib:Notify({
                        Title = "Boat Shop",
                        Message = "Purchased: " .. tostring(_G.SelectedBoat),
                        Duration = 3
                    })
                end
            end)
        else
            bearlib:Notify({
                Title = "Boat Shop",
                Message = "Please select a boat first",
                Duration = 3
            })
        end
    end
})

-- ========================================
-- BOAT CONTROLS (FROM GRAVITY HUB)
-- ========================================

-- Auto Press W (Ship Auto Drive)
_G.AutoPressW = _G.AutoPressW or false

v6:AddToggle({
    Name = "Auto Press W (Auto Drive)",
    Default = GetSetting("AutoPressW_Save", false),
    Callback = function(Value)
        _G.AutoPressW = Value
        _G.SaveData["AutoPressW_Save"] = Value
        SaveSettings()
    end
})

-- No Clip Ship
_G.NoClipShip = _G.NoClipShip or false

v6:AddToggle({
    Name = "No Clip Ship",
    Default = GetSetting("NoClipShip_Save", false),
    Callback = function(Value)
        _G.NoClipShip = Value
        _G.SaveData["NoClipShip_Save"] = Value
        SaveSettings()
    end
})

-- Auto Press W Loop
task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoPressW then
                local char = game.Players.LocalPlayer.Character
                local hum = char and char:FindFirstChild("Humanoid")
                if hum and hum.Sit == true then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "W", false, game)
                end
            end
        end)
    end
end)

-- No Clip Ship Loop
task.spawn(function()
    while task.wait() do
        pcall(function()
            for _, boat in pairs(workspace.Boats:GetChildren()) do
                for _, part in pairs(boat:GetDescendants()) do
                    if part:IsA("BasePart") then
                        if _G.NoClipShip or _G.SailBoats or _G.Prehis_Find or _G.FindMirage then
                            part.CanCollide = false
                        else
                            part.CanCollide = true
                        end
                    end
                end
            end
        end)
    end
end)

-- ========================================
-- BOAT SPEED CONTROL
-- ========================================

_G.SetSpeedBoat = 300

v6:AddToggle({
        Name = "Activate Boat Speed",
        Default = false,
        Callback = function(Value)
            _G.SpeedBoat = Value
        end
    })

v6:AddTextBox({
        Title = "Boat Speed Value",
        PlaceHolder = "300",
        Default = "300",
        Callback = function(Value)
            local num = tonumber(Value)
            if num and num > 0 then
                _G.SetSpeedBoat = num
            end
        end
    })

task.spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.SpeedBoat then
            pcall(function()
                if plr.Character and plr.Character:FindFirstChild("Humanoid") and plr.Character.Humanoid.Sit then
                    for _, Boat in pairs(workspace.Boats:GetChildren()) do
                        local Seat = Boat:FindFirstChildWhichIsA("VehicleSeat")
                        if Seat then
                            Seat.MaxSpeed = _G.SetSpeedBoat
                            Seat.Torque = 0.2
                            Seat.TurnSpeed = 5
                        end
                    end
                end
            end)
        end
    end)
end)

v6:AddToggle({
        Name = "Auto Start farm",
        Default = false,
        Callback = function(Value)
            _G.SailBoats = Value
        end
    })

v6:AddSection({"Select what you will farm"})

v6:AddToggle({
        Name = "Auto Attack Sea Beast",
        Default = false,
        Callback = function(Value)
            _G.SeaBeast1 = Value
        end
    })

v6:AddToggle({
    Name = "Auto Attack Pirate GrandBrigade",
    Default = false,
    Callback = function(Value)
        _G.PGB = Value
    end
})

if World2 then
    v6:AddSection({"Go to Sea 3 for more options"})
end
if World1 then
    v6:AddSection({"Go to Sea 3 or Sea 2 for Farm maritime events"})
end
if game.PlaceId == 7449423635 or game.PlaceId == 100117331123089 then
    v6:AddToggle({
        Name = "Auto Shark",
        Default = false,
        Callback = function(Value)
            _G.Shark = Value
        end
    })
    v6:AddToggle({
        Name = "Auto Piranha",
        Default = false,
        Callback = function(Value)
            _G.Piranha = Value
        end
    })
    v6:AddToggle({
        Name = "Auto Terror Shark",
        Default = false,
        Callback = function(Value)
            _G.TerrorShark = Value
        end
    })
    v6:AddToggle({
        Name = "Auto Fish Crew Member",
        Default = false,
        Callback = function(Value)
            _G.MobCrew = Value
        end
    })
    v6:AddToggle({
        Name = "Auto Haunted Crew Member",
        Default = false,
        Callback = function(Value)
            _G.HCM = Value
        end
    })
    v6:AddToggle({
        Name = "Auto Attack Fish Boat",
        Default = false,
        Callback = function(Value)
            _G.FishBoat = Value
        end
    })
end

if game.PlaceId == 7449423635 or game.PlaceId == 100117331123089 then
    v6:AddSection({"Frozen Dimension"})
    
    v6:AddButton({
        Name = "Buy Spy",
        Callback = function()
            replicated.Remotes.CommF_:InvokeServer("InfoLeviathan", "2")
        end
    })
    
    v6:AddToggle({
        Name = "Teleport Frozen Dimension",
        Default = GetSetting("FrozenTP_Save", false),
        Callback = function(Value)
            _G.FrozenTP = Value
            _G.SaveData["FrozenTP_Save"] = Value
            SaveSettings()
        end
    })
    
    spawn(function()
        while wait(0.1) do
            if _G.FrozenTP then
                pcall(function()
                    if workspace.Map:FindFirstChild("LeviathanGate") then
                        _tp(workspace.Map.LeviathanGate.CFrame)
                        replicated.Remotes.CommF_:InvokeServer("OpenLeviathanGate")
                    end
                end)
            end
        end
    end)
    
    v6:AddToggle({
        Name = "Auto Attack Leviathan",
        Default = false,
        Callback = function(Value)
            _G.Leviathan1 = Value
        end
    })
    
    v6:AddSection({"Kitsune Island / Event"})
    
    v6:AddToggle({
        Name = "Auto Find Kitsune Island",
        Default = GetSetting("FindKitsune_Save", false),
        Callback = function(Value)
            _G.AutofindKitIs = Value
            _G.SaveData["FindKitsune_Save"] = Value
            SaveSettings()
        end
    })
    
    spawn(function()
        while wait() do
            if _G.AutofindKitIs then
                pcall(function()
                    if not workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island", true) then
                        local MyBoat = CheckBoat()
                        if not MyBoat then
                            local BoatPos = CFrame.new(-16927.451, 9.086, 433.864)
                            TeleportToTarget(BoatPos)
                            if (BoatPos.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                replicated.Remotes.CommF_:InvokeServer("BuyBoat", _G.SelectedBoat)
                            end
                        else
                            if plr.Character.Humanoid.Sit == false then
                                local SeatPos = MyBoat.VehicleSeat.CFrame * CFrame.new(0, 1, 0)
                                _tp(SeatPos)
                            else
                                local TargetPos = CFrame.new(-10000000, 31, 37016.25)
                                repeat
                                    wait()
                                    if CheckEnemiesBoat() or CheckTerrorShark() or CheckPirateGrandBrigade() then
                                        _tp(CFrame.new(-10000000, 150, 37016.25))
                                    else
                                        _tp(CFrame.new(-10000000, 31, 37016.25))
                                    end
                                until not _G.AutofindKitIs or (TargetPos.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 or workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island") or plr.Character.Humanoid.Sit == false
                                plr.Character.Humanoid.Sit = false
                            end
                        end
                    else
                        _tp((workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island")).CFrame * CFrame.new(0, 500, 0))
                    end
                end)
            end
        end
    end)
    
    v6:AddToggle({
        Name = "Auto Teleport to Shrine Actived",
        Default = false,
        Callback = function(Value)
            _G.tweenShrine = Value
        end
    })
    
    spawn(function()
        while wait(0.1) do
            if _G.tweenShrine then
                pcall(function()
                    local Island = workspace.Map:FindFirstChild("KitsuneIsland") or game.Workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island")
                    local Shrine = Island:FindFirstChild("ShrineActive")
                    if Shrine then
                        for _, Part in next, Shrine:GetDescendants() do
                            if Part:IsA("BasePart") and Part.Name:find("NeonShrinePart") then
                                replicated.Modules.Net:FindFirstChild("RE/TouchKitsuneStatue"):FireServer()
                                repeat
                                    wait()
                                    _tp(Part.CFrame * CFrame.new(0, 2, 0))
                                until _G.tweenShrine == false or not Island
                            end
                        end
                    else
                        _tp((workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island")).CFrame * CFrame.new(0, 500, 0))
                    end
                end)
            end
        end
    end)
    
    v6:AddToggle({
        Name = "Auto Collect Azure Ember",
        Default = GetSetting("CollectAzureEmber_Save", false),
        Callback = function(Value)
            _G.Collect_Ember = Value
            _G.SaveData["CollectAzureEmber_Save"] = Value
            SaveSettings()
        end
    })
    
    spawn(function()
        while wait(0.1) do
            if _G.Collect_Ember then
                pcall(function()
                    if workspace:WaitForChild("AttachedAzureEmber") or workspace:WaitForChild("EmberTemplate") then
                        notween((workspace:WaitForChild("EmberTemplate")):FindFirstChild("Part").CFrame)
                    else
                        _tp((workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island")).CFrame * CFrame.new(0, 500, 0))
                        replicated.Modules.Net["RF/KitsuneStatuePray"]:InvokeServer()
                    end
                end)
            end
        end
    end)
    
    v6:AddToggle({
        Name = "Auto Trade Azure Ember",
        Default = GetSetting("TradeAzureEmber_Save", false),
        Callback = function(Value)
            _G.Trade_Ember = Value
            _G.SaveData["TradeAzureEmber_Save"] = Value
            SaveSettings()
        end
    })
    
    spawn(function()
        while wait(0.1) do
            if _G.Trade_Ember then
                pcall(function()
                    if workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island", true) then
                        replicated.Modules.Net:FindFirstChild("RF/KitsuneStatuePray"):InvokeServer()
                    end
                end)
            end
        end
    end)
    
    v6:AddButton({
        Name = "Trade Items Azure",
        Callback = function()
            replicated.Modules.Net:FindFirstChild("RF/KitsuneStatuePray"):InvokeServer()
        end
    })
    
    v6:AddButton({
        Name = "Talk with kitsune statue",
        Callback = function()
            replicated.Modules.Net:FindFirstChild("RE/TouchKitsuneStatue"):FireServer()
        end
    })
end

-- ========================================
-- SKILL SELECTION (MOVED TO BOTTOM)
-- ========================================
v6:AddSection({"Skill Selection"})

_G.SelectedSkills = _G.SelectedSkills or {
    Melee = {Z = false, X = false, C = false},
    Sword = {Z = false, X = false},
    ["Blox Fruit"] = {Z = false, X = false, C = false, V = false, F = false},
    Gun = {Z = false, X = false}
}

if _G.SaveData and _G.SaveData.SelectedSkills then
    _G.SelectedSkills = _G.SaveData.SelectedSkills
end

-- Melee Skills
v6:AddToggle({
    Name = "Melee Z",
    Default = _G.SelectedSkills.Melee.Z,
    Callback = function(Value)
        _G.SelectedSkills.Melee.Z = Value
        _G.SaveData.SelectedSkills = _G.SelectedSkills
        SaveSettings()
    end
})

v6:AddToggle({
    Name = "Melee X",
    Default = _G.SelectedSkills.Melee.X,
    Callback = function(Value)
        _G.SelectedSkills.Melee.X = Value
        _G.SaveData.SelectedSkills = _G.SelectedSkills
        SaveSettings()
    end
})

v6:AddToggle({
    Name = "Melee C",
    Default = _G.SelectedSkills.Melee.C,
    Callback = function(Value)
        _G.SelectedSkills.Melee.C = Value
        _G.SaveData.SelectedSkills = _G.SelectedSkills
        SaveSettings()
    end
})

-- Sword Skills
v6:AddToggle({
    Name = "Sword Z",
    Default = _G.SelectedSkills.Sword.Z,
    Callback = function(Value)
        _G.SelectedSkills.Sword.Z = Value
        _G.SaveData.SelectedSkills = _G.SelectedSkills
        SaveSettings()
    end
})

v6:AddToggle({
    Name = "Sword X",
    Default = _G.SelectedSkills.Sword.X,
    Callback = function(Value)
        _G.SelectedSkills.Sword.X = Value
        _G.SaveData.SelectedSkills = _G.SelectedSkills
        SaveSettings()
    end
})

-- Blox Fruit Skills
v6:AddToggle({
    Name = "Blox Fruit Z",
    Default = _G.SelectedSkills["Blox Fruit"].Z,
    Callback = function(Value)
        _G.SelectedSkills["Blox Fruit"].Z = Value
        _G.FruitSkills = _G.SelectedSkills["Blox Fruit"]
        _G.SaveData.SelectedSkills = _G.SelectedSkills
        SaveSettings()
    end
})

v6:AddToggle({
    Name = "Blox Fruit X",
    Default = _G.SelectedSkills["Blox Fruit"].X,
    Callback = function(Value)
        _G.SelectedSkills["Blox Fruit"].X = Value
        _G.FruitSkills = _G.SelectedSkills["Blox Fruit"]
        _G.SaveData.SelectedSkills = _G.SelectedSkills
        SaveSettings()
    end
})

v6:AddToggle({
    Name = "Blox Fruit C",
    Default = _G.SelectedSkills["Blox Fruit"].C,
    Callback = function(Value)
        _G.SelectedSkills["Blox Fruit"].C = Value
        _G.FruitSkills = _G.SelectedSkills["Blox Fruit"]
        _G.SaveData.SelectedSkills = _G.SelectedSkills
        SaveSettings()
    end
})

v6:AddToggle({
    Name = "Blox Fruit V",
    Default = _G.SelectedSkills["Blox Fruit"].V,
    Callback = function(Value)
        _G.SelectedSkills["Blox Fruit"].V = Value
        _G.FruitSkills = _G.SelectedSkills["Blox Fruit"]
        _G.SaveData.SelectedSkills = _G.SelectedSkills
        SaveSettings()
    end
})

v6:AddToggle({
    Name = "Blox Fruit F",
    Default = _G.SelectedSkills["Blox Fruit"].F,
    Callback = function(Value)
        _G.SelectedSkills["Blox Fruit"].F = Value
        _G.FruitSkills = _G.SelectedSkills["Blox Fruit"]
        _G.SaveData.SelectedSkills = _G.SelectedSkills
        SaveSettings()
    end
})

-- Gun Skills
v6:AddToggle({
    Name = "Gun Z",
    Default = _G.SelectedSkills.Gun.Z,
    Callback = function(Value)
        _G.SelectedSkills.Gun.Z = Value
        _G.SaveData.SelectedSkills = _G.SelectedSkills
        SaveSettings()
    end
})

v6:AddToggle({
    Name = "Gun X",
    Default = _G.SelectedSkills.Gun.X,
    Callback = function(Value)
        _G.SelectedSkills.Gun.X = Value
        _G.SaveData.SelectedSkills = _G.SelectedSkills
        SaveSettings()
    end
})

v7:AddSection({"Prehistoric Island"})

-- Kiểm tra trạng thái Prehistoric Island
local PrehistoricStatus = v7:AddParagraph({
    Title = "Prehistoric Island Status",
    Desc = "Checking..."
})

task.spawn(function()
    while task.wait(2) do
        pcall(function()
            if workspace.Map:FindFirstChild("PrehistoricIsland") or workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island") then
                PrehistoricStatus:SetDesc("✅ Island Active")
            else
                PrehistoricStatus:SetDesc("❌ Not Found")
            end
        end)
    end
end)

-- ========================================
-- SKILL SELECTION FOR PREHISTORIC
-- ========================================
v7:AddSection({"Skill Selection (Prehistoric)"})

_G.PrehistoricSkills = _G.PrehistoricSkills or {
    Melee = {Z = true, X = true, C = true},
    Sword = {Z = true, X = true},
    ["Blox Fruit"] = {Z = true, X = true, C = true, V = false, F = false},
    Gun = {Z = true, X = true}
}

if _G.SaveData and _G.SaveData.PrehistoricSkills then
    _G.PrehistoricSkills = _G.SaveData.PrehistoricSkills
end

-- Hàm sử dụng skill Prehistoric
local function UsePrehistoricSkills()
    -- Melee
    if _G.PrehistoricSkills.Melee.Z then Useskills("Melee", "Z") end
    if _G.PrehistoricSkills.Melee.X then Useskills("Melee", "X") end
    if _G.PrehistoricSkills.Melee.C then Useskills("Melee", "C") end
    
    task.wait(0.2)
    
    -- Sword
    if _G.PrehistoricSkills.Sword.Z then Useskills("Sword", "Z") end
    if _G.PrehistoricSkills.Sword.X then Useskills("Sword", "X") end
    
    task.wait(0.2)
    
    -- Blox Fruit
    if _G.PrehistoricSkills["Blox Fruit"].Z then Useskills("Blox Fruit", "Z") end
    if _G.PrehistoricSkills["Blox Fruit"].X then Useskills("Blox Fruit", "X") end
    if _G.PrehistoricSkills["Blox Fruit"].C then Useskills("Blox Fruit", "C") end
    if _G.PrehistoricSkills["Blox Fruit"].V then Useskills("Blox Fruit", "V") end
    if _G.PrehistoricSkills["Blox Fruit"].F then
        vim1:SendKeyEvent(true, "F", false, game)
        vim1:SendKeyEvent(false, "F", false, game)
    end
    
    task.wait(0.2)
    
    -- Gun
    if _G.PrehistoricSkills.Gun.Z then Useskills("Gun", "Z") end
    if _G.PrehistoricSkills.Gun.X then Useskills("Gun", "X") end
end

-- Toggles cho Melee
v7:AddToggle({
    Name = "Prehistoric - Melee Z",
    Default = _G.PrehistoricSkills.Melee.Z,
    Callback = function(Value)
        _G.PrehistoricSkills.Melee.Z = Value
        _G.SaveData.PrehistoricSkills = _G.PrehistoricSkills
        SaveSettings()
    end
})

v7:AddToggle({
    Name = "Prehistoric - Melee X",
    Default = _G.PrehistoricSkills.Melee.X,
    Callback = function(Value)
        _G.PrehistoricSkills.Melee.X = Value
        _G.SaveData.PrehistoricSkills = _G.PrehistoricSkills
        SaveSettings()
    end
})

v7:AddToggle({
    Name = "Prehistoric - Melee C",
    Default = _G.PrehistoricSkills.Melee.C,
    Callback = function(Value)
        _G.PrehistoricSkills.Melee.C = Value
        _G.SaveData.PrehistoricSkills = _G.PrehistoricSkills
        SaveSettings()
    end
})

-- Toggles cho Sword
v7:AddToggle({
    Name = "Prehistoric - Sword Z",
    Default = _G.PrehistoricSkills.Sword.Z,
    Callback = function(Value)
        _G.PrehistoricSkills.Sword.Z = Value
        _G.SaveData.PrehistoricSkills = _G.PrehistoricSkills
        SaveSettings()
    end
})

v7:AddToggle({
    Name = "Prehistoric - Sword X",
    Default = _G.PrehistoricSkills.Sword.X,
    Callback = function(Value)
        _G.PrehistoricSkills.Sword.X = Value
        _G.SaveData.PrehistoricSkills = _G.PrehistoricSkills
        SaveSettings()
    end
})

-- Toggles cho Blox Fruit
v7:AddToggle({
    Name = "Prehistoric - Fruit Z",
    Default = _G.PrehistoricSkills["Blox Fruit"].Z,
    Callback = function(Value)
        _G.PrehistoricSkills["Blox Fruit"].Z = Value
        _G.SaveData.PrehistoricSkills = _G.PrehistoricSkills
        SaveSettings()
    end
})

v7:AddToggle({
    Name = "Prehistoric - Fruit X",
    Default = _G.PrehistoricSkills["Blox Fruit"].X,
    Callback = function(Value)
        _G.PrehistoricSkills["Blox Fruit"].X = Value
        _G.SaveData.PrehistoricSkills = _G.PrehistoricSkills
        SaveSettings()
    end
})

v7:AddToggle({
    Name = "Prehistoric - Fruit C",
    Default = _G.PrehistoricSkills["Blox Fruit"].C,
    Callback = function(Value)
        _G.PrehistoricSkills["Blox Fruit"].C = Value
        _G.SaveData.PrehistoricSkills = _G.PrehistoricSkills
        SaveSettings()
    end
})

v7:AddToggle({
    Name = "Prehistoric - Fruit V",
    Default = _G.PrehistoricSkills["Blox Fruit"].V,
    Callback = function(Value)
        _G.PrehistoricSkills["Blox Fruit"].V = Value
        _G.SaveData.PrehistoricSkills = _G.PrehistoricSkills
        SaveSettings()
    end
})

v7:AddToggle({
    Name = "Prehistoric - Fruit F",
    Default = _G.PrehistoricSkills["Blox Fruit"].F,
    Callback = function(Value)
        _G.PrehistoricSkills["Blox Fruit"].F = Value
        _G.SaveData.PrehistoricSkills = _G.PrehistoricSkills
        SaveSettings()
    end
})

-- Toggles cho Gun
v7:AddToggle({
    Name = "Prehistoric - Gun Z",
    Default = _G.PrehistoricSkills.Gun.Z,
    Callback = function(Value)
        _G.PrehistoricSkills.Gun.Z = Value
        _G.SaveData.PrehistoricSkills = _G.PrehistoricSkills
        SaveSettings()
    end
})

v7:AddToggle({
    Name = "Prehistoric - Gun X",
    Default = _G.PrehistoricSkills.Gun.X,
    Callback = function(Value)
        _G.PrehistoricSkills.Gun.X = Value
        _G.SaveData.PrehistoricSkills = _G.PrehistoricSkills
        SaveSettings()
    end
})

-- ========================================
-- CÁC TOGGLE CHÍNH CHO PREHISTORIC (Từ Gravity Hub)
-- ========================================
v7:AddSection({"Main Prehistoric Options"})

-- Auto Find Prehistoric Island
v7:AddToggle({
    Name = "Auto Find Prehistoric Island",
    Default = GetSetting("Prehis_Find_Save", false),
    Callback = function(Value)
        _G.Prehis_Find = Value
        _G.SaveData["Prehis_Find_Save"] = Value
        SaveSettings()
    end
})

-- Auto Start Prehistoric Event
v7:AddToggle({
    Name = "Auto Start Prehistoric Event",
    Default = GetSetting("AutoStartPrehistoric_Save", false),
    Callback = function(Value)
        _G.AutoStartPrehistoric = Value
        _G.SaveData["AutoStartPrehistoric_Save"] = Value
        SaveSettings()
    end
})

-- Auto Patch (Xóa lava)
v7:AddToggle({
    Name = "Auto Patch (Remove Lava)",
    Default = GetSetting("Prehis_Skills_Save", false),
    Callback = function(Value)
        _G.Prehis_Skills = Value
        _G.SaveData["Prehis_Skills_Save"] = Value
        SaveSettings()
    end
})

_G.KillAura = GetSetting("KillAura_Save", false)

v7:AddToggle({
    Name = "Kill Aura",
    Default = _G.KillAura,
    Callback = function(Value)
        _G.KillAura = Value
        _G.SaveData["KillAura_Save"] = Value
        SaveSettings()
    end
})

local KillAuraCounter = 0
local KillAuraDisplay = v7:AddParagraph({
    Title = "Kill Aura Stats",
    Desc = "Killed: 0"
})

-- Update display
task.spawn(function()
    while task.wait(1) do
        if _G.KillAura then
            KillAuraDisplay:SetDesc("Killed: " .. KillAuraCounter)
        else
            KillAuraDisplay:SetDesc("Killed: 0 | Disabled")
        end
    end
end)

-- Hàm lấy HumanoidRootPart của player
local function GetHRP()
    local char = game.Players.LocalPlayer.Character
    return char and char:FindFirstChild("HumanoidRootPart")
end

-- Kill Aura loop
task.spawn(function()
    while task.wait(2) do
        if _G.KillAura then
            pcall(function()
                local hrp = GetHRP()
                if not hrp then return end
                
                -- Set simulation radius to max
                pcall(function()
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                end)
                
                -- Kill enemies
                for _, enemy in pairs(workspace.Enemies:GetChildren()) do
                    local hum = enemy:FindFirstChild("Humanoid")
                    local root = enemy:FindFirstChild("HumanoidRootPart")
                    
                    if hum and root and hum.Health > 0 then
                        local dist = (root.Position - hrp.Position).Magnitude
                        if dist <= 1000 then
                            hum.Health = 0
                            root.CanCollide = false
                            enemy:BreakJoints()
                            KillAuraCounter = KillAuraCounter + 1
                        end
                    end
                end
            end)
        end
    end
end)

-- Reset counter button
v7:AddButton({
    Name = "Reset Kill Counter",
    Callback = function()
        KillAuraCounter = 0
    end
})

-- Auto Kill Lava Golem
v7:AddToggle({
    Name = "Auto Kill Lava Golem",
    Default = GetSetting("Prehis_KillGolem_Save", false),
    Callback = function(Value)
        _G.Prehis_KillGolem = Value
        _G.SaveData["Prehis_KillGolem_Save"] = Value
        SaveSettings()
    end
})

-- Auto Collect Dino Bones
v7:AddToggle({
    Name = "Auto Collect Dino Bones",
    Default = GetSetting("Prehis_DB_Save", false),
    Callback = function(Value)
        _G.Prehis_DB = Value
        _G.SaveData["Prehis_DB_Save"] = Value
        SaveSettings()
    end
})

-- Auto Collect Dragon Eggs
v7:AddToggle({
    Name = "Auto Collect Dragon Eggs",
    Default = GetSetting("Prehis_DE_Save", false),
    Callback = function(Value)
        _G.Prehis_DE = Value
        _G.SaveData["Prehis_DE_Save"] = Value
        SaveSettings()
    end
})

-- ========================================
-- LOGIC CHO CÁC TÍNH NĂNG
-- ========================================

-- Logic Auto Find Prehistoric Island (từ Gravity Hub)
local PrehisFindBoat = nil
spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.Prehis_Find then
                local char = plr.Character
                if not char then return end
                local hrp = char:FindFirstChild("HumanoidRootPart")
                if not hrp then return end
                
                local PrehistoricLoc = workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island", true)
                
                if not PrehistoricLoc then
                    local MyBoat = CheckBoat()
                    if not MyBoat then
                        local BoatPos = CFrame.new(-16927.451, 9.086, 433.864)
                        TeleportToTarget(BoatPos)
                        if (BoatPos.Position - hrp.Position).Magnitude <= 10 then
                            replicated.Remotes.CommF_:InvokeServer("BuyBoat", _G.SelectedBoat or "Guardian")
                        end
                        return
                    end
                    
                    if char.Humanoid.Sit == false then
                        local SeatPos = MyBoat.VehicleSeat.CFrame * CFrame.new(0, 1, 0)
                        _tp(SeatPos)
                        return
                    end
                    
                    PrehisFindBoat = CFrame.new(-10000000, 31, 37016.25)
                    
                    if CheckEnemiesBoat() or CheckTerrorShark() or CheckPirateGrandBrigade() then
                        _tp(CFrame.new(-10000000, 150, 37016.25))
                    else
                        _tp(PrehisFindBoat)
                    end
                else
                    local TeleportPart = PrehistoricLoc:FindFirstChild("HeadTeleport", true) or PrehistoricLoc:FindFirstChild("Teleport_Head", true) or PrehistoricLoc:FindFirstChild("Head", true)
                    if TeleportPart then
                        local TargetPos = TeleportPart.CFrame.Position - TeleportPart.CFrame.LookVector * 40 + Vector3.new(0, 20, 0)
                        if (TargetPos - hrp.Position).Magnitude > 30 then
                            _tp(CFrame.new(TargetPos))
                        end
                    else
                        local CenterPos = PrehistoricLoc.CFrame.Position
                        local DirToIsland = (CenterPos - hrp.Position).Unit
                        local SafePos = CenterPos - DirToIsland * 250 + Vector3.new(0, 60, 0)
                        _tp(CFrame.new(SafePos))
                    end
                end
            end
        end)
    end
end)

-- Logic Auto Start Prehistoric Event
spawn(function()
    while wait() do
        if _G.AutoStartPrehistoric then
            pcall(function()
                local PrehistoricLoc = workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island", true)
                if PrehistoricLoc then
                    if workspace.Map:FindFirstChild("PrehistoricIsland", true) then
                        local CoreActivation = workspace.Map.PrehistoricIsland.Core:FindFirstChild("ActivationPrompt", true)
                        if CoreActivation and CoreActivation:FindFirstChild("ProximityPrompt") then
                            if plr:DistanceFromCharacter(CoreActivation.CFrame.Position) <= 150 then
                                fireproximityprompt(CoreActivation.ProximityPrompt, math.huge)
                                vim1:SendKeyEvent(true, "E", false, game)
                                wait(1.5)
                                vim1:SendKeyEvent(false, "E", false, game)
                            end
                            _tp(CoreActivation.CFrame)
                        end
                    end
                end
            end)
        end
    end
end)

-- Logic Auto Patch (Remove Lava)
spawn(function()
    while wait(0.3) do
        if _G.Prehis_Skills then
            pcall(function()
                local PrehistoricMap = workspace.Map:FindFirstChild("PrehistoricIsland")
                if not PrehistoricMap then return end
                
                -- Xóa lava
                for _, obj in pairs(PrehistoricMap:GetDescendants()) do
                    if (obj:IsA("BasePart") or obj:IsA("MeshPart")) and (obj.Name:lower()):find("lava") then
                        obj:Destroy()
                    end
                end
                
                local Core = PrehistoricMap:FindFirstChild("Core")
                if Core then
                    local InteriorLava = Core:FindFirstChild("InteriorLava")
                    if InteriorLava then InteriorLava:Destroy() end
                end
                
                -- Xóa TouchInterest (trừ TrialTeleport)
                local TrialTeleport = PrehistoricMap:FindFirstChild("TrialTeleport")
                for _, obj in pairs(PrehistoricMap:GetDescendants()) do
                    if obj.Name == "TouchInterest" and not(TrialTeleport and obj:IsDescendantOf(TrialTeleport)) then
                        obj.Parent:Destroy()
                    end
                end
            end)
        end
    end
end)

-- Logic Auto Kill Lava Golem
spawn(function()
    while wait(Sec) do
        if _G.Prehis_KillGolem then
            pcall(function()
                local golem = GetConnectionEnemies("Lava Golem")
                if golem and golem:FindFirstChild("Humanoid") then
                    repeat
                        wait(.1)
                        _tp(golem.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                        UsePrehistoricSkills()
                        golem.Humanoid:ChangeState(15)
                    until not _G.Prehis_KillGolem or not golem.Parent or golem.Humanoid.Health <= 0
                end
            end)
        end
    end
end)

-- Logic Auto Collect Dino Bones
spawn(function()
    while wait(Sec) do
        if _G.Prehis_DB then
            pcall(function()
                for _, obj in pairs(workspace:GetChildren()) do
                    if obj.Name == "DinoBone" then
                        _tp(obj.CFrame)
                    end
                end
            end)
        end
    end
end)

-- Logic Auto Collect Dragon Eggs
spawn(function()
    while wait(Sec) do
        if _G.Prehis_DE then
            pcall(function()
                local PrehistoricMap = workspace.Map:FindFirstChild("PrehistoricIsland")
                if PrehistoricMap then
                    local Core = PrehistoricMap:FindFirstChild("Core")
                    if Core then
                        local EggFolder = Core:FindFirstChild("SpawnedDragonEggs")
                        if EggFolder then
                            local Egg = EggFolder:FindFirstChild("DragonEgg")
                            if Egg and Egg:FindFirstChild("Molten") then
                                _tp(Egg.Molten.CFrame)
                                fireproximityprompt(Egg.Molten.ProximityPrompt, 30)
                            end
                        end
                    end
                end
            end)
        end
    end
end)

-- ========================================
-- VOLCANIC CRAFTING (Từ Gravity Hub)
-- ========================================
v7:AddSection({"Volcanic Crafting"})

-- Craft Volcanic Magnet
v7:AddButton({
    Name = "Craft Volcanic Magnet (Manual)",
    Callback = function()
        pcall(function()
            local CraftRemote = replicated.Modules.Net["RF/Craft"]
            CraftRemote:InvokeServer("PossibleHardcode", "Volcanic Magnet")
            bearlib:Notify({
                Title = "Crafting",
                Message = "Attempted to craft Volcanic Magnet",
                Duration = 3
            })
        end)
    end
})

-- Auto Craft Volcanic Magnet
_G.AutoCraftVolcanic = _G.AutoCraftVolcanic or false
v7:AddToggle({
    Name = "Auto Craft Volcanic Magnet",
    Default = GetSetting("AutoCraftVolcanic_Save", false),
    Callback = function(Value)
        _G.AutoCraftVolcanic = Value
        _G.SaveData["AutoCraftVolcanic_Save"] = Value
        SaveSettings()
    end
})

task.spawn(function()
    local CraftRemote = replicated.Modules.Net["RF/Craft"]
    while task.wait(30) do
        if _G.AutoCraftVolcanic then
            pcall(function()
                CraftRemote:InvokeServer("PossibleHardcode", "Volcanic Magnet")
            end)
        end
    end
end)

-- ========================================
-- DRAGO TRIALS (Từ Gravity Hub)
-- ========================================
v7:AddSection({"Drago Trials"})

-- Tween to Upgrade Drago Trial
v7:AddToggle({
    Name = "Tween To Upgrade Drago Trial",
    Default = GetSetting("UPGDrago_Save", false),
    Callback = function(Value)
        _G.UPGDrago = Value
        _G.SaveData["UPGDrago_Save"] = Value
        SaveSettings()
    end
})

-- Auto Drago V1
v7:AddToggle({
    Name = "Auto Drago (V1) - Get Dragon Egg",
    Default = GetSetting("DragoV1_Save", false),
    Callback = function(Value)
        _G.DragoV1 = Value
        _G.SaveData["DragoV1_Save"] = Value
        SaveSettings()
    end
})

-- Auto Fire Flowers (Drago V2)
v7:AddToggle({
    Name = "Auto Drago (V2) - Fire Flowers",
    Default = GetSetting("AutoFireFlowers_Save", false),
    Callback = function(Value)
        _G.AutoFireFlowers = Value
        _G.SaveData["AutoFireFlowers_Save"] = Value
        SaveSettings()
    end
})

-- Auto Drago V3
v7:AddToggle({
    Name = "Auto Drago (V3) - Terror Shark/Sea Beast",
    Default = GetSetting("DragoV3_Save", false),
    Callback = function(Value)
        _G.DragoV3 = Value
        _G.SaveData["DragoV3_Save"] = Value
        SaveSettings()
    end
})

-- Auto Relic Drago Trial
v7:AddToggle({
    Name = "Auto Relic Drago Trial [Beta]",
    Default = GetSetting("Relic123_Save", false),
    Callback = function(Value)
        _G.Relic123 = Value
        _G.SaveData["Relic123_Save"] = Value
        SaveSettings()
    end
})

-- Auto Train Drago V4
v7:AddToggle({
    Name = "Auto Train Drago v4",
    Default = GetSetting("TrainDrago_Save", false),
    Callback = function(Value)
        _G.TrainDrago = Value
        _G.SaveData["TrainDrago_Save"] = Value
        SaveSettings()
    end
})

-- Tween to Drago Trials
v7:AddToggle({
    Name = "Tween to Drago Trials (Inside Volcano)",
    Default = GetSetting("TpDrago_Prehis_Save", false),
    Callback = function(Value)
        _G.TpDrago_Prehis = Value
        _G.SaveData["TpDrago_Prehis_Save"] = Value
        SaveSettings()
    end
})

-- Swap Drago Race
v7:AddToggle({
    Name = "Swap Drago Race (Buy)",
    Default = GetSetting("BuyDrago_Save", false),
    Callback = function(Value)
        _G.BuyDrago = Value
        _G.SaveData["BuyDrago_Save"] = Value
        SaveSettings()
    end
})

-- Upgrade Dragon Talon With Uzoth
v7:AddToggle({
    Name = "Upgrade Dragon Talon With Uzoth",
    Default = GetSetting("DT_Uzoth_Save", false),
    Callback = function(Value)
        _G.DT_Uzoth = Value
        _G.SaveData["DT_Uzoth_Save"] = Value
        SaveSettings()
    end
})

-- ========================================
-- DOJO QUEST (Từ Gravity Hub)
-- ========================================
v7:AddSection({"Dojo Quest"})

-- Teleport to Dragon Dojo
v7:AddButton({
    Name = "Teleport To Dragon Dojo",
    Callback = function()
        pcall(function()
            replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5661.5322265625, 1013.0907592773, -334.96499633789))
            _tp(CFrame.new(5814.4272460938, 1208.3267822266, 884.57855224609))
        end)
    end
})

-- Auto Dojo Trainer
v7:AddToggle({
    Name = "Auto Dojo Trainer (Complete Quests)",
    Default = GetSetting("Dojoo_Save", false),
    Callback = function(Value)
        _G.Dojoo = Value
        _G.SaveData["Dojoo_Save"] = Value
        SaveSettings()
    end
})

-- Auto Dragon Hunter (Blaze EM)
v7:AddToggle({
    Name = "Auto Dragon Hunter (Hydra/Venomous)",
    Default = GetSetting("FarmBlazeEM_Save", false),
    Callback = function(Value)
        _G.FarmBlazeEM = Value
        _G.SaveData["FarmBlazeEM_Save"] = Value
        SaveSettings()
    end
})

-- ========================================
-- LOGIC CHO DRAGO TRIALS (từ Gravity Hub)
-- ========================================

-- UPGDrago Logic
spawn(function()
    while wait(Sec) do
        if _G.UPGDrago then
            pcall(function()
                local DojoPos = CFrame.new(5814.4272460938, 1208.3267822266, 884.57855224609)
                if (DojoPos.Position - Root.Position).Magnitude >= 300 then
                    _tp(DojoPos)
                else
                    _tp(DojoPos)
                    local args = {{NPC = "Dragon Wizard", Command = "Upgrade"}}
                    replicated.Modules.Net:FindFirstChild("RF/InteractDragonQuest"):InvokeServer(unpack(args))
                end
            end)
        end
    end
end)

-- Drago V1 Logic
spawn(function()
    while wait(Sec) do
        if _G.DragoV1 then
            pcall(function()
                if GetM("Dragon Egg") <= 0 then
                    repeat
                        wait()
                        _G.Prehis_Find = true
                        _G.Prehis_Skills = true
                        _G.Prehis_DE = true
                    until not _G.DragoV1 or GetM("Dragon Egg") >= 1
                    _G.Prehis_Find = false
                    _G.Prehis_Skills = false
                    _G.Prehis_DE = false
                end
            end)
        end
    end
end)

-- Auto Fire Flowers Logic
spawn(function()
    while wait(Sec) do
        if _G.AutoFireFlowers then
            pcall(function()
                local FireFlowers = workspace:FindFirstChild("FireFlowers")
                local ForestPirate = GetConnectionEnemies("Forest Pirate")
                
                if ForestPirate then
                    repeat
                        wait()
                        G.Kill(ForestPirate, _G.AutoFireFlowers)
                    until not _G.AutoFireFlowers or not ForestPirate.Parent or ForestPirate.Humanoid.Health <= 0 or FireFlowers
                else
                    _tp(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
                end
                
                if FireFlowers then
                    for _, flower in pairs(FireFlowers:GetChildren()) do
                        if flower:IsA("Model") and flower.PrimaryPart then
                            local dist = (flower.PrimaryPart.Position - Root.Position).Magnitude
                            if dist <= 100 then
                                vim1:SendKeyEvent(true, "E", false, game)
                                wait(1.5)
                                vim1:SendKeyEvent(false, "E", false, game)
                            else
                                _tp(CFrame.new(flower.PrimaryPart.Position))
                            end
                        end
                    end
                end
            end)
        end
    end
end)

-- Drago V3 Logic
spawn(function()
    while wait(Sec) do
        if _G.DragoV3 then
            pcall(function()
                repeat
                    wait()
                    _G.DangerSc = "Lv Infinite"
                    _G.SailBoats = true
                    _G.TerrorShark = true
                until not _G.DragoV3
                _G.DangerSc = "Lv 1"
                _G.SailBoats = false
                _G.TerrorShark = false
            end)
        end
    end
end)

-- Auto Relic Logic
spawn(function()
    while wait(Sec) do
        if _G.Relic123 then
            pcall(function()
                if workspace.Map:FindFirstChild("DracoTrial") then
                    replicated.Remotes["DracoTrial"]:InvokeServer()
                    wait(.5)
                    
                    local RelicSpots = {
                        CFrame.new(-39934.9765625, 10685.359375, 22999.34375),
                        CFrame.new(-40511.25390625, 9376.4013671875, 23458.37890625),
                        CFrame.new(-39914.65625, 10685.384765625, 23000.177734375),
                        CFrame.new(-40045.83203125, 9376.3984375, 22791.287109375),
                        CFrame.new(-39908.5, 10685.405273438, 22990.04296875),
                        CFrame.new(-39609.5, 9376.400390625, 23472.94335975)
                    }
                    
                    for _, spot in ipairs(RelicSpots) do
                        repeat
                            wait()
                            _tp(spot)
                        until not _G.Relic123 or (spot.Position - Root.Position).Magnitude <= 10
                        wait(2.5)
                    end
                else
                    local TrialTeleport = workspace.Map.PrehistoricIsland:FindFirstChild("TrialTeleport")
                    if TrialTeleport and TrialTeleport:IsA("Part") then
                        _tp(CFrame.new(TrialTeleport.Position))
                    end
                end
            end)
        end
    end
end)

-- Train Drago Logic
spawn(function()
    while wait(Sec) do
        if _G.TrainDrago then
            pcall(function()
                local DragonMobs = {"Venomous Assailant", "Hydra Enforcer"}
                local RaceEnergy = plr.Character and plr.Character:FindFirstChild("RaceEnergy")
                
                if RaceEnergy and RaceEnergy.Value == 1 then
                    vim1:SendKeyEvent(true, "Y", false, game)
                    replicated.Remotes.CommF_:InvokeServer("UpgradeRace", "Buy", 2)
                    _tp(CFrame.new(4620.6157226562, 1002.2954711914, 399.08688354492))
                elseif plr.Character:FindFirstChild("RaceTransformed") and plr.Character.RaceTransformed.Value == false then
                    local mob = GetConnectionEnemies(DragonMobs)
                    if mob then
                        repeat
                            wait()
                            G.Kill(mob, _G.TrainDrago)
                        until _G.TrainDrago == false or mob.Humanoid.Health <= 0 or not mob.Parent
                    else
                        _tp(CFrame.new(4620.6157226562, 1002.2954711914, 399.08688354492))
                    end
                end
            end)
        end
    end
end)

-- TpDrago_Prehis Logic
spawn(function()
    while wait(Sec) do
        if _G.TpDrago_Prehis then
            pcall(function()
                local TrialTeleport = workspace.Map.PrehistoricIsland:FindFirstChild("TrialTeleport")
                if TrialTeleport and TrialTeleport:IsA("Part") then
                    _tp(CFrame.new(TrialTeleport.Position))
                end
            end)
        end
    end
end)

-- BuyDrago Logic
spawn(function()
    while wait(Sec) do
        if _G.BuyDrago then
            pcall(function()
                local DojoPos = CFrame.new(5814.4272460938, 1208.3267822266, 884.57855224609)
                if (DojoPos.Position - Root.Position).Magnitude >= 300 then
                    _tp(DojoPos)
                else
                    _tp(DojoPos)
                    local args = {{NPC = "Dragon Wizard", Command = "DragonRace"}}
                    replicated.Modules.Net:FindFirstChild("RF/InteractDragonQuest"):InvokeServer(unpack(args))
                end
            end)
        end
    end
end)

-- DT_Uzoth Logic
spawn(function()
    while wait(Sec) do
        if _G.DT_Uzoth then
            pcall(function()
                local UzothPos = CFrame.new(5661.89014, 1211.31909, 864.836731)
                _tp(UzothPos)
                if (UzothPos.Position - Root.Position).Magnitude <= 25 then
                    local args = {NPC = "Uzoth", Command = "Upgrade"}
                    replicated.Modules.Net:FindFirstChild("RF/InteractDragonQuest"):InvokeServer(args)
                end
            end)
        end
    end
end)

-- ========================================
-- DRAGON HUNTER (Blaze EM) - Từ Gravity Hub
-- ========================================
local function checkDragonHunterQuest()
    local success, result = pcall(function()
        return replicated.Modules.Net["RF/DragonHunter"]:InvokeServer({Context = "Check"})
    end)
    
    if success and result and result.Text then
        if string.find(result.Text, "Defeat") then
            local mobName = nil
            if string.find(result.Text, "Hydra Enforcer") then mobName = "Hydra Enforcer" end
            if string.find(result.Text, "Venomous Assailant") then mobName = "Venomous Assailant" end
            return "kill", mobName
        elseif string.find(result.Text, "Destroy") then
            return "destroy", nil
        end
    end
    return nil, nil
end

local function backToDojo()
    for _, notif in pairs(plr.PlayerGui.Notifications:GetChildren()) do
        if notif.Name == "NotificationTemplate" and string.find(notif.Text, "Head back to the Dojo") then
            return true
        end
    end
    return false
end

spawn(function()
    while wait() do
        if _G.FarmBlazeEM then
            pcall(function()
                local questType, mobName = checkDragonHunterQuest()
                
                if questType and not backToDojo() then
                    if questType == "kill" and mobName then
                        local mob = GetConnectionEnemies(mobName)
                        if mob then
                            repeat
                                wait()
                                if mob and mob:FindFirstChild("HumanoidRootPart") then
                                    _tp(mob.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                    G.Kill(mob, _G.FarmBlazeEM)
                                end
                            until not _G.FarmBlazeEM or not mob or not mob.Parent or mob.Humanoid.Health <= 0 or backToDojo()
                        else
                            local SpawnPos = (mobName == "Hydra Enforcer") and CFrame.new(4620.6157226562, 1002.2954711914, 399.08688354492) or CFrame.new(4674.92676, 1134.82654, 996.308838)
                            _tp(SpawnPos)
                        end
                    elseif questType == "destroy" then
                        local Bamboo = workspace.Map.Waterfall.IslandModel:FindFirstChild("Meshes/bambootree", true)
                        if Bamboo then
                            repeat
                                wait()
                                _tp(Bamboo.CFrame * CFrame.new(4, 0, 0))
                                if (Bamboo.Position - Root.Position).Magnitude <= 200 then
                                    MousePos = Bamboo.Position
                                    UsePrehistoricSkills()
                                end
                            until not _G.FarmBlazeEM or not questType or backToDojo()
                        end
                    end
                else
                    _tp(CFrame.new(5813, 1208, 884))
                end
            end)
        end
    end
end)

-- Auto collect Ember
spawn(function()
    while wait(.1) do
        if _G.FarmBlazeEM then
            pcall(function()
                if workspace:FindFirstChild("EmberTemplate") and workspace.EmberTemplate:FindFirstChild("Part") then
                    _tp(workspace.EmberTemplate.Part.CFrame)
                end
            end)
        end
    end
end)

v8:AddSection({"Mirage Island / Full Moon"})

-- Full Moon Status
local FullMoonStatus = v8:AddParagraph({
    Title = "Full Moon Status",
    Desc = "Checking..."
})

-- Mirage Island Status
local MirageIslandStatus = v8:AddParagraph({
    Title = "Mirage Island Status",
    Desc = "Checking..."
})

-- Update Moon Status
task.spawn(function()
    while task.wait(1) do
        pcall(function()
            local moonId = Getmoon()
            
            local moonPhases = {
                ["http://www.roblox.com/asset/?id=9709135895"] = "Moon: 0/8",
                ["http://www.roblox.com/asset/?id=9709139597"] = "Moon: 1/8",
                ["http://www.roblox.com/asset/?id=9709143733"] = "Moon: 2/8",
                ["http://www.roblox.com/asset/?id=9709149052"] = "Moon: 3/8 [Next Night]",
                ["http://www.roblox.com/asset/?id=9709149431"] = "Moon: 4/8 [Full Moon]",
                ["http://www.roblox.com/asset/?id=9709149680"] = "Moon: 5/8 [Last Night]",
                ["http://www.roblox.com/asset/?id=9709150086"] = "Moon: 6/8",
                ["http://www.roblox.com/asset/?id=9709150401"] = "Moon: 7/8"
            }
            
            FullMoonStatus:SetDesc(moonPhases[moonId] or "Moon: 0/8")
        end)
    end
end)

-- Update Mirage Status
task.spawn(function()
    while task.wait(1) do
        pcall(function()
            if workspace.Map:FindFirstChild("MysticIsland") or workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island") then
                MirageIslandStatus:SetDesc("✅ Mirage Island Active")
            else
                MirageIslandStatus:SetDesc("❌ Not Found")
            end
        end)
    end
end)

-- ========================================
-- MIRAGE ISLAND FEATURES
-- ========================================
v8:AddSection({"Mirage Island Features"})

-- Auto Find Mirage Island
v8:AddToggle({
    Name = "Auto Find Mirage Island",
    Default = GetSetting("FindMirage_Save", false),
    Callback = function(Value)
        _G.FindMirage = Value
        _G.SaveData["FindMirage_Save"] = Value
        SaveSettings()
    end
})

-- Auto Tween To Mirage Island
v8:AddToggle({
    Name = "Auto Tween To Mirage Island",
    Default = GetSetting("AutoMysticIsland_Save", false),
    Callback = function(Value)
        _G.AutoMysticIsland = Value
        _G.SaveData["AutoMysticIsland_Save"] = Value
        SaveSettings()
    end
})

-- Auto Tween To Highest Point
v8:AddToggle({
    Name = "Auto Tween To Highest Point",
    Default = GetSetting("HighestMirage_Save", false),
    Callback = function(Value)
        _G.HighestMirage = Value
        _G.SaveData["HighestMirage_Save"] = Value
        SaveSettings()
    end
})

-- Esp Mirage Island
v8:AddToggle({
    Name = "Esp Mirage Island",
    Default = GetSetting("MirageIslandESP_Save", false),
    Callback = function(Value)
        MirageIslandESP = Value
        _G.SaveData["MirageIslandESP_Save"] = Value
        SaveSettings()
    end
})

-- Auto Collect Mirage Chest
v8:AddToggle({
    Name = "Auto Collect Mirage Chest",
    Default = GetSetting("FarmChestM_Save", false),
    Callback = function(Value)
        _G.FarmChestM = Value
        _G.SaveData["FarmChestM_Save"] = Value
        SaveSettings()
    end
})

-- Change Transparency (See Mirage)
v8:AddToggle({
    Name = "Change Transparency (See Mirage)",
    Default = GetSetting("MirageSeeThrough_Save", false),
    Callback = function(Value)
        _G.can = Value
        _G.SaveData["MirageSeeThrough_Save"] = Value
        SaveSettings()
    end
})

-- Auto Collect Gear
v8:AddToggle({
    Name = "Auto Collect Gear",
    Default = GetSetting("TPGEAR_Save", false),
    Callback = function(Value)
        _G.TPGEAR = Value
        _G.SaveData["TPGEAR_Save"] = Value
        SaveSettings()
    end
})

-- ========================================
-- LOGIC MIRAGE ISLAND
-- ========================================

-- Auto Find Mirage Island Logic
spawn(function()
    while wait() do
        if _G.FindMirage then
            pcall(function()
                if not workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island", true) then
                    local MyBoat = CheckBoat()
                    
                    if not MyBoat then
                        local BoatPos = CFrame.new(-16927.451, 9.086, 433.864)
                        TeleportToTarget(BoatPos)
                        if (BoatPos.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                            replicated.Remotes.CommF_:InvokeServer("BuyBoat", _G.SelectedBoat or "Guardian")
                        end
                    else
                        if plr.Character.Humanoid.Sit == false then
                            local SeatPos = MyBoat.VehicleSeat.CFrame * CFrame.new(0, 1, 0)
                            _tp(SeatPos)
                        else
                            local TargetPos = CFrame.new(-10000000, 31, 37016.25)
                            repeat
                                wait()
                                if CheckEnemiesBoat() or CheckTerrorShark() or CheckPirateGrandBrigade() then
                                    _tp(CFrame.new(-10000000, 150, 37016.25))
                                else
                                    _tp(CFrame.new(-10000000, 31, 37016.25))
                                end
                            until not _G.FindMirage or (TargetPos.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 or workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island") or plr.Character.Humanoid.Sit == false
                            plr.Character.Humanoid.Sit = false
                        end
                    end
                else
                    _tp(workspace.Map.MysticIsland.Center.CFrame * CFrame.new(0, 300, 0))
                end
            end)
        end
    end
end)

-- Auto Tween To Mirage Island
spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if _G.AutoMysticIsland then
                for _, loc in pairs(workspace._WorldOrigin.Locations:GetChildren()) do
                    if loc.Name == "Mirage Island" then
                        _tp(loc.CFrame * CFrame.new(0, 333, 0))
                    end
                end
            end
        end)
    end
end)

-- Auto Tween To Highest Point
spawn(function()
    while wait(Sec) do
        if _G.HighestMirage then
            pcall(function()
                if workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island", true) then
                    _tp(workspace.Map.MysticIsland.Center.CFrame * CFrame.new(0, 400, 0))
                end
            end)
        end
    end
end)

-- Change Transparency (See Mirage)
spawn(function()
    while wait(Sec) do
        if _G.can then
            pcall(function()
                local MysticIsland = workspace.Map:FindFirstChild("MysticIsland")
                if MysticIsland then
                    for _, part in pairs(MysticIsland:GetChildren()) do
                        if part.Name == "Part" then
                            if part.ClassName == "MeshPart" then
                                part.Transparency = 0
                            else
                                part.Transparency = 1
                            end
                        end
                    end
                end
            end)
        end
    end
end)

-- Auto Collect Gear
spawn(function()
    while wait(0.1) do
        if _G.TPGEAR then
            pcall(function()
                local MysticIsland = workspace.Map:FindFirstChild("MysticIsland")
                if MysticIsland then
                    for _, part in pairs(MysticIsland:GetChildren()) do
                        if part.Name == "Part" and part.ClassName == "MeshPart" then
                            _tp(part.CFrame)
                        end
                    end
                end
            end)
        end
    end
end)

-- Auto Collect Mirage Chest
spawn(function()
    while wait(0.2) do
        if _G.FarmChestM then
            pcall(function()
                local MysticIsland = workspace.Map:FindFirstChild("MysticIsland")
                if MysticIsland and MysticIsland:FindFirstChild("Chests") then
                    if MysticIsland.Chests:FindFirstChild("DiamondChest") or MysticIsland.Chests:FindFirstChild("FragChest") then
                        local CollectionService = game:GetService("CollectionService")
                        local Chests = CollectionService:GetTagged("_ChestTagged")
                        local minDist, nearestChest = math.huge, nil
                        local myPos = plr.Character and plr.Character:GetPivot().Position
                        
                        if myPos then
                            for _, chest in pairs(Chests) do
                                local dist = (chest:GetPivot().Position - myPos).Magnitude
                                if not chest:GetAttribute("IsDisabled") and dist < minDist then
                                    minDist = dist
                                    nearestChest = chest
                                end
                            end
                        end
                        
                        if nearestChest then
                            _tp(nearestChest:GetPivot())
                        end
                    end
                end
            end)
        end
    end
end)

-- ========================================
-- ADVANCED FRUIT DEALER (Mirage)
-- ========================================
v8:AddSection({"Advanced Fruit Dealer"})

v8:AddToggle({
    Name = "Auto Tween Advanced Fruit Dealer",
    Default = GetSetting("Addealer_Save", false),
    Callback = function(Value)
        _G.Addealer = Value
        _G.SaveData["Addealer_Save"] = Value
        SaveSettings()
    end
})

spawn(function()
    while wait() do
        if _G.Addealer then
            pcall(function()
                for _, npc in pairs(replicated.NPCs:GetChildren()) do
                    if npc.Name == "Advanced Fruit Dealer" then
                        _tp(npc.HumanoidRootPart.CFrame)
                    end
                end
            end)
        end
    end
end)

-- ========================================
-- RACE V4 / TEMPLE OF TIME
-- ========================================
v8:AddSection({"Race V4 / Temple of Time"})

-- Teleport to Temple of Time
v8:AddButton({
    Name = "Teleport to Temple of Time",
    Callback = function()
        pcall(function()
            local TemplePos = CFrame.new(28286.35546875, 14895.301757812, 102.62469482422)
            
            if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                plr.Character.HumanoidRootPart.CFrame = TemplePos
            end
            
            -- Load Temple if not exists
            if not workspace.Map:FindFirstChild("Temple of Time") and World3 then
                local MapStash = replicated:FindFirstChild("MapStash")
                if MapStash and MapStash:FindFirstChild("Temple of Time") then
                    MapStash["Temple of Time"].Parent = workspace.Map
                end
            end
        end)
    end
})

-- Teleport to Ancient One
v8:AddButton({
    Name = "Teleport to Ancient One",
    Callback = function()
        pcall(function()
            local TemplePos = CFrame.new(28286.35546875, 14895.301757812, 102.62469482422)
            local AncientPos = CFrame.new(28981.552734375, 14888.426757812, -120.24584960938)
            
            if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                plr.Character.HumanoidRootPart.CFrame = TemplePos
            end
            
            -- Load Temple if not exists
            if not workspace.Map:FindFirstChild("Temple of Time") and World3 then
                local MapStash = replicated:FindFirstChild("MapStash")
                if MapStash and MapStash:FindFirstChild("Temple of Time") then
                    MapStash["Temple of Time"].Parent = workspace.Map
                end
            end
            
            task.wait(2)
            _tp(AncientPos)
        end)
    end
})

-- Teleport to Ancient Clock
v8:AddButton({
    Name = "Teleport to Ancient Clock",
    Callback = function()
        pcall(function()
            local TemplePos = CFrame.new(28286.35546875, 14895.301757812, 102.62469482422)
            local ClockPos = CFrame.new(29549, 15069, -88)
            
            if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                plr.Character.HumanoidRootPart.CFrame = TemplePos
            end
            
            -- Load Temple if not exists
            if not workspace.Map:FindFirstChild("Temple of Time") and World3 then
                local MapStash = replicated:FindFirstChild("MapStash")
                if MapStash and MapStash:FindFirstChild("Temple of Time") then
                    MapStash["Temple of Time"].Parent = workspace.Map
                end
            end
            
            task.delay(2, function()
                _tp(ClockPos)
            end)
        end)
    end
})

-- Talk With Stone
v8:AddButton({
    Name = "Talk With Stone",
    Callback = function()
        pcall(function()
            replicated.Remotes.CommF_:InvokeServer("RaceV4Progress", "Begin")
            replicated.Remotes.CommF_:InvokeServer("RaceV4Progress", "Check")
            replicated.Remotes.CommF_:InvokeServer("RaceV4Progress", "Teleport")
            replicated.Remotes.CommF_:InvokeServer("RaceV4Progress", "Continue")
            
            bearlib:Notify({
                Title = "Race V4",
                Message = "Talked with Stone",
                Duration = 3
            })
        end)
    end
})

-- Tiers V4 Status
local TiersStatus = v8:AddParagraph({
    Title = "Tiers V4 Status",
    Desc = "Checking..."
})

task.spawn(function()
    while task.wait(1) do
        pcall(function()
            if plr.Data and plr.Data.Race and plr.Data.Race:FindFirstChild("C") then
                TiersStatus:SetDesc("Tiers - V4: " .. tostring(plr.Data.Race.C.Value))
            else
                TiersStatus:SetDesc("Tiers - V4: 0")
            end
        end)
    end
end)

-- ========================================
-- RACE TRIALS
-- ========================================
v8:AddSection({"Trials Quest V4"})

-- Auto Pull Lever
v8:AddToggle({
    Name = "Auto Pull Lever",
    Default = GetSetting("Lver_Save", false),
    Callback = function(Value)
        _G.Lver = Value
        _G.SaveData["Lver_Save"] = Value
        SaveSettings()
    end
})

-- Auto Train V4
v8:AddToggle({
    Name = "Auto Train V4",
    Default = GetSetting("AcientOne_Save", false),
    Callback = function(Value)
        _G.AcientOne = Value
        _G.SaveData["AcientOne_Save"] = Value
        SaveSettings()
    end
})

-- Auto Teleport to Race Doors
v8:AddToggle({
    Name = "Auto Teleport to Race Doors",
    Default = GetSetting("TPDoor_Save", false),
    Callback = function(Value)
        _G.TPDoor = Value
        _G.SaveData["TPDoor_Save"] = Value
        SaveSettings()
    end
})

-- Auto Complete Trials
v8:AddToggle({
    Name = "Auto Complete Trials",
    Default = GetSetting("Complete_Trials_Save", false),
    Callback = function(Value)
        _G.Complete_Trials = Value
        _G.SaveData["Complete_Trials_Save"] = Value
        SaveSettings()
    end
})

-- Auto Kill Player After Trial
v8:AddToggle({
    Name = "Auto Kill Player After Trial",
    Default = GetSetting("Defeating_Save", false),
    Callback = function(Value)
        _G.Defeating = Value
        _G.SaveData["Defeating_Save"] = Value
        SaveSettings()
    end
})

-- ========================================
-- LOGIC RACE TRIALS
-- ========================================

-- Auto Pull Lever Logic
spawn(function()
    while wait(Sec) do
        if _G.Lver then
            pcall(function()
                local Temple = workspace.Map:FindFirstChild("Temple of Time")
                if Temple then
                    for _, obj in pairs(Temple:GetDescendants()) do
                        if obj.Name == "ProximityPrompt" then
                            fireproximityprompt(obj, math.huge)
                        end
                    end
                end
            end)
        end
    end
end)

-- Auto Train V4 Logic
spawn(function()
    while wait(Sec) do
        if _G.AcientOne then
            pcall(function()
                local BoneMobs = {"Reborn Skeleton", "Living Zombie", "Demonic Soul", "Posessed Mummy"}
                local RaceEnergy = plr.Character and plr.Character:FindFirstChild("RaceEnergy")
                local RaceTransformed = plr.Character and plr.Character:FindFirstChild("RaceTransformed")
                
                if RaceEnergy and RaceEnergy.Value == 1 then
                    vim1:SendKeyEvent(true, "Y", false, game)
                    replicated.Remotes.CommF_:InvokeServer("UpgradeRace", "Buy")
                    _tp(CFrame.new(-8987.041015625, 215.86206054688, 5886.7104492188))
                elseif RaceTransformed and RaceTransformed.Value == false then
                    local mob = GetConnectionEnemies(BoneMobs)
                    if mob then
                        repeat
                            wait()
                            G.Kill(mob, _G.AcientOne)
                        until _G.AcientOne == false or mob.Humanoid.Health <= 0 or not mob.Parent
                    else
                        _tp(CFrame.new(-9495.6806640625, 453.58624267578, 5977.3486328125))
                    end
                end
            end)
        end
    end
end)

-- Auto Teleport to Race Doors Logic
spawn(function()
    while wait(Sec) do
        if _G.TPDoor then
            pcall(function()
                local race = tostring(plr.Data.Race.Value)
                local doorPositions = {
                    Mink = CFrame.new(29020.66015625, 14889.426757812, -379.2682800293),
                    Fishman = CFrame.new(28224.056640625, 14889.426757812, -210.58720397949),
                    Cyborg = CFrame.new(28492.4140625, 14894.426757812, -422.11001586914),
                    Skypiea = CFrame.new(28967.408203125, 14918.075195312, 234.31198120117),
                    Ghoul = CFrame.new(28672.720703125, 14889.127929688, 454.59616088867),
                    Human = CFrame.new(29237.294921875, 14889.426757812, -206.94955444336)
                }
                
                if doorPositions[race] then
                    _tp(doorPositions[race])
                end
            end)
        end
    end
end)

-- Get Sea Beast for Fishman Trial
local function GetSeaBeastTrial()
    if not workspace.Map:FindFirstChild("FishmanTrial") then return nil end
    
    local TrialLoc = workspace._WorldOrigin.Locations:FindFirstChild("Trial of Water")
    if TrialLoc then
        for _, beast in pairs(workspace.SeaBeasts:GetChildren()) do
            if beast:FindFirstChild("HumanoidRootPart") and beast:FindFirstChild("Health") and beast.Health.Value > 0 then
                local dist = (beast.HumanoidRootPart.Position - TrialLoc.Position).Magnitude
                if dist <= 1500 then
                    return beast
                end
            end
        end
    end
    return nil
end

-- Auto Complete Trials Logic
spawn(function()
    while wait(Sec) do
        if _G.Complete_Trials then
            pcall(function()
                local race = tostring(plr.Data.Race.Value)
                
                -- Mink Trial
                if race == "Mink" then
                    notween(workspace.Map.MinkTrial.Ceiling.CFrame * CFrame.new(0, -20, 0))
                
                -- Fishman Trial
                elseif race == "Fishman" then
                    local beast = GetSeaBeastTrial()
                    if beast then
                        repeat
                            task.wait()
                            _tp(CFrame.new(beast.HumanoidRootPart.Position.X, workspace.Map["WaterBase-Plane"].Position.Y + 300, beast.HumanoidRootPart.Position.Z))
                            MousePos = beast.HumanoidRootPart.Position
                            
                            -- Use all skills
                            Useskills("Melee", "Z"); Useskills("Melee", "X"); Useskills("Melee", "C")
                            wait(.1)
                            Useskills("Sword", "Z"); Useskills("Sword", "X")
                            wait(.1)
                            Useskills("Blox Fruit", "Z"); Useskills("Blox Fruit", "X"); Useskills("Blox Fruit", "C")
                            wait(.1)
                            Useskills("Gun", "Z"); Useskills("Gun", "X")
                        until _G.Complete_Trials == false or not beast or not beast.Parent or beast.Health.Value <= 0
                    end
                
                -- Cyborg Trial
                elseif race == "Cyborg" then
                    _tp(workspace.Map.CyborgTrial.Floor.CFrame * CFrame.new(0, 500, 0))
                
                -- Skypiea Trial
                elseif race == "Skypiea" then
                    notween(workspace.Map.SkyTrial.Model.FinishPart.CFrame)
                
                -- Human/Ghoul Trial
                elseif race == "Human" or race == "Ghoul" then
                    local mobs = {"Ancient Vampire", "Ancient Zombie"}
                    local mob = GetConnectionEnemies(mobs)
                    if mob then
                        repeat
                            wait()
                            G.Kill(mob, _G.Complete_Trials)
                        until _G.Complete_Trials == false or not mob.Parent or mob.Humanoid.Health <= 0
                    end
                end
            end)
        end
    end
end)

-- Auto Kill Player After Trial Logic
spawn(function()
    while task.wait(Sec) do
        if _G.Defeating then
            pcall(function()
                for _, player in pairs(workspace.Characters:GetChildren()) do
                    if player.Name ~= plr.Name then
                        if player:FindFirstChild("Humanoid") and player.Humanoid.Health > 0 and player:FindFirstChild("HumanoidRootPart") then
                            local dist = (Root.Position - player.HumanoidRootPart.Position).Magnitude
                            if dist <= 250 then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    _tp(player.HumanoidRootPart.CFrame * CFrame.new(0, 0, 15))
                                    sethiddenproperty(plr, "SimulationRadius", math.huge)
                                until _G.Defeating == false or player.Humanoid.Health <= 0 or not player.Parent
                            end
                        end
                    end
                end
            end)
        end
    end
end)

-- ========================================
-- LOOK AT MOON / AUTO V3/V4
-- ========================================
v8:AddSection({"Moon / Race Abilities"})

-- Auto Look At Moon
v8:AddToggle({
    Name = "Auto Look At Moon",
    Default = GetSetting("LookM_Save", false),
    Callback = function(Value)
        LookM = Value
        _G.SaveData["LookM_Save"] = Value
        SaveSettings()
    end
})

-- Look Moon + Auto V3
v8:AddToggle({
    Name = "Look Moon + Auto V3",
    Default = GetSetting("LookMV3_Save", false),
    Callback = function(Value)
        LookMV3 = Value
        _G.SaveData["LookMV3_Save"] = Value
        SaveSettings()
    end
})

-- Move Camera to Moon Function
local function MoveCamToMoon()
    local moonDir = Lighting:GetMoonDirection()
    workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, workspace.CurrentCamera.CFrame.Position + moonDir)
    if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(plr.Character.HumanoidRootPart.Position, plr.Character.HumanoidRootPart.Position + moonDir)
    end
end

-- Look At Moon Logic
task.spawn(function()
    while task.wait(0.1) do
        if LookM then
            MoveCamToMoon()
            wait(.1)
            replicated.Remotes.CommE:FireServer("ActivateAbility")
        end
    end
end)

-- Look Moon + Auto V3 Logic
task.spawn(function()
    while task.wait(0.1) do
        if LookMV3 then
            MoveCamToMoon()
            replicated.Remotes.CommE:FireServer("ActivateAbility")
            vim1:SendKeyEvent(true, "T", false, game)
            wait(.5)
            vim1:SendKeyEvent(false, "T", false, game)
        end
    end
end)

-- ========================================
-- UPGRADE RACES V2 AND V3
-- ========================================
v8:AddSection({"Upgrade Races V2 And V3"})

-- Auto Upgrade Mink
v8:AddToggle({
    Name = "Auto Upgrade Mink",
    Default = GetSetting("Auto_Mink_Save", false),
    Callback = function(Value)
        _G.Auto_Mink = Value
        _G.SaveData["Auto_Mink_Save"] = Value
        SaveSettings()
    end
})

-- Auto Upgrade Human
v8:AddToggle({
    Name = "Auto Upgrade Human",
    Default = GetSetting("Auto_Human_Save", false),
    Callback = function(Value)
        _G.Auto_Human = Value
        _G.SaveData["Auto_Human_Save"] = Value
        SaveSettings()
    end
})

-- Auto Upgrade Angel (Skypiea)
v8:AddToggle({
    Name = "Auto Upgrade Angel",
    Default = GetSetting("Auto_Skypiea_Save", false),
    Callback = function(Value)
        _G.Auto_Skypiea = Value
        _G.SaveData["Auto_Skypiea_Save"] = Value
        SaveSettings()
    end
})

-- Auto Upgrade Fishman
v8:AddToggle({
    Name = "Auto Upgrade Fishman",
    Default = GetSetting("Auto_Fish_Save", false),
    Callback = function(Value)
        _G.Auto_Fish = Value
        _G.SaveData["Auto_Fish_Save"] = Value
        SaveSettings()
    end
})

-- ========================================
-- LOGIC UPGRADE RACES (từ Gravity Hub)
-- ========================================

-- Auto Upgrade Mink Logic
spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.Auto_Mink then
                local alchemist = replicated.Remotes.CommF_:InvokeServer("Alchemist", "1")
                
                if alchemist ~= 2 then
                    if alchemist == 0 then
                        replicated.Remotes.CommF_:InvokeServer("Alchemist", "2")
                    elseif alchemist == 1 then
                        if not GetBP("Flower 1") then
                            _tp(workspace.Flower1.CFrame)
                        elseif not GetBP("Flower 2") then
                            _tp(workspace.Flower2.CFrame)
                        elseif not GetBP("Flower 3") then
                            local mob = GetConnectionEnemies("Swan Pirate")
                            if mob then
                                repeat
                                    wait()
                                    G.Kill(mob, _G.Auto_Mink)
                                until GetBP("Flower 3") or not mob.Parent or mob.Humanoid.Health <= 0 or _G.Auto_Mink == false
                            else
                                _tp(CFrame.new(980.09851074219, 121.33129882812, 1287.2093505859))
                            end
                        end
                    elseif alchemist == 2 then
                        replicated.Remotes.CommF_:InvokeServer("Alchemist", "3")
                    end
                elseif replicated.Remotes.CommF_:InvokeServer("Wenlocktoad", "1") == 0 then
                    replicated.Remotes.CommF_:InvokeServer("Wenlocktoad", "2")
                elseif replicated.Remotes.CommF_:InvokeServer("Wenlocktoad", "1") == 1 then
                    _G.AutoFarmChest = true
                else
                    _G.AutoFarmChest = false
                end
            end
        end)
    end
end)

-- Auto Upgrade Human Logic
spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.Auto_Human then
                local alchemist = replicated.Remotes.CommF_:InvokeServer("Alchemist", "1")
                
                if alchemist ~= -2 then
                    if alchemist == 0 then
                        replicated.Remotes.CommF_:InvokeServer("Alchemist", "2")
                    elseif alchemist == 1 then
                        if not GetBP("Flower 1") then
                            _tp(workspace.Flower1.CFrame)
                        elseif not GetBP("Flower 2") then
                            _tp(workspace.Flower2.CFrame)
                        elseif not GetBP("Flower 3") then
                            local mob = GetConnectionEnemies("Swan Pirate")
                            if mob then
                                repeat
                                    wait()
                                    G.Kill(mob, _G.Auto_Human)
                                until GetBP("Flower 3") or not mob.Parent or mob.Humanoid.Health <= 0 or _G.Auto_Human == false
                            else
                                _tp(CFrame.new(980.09851074219, 121.33129882812, 1287.2093505859))
                            end
                        end
                    elseif alchemist == 2 then
                        replicated.Remotes.CommF_:InvokeServer("Alchemist", "3")
                    end
                elseif replicated.Remotes.CommF_:InvokeServer("Wenlocktoad", "1") == 0 then
                    replicated.Remotes.CommF_:InvokeServer("Wenlocktoad", "2")
                elseif replicated.Remotes.CommF_:InvokeServer("Wenlocktoad", "1") == 1 then
                    local bosses = {"Fajita", "Jeremy", "Diamond"}
                    for _, bossName in ipairs(bosses) do
                        local boss = GetConnectionEnemies(bossName)
                        if boss then
                            repeat
                                wait()
                                G.Kill(boss, _G.Auto_Human)
                            until boss.Humanoid.Health <= 0 or not boss.Parent or not _G.Auto_Human
                        else
                            local bossPositions = {
                                Fajita = CFrame.new(-2172.7399902344, 103.32216644287, -4015.025390625),
                                Jeremy = CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109),
                                Diamond = CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407)
                            }
                            _tp(bossPositions[bossName])
                        end
                    end
                end
            end
        end)
    end
end)

-- Auto Upgrade Angel Logic
spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.Auto_Skypiea then
                local alchemist = replicated.Remotes.CommF_:InvokeServer("Alchemist", "1")
                
                if alchemist ~= -2 then
                    if alchemist == 0 then
                        replicated.Remotes.CommF_:InvokeServer("Alchemist", "2")
                    elseif alchemist == 1 then
                        if not GetBP("Flower 1") then
                            _tp(workspace.Flower1.CFrame)
                        elseif not GetBP("Flower 2") then
                            _tp(workspace.Flower2.CFrame)
                        elseif not GetBP("Flower 3") then
                            local mob = GetConnectionEnemies("Swan Pirate")
                            if mob then
                                repeat
                                    wait()
                                    G.Kill(mob, _G.Auto_Skypiea)
                                until GetBP("Flower 3") or not mob.Parent or mob.Humanoid.Health <= 0 or _G.Auto_Skypiea == false
                            else
                                _tp(CFrame.new(980.09851074219, 121.33129882812, 1287.2093505859))
                            end
                        end
                    elseif alchemist == 2 then
                        replicated.Remotes.CommF_:InvokeServer("Alchemist", "3")
                    end
                elseif replicated.Remotes.CommF_:InvokeServer("Wenlocktoad", "1") == 0 then
                    replicated.Remotes.CommF_:InvokeServer("Wenlocktoad", "2")
                elseif replicated.Remotes.CommF_:InvokeServer("Wenlocktoad", "1") == 1 then
                    for _, player in pairs(game.Players:GetChildren()) do
                        if player.Name ~= plr.Name and tostring(player.Data.Race.Value) == "Skypiea" then
                            repeat
                                task.wait()
                                _tp(player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 8, 0) * CFrame.Angles(math.rad(-45), 0, 0))
                            until player.Character.Humanoid.Health <= 0 or _G.Auto_Skypiea == false
                        end
                    end
                end
            end
        end)
    end
end)

-- Auto Upgrade Fishman Logic
spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.Auto_Fish then
                local alchemist = replicated.Remotes.CommF_:InvokeServer("Alchemist", "1")
                
                if alchemist ~= -2 then
                    if alchemist == 0 then
                        replicated.Remotes.CommF_:InvokeServer("Alchemist", "2")
                    elseif alchemist == 1 then
                        if not GetBP("Flower 1") then
                            _tp(workspace.Flower1.CFrame)
                        elseif not GetBP("Flower 2") then
                            _tp(workspace.Flower2.CFrame)
                        elseif not GetBP("Flower 3") then
                            local mob = GetConnectionEnemies("Swan Pirate")
                            if mob then
                                repeat
                                    wait()
                                    G.Kill(mob, _G.Auto_Fish)
                                until GetBP("Flower 3") or not mob.Parent or mob.Humanoid.Health <= 0 or _G.Auto_Fish == false
                            else
                                _tp(CFrame.new(980.09851074219, 121.33129882812, 1287.2093505859))
                            end
                        end
                    elseif alchemist == 2 then
                        replicated.Remotes.CommF_:InvokeServer("Alchemist", "3")
                    end
                elseif replicated.Remotes.CommF_:InvokeServer("Wenlocktoad", "1") == 0 then
                    replicated.Remotes.CommF_:InvokeServer("Wenlocktoad", "2")
                elseif replicated.Remotes.CommF_:InvokeServer("Wenlocktoad", "1") == 1 then
                    warn("Sea Beast Soon")
                end
            end
        end)
    end
end)

v9:AddSection({"Fruits Options"})

-- Hàm format số (thêm dấu phẩy)
local function formatNumber(num)
    local formatted = tostring(num)
    while true do
        formatted, k = formatted:gsub("^(-?%d+)(%d%d%d)", "%1,%2")
        if k == 0 then break end
    end
    return formatted
end

-- Hàm lấy stock fruit
local function GetFruitStock()
    local result = "Advance Fruit Stock\n"
    
    -- Lấy stock fruit advanced
    local success, advancedStock = pcall(function()
        return replicated.Remotes.CommF_:InvokeServer("GetFruits", true)
    end)
    
    if success and advancedStock then
        local hasFruit = false
        for _, fruit in pairs(advancedStock) do
            if fruit.OnSale then
                hasFruit = true
                result = result .. fruit.Name .. " - $" .. formatNumber(fruit.Price) .. "\n"
            end
        end
        if not hasFruit then
            result = result .. "- No fruit in stock.\n"
        end
    else
        result = result .. "- Error retrieving data.\n"
    end
    
    result = result .. "\nNormal Fruit Stock\n"
    
    -- Lấy stock fruit thường
    local success2, normalStock = pcall(function()
        return replicated.Remotes.CommF_:InvokeServer("GetFruits")
    end)
    
    if success2 and normalStock then
        local hasFruit = false
        for _, fruit in pairs(normalStock) do
            if fruit.OnSale then
                hasFruit = true
                result = result .. fruit.Name .. " - $" .. formatNumber(fruit.Price) .. "\n"
            end
        end
        if not hasFruit then
            result = result .. "- No fruit in stock.\n"
        end
    else
        result = result .. "- Error retrieving data.\n"
    end
    
    return result
end

-- Paragraph hiển thị stock
local StockParagraph = v9:AddParagraph({
    Title = "Fruit Stock",
    Desc = "Loading..."
})

-- Update stock mỗi 60 giây
task.spawn(function()
    -- Update lần đầu
    pcall(function()
        StockParagraph:SetDesc(GetFruitStock())
    end)
    
    -- Update định kỳ
    while task.wait(60) do
        pcall(function()
            StockParagraph:SetDesc(GetFruitStock())
        end)
    end
end)

-- Button refresh stock
v9:AddButton({
    Name = "Refresh Stock Now",
    Callback = function()
        pcall(function()
            StockParagraph:SetDesc(GetFruitStock())
            bearlib:Notify({
                Title = "Fruit Stock",
                Message = "Stock refreshed",
                Duration = 2
            })
        end)
    end
})

-- ========================================
-- FRUIT AUTO FUNCTIONS
-- ========================================
v9:AddSection({"Fruit Auto Functions"})

-- Auto Random Fruit
v9:AddToggle({
    Name = "Auto Random Fruit",
    Default = GetSetting("Random_Auto_Save", false),
    Callback = function(Value)
        _G.Random_Auto = Value
        _G.SaveData["Random_Auto_Save"] = Value
        SaveSettings()
    end
})

spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.Random_Auto then
                replicated.Remotes.CommF_:InvokeServer("Cousin", "Buy")
            end
        end)
    end
end)

-- Auto Drop Fruit
v9:AddToggle({
    Name = "Auto Drop Fruit",
    Default = GetSetting("DropFruit_Save", false),
    Callback = function(Value)
        _G.DropFruit = Value
        _G.SaveData["DropFruit_Save"] = Value
        SaveSettings()
    end
})

spawn(function()
    while wait(Sec) do
        if _G.DropFruit then
            pcall(function()
                DropFruits()
            end)
        end
    end
end)

-- Auto Store Fruit
v9:AddToggle({
    Name = "Auto Store Fruit",
    Default = GetSetting("StoreF_Save", false),
    Callback = function(Value)
        _G.StoreF = Value
        _G.SaveData["StoreF_Save"] = Value
        SaveSettings()
    end
})

spawn(function()
    while wait(Sec) do
        if _G.StoreF then
            pcall(function()
                UpdStFruit()
            end)
        end
    end
end)

-- Auto Tween to Fruit
v9:AddToggle({
    Name = "Auto Tween to Fruit",
    Default = GetSetting("TwFruits_Save", false),
    Callback = function(Value)
        _G.TwFruits = Value
        _G.SaveData["TwFruits_Save"] = Value
        SaveSettings()
    end
})

spawn(function()
    while wait(Sec) do
        if _G.TwFruits then
            pcall(function()
                for _, obj in pairs(workspace:GetChildren()) do
                    if string.find(obj.Name, "Fruit") then
                        _tp(obj.Handle.CFrame)
                    end
                end
            end)
        end
    end
end)

-- Auto Collect Fruit (Bring to you)
v9:AddToggle({
    Name = "Auto Collect Fruit",
    Default = GetSetting("InstanceF_Save", false),
    Callback = function(Value)
        _G.InstanceF = Value
        _G.SaveData["InstanceF_Save"] = Value
        SaveSettings()
    end
})

spawn(function()
    while wait(Sec) do
        if _G.InstanceF then
            pcall(function()
                collectFruits(_G.InstanceF)
            end)
        end
    end
end)

-- ========================================
-- FRUIT SHOP SNIPER
-- ========================================
v9:AddSection({"Fruit Shop Sniper"})

-- Danh sách fruit
local FruitList = {
    "Rocket-Rocket", "Spin-Spin", "Blade-Blade", "Spring-Spring",
    "Bomb-Bomb", "Smoke-Smoke", "Spike-Spike", "Flame-Flame",
    "Ice-Ice", "Sand-Sand", "Dark-Dark", "Eagle-Eagle",
    "Diamond-Diamond", "Light-Light", "Rubber-Rubber", "Ghost-Ghost",
    "Magma-Magma", "Quake-Quake", "Buddha-Buddha", "Love-Love",
    "Creation-Creation", "Spider-Spider", "Sound-Sound",
    "Phoenix-Phoenix", "Portal-Portal", "Lightning-Lightning",
    "Pain-Pain", "Blizzard-Blizzard", "Gravity-Gravity",
    "T-Rex-T-Rex", "Mammoth-Mammoth", "Dough-Dough",
    "Shadow-Shadow", "Venom-Venom", "Gas-Gas",
    "Control-Control", "Spirit-Spirit", "Leopard-Leopard",
    "Yeti-Yeti", "Kitsune-Kitsune", "Dragon-Dragon"
}

-- Dropdown chọn fruit
v9:AddDropdown({
    Name = "Select Fruit to Buy",
    Options = FruitList,
    Default = GetSetting("SelectFruit_Save", "Dough-Dough"),
    Multi = false,
    Callback = function(Value)
        (getgenv()).SelectFruit = Value
        _G.SaveData["SelectFruit_Save"] = Value
        SaveSettings()
    end
})

-- Auto Buy Fruit Shop
v9:AddToggle({
    Name = "Auto Buy Fruit (Shop Sniper)",
    Default = GetSetting("AutoBuyFruitSniper_Save", false),
    Callback = function(Value)
        (getgenv()).AutoBuyFruitSniper = Value
        _G.SaveData["AutoBuyFruitSniper_Save"] = Value
        SaveSettings()
    end
})

spawn(function()
    while wait(1) do
        pcall(function()
            if (getgenv()).AutoBuyFruitSniper and (getgenv()).SelectFruit then
                -- Gọi GetFruits để refresh stock
                replicated.Remotes.CommF_:InvokeServer("GetFruits")
                -- Mua fruit
                replicated.Remotes.CommF_:InvokeServer("PurchaseRawFruit", (getgenv()).SelectFruit)
            end
        end)
    end
end)

-- ========================================
-- FRUIT STOCK CHECKER (Phiên bản nâng cao)
-- ========================================
v9:AddSection({"Fruit Stock Checker"})

-- Hàm kiểm tra fruit cụ thể
local function CheckSpecificFruit(fruitName)
    local success, stock = pcall(function()
        return replicated.Remotes.CommF_:InvokeServer("GetFruits", true)
    end)
    
    if success and stock then
        for _, fruit in pairs(stock) do
            if fruit.Name == fruitName and fruit.OnSale then
                return true, fruit.Price
            end
        end
    end
    
    local success2, normalStock = pcall(function()
        return replicated.Remotes.CommF_:InvokeServer("GetFruits")
    end)
    
    if success2 and normalStock then
        for _, fruit in pairs(normalStock) do
            if fruit.Name == fruitName and fruit.OnSale then
                return true, fruit.Price
            end
        end
    end
    
    return false, nil
end

-- Dropdown chọn fruit để check
v9:AddDropdown({
    Name = "Select Fruit to Check",
    Options = FruitList,
    Default = "Dough-Dough",
    Multi = false,
    Callback = function(Value)
        _G.CheckFruit = Value
    end
})

-- Paragraph hiển thị kết quả check
local FruitCheckResult = v9:AddParagraph({
    Title = "Fruit Status",
    Desc = "Select a fruit to check"
})

-- Button check fruit
v9:AddButton({
    Name = "Check Selected Fruit",
    Callback = function()
        if not _G.CheckFruit then
            FruitCheckResult:SetDesc("Please select a fruit first")
            return
        end
        
        pcall(function()
            local inStock, price = CheckSpecificFruit(_G.CheckFruit)
            if inStock then
                FruitCheckResult:SetDesc("✅ " .. _G.CheckFruit .. " is in stock!\nPrice: $" .. formatNumber(price))
                bearlib:Notify({
                    Title = "Fruit Stock",
                    Message = _G.CheckFruit .. " is in stock!",
                    Duration = 5
                })
            else
                FruitCheckResult:SetDesc("❌ " .. _G.CheckFruit .. " is not in stock")
            end
        end)
    end
})

-- Auto notify when fruit in stock
v9:AddToggle({
    Name = "Auto Notify when Fruit in Stock",
    Default = GetSetting("AutoNotifyFruit_Save", false),
    Callback = function(Value)
        _G.AutoNotifyFruit = Value
        _G.SaveData["AutoNotifyFruit_Save"] = Value
        SaveSettings()
    end
})

-- Check stock mỗi 30 giây và thông báo nếu có
task.spawn(function()
    while task.wait(30) do
        if _G.AutoNotifyFruit and _G.CheckFruit then
            pcall(function()
                local inStock, price = CheckSpecificFruit(_G.CheckFruit)
                if inStock then
                    FruitCheckResult:SetDesc("✅ " .. _G.CheckFruit .. " is in stock!\nPrice: $" .. formatNumber(price))
                    bearlib:Notify({
                        Title = "Fruit Stock Alert!",
                        Message = _G.CheckFruit .. " is now in stock!\nPrice: $" .. formatNumber(price),
                        Duration = 10
                    })
                end
            end)
        end
    end
end)


-- ========================================
-- RAID STATUS
-- ========================================
v10:AddSection({"Raid Status"})

local RaidTimerStatus = v10:AddParagraph({
    Title = "Raid Timer",
    Desc = "Not in raid"
})

local RaidIslandStatus = v10:AddParagraph({
    Title = "Current Island",
    Desc = "None"
})

local RaidMobsStatus = v10:AddParagraph({
    Title = "Mobs Remaining",
    Desc = "0"
})

-- Update status
task.spawn(function()
    while task.wait(1) do
        pcall(function()
            local timer = plr.PlayerGui.Main.TopHUDList.RaidTimer
            if timer and timer.Visible then
                RaidTimerStatus:SetDesc("Active - " .. timer.Text)
            else
                RaidTimerStatus:SetDesc("Not in raid")
            end
        end)
    end
end)

-- ========================================
-- CHIP SELECTION
-- ========================================
v10:AddSection({"Chip Selection"})

local RaidChipList = {
    "Flame", "Ice", "Quake", "Light", "Dark", "String",
    "Rumble", "Magma", "Human: Buddha", "Sand", "Bird: Phoenix", "Dough"
}

_G.SelectChip = _G.SelectChip or "Flame"

v10:AddDropdown({
    Name = "Select Chip",
    Options = RaidChipList,
    Default = GetSetting("Raid_SelectChip", "Flame"),
    Multi = false,
    Callback = function(Value)
        _G.SelectChip = Value
        _G.SaveData["Raid_SelectChip"] = Value
        SaveSettings()
    end
})

-- ========================================
-- BUY CHIP
-- ========================================
v10:AddSection({"Buy Chip"})

v10:AddButton({
    Name = "Buy Chip with Beli",
    Callback = function()
        if not GetBP("Special Microchip") and _G.SelectChip then
            pcall(function()
                replicated.Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip)
            end)
        end
    end
})

v10:AddButton({
    Name = "Buy Chip with Fruit",
    Callback = function()
        if GetBP("Special Microchip") then return end
        pcall(function()
            local fruits = replicated.Remotes.CommF_:InvokeServer("GetFruits")
            for _, fruit in pairs(fruits) do
                if fruit.Price <= 490000 then
                    replicated.Remotes.CommF_:InvokeServer("LoadFruit", fruit.Name)
                    task.wait(0.5)
                    replicated.Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip)
                    break
                end
            end
        end)
    end
})

_G.AutoChipBeli = GetSetting("Raid_AutoChipBeli", false)
v10:AddToggle({
    Name = "Auto Buy Chip (Beli)",
    Default = _G.AutoChipBeli,
    Callback = function(Value)
        _G.AutoChipBeli = Value
        _G.SaveData["Raid_AutoChipBeli"] = Value
        SaveSettings()
    end
})

_G.AutoChipFruit = GetSetting("Raid_AutoChipFruit", false)
v10:AddToggle({
    Name = "Auto Buy Chip (Fruit)",
    Default = _G.AutoChipFruit,
    Callback = function(Value)
        _G.AutoChipFruit = Value
        _G.SaveData["Raid_AutoChipFruit"] = Value
        SaveSettings()
    end
})

-- Auto Buy Chip Loops
task.spawn(function()
    while task.wait(5) do
        if _G.AutoChipBeli and _G.SelectChip then
            pcall(function()
                if not GetBP("Special Microchip") then
                    replicated.Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip)
                end
            end)
        end
    end
end)

task.spawn(function()
    while task.wait(5) do
        if _G.AutoChipFruit and _G.SelectChip then
            pcall(function()
                if not GetBP("Special Microchip") then
                    local fruits = replicated.Remotes.CommF_:InvokeServer("GetFruits")
                    for _, fruit in pairs(fruits) do
                        if fruit.Price <= 490000 then
                            replicated.Remotes.CommF_:InvokeServer("LoadFruit", fruit.Name)
                            task.wait(0.5)
                            replicated.Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip)
                            break
                        end
                    end
                end
            end)
        end
    end
end)

v10:AddToggle({
    Name = "Get Fruit Inventory Below 1M",
    Default = GetSetting("AutoGetFruit_Save", false),
    Callback = function(Value)
        (getgenv()).AutoGetFruit = Value
        _G.SaveData["AutoGetFruit_Save"] = Value
        SaveSettings()
    end
})

spawn(function()
    while wait(1) do
        pcall(function()
            if (getgenv()).AutoGetFruit then
                local cheapFruits = {
                    "Rocket-Rocket", "Spin-Spin", "Chop-Chop",
                    "Spring-Spring", "Bomb-Bomb", "Smoke-Smoke",
                    "Spike-Spike", "Flame-Flame", "Falcon-Falcon",
                    "Ice-Ice", "Sand-Sand", "Dark-Dark",
                    "Ghost-Ghost", "Diamond-Diamond", "Light-Light",
                    "Rubber-Rubber", "Barrier-Barrier"
                }
                
                for _, fruit in ipairs(cheapFruits) do
                    replicated.Remotes.CommF_:InvokeServer("LoadFruit", fruit)
                end
            end
        end)
    end
end)

-- ========================================
-- RAID CONTROLS
-- ========================================
v10:AddSection({"Raid Controls"})

_G.AutoStartRaid = GetSetting("Raid_AutoStartRaid", false)
v10:AddToggle({
    Name = "Auto Start Raid",
    Default = _G.AutoStartRaid,
    Callback = function(Value)
        _G.AutoStartRaid = Value
        _G.SaveData["Raid_AutoStartRaid"] = Value
        SaveSettings()
    end
})

task.spawn(function()
    while task.wait(1) do
        if _G.AutoStartRaid then
            pcall(function()
                local timer = plr.PlayerGui.Main.TopHUDList.RaidTimer
                if timer and timer.Visible then return end
                if not GetBP("Special Microchip") then return end
                
                if World2 then
                    local btn = workspace.Map.CircleIsland.RaidSummon2.Button.Main
                    if btn then
                        if btn:FindFirstChild("ProximityPrompt") then
                            fireproximityprompt(btn.ProximityPrompt)
                        elseif btn:FindFirstChild("ClickDetector") then
                            fireclickdetector(btn.ClickDetector)
                        end
                    end
                elseif World3 then
                    local btn = workspace.Map["Boat Castle"].RaidSummon2.Button.Main
                    if btn then
                        if btn:FindFirstChild("ProximityPrompt") then
                            fireproximityprompt(btn.ProximityPrompt)
                        elseif btn:FindFirstChild("ClickDetector") then
                            fireclickdetector(btn.ClickDetector)
                        end
                    end
                end
            end)
        end
    end
end)

-- ========================================
-- AUTO FARM DUNGEON + NEXT FLOOR
-- ========================================
v10:AddSection({"Auto Farm Dungeon"})

local RaidIslands = {"Island 1", "Island 2", "Island 3", "Island 4", "Island 5"}
local CurrentTargetIsland = nil

local function GetHRP()
    local char = plr.Character
    return char and char:FindFirstChild("HumanoidRootPart")
end

local function GetCurrentIsland()
    local hrp = GetHRP()
    if not hrp then return nil end
    
    local locations = workspace._WorldOrigin.Locations
    local closest = math.huge
    local result = nil
    
    for _, name in ipairs(RaidIslands) do
        local island = locations:FindFirstChild(name)
        if island then
            local dist = (hrp.Position - island.Position).Magnitude
            if dist < closest then
                closest = dist
                result = name
            end
        end
    end
    return result, closest
end

local function HasMobsInIsland(islandName)
    local island = workspace._WorldOrigin.Locations:FindFirstChild(islandName)
    if not island then return false end
    
    for _, mob in pairs(workspace.Enemies:GetChildren()) do
        local hum = mob:FindFirstChild("Humanoid")
        local root = mob:FindFirstChild("HumanoidRootPart")
        if hum and root and hum.Health > 0 then
            if (root.Position - island.Position).Magnitude < 450 then
                return true
            end
        end
    end
    return false
end

local function GetNearestMob()
    local hrp = GetHRP()
    if not hrp then return nil end
    
    local currentIsland = GetCurrentIsland()
    if not currentIsland then return nil end
    
    local island = workspace._WorldOrigin.Locations:FindFirstChild(currentIsland)
    if not island then return nil end
    
    local closest = nil
    local closestDist = math.huge
    
    for _, mob in pairs(workspace.Enemies:GetChildren()) do
        local hum = mob:FindFirstChild("Humanoid")
        local root = mob:FindFirstChild("HumanoidRootPart")
        if hum and root and hum.Health > 0 then
            if (root.Position - island.Position).Magnitude < 450 then
                local dist = (root.Position - hrp.Position).Magnitude
                if dist < closestDist then
                    closestDist = dist
                    closest = mob
                end
            end
        end
    end
    return closest
end

local function MoveToNextIsland()
    local current, _ = GetCurrentIsland()
    if not current then return false end
    
    local idx = table.find(RaidIslands, current)
    if not idx or idx >= #RaidIslands then return false end
    
    local nextName = RaidIslands[idx + 1]
    local nextIsland = workspace._WorldOrigin.Locations:FindFirstChild(nextName)
    
    if nextIsland then
        _tp(nextIsland.CFrame * CFrame.new(0, 45, 120))
        CurrentTargetIsland = nextName
        return true
    end
    return false
end

_G.AutoDungeonFarm = GetSetting("Raid_AutoDungeonFarm", false)
v10:AddToggle({
    Name = "Auto Farm Dungeon + Next Floor",
    Default = _G.AutoDungeonFarm,
    Callback = function(Value)
        _G.AutoDungeonFarm = Value
        _G.SaveData["Raid_AutoDungeonFarm"] = Value
        if not Value then CurrentTargetIsland = nil end
    end
})

task.spawn(function()
    while task.wait(0.3) do
        if not _G.AutoDungeonFarm then 
            RaidIslandStatus:SetDesc("None")
            RaidMobsStatus:SetDesc("0")
            continue 
        end
        
        pcall(function()
            local timer = plr.PlayerGui.Main.TopHUDList.RaidTimer
            if not timer or not timer.Visible then 
                RaidIslandStatus:SetDesc("Not in raid")
                RaidMobsStatus:SetDesc("0")
                return 
            end
            
            local hrp = GetHRP()
            if not hrp then return end
            
            local currentIsland, dist = GetCurrentIsland()
            if currentIsland then
                RaidIslandStatus:SetDesc(currentIsland .. " (" .. math.floor(dist) .. " studs)")
            end
            
            local mobCount = 0
            for _ in pairs(workspace.Enemies:GetChildren()) do mobCount = mobCount + 1 end
            RaidMobsStatus:SetDesc(tostring(mobCount))
            
            local mob = GetNearestMob()
            
            if mob then
                local root = mob:FindFirstChild("HumanoidRootPart")
                if root then
                    if (hrp.Position - root.Position).Magnitude > 15 then
                        _tp(root.CFrame * CFrame.new(0, 20, 0))
                    end
                    
                    if _G.SelectWeapon then
                        EquipWeapon(_G.SelectWeapon)
                    end
                    
                    if G and G.Kill then
                        G.Kill(mob, true)
                    end
                end
            else
                if currentIsland and not HasMobsInIsland(currentIsland) then
                    MoveToNextIsland()
                    task.wait(1)
                end
            end
        end)
    end
end)

-- ========================================
-- TELEPORT FLOORS
-- ========================================
v10:AddSection({"Teleport Floors"})

v10:AddButton({
    Name = "TP to Floor 1 Start",
    Callback = function()
        if World2 then
            _tp(CFrame.new(-4995.0678710938, 315.38330078125, -2955.3999023438))
        elseif World3 then
            _tp(CFrame.new(-5017.40869, 314.844055, -2823.0127))
        end
    end
})

v10:AddButton({
    Name = "TP to Floor 2 Start",
    Callback = function()
        if World2 then
            _tp(CFrame.new(-5134.9584960938, 314.50729370117, -3004.6711425781))
        elseif World3 then
            _tp(CFrame.new(-5156.72607, 313.655548, -2865.62402))
        end
    end
})

v10:AddButton({
    Name = "TP to Floor 3 Start",
    Callback = function()
        if World2 then
            _tp(CFrame.new(-5271.7846679688, 314.50729370117, -3022.3569335938))
        elseif World3 then
            _tp(CFrame.new(-5292.91455, 313.655548, -2887.93799))
        end
    end
})

v10:AddButton({
    Name = "TP to Floor 4 Start",
    Callback = function()
        if World2 then
            _tp(CFrame.new(-5407.0478515625, 314.50729370117, -3003.6403808594))
        elseif World3 then
            _tp(CFrame.new(-5429.59473, 313.655548, -2866.41577))
        end
    end
})

v10:AddButton({
    Name = "TP to Floor 5 Start",
    Callback = function()
        if World2 then
            _tp(CFrame.new(-5528.6049804688, 315.62127685547, -2955.0756835938))
        elseif World3 then
            _tp(CFrame.new(-5550.41895, 314.770203, -2816.70508))
        end
    end
})

-- ========================================
-- AUTO AWAKENING
-- ========================================
v10:AddSection({"Awakening"})

_G.AutoAwaken = GetSetting("Raid_AutoAwaken", false)
v10:AddToggle({
    Name = "Auto Awakening",
    Default = _G.AutoAwaken,
    Callback = function(Value)
        _G.AutoAwaken = Value
        _G.SaveData["Raid_AutoAwaken"] = Value
        SaveSettings()
    end
})

task.spawn(function()
    while wait(2) do
        if _G.AutoAwaken then
            pcall(function()
                replicated.Remotes.CommF_:InvokeServer("Awakener", "Check")
                replicated.Remotes.CommF_:InvokeServer("Awakener", "Awaken")
            end)
        end
    end
end)

-- ========================================
-- LAW/ORDER RAID
-- ========================================
v10:AddSection({"Law/Order Raid"})

v10:AddButton({
    Name = "Buy Law Microchip",
    Callback = function()
        replicated.Remotes.CommF_:InvokeServer("BlackbeardReward", "Microchip", "2")
    end
})

v10:AddButton({
    Name = "Start Law Raid",
    Callback = function()
        if World2 then
            pcall(function()
                fireclickdetector(workspace.Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
            end)
        end
    end
})

_G.AutoBuyLawChip = GetSetting("Raid_AutoBuyLawChip", false)
v10:AddToggle({
    Name = "Auto Buy Law Chip",
    Default = _G.AutoBuyLawChip,
    Callback = function(Value)
        _G.AutoBuyLawChip = Value
        _G.SaveData["Raid_AutoBuyLawChip"] = Value
        SaveSettings()
    end
})

task.spawn(function()
    while task.wait(5) do
        if _G.AutoBuyLawChip then
            pcall(function()
                replicated.Remotes.CommF_:InvokeServer("BlackbeardReward", "Microchip", "2")
            end)
        end
    end
end)

_G.AutoStartLawRaid = GetSetting("Raid_AutoStartLawRaid", false)
v10:AddToggle({
    Name = "Auto Start Law Raid",
    Default = _G.AutoStartLawRaid,
    Callback = function(Value)
        _G.AutoStartLawRaid = Value
        _G.SaveData["Raid_AutoStartLawRaid"] = Value
        SaveSettings()
    end
})

task.spawn(function()
    while task.wait(5) do
        if _G.AutoStartLawRaid and World2 then
            pcall(function()
                fireclickdetector(workspace.Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
            end)
        end
    end
end)

_G.AutoKillOrder = GetSetting("Raid_AutoKillOrder", false)
v10:AddToggle({
    Name = "Auto Kill Order",
    Default = _G.AutoKillOrder,
    Callback = function(Value)
        _G.AutoKillOrder = Value
        _G.SaveData["Raid_AutoKillOrder"] = Value
        SaveSettings()
    end
})

task.spawn(function()
    while wait(1) do
        if _G.AutoKillOrder then
            pcall(function()
                local boss = GetConnectionEnemies("Order")
                if boss then
                    repeat
                        task.wait()
                        if G and G.Kill then
                            G.Kill(boss, true)
                        end
                    until not boss.Parent or boss.Humanoid.Health <= 0
                else
                    _tp(CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875))
                end
            end)
        end
    end
end)

-- ========================================
-- TELEPORT TO LAB
-- ========================================
v10:AddSection({"Teleport"})

_G.TpLab = GetSetting("Raid_TpLab", false)
v10:AddToggle({
    Name = "Auto Teleport to Lab",
    Default = _G.TpLab,
    Callback = function(Value)
        _G.TpLab = Value
        _G.SaveData["Raid_TpLab"] = Value
        SaveSettings()
    end
})

task.spawn(function()
    while wait(0.1) do
        if _G.TpLab then
            if World2 then
                _tp(CFrame.new(-6438.73535, 250.645355, -4501.50684))
            elseif World3 then
                _tp(CFrame.new(-5017.40869, 314.844055, -2823.0127))
            end
        end
    end
end)

-- ========================================
-- KILL AURA
-- ========================================
v10:AddSection({"Kill Aura"})

_G.KillAura = GetSetting("Raid_KillAura", false)
_G.KillAuraRange = GetSetting("Raid_KillAuraRange", 500)
_G.KillAuraDelay = GetSetting("Raid_KillAuraDelay", 2)

v10:AddToggle({
    Name = "Kill Aura",
    Default = _G.KillAura,
    Callback = function(Value)
        _G.KillAura = Value
        _G.SaveData["Raid_KillAura"] = Value
        SaveSettings()
    end
})

v10:AddTextBox({
    Title = "Kill Aura Range",
    PlaceHolder = "500",
    Default = tostring(_G.KillAuraRange),
    Callback = function(Value)
        local num = tonumber(Value)
        if num and num > 0 then
            _G.KillAuraRange = num
            _G.SaveData["Raid_KillAuraRange"] = num
            SaveSettings()
        end
    end
})

v10:AddTextBox({
    Title = "Kill Aura Delay (s)",
    PlaceHolder = "2",
    Default = tostring(_G.KillAuraDelay),
    Callback = function(Value)
        local num = tonumber(Value)
        if num and num > 0 then
            _G.KillAuraDelay = num
            _G.SaveData["Raid_KillAuraDelay"] = num
            SaveSettings()
        end
    end
})

local KillAuraCounter = 0
local KillAuraDisplay = v10:AddParagraph({
    Title = "Kill Aura Stats",
    Desc = "Killed: 0"
})

task.spawn(function()
    while task.wait(1) do
        if _G.KillAura then
            KillAuraDisplay:SetDesc("Killed: " .. KillAuraCounter .. " | Range: " .. _G.KillAuraRange)
        else
            KillAuraDisplay:SetDesc("Killed: 0 | Disabled")
        end
    end
end)

task.spawn(function()
    while task.wait(_G.KillAuraDelay) do
        if _G.KillAura then
            pcall(function()
                local hrp = GetHRP()
                if not hrp then return end
                
                sethiddenproperty(plr, "SimulationRadius", math.huge)
                
                for _, enemy in pairs(workspace.Enemies:GetChildren()) do
                    local hum = enemy:FindFirstChild("Humanoid")
                    local root = enemy:FindFirstChild("HumanoidRootPart")
                    
                    if hum and root and hum.Health > 0 then
                        local dist = (root.Position - hrp.Position).Magnitude
                        if dist <= _G.KillAuraRange then
                            hum.Health = 0
                            root.CanCollide = false
                            enemy:BreakJoints()
                            KillAuraCounter = KillAuraCounter + 1
                        end
                    end
                end
            end)
        end
    end
end)

-- ========================================
-- RESET COUNTER
-- ========================================
v10:AddButton({
    Name = "Reset Kill Counter",
    Callback = function()
        KillAuraCounter = 0
    end
})

v11:AddSection({"Travel - Worlds"})

v11:AddButton({ 
    Name = "Teleport Sea 1", 
    Callback = function()
        replicated.Remotes.CommF_:InvokeServer("TravelMain")
    end 
})

v11:AddButton({ 
    Name = "Teleport Sea 2", 
    Callback = function()
        replicated.Remotes.CommF_:InvokeServer("TravelDressrosa")
    end 
})

v11:AddButton({ 
    Name = "Teleport Sea 3", 
    Callback = function()
        replicated.Remotes.CommF_:InvokeServer("TravelZou")
    end 
})

-- ========================================
-- TELEPORT - ISLAND
-- ========================================
v11:AddSection({"Travel - Island"})

-- Lista de Ilhas
local Location = {}
for _, e in pairs(workspace._WorldOrigin.Locations:GetChildren()) do
    table.insert(Location, e.Name)
end

-- Dropdown
v11:AddDropdown({
    Name = "Select Travelling",
    Options = Location,
    Default = false,
    Multi = false,
    Callback = function(I)
        _G.Island = I
    end,
})

-- Auto Travel Toggle
v11:AddToggle({
    Name = "Auto Travel",
    Default = GetSetting("AutoTravelIsland_Save", false),
    Callback = function(Value)
        _G.Teleport = Value
        _G.SaveData["AutoTravelIsland_Save"] = Value
        SaveSettings()
        
        if Value and _G.Island then
            task.spawn(function()
                local targetIsland = workspace._WorldOrigin.Locations:FindFirstChild(_G.Island)
                if targetIsland and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                    local Root = plr.Character.HumanoidRootPart
                    
                    -- 1. Subida Instantânea (700 studs acima)
                    Root.CFrame = Root.CFrame * CFrame.new(0, 700, 0)
                    wait(0.1)
                    
                    -- 2. Viagem até o destino
                    local destination = targetIsland.CFrame * CFrame.new(0, 700, 0)
                    repeat
                        wait()
                        _tp(destination)
                    until not _G.Teleport or (Root.Position - destination.p).Magnitude < 10
                    
                    -- 3. Descida para a superfície
                    if _G.Teleport then
                        Root.CFrame = targetIsland.CFrame * CFrame.new(0, 5, 0)
                        _G.Teleport = false
                    end
                end
            end)
        end
    end,
})

-- ========================================
-- TELEPORT - PORTAL
-- ========================================
v11:AddSection({"Travel - Portal"})

-- Danh sách portal theo từng world
local Location_Portal = {}
if World1 then
    Location_Portal = { "Sky", "UnderWater" }
elseif World2 then
    Location_Portal = { "SwanRoom", "Cursed Ship" }
elseif World3 then
    Location_Portal = {
        "Castle On The Sea",
        "Mansion Cafe",
        "Hydra Teleport",
        "Canvendish Room",
        "Temple of Time",
    }
end

v11:AddDropdown({
    Name = "Select Portal",
    Options = Location_Portal,
    Default = false,
    Multi = false,
    Callback = function(I)
        _G.Island_PT = I
    end,
})

v11:AddButton({ 
    Name = "requestEntrance", 
    Callback = function()
        if _G.Island_PT == "Sky" then
            replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894, 5547, -380))
        elseif _G.Island_PT == "UnderWater" then
            replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163, 11, 1819))
        elseif _G.Island_PT == "SwanRoom" then
            replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(2285, 15, 905))
        elseif _G.Island_PT == "Cursed Ship" then
            replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923, 126, 32852))
        elseif _G.Island_PT == "Castle On The Sea" then
            replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-5097.93164, 316.447021, -3142.66602))
        elseif _G.Island_PT == "Mansion Cafe" then
            replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
        elseif _G.Island_PT == "Hydra Teleport" then
            replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5643.4526367188, 1013.0858154297, -340.51025390625))
        elseif _G.Island_PT == "Canvendish Room" then
            replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5314.5463867188, 22.562219619751, -127.06755065918))
        elseif _G.Island_PT == "Temple of Time" then
            replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(28310.0234, 14895.1123, 109.456741))
        end
    end 
})

-- ========================================
-- TELEPORT - NPCS
-- ========================================
v11:AddSection({"Travel - NPCs"})

-- Lấy danh sách NPCs
local NPCList = {}
for _, npc in pairs(replicated.NPCs:GetChildren()) do
    table.insert(NPCList, npc.Name)
end

v11:AddDropdown({
    Name = "Select NPCs",
    Options = NPCList,
    Default = false,
    Multi = false,
    Callback = function(I)
        NPClist = I
    end,
})

v11:AddToggle({
    Name = "Auto Tween to NPCs",
    Default = GetSetting("AutoTPNPC_Save", false),
    Callback = function(I)
        _G.TPNpc = I
        _G.SaveData["AutoTPNPC_Save"] = I
        SaveSettings()
    end,
})

spawn(function()
    while wait(0.1) do
        if _G.TPNpc and NPClist then
            pcall(function()
                for _, npc in pairs(replicated.NPCs:GetChildren()) do
                    if npc.Name == NPClist then
                        _tp(npc.HumanoidRootPart.CFrame)
                    end
                end
            end)
        end
    end
end)

v13:AddSection({"Stats Upgrade"})

-- Stats Value Slider
local StatsValue = 10
v13:AddSlider({
    Name = "Stats Value",
    Min = 0,
    Max = 1000,
    Default = GetSetting("StatsValue_Save", 10),
    Increment = 1,
    Callback = function(Value)
        StatsValue = Value
        _G.SaveData["StatsValue_Save"] = Value
        SaveSettings()
    end
})

-- Auto Melee
v13:AddToggle({
    Name = "Auto Melee",
    Default = GetSetting("Auto_Melee_Save", false),
    Callback = function(Value)
        _G.Auto_Melee = Value
        _G.SaveData["Auto_Melee_Save"] = Value
        SaveSettings()
    end
})

spawn(function()
    while wait(0.1) do
        pcall(function()
            if _G.Auto_Melee then
                statsSetings("Melee", StatsValue)
            end
        end)
    end
end)

-- Auto Sword
v13:AddToggle({
    Name = "Auto Sword",
    Default = GetSetting("Auto_Sword_Save", false),
    Callback = function(Value)
        _G.Auto_Sword = Value
        _G.SaveData["Auto_Sword_Save"] = Value
        SaveSettings()
    end
})

spawn(function()
    while wait(0.1) do
        pcall(function()
            if _G.Auto_Sword then
                statsSetings("Sword", StatsValue)
            end
        end)
    end
end)

-- Auto Gun
v13:AddToggle({
    Name = "Auto Gun",
    Default = GetSetting("Auto_Gun_Save", false),
    Callback = function(Value)
        _G.Auto_Gun = Value
        _G.SaveData["Auto_Gun_Save"] = Value
        SaveSettings()
    end
})

spawn(function()
    while wait(0.1) do
        pcall(function()
            if _G.Auto_Gun then
                statsSetings("Gun", StatsValue)
            end
        end)
    end
end)

-- Auto Blox Fruit
v13:AddToggle({
    Name = "Auto Blox Fruit",
    Default = GetSetting("Auto_DevilFruit_Save", false),
    Callback = function(Value)
        _G.Auto_DevilFruit = Value
        _G.SaveData["Auto_DevilFruit_Save"] = Value
        SaveSettings()
    end
})

spawn(function()
    while wait(0.1) do
        pcall(function()
            if _G.Auto_DevilFruit then
                statsSetings("Devil", StatsValue)
            end
        end)
    end
end)

-- Auto Defense
v13:AddToggle({
    Name = "Auto Defense",
    Default = GetSetting("Auto_Defense_Save", false),
    Callback = function(Value)
        _G.Auto_Defense = Value
        _G.SaveData["Auto_Defense_Save"] = Value
        SaveSettings()
    end
})

spawn(function()
    while wait(0.1) do
        pcall(function()
            if _G.Auto_Defense then
                statsSetings("Defense", StatsValue)
            end
        end)
    end
end)

v13:AddSection({"ESP"})

-- Variáveis ESP
local NumberESP = math.random(1, 1000000)
local PlayerESPEnabled = false
local IslandESPEnabled = false
local FruitESPEnabled = false
local FlowerESPEnabled = false
local ChestESPEnabled = false
local GearESPEnabled = false
local AdvDealerESPEnabled = false
local HakiColorESPEnabled = false
local BerryESPEnabled = false

-- ========================================
-- FUNÇÕES ESP
-- ========================================

-- Helper function
local function isnil(obj)
    return obj == nil
end

local function round(num)
    return math.floor(tonumber(num) + 0.5)
end

-- PLAYER ESP: Tên player \n % M
local function UpdatePlayerESP()
    for _, player in pairs(game.Players:GetChildren()) do
        pcall(function()
            if not isnil(player.Character) and player ~= game.Players.LocalPlayer then
                if PlayerESPEnabled then
                    if not isnil(player.Character.Head) and not player.Character.Head:FindFirstChild("NameESP" .. NumberESP) then
                        local billboard = Instance.new("BillboardGui", player.Character.Head)
                        billboard.Name = "NameESP" .. NumberESP
                        billboard.ExtentsOffset = Vector3.new(0, 1, 0)
                        billboard.Size = UDim2.new(1, 200, 1, 45)
                        billboard.Adornee = player.Character.Head
                        billboard.AlwaysOnTop = true
                        
                        local textLabel = Instance.new("TextLabel", billboard)
                        textLabel.Font = Enum.Font.Code
                        textLabel.TextSize = 14
                        textLabel.TextWrapped = true
                        textLabel.Size = UDim2.new(1, 0, 1, 0)
                        textLabel.TextYAlignment = Enum.TextYAlignment.Top
                        textLabel.BackgroundTransparency = 1
                        textLabel.TextStrokeTransparency = 0.5
                        
                        local hpPercent = round((player.Character.Humanoid.Health * 100) / player.Character.Humanoid.MaxHealth)
                        local distance = round((game.Players.LocalPlayer.Character.Head.Position - player.Character.Head.Position).Magnitude / 3)
                        
                        textLabel.Text = player.Name .. "\n" .. hpPercent .. "% " .. distance .. "M"
                        
                        if player.Team == game.Players.LocalPlayer.Team then
                            textLabel.TextColor3 = Color3.new(0, 0, 255)
                        else
                            textLabel.TextColor3 = Color3.new(255, 0, 0)
                        end
                    else
                        if player.Character.Head:FindFirstChild("NameESP" .. NumberESP) then
                            local label = player.Character.Head["NameESP" .. NumberESP].TextLabel
                            local hpPercent = round((player.Character.Humanoid.Health * 100) / player.Character.Humanoid.MaxHealth)
                            local distance = round((game.Players.LocalPlayer.Character.Head.Position - player.Character.Head.Position).Magnitude / 3)
                            
                            label.Text = player.Name .. "\n" .. hpPercent .. "% " .. distance .. "M"
                        end
                    end
                end
            end
        end)
    end
end

-- ISLAND ESP: Tên island \n M
local function UpdateIslandESP()
    for _, location in pairs(workspace._WorldOrigin.Locations:GetChildren()) do
        pcall(function()
            if IslandESPEnabled and location.Name ~= "Sea" then
                if not location:FindFirstChild("NameESP") then
                    local billboard = Instance.new("BillboardGui", location)
                    billboard.Name = "NameESP"
                    billboard.ExtentsOffset = Vector3.new(0, 1, 0)
                    billboard.Size = UDim2.new(1, 200, 1, 30)
                    billboard.Adornee = location
                    billboard.AlwaysOnTop = true
                    
                    local textLabel = Instance.new("TextLabel", billboard)
                    textLabel.Font = Enum.Font.Code
                    textLabel.TextSize = 14
                    textLabel.TextWrapped = true
                    textLabel.Size = UDim2.new(1, 0, 1, 0)
                    textLabel.TextYAlignment = Enum.TextYAlignment.Top
                    textLabel.BackgroundTransparency = 1
                    textLabel.TextStrokeTransparency = 0.5
                    textLabel.TextColor3 = Color3.fromRGB(98, 252, 252)
                    
                    local distance = round((game.Players.LocalPlayer.Character.Head.Position - location.Position).Magnitude / 3)
                    textLabel.Text = location.Name .. "\n" .. distance .. "M"
                else
                    local label = location.NameESP.TextLabel
                    local distance = round((game.Players.LocalPlayer.Character.Head.Position - location.Position).Magnitude / 3)
                    label.Text = location.Name .. "\n" .. distance .. "M"
                end
            end
        end)
    end
end

-- FRUIT ESP: Tên fruit \n M
local function UpdateFruitESP()
    for _, obj in pairs(workspace:GetChildren()) do
        pcall(function()
            if FruitESPEnabled and string.find(obj.Name, "Fruit") and obj:FindFirstChild("Handle") then
                if not obj.Handle:FindFirstChild("NameESP" .. NumberESP) then
                    local billboard = Instance.new("BillboardGui", obj.Handle)
                    billboard.Name = "NameESP" .. NumberESP
                    billboard.ExtentsOffset = Vector3.new(0, 1, 0)
                    billboard.Size = UDim2.new(1, 200, 1, 30)
                    billboard.Adornee = obj.Handle
                    billboard.AlwaysOnTop = true
                    
                    local textLabel = Instance.new("TextLabel", billboard)
                    textLabel.Font = Enum.Font.Code
                    textLabel.TextSize = 14
                    textLabel.TextWrapped = true
                    textLabel.Size = UDim2.new(1, 0, 1, 0)
                    textLabel.TextYAlignment = Enum.TextYAlignment.Top
                    textLabel.BackgroundTransparency = 1
                    textLabel.TextStrokeTransparency = 0.5
                    textLabel.TextColor3 = Color3.new(255, 255, 255)
                    
                    local distance = round((game.Players.LocalPlayer.Character.Head.Position - obj.Handle.Position).Magnitude / 3)
                    textLabel.Text = obj.Name .. "\n" .. distance .. "M"
                else
                    local label = obj.Handle["NameESP" .. NumberESP].TextLabel
                    local distance = round((game.Players.LocalPlayer.Character.Head.Position - obj.Handle.Position).Magnitude / 3)
                    label.Text = obj.Name .. "\n" .. distance .. "M"
                end
            end
        end)
    end
end

-- FLOWER ESP: Tên hoa \n M
local function UpdateFlowerESP()
    for _, obj in pairs(workspace:GetChildren()) do
        pcall(function()
            if FlowerESPEnabled and (obj.Name == "Flower2" or obj.Name == "Flower1") then
                if not obj:FindFirstChild("NameESP" .. NumberESP) then
                    local billboard = Instance.new("BillboardGui", obj)
                    billboard.Name = "NameESP" .. NumberESP
                    billboard.ExtentsOffset = Vector3.new(0, 1, 0)
                    billboard.Size = UDim2.new(1, 200, 1, 30)
                    billboard.Adornee = obj
                    billboard.AlwaysOnTop = true
                    
                    local textLabel = Instance.new("TextLabel", billboard)
                    textLabel.Font = Enum.Font.Code
                    textLabel.TextSize = 14
                    textLabel.TextWrapped = true
                    textLabel.Size = UDim2.new(1, 0, 1, 0)
                    textLabel.TextYAlignment = Enum.TextYAlignment.Top
                    textLabel.BackgroundTransparency = 1
                    textLabel.TextStrokeTransparency = 0.5
                    textLabel.TextColor3 = Color3.fromRGB(88, 214, 252)
                    
                    local flowerName = (obj.Name == "Flower1") and "Blue Flower" or "Red Flower"
                    local distance = round((game.Players.LocalPlayer.Character.Head.Position - obj.Position).Magnitude / 3)
                    textLabel.Text = flowerName .. "\n" .. distance .. "M"
                else
                    local label = obj["NameESP" .. NumberESP].TextLabel
                    local flowerName = (obj.Name == "Flower1") and "Blue Flower" or "Red Flower"
                    local distance = round((game.Players.LocalPlayer.Character.Head.Position - obj.Position).Magnitude / 3)
                    label.Text = flowerName .. "\n" .. distance .. "M"
                end
            end
        end)
    end
end

-- CHEST ESP: [Tên rương] M
local function UpdateChestESP()
    local CollectionService = game:GetService("CollectionService")
    local Chests = CollectionService:GetTagged("_ChestTagged")
    
    -- Xóa ESP khi tắt
    if not ChestESPEnabled then
        for _, chest in ipairs(Chests) do
            pcall(function()
                local attachment = chest:FindFirstChild("ChestESPAttachment")
                if attachment then
                    attachment:Destroy()
                end
            end)
        end
        return
    end
    
    -- Tạo ESP khi bật
    for _, chest in ipairs(Chests) do
        pcall(function()
            local chestPos = chest:GetPivot().Position
            local distance = round((game.Players.LocalPlayer.Character.Head.Position - chestPos).Magnitude / 3)
            local chestName = chest.Name:gsub("Label", "")
            
            local attachment = chest:FindFirstChild("ChestESPAttachment")
            if not attachment then
                attachment = Instance.new("Attachment")
                attachment.Name = "ChestESPAttachment"
                attachment.Parent = chest
                attachment.Position = Vector3.new(0, 3, 0)
                
                local billboard = Instance.new("BillboardGui", attachment)
                billboard.Name = "NameESP"
                billboard.Size = UDim2.new(0, 200, 0, 30)
                billboard.Adornee = attachment
                billboard.ExtentsOffset = Vector3.new(0, 1, 0)
                billboard.AlwaysOnTop = true
                
                local textLabel = Instance.new("TextLabel", billboard)
                textLabel.Font = Enum.Font.Code
                textLabel.TextSize = 14
                textLabel.TextWrapped = true
                textLabel.Size = UDim2.new(1, 0, 1, 0)
                textLabel.TextYAlignment = Enum.TextYAlignment.Top
                textLabel.BackgroundTransparency = 1
                textLabel.TextStrokeTransparency = 0.5
                textLabel.TextColor3 = Color3.fromRGB(80, 245, 245)
                textLabel.Text = "[" .. chestName .. "] " .. distance .. "M"
            else
                if attachment:FindFirstChild("NameESP") then
                    attachment.NameESP.TextLabel.Text = "[" .. chestName .. "] " .. distance .. "M"
                end
            end
        end)
    end
end

-- GEAR ESP (Mirage): Gear \n M
local function UpdateGearESP()
    local MysticIsland = workspace.Map:FindFirstChild("MysticIsland")
    if MysticIsland then
        for _, part in pairs(MysticIsland:GetDescendants()) do
            pcall(function()
                if GearESPEnabled and part.Name == "Part" and part.Material == Enum.Material.Neon then
                    if not part:FindFirstChild("NameESP") then
                        local billboard = Instance.new("BillboardGui", part)
                        billboard.Name = "NameESP"
                        billboard.ExtentsOffset = Vector3.new(0, 1, 0)
                        billboard.Size = UDim2.new(1, 200, 1, 30)
                        billboard.Adornee = part
                        billboard.AlwaysOnTop = true
                        
                        local textLabel = Instance.new("TextLabel", billboard)
                        textLabel.Font = Enum.Font.Code
                        textLabel.TextSize = 14
                        textLabel.TextWrapped = true
                        textLabel.Size = UDim2.new(1, 0, 1, 0)
                        textLabel.TextYAlignment = Enum.TextYAlignment.Top
                        textLabel.BackgroundTransparency = 1
                        textLabel.TextStrokeTransparency = 0.5
                        textLabel.TextColor3 = Color3.fromRGB(80, 245, 245)
                        
                        local distance = round((game.Players.LocalPlayer.Character.Head.Position - part.Position).Magnitude / 3)
                        textLabel.Text = "Gear\n" .. distance .. "M"
                    else
                        local label = part.NameESP.TextLabel
                        local distance = round((game.Players.LocalPlayer.Character.Head.Position - part.Position).Magnitude / 3)
                        label.Text = "Gear\n" .. distance .. "M"
                    end
                end
            end)
        end
    end
end

-- ADVANCED FRUIT DEALER ESP: Tên NPC \n M
local function UpdateAdvDealerESP()
    if AdvDealerESPEnabled then
        for _, npc in pairs(replicated.NPCs:GetChildren()) do
            if npc.Name == "Advanced Fruit Dealer" then
                if not workspace:FindFirstChild("AdvESP") then
                    local part = Instance.new("Part", workspace)
                    part.Name = "AdvESP"
                    part.Transparency = 1
                    part.Size = Vector3.new(1, 1, 1)
                    part.Anchored = true
                    part.CanCollide = false
                    part.CFrame = npc.HumanoidRootPart.CFrame
                    
                    local billboard = Instance.new("BillboardGui", part)
                    billboard.Name = "NameESP"
                    billboard.ExtentsOffset = Vector3.new(0, 1, 0)
                    billboard.Size = UDim2.new(1, 200, 1, 30)
                    billboard.Adornee = part
                    billboard.AlwaysOnTop = true
                    
                    local textLabel = Instance.new("TextLabel", billboard)
                    textLabel.Font = Enum.Font.Code
                    textLabel.TextSize = 14
                    textLabel.TextWrapped = true
                    textLabel.Size = UDim2.new(1, 0, 1, 0)
                    textLabel.TextYAlignment = Enum.TextYAlignment.Top
                    textLabel.BackgroundTransparency = 1
                    textLabel.TextStrokeTransparency = 0.5
                    textLabel.TextColor3 = Color3.fromRGB(80, 245, 245)
                    
                    local distance = round((game.Players.LocalPlayer.Character.Head.Position - npc.HumanoidRootPart.Position).Magnitude / 3)
                    textLabel.Text = npc.Name .. "\n" .. distance .. "M"
                else
                    local part = workspace.AdvESP
                    part.CFrame = npc.HumanoidRootPart.CFrame
                    if part.NameESP then
                        local distance = round((game.Players.LocalPlayer.Character.Head.Position - npc.HumanoidRootPart.Position).Magnitude / 3)
                        part.NameESP.TextLabel.Text = npc.Name .. "\n" .. distance .. "M"
                    end
                end
                break
            end
        end
    else
        if workspace:FindFirstChild("AdvESP") then
            workspace.AdvESP:Destroy()
        end
    end
end

-- HAKI COLOR DEALER ESP: Tên NPC \n M
local function UpdateHakiColorESP()
    if HakiColorESPEnabled then
        for _, npc in pairs(replicated.NPCs:GetChildren()) do
            if npc.Name == "Barista Cousin" then
                if not workspace:FindFirstChild("HakiESP") then
                    local part = Instance.new("Part", workspace)
                    part.Name = "HakiESP"
                    part.Transparency = 1
                    part.Size = Vector3.new(1, 1, 1)
                    part.Anchored = true
                    part.CanCollide = false
                    part.CFrame = npc.HumanoidRootPart.CFrame
                    
                    local billboard = Instance.new("BillboardGui", part)
                    billboard.Name = "NameESP"
                    billboard.ExtentsOffset = Vector3.new(0, 1, 0)
                    billboard.Size = UDim2.new(1, 200, 1, 30)
                    billboard.Adornee = part
                    billboard.AlwaysOnTop = true
                    
                    local textLabel = Instance.new("TextLabel", billboard)
                    textLabel.Font = Enum.Font.Code
                    textLabel.TextSize = 14
                    textLabel.TextWrapped = true
                    textLabel.Size = UDim2.new(1, 0, 1, 0)
                    textLabel.TextYAlignment = Enum.TextYAlignment.Top
                    textLabel.BackgroundTransparency = 1
                    textLabel.TextStrokeTransparency = 0.5
                    textLabel.TextColor3 = Color3.fromRGB(80, 245, 245)
                    
                    local distance = round((game.Players.LocalPlayer.Character.Head.Position - npc.HumanoidRootPart.Position).Magnitude / 3)
                    textLabel.Text = npc.Name .. "\n" .. distance .. "M"
                else
                    local part = workspace.HakiESP
                    part.CFrame = npc.HumanoidRootPart.CFrame
                    if part.NameESP then
                        local distance = round((game.Players.LocalPlayer.Character.Head.Position - npc.HumanoidRootPart.Position).Magnitude / 3)
                        part.NameESP.TextLabel.Text = npc.Name .. "\n" .. distance .. "M"
                    end
                end
                break
            end
        end
    else
        if workspace:FindFirstChild("HakiESP") then
            workspace.HakiESP:Destroy()
        end
    end
end

-- BERRY ESP: [Tên berry] M
local function UpdateBerryESP()
    local CollectionService = game:GetService("CollectionService")
    local Bushes = CollectionService:GetTagged("BerryBush")
    
    -- Xóa ESP khi tắt
    if not BerryESPEnabled then
        for _, obj in pairs(workspace:GetChildren()) do
            if obj:IsA("Part") and obj.Name:match("BerryESP_.*") then
                obj:Destroy()
            end
        end
        return
    end
    
    -- Tạo ESP khi bật
    for _, bush in ipairs(Bushes) do
        pcall(function()
            local bushPos = bush.Parent:GetPivot().Position
            
            for attrName, attrValue in pairs(bush:GetAttributes()) do
                if attrValue then
                    local partName = "BerryESP_" .. attrValue .. "_" .. tostring(bushPos)
                    local part = workspace:FindFirstChild(partName)
                    
                    if not part then
                        part = Instance.new("Part", workspace)
                        part.Name = partName
                        part.Transparency = 1
                        part.Size = Vector3.new(1, 1, 1)
                        part.Anchored = true
                        part.CanCollide = false
                        part.CFrame = CFrame.new(bushPos)
                        
                        local billboard = Instance.new("BillboardGui", part)
                        billboard.Name = "NameESP"
                        billboard.Size = UDim2.new(0, 200, 0, 30)
                        billboard.Adornee = part
                        billboard.ExtentsOffset = Vector3.new(0, 1, 0)
                        billboard.AlwaysOnTop = true
                        
                        local textLabel = Instance.new("TextLabel", billboard)
                        textLabel.Font = Enum.Font.Code
                        textLabel.TextSize = 14
                        textLabel.TextWrapped = true
                        textLabel.Size = UDim2.new(1, 0, 1, 0)
                        textLabel.TextYAlignment = Enum.TextYAlignment.Top
                        textLabel.BackgroundTransparency = 1
                        textLabel.TextStrokeTransparency = 0.5
                        textLabel.TextColor3 = Color3.fromRGB(80, 245, 245)
                    end
                    
                    if part and part.NameESP then
                        local distance = round((game.Players.LocalPlayer.Character.Head.Position - bushPos).Magnitude / 3)
                        part.NameESP.TextLabel.Text = "[" .. attrValue .. "] " .. distance .. "M"
                    end
                end
            end
        end)
    end
end

-- ========================================
-- ESP TOGGLES
-- ========================================

-- Player ESP
v13:AddToggle({
    Name = "ESP Player",
    Default = GetSetting("ESP_Player_Save", false),
    Callback = function(Value)
        PlayerESPEnabled = Value
        _G.SaveData["ESP_Player_Save"] = Value
        SaveSettings()
    end
})

-- Island ESP
v13:AddToggle({
    Name = "ESP Island",
    Default = GetSetting("ESP_Island_Save", false),
    Callback = function(Value)
        IslandESPEnabled = Value
        _G.SaveData["ESP_Island_Save"] = Value
        SaveSettings()
    end
})

-- Fruit ESP
v13:AddToggle({
    Name = "ESP Fruit",
    Default = GetSetting("ESP_Fruit_Save", false),
    Callback = function(Value)
        FruitESPEnabled = Value
        _G.SaveData["ESP_Fruit_Save"] = Value
        SaveSettings()
    end
})

-- Flower ESP
v13:AddToggle({
    Name = "ESP Flower",
    Default = GetSetting("ESP_Flower_Save", false),
    Callback = function(Value)
        FlowerESPEnabled = Value
        _G.SaveData["ESP_Flower_Save"] = Value
        SaveSettings()
    end
})

-- Chest ESP
v13:AddToggle({
    Name = "ESP Chest",
    Default = GetSetting("ESP_Chest_Save", false),
    Callback = function(Value)
        ChestESPEnabled = Value
        _G.SaveData["ESP_Chest_Save"] = Value
        SaveSettings()
    end
})

-- Gear ESP (Mirage)
v13:AddToggle({
    Name = "ESP Gear (Mirage)",
    Default = GetSetting("ESP_Gear_Save", false),
    Callback = function(Value)
        GearESPEnabled = Value
        _G.SaveData["ESP_Gear_Save"] = Value
        SaveSettings()
    end
})

-- Advanced Fruit Dealer ESP
v13:AddToggle({
    Name = "ESP Advanced Dealer",
    Default = GetSetting("ESP_AdvDealer_Save", false),
    Callback = function(Value)
        AdvDealerESPEnabled = Value
        _G.SaveData["ESP_AdvDealer_Save"] = Value
        SaveSettings()
    end
})

-- Haki Color Dealer ESP
v13:AddToggle({
    Name = "ESP Haki Color",
    Default = GetSetting("ESP_HakiColor_Save", false),
    Callback = function(Value)
        HakiColorESPEnabled = Value
        _G.SaveData["ESP_HakiColor_Save"] = Value
        SaveSettings()
    end
})

-- Berry ESP
v13:AddToggle({
    Name = "ESP Berry",
    Default = GetSetting("ESP_Berry_Save", false),
    Callback = function(Value)
        BerryESPEnabled = Value
        _G.SaveData["ESP_Berry_Save"] = Value
        SaveSettings()
    end
})

-- ========================================
-- ESP UPDATE LOOPS
-- ========================================

-- Player ESP Loop
task.spawn(function()
    while task.wait(0.1) do
        if PlayerESPEnabled then
            pcall(UpdatePlayerESP)
        else
            pcall(function()
                for _, player in pairs(game.Players:GetChildren()) do
                    if player.Character and player.Character:FindFirstChild("Head") then
                        local esp = player.Character.Head:FindFirstChild("NameESP" .. NumberESP)
                        if esp then esp:Destroy() end
                    end
                end
            end)
        end
    end
end)

-- Island ESP Loop
task.spawn(function()
    while task.wait(0.1) do
        if IslandESPEnabled then
            pcall(UpdateIslandESP)
        else
            pcall(function()
                for _, loc in pairs(workspace._WorldOrigin.Locations:GetChildren()) do
                    if loc:FindFirstChild("NameESP") then
                        loc.NameESP:Destroy()
                    end
                end
            end)
        end
    end
end)

-- Fruit ESP Loop
task.spawn(function()
    while task.wait(0.1) do
        if FruitESPEnabled then
            pcall(UpdateFruitESP)
        else
            pcall(function()
                for _, obj in pairs(workspace:GetChildren()) do
                    if obj:FindFirstChild("Handle") then
                        local esp = obj.Handle:FindFirstChild("NameESP" .. NumberESP)
                        if esp then esp:Destroy() end
                    end
                end
            end)
        end
    end
end)

-- Flower ESP Loop
task.spawn(function()
    while task.wait(0.1) do
        if FlowerESPEnabled then
            pcall(UpdateFlowerESP)
        else
            pcall(function()
                for _, obj in pairs(workspace:GetChildren()) do
                    if (obj.Name == "Flower1" or obj.Name == "Flower2") and obj:FindFirstChild("NameESP" .. NumberESP) then
                        obj["NameESP" .. NumberESP]:Destroy()
                    end
                end
            end)
        end
    end
end)

-- Chest ESP Loop
task.spawn(function()
    while task.wait(0.1) do
        pcall(UpdateChestESP)
    end
end)

-- Gear ESP Loop
task.spawn(function()
    while task.wait(0.1) do
        if GearESPEnabled then
            pcall(UpdateGearESP)
        else
            pcall(function()
                local MysticIsland = workspace.Map:FindFirstChild("MysticIsland")
                if MysticIsland then
                    for _, part in pairs(MysticIsland:GetDescendants()) do
                        if part:FindFirstChild("NameESP") then
                            part.NameESP:Destroy()
                        end
                    end
                end
            end)
        end
    end
end)

-- Advanced Dealer ESP Loop
task.spawn(function()
    while task.wait(0.1) do
        if AdvDealerESPEnabled then
            pcall(UpdateAdvDealerESP)
        else
            pcall(function()
                if workspace:FindFirstChild("AdvESP") then
                    workspace.AdvESP:Destroy()
                end
            end)
        end
    end
end)

-- Haki Color ESP Loop
task.spawn(function()
    while task.wait(0.1) do
        if HakiColorESPEnabled then
            pcall(UpdateHakiColorESP)
        else
            pcall(function()
                if workspace:FindFirstChild("HakiESP") then
                    workspace.HakiESP:Destroy()
                end
            end)
        end
    end
end)

-- Berry ESP Loop
task.spawn(function()
    while task.wait(0.1) do
        if BerryESPEnabled then
            pcall(UpdateBerryESP)
        else
            pcall(function()
                for _, obj in pairs(workspace:GetChildren()) do
                    if obj:IsA("Part") and obj.Name:match("BerryESP_.*") then
                        obj:Destroy()
                    end
                end
            end)
        end
    end
end)

local World1 = World1 or false
local World2 = World2 or false
local World3 = World3 or false

-- Section chính cho Shop
v14:AddSection({"Mua Melee V1"})

-- Danh sách Melee với tọa độ theo từng World
local MeleeCoords = {
    ["Dark Step (Chân Đen)"] = {
        Key = "BuyBlackLeg",
        NPC = "Dark Step Teacher",
        Pos = World1 and CFrame.new(-985, 13, 3988) 
            or World2 and CFrame.new(-4753, 35, -4850) 
            or World3 and CFrame.new(-5045, 371, -3181) 
            or nil
    },
    ["Electric (Điện)"] = {
        Key = "BuyElectro",
        NPC = "Mad Scientist",
        Pos = World1 and CFrame.new(-5384, 13, -2148) 
            or World2 and CFrame.new(-4867, 35, -4766) 
            or World3 and CFrame.new(-4995, 314, -3203) 
            or nil
    },
    ["Water Kung Fu (Võ Cá)"] = {
        Key = "BuyFishmanKarate",
        NPC = "Water Kung Fu Teacher",
        Pos = World1 and CFrame.new(61585, 18, 987) 
            or World2 and CFrame.new(-4958, 35, -4668) 
            or World3 and CFrame.new(-5023, 371, -3190) 
            or nil
    },
    ["Dragon Breath (Hơi Thở Rồng)"] = {
        Key = "BuyDragonClaw",
        NPC = "Sabi",
        Pos = World2 and CFrame.new(701, 187, 655) 
            or World3 and CFrame.new(-4981, 371, -3207) 
            or nil
    },
    ["Superhuman"] = {
        Key = "BuySuperhuman",
        NPC = "Martial Arts Master",
        Pos = World2 and CFrame.new(1374, 247, -5192) 
            or World3 and CFrame.new(-5004, 371, -3198) 
            or nil
    },
    ["Death Step (Chân Đen V2)"] = {
        Key = "BuyDeathStep",
        NPC = "Phoeyu, the Reformed",
        Pos = World2 and CFrame.new(6357, 296, -6762) 
            or World3 and CFrame.new(-4999, 314, -3221) 
            or nil
    },
    ["Sharkman Karate (Võ Cá V2)"] = {
        Key = "BuySharkmanKarate",
        NPC = "Daigrock, the Sharkman",
        Pos = World2 and CFrame.new(-2602, 238, -10316) 
            or World3 and CFrame.new(-4972, 314, -3222) 
            or nil
    },
    ["Dragon Talon (Rồng V2)"] = {
        Key = "BuyDragonTalon",
        NPC = "Uzoth",
        Pos = World3 and CFrame.new(5661, 1211, 865) or nil
    },
    ["Electric Claw (Điện V2)"] = {
        Key = "BuyElectricClaw",
        NPC = "Previous Hero",
        Pos = World3 and CFrame.new(-10371, 331, -10131) or nil
    },
    ["Godhuman"] = {
        Key = "BuyGodhuman",
        NPC = "Ancient Monk",
        Pos = World3 and CFrame.new(-13776, 334, -9879) or nil
    },
    ["Sanguine Art (Võ Quỷ)"] = {
        Key = "BuySanguineArt",
        NPC = "Shafi",
        Pos = World3 and CFrame.new(-16353, 160, 99) or nil
    }
}

local SelectedMelee = "Dark Step (Chân Đen)"

-- Hàm lấy danh sách Melee có ở Sea hiện tại
local function GetAvailableMeleeOptions()
    local list = {}
    for name, data in pairs(MeleeCoords) do
        if data.Pos then 
            table.insert(list, name) 
        end
    end
    table.sort(list)
    return list
end

-- Dropdown chọn Melee
v14:AddDropdown({
    Name = "Chọn Melee Cần Mua",
    Options = GetAvailableMeleeOptions(),
    Default = "Dark Step (Chân Đen)",
    Callback = function(Value)
        SelectedMelee = Value
    end
})

-- Toggle Auto Mua Melee
v14:AddToggle({
    Name = "Auto Mua (Bật/Tắt)",
    Default = GetSetting("AutoBuyMelee_Save", false),
    Callback = function(Value)
        _G.AutoBuyMelee = Value
        _G.SaveData["AutoBuyMelee_Save"] = Value
        SaveSettings()
        
        -- QUẢN LÝ NOCLIP
        if Value then
            _G.MeleeNoclip = game:GetService("RunService").Stepped:Connect(function()
                if not _G.AutoBuyMelee then 
                    if _G.MeleeNoclip then _G.MeleeNoclip:Disconnect() end
                    return 
                end
                local char = game.Players.LocalPlayer.Character
                if char then
                    for _, v in pairs(char:GetDescendants()) do
                        if v:IsA("BasePart") and v.CanCollide then
                            v.CanCollide = false
                        end
                    end
                end
            end)
        else
            if _G.MeleeNoclip then 
                _G.MeleeNoclip:Disconnect()
                _G.MeleeNoclip = nil
            end
            local char = game.Players.LocalPlayer.Character
            if char then
                for _, v in pairs(char:GetDescendants()) do
                    if v:IsA("BasePart") then v.CanCollide = true end
                end
            end
        end

        -- LOGIC CHÍNH
        task.spawn(function()
            while _G.AutoBuyMelee do
                task.wait()
                if not _G.AutoBuyMelee then break end

                local data = MeleeCoords[SelectedMelee]
                if not data or not data.Pos then
                    bearlib:Notify({
                        Title = "Zyn Hub",
                        Message = "Lỗi: Không tìm thấy toạ độ cho Melee này ở Sea hiện tại!",
                        Duration = 3
                    })
                    _G.AutoBuyMelee = false
                    break
                end

                local lp = game.Players.LocalPlayer
                if lp.Character and lp.Character:FindFirstChild("HumanoidRootPart") then
                    local hrp = lp.Character.HumanoidRootPart
                    local dist = (hrp.Position - data.Pos.Position).Magnitude

                    if dist > 15 then
                        -- Sử dụng hàm _tp từ file text
                        _tp(data.Pos)
                    else
                        -- Dừng tween nếu đang chạy
                        shouldTween = false
                        hrp.CFrame = data.Pos
                        
                        -- Mua Melee
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(data.Key)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", data.Key)
                        
                        bearlib:Notify({
                            Title = "Zyn Hub",
                            Message = "Đã mua: " .. SelectedMelee,
                            Duration = 2
                        })
                        task.wait(1)
                    end
                end
            end
        end)
    end
})

-- ========================================
-- MUA ĐỒ CRAFT SEA EVENT
-- ========================================
v14:AddSection({"Mua Đồ Craft Sea Event"})

v14:AddButton({
    Name = "Craft Dragonheart",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem", "Craft", "Dragonheart")
        bearlib:Notify({Title = "Craft", Message = "Đã craft Dragonheart", Duration = 2})
    end
})

v14:AddButton({
    Name = "Craft Dragonstorm",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem", "Craft", "Dragonstorm")
        bearlib:Notify({Title = "Craft", Message = "Đã craft Dragonstorm", Duration = 2})
    end
})

v14:AddButton({
    Name = "Craft DinoHood",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem", "Craft", "DinoHood")
        bearlib:Notify({Title = "Craft", Message = "Đã craft DinoHood", Duration = 2})
    end
})

v14:AddButton({
    Name = "Craft SharkTooth",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem", "Craft", "SharkTooth")
        bearlib:Notify({Title = "Craft", Message = "Đã craft SharkTooth", Duration = 2})
    end
})

v14:AddButton({
    Name = "Craft TerrorJaw",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem", "Craft", "TerrorJaw")
        bearlib:Notify({Title = "Craft", Message = "Đã craft TerrorJaw", Duration = 2})
    end
})

v14:AddButton({
    Name = "Craft SharkAnchor",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem", "Craft", "SharkAnchor")
        bearlib:Notify({Title = "Craft", Message = "Đã craft SharkAnchor", Duration = 2})
    end
})

v14:AddButton({
    Name = "Craft LeviathanCrown",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem", "Craft", "LeviathanCrown")
        bearlib:Notify({Title = "Craft", Message = "Đã craft LeviathanCrown", Duration = 2})
    end
})

v14:AddButton({
    Name = "Craft LeviathanShield",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem", "Craft", "LeviathanShield")
        bearlib:Notify({Title = "Craft", Message = "Đã craft LeviathanShield", Duration = 2})
    end
})

v14:AddButton({
    Name = "Craft LeviathanBoat",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem", "Craft", "LeviathanBoat")
        bearlib:Notify({Title = "Craft", Message = "Đã craft LeviathanBoat", Duration = 2})
    end
})

v14:AddButton({
    Name = "Craft LegendaryScroll",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem", "Craft", "LegendaryScroll")
        bearlib:Notify({Title = "Craft", Message = "Đã craft LegendaryScroll", Duration = 2})
    end
})

v14:AddButton({
    Name = "Craft MythicalScroll",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem", "Craft", "MythicalScroll")
        bearlib:Notify({Title = "Craft", Message = "Đã craft MythicalScroll", Duration = 2})
    end
})

-- ========================================
-- MUA HAKI, SORU, GEppo
-- ========================================
v14:AddSection({"Mua Haki, Soru, Geppo"})

v14:AddButton({
    Name = "Buy Geppo $10,000",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")
        bearlib:Notify({Title = "Shop", Message = "Đã mua Geppo", Duration = 2})
    end
})

v14:AddButton({
    Name = "Buy Buso Haki $25,000",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
        bearlib:Notify({Title = "Shop", Message = "Đã mua Buso Haki", Duration = 2})
    end
})

v14:AddButton({
    Name = "Buy Soru $25,000",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru")
        bearlib:Notify({Title = "Shop", Message = "Đã mua Soru", Duration = 2})
    end
})

v14:AddButton({
    Name = "Buy Observation Haki $750,000",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy")
        bearlib:Notify({Title = "Shop", Message = "Đã mua Observation Haki", Duration = 2})
    end
})

-- ========================================
-- MUA KIẾM, SÚNG
-- ========================================
v14:AddSection({"Mua Kiếm, Súng"})

-- Kiếm
v14:AddButton({
    Name = "Buy Cutlass $1,000",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cutlass")
        bearlib:Notify({Title = "Shop", Message = "Đã mua Cutlass", Duration = 2})
    end
})

v14:AddButton({
    Name = "Buy Katana $1,000",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Katana")
        bearlib:Notify({Title = "Shop", Message = "Đã mua Katana", Duration = 2})
    end
})

v14:AddButton({
    Name = "Buy Iron Mace $25,000",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace")
        bearlib:Notify({Title = "Shop", Message = "Đã mua Iron Mace", Duration = 2})
    end
})

v14:AddButton({
    Name = "Buy Dual Katana $12,000",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Duel Katana")
        bearlib:Notify({Title = "Shop", Message = "Đã mua Dual Katana", Duration = 2})
    end
})

v14:AddButton({
    Name = "Buy Triple Katana $60,000",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana")
        bearlib:Notify({Title = "Shop", Message = "Đã mua Triple Katana", Duration = 2})
    end
})

v14:AddButton({
    Name = "Buy Pipe $100,000",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Pipe")
        bearlib:Notify({Title = "Shop", Message = "Đã mua Pipe", Duration = 2})
    end
})

v14:AddButton({
    Name = "Buy Dual-Headed Blade $400,000",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade")
        bearlib:Notify({Title = "Shop", Message = "Đã mua Dual-Headed Blade", Duration = 2})
    end
})

v14:AddButton({
    Name = "Buy Bisento $1,200,000",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Bisento")
        bearlib:Notify({Title = "Shop", Message = "Đã mua Bisento", Duration = 2})
    end
})

v14:AddButton({
    Name = "Buy Soul Cane $750,000",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane")
        bearlib:Notify({Title = "Shop", Message = "Đã mua Soul Cane", Duration = 2})
    end
})

v14:AddButton({
    Name = "Buy Pole V2 5,000F",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ThunderGodTalk")
        bearlib:Notify({Title = "Shop", Message = "Đã mua Pole V2", Duration = 2})
    end
})

-- Súng
v14:AddButton({
    Name = "Buy Slingshot $5,000",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Slingshot")
        bearlib:Notify({Title = "Shop", Message = "Đã mua Slingshot", Duration = 2})
    end
})

v14:AddButton({
    Name = "Buy Musket $8,000",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Musket")
        bearlib:Notify({Title = "Shop", Message = "Đã mua Musket", Duration = 2})
    end
})

v14:AddButton({
    Name = "Buy Flintlock $10,500",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Flintlock")
        bearlib:Notify({Title = "Shop", Message = "Đã mua Flintlock", Duration = 2})
    end
})

v14:AddButton({
    Name = "Buy Refined Slingshot $30,000",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Refined Flintlock") -- Sửa tên cho đúng
        bearlib:Notify({Title = "Shop", Message = "Đã mua Refined Slingshot", Duration = 2})
    end
})

v14:AddButton({
    Name = "Buy Refined Flintlock $65,000",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Refined Flintlock")
        bearlib:Notify({Title = "Shop", Message = "Đã mua Refined Flintlock", Duration = 2})
    end
})

v14:AddButton({
    Name = "Buy Cannon $100,000",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cannon")
        bearlib:Notify({Title = "Shop", Message = "Đã mua Cannon", Duration = 2})
    end
})

v14:AddButton({
    Name = "Buy Kabucha 1,500F",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "2")
        bearlib:Notify({Title = "Shop", Message = "Đã mua Kabucha", Duration = 2})
    end
})

v14:AddButton({
    Name = "Buy Bizarre Rifle 250 Ectoplasm",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm", "Buy", 1)
        bearlib:Notify({Title = "Shop", Message = "Đã mua Bizarre Rifle", Duration = 2})
    end
})

-- ========================================
-- MUA PHỤ KIỆN
-- ========================================
v14:AddSection({"Mua Phụ Kiện"})

v14:AddButton({
    Name = "Buy Black Cape $50,000",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Black Cape")
        bearlib:Notify({Title = "Shop", Message = "Đã mua Black Cape", Duration = 2})
    end
})

v14:AddButton({
    Name = "Buy Swordsman Hat $150,000",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Swordsman Hat")
        bearlib:Notify({Title = "Shop", Message = "Đã mua Swordsman Hat", Duration = 2})
    end
})

v14:AddButton({
    Name = "Buy Tomoe Ring $500,000",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Tomoe Ring")
        bearlib:Notify({Title = "Shop", Message = "Đã mua Tomoe Ring", Duration = 2})
    end
})

-- ========================================
-- ĐỔI TỘC, RESET STATS
-- ========================================
v14:AddSection({"Đổi Tộc, Reset Stats"})

v14:AddButton({
    Name = "Đổi Tộc Ghoul",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm", "Change", 4)
        bearlib:Notify({Title = "Race", Message = "Đã đổi sang Ghoul", Duration = 2})
    end
})

v14:AddButton({
    Name = "Đổi Tộc Cyborg",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CyborgTrainer", "Buy")
        bearlib:Notify({Title = "Race", Message = "Đã đổi sang Cyborg", Duration = 2})
    end
})

v14:AddButton({
    Name = "Reset Stats 2,500F",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2")
        bearlib:Notify({Title = "Stats", Message = "Đã Reset Stats", Duration = 2})
    end
})

v14:AddButton({
    Name = "Random Race 3,000F",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2")
        bearlib:Notify({Title = "Race", Message = "Đã Random Race", Duration = 2})
    end
})

v15:AddSection({"Server Functions"})

-- Redeem All Codes
v15:AddButton({
    Name = "Redeem All Codes",
    Callback = function()
        local Codes = {
            "LIGHTNINGABUSE", "1LOSTADMIN", "ADMINFIGHT", "GIFTING_HOURS",
            "NOMOREHACK", "BANEXPLOIT", "WildDares", "BossBuild",
            "GetPranked", "EARN_FRUITS", "SUB2GAMERROBOT_RESET1", "KITT_RESET",
            "Bignews", "CHANDLER", "Fudd10", "fudd10_v2", "Sub2UncleKizaru",
            "FIGHT4FRUIT", "kittgaming", "TRIPLEABUSE", "Sub2CaptainMaui",
            "Sub2Fer999", "Enyu_is_Pro", "Magicbus", "JCWK", "Starcodeheo",
            "Bluxxy", "SUB2GAMERROBOT_EXP1", "Sub2NoobMaster123", "Sub2Daigrock",
            "Axiore", "TantaiGaming", "StrawHatMaine", "Sub2OfficialNoobie",
            "TheGreatAce", "JULYUPDATE_RESET", "ADMINHACKED", "SEATROLLING",
            "24NOADMIN", "ADMIN_TROLL", "NEWTROLL", "SECRET_ADMIN",
            "staffbattle", "NOEXPLOIT", "NOOB2ADMIN", "CODESLIDE",
            "fruitconcepts", "krazydares"
        }
        local RedeemRemote = replicated.Remotes:FindFirstChild("Redeem")
        if not RedeemRemote then
            bearlib:Notify({Title = "Error", Message = "Không tìm thấy remote Redeem", Duration = 3})
            return
        end
        for _, code in ipairs(Codes) do
            task.wait()
            pcall(function()
                if RedeemRemote.InvokeServer then
                    RedeemRemote:InvokeServer(code)
                else
                    RedeemRemote:FireServer(code)
                end
            end)
        end
        bearlib:Notify({Title = "Success", Message = "Đã thử nhập tất cả mã", Duration = 3})
    end
})

-- ========================================
-- 2. PLAYER GUI / OTHERS
-- ========================================
v15:AddSection({"Player GUI / Others"})

-- Open Awakenings Expert
v15:AddButton({
    Name = "Open Awakenings Expert",
    Callback = function()
        pcall(function()
            plr.PlayerGui.Main.AwakeningToggler.Visible = true
        end)
    end
})

-- Open Title Selection
v15:AddButton({
    Name = "Open Title Selection",
    Callback = function()
        pcall(function()
            replicated.Remotes.CommF_:InvokeServer("getTitles", true)
            plr.PlayerGui.Main.Titles.Visible = true
        end)
    end
})

-- Disable Chat GUI
v15:AddToggle({
    Name = "Disable Chat GUI",
    Default = GetSetting("DisableChat_Save", false),
    Callback = function(Value)
        _G.Rechat = Value
        _G.SaveData["DisableChat_Save"] = Value
        SaveSettings()
        pcall(function()
            game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, not Value)
        end)
    end
})

-- Disable Leaderboard GUI
v15:AddToggle({
    Name = "Disable Leaderboard GUI",
    Default = GetSetting("DisableLeader_Save", false),
    Callback = function(Value)
        _G.ReLeader = Value
        _G.SaveData["DisableLeader_Save"] = Value
        SaveSettings()
        pcall(function()
            game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, not Value)
        end)
    end
})

-- Unlock All Portals (WIP)
v15:AddToggle({
    Name = "Unlock All Portals (WIP)",
    Default = GetSetting("PortalUnLock_Save", false),
    Callback = function(Value)
        _G.PortalUnLock = Value
        _G.SaveData["PortalUnLock_Save"] = Value
        SaveSettings()
    end
})
task.spawn(function()
    while task.wait(3) do
        if _G.PortalUnLock and World3 then
            pcall(function()
                if (Root.Position - CFrame.new(-5097.93, 316.44, -3142.66).Position).Magnitude < 8 then
                    replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-12471.16, 374.94, -7551.67))
                elseif (Root.Position - CFrame.new(-12471.16, 374.94, -7551.67).Position).Magnitude < 8 then
                    replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-5072.08, 314.54, -3151.10))
                end
            end)
        end
    end
end)

-- ========================================
-- 3. GRAPHICS / HAKI STATS
-- ========================================
v15:AddSection({"Graphics / Haki Stats"})

-- Change Buso Stage
local HakiStages = {"Stage 0", "Stage 1", "Stage 2", "Stage 3", "Stage 4", "Stage 5"}
v15:AddDropdown({
    Name = "Select Haki Stage",
    Options = HakiStages,
    Default = "Stage 0",
    Callback = function(Value)
        _G.SelectStateHaki = tonumber(Value:match("%d+"))
    end
})
v15:AddButton({
    Name = "Apply Haki Stage",
    Callback = function()
        pcall(function()
            replicated.Remotes.CommF_:InvokeServer("ChangeBusoStage", _G.SelectStateHaki or 0)
        end)
    end
})

-- ========================================
-- 4. MISC GRAPHICS
-- ========================================
v15:AddSection({"Misc Graphics"})

-- RTX Mode (Visual)
v15:AddToggle({
    Name = "RTX Mode (Visual)",
    Default = GetSetting("RTXMode_Save", false),
    Callback = function(Value)
        _G.RTXMode = Value
        _G.SaveData["RTXMode_Save"] = Value
        SaveSettings()
        if Value then
            task.spawn(function()
                local l = Lighting
                local oldAmbient, oldBrightness = l.Ambient, l.Brightness
                while _G.RTXMode do
                    l.Ambient = Color3.fromRGB(33,33,33)
                    l.Brightness = 0.3
                    l.FogEnd = 9e9
                    task.wait()
                end
                l.Ambient = oldAmbient
                l.Brightness = oldBrightness
                l.FogEnd = 2500
            end)
        end
    end
})

-- Fast Mode (Change Material to Plastic)
v15:AddButton({
    Name = "Fast Mode (Low Graphics)",
    Callback = function()
        local plasticParts = {"Part", "Union", "CornerWedgePart", "TrussPart", "MeshPart"}
        for _, v in pairs(workspace:GetDescendants()) do
            pcall(function()
                if table.find(plasticParts, v.ClassName) then
                    v.Material = Enum.Material.Plastic
                end
            end)
        end
        bearlib:Notify({Title = "Graphics", Message = "Đã chuyển sang chế độ Fast Mode", Duration = 2})
    end
})

-- Low CPU Mode
v15:AddButton({
    Name = "Low CPU Mode",
    Callback = function()
        LowCpu()
        bearlib:Notify({Title = "Optimization", Message = "Đã bật chế độ Low CPU", Duration = 2})
    end
})

-- Increase Boat Speed (Client)
v15:AddButton({
    Name = "Increase Boat Speed (Client)",
    Callback = function()
        pcall(function()
            for _, boat in pairs(workspace.Boats:GetDescendants()) do
                if boat:IsA("VehicleSeat") then
                    boat.MaxSpeed = 350
                    boat.Torque = 0.2
                    boat.TurnSpeed = 5
                end
            end
        end)
        bearlib:Notify({Title = "Boats", Message = "Đã tăng tốc độ thuyền (phía client)", Duration = 2})
    end
})

-- Remove Sky Fog
v15:AddButton({
    Name = "Remove Sky Fog",
    Callback = function()
        pcall(function()
            if Lighting:FindFirstChild("LightingLayers") then Lighting.LightingLayers:Destroy() end
            if Lighting:FindFirstChild("SeaTerrorCC") then Lighting.SeaTerrorCC:Destroy() end
            if Lighting:FindFirstChild("FantasySky") then Lighting.FantasySky:Destroy() end
        end)
        bearlib:Notify({Title = "Fog", Message = "Đã xóa sương mù", Duration = 2})
    end
})

-- ========================================
-- 5. CONFIGURE - GOD
-- ========================================
v15:AddSection({"Configure - God"})

-- Rain Fruits (Client)
v15:AddButton({
    Name = "Rain Fruits (Client)",
    Callback = function()
        task.spawn(function()
            local fruitModel = game:GetObjects("rbxassetid://14759368201")[1]
            for _, fruit in pairs(fruitModel:GetChildren()) do
                fruit.Parent = workspace.Map
                fruit:MoveTo(plr.Character.PrimaryPart.Position + Vector3.new(math.random(-50,50), 100, math.random(-50,50)))
            end
        end)
    end
})

-- Full Bright
v15:AddToggle({
    Name = "Full Bright",
    Default = GetSetting("FullBright_Save", false),
    Callback = function(Value)
        _G.FullBright = Value
        _G.SaveData["FullBright_Save"] = Value
        SaveSettings()
        if Value then
            Lighting.Ambient = Color3.new(1,1,1)
            Lighting.ColorShift_Bottom = Color3.new(1,1,1)
            Lighting.ColorShift_Top = Color3.new(1,1,1)
        else
            Lighting.Ambient = Color3.new(0,0,0)
            Lighting.ColorShift_Bottom = Color3.new(0,0,0)
            Lighting.ColorShift_Top = Color3.new(0,0,0)
        end
    end
})

-- Time Changer (Day/Night)
local TimeOptions = {"Day", "Night"}
v15:AddDropdown({
    Name = "Select Time",
    Options = TimeOptions,
    Default = "Day",
    Callback = function(Value)
        _G.SelectDN = Value
    end
})
v15:AddToggle({
    Name = "Auto Set Time",
    Default = GetSetting("AutoTime_Save", false),
    Callback = function(Value)
        _G.AutoTime = Value
        _G.SaveData["AutoTime_Save"] = Value
        SaveSettings()
    end
})
task.spawn(function()
    while task.wait(1) do
        if _G.AutoTime then
            Lighting.ClockTime = (_G.SelectDN == "Day") and 12 or 0
        end
    end
end)

-- Ice Walk
v15:AddToggle({
    Name = "Ice Walk (Visual)",
    Default = GetSetting("IceWalk_Save", false),
    Callback = function(Value)
        _G.IceWalk = Value
        _G.SaveData["IceWalk_Save"] = Value
        SaveSettings()
    end
})
task.spawn(function()
    while task.wait(0.5) do
        if _G.IceWalk and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
            pcall(function()
                local ice = replicated.Assets.Models.IceSpikes4:Clone()
                ice.Parent = workspace
                ice.Size = Vector3.new(3 + math.random(10,12), 1.7, 3 + math.random(10,12))
                ice.Color = Color3.fromRGB(128,187,219)
                ice.CFrame = CFrame.new(plr.Character.HumanoidRootPart.Position.X, -3.8, plr.Character.HumanoidRootPart.Position.Z)
                local tween = TW:Create(ice, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {Size = Vector3.new(0,0.3,0)})
                tween.Completed:Connect(function() ice:Destroy() end)
                tween:Play()
            end)
        end
    end
end)

v12:AddSection({"Pvp, Aimbot, Movement"})

-- Biến lưu danh sách người chơi
local playerList = {}

-- Hàm cập nhật danh sách người chơi
local function updatePlayerList()
    local newList = {}
    for _, p in ipairs(game:GetService("Players"):GetPlayers()) do
        if p.Name ~= game.Players.LocalPlayer.Name then
            table.insert(newList, p.Name)
        end
    end
    return newList
end

-- Dropdown chọn người chơi
local PlayerDropdown = v12:AddDropdown({
    Name = "Select Players",
    Options = updatePlayerList(),
    Default = nil,
    Multi = false,
    Callback = function(value)
        _G.PlayersList = value
        -- Lưu cấu hình
        _G.SaveData["PlayersList"] = value
        SaveSettings()
    end
})

-- Nút làm mới danh sách người chơi
v12:AddButton({
    Name = "Refresh Player List",
    Callback = function()
        PlayerDropdown:Refresh(updatePlayerList(), true)
    end
})

-- Toggle dịch chuyển đến người chơi
v12:AddToggle({
    Name = "Teleport to Player",
    Default = GetSetting("TpPly_Save", false),
    Callback = function(value)
        _G.TpPly = value
        _G.SaveData["TpPly_Save"] = value
        SaveSettings()
        
        task.spawn(function()
            while _G.TpPly and _G.PlayersList do
                pcall(function()
                    local target = game:GetService("Players"):FindFirstChild(_G.PlayersList)
                    if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
                        _tp(target.Character.HumanoidRootPart.CFrame)
                    end
                end)
                task.wait(0.1)
            end
        end)
    end
})

-- Toggle theo dõi người chơi
v12:AddToggle({
    Name = "Spectate Choose Players",
    Default = GetSetting("SpectatePlys_Save", false),
    Callback = function(value)
        _G.SpectatePlys = value
        _G.SaveData["SpectatePlys_Save"] = value
        SaveSettings()
        
        task.spawn(function()
            if value and _G.PlayersList then
                local target = game:GetService("Players"):FindFirstChild(_G.PlayersList)
                while _G.SpectatePlys and target and target.Character do
                    workspace.Camera.CameraSubject = target.Character.Humanoid
                    task.wait()
                end
            end
            workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
        end)
    end
})

-- ========================================
-- MỤC: AIMBOT
-- ========================================
v12:AddSection({"Aimbot"})

-- Toggle khóa camera
v12:AddToggle({
    Name = "Aimbot Cam Lock",
    Default = GetSetting("AimCam_Save", false),
    Callback = function(value)
        _G.AimCam = value
        _G.SaveData["AimCam_Save"] = value
        SaveSettings()
        
        task.spawn(function()
            local camera = workspace.CurrentCamera
            while _G.AimCam do
                pcall(function()
                    local closest, dist = nil, math.huge
                    for _, p in ipairs(game:GetService("Players"):GetPlayers()) do
                        if p ~= game.Players.LocalPlayer and p.Character and p.Character:FindFirstChild("Head") then
                            if p.Character.Humanoid.Health > 0 then
                                local d = (p.Character.Head.Position - game.Players.LocalPlayer.Character.Head.Position).Magnitude
                                if d < dist then
                                    dist = d
                                    closest = p
                                end
                            end
                        end
                    end
                    if closest and closest.Character then
                        camera.CFrame = CFrame.new(camera.CFrame.Position, closest.Character.HumanoidRootPart.Position)
                    end
                end)
                task.wait()
            end
        end)
    end
})

-- Toggle silent aim (skill)
v12:AddToggle({
    Name = "Aimbot Skills",
    Default = GetSetting("SilentAim_Save", false),
    Callback = function(value)
        _G.SilentAim = value
        _G.SaveData["SilentAim_Save"] = value
        SaveSettings()
    end
})

-- ========================================
-- MỤC: SPEED/JUMP
-- ========================================
v12:AddSection({"Speed/Jump"})

-- LẤY GIÁ TRỊ TỪ GRAVITY HUB
-- Gravity Hub sử dụng:
--   (getgenv()).WalkSpeedValue = 30 (mặc định)
--   (getgenv()).JumpValue = 50 (mặc định)
--   _G.WalkSpeedEnabled để bật/tắt
--   _G.JumpEnabled để bật/tắt

-- Biến điều khiển tốc độ (đồng bộ với Gravity Hub)
_G.WalkSpeedEnabled = _G.WalkSpeedEnabled or false
_G.JumpEnabled = _G.JumpEnabled or false
(getgenv()).WalkSpeedValue = (getgenv()).WalkSpeedValue or 30
(getgenv()).JumpValue = (getgenv()).JumpValue or 50

-- Hàm áp dụng stats (copy từ Gravity Hub)
local function applyStats()
    local char = game.Players.LocalPlayer.Character
    if char then
        local hum = char:FindFirstChildOfClass("Humanoid")
        if hum then
            if _G.WalkSpeedEnabled then
                hum.WalkSpeed = (getgenv()).WalkSpeedValue
            end
            if _G.JumpEnabled then
                hum.JumpPower = (getgenv()).JumpValue
            end
        end
    end
end

-- Hàm theo dõi thay đổi WalkSpeed (giống Gravity Hub)
local function setupSpeedWatcher(hum)
    if hum then
        hum:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
            if _G.WalkSpeedEnabled and hum.WalkSpeed ~= (getgenv()).WalkSpeedValue then
                hum.WalkSpeed = (getgenv()).WalkSpeedValue
            end
        end)
    end
end

-- Theo dõi thay đổi nhân vật (giống Gravity Hub)
local plr = game.Players.LocalPlayer
plr.CharacterAdded:Connect(function(char)
    char:WaitForChild("Humanoid")
    applyStats()
    setupSpeedWatcher(char:FindFirstChildOfClass("Humanoid"))
end)

-- Áp dụng ngay nếu đã có nhân vật
if plr.Character then
    local hum = plr.Character:FindFirstChildOfClass("Humanoid")
    if hum then
        applyStats()
        setupSpeedWatcher(hum)
    end
end

-- Loop giám sát (giữ nguyên từ file text 1.txt)
game:GetService("RunService").Heartbeat:Connect(applyStats)

-- Toggle tốc độ
v12:AddToggle({
    Name = "Set WalkSpeed",
    Default = GetSetting("SpeedToggle_Save", _G.WalkSpeedEnabled),
    Callback = function(value)
        _G.WalkSpeedEnabled = value
        _G.SaveData["SpeedToggle_Save"] = value
        SaveSettings()
        applyStats()
    end
})

-- Nhập giá trị tốc độ (đồng bộ với Gravity Hub)
v12:AddTextBox({
    Name = "WalkSpeed Value",
    Placeholder = "30",
    Default = tostring((getgenv()).WalkSpeedValue),
    Callback = function(value)
        local num = tonumber(value)
        if num and num > 0 then
            (getgenv()).WalkSpeedValue = num
            _G.SaveData["SpeedValue_Save"] = num
            SaveSettings()
            applyStats()
        end
    end
})

-- Toggle nhảy
v12:AddToggle({
    Name = "Set JumpPower",
    Default = GetSetting("JumpToggle_Save", _G.JumpEnabled),
    Callback = function(value)
        _G.JumpEnabled = value
        _G.SaveData["JumpToggle_Save"] = value
        SaveSettings()
        applyStats()
    end
})

-- Nhập giá trị nhảy (đồng bộ với Gravity Hub)
v12:AddTextBox({
    Name = "JumpPower Value",
    Placeholder = "50",
    Default = tostring((getgenv()).JumpValue),
    Callback = function(value)
        local num = tonumber(value)
        if num and num > 0 then
            (getgenv()).JumpValue = num
            _G.SaveData["JumpValue_Save"] = num
            SaveSettings()
            applyStats()
        end
    end
})
-- ========================================
-- MỤC: LOCALPLAYER SETTINGS / MISC
-- ========================================
v12:AddSection({"LocalPlayer Settings / Misc"})

-- Toggle vô hạn Mink V3
v12:AddToggle({
    Name = "Instance Mink V3 [ INF ]",
    Default = GetSetting("InfAblities_Save", false),
    Callback = function(value)
        _G.InfAblities = value
        _G.SaveData["InfAblities_Save"] = value
        SaveSettings()
        
        task.spawn(function()
            while _G.InfAblities do
                pcall(function()
                    local char = game.Players.LocalPlayer.Character
                    if char and char:FindFirstChild("HumanoidRootPart") then
                        if not char.HumanoidRootPart:FindFirstChild("Agility") then
                            local agility = game:GetService("ReplicatedStorage").FX.Agility:Clone()
                            agility.Name = "Agility"
                            agility.Parent = char.HumanoidRootPart
                        end
                    end
                end)
                task.wait(0.2)
            end
            
            -- Cleanup khi tắt
            pcall(function()
                local char = game.Players.LocalPlayer.Character
                if char and char.HumanoidRootPart:FindFirstChild("Agility") then
                    char.HumanoidRootPart.Agility:Destroy()
                end
            end)
        end)
    end
})

-- Toggle vô hạn năng lượng
v12:AddToggle({
    Name = "Instance Energy [ INF ]",
    Default = GetSetting("infEnergy_Save", false),
    Callback = function(value)
        _G.infEnergy = value
        _G.SaveData["infEnergy_Save"] = value
        SaveSettings()
        getInfinity_Ability("Energy", _G.infEnergy)
    end
})

-- Toggle vô hạn Soru
v12:AddToggle({
    Name = "Instance Soru [ INF ]",
    Default = GetSetting("InfSoru_Save", false),
    Callback = function(value)
        _G.InfSoru = value
        _G.SaveData["InfSoru_Save"] = value
        SaveSettings()
        getInfinity_Ability("Soru", _G.InfSoru)
    end
})

-- Toggle vô hạn tầm nhìn Observation
v12:AddToggle({
    Name = "Instance Observation Range [ INF ]",
    Default = GetSetting("InfiniteObRange_Save", false),
    Callback = function(value)
        _G.InfiniteObRange = value
        _G.SaveData["InfiniteObRange_Save"] = value
        SaveSettings()
        getInfinity_Ability("Observation", _G.InfiniteObRange)
    end
})

-- ========================================
-- MỤC: SETTINGS COMBAT / AIMBOT SETTINGS
-- ========================================
v12:AddSection({"Settings Combat / Aimbot Settings"})

-- Toggle bỏ qua đồng đội
v12:AddToggle({
    Name = "Ignore Same Teams",
    Default = GetSetting("NoAimTeam_Save", false),
    Callback = function(value)
        _G.NoAimTeam = value
        _G.SaveData["NoAimTeam_Save"] = value
        SaveSettings()
    end
})

-- Toggle tự động chấp nhận đồng minh
v12:AddToggle({
    Name = "Accept Allies",
    Default = GetSetting("AcceptAlly_Save", false),
    Callback = function(value)
        _G.AcceptAlly = value
        _G.SaveData["AcceptAlly_Save"] = value
        SaveSettings()
        
        task.spawn(function()
            while _G.AcceptAlly do
                pcall(function()
                    local remote = game:GetService("ReplicatedStorage").Remotes.CommF_
                    for _, p in ipairs(game:GetService("Players"):GetPlayers()) do
                        if p.Name ~= game.Players.LocalPlayer.Name then
                            remote:InvokeServer("AcceptAlly", p.Name)
                        end
                    end
                end)
                task.wait(1)
            end
        end)
    end
})
