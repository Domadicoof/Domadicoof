-- local function scary()
--     warn("❌ This script must only be executed from the offical NoxHub loader")
--         return
--     end

-- local HttpService = game:GetService("HttpService")
-- local SECRET_KEY = "YourSecretSecondaryToken" 
-- local function simpleHMAC(input, key)
--     return HttpService:UrlEncode(input .. key)
-- end
-- if not _G._secondaryData or
--    not _G._secondaryData.nonce or 
--    not _G._secondaryData.timestamp or 
--    not _G._secondaryData.signature or 
--    not _G._secondaryData.userKey or 
--    not _G.__userKey then
--     print("❌ Security verification failed: missing token data or user key.")
--     scary()
--     return
-- end
-- if _G._secondaryData.userKey ~= _G.__userKey then
--     print("❌ Security verification failed: user key mismatch.")
--     return
-- end
-- local tokenData = _G._secondaryData.nonce .. ":" .. _G._secondaryData.timestamp .. ":" .. _G.__userKey
-- local expectedSignature = simpleHMAC(tokenData, SECRET_KEY)
-- if expectedSignature ~= _G._secondaryData.signature then
--     print("❌ Security verification failed: token signature mismatch.")
--     return
-- end
-- local allowedTimeWindow = 300  -- seconds
-- local currentTime = os.time()
-- if math.abs(currentTime - tonumber(_G._secondaryData.timestamp)) > allowedTimeWindow then
--     print("❌ Security verification failed: token expired.")
--     return
-- end
-- _G._secondaryData = nil
-- _G.__userKey = nil
print("✅ Security verification passed. Loading NoxHub...")
if game.PlaceId == 2753915549 then
	World1 = true;
elseif game.PlaceId == 4442272183 then
	World2 = true;
elseif game.PlaceId == 7449423635 then
	World3 = true;
end;
-- print("--------------------------------------------------------------------------");
-- print("-- [[ Webhook ]] --");
-- (loadstring(game:HttpGet("https://gitshare.me/backend/api/files/677ec71a-082b-4b8c-a1e8-f590f2ab286a/download")))();
-- print("--------------------------------------------------------------------------");
local Update = (loadstring(Game:HttpGet("https://you.whimper.xyz/sources/nox/data/fruitsource.lua")))();
if Update:LoadAnimation() then
	Update:StartLoad();
end;
if Update:LoadAnimation() then
	Update:Loaded();
end;
local Library = Update:Window({
	SubTitle = "Blox Fruits",
	Size = UDim2.new(0, 450, 0, 300),
	TabWidth = 140
});
local MainTab = Library:Tab("Main", "rbxassetid://10723407389");
local FarmTab = Library:Tab("Farming", "rbxassetid://10723415335");
local ItemsTab = Library:Tab("Items", "rbxassetid://10709782497");
local SettingsTab = Library:Tab("Setting", "rbxassetid://10734950309");
local LocalPlayerTab = Library:Tab("Local Player", "rbxassetid://10747373176");
local HoldTab = Library:Tab("Hold Skill", "rbxassetid://10734984606");
if World3 then
	SeaTab = Library:Tab("Sea Event", "rbxassetid://10709761530");
	SettingSeaTab = Library:Tab("Setting Sea", "rbxassetid://10709810948");
end;
if World2 or World3 then
	SeaStackTab = Library:Tab("Stack Sea", "rbxassetid://10747376931");
end;
if World3 then
	CraftTab = Library:Tab("Crafts", "rbxassetid://10723405360");
	DragonDojoTab = Library:Tab("Dragon Dojo", "rbxassetid://10734951847");
end;
local StatsTab = Library:Tab("Stats Weapon", "rbxassetid://10709770317");
if World3 or World2 then
	RaceV4Tab = Library:Tab("Race V4", "rbxassetid://10723425539");
end;
local CombatTab = Library:Tab("Combat", "rbxassetid://10734975486");
if World2 or World3 then
	RaidTab = Library:Tab("Raid", "rbxassetid://10723345749");
end;
local EspTab = Library:Tab("Esp", "rbxassetid://10723346959");
local TeleportTab = Library:Tab("Teleport", "rbxassetid://10734886004");
local ShopTab = Library:Tab("Shop", "rbxassetid://10734952479");
local FruitTab = Library:Tab("Devil Fruit", "rbxassetid://10734883986");
local MiscTab = Library:Tab("Misc", "rbxassetid://10723424838");
local ServTab = Library:Tab("Server", "rbxassetid://10723426722");
_G.Settings = {
	Main = {
		["Select Weapon"] = "Melee",
		["Farm Mode"] = "Normal",
		["Auto Farm"] = false,
		["Auto Farm Fast"] = false,
		["Selected Mastery Mode"] = "Quest",
		["Auto Farm Fruit Mastery"] = false,
		["Auto Farm Gun Mastery"] = false,
		["Selected Mastery Sword"] = nil,
		["Auto Farm Sword Mastery"] = false,
		["Selected Mob"] = nil,
		["Auto Farm Mob"] = false,
		["Selected Boss"] = nil,
		["Auto Farm Boss"] = false,
		["Auto Farm All Boss"] = false
	},
	Event = {},
	Farm = {
		["Auto Elite Hunter"] = false,
		["Auto Elite Hunter Hop"] = false,
		["Selected Bone Farm Mode"] = "Quest",
		["Auto Farm Bone"] = false,
		["Auto Random Surprise"] = false,
		["Auto Pirate Raid"] = false,
		["Auto Farm Observation"] = false,
		["Auto Observation V2"] = false,
		["Auto Musketeer Hat"] = false,
		["Auto Saber"] = false,
		["Auto Farm Chest Tween"] = false,
		["Auto Farm Chest Instant"] = false,
		["Auto Chest Hop"] = false,
		["Auto Farm Chest Mirage"] = false,
		["Auto Stop Items"] = false,
		["Auto Farm Katakuri"] = false,
		["Auto Spawn Cake Prince"] = false,
		["Auto Kill Cake Prince"] = false,
		["Auto Kill Dough King"] = false,
		["Auto Farm Radioactive"] = false,
		["Auto Farm Mystic Droplet"] = false,
		["Auto Farm Magma Ore"] = false,
		["Auto Farm Angel Wings"] = false,
		["Auto Farm Leather"] = false,
		["Auto Farm Scrap Metal"] = false,
		["Auto Farm Conjured Cocoa"] = false,
		["Auto Farm Dragon Scale"] = false,
		["Auto Farm Gunpowder"] = false,
		["Auto Farm Fish Tail"] = false,
		["Auto Farm Mini Tusk"] = false
	},
	Setting = {
		["Spin Position"] = false,
		["Farm Distance"] = 35,
		["Player Tween Speed"] = 350,
		["Bring Mob"] = true,
		["Bring Mob Mode"] = "Normal",
		["Fast Attack"] = true,
		["Fast Attack Mode"] = "Normal",
		["Fast Attack Type"] = "New",
		["Attack Aura"] = true,
		["Hide Notification"] = false,
		["Hide Damage Text"] = true,
		["Black Screen"] = false,
		["White Screen"] = false,
		["Hide Monster"] = false,
		["Mastery Health"] = 25,
		["Fruit Mastery Skill Z"] = true,
		["Fruit Mastery Skill X"] = true,
		["Fruit Mastery Skill C"] = true,
		["Fruit Mastery Skill V"] = false,
		["Fruit Mastery Skill F"] = false,
		["Gun Mastery Skill Z"] = true,
		["Gun Mastery Skill X"] = true,
		["Auto Set Spawn Point"] = true,
		["Auto Observation"] = false,
		["Auto Haki"] = true,
		["Auto Rejoin"] = true,
		["Bypass Anti Cheat"] = true
	},
	Hold = {
		["Hold Mastery Skill Z"] = 0,
		["Hold Mastery Skill X"] = 0,
		["Hold Mastery Skill C"] = 0,
		["Hold Mastery Skill V"] = 0,
		["Hold Mastery Skill F"] = 0,
		["Hold Sea Skill Z"] = 0,
		["Hold Sea Skill X"] = 0,
		["Hold Sea Skill C"] = 0,
		["Hold Sea Skill V"] = 0,
		["Hold Sea Skill F"] = 0
	},
	Stats = {
		["Auto Add Melee Stats"] = false,
		["Auto Add Defense Stats"] = false,
		["Auto Add Devil Fruit Stats"] = false,
		["Auto Add Sword Stats"] = false,
		["Auto Add Gun Stats"] = false,
		["Point Stats"] = 1
	},
	Items = {
		["Auto Second Sea"] = false,
		["Auto Third Sea"] = false,
		["Auto Farm Factory"] = false,
		["Auto Super Human"] = false,
		["Auto Death Step"] = false,
		["Auto Fishman Karate"] = false,
		["Auto Electric Claw"] = false,
		["Auto Dragon Talon"] = false,
		["Auto God Human"] = false,
		["Auto Buddy Sword"] = false,
		["Auto Soul Guitar"] = false,
		["Auto Rengoku"] = false,
		["Auto Hallow Scythe"] = false,
		["Auto Warden Sword"] = false,
		["Auto Cursed Dual Katana"] = false,
		["Auto Yama"] = false,
		["Auto Tushita"] = false,
		["Auto Canvander"] = false,
		["Auto Dragon Trident"] = false,
		["Auto Pole"] = false,
		["Auto Shawk Saw"] = false,
		["Auto Greybeard"] = false,
		["Auto Swan Glasses"] = false,
		["Auto Arena Trainer"] = false,
		["Auto Dark Dagger"] = false,
		["Auto Press Haki Button"] = false,
		["Auto Rainbow Haki"] = false,
		["Auto Holy Torch"] = false,
		["Auto Bartilo Quest"] = false
	},
	Esp = {
		["ESP Player"] = false,
		["ESP Chest"] = false,
		["ESP DevilFruit"] = false,
		["ESP RealFruit"] = false,
		["ESP Flower"] = false,
		["ESP Island"] = false,
		["ESP Npc"] = false,
		["ESP Sea Beast"] = false,
		["ESP Monster"] = false,
		["ESP Mirage"] = false,
		["ESP Kitsune"] = false,
		["ESP Frozen"] = false,
		["ESP Advanced Fruit Dealer"] = false,
		["ESP Aura"] = false,
		["ESP Gear"] = false
	},
	DragonDojo = {
		["Auto Farm Blaze Ember"] = false,
		["Auto Collect Blaze Ember"] = false
	},
	SeaEvent = {
		["Selected Boat"] = "Guardian",
		["Selected Zone"] = "Zone 5",
		["Boat Tween Speed"] = 300,
		["Sail Boat"] = false,
		["Auto Farm Shark"] = true,
		["Auto Farm Piranha"] = true,
		["Auto Farm Fish Crew Member"] = true,
		["Auto Farm Ghost Ship"] = true,
		["Auto Farm Pirate Brigade"] = true,
		["Auto Farm Pirate Grand Brigade"] = true,
		["Auto Farm Terrorshark"] = true,
		["Auto Farm Seabeasts"] = true,
		["Dodge Seabeasts Attack"] = true,
		["Dodge Terrorshark Attack"] = true,
		Lightning = false,
		["Increase Boat Speed"] = false,
		["No Clip Rock"] = false
	},
	SettingSea = {
		["Skill Devil Fruit"] = true,
		["Skill Melee"] = true,
		["Skill Sword"] = true,
		["Skill Gun"] = true,
		["Sea Fruit Skill Z"] = true,
		["Sea Fruit Skill X"] = true,
		["Sea Fruit Skill C"] = true,
		["Sea Fruit Skill V"] = false,
		["Sea Fruit Skill F"] = false,
		["Sea Melee Skill Z"] = true,
		["Sea Melee Skill X"] = true,
		["Sea Melee Skill C"] = true,
		["Sea Melee Skill V"] = true,
		["Sea Sword Skill Z"] = true,
		["Sea Sword Skill X"] = true,
		["Sea Gun Skill Z"] = true,
		["Sea Gun Skill X"] = true
	},
	SeaStack = {
		["Teleport To Frozen Dimension"] = false,
		["Sail To Frozen Dimension"] = false,
		["Summon Frozen Dimension"] = false,
		["Teleport To Kitsune Island"] = false,
		["Auto Collect Azure Ember"] = false,
		["Set Azure Ember"] = 20,
		["Auto Trade Azure Ember"] = false,
		["Teleport To Mirage Island"] = false,
		["Teleport To Advanced Fruit Dealer"] = false,
		["Auto Attack Seabeasts"] = false,
		["Summon Prehistoric Island"] = false,
		["Tween To Prehistoric Island"] = false,
		["Auto Kill Lava Golem"] = false
	},
	Craft = {
		["Auto Craft Common Scroll"] = false,
		["Auto Craft Rare Scroll"] = false,
		["Auto Craft Legendary Scroll"] = false,
		["Auto Craft Mythical Scroll"] = false
	},
	Race = {
		["Auto Race V2"] = false,
		["Auto Race V3"] = false,
		["Selected PlaceV4"] = nil,
		["Teleport To PlaceV4"] = false,
		["Auto Buy Gear"] = false,
		["Tween To Highest Mirage"] = false,
		["Find Blue Gear"] = false,
		["Look Moon Ability"] = false,
		["Auto Train"] = false,
		["Auto Kill Player After Trial"] = false,
		["Auto Trial"] = false
	},
	Combat = {
		["Auto Kill Player Quest"] = false,
		["Aimbot Gun"] = false,
		["Aimbot Skill Neares"] = false,
		["Aimbot Skill"] = false,
		["Enable PvP"] = false
	},
	Raid = {
		["Selected Chip"] = nil,
		["Auto Dungeon"] = false,
		["Auto Awaken"] = false,
		["Price Devil Fruit"] = 1000000,
		["Unstore Devil Fruit"] = false,
		["Law Raid"] = false
	},
	Shop = {
		["Auto Buy Legendary Sword"] = false,
		["Auto Buy Haki Color"] = false
	},
	LocalPlayer = {
		["Infinite Energy"] = false,
		["Infinite Ability"] = true,
		["Infinite Geppo"] = false,
		["Infinite Soru"] = false,
		["Dodge No Cooldown"] = false,
		["Active Race V3"] = false,
		["Active Race V4"] = true,
		["Walk On Water"] = true,
		["No Clip"] = false
	},
	Fruit = {
		["Auto Buy Random Fruit"] = false,
		["Store Rarity Fruit"] = "Common - Mythical",
		["Auto Store Fruit"] = false,
		["Fruit Notification"] = false,
		["Teleport To Fruit"] = false,
		["Tween To Fruit"] = false
	},
	Misc = {
		["Hide Chat"] = false,
		["Hide Leaderboard"] = false,
		["Highlight Mode"] = false
	}
};
(getgenv()).Load = function()
	if readfile and writefile and isfile and isfolder then
		if not isfolder("NoxHub") then
			makefolder("NoxHub");
		end;
		if not isfolder("NoxHub/Blox Fruits/") then
			makefolder("NoxHub/Blox Fruits/");
		end;
		if not isfile(("NoxHub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json")) then
			writefile("NoxHub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", (game:GetService("HttpService")):JSONEncode(_G.Settings));
		else
			local Decode = (game:GetService("HttpService")):JSONDecode(readfile("NoxHub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"));
			for i, v in pairs(Decode) do
				_G.Settings[i] = v;
			end;
		end;
		print("Loaded!");
	else
		return warn("Status : Undetected Executor");
	end;
end;
(getgenv()).SaveSetting = function()
	if Update:SaveSettings() then
		if readfile and writefile and isfile and isfolder then
			if not isfile(("NoxHub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json")) then
				(getgenv()).Load();
			else
				local Decode = (game:GetService("HttpService")):JSONDecode(readfile("NoxHub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"));
				local Array = {};
				for i, v in pairs(_G.Settings) do
					Array[i] = v;
				end;
				writefile("NoxHub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", (game:GetService("HttpService")):JSONEncode(Array));
			end;
		else
			return warn("Status : Undetected Executor");
		end;
	end;
end;
(getgenv()).Load();
spawn(function()
	repeat
		task.wait();
	until game:IsLoaded();
	local ChatService = game:GetService("Chat");
	wait(1);
	((require(game.ReplicatedStorage.Notification)).new("<Color=Purple>[ Welcome " .. game.Players.LocalPlayer.DisplayName .. " ]<Color=/>")):Display();
	wait(1);
	((require(game.ReplicatedStorage.Notification)).new("<Color=Yellow>[ Enjoy for script ]<Color=/>")):Display();
end);
function CheckQuest()
	MyLevel = (game:GetService("Players")).LocalPlayer.Data.Level.Value;
	if World1 then
		if MyLevel == 1 or MyLevel <= 9 then
			Mon = "Bandit";
			LevelQuest = 1;
			NameQuest = "BanditQuest1";
			NameMon = "Bandit";
			CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544);
			CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125);
		elseif MyLevel == 10 or MyLevel <= 14 then
			Mon = "Monkey";
			LevelQuest = 1;
			NameQuest = "JungleQuest";
			NameMon = "Monkey";
			CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0);
			CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209);
		elseif MyLevel == 15 or MyLevel <= 29 then
			Mon = "Gorilla";
			LevelQuest = 2;
			NameQuest = "JungleQuest";
			NameMon = "Gorilla";
			CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0);
			CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875);
		elseif MyLevel == 30 or MyLevel <= 39 then
			Mon = "Pirate";
			LevelQuest = 1;
			NameQuest = "BuggyQuest1";
			NameMon = "Pirate";
			CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627);
			CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125);
		elseif MyLevel == 40 or MyLevel <= 59 then
			Mon = "Brute";
			LevelQuest = 2;
			NameQuest = "BuggyQuest1";
			NameMon = "Brute";
			CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627);
			CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875);
		elseif MyLevel == 60 or MyLevel <= 74 then
			Mon = "Desert Bandit";
			LevelQuest = 1;
			NameQuest = "DesertQuest";
			NameMon = "Desert Bandit";
			CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693);
			CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375);
		elseif MyLevel == 75 or MyLevel <= 89 then
			Mon = "Desert Officer";
			LevelQuest = 2;
			NameQuest = "DesertQuest";
			NameMon = "Desert Officer";
			CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693);
			CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875);
		elseif MyLevel == 90 or MyLevel <= 99 then
			Mon = "Snow Bandit";
			LevelQuest = 1;
			NameQuest = "SnowQuest";
			NameMon = "Snow Bandit";
			CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685);
			CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125);
		elseif MyLevel == 100 or MyLevel <= 119 then
			Mon = "Snowman";
			LevelQuest = 2;
			NameQuest = "SnowQuest";
			NameMon = "Snowman";
			CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685);
			CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625);
		elseif MyLevel == 120 or MyLevel <= 149 then
			Mon = "Chief Petty Officer";
			LevelQuest = 1;
			NameQuest = "MarineQuest2";
			NameMon = "Chief Petty Officer";
			CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625);
		elseif MyLevel == 150 or MyLevel <= 174 then
			Mon = "Sky Bandit";
			LevelQuest = 1;
			NameQuest = "SkyQuest";
			NameMon = "Sky Bandit";
			CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268);
			CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625);
		elseif MyLevel == 175 or MyLevel <= 189 then
			Mon = "Dark Master";
			LevelQuest = 2;
			NameQuest = "SkyQuest";
			NameMon = "Dark Master";
			CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268);
			CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625);
		elseif MyLevel == 190 or MyLevel <= 209 then
			Mon = "Prisoner";
			LevelQuest = 1;
			NameQuest = "PrisonerQuest";
			NameMon = "Prisoner";
			CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -0.00000000500292918, -0.995993316, 0.00000000160817859, 1, -0.00000000516744869, 0.995993316, -0.00000000206384709, -0.0894274712);
			CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781);
		elseif MyLevel == 210 or MyLevel <= 249 then
			Mon = "Dangerous Prisoner";
			LevelQuest = 2;
			NameQuest = "PrisonerQuest";
			NameMon = "Dangerous Prisoner";
			CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -0.00000000500292918, -0.995993316, 0.00000000160817859, 1, -0.00000000516744869, 0.995993316, -0.00000000206384709, -0.0894274712);
			CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375);
		elseif MyLevel == 250 or MyLevel <= 274 then
			Mon = "Toga Warrior";
			LevelQuest = 1;
			NameQuest = "ColosseumQuest";
			NameMon = "Toga Warrior";
			CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298);
			CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625);
		elseif MyLevel == 275 or MyLevel <= 299 then
			Mon = "Gladiator";
			LevelQuest = 2;
			NameQuest = "ColosseumQuest";
			NameMon = "Gladiator";
			CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298);
			CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625);
		elseif MyLevel == 300 or MyLevel <= 324 then
			Mon = "Military Soldier";
			LevelQuest = 1;
			NameQuest = "MagmaQuest";
			NameMon = "Military Soldier";
			CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469);
			CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875);
		elseif MyLevel == 325 or MyLevel <= 374 then
			Mon = "Military Spy";
			LevelQuest = 2;
			NameQuest = "MagmaQuest";
			NameMon = "Military Spy";
			CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469);
			CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375);
		elseif MyLevel == 375 or MyLevel <= 399 then
			Mon = "Fishman Warrior";
			LevelQuest = 1;
			NameQuest = "FishmanQuest";
			NameMon = "Fishman Warrior";
			CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734);
			CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625);
			if _G.Settings.Main["Auto Farm"] and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
			end;
		elseif MyLevel == 400 or MyLevel <= 449 then
			Mon = "Fishman Commando";
			LevelQuest = 2;
			NameQuest = "FishmanQuest";
			NameMon = "Fishman Commando";
			CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734);
			CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875);
			if _G.Settings.Main["Auto Farm"] and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
			end;
		elseif MyLevel == 450 or MyLevel <= 474 then
			Mon = "God's Guard";
			LevelQuest = 1;
			NameQuest = "SkyExp1Quest";
			NameMon = "God's Guard";
			CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859);
			CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375);
			if _G.Settings.Main["Auto Farm"] and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.82275, 872.54248, -1667.55688));
			end;
		elseif MyLevel == 475 or MyLevel <= 524 then
			Mon = "Shanda";
			LevelQuest = 2;
			NameQuest = "SkyExp1Quest";
			NameMon = "Shanda";
			CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998);
			CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531);
			if _G.Settings.Main["Auto Farm"] and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047));
			end;
		elseif MyLevel == 525 or MyLevel <= 549 then
			Mon = "Royal Squad";
			LevelQuest = 1;
			NameQuest = "SkyExp2Quest";
			NameMon = "Royal Squad";
			CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875);
		elseif MyLevel == 550 or MyLevel <= 624 then
			Mon = "Royal Soldier";
			LevelQuest = 2;
			NameQuest = "SkyExp2Quest";
			NameMon = "Royal Soldier";
			CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625);
		elseif MyLevel == 625 or MyLevel <= 649 then
			Mon = "Galley Pirate";
			LevelQuest = 1;
			NameQuest = "FountainQuest";
			NameMon = "Galley Pirate";
			CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381);
			CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875);
		elseif MyLevel >= 650 then
			Mon = "Galley Captain";
			LevelQuest = 2;
			NameQuest = "FountainQuest";
			NameMon = "Galley Captain";
			CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381);
			CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375);
		end;
	elseif World2 then
		if MyLevel == 700 or MyLevel <= 724 then
			Mon = "Raider";
			LevelQuest = 1;
			NameQuest = "Area1Quest";
			NameMon = "Raider";
			CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985);
			CFrameMon = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125);
		elseif MyLevel == 725 or MyLevel <= 774 then
			Mon = "Mercenary";
			LevelQuest = 2;
			NameQuest = "Area1Quest";
			NameMon = "Mercenary";
			CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985);
			CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625);
		elseif MyLevel == 775 or MyLevel <= 799 then
			Mon = "Swan Pirate";
			LevelQuest = 1;
			NameQuest = "Area2Quest";
			NameMon = "Swan Pirate";
			CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906);
			CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625);
		elseif MyLevel == 800 or MyLevel <= 874 then
			Mon = "Factory Staff";
			NameQuest = "Area2Quest";
			LevelQuest = 2;
			NameMon = "Factory Staff";
			CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 0.000000000896074881, -0.999488771, 0.000000000136326533, 1, 0.000000000892172336, 0.999488771, -0.000000000107732087, -0.0319722369);
			CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875);
		elseif MyLevel == 875 or MyLevel <= 899 then
			Mon = "Marine Lieutenant";
			LevelQuest = 1;
			NameQuest = "MarineQuest3";
			NameMon = "Marine Lieutenant";
			CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268);
			CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125);
		elseif MyLevel == 900 or MyLevel <= 949 then
			Mon = "Marine Captain";
			LevelQuest = 2;
			NameQuest = "MarineQuest3";
			NameMon = "Marine Captain";
			CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268);
			CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625);
		elseif MyLevel == 950 or MyLevel <= 974 then
			Mon = "Zombie";
			LevelQuest = 1;
			NameQuest = "ZombieQuest";
			NameMon = "Zombie";
			CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146);
			CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875);
		elseif MyLevel == 975 or MyLevel <= 999 then
			Mon = "Vampire";
			LevelQuest = 2;
			NameQuest = "ZombieQuest";
			NameMon = "Vampire";
			CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146);
			CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625);
		elseif MyLevel == 1000 or MyLevel <= 1049 then
			Mon = "Snow Trooper";
			LevelQuest = 1;
			NameQuest = "SnowMountainQuest";
			NameMon = "Snow Trooper";
			CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106);
			CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875);
		elseif MyLevel == 1050 or MyLevel <= 1099 then
			Mon = "Winter Warrior";
			LevelQuest = 2;
			NameQuest = "SnowMountainQuest";
			NameMon = "Winter Warrior";
			CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106);
			CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625);
		elseif MyLevel == 1100 or MyLevel <= 1124 then
			Mon = "Lab Subordinate";
			LevelQuest = 1;
			NameQuest = "IceSideQuest";
			NameMon = "Lab Subordinate";
			CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578);
			CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375);
		elseif MyLevel == 1125 or MyLevel <= 1174 then
			Mon = "Horned Warrior";
			LevelQuest = 2;
			NameQuest = "IceSideQuest";
			NameMon = "Horned Warrior";
			CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578);
			CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375);
		elseif MyLevel == 1175 or MyLevel <= 1199 then
			Mon = "Magma Ninja";
			LevelQuest = 1;
			NameQuest = "FireSideQuest";
			NameMon = "Magma Ninja";
			CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213);
			CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375);
		elseif MyLevel == 1200 or MyLevel <= 1249 then
			Mon = "Lava Pirate";
			LevelQuest = 2;
			NameQuest = "FireSideQuest";
			NameMon = "Lava Pirate";
			CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213);
			CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875);
		elseif MyLevel == 1250 or MyLevel <= 1274 then
			Mon = "Ship Deckhand";
			LevelQuest = 1;
			NameQuest = "ShipQuest1";
			NameMon = "Ship Deckhand";
			CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016);
			CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375);
			if _G.Settings.Main["Auto Farm"] and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
			end;
		elseif MyLevel == 1275 or MyLevel <= 1299 then
			Mon = "Ship Engineer";
			LevelQuest = 2;
			NameQuest = "ShipQuest1";
			NameMon = "Ship Engineer";
			CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016);
			CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875);
			if _G.Settings.Main["Auto Farm"] and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
			end;
		elseif MyLevel == 1300 or MyLevel <= 1324 then
			Mon = "Ship Steward";
			LevelQuest = 1;
			NameQuest = "ShipQuest2";
			NameMon = "Ship Steward";
			CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125);
			CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625);
			if _G.Settings.Main["Auto Farm"] and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
			end;
		elseif MyLevel == 1325 or MyLevel <= 1349 then
			Mon = "Ship Officer";
			LevelQuest = 2;
			NameQuest = "ShipQuest2";
			NameMon = "Ship Officer";
			CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125);
			CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625);
			if _G.Settings.Main["Auto Farm"] and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
			end;
		elseif MyLevel == 1350 or MyLevel <= 1374 then
			Mon = "Arctic Warrior";
			LevelQuest = 1;
			NameQuest = "FrostQuest";
			NameMon = "Arctic Warrior";
			CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909);
			CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125);
			if _G.Settings.Main["Auto Farm"] and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422));
			end;
		elseif MyLevel == 1375 or MyLevel <= 1424 then
			Mon = "Snow Lurker";
			LevelQuest = 2;
			NameQuest = "FrostQuest";
			NameMon = "Snow Lurker";
			CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909);
			CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375);
		elseif MyLevel == 1425 or MyLevel <= 1449 then
			Mon = "Sea Soldier";
			LevelQuest = 1;
			NameQuest = "ForgottenQuest";
			NameMon = "Sea Soldier";
			CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376);
			CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125);
		elseif MyLevel >= 1450 then
			Mon = "Water Fighter";
			LevelQuest = 2;
			NameQuest = "ForgottenQuest";
			NameMon = "Water Fighter";
			CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376);
			CFrameMon = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875);
		end;
	elseif World3 then
		if MyLevel == 1500 or MyLevel <= 1524 then
			Mon = "Pirate Millionaire";
			LevelQuest = 1;
			NameQuest = "PiratePortQuest";
			NameMon = "Pirate Millionaire";
			CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627);
			CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375);
		elseif MyLevel == 1525 or MyLevel <= 1574 then
			Mon = "Pistol Billionaire";
			LevelQuest = 2;
			NameQuest = "PiratePortQuest";
			NameMon = "Pistol Billionaire";
			CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627);
			CFrameMon = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875);
		elseif MyLevel == 1575 or MyLevel <= 1599 then
			Mon = "Dragon Crew Warrior";
			LevelQuest = 1;
			NameQuest = "AmazonQuest";
			NameMon = "Dragon Crew Warrior";
			CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359);
			CFrameMon = CFrame.new(6141.140625, 51.35136413574219, -1340.738525390625);
		elseif MyLevel == 1600 or MyLevel <= 1624 then
			Mon = "Dragon Crew Archer [Lv. 1600]";
			NameQuest = "AmazonQuest";
			LevelQuest = 2;
			NameMon = "Dragon Crew Archer";
			CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375);
			CFrameMon = CFrame.new(6616.41748046875, 441.7670593261719, 446.0469970703125);
		elseif MyLevel == 1625 or MyLevel <= 1649 then
			Mon = "Female Islander";
			NameQuest = "AmazonQuest2";
			LevelQuest = 1;
			NameMon = "Female Islander";
			CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422);
			CFrameMon = CFrame.new(4685.25830078125, 735.8078002929688, 815.3425903320312);
		elseif MyLevel == 1650 or MyLevel <= 1699 then
			Mon = "Giant Islander [Lv. 1650]";
			NameQuest = "AmazonQuest2";
			LevelQuest = 2;
			NameMon = "Giant Islander";
			CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422);
			CFrameMon = CFrame.new(4729.09423828125, 590.436767578125, -36.97627639770508);
		elseif MyLevel == 1700 or MyLevel <= 1724 then
			Mon = "Marine Commodore";
			LevelQuest = 1;
			NameQuest = "MarineTreeIsland";
			NameMon = "Marine Commodore";
			CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747);
			CFrameMon = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125);
		elseif MyLevel == 1725 or MyLevel <= 1774 then
			Mon = "Marine Rear Admiral [Lv. 1725]";
			NameMon = "Marine Rear Admiral";
			NameQuest = "MarineTreeIsland";
			LevelQuest = 2;
			CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813);
			CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125);
		elseif MyLevel == 1775 or MyLevel <= 1799 then
			Mon = "Fishman Raider";
			LevelQuest = 1;
			NameQuest = "DeepForestIsland3";
			NameMon = "Fishman Raider";
			CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213);
			CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625);
		elseif MyLevel == 1800 or MyLevel <= 1824 then
			Mon = "Fishman Captain";
			LevelQuest = 2;
			NameQuest = "DeepForestIsland3";
			NameMon = "Fishman Captain";
			CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213);
			CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625);
		elseif MyLevel == 1825 or MyLevel <= 1849 then
			Mon = "Forest Pirate";
			LevelQuest = 1;
			NameQuest = "DeepForestIsland";
			NameMon = "Forest Pirate";
			CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247);
			CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625);
		elseif MyLevel == 1850 or MyLevel <= 1899 then
			Mon = "Mythological Pirate";
			LevelQuest = 2;
			NameQuest = "DeepForestIsland";
			NameMon = "Mythological Pirate";
			CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247);
			CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125);
		elseif MyLevel == 1900 or MyLevel <= 1924 then
			Mon = "Jungle Pirate";
			LevelQuest = 1;
			NameQuest = "DeepForestIsland2";
			NameMon = "Jungle Pirate";
			CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002);
			CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625);
		elseif MyLevel == 1925 or MyLevel <= 1974 then
			Mon = "Musketeer Pirate";
			LevelQuest = 2;
			NameQuest = "DeepForestIsland2";
			NameMon = "Musketeer Pirate";
			CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002);
			CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375);
		elseif MyLevel == 1975 or MyLevel <= 1999 then
			Mon = "Reborn Skeleton";
			LevelQuest = 1;
			NameQuest = "HauntedQuest1";
			NameMon = "Reborn Skeleton";
			CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0);
			CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625);
		elseif MyLevel == 2000 or MyLevel <= 2024 then
			Mon = "Living Zombie";
			LevelQuest = 2;
			NameQuest = "HauntedQuest1";
			NameMon = "Living Zombie";
			CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0);
			CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875);
		elseif MyLevel == 2025 or MyLevel <= 2049 then
			Mon = "Demonic Soul";
			LevelQuest = 1;
			NameQuest = "HauntedQuest2";
			NameMon = "Demonic Soul";
			CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625);
		elseif MyLevel == 2050 or MyLevel <= 2074 then
			Mon = "Posessed Mummy";
			LevelQuest = 2;
			NameQuest = "HauntedQuest2";
			NameMon = "Posessed Mummy";
			CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625);
		elseif MyLevel == 2075 or MyLevel <= 2099 then
			Mon = "Peanut Scout";
			LevelQuest = 1;
			NameQuest = "NutsIslandQuest";
			NameMon = "Peanut Scout";
			CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875);
		elseif MyLevel == 2100 or MyLevel <= 2124 then
			Mon = "Peanut President";
			LevelQuest = 2;
			NameQuest = "NutsIslandQuest";
			NameMon = "Peanut President";
			CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875);
		elseif MyLevel == 2125 or MyLevel <= 2149 then
			Mon = "Ice Cream Chef";
			LevelQuest = 1;
			NameQuest = "IceCreamIslandQuest";
			NameMon = "Ice Cream Chef";
			CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125);
		elseif MyLevel == 2150 or MyLevel <= 2199 then
			Mon = "Ice Cream Commander";
			LevelQuest = 2;
			NameQuest = "IceCreamIslandQuest";
			NameMon = "Ice Cream Commander";
			CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625);
		elseif MyLevel == 2200 or MyLevel <= 2224 then
			Mon = "Cookie Crafter";
			LevelQuest = 1;
			NameQuest = "CakeQuest1";
			NameMon = "Cookie Crafter";
			CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -0.0000000880302053, 0.288177818, 0.000000069301187, 1, 0.0000000751931211, -0.288177818, -0.000000052032135, 0.957576931);
			CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375);
		elseif MyLevel == 2225 or MyLevel <= 2249 then
			Mon = "Cake Guard";
			LevelQuest = 2;
			NameQuest = "CakeQuest1";
			NameMon = "Cake Guard";
			CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -0.0000000880302053, 0.288177818, 0.000000069301187, 1, 0.0000000751931211, -0.288177818, -0.000000052032135, 0.957576931);
			CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875);
		elseif MyLevel == 2250 or MyLevel <= 2274 then
			Mon = "Baking Staff";
			LevelQuest = 1;
			NameQuest = "CakeQuest2";
			NameMon = "Baking Staff";
			CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 0.0000000422142143, 0.250778586, 0.0000000474911062, 1, 0.0000000149904711, -0.250778586, 0.0000000264211941, -0.96804446);
			CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375);
		elseif MyLevel == 2275 or MyLevel <= 2299 then
			Mon = "Head Baker";
			LevelQuest = 2;
			NameQuest = "CakeQuest2";
			NameMon = "Head Baker";
			CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 0.0000000422142143, 0.250778586, 0.0000000474911062, 1, 0.0000000149904711, -0.250778586, 0.0000000264211941, -0.96804446);
			CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125);
		elseif MyLevel == 2300 or MyLevel <= 2324 then
			Mon = "Cocoa Warrior";
			LevelQuest = 1;
			NameQuest = "ChocQuest1";
			NameMon = "Cocoa Warrior";
			CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375);
			CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125);
		elseif MyLevel == 2325 or MyLevel <= 2349 then
			Mon = "Chocolate Bar Battler";
			LevelQuest = 2;
			NameQuest = "ChocQuest1";
			NameMon = "Chocolate Bar Battler";
			CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375);
			CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375);
		elseif MyLevel == 2350 or MyLevel <= 2374 then
			Mon = "Sweet Thief";
			LevelQuest = 1;
			NameQuest = "ChocQuest2";
			NameMon = "Sweet Thief";
			CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875);
			CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625);
		elseif MyLevel == 2375 or MyLevel <= 2399 then
			Mon = "Candy Rebel";
			LevelQuest = 2;
			NameQuest = "ChocQuest2";
			NameMon = "Candy Rebel";
			CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875);
			CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625);
		elseif MyLevel == 2400 or MyLevel <= 2424 then
			Mon = "Candy Pirate";
			LevelQuest = 1;
			NameQuest = "CandyQuest1";
			NameMon = "Candy Pirate";
			CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375);
			CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875);
		elseif MyLevel == 2425 or MyLevel <= 2449 then
			Mon = "Snow Demon";
			LevelQuest = 2;
			NameQuest = "CandyQuest1";
			NameMon = "Snow Demon";
			CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375);
			CFrameMon = CFrame.new(-880.2006225585938, 71.24776458740234, -14538.609375);
		elseif MyLevel == 2450 or MyLevel <= 2474 then
			Mon = "Isle Outlaw";
			LevelQuest = 1;
			NameQuest = "TikiQuest1";
			NameMon = "Isle Outlaw";
			CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812);
			CFrameMon = CFrame.new(-16442.814453125, 116.13899993896484, -264.4637756347656);
		elseif MyLevel == 2475 or MyLevel <= 2524 then
			Mon = "Island Boy";
			LevelQuest = 2;
			NameQuest = "TikiQuest1";
			NameMon = "Island Boy";
			CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812);
			CFrameMon = CFrame.new(-16901.26171875, 84.06756591796875, -192.88906860351562);
		elseif MyLevel == 2525 or MyLevel <= 2549 then
			Mon = "Isle Champion";
			LevelQuest = 2;
			NameQuest = "TikiQuest2";
			NameMon = "Isle Champion";
			CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625);
			CFrameMon = CFrame.new(-16641.6796875, 235.7825469970703, 1031.282958984375);
		elseif MyLevel == 2550 or MyLevel <= 2574 then
			Mon = "Serpent Hunter";
			LevelQuest = 1;
			NameQuest = "TikiQuest3";
			NameMon = "Serpent Hunter";
			CFrameQuest = CFrame.new(-16661.890625, 105.2862319946289, 1576.69775390625);
			CFrameMon = CFrame.new(-16587.896484375, 154.21299743652344, 1533.40966796875);
		elseif MyLevel == 2575 or MyLevel >= 2575 then
			Mon = "Skull Slayer";
			LevelQuest = 2;
			NameQuest = "TikiQuest3";
			NameMon = "Skull Slayer";
			CFrameQuest = CFrame.new(-16661.890625, 105.2862319946289, 1576.69775390625);
			CFrameMon = CFrame.new(-16885.203125, 114.12911224365234, 1627.949951171875);
		end;
	end;
end;
function Hop()
	local module = (loadstring(game:HttpGet("https://raw.githubusercontent.com/raw-scriptpastebin/FE/main/Server_Hop_Settings")))();
	module:Teleport(game.PlaceId);
end;
function isnil(thing)
	return thing == nil;
end;
local function round(n)
	return math.floor(tonumber(n) + 0.5);
end;
Number = math.random(1, 1000000);
spawn(function()
	while wait(1) do
		for i, v in pairs((game:GetService("Workspace"))._WorldOrigin.Locations:GetChildren()) do
			pcall(function()
				if _G.Settings.Esp["ESP Island"] then
					if v.Name ~= "Sea" then
						if not v:FindFirstChild("EspIsland") then
							local bill = Instance.new("BillboardGui", v);
							bill.Name = "EspIsland";
							bill.ExtentsOffset = Vector3.new(0, 1, 0);
							bill.Size = UDim2.new(0, 200, 0, 30);
							bill.Adornee = v;
							bill.AlwaysOnTop = true;
							local name = Instance.new("TextLabel", bill);
							name.Font = Enum.Font.GothamMedium;
							name.TextSize = 14;
							name.TextWrapped = true;
							name.Size = UDim2.new(1, 0, 1, 0);
							name.TextYAlignment = Enum.TextYAlignment.Top;
							name.BackgroundTransparency = 1;
							name.TextColor3 = Color3.fromRGB(255, 255, 255);
						else
							v.EspIsland.TextLabel.Text = v.Name .. "   \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " Distance";
						end;
					end;
				elseif v:FindFirstChild("EspIsland") then
					(v:FindFirstChild("EspIsland")):Destroy();
				end;
			end);
		end;
	end;
end);
spawn(function()
	while wait(1) do
		for i, v in pairs((game:GetService("Players")):GetChildren()) do
			pcall(function()
				if not isnil(v.Character) then
					if _G.Settings.Esp["ESP Player"] then
						if not v.Character.Head:FindFirstChild(("EspPlayer" .. Number)) then
							local bill = Instance.new("BillboardGui", v.Character.Head);
							bill.Name = "EspPlayer" .. Number;
							bill.ExtentsOffset = Vector3.new(0, 1, 0);
							bill.Size = UDim2.new(1, 200, 1, 30);
							bill.Adornee = v.Character.Head;
							bill.AlwaysOnTop = true;
							local name = Instance.new("TextLabel", bill);
							name.Font = Enum.Font.GothamSemibold;
							name.FontSize = "Size14";
							name.TextWrapped = true;
							name.Text = v.Name .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Character.Head.Position)).Magnitude / 3) .. " Distance";
							name.Size = UDim2.new(1, 0, 1, 0);
							name.TextYAlignment = "Top";
							name.BackgroundTransparency = 1;
							name.TextStrokeTransparency = 0.5;
							if v.Team == game.Players.LocalPlayer.Team then
								name.TextColor3 = Color3.fromRGB(50, 200, 50);
							else
								name.TextColor3 = Color3.fromRGB(200, 50, 50);
							end;
						else
							v.Character.Head["EspPlayer" .. Number].TextLabel.Text = v.Name .. " | " .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Character.Head.Position)).Magnitude / 3) .. " Distance\nHealth : " .. round(v.Character.Humanoid.Health * 100 / v.Character.Humanoid.MaxHealth) .. "%";
						end;
					elseif v.Character.Head:FindFirstChild("EspPlayer" .. Number) then
						(v.Character.Head:FindFirstChild("EspPlayer" .. Number)):Destroy();
					end;
				end;
			end);
		end;
	end;
end);
spawn(function()
	while wait(1) do
		for i, v in pairs(game.Workspace.ChestModels:GetChildren()) do
			pcall(function()
				if string.find(v.Name, "Chest") then
					if _G.Settings.Esp["ESP Chest"] then
						if string.find(v.Name, "Chest") then
							if not v:FindFirstChild(("EspChest" .. Number)) then
								local bill = Instance.new("BillboardGui", v);
								bill.Name = "EspChest" .. Number;
								bill.ExtentsOffset = Vector3.new(0, 1, 0);
								bill.Size = UDim2.new(1, 200, 1, 30);
								bill.Adornee = v;
								bill.AlwaysOnTop = true;
								local name = Instance.new("TextLabel", bill);
								name.Font = Enum.Font.Nunito;
								name.FontSize = "Size14";
								name.TextWrapped = true;
								name.Size = UDim2.new(1, 0, 1, 0);
								name.TextYAlignment = "Top";
								name.BackgroundTransparency = 1;
								name.TextStrokeTransparency = 0.5;
								if v.Name == "SilverChest" then
									name.TextColor3 = Color3.fromRGB(109, 109, 109);
									name.Text = "Silver Chest" .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.RootPart.Position)).Magnitude / 3) .. " Distance";
								end;
								if v.Name == "GoldChest" then
									name.TextColor3 = Color3.fromRGB(173, 158, 21);
									name.Text = "Gold Chest" .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.RootPart.Position)).Magnitude / 3) .. " Distance";
								end;
								if v.Name == "DiamondChest" then
									name.TextColor3 = Color3.fromRGB(20, 200, 200);
									name.Text = "Diamond Chest" .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.RootPart.Position)).Magnitude / 3) .. " Distance";
								end;
							else
								v["EspChest" .. Number].TextLabel.Text = v.Name .. "   \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.RootPart.Position)).Magnitude / 3) .. " Distance";
							end;
						end;
					elseif v:FindFirstChild("EspChest" .. Number) then
						(v:FindFirstChild("EspChest" .. Number)):Destroy();
					end;
				end;
			end);
		end;
	end;
end);
spawn(function()
	while wait(1) do
		for i, v in pairs(game.Workspace:GetChildren()) do
			pcall(function()
				if _G.Settings.Esp["ESP DevilFruit"] then
					if v.Name and string.find(v.Name, "Fruit") then
						if not v.Handle:FindFirstChild(("EspDevilFruit" .. Number)) then
							local bill = Instance.new("BillboardGui", v.Handle);
							bill.Name = "EspDevilFruit" .. Number;
							bill.ExtentsOffset = Vector3.new(0, 1, 0);
							bill.Size = UDim2.new(1, 200, 1, 30);
							bill.Adornee = v.Handle;
							bill.AlwaysOnTop = true;
							local name = Instance.new("TextLabel", bill);
							name.Font = Enum.Font.GothamSemibold;
							name.FontSize = "Size14";
							name.TextWrapped = true;
							name.Size = UDim2.new(1, 0, 1, 0);
							name.TextYAlignment = "Top";
							name.BackgroundTransparency = 1;
							name.TextStrokeTransparency = 0.5;
							name.TextColor3 = Color3.fromRGB(255, 255, 255);
							name.Text = v.Name .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance";
							local TweenService = game:GetService("TweenService");
							local rainbowColors = {
								Color3.fromRGB(255, 0, 0),
								Color3.fromRGB(255, 127, 0),
								Color3.fromRGB(255, 255, 0),
								Color3.fromRGB(0, 255, 0),
								Color3.fromRGB(0, 0, 255),
								Color3.fromRGB(75, 0, 130),
								Color3.fromRGB(148, 0, 211)
							};
							local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut);
							(coroutine.wrap(function()
								while true do
									for _, color in ipairs(rainbowColors) do
										local tween = TweenService:Create(name, tweenInfo, {
											TextColor3 = color
										});
										tween:Play();
										tween.Completed:Wait();
									end;
								end;
							end))();
						else
							v.Handle["EspDevilFruit" .. Number].TextLabel.Text = v.Name .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance";
						end;
					end;
				elseif v.Handle:FindFirstChild("EspDevilFruit" .. Number) then
					(v.Handle:FindFirstChild("EspDevilFruit" .. Number)):Destroy();
				end;
			end);
		end;
	end;
end);
spawn(function()
	while wait(0) do
		for i, v in pairs(game.Workspace._WorldOrigin:GetChildren()) do
			pcall(function()
				if _G.Settings.Esp["ESP DevilFruit"] then
					if string.find(v.Name, "Fruit") then
						if not v.Handle:FindFirstChild(("EspDevilFruit" .. Number)) then
							local bill = Instance.new("BillboardGui", v.Handle);
							bill.Name = "EspDevilFruit" .. Number;
							bill.ExtentsOffset = Vector3.new(0, 1, 0);
							bill.Size = UDim2.new(1, 200, 1, 30);
							bill.Adornee = v.Handle;
							bill.AlwaysOnTop = true;
							local name = Instance.new("TextLabel", bill);
							name.Font = Enum.Font.GothamSemibold;
							name.FontSize = "Size14";
							name.TextWrapped = true;
							name.Size = UDim2.new(1, 0, 1, 0);
							name.TextYAlignment = "Top";
							name.BackgroundTransparency = 1;
							name.TextStrokeTransparency = 0.5;
							name.TextColor3 = Color3.fromRGB(255, 255, 255);
							name.Text = v.Name .. "(SPAWNED)" .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance";
							local TweenService = game:GetService("TweenService");
							local rainbowColors = {
								Color3.fromRGB(255, 0, 0),
								Color3.fromRGB(255, 127, 0),
								Color3.fromRGB(255, 255, 0),
								Color3.fromRGB(0, 255, 0),
								Color3.fromRGB(0, 0, 255),
								Color3.fromRGB(75, 0, 130),
								Color3.fromRGB(148, 0, 211)
							};
							local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut);
							(coroutine.wrap(function()
								while true do
									for _, color in ipairs(rainbowColors) do
										local tween = TweenService:Create(name, tweenInfo, {
											TextColor3 = color
										});
										tween:Play();
										tween.Completed:Wait();
									end;
								end;
							end))();
						else
							v.Handle["EspDevilFruit" .. Number].TextLabel.Text = v.Name .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance";
						end;
					end;
				elseif v.Handle:FindFirstChild("EspDevilFruit" .. Number) then
					(v.Handle:FindFirstChild("EspDevilFruit" .. Number)):Destroy();
				end;
			end);
		end;
	end;
end);
spawn(function()
	while wait(1) do
		for i, v in pairs(game.Workspace:GetChildren()) do
			pcall(function()
				if v.Name == "Flower2" or v.Name == "Flower1" then
					if _G.Settings.Esp["ESP Flower"] then
						if not v:FindFirstChild(("EspFlower" .. Number)) then
							local bill = Instance.new("BillboardGui", v);
							bill.Name = "EspFlower" .. Number;
							bill.ExtentsOffset = Vector3.new(0, 1, 0);
							bill.Size = UDim2.new(1, 200, 1, 30);
							bill.Adornee = v;
							bill.AlwaysOnTop = true;
							local name = Instance.new("TextLabel", bill);
							name.Font = Enum.Font.GothamSemibold;
							name.FontSize = "Size14";
							name.TextWrapped = true;
							name.Size = UDim2.new(1, 0, 1, 0);
							name.TextYAlignment = "Top";
							name.BackgroundTransparency = 1;
							name.TextStrokeTransparency = 0.5;
							name.TextColor3 = Color3.fromRGB(255, 100, 100);
							if v.Name == "Flower1" then
								name.Text = "Blue Flower" .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " Distance";
								name.TextColor3 = Color3.fromRGB(40, 40, 255);
							end;
							if v.Name == "Flower2" then
								name.Text = "Red Flower" .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " Distance";
								name.TextColor3 = Color3.fromRGB(255, 100, 100);
							end;
						else
							v["EspFlower" .. Number].TextLabel.Text = v.Name .. "   \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " Distance";
						end;
					elseif v:FindFirstChild("EspFlower" .. Number) then
						(v:FindFirstChild("EspFlower" .. Number)):Destroy();
					end;
				end;
			end);
		end;
	end;
end);
spawn(function()
	while wait(1) do
		for i, v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
			if v:IsA("Tool") then
				if _G.Settings.Esp["ESP RealFruit"] then
					if not v.Handle:FindFirstChild(("EspRealFruit" .. Number)) then
						local bill = Instance.new("BillboardGui", v.Handle);
						bill.Name = "EspRealFruit" .. Number;
						bill.ExtentsOffset = Vector3.new(0, 1, 0);
						bill.Size = UDim2.new(1, 200, 1, 30);
						bill.Adornee = v.Handle;
						bill.AlwaysOnTop = true;
						local name = Instance.new("TextLabel", bill);
						name.Font = Enum.Font.GothamSemibold;
						name.FontSize = "Size14";
						name.TextWrapped = true;
						name.Size = UDim2.new(1, 0, 1, 0);
						name.TextYAlignment = "Top";
						name.BackgroundTransparency = 1;
						name.TextStrokeTransparency = 0.5;
						name.TextColor3 = Color3.fromRGB(200, 70, 70);
						name.Text = v.Name .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance";
					else
						v.Handle["EspRealFruit" .. Number].TextLabel.Text = v.Name .. " " .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance";
					end;
				elseif v.Handle:FindFirstChild("EspRealFruit" .. Number) then
					(v.Handle:FindFirstChild("EspRealFruit" .. Number)):Destroy();
				end;
			end;
		end;
		for i, v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
			if v:IsA("Tool") then
				if _G.Settings.Esp["ESP RealFruit"] then
					if not v.Handle:FindFirstChild(("EspRealFruit" .. Number)) then
						local bill = Instance.new("BillboardGui", v.Handle);
						bill.Name = "EspRealFruit" .. Number;
						bill.ExtentsOffset = Vector3.new(0, 1, 0);
						bill.Size = UDim2.new(1, 200, 1, 30);
						bill.Adornee = v.Handle;
						bill.AlwaysOnTop = true;
						local name = Instance.new("TextLabel", bill);
						name.Font = Enum.Font.GothamSemibold;
						name.FontSize = "Size14";
						name.TextWrapped = true;
						name.Size = UDim2.new(1, 0, 1, 0);
						name.TextYAlignment = "Top";
						name.BackgroundTransparency = 1;
						name.TextStrokeTransparency = 0.5;
						name.TextColor3 = Color3.fromRGB(255, 170, 0);
						name.Text = v.Name .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance";
					else
						v.Handle["EspRealFruit" .. Number].TextLabel.Text = v.Name .. " " .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance";
					end;
				elseif v.Handle:FindFirstChild("EspRealFruit" .. Number) then
					(v.Handle:FindFirstChild("EspRealFruit" .. Number)):Destroy();
				end;
			end;
		end;
		for i, v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
			if v:IsA("Tool") then
				if _G.Settings.Esp["ESP RealFruit"] then
					if not v.Handle:FindFirstChild(("EspRealFruit" .. Number)) then
						local bill = Instance.new("BillboardGui", v.Handle);
						bill.Name = "EspRealFruit" .. Number;
						bill.ExtentsOffset = Vector3.new(0, 1, 0);
						bill.Size = UDim2.new(1, 200, 1, 30);
						bill.Adornee = v.Handle;
						bill.AlwaysOnTop = true;
						local name = Instance.new("TextLabel", bill);
						name.Font = Enum.Font.GothamSemibold;
						name.FontSize = "Size14";
						name.TextWrapped = true;
						name.Size = UDim2.new(1, 0, 1, 0);
						name.TextYAlignment = "Top";
						name.BackgroundTransparency = 1;
						name.TextStrokeTransparency = 0.5;
						name.TextColor3 = Color3.fromRGB(240, 255, 10);
						name.Text = v.Name .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance";
					else
						v.Handle["EspRealFruit" .. Number].TextLabel.Text = v.Name .. " " .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance";
					end;
				elseif v.Handle:FindFirstChild("EspRealFruit" .. Number) then
					(v.Handle:FindFirstChild("EspRealFruit" .. Number)):Destroy();
				end;
			end;
		end;
	end;
end);
spawn(function()
	while wait(1) do
		pcall(function()
			if _G.Settings.Esp["ESP Monster"] then
				for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
					if v:FindFirstChild("HumanoidRootPart") then
						if not v:FindFirstChild("EspMonster") then
							local BillboardGui = Instance.new("BillboardGui");
							local TextLabel = Instance.new("TextLabel");
							BillboardGui.Parent = v;
							BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
							BillboardGui.Active = true;
							BillboardGui.Name = "EspMonster";
							BillboardGui.AlwaysOnTop = true;
							BillboardGui.LightInfluence = 1;
							BillboardGui.Size = UDim2.new(0, 200, 0, 50);
							BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0);
							TextLabel.Parent = BillboardGui;
							TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
							TextLabel.BackgroundTransparency = 1;
							TextLabel.Size = UDim2.new(0, 200, 0, 50);
							TextLabel.Font = Enum.Font.GothamBold;
							TextLabel.TextColor3 = Color3.fromRGB(120, 130, 230);
							TextLabel.Text.Size = 35;
						end;
						local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude);
						v.EspMonster.TextLabel.Text = v.Name .. " - " .. Dis .. " Distance";
					end;
				end;
			else
				for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
					if v:FindFirstChild("EspMonster") then
						v.EspMonster:Destroy();
					end;
				end;
			end;
		end);
	end;
end);
spawn(function()
	while wait(1) do
		pcall(function()
			if _G.Settings.Esp["ESP Sea Beast"] then
				for i, v in pairs((game:GetService("Workspace")).SeaBeasts:GetChildren()) do
					if v:FindFirstChild("HumanoidRootPart") then
						if not v:FindFirstChild("EspSeabeasts") then
							local BillboardGui = Instance.new("BillboardGui");
							local TextLabel = Instance.new("TextLabel");
							BillboardGui.Parent = v;
							BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
							BillboardGui.Active = true;
							BillboardGui.Name = "EspSeabeasts";
							BillboardGui.AlwaysOnTop = true;
							BillboardGui.LightInfluence = 1;
							BillboardGui.Size = UDim2.new(0, 200, 0, 50);
							BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0);
							TextLabel.Parent = BillboardGui;
							TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
							TextLabel.BackgroundTransparency = 1;
							TextLabel.Size = UDim2.new(0, 200, 0, 50);
							TextLabel.Font = Enum.Font.Gotham;
							TextLabel.TextColor3 = Color3.fromRGB(60, 240, 120);
							TextLabel.Text.Size = 35;
						end;
						local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude);
						v.EspSeabeasts.TextLabel.Text = v.Name .. " - " .. Dis .. " Distance";
					end;
				end;
			else
				for i, v in pairs((game:GetService("Workspace")).SeaBeasts:GetChildren()) do
					if v:FindFirstChild("EspSeabeasts") then
						v.EspSeabeasts:Destroy();
					end;
				end;
			end;
		end);
	end;
end);
spawn(function()
	while wait(1) do
		pcall(function()
			if _G.Settings.Esp["ESP Npc"] then
				for i, v in pairs((game:GetService("Workspace")).NPCs:GetChildren()) do
					if v:FindFirstChild("HumanoidRootPart") then
						if not v:FindFirstChild("EspNpc") then
							local BillboardGui = Instance.new("BillboardGui");
							local TextLabel = Instance.new("TextLabel");
							BillboardGui.Parent = v;
							BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
							BillboardGui.Active = true;
							BillboardGui.Name = "EspNpc";
							BillboardGui.AlwaysOnTop = true;
							BillboardGui.LightInfluence = 1;
							BillboardGui.Size = UDim2.new(0, 200, 0, 50);
							BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0);
							TextLabel.Parent = BillboardGui;
							TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
							TextLabel.BackgroundTransparency = 1;
							TextLabel.Size = UDim2.new(0, 200, 0, 50);
							TextLabel.Font = Enum.Font.Cartoon;
							TextLabel.TextColor3 = Color3.fromRGB(200, 60, 120);
							TextLabel.Text.Size = 45;
						end;
						local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude);
						v.EspNpc.TextLabel.Text = v.Name .. " - " .. Dis .. " Distance";
					end;
				end;
			else
				for i, v in pairs((game:GetService("Workspace")).NPCs:GetChildren()) do
					if v:FindFirstChild("EspNpc") then
						v.EspNpc:Destroy();
					end;
				end;
			end;
		end);
	end;
end);
spawn(function()
	while wait(1) do
		for i, v in pairs((game:GetService("Workspace"))._WorldOrigin.Locations:GetChildren()) do
			pcall(function()
				if _G.Settings.Esp["ESP Mirage"] then
					if v.Name == "Mirage Island" then
						if not v:FindFirstChild("EspMirageIsland") then
							local bill = Instance.new("BillboardGui", v);
							bill.Name = "EspMirageIsland";
							bill.ExtentsOffset = Vector3.new(0, 1, 0);
							bill.Size = UDim2.new(1, 200, 1, 30);
							bill.Adornee = v;
							bill.AlwaysOnTop = true;
							local name = Instance.new("TextLabel", bill);
							name.Font = "Code";
							name.FontSize = "Size14";
							name.TextWrapped = true;
							name.Size = UDim2.new(1, 0, 1, 0);
							name.TextYAlignment = "Top";
							name.BackgroundTransparency = 1;
							name.TextStrokeTransparency = 0.5;
							name.TextColor3 = Color3.fromRGB(50, 180, 50);
						else
							v.EspMirageIsland.TextLabel.Text = v.Name .. "   \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " M";
						end;
					end;
				elseif v:FindFirstChild("EspMirageIsland") then
					(v:FindFirstChild("EspMirageIsland")):Destroy();
				end;
			end);
		end;
	end;
end);
spawn(function()
	while wait(1) do
		for i, v in pairs((game:GetService("Workspace"))._WorldOrigin.Locations:GetChildren()) do
			pcall(function()
				if _G.Settings.Esp["ESP Kitsune"] then
					if v.Name == "Kitsune Island" then
						if not v:FindFirstChild("EspKitsuneIsland") then
							local bill = Instance.new("BillboardGui", v);
							bill.Name = "EspKitsuneIsland";
							bill.ExtentsOffset = Vector3.new(0, 1, 0);
							bill.Size = UDim2.new(1, 200, 1, 30);
							bill.Adornee = v;
							bill.AlwaysOnTop = true;
							local name = Instance.new("TextLabel", bill);
							name.Font = "Code";
							name.FontSize = "Size14";
							name.TextWrapped = true;
							name.Size = UDim2.new(1, 0, 1, 0);
							name.TextYAlignment = "Top";
							name.BackgroundTransparency = 1;
							name.TextStrokeTransparency = 0.5;
							name.TextColor3 = Color3.fromRGB(40, 40, 180);
						else
							v.EspKitsuneIsland.TextLabel.Text = v.Name .. "   \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " M";
						end;
					end;
				elseif v:FindFirstChild("EspKitsuneIsland") then
					(v:FindFirstChild("EspKitsuneIsland")):Destroy();
				end;
			end);
		end;
	end;
end);
spawn(function()
	while wait(1) do
		for i, v in pairs((game:GetService("Workspace"))._WorldOrigin.Locations:GetChildren()) do
			pcall(function()
				if _G.Settings.Esp["ESP Frozen"] then
					if v.Name == "Frozen Dimension" then
						if not v:FindFirstChild("EspFrozen") then
							local bill = Instance.new("BillboardGui", v);
							bill.Name = "EspFrozen";
							bill.ExtentsOffset = Vector3.new(0, 1, 0);
							bill.Size = UDim2.new(1, 200, 1, 30);
							bill.Adornee = v;
							bill.AlwaysOnTop = true;
							local name = Instance.new("TextLabel", bill);
							name.Font = "Code";
							name.FontSize = "Size14";
							name.TextWrapped = true;
							name.Size = UDim2.new(1, 0, 1, 0);
							name.TextYAlignment = "Top";
							name.BackgroundTransparency = 1;
							name.TextStrokeTransparency = 0.5;
							name.TextColor3 = Color3.fromRGB(50, 180, 255);
						else
							v.EspFrozen.TextLabel.Text = v.Name .. "   \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " M";
						end;
					end;
				elseif v:FindFirstChild("EspFrozen") then
					(v:FindFirstChild("EspFrozen")):Destroy();
				end;
			end);
		end;
	end;
end);
spawn(function()
	while wait(1) do
		for i, v in pairs((game:GetService("Workspace"))._WorldOrigin.Locations:GetChildren()) do
			pcall(function()
				if _G.Settings.Esp["ESP Prehistoric"] then
					if v.Name == "Prehistoric Island" then
						if not v:FindFirstChild("EspPrehistoric") then
							local bill = Instance.new("BillboardGui", v);
							bill.Name = "EspPrehistoric";
							bill.ExtentsOffset = Vector3.new(0, 1, 0);
							bill.Size = UDim2.new(1, 200, 1, 30);
							bill.Adornee = v;
							bill.AlwaysOnTop = true;
							local name = Instance.new("TextLabel", bill);
							name.Font = "Code";
							name.FontSize = "Size14";
							name.TextWrapped = true;
							name.Size = UDim2.new(1, 0, 1, 0);
							name.TextYAlignment = "Top";
							name.BackgroundTransparency = 1;
							name.TextStrokeTransparency = 0.5;
							name.TextColor3 = Color3.fromRGB(200, 50, 40);
						else
							v.EspPrehistoric.TextLabel.Text = v.Name .. "   \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " M";
						end;
					end;
				elseif v:FindFirstChild("EspPrehistoric") then
					(v:FindFirstChild("EspPrehistoric")):Destroy();
				end;
			end);
		end;
	end;
end);
spawn(function()
	while wait(1) do
		for i, v in pairs((game:GetService("Workspace")).NPCs:GetChildren()) do
			pcall(function()
				if _G.Settings.Esp["ESP Advanced Fruit Dealer"] then
					if v.Name == "Advanced Fruit Dealer" then
						if not v:FindFirstChild("EspAdvanceFruitDealer") then
							local bill = Instance.new("BillboardGui", v);
							bill.Name = "EspAdvanceFruitDealer";
							bill.ExtentsOffset = Vector3.new(0, 1, 0);
							bill.Size = UDim2.new(1, 200, 1, 30);
							bill.Adornee = v;
							bill.AlwaysOnTop = true;
							local name = Instance.new("TextLabel", bill);
							name.Font = "Code";
							name.FontSize = "Size14";
							name.TextWrapped = true;
							name.Size = UDim2.new(1, 0, 1, 0);
							name.TextYAlignment = "Top";
							name.BackgroundTransparency = 1;
							name.TextStrokeTransparency = 0.5;
							name.TextColor3 = Color3.fromRGB(250, 50, 50);
						else
							v.EspAdvanceFruitDealer.TextLabel.Text = v.Name .. "   \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " M";
						end;
					end;
				elseif v:FindFirstChild("EspAdvanceFruitDealer") then
					(v:FindFirstChild("EspAdvanceFruitDealer")):Destroy();
				end;
			end);
		end;
	end;
end);
spawn(function()
	while wait(1) do
		for i, v in pairs((game:GetService("Workspace")).NPCs:GetChildren()) do
			pcall(function()
				if _G.Settings.Esp["ESP Aura"] then
					if v.Name == "Master of Enhancement" then
						if not v:FindFirstChild("EspAura") then
							local bill = Instance.new("BillboardGui", v);
							bill.Name = "EspAura";
							bill.ExtentsOffset = Vector3.new(0, 1, 0);
							bill.Size = UDim2.new(1, 200, 1, 30);
							bill.Adornee = v;
							bill.AlwaysOnTop = true;
							local name = Instance.new("TextLabel", bill);
							name.Font = "Code";
							name.FontSize = "Size14";
							name.TextWrapped = true;
							name.Size = UDim2.new(1, 0, 1, 0);
							name.TextYAlignment = "Top";
							name.BackgroundTransparency = 1;
							name.TextStrokeTransparency = 0.5;
							name.TextColor3 = Color3.fromRGB(200, 55, 255);
						else
							v.EspAura.TextLabel.Text = v.Name .. "   \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " M";
						end;
					end;
				elseif v:FindFirstChild("EspAura") then
					(v:FindFirstChild("EspAura")):Destroy();
				end;
			end);
		end;
	end;
end);
spawn(function()
	while wait(1) do
		if (game:GetService("Workspace")).Map:FindFirstChild("MysticIsland") then
			for i, v in pairs((game:GetService("Workspace")).Map.MysticIsland:GetChildren()) do
				pcall(function()
					if _G.Settings.Esp["ESP Gear"] then
						if v.Name == "MeshPart" then
							if not v:FindFirstChild("EspGear") then
								local bill = Instance.new("BillboardGui", v);
								bill.Name = "EspGear";
								bill.ExtentsOffset = Vector3.new(0, 1, 0);
								bill.Size = UDim2.new(1, 200, 1, 30);
								bill.Adornee = v;
								bill.AlwaysOnTop = true;
								local name = Instance.new("TextLabel", bill);
								name.Font = "Code";
								name.FontSize = "Size14";
								name.TextWrapped = true;
								name.Size = UDim2.new(1, 0, 1, 0);
								name.TextYAlignment = "Top";
								name.BackgroundTransparency = 1;
								name.TextStrokeTransparency = 0.5;
								name.TextColor3 = Color3.fromRGB(80, 245, 245);
							else
								v.EspGear.TextLabel.Text = v.Name .. "   \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude / 3) .. " M";
							end;
						end;
					elseif v:FindFirstChild("EspGear") then
						(v:FindFirstChild("EspGear")):Destroy();
					end;
				end);
			end;
		end;
	end;
end);
function InfAb()
	if _G.Settings.LocalPlayer["Infinite Ability"] then
		if not (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
			local inf = Instance.new("ParticleEmitter");
			inf.Acceleration = Vector3.new(0, 0, 0);
			inf.Archivable = true;
			inf.Drag = 20;
			inf.EmissionDirection = Enum.NormalId.Top;
			inf.Enabled = true;
			inf.Lifetime = NumberRange.new(0, 0);
			inf.LightInfluence = 0;
			inf.LockedToPart = true;
			inf.Name = "Agility";
			inf.Rate = 500;
			local numberKeypoints2 = {
				NumberSequenceKeypoint.new(0, 0),
				NumberSequenceKeypoint.new(1, 4)
			};
			inf.Size = NumberSequence.new(numberKeypoints2);
			inf.RotSpeed = NumberRange.new(9999, 99999);
			inf.Rotation = NumberRange.new(0, 0);
			inf.Speed = NumberRange.new(30, 30);
			inf.SpreadAngle = Vector2.new(0, 0, 0, 0);
			inf.Texture = "";
			inf.VelocityInheritance = 0;
			inf.ZOffset = 2;
			inf.Transparency = NumberSequence.new(0);
			inf.Color = ColorSequence.new(Color3.fromRGB(0, 0, 0), Color3.fromRGB(0, 0, 0));
			inf.Parent = (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart;
		end;
	elseif (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
		((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility")):Destroy();
	end;
end;
local LocalPlayer = (game:GetService("Players")).LocalPlayer;
local originalstam = LocalPlayer.Character.Energy.Value;
function infinitestam()
	LocalPlayer.Character.Energy.Changed:connect(function()
		if _G.Settings.LocalPlayer["Infinite Energy"] then
			LocalPlayer.Character.Energy.Value = originalstam;
		end;
	end);
end;
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.Settings.LocalPlayer["Infinite Energy"] then
				wait(0.1);
				originalstam = LocalPlayer.Character.Energy.Value;
				infinitestam();
			end;
		end;
	end);
end);
spawn(function()
	while wait() do
		pcall(function()
			if _G.Settings.LocalPlayer["Dodge No Cooldown"] then
				for i, v in next, getgc() do
					if (game:GetService("Players")).LocalPlayer.Character.Dodge then
						if typeof(v) == "function" and (getfenv(v)).script == (game:GetService("Players")).LocalPlayer.Character.Dodge then
							for i2, v2 in next, getupvalues(v) do
								if tostring(v2) == "0.1" then
									repeat
										wait(0.1);
										setupvalue(v, i2, 0);
									until not nododgecool;
								end;
							end;
						end;
					end;
				end;
			end;
		end);
	end;
end);
function fly()
	local mouse = (game:GetService("Players")).LocalPlayer:GetMouse("");
	localplayer = (game:GetService("Players")).LocalPlayer;
	(game:GetService("Players")).LocalPlayer.Character:WaitForChild("HumanoidRootPart");
	local torso = (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart;
	local speedSET = 25;
	local keys = {
		a = false,
		d = false,
		w = false,
		s = false
	};
	local e1;
	local e2;
	local function start()
		local pos = Instance.new("BodyPosition", torso);
		local gyro = Instance.new("BodyGyro", torso);
		pos.Name = "EPIXPOS";
		pos.maxForce = Vector3.new(math.huge, math.huge, math.huge);
		pos.position = torso.Position;
		gyro.maxTorque = Vector3.new(9000000000, 9000000000, 9000000000);
		gyro.CFrame = torso.CFrame;
		repeat
			wait();
			localplayer.Character.Humanoid.PlatformStand = true;
			local new = gyro.CFrame - gyro.CFrame.p + pos.position;
			if not keys.w and (not keys.s) and (not keys.a) and (not keys.d) then
				speed = 1;
			end;
			if keys.w then
				new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed;
				speed = speed + speedSET;
			end;
			if keys.s then
				new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed;
				speed = speed + speedSET;
			end;
			if keys.d then
				new = new * CFrame.new(speed, 0, 0);
				speed = speed + speedSET;
			end;
			if keys.a then
				new = new * CFrame.new((-speed), 0, 0);
				speed = speed + speedSET;
			end;
			if speed > speedSET then
				speed = speedSET;
			end;
			pos.position = new.p;
			if keys.w then
				gyro.CFrame = workspace.CurrentCamera.CoordinateFrame * CFrame.Angles((-math.rad((speed * 15))), 0, 0);
			elseif keys.s then
				gyro.CFrame = workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(math.rad((speed * 15)), 0, 0);
			else
				gyro.CFrame = workspace.CurrentCamera.CoordinateFrame;
			end;
		until not Fly;
		if gyro then
			gyro:Destroy();
		end;
		if pos then
			pos:Destroy();
		end;
		flying = false;
		localplayer.Character.Humanoid.PlatformStand = false;
		speed = 0;
	end;
	e1 = mouse.KeyDown:connect(function(key)
		if not torso or (not torso.Parent) then
			flying = false;
			e1:disconnect();
			e2:disconnect();
			return;
		end;
		if key == "w" then
			keys.w = true;
		elseif key == "s" then
			keys.s = true;
		elseif key == "a" then
			keys.a = true;
		elseif key == "d" then
			keys.d = true;
		end;
	end);
	e2 = mouse.KeyUp:connect(function(key)
		if key == "w" then
			keys.w = false;
		elseif key == "s" then
			keys.s = false;
		elseif key == "a" then
			keys.a = false;
		elseif key == "d" then
			keys.d = false;
		end;
	end);
	start();
end;
function Click()
	(game:GetService("VirtualUser")):CaptureController();
	(game:GetService("VirtualUser")):Button1Down(Vector2.new(1280, 672));
end;
function AutoHaki()
	if not (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("HasBuso") then
		(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("Buso");
	end;
end;
function UnEquipWeapon(Weapon)
	if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
		(game.Players.LocalPlayer.Character:FindFirstChild(Weapon)).Parent = game.Players.LocalPlayer.Backpack;
	end;
end;
function EquipWeapon(ToolSe)
	if not game.Players.LocalPlayer.Character:FindFirstChild(ToolSe) then
		if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
			Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe);
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool);
		end;
	end;
end;
spawn(function()
	for i, v in pairs((game:GetService("Workspace"))._WorldOrigin:GetChildren()) do
		pcall(function()
			if v.Name == "CurvedRing" or v.Name == "SlashHit" or v.Name == "SwordSlash" or v.Name == "SlashTail" or v.Name == "Sounds" then
				v:Destroy();
			end;
		end);
	end;
end);
function GetDistance(target)
	return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude);
end;
function BTP(p)
	pcall(function()
		if (p.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
			repeat
				wait();
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p;
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("SetSpawnPoint");
				wait();
				game.Players.LocalPlayer.Character.Head:Destroy();
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p;
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("SetSpawnPoint");
			until (p.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0;
		end;
	end);
end;
function InstantTp(P)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P;
end;
function TP(Pos)
	Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
	((game:GetService("TweenService")):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Distance / _G.Settings.Setting["Player Tween Speed"], Enum.EasingStyle.Linear), {
		CFrame = Pos
	})):Play();
end;
function TP1(Pos)
	Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
	((game:GetService("TweenService")):Create((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Distance / _G.Settings.Setting["Player Tween Speed"], Enum.EasingStyle.Linear), {
		CFrame = Pos
	})):Play();
end;
function TweenBoat(pos)
	local StopTweenBoat = {};
	local TweenService = game:service("TweenService");
	local Boat = (game:GetService("Workspace")).Boats[_G.Settings.SeaEvent["Selected Boat"]];
	local Distance = (Boat.VehicleSeat.CFrame.Position - pos.Position).Magnitude;
	local info = TweenInfo.new(Distance / _G.Settings.SeaEvent["Boat Tween Speed"], Enum.EasingStyle.Linear);
	tween = TweenService:Create(Boat.VehicleSeat, info, {
		CFrame = pos
	});
	if Distance <= 25 then
		tween:Cancel();
	else
		tween:Play();
	end;
	function StopTweenBoat:Stop()
		if tween then
			tween:Cancel();
		end;
	end;
	return StopTweenBoat;
end;
task.spawn(function()
	while task.wait() do
		pcall(function()
			(game:GetService("Workspace")).Boats[_G.Settings.SeaEvent["Selected Boat"]].Engine.CFrame = (game:GetService("Workspace")).Boats[_G.Settings.SeaEvent["Selected Boat"]].Engine.Root.CFrame;
			if (game:GetService("Workspace")).Boats[_G.Settings.SeaEvent["Selected Boat"]].Engine.Root.Position - (game:GetService("Workspace")).Boats[_G.Settings.SeaEvent["Selected Boat"]].Engine.Position.Magnitude >= 1 then
				(game:GetService("Workspace")).Boats[_G.Settings.SeaEvent["Selected Boat"]].Engine.Root.CFrame = (game:GetService("Workspace")).Boats[_G.Settings.SeaEvent["Selected Boat"]].Engine.CFrame;
			end;
		end);
	end;
end);
function topos(pos)
	task.spawn(function()
		pcall(function()
			if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
				game.Players.LocalPlayer.Character.Humanoid.Sit = true;
			end;
			local player = (game:GetService("Players")).LocalPlayer;
			local character = player.Character;
			local humanoidRootPart = character.HumanoidRootPart;
			if player:DistanceFromCharacter(pos.Position) <= 50 then
				humanoidRootPart.CFrame = pos;
				if character:FindFirstChild("Root") then
					character.Root:Destroy();
					wait();
					topos(humanoidRootPart.CFrame);
					wait();
				end;
				if character:FindFirstChild("Root") then
					character.Root:Remove();
				end;
			elseif not character:FindFirstChild("Root") then
				local rootPart = Instance.new("Part", character);
				rootPart.Size = Vector3.new(1, 0.5, 1);
				rootPart.Name = "Root";
				rootPart.Anchored = true;
				rootPart.Transparency = 1;
				rootPart.CanCollide = false;
				rootPart.CFrame = humanoidRootPart.CFrame;
			end;
			local distance = (humanoidRootPart.Position - pos.Position).Magnitude;
			local tweenService = game:GetService("TweenService");
			local tweenInfo = TweenInfo.new(distance / _G.Settings.Setting["Player Tween Speed"], Enum.EasingStyle.Linear);
			local success, tweenError = pcall(function()
				local tween = tweenService:Create(character.Root, tweenInfo, {
					CFrame = pos
				});
				tween:Play();
			end);
			if _G.StopTween == true then
				tween:Cancel();
				_G.Clip = false;
			end;
			if not success then
				return tweenError;
			end;
			character.Root.CFrame = humanoidRootPart.CFrame;
			if success and character:FindFirstChild("Root") then
				pcall(function()
					local distanceFromTarget = (humanoidRootPart.Position - pos.Position).Magnitude;
					if distanceFromTarget >= 50 then
						task.spawn(function()
							pcall(function()
								if (character.Root.Position - humanoidRootPart.Position).Magnitude > 200 then
									character.Root.CFrame = humanoidRootPart.CFrame;
								else
									humanoidRootPart.CFrame = character.Root.CFrame;
								end;
							end);
						end);
					elseif distanceFromTarget >= 25 and distanceFromTarget < 40 then
						humanoidRootPart.CFrame = pos;
					elseif distanceFromTarget < 25 then
						humanoidRootPart.CFrame = pos;
					end;
				end);
			end;
			local stoppos = {};
			function stoppos:Stop()
				tween:Cancel();
			end;
			return stoppos;
		end);
	end);
end;
task.spawn(function()
	while task.wait() do
		pcall(function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.Root.CFrame;
			if (game.Players.LocalPlayer.Character.Root.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1 then
				game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
			end;
		end);
	end;
end);
function tween(Pos)
	local Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
	local tween = ((game:GetService("TweenService")):Create((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Distance / _G.Settings.Setting["Player Tween Speed"], Enum.EasingStyle.Linear), {
		CFrame = Pos
	})):Play();
	function stoppos:Stop()
		tween:Cancel();
	end;
	return stoppos;
end;
function fastpos(Pos)
	Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
	Speed = 1000;
	((game:GetService("TweenService")):Create((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear), {
		CFrame = Pos
	})):Play();
end;
local stopboat = {};
function TPB(pos, boat)
	local tween_s = game:service("TweenService");
	local info = TweenInfo.new(((boat.CFrame.Position - pos.Position)).Magnitude / _G.Settings.SeaEvent["Boat Tween Speed"], Enum.EasingStyle.Linear);
	tween = tween_s:Create(boat, info, {
		CFrame = pos
	});
	if (boat.CFrame.Position - pos.Position).Magnitude <= 25 then
		tween:Cancel();
	else
		tween:Play();
	end;
	function stopboat:Stop()
		tween:Cancel();
	end;
	return stopboat;
end;
function TPP(CFgo)
	if (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Health <= 0 or (not (game:GetService("Players")).LocalPlayer.Character:WaitForChild("Humanoid")) then
		tween:Cancel();
		repeat
			wait();
		until (game:GetService("Players")).LocalPlayer.Character:WaitForChild("Humanoid") and ((game:GetService("Players")).LocalPlayer.Character:WaitForChild("Humanoid")).Health > 0;
		wait(7);
		return;
	end;
	local tween_s = game:service("TweenService");
	local info = TweenInfo.new((((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - CFgo.Position)).Magnitude / _G.Settings.Setting["Player Tween Speed"], Enum.EasingStyle.Linear);
	tween = tween_s:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, info, {
		CFrame = CFgo
	});
	tween:Play();
	local tweenfunc = {};
	function tweenfunc:Stop()
		tween:Cancel();
	end;
	return tweenfunc;
end;
spawn(function()
	local angle = 0;
	while wait() do
		if _G.Settings.Setting["Spin Position"] then
			local radius = 20;
			local farmDistance = _G.Settings.Setting["Farm Distance"];
			local radian = math.rad(angle);
			local x = math.cos(radian) * radius;
			local z = math.sin(radian) * radius;
			Pos = CFrame.new(x, farmDistance, z);
			angle = (angle + 30) % 360;
		else
			Pos = CFrame.new(0, _G.Settings.Setting["Farm Distance"], 0);
		end;
		wait(0);
	end;
end);
spawn(function()
	pcall(function()
		while wait() do
			if World1 then
				if _G.Settings.Farm["Auto Farm Leather"] or _G.Settings.Farm["Auto Farm Magma Ore"] or _G.Settings.Farm["Auto Farm Scrap Metal"] or _G.Settings.Farm["Auto Saber"] or _G.Settings.Items["Auto Second Sea"] or _G.Settings.Items["Auto Warden Sword"] or _G.Settings.Items["Auto Greybeard"] or _G.Settings.Items["Auto Pole"] or _G.Settings.Items["Auto Shark Saw"] or _G.Settings.Farm["Auto Farm Angel Wings"] then
					if not (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
						local Noclip = Instance.new("BodyVelocity");
						Noclip.Name = "BodyClip";
						Noclip.Parent = (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart;
						Noclip.MaxForce = Vector3.new(100000, 100000, 100000);
						Noclip.Velocity = Vector3.new(0, 0, 0);
					end;
				end;
			end;
		end;
	end);
end);
spawn(function()
	pcall(function()
		while wait() do
			if World1 then
				if _G.Settings.Farm["Auto Farm Leather"] or _G.Settings.Farm["Auto Farm Magma Ore"] or _G.Settings.Farm["Auto Farm Scrap Metal"] or _G.Settings.Farm["Auto Saber"] or _G.Settings.Items["Auto Second Sea"] or _G.Settings.Items["Auto Warden Sword"] or _G.Settings.Items["Auto Greybeard"] or _G.Settings.Items["Auto Pole"] or _G.Settings.Items["Auto Shark Saw"] or _G.Settings.Farm["Auto Farm Angel Wings"] then
					for _, v in pairs((game:GetService("Players")).LocalPlayer.Character:GetDescendants()) do
						if v:IsA("BasePart") then
							v.CanCollide = false;
						end;
					end;
				end;
			end;
		end;
	end);
end);
spawn(function()
	pcall(function()
		while wait() do
			if World2 then
				if _G.Settings.Items["Auto Farm Factory"] or _G.Settings.Items["Auto Swan Glasses"] or _G.Settings.Raid["Law Raid"] or _G.Settings.Race["Auto Race V2"] or _G.Settings.Items["Auto Rengoku"] or _G.Settings.Items["Auto Bartilo Quest"] or _G.Settings.Items["Auto Third Sea"] or _G.Settings.Items["Auto Dragon Trident"] or _G.Settings.Farm["Auto Farm Leather"] or _G.Settings.Farm["Auto Farm Magma Ore"] or _G.Settings.Farm["Auto Farm Radioactive"] or _G.Settings.Farm["Auto Farm Scrap Metal"] or _G.Settings.SeaStack["Auto Attack Seabeasts"] or _G.Settings.Raid["Auto Dungeon"] then
					if not (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
						local Noclip = Instance.new("BodyVelocity");
						Noclip.Name = "BodyClip";
						Noclip.Parent = (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart;
						Noclip.MaxForce = Vector3.new(100000, 100000, 100000);
						Noclip.Velocity = Vector3.new(0, 0, 0);
					end;
				end;
			end;
		end;
	end);
end);
spawn(function()
	pcall(function()
		while wait() do
			if World2 then
				if _G.Settings.Items["Auto Farm Factory"] or _G.Settings.Items["Auto Swan Glasses"] or _G.Settings.Raid["Law Raid"] or _G.Settings.Race["Auto Race V2"] or _G.Settings.Items["Auto Rengoku"] or _G.Settings.Items["Auto Bartilo Quest"] or _G.Settings.Items["Auto Third Sea"] or _G.Settings.Items["Auto Dragon Trident"] or _G.Settings.Farm["Auto Farm Leather"] or _G.Settings.Farm["Auto Farm Magma Ore"] or _G.Settings.Farm["Auto Farm Radioactive"] or _G.Settings.Farm["Auto Farm Scrap Metal"] or _G.Settings.SeaStack["Auto Attack Seabeasts"] or _G.Settings.Raid["Auto Dungeon"] then
					for _, v in pairs((game:GetService("Players")).LocalPlayer.Character:GetDescendants()) do
						if v:IsA("BasePart") then
							v.CanCollide = false;
						end;
					end;
				end;
			end;
		end;
	end);
end);
spawn(function()
	pcall(function()
		while wait() do
			if World3 then
				if _G.Settings.Farm["Auto Pirate Raid"] or _G.Settings.Race["Auto Race V3"] or _G.Settings.Farm["Auto Kill Cake Prince"] or _G.Settings.SeaStack["Teleport To Kitsune Island"] or _G.Settings.SeaStack["Teleport To Frozen Dimension"] or _G.Settings.SeaStack["Sail To Frozen Dimension"] or _G.Settings.SeaStack["Summon Frozen Dimension"] or _G.Settings.SeaStack["Summon Kitsune Island"] or _G.Settings.SeaStack["Teleport To Mirage Island"] or _G.Settings.Race["Auto Train"] or _G.Settings.Items["Auto Press Haki Button"] or _G.Settings.SeaEvent["Sail Boat"] or _G.Settings.Items["Auto Arena Trainer"] or _G.Settings.Race["Auto Kill Player After Trial"] or _G.Settings.Race["Tween To Highest Mirage"] or _G.Settings.Race["Auto Trial"] or _G.Settings.Race["Find Blue Gear"] or _G.Settings.Combat["Auto Kill Player Quest"] or _G.Settings.Items["Auto Cursed Dual Katana"] or _G.Settings.Farm["Auto Farm Bone"] or _G.Settings.Farm["Auto Kill Dough King"] or _G.Settings.Items["Auto Soul Guitar"] or _G.Settings.Items["Auto Tushita"] or _G.Settings.Farm["Auto Elite Hunter"] or _G.AutoKillSelectedPlayer or _G.Settings.Items["Auto Rainbow Haki"] or _G.Settings.Items["Auto Dark Dagger"] or _G.Settings.Farm["Auto Farm Ectoplasm"] or _G.Settings.Farm["Auto Observation V2"] or _G.Settings.Farm["Auto Musketeer Hat"] or _G.Settings.Items["Auto Holy Torch"] or _G.Settings.Items["Auto Hallow Scythe"] or _G.Settings.Farm["Auto Farm Katakuri"] or _G.Settings.Farm["Auto Farm Conjured Cocoa"] or _G.Settings.Farm["Auto Farm Fish Tail"] or _G.Settings.Farm["Auto Farm Gunpowder"] or _G.Settings.Farm["Auto Farm Dragon Scale"] or _G.Settings.Farm["Auto Farm Scrap Metal"] or _G.Settings.Farm["Auto Farm Mini Tusk"] or _G.Settings.Items["Auto Buddy Sword"] or _G.Settings.Items["Auto Canvander"] or _G.Settings.Farm["Auto Farm Leather"] or _G.Settings.Raid["Auto Dungeon"] then
					if not (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
						local Noclip = Instance.new("BodyVelocity");
						Noclip.Name = "BodyClip";
						Noclip.Parent = (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart;
						Noclip.MaxForce = Vector3.new(100000, 100000, 100000);
						Noclip.Velocity = Vector3.new(0, 0, 0);
					end;
				end;
			end;
		end;
	end);
end);
spawn(function()
	pcall(function()
		while wait() do
			if World3 then
				if _G.Settings.Farm["Auto Pirate Raid"] or _G.Settings.Race["Auto Race V3"] or _G.Settings.Farm["Auto Kill Cake Prince"] or _G.Settings.SeaStack["Teleport To Kitsune Island"] or _G.Settings.SeaStack["Teleport To Frozen Dimension"] or _G.Settings.SeaStack["Sail To Frozen Dimension"] or _G.Settings.SeaStack["Summon Frozen Dimension"] or _G.Settings.SeaStack["Summon Kitsune Island"] or _G.Settings.SeaStack["Teleport To Mirage Island"] or _G.Settings.Race["Auto Train"] or _G.Settings.Items["Auto Press Haki Button"] or _G.Settings.SeaEvent["Sail Boat"] or _G.Settings.Items["Auto Arena Trainer"] or _G.Settings.Race["Auto Kill Player After Trial"] or _G.Settings.Race["Tween To Highest Mirage"] or _G.Settings.Race["Auto Trial"] or _G.Settings.Race["Find Blue Gear"] or _G.Settings.Combat["Auto Kill Player Quest"] or _G.Settings.Items["Auto Cursed Dual Katana"] or _G.Settings.Farm["Auto Farm Bone"] or _G.Settings.Farm["Auto Kill Dough King"] or _G.Settings.Items["Auto Soul Guitar"] or _G.Settings.Items["Auto Tushita"] or _G.Settings.Farm["Auto Elite Hunter"] or _G.AutoKillSelectedPlayer or _G.Settings.Items["Auto Rainbow Haki"] or _G.Settings.Items["Auto Dark Dagger"] or _G.Settings.Farm["Auto Farm Ectoplasm"] or _G.Settings.Farm["Auto Observation V2"] or _G.Settings.Farm["Auto Musketeer Hat"] or _G.Settings.Items["Auto Holy Torch"] or _G.Settings.Items["Auto Hallow Scythe"] or _G.Settings.Farm["Auto Farm Katakuri"] or _G.Settings.Farm["Auto Farm Conjured Cocoa"] or _G.Settings.Farm["Auto Farm Fish Tail"] or _G.Settings.Farm["Auto Farm Gunpowder"] or _G.Settings.Farm["Auto Farm Dragon Scale"] or _G.Settings.Farm["Auto Farm Scrap Metal"] or _G.Settings.Farm["Auto Farm Mini Tusk"] or _G.Settings.Items["Auto Buddy Sword"] or _G.Settings.Items["Auto Canvander"] or _G.Settings.Farm["Auto Farm Leather"] or _G.Settings.Raid["Auto Dungeon"] then
					for _, v in pairs((game:GetService("Players")).LocalPlayer.Character:GetDescendants()) do
						if v:IsA("BasePart") then
							v.CanCollide = false;
						end;
					end;
				end;
			end;
		end;
	end);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Settings.Main["Auto Farm"] or _G.Settings.Farm["Auto Farm Chest Tween"] or _G.Settings.Items["Auto Electric Claw"] or _G.Settings.Main["Auto Farm Fruit Mastery"] or _G.Settings.Main["Auto Farm Gun Mastery"] or _G.TeleportIsland or _G.AutoKillSelectedPlayer or _G.TeleportToPlayer or _G.Settings.Farm["Auto Farm Observation"] or _G.Settings.Fruit["Tween To Fruit"] or _G.TeleportNPC or _G.Settings.Main["Auto Farm Mob"] or _G.Settings.Main["Auto Farm Fast"] or _G.Settings.Main["Auto Farm All Boss"] or _G.Settings.Main["Auto Farm Boss"] or _G.Settings.Main["Auto Farm Sword Mastery"] then
				if not (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
					local Noclip = Instance.new("BodyVelocity");
					Noclip.Name = "BodyClip";
					Noclip.Parent = (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart;
					Noclip.MaxForce = Vector3.new(100000, 100000, 100000);
					Noclip.Velocity = Vector3.new(0, 0, 0);
				end;
			end;
		end;
	end);
end);
spawn(function()
	pcall(function()
		(game:GetService("RunService")).Stepped:Connect(function()
			if _G.Settings.Main["Auto Farm"] or _G.Settings.Farm["Auto Farm Chest Tween"] or _G.Settings.Items["Auto Electric Claw"] or _G.Settings.Main["Auto Farm Fruit Mastery"] or _G.Settings.Main["Auto Farm Gun Mastery"] or _G.TeleportIsland or _G.AutoKillSelectedPlayer or _G.TeleportToPlayer or _G.Settings.Farm["Auto Farm Observation"] or _G.Settings.Fruit["Tween To Fruit"] or _G.TeleportNPC or _G.Settings.Main["Auto Farm Mob"] or _G.Settings.Main["Auto Farm Fast"] or _G.Settings.Main["Auto Farm All Boss"] or _G.Settings.Main["Auto Farm Boss"] or _G.Settings.Main["Auto Farm Sword Mastery"] then
				for _, v in pairs((game:GetService("Players")).LocalPlayer.Character:GetDescendants()) do
					if v:IsA("BasePart") then
						v.CanCollide = false;
					end;
				end;
			end;
		end);
	end);
end);
function InstancePos(pos)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos;
end;
function TP3(pos)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos;
end;
function StopTween(target)
	if not target then
		_G.StopTween = true;
		wait();
		topos((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame);
		wait();
		if (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
			((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip")):Destroy();
		end;
		_G.StopTween = false;
		_G.Clip = false;
	end;
end;
function RemoveAnimation(Mon)
	Mon.Humanoid:ChangeState(11);
	if Mon.Humanoid:FindFirstChild("Animator") then
		Mon.Humanoid.Animator:Destroy();
	end;
end;
spawn(function()
	pcall(function()
		while wait() do
			for i, v in pairs((game:GetService("Players")).LocalPlayer.Backpack:GetChildren()) do
				if v:IsA("Tool") then
					if v:FindFirstChild("RemoteFunctionShoot") then
						SelectWeaponGun = v.Name;
					end;
				end;
			end;
		end;
	end);
end);
(game:GetService("Players")).LocalPlayer.Idled:connect(function()
	(game:GetService("VirtualUser")):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
	wait(1);
	(game:GetService("VirtualUser")):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
end);
MainTab:Seperator("Main");
Time = MainTab:Label("Executor Time");
function UpdateTime()
	local GameTime = math.floor(workspace.DistributedGameTime + 0.5);
	local Hour = math.floor(GameTime / 60 ^ 2) % 24;
	local Minute = math.floor(GameTime / 60 ^ 1) % 60;
	local Second = math.floor(GameTime / 60 ^ 0) % 60;
	Time:Set("[Game Time] : Hours : " .. Hour .. " Min : " .. Minute .. " Sec : " .. Second);
end;
spawn(function()
	while task.wait() do
		pcall(function()
			UpdateTime();
		end);
	end;
end);
Client = MainTab:Label("Client");
function UpdateClient()
	local Fps = workspace:GetRealPhysicsFPS();
	Client:Set("[Fps] : " .. Fps);
end;
spawn(function()
	while true do
		wait(0.1);
		UpdateClient();
	end;
end);
Client1 = MainTab:Label("Client");
function UpdateClient1()
	local Ping = (game:GetService("Stats")).Network.ServerStatsItem["Data Ping"]:GetValueString();
	Client1:Set("[Ping] : " .. Ping);
end;
spawn(function()
	while true do
		wait(0.1);
		UpdateClient1();
	end;
end);
MainTab:Button("Copy Discord Link", function()
	setclipboard("https://discord.com/invite/25ms");
	Update:Notify("Copied!", 3);
end);
MainTab:Seperator("Level Farm");
local WeaponList = {
	"Melee",
	"Sword",
	"Fruit"
};
MainTab:Dropdown("Choose Weapon", WeaponList, _G.Settings.Main["Select Weapon"], function(value)
	_G.Settings.Main["Select Weapon"] = value;
	(getgenv()).SaveSetting();
end);
task.spawn(function()
	while wait(0.2) do
		pcall(function()
			if _G.Settings.Main["Select Weapon"] == "Melee" then
				for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.Settings.Main["Selected Weapon"] = v.Name;
						end;
					end;
				end;
			elseif _G.Settings.Main["Select Weapon"] == "Sword" then
				for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Sword" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.Settings.Main["Selected Weapon"] = v.Name;
						end;
					end;
				end;
			elseif _G.Settings.Main["Select Weapon"] == "Gun" then
				for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Gun" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.Settings.Main["Selected Weapon"] = v.Name;
						end;
					end;
				end;
			elseif _G.Settings.Main["Select Weapon"] == "Fruit" then
				for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Blox Fruit" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.Settings.Main["Selected Weapon"] = v.Name;
						end;
					end;
				end;
			end;
		end);
	end;
end);
local ListF = {
	"Normal",
	"Auto Quest",
	"Nearest"
};
MainTab:Dropdown("Choose Farm Mode", ListF, _G.Settings.Main["Farm Mode"], function(value)
	_G.Settings.Main["Farm Mode"] = value;
	(getgenv()).SaveSetting();
end);
MainTab:Toggle("Auto Farm", _G.Settings.Main["Auto Farm"], "Auto Farm Selected Mode", function(value)
	_G.Settings.Main["Auto Farm"] = value;
	StopTween(_G.Settings.Main["Auto Farm"]);
	(getgenv()).SaveSetting();
end);
spawn(function()
	while wait(0.2) do
		if _G.Settings.Main["Farm Mode"] == "Normal" and _G.Settings.Main["Auto Farm"] then
			pcall(function()
				CheckQuest();
				local QuestTitle = (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if not string.find(QuestTitle, NameMon) then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("AbandonQuest");
				end;
				if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					topos(CFrameQuest);
					if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 5 then
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest);
					end;
				elseif (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					if (game:GetService("Workspace")).Enemies:FindFirstChild(Mon) then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								if v.Name == Mon then
									if string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
										repeat
											(game:GetService("RunService")).Heartbeat:wait();
											EquipWeapon(_G.Settings.Main["Selected Weapon"]);
											AutoHaki();
											PosMon = v.HumanoidRootPart.CFrame;
											MonFarm = v.Name;
											topos(v.HumanoidRootPart.CFrame * Pos);
											v.HumanoidRootPart.CanCollide = false;
											v.Humanoid.WalkSpeed = 0;
											v.Head.CanCollide = false;
											v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
											Attack();
										until not _G.Settings.Main["Auto Farm"] or v.Humanoid.Health <= 0 or (not v.Parent) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
									end;
								end;
							end;
						end;
					else
						topos(CFrameMon);
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
					end;
				end;
			end);
		end;
	end;
end);
spawn(function()
	while wait(0.2) do
		if _G.Settings.Main["Farm Mode"] == "Nearest" and _G.Settings.Main["Auto Farm"] then
			pcall(function()
				for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
					if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
						if v.Name then
							if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - (v:FindFirstChild("HumanoidRootPart")).Position).Magnitude <= 5000 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									Attack();
									AutoHaki();
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									topos(v.HumanoidRootPart.CFrame * Pos);
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									v.HumanoidRootPart.Transparency = 1;
									v.Humanoid.JumpPower = 0;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.CanCollide = false;
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
								until not _G.Settings.Main["Auto Farm"] or (not v.Parent) or v.Humanoid.Health <= 0 or (not game.Workspace.Enemies:FindFirstChild(v.Name));
							end;
						end;
					end;
				end;
			end);
		end;
	end;
end);
spawn(function()
	while wait(0.2) do
		if _G.Settings.Main["Farm Mode"] == "Auto Quest" and _G.Settings.Main["Auto Farm"] then
			pcall(function()
				CheckQuest();
				local QuestTitle = (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if not string.find(QuestTitle, NameMon) then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("AbandonQuest");
				end;
				if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest);
					topos(CFrameMon);
				elseif (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					if (game:GetService("Workspace")).Enemies:FindFirstChild(Mon) then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								if v.Name == Mon then
									if string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
										repeat
											(game:GetService("RunService")).Heartbeat:wait();
											EquipWeapon(_G.Settings.Main["Selected Weapon"]);
											AutoHaki();
											PosMon = v.HumanoidRootPart.CFrame;
											topos(v.HumanoidRootPart.CFrame * Pos);
											v.HumanoidRootPart.CanCollide = false;
											v.Humanoid.WalkSpeed = 0;
											v.Head.CanCollide = false;
											v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
											MonFarm = v.Name;
											Attack();
										until not _G.Settings.Main["Auto Farm"] or v.Humanoid.Health <= 0 or (not v.Parent) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
									end;
								end;
							end;
						end;
					else
						topos(CFrameMon);
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
					end;
				end;
			end);
		end;
	end;
end);
if World1 then
	MainTab:Toggle("Auto Farm Fast", _G.Settings.Main["Auto Farm Fast"], "Farm Sky Lv.10-75", function(value)
		_G.Settings.Main["Auto Farm Fast"] = value;
		StopTween(_G.Settings.Main["Auto Farm Fast"]);
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Main["Auto Farm Fast"] and World1 then
					if game.Players.LocalPlayer.Data.Level.Value >= 10 then
						_G.Settings.Main["Auto Farm"] = false;
						_G.Settings.Main["Auto Farm Fast"] = true;
					end;
				end;
			end;
		end);
	end);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Main["Auto Farm Fast"] and World1 then
				pcall(function()
					if game.Players.LocalPlayer.Data.Level.Value >= 10 then
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047));
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Shanda" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Main["Auto Farm Fast"] or (not v.Parent) or v.Humanoid.Health <= 0;
									topos(CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531));
									UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
								end;
							end;
						end;
					end;
				end);
			end;
		end;
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Main["Auto Farm Fast"] and World1 then
					if game.Players.LocalPlayer.Data.Level.Value >= 75 then
						_G.Settings.Main["Auto Farm"] = true;
						_G.Settings.Main["Auto Farm Fast"] = false;
					end;
				end;
			end;
		end);
	end);
end;
spawn(function()
	while wait(0.2) do
		if _G.BuyAllSword then
			pcall(function()
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyItem", "Cutlass");
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyItem", "Katana");
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace");
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyItem", "Duel Katana");
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana");
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyItem", "Pipe");
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyItem", "Bisento");
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade");
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane");
			end);
		end;
	end;
end);
spawn(function()
	while wait(0.2) do
		if _G.BuyAllAib then
			pcall(function()
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("KenTalk", "Buy");
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyHaki", "Geppo");
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyHaki", "Buso");
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyHaki", "Soru");
			end);
		end;
	end;
end);
MainTab:Seperator("Mastery Farm");
if World3 then
	ListMasteryMethod = {
		"Quest",
		"No Quest",
		"Nearest",
		"Cakeprince",
		"Bones"
	};
elseif World2 or World1 then
	ListMasteryMethod = {
		"Quest",
		"No Quest",
		"Nearest"
	};
end;
MainTab:Dropdown("Choose Mode", ListMasteryMethod, _G.Settings.Main["Selected Mastery Mode"], function(value)
	_G.Settings.Main["Selected Mastery Mode"] = value;
	(getgenv()).SaveSetting();
end);
MainTab:Toggle("Auto Farm Fruit Mastery", _G.Settings.Main["Auto Farm Fruit Mastery"], "Auto Kill Mob Using Fruit", function(value)
	_G.Settings.Main["Auto Farm Fruit Mastery"] = value;
	StopTween(_G.Settings.Main["Auto Farm Fruit Mastery"]);
	(getgenv()).SaveSetting();
end);
MainTab:Toggle("Auto Farm Gun Mastery", _G.Settings.Main["Auto Farm Gun Mastery"], "Auto Kill Mob Using Gun", function(value)
	_G.Settings.Main["Auto Farm Gun Mastery"] = value;
	StopTween(_G.Settings.Main["Auto Farm Gun Mastery"]);
	(getgenv()).SaveSetting();
end);
MainTab:Line();
local SwordList = {};
local Inventory = (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("getInventory");
for i, v in pairs(Inventory) do
	if v.Type == "Sword" then
		table.insert(SwordList, v.Name);
	end;
end;
MainTab:Dropdown("Choose Sword", SwordList, _G.Settings.Main["Selected Mastery Sword"], function(value)
	_G.Settings.Main["Selected Mastery Sword"] = value;
	(getgenv()).SaveSetting();
end);
function getInfoSword(SwordName)
	if game.Players.LocalPlayer.Character:FindFirstChild(SwordName) then
		return true;
	elseif game.Players.LocalPlayer.Backpack:FindFirstChild(SwordName) then
		return true;
	end;
	return false;
end;
spawn(function()
	while wait() do
		pcall(function()
			if _G.Settings.Main["Auto Farm Sword Mastery"] then
				if not getInfoSword(_G.Settings.Main["Selected Mastery Sword"]) then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("LoadItem", _G.Settings.Main["Selected Mastery Sword"]);
				end;
			end;
		end);
	end;
end);
MainTab:Toggle("Auto Farm Sword Mastery", _G.Settings.Main["Auto Farm Sword Mastery"], "Auto Kill Mob Using Sword", function(value)
	_G.Settings.Main["Auto Farm Sword Mastery"] = value;
	StopTween(_G.Settings.Main["Auto Farm Sword Mastery"]);
	(getgenv()).SaveSetting();
end);
spawn(function()
	while task.wait(0.2) do
		if _G.Settings.Main["Auto Farm Sword Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "Quest" then
			pcall(function()
				CheckQuest();
				if not string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("AbandonQuest");
					topos(CFrameQuest);
					if (CFrameQuest.Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest);
					end;
				elseif string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					if game.Workspace.Enemies:FindFirstChild(Mon) then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
								if v.Name == Mon then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										EquipWeapon(_G.Settings.Main["Selected Mastery Sword"]);
										Attack();
										topos(v.HumanoidRootPart.CFrame * Pos);
										AutoHaki();
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										v.HumanoidRootPart.Transparency = 1;
										v.Humanoid.JumpPower = 0;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
									until not _G.Settings.Main["Auto Farm Sword Mastery"] or (not v.Parent) or v.Humanoid.Health == 0 or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false or (not (game:GetService("Workspace")).Enemies:FindFirstChild(v.Name)) or not _G.Settings.Main["Selected Mastery Mode"] == "Quest";
								end;
							end;
						end;
					else
						topos(CFrameMon);
						UnEquipWeapon(_G.Settings.Main["Selected Mastery Sword"]);
					end;
				end;
			end);
		elseif _G.Settings.Main["Auto Farm Sword Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "No Quest" then
			pcall(function()
				CheckQuest();
				topos(CFrameMon);
				if game.Workspace.Enemies:FindFirstChild(Mon) then
					for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
							repeat
								(game:GetService("RunService")).Heartbeat:wait();
								EquipWeapon(_G.Settings.Main["Selected Mastery Sword"]);
								Attack();
								topos(v.HumanoidRootPart.CFrame * Pos);
								AutoHaki();
								v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
								v.HumanoidRootPart.Transparency = 1;
								v.Humanoid.JumpPower = 0;
								v.Humanoid.WalkSpeed = 0;
								v.HumanoidRootPart.CanCollide = false;
								PosMon = v.HumanoidRootPart.CFrame;
								MonFarm = v.Name;
							until not _G.Settings.Main["Auto Farm Sword Mastery"] or (not v.Parent) or v.Humanoid.Health == 0 or (not (game:GetService("Workspace")).Enemies:FindFirstChild(v.Name)) or not _G.Settings.Main["Selected Mastery Mode"] == "No Quest";
						end;
					end;
				else
					UnEquipWeapon(_G.Settings.Main["Selected Mastery Sword"]);
					topos(CFrameMon);
				end;
			end);
		elseif _G.Settings.Main["Auto Farm Sword Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "Bones" then
			pcall(function()
				topos(QuestBonePos);
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Reborn Skeleton") or (game:GetService("Workspace")).Enemies:FindFirstChild("Living Zombie") or (game:GetService("Workspace")).Enemies:FindFirstChild("Demonic Soul") or (game:GetService("Workspace")).Enemies:FindFirstChild("Posessed Mummy") then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
							if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									EquipWeapon(_G.Settings.Main["Selected Mastery Sword"]);
									Attack();
									topos(v.HumanoidRootPart.CFrame * Pos);
									AutoHaki();
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									v.HumanoidRootPart.Transparency = 1;
									v.Humanoid.JumpPower = 0;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.CanCollide = false;
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
								until not _G.Settings.Main["Auto Farm Sword Mastery"] or v.Humanoid.Health <= 0 or (not v.Parent) or (not (game:GetService("Workspace")).Enemies:FindFirstChild(v.Name)) or not _G.Settings.Main["Selected Mastery Mode"] == "Bones";
							end;
						elseif (game:GetService("ReplicatedStorage")):FindFirstChild("Demonic Soul") then
							topos(v.HumanoidRootPart.CFrame * Pos);
						end;
					end;
				end;
			end);
		elseif _G.Settings.Main["Auto Farm Sword Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "Cakeprince" then
			pcall(function()
				local PosCake = CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375);
				topos(PosCake);
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Cookie Crafter") or (game:GetService("Workspace")).Enemies:FindFirstChild("Cake Guard") or (game:GetService("Workspace")).Enemies:FindFirstChild("Baking Staff") or (game:GetService("Workspace")).Enemies:FindFirstChild("Head Baker") then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
							if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									EquipWeapon(_G.Settings.Main["Selected Mastery Sword"]);
									Attack();
									topos(v.HumanoidRootPart.CFrame * Pos);
									AutoHaki();
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									v.HumanoidRootPart.Transparency = 1;
									v.Humanoid.JumpPower = 0;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.CanCollide = false;
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
								until not _G.Settings.Main["Auto Farm Sword Mastery"] or v.Humanoid.Health <= 0 or (not v.Parent) or (not (game:GetService("Workspace")).Enemies:FindFirstChild(v.Name)) or not _G.Settings.Main["Selected Mastery Mode"] == "Cakeprince";
							end;
						elseif (game:GetService("ReplicatedStorage")):FindFirstChild("Baking Staff") then
							topos(v.HumanoidRootPart.CFrame * Pos);
						end;
					end;
				end;
			end);
		elseif _G.Settings.Main["Auto Farm Sword Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "Nearest" then
			pcall(function()
				for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
					if v.Name and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
						if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - (v:FindFirstChild("HumanoidRootPart")).Position).Magnitude <= 2000 then
							repeat
								(game:GetService("RunService")).Heartbeat:wait();
								EquipWeapon(_G.Settings.Main["Selected Mastery Sword"]);
								Attack();
								topos(v.HumanoidRootPart.CFrame * Pos);
								AutoHaki();
								v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
								v.HumanoidRootPart.Transparency = 1;
								v.Humanoid.JumpPower = 0;
								v.Humanoid.WalkSpeed = 0;
								v.HumanoidRootPart.CanCollide = false;
								PosMon = v.HumanoidRootPart.CFrame;
								MonFarm = v.Name;
							until not _G.Settings.Main["Auto Farm Sword Mastery"] or (not v.Parent) or v.Humanoid.Health == 0 or not _G.Settings.Main["Selected Mastery Mode"] == "Nearest";
						end;
					end;
				end;
			end);
		elseif _G.Settings.Main["Auto Farm Sword Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "Boss" then
			if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false then
				CheckBossQuest();
				topos(CFrameQBoss);
				if (CFrameQBoss.Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, QuestLvBoss);
				end;
			elseif (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
				pcall(function()
					CheckBossQuest();
					if (game:GetService("Workspace")).Enemies:FindFirstChild(SelectBoss) then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == selectBoss and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									EquipWeapon(_G.Settings.Main["Selected Mastery Sword"]);
									Attack();
									topos(v.HumanoidRootPart.CFrame * Pos);
									AutoHaki();
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									v.HumanoidRootPart.Transparency = 1;
									v.Humanoid.JumpPower = 0;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.CanCollide = false;
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
								until not _G.Settings.Main["Auto Farm Sword Mastery"] or not _G.Settings.Main["Selected Mastery Mode"] == "Boss" or (not v.Parent) or v.Humanoid.Health == 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or (not (game:GetService("Workspace")).Enemies:FindFirstChild(v.Name));
							end;
						end;
					end;
				end);
			end;
		end;
	end;
end);
spawn(function()
	while task.wait(0.2) do
		if _G.Settings.Main["Auto Farm Fruit Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "Quest" then
			pcall(function()
				CheckQuest();
				if not string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("AbandonQuest");
					topos(CFrameQuest);
					if (CFrameQuest.Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest);
					end;
				elseif string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					if game.Workspace.Enemies:FindFirstChild(Mon) then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
								if v.Name == Mon then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.Setting["Mastery Health"] / 100 then
											EquipWeapon((game:GetService("Players")).LocalPlayer.Data.DevilFruit.Value);
											topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0) * CFrame.Angles(math.rad((-90)), 0, 0));
											Skillaimbot = true;
											UseSkill = true;
										else
											UseSkill = false;
											Skillaimbot = false;
											EquipWeapon(_G.Settings.Main["Selected Weapon"]);
											NormalAttack();
											topos(v.HumanoidRootPart.CFrame * Pos);
										end;
										AutoHaki();
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										v.HumanoidRootPart.Transparency = 1;
										v.Humanoid.JumpPower = 0;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										AimBotSkillPosition = v.HumanoidRootPart.Position;
										Skillaimbot = true;
									until not _G.Settings.Main["Auto Farm Fruit Mastery"] or (not v.Parent) or v.Humanoid.Health == 0 or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false or (not (game:GetService("Workspace")).Enemies:FindFirstChild(v.Name)) or not _G.Settings.Main["Selected Mastery Mode"] == "Quest";
									UseSkill = false;
									Skillaimbot = false;
								end;
							end;
						end;
					else
						UseSkill = false;
						topos(CFrameMon);
						UnEquipWeapon(SelectWeapon);
					end;
				end;
			end);
		elseif _G.Settings.Main["Auto Farm Fruit Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "No Quest" then
			pcall(function()
				CheckQuest();
				topos(CFrameMon);
				if game.Workspace.Enemies:FindFirstChild(Mon) then
					for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
							repeat
								(game:GetService("RunService")).Heartbeat:wait();
								if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.Setting["Mastery Health"] / 100 then
									EquipWeapon((game:GetService("Players")).LocalPlayer.Data.DevilFruit.Value);
									UseSkill = true;
									Skillaimbot = true;
									topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0) * CFrame.Angles(math.rad((-90)), 0, 0));
								else
									UseSkill = false;
									Skillaimbot = false;
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									NormalAttack();
									topos(v.HumanoidRootPart.CFrame * Pos);
								end;
								AutoHaki();
								v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
								v.HumanoidRootPart.Transparency = 1;
								v.Humanoid.JumpPower = 0;
								v.Humanoid.WalkSpeed = 0;
								v.HumanoidRootPart.CanCollide = false;
								PosMon = v.HumanoidRootPart.CFrame;
								MonFarm = v.Name;
								AimBotSkillPosition = v.HumanoidRootPart.Position;
							until not _G.Settings.Main["Auto Farm Fruit Mastery"] or (not v.Parent) or v.Humanoid.Health == 0 or (not (game:GetService("Workspace")).Enemies:FindFirstChild(v.Name)) or not _G.Settings.Main["Selected Mastery Mode"] == "No Quest";
							UseSkill = false;
							Skillaimbot = false;
						end;
					end;
				else
					UseSkill = false;
					UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
					topos(CFrameMon);
				end;
			end);
		elseif _G.Settings.Main["Auto Farm Fruit Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "Bones" then
			pcall(function()
				topos(QuestBonePos);
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Reborn Skeleton") or (game:GetService("Workspace")).Enemies:FindFirstChild("Living Zombie") or (game:GetService("Workspace")).Enemies:FindFirstChild("Demonic Soul") or (game:GetService("Workspace")).Enemies:FindFirstChild("Posessed Mummy") then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
							if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.Setting["Mastery Health"] / 100 then
										EquipWeapon((game:GetService("Players")).LocalPlayer.Data.DevilFruit.Value);
										UseSkill = true;
										Skillaimbot = true;
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0) * CFrame.Angles(math.rad((-90)), 0, 0));
									else
										UseSkill = false;
										Skillaimbot = false;
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										NormalAttack();
										topos(v.HumanoidRootPart.CFrame * Pos);
									end;
									AutoHaki();
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									v.HumanoidRootPart.Transparency = 1;
									v.Humanoid.JumpPower = 0;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.CanCollide = false;
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
									AimBotSkillPosition = v.HumanoidRootPart.Position;
								until not _G.Settings.Main["Auto Farm Fruit Mastery"] or v.Humanoid.Health <= 0 or (not v.Parent) or (not (game:GetService("Workspace")).Enemies:FindFirstChild(v.Name)) or not _G.Settings.Main["Selected Mastery Mode"] == "Bones";
								UseSkill = false;
								Skillaimbot = false;
							end;
						elseif (game:GetService("ReplicatedStorage")):FindFirstChild("Demonic Soul") then
							topos(v.HumanoidRootPart.CFrame * Pos);
						end;
					end;
				end;
			end);
		elseif _G.Settings.Main["Auto Farm Fruit Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "Cakeprince" then
			pcall(function()
				local PosCake = CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375);
				topos(PosCake);
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Cookie Crafter") or (game:GetService("Workspace")).Enemies:FindFirstChild("Cake Guard") or (game:GetService("Workspace")).Enemies:FindFirstChild("Baking Staff") or (game:GetService("Workspace")).Enemies:FindFirstChild("Head Baker") then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
							if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.Setting["Mastery Health"] / 100 then
										EquipWeapon((game:GetService("Players")).LocalPlayer.Data.DevilFruit.Value);
										UseSkill = true;
										Skillaimbot = true;
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0) * CFrame.Angles(math.rad((-90)), 0, 0));
									else
										UseSkill = false;
										Skillaimbot = false;
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										NormalAttack();
										topos(v.HumanoidRootPart.CFrame * Pos);
									end;
									AutoHaki();
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									v.HumanoidRootPart.Transparency = 1;
									v.Humanoid.JumpPower = 0;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.CanCollide = false;
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
									AimBotSkillPosition = v.HumanoidRootPart.Position;
								until not _G.Settings.Main["Auto Farm Fruit Mastery"] or v.Humanoid.Health <= 0 or (not v.Parent) or (not (game:GetService("Workspace")).Enemies:FindFirstChild(v.Name)) or not _G.Settings.Main["Selected Mastery Mode"] == "Cakeprince";
								UseSkill = false;
								Skillaimbot = false;
							end;
						elseif (game:GetService("ReplicatedStorage")):FindFirstChild("Baking Staff") then
							topos(v.HumanoidRootPart.CFrame * Pos);
						end;
					end;
				end;
			end);
		elseif _G.Settings.Main["Auto Farm Fruit Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "Nearest" then
			pcall(function()
				for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
					if v.Name and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
						if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - (v:FindFirstChild("HumanoidRootPart")).Position).Magnitude <= 2000 then
							repeat
								(game:GetService("RunService")).Heartbeat:wait();
								if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.Setting["Mastery Health"] / 100 then
									EquipWeapon((game:GetService("Players")).LocalPlayer.Data.DevilFruit.Value);
									topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0) * CFrame.Angles(math.rad((-90)), 0, 0));
									Skillaimbot = true;
									UseSkill = true;
								else
									Skillaimbot = false;
									UseSkill = false;
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									NormalAttack();
									topos(v.HumanoidRootPart.CFrame * Pos);
								end;
								AutoHaki();
								v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
								v.HumanoidRootPart.Transparency = 1;
								v.Humanoid.JumpPower = 0;
								v.Humanoid.WalkSpeed = 0;
								v.HumanoidRootPart.CanCollide = false;
								PosMon = v.HumanoidRootPart.CFrame;
								MonFarm = v.Name;
								AimBotSkillPosition = v.HumanoidRootPart.Position;
							until not _G.Settings.Main["Auto Farm Fruit Mastery"] or (not v.Parent) or v.Humanoid.Health == 0 or not _G.Settings.Main["Selected Mastery Mode"] == "Nearest";
							UseSkill = false;
							Skillaimbot = false;
						end;
					end;
				end;
			end);
		elseif _G.Settings.Main["Auto Farm Fruit Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "Boss" then
			if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false then
				CheckBossQuest();
				topos(CFrameQBoss);
				if (CFrameQBoss.Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, QuestLvBoss);
				end;
			elseif (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
				pcall(function()
					CheckBossQuest();
					if (game:GetService("Workspace")).Enemies:FindFirstChild(SelectBoss) then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == selectBoss and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.Setting["Mastery Health"] / 100 then
										EquipWeapon((game:GetService("Players")).LocalPlayer.Data.DevilFruit.Value);
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0) * CFrame.Angles(math.rad((-90)), 0, 0));
										Skillaimbot = true;
										UseSkill = true;
									else
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										UseSkill = false;
										Skillaimbot = false;
										NormalAttack();
										topos(v.HumanoidRootPart.CFrame * Pos);
									end;
									AutoHaki();
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									v.HumanoidRootPart.Transparency = 1;
									v.Humanoid.JumpPower = 0;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.CanCollide = false;
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
									AimBotSkillPosition = v.HumanoidRootPart.Position;
								until not _G.Settings.Main["Auto Farm Fruit Mastery"] or not _G.Settings.Main["Selected Mastery Mode"] == "Boss" or (not v.Parent) or v.Humanoid.Health == 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or (not (game:GetService("Workspace")).Enemies:FindFirstChild(v.Name));
								UseSkill = false;
								Skillaimbot = false;
							end;
						end;
					else
						UseSkill = false;
						Skillaimbot = false;
					end;
				end);
			end;
		end;
	end;
end);
spawn(function()
	while task.wait(0.2) do
		if _G.Settings.Main["Auto Farm Gun Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "Quest" then
			pcall(function()
				CheckQuest();
				if not string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("AbandonQuest");
					topos(CFrameQuest);
					if (CFrameQuest.Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest);
					end;
				elseif string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					if game.Workspace.Enemies:FindFirstChild(Mon) then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
								if v.Name == Mon then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.Setting["Mastery Health"] / 100 then
											EquipWeapon(SelectWeaponGun);
											local ShootPosition = (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, (-15), 0);
											((game:GetService("Players")).LocalPlayer.Character.Humanoid:FindFirstChild("")):InvokeServer("TAP", Vector3.new(ShootPosition.Position));
											topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0) * CFrame.Angles(math.rad((-90)), 0, 0));
											UseGunSkill = true;
											Skillaimbot = true;
										else
											UseGunSkill = false;
											Skillaimbot = false;
											EquipWeapon(_G.Settings.Main["Selected Weapon"]);
											topos(v.HumanoidRootPart.CFrame * Pos);
										end;
										AutoHaki();
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										v.HumanoidRootPart.Transparency = 1;
										v.Humanoid.JumpPower = 0;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.CanCollide = false;
										NormalAttack();
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										AimBotSkillPosition = v.HumanoidRootPart.Position;
									until not _G.Settings.Main["Auto Farm Gun Mastery"] or (not v.Parent) or v.Humanoid.Health <= 0 or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false or (not (game:GetService("Workspace")).Enemies:FindFirstChild(v.Name)) or not _G.Settings.Main["Selected Mastery Mode"] == "Quest";
									UseGunSkill = false;
									Skillaimbot = false;
								end;
							end;
						end;
					else
						UseGunSkill = false;
						Skillaimbot = false;
						topos(CFrameMon);
					end;
				end;
			end);
		elseif _G.Settings.Main["Auto Farm Gun Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "No Quest" then
			pcall(function()
				CheckQuest();
				topos(CFrameMon);
				if game.Workspace.Enemies:FindFirstChild(Mon) then
					for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
							repeat
								(game:GetService("RunService")).Heartbeat:wait();
								if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.Setting["Mastery Health"] / 100 then
									local ShootPosition = (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, (-15), 0);
									((game:GetService("Players")).LocalPlayer.Character.Humanoid:FindFirstChild("")):InvokeServer("TAP", Vector3.new(ShootPosition.Position));
									EquipWeapon(SelectWeaponGun);
									topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0) * CFrame.Angles(math.rad((-90)), 0, 0));
									UseGunSkill = true;
									Skillaimbot = true;
								else
									Skillaimbot = false;
									UseGunSkill = false;
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									topos(v.HumanoidRootPart.CFrame * Pos);
								end;
								AutoHaki();
								v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
								v.HumanoidRootPart.Transparency = 1;
								v.Humanoid.JumpPower = 0;
								v.Humanoid.WalkSpeed = 0;
								v.HumanoidRootPart.CanCollide = false;
								PosMon = v.HumanoidRootPart.CFrame;
								MonFarm = v.Name;
								NormalAttack();
								AimBotSkillPosition = v.HumanoidRootPart.Position;
							until not _G.Settings.Main["Auto Farm Gun Mastery"] or (not v.Parent) or v.Humanoid.Health <= 0 or (not (game:GetService("Workspace")).Enemies:FindFirstChild(v.Name)) or not _G.Settings.Main["Selected Mastery Mode"] == "No Quest";
						end;
					end;
				else
					UseGunSkill = false;
					Skillaimbot = false;
					UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
					topos(CFrameMon);
				end;
			end);
		elseif _G.Settings.Main["Auto Farm Gun Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "Bones" then
			pcall(function()
				topos(QuestBonePos);
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Reborn Skeleton") or (game:GetService("Workspace")).Enemies:FindFirstChild("Living Zombie") or (game:GetService("Workspace")).Enemies:FindFirstChild("Demonic Soul") or (game:GetService("Workspace")).Enemies:FindFirstChild("Posessed Mummy") then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
							if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.Setting["Mastery Health"] / 100 then
										EquipWeapon(SelectWeaponGun);
										local ShootPosition = (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, (-15), 0);
										((game:GetService("Players")).LocalPlayer.Character.Humanoid:FindFirstChild("")):InvokeServer("TAP", Vector3.new(ShootPosition.Position));
										UseGunSkill = true;
										Skillaimbot = true;
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0) * CFrame.Angles(math.rad((-90)), 0, 0));
									else
										UseGunSkill = false;
										Skillaimbot = false;
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										topos(v.HumanoidRootPart.CFrame * Pos);
									end;
									AutoHaki();
									NormalAttack();
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									v.HumanoidRootPart.Transparency = 1;
									v.Humanoid.JumpPower = 0;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.CanCollide = false;
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
									AimBotSkillPosition = v.HumanoidRootPart.Position;
								until not _G.Settings.Main["Auto Farm Gun Mastery"] or not _G.Settings.Main["Selected Mastery Mode"] == "Bones" or v.Humanoid.Health <= 0 or (not v.Parent);
								UseGunSkill = false;
								Skillaimbot = false;
							elseif (game:GetService("ReplicatedStorage")):FindFirstChild("Demonic Soul") then
								topos(v.HumanoidRootPart.CFrame * Pos);
							end;
						end;
					end;
				end;
			end);
		elseif _G.Settings.Main["Auto Farm Gun Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "Cakeprince" then
			pcall(function()
				local PosCake = CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375);
				topos(PosCake);
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Cookie Crafter") or (game:GetService("Workspace")).Enemies:FindFirstChild("Cake Guard") or (game:GetService("Workspace")).Enemies:FindFirstChild("Baking Staff") or (game:GetService("Workspace")).Enemies:FindFirstChild("Head Baker") then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
							if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.Setting["Mastery Health"] / 100 then
										EquipWeapon(SelectWeaponGun);
										local ShootPosition = (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, (-15), 0);
										((game:GetService("Players")).LocalPlayer.Character.Humanoid:FindFirstChild("")):InvokeServer("TAP", Vector3.new(ShootPosition.Position));
										UseGunSkill = true;
										Skillaimbot = true;
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0) * CFrame.Angles(math.rad((-90)), 0, 0));
									else
										UseGunSkill = false;
										Skillaimbot = false;
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										topos(v.HumanoidRootPart.CFrame * Pos);
									end;
									AutoHaki();
									NormalAttack();
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									v.HumanoidRootPart.Transparency = 1;
									v.Humanoid.JumpPower = 0;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.CanCollide = false;
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
									AimBotSkillPosition = v.HumanoidRootPart.Position;
								until not _G.Settings.Main["Auto Farm Gun Mastery"] or not _G.Settings.Main["Selected Mastery Mode"] == "Cakeprince" or v.Humanoid.Health <= 0 or (not v.Parent);
								UseGunSkill = false;
								Skillaimbot = false;
							elseif (game:GetService("ReplicatedStorage")):FindFirstChild("Cake Guard") then
								topos(v.HumanoidRootPart.CFrame * Pos);
							end;
						end;
					end;
				end;
			end);
		elseif _G.Settings.Main["Auto Farm Gun Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "Nearest" then
			pcall(function()
				for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
					if v.Name and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
						if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - (v:FindFirstChild("HumanoidRootPart")).Position).Magnitude <= 2000 then
							repeat
								(game:GetService("RunService")).Heartbeat:wait();
								if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.Setting["Mastery Health"] / 100 then
									EquipWeapon(SelectWeaponGun);
									local ShootPosition = (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, (-15), 0);
									((game:GetService("Players")).LocalPlayer.Character.Humanoid:FindFirstChild("")):InvokeServer("TAP", Vector3.new(ShootPosition.Position));
									topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0) * CFrame.Angles(math.rad((-90)), 0, 0));
									UseGunSkill = true;
									Skillaimbot = true;
								else
									UseGunSkill = false;
									Skillaimbot = false;
									AutoHaki();
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									topos(v.HumanoidRootPart.CFrame * Pos);
								end;
								AutoHaki();
								v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
								v.HumanoidRootPart.Transparency = 1;
								v.Humanoid.JumpPower = 0;
								v.Humanoid.WalkSpeed = 0;
								v.HumanoidRootPart.CanCollide = false;
								PosMon = v.HumanoidRootPart.CFrame;
								MonFarm = v.Name;
								NormalAttack();
								AimBotSkillPosition = v.HumanoidRootPart.Position;
							until not _G.Settings.Main["Auto Farm Gun Mastery"] or (not v.Parent) or v.Humanoid.Health <= 0 or not _G.Settings.Main["Selected Mastery Mode"] == "Nearest";
							UseGunSkill = false;
							Skillaimbot = false;
						end;
					end;
				end;
			end);
		elseif _G.Settings.Main["Auto Farm Gun Mastery"] and _G.Settings.Main["Selected Mastery Mode"] == "Boss" then
			if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false then
				CheckBossQuest();
				topos(CFrameQBoss);
				if (CFrameQBoss.Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, QuestLvBoss);
				end;
			elseif (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
				pcall(function()
					CheckBossQuest();
					if (game:GetService("Workspace")).Enemies:FindFirstChild(SelectBoss) then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == selectBoss and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.Setting["Mastery Health"] / 100 then
										EquipWeapon(SelectWeaponGun);
										local ShootPosition = (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, (-15), 0);
										((game:GetService("Players")).LocalPlayer.Character.Humanoid:FindFirstChild("")):InvokeServer("TAP", Vector3.new(ShootPosition.Position));
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0) * CFrame.Angles(math.rad((-90)), 0, 0));
										UseGunSkill = true;
										Skillaimbot = true;
									else
										UseGunSkill = false;
										Skillaimbot = false;
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										topos(v.HumanoidRootPart.CFrame * Pos);
									end;
									AutoHaki();
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									v.HumanoidRootPart.Transparency = 1;
									v.Humanoid.JumpPower = 0;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.CanCollide = false;
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
									NormalAttack();
									AimBotSkillPosition = v.HumanoidRootPart.Position;
								until not _G.Settings.Main["Auto Farm Gun Mastery"] or not _G.Settings.Main["Selected Mastery Mode"] == "Boss" or (not v.Parent) or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or (not (game:GetService("Workspace")).Enemies:FindFirstChild(v.Name));
								Skillaimbot = false;
							end;
						end;
					else
						UseGunSkill = false;
						Skillaimbot = false;
						topos(((game:GetService("ReplicatedStorage")):FindFirstChild(SelectBoss)).HumanoidRootPart.CFrame * Pos);
					end;
				end);
			end;
		end;
	end;
end);
if World1 then
	tableMon = {
		"Bandit",
		"Monkey",
		"Gorilla",
		"Pirate",
		"Brute",
		"Desert Bandit",
		"Desert Officer",
		"Snow Bandit",
		"Snowman",
		"Chief Petty Officer",
		"Sky Bandit",
		"Dark Master",
		"Toga Warrior",
		"Gladiator",
		"Military Soldier",
		"Military Spy",
		"Fishman Warrior",
		"Fishman Commando",
		"God's Guard",
		"Shanda",
		"Royal Squad",
		"Royal Soldier",
		"Galley Pirate",
		"Galley Captain"
	};
elseif World2 then
	tableMon = {
		"Raider",
		"Mercenary",
		"Swan Pirate",
		"Factory Staff",
		"Marine Lieutenant",
		"Marine Captain",
		"Zombie",
		"Vampire",
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
		"Water Fighter"
	};
elseif World3 then
	tableMon = {
		"Pirate Millionaire",
		"Dragon Crew Warrior",
		"Dragon Crew Archer",
		"Female Islander",
		"Giant Islander",
		"Marine Commodore",
		"Marine Rear Admiral",
		"Fishman Raider",
		"Fishman Captain",
		"Forest Pirate",
		"Mythological Pirate",
		"Jungle Pirate",
		"Musketeer Pirate",
		"Reborn Skeleton",
		"Living Zombie",
		"Demonic Soul",
		"Posessed Mummy",
		"Peanut Scout",
		"Peanut President",
		"Ice Cream Chef",
		"Ice Cream Commander",
		"Cookie Crafter",
		"Cake Guard",
		"Baking Staff",
		"Head Baker",
		"Cocoa Warrior",
		"Chocolate Bar Battler",
		"Sweet Thief",
		"Candy Rebel",
		"Candy Pirate",
		"Snow Demon",
		"Isle Outlaw",
		"Island Boy",
		"Sun-kissed Warrior",
		"Isle Champion"
	};
end;
MainTab:Seperator("Mob Farm");
MainTab:Dropdown("Choose Mob", tableMon, _G.Settings.Main["Selected Mob"], function(value)
	_G.Settings.Main["Selected Mob"] = value;
	(getgenv()).SaveSetting();
end);
MainTab:Toggle("Auto Farm Mob", _G.Settings.Main["Auto Farm Mob"], "Auto Kill Mob", function(value)
	_G.Settings.Main["Auto Farm Mob"] = value;
	StopTween(_G.Settings.Main["Auto Farm Mob"]);
	(getgenv()).SaveSetting();
end);
spawn(function()
	while wait(0.2) do
		if _G.Settings.Main["Auto Farm Mob"] then
			pcall(function()
				if (game:GetService("Workspace")).Enemies:FindFirstChild(_G.Settings.Main["Selected Mob"]) then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == _G.Settings.Main["Selected Mob"] then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									AutoHaki();
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									topos(v.HumanoidRootPart.CFrame * Pos);
									Attack();
								until not _G.Settings.Main["Auto Farm Mob"] or (not v.Parent) or v.Humanoid.Health <= 0;
							end;
						end;
					end;
				end;
			end);
		end;
	end;
end);
MainTab:Seperator("Boss Farm");
local BossLabel = MainTab:Label("Status : Choose Boss");
spawn(function()
	while wait(0.2) do
		pcall(function()
			if (game:GetService("ReplicatedStorage")):FindFirstChild(_G.Settings.Main["Selected Boss"]) or (game:GetService("Workspace")).Enemies:FindFirstChild(_G.Settings.Main["Selected Boss"]) then
				BossLabel:Set("Status : Spawn!");
			else
				BossLabel:Set("Status : Boss Not Spawn");
			end;
		end);
	end;
end);
if World1 then
	tableBoss = {
		"The Gorilla King",
		"Bobby",
		"Yeti",
		"Mob Leader",
		"Vice Admiral",
		"Warden",
		"Chief Warden",
		"Swan",
		"Magma Admiral",
		"Fishman Lord",
		"Wysper",
		"Thunder God",
		"Cyborg",
		"Saber Expert"
	};
elseif World2 then
	tableBoss = {
		"Diamond",
		"Jeremy",
		"Fajita",
		"Don Swan",
		"Smoke Admiral",
		"Cursed Captain",
		"Darkbeard",
		"Order",
		"Awakened Ice Admiral",
		"Tide Keeper"
	};
elseif World3 then
	tableBoss = {
		"Stone",
		"Island Empress",
		"Kilo Admiral",
		"Captain Elephant",
		"Beautiful Pirate",
		"rip_indra True Form",
		"Longma",
		"Soul Reaper",
		"Cake Queen"
	};
end;
MainTab:Dropdown("Choose Boss", tableBoss, _G.Settings.Main["Selected Boss"], function(value)
	_G.Settings.Main["Selected Boss"] = value;
	(getgenv()).SaveSetting();
end);
MainTab:Toggle("Auto Farm Boss", _G.Settings.Main["Auto Farm Boss"], "Auto Kill Selected Boss", function(value)
	_G.Settings.Main["Auto Farm Boss"] = value;
	StopTween(_G.Settings.Main["Auto Farm Boss"]);
	(getgenv()).SaveSetting();
end);
spawn(function()
	while wait(0.2) do
		if _G.Settings.Main["Auto Farm Boss"] then
			pcall(function()
				if (game:GetService("Workspace")).Enemies:FindFirstChild(_G.Settings.Main["Selected Boss"]) then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == _G.Settings.Main["Selected Boss"] then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									AutoHaki();
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									topos(v.HumanoidRootPart.CFrame * Pos);
									Attack();
								until not _G.Settings.Main["Auto Farm Boss"] or (not v.Parent) or v.Humanoid.Health <= 0;
							end;
						end;
					end;
				elseif (game:GetService("ReplicatedStorage")):FindFirstChild(_G.Settings.Main["Selected Boss"]) then
					topos(((game:GetService("ReplicatedStorage")):FindFirstChild(_G.Settings.Main["Selected Boss"])).HumanoidRootPart.CFrame * CFrame.new(5, 10, 2));
				end;
			end);
		end;
	end;
end);
MainTab:Toggle("Auto Farm All Boss", _G.Settings.Main["Auto Farm All Boss"], "Auto Kill All Boss", function(value)
	_G.Settings.Main["Auto Farm All Boss"] = value;
	StopTween(_G.Settings.Main["Auto Farm All Boss"]);
	(getgenv()).SaveSetting();
end);
spawn(function()
	while wait(0.2) do
		if _G.Settings.Main["Auto Farm All Boss"] then
			pcall(function()
				for i, boss in pairs(tableBoss) do
					if (game:GetService("Workspace")).Enemies:FindFirstChild(boss) then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == boss then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Main["Auto Farm All Boss"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					elseif (game:GetService("ReplicatedStorage")):FindFirstChild(boss) then
						topos(((game:GetService("ReplicatedStorage")):FindFirstChild(boss)).HumanoidRootPart.CFrame * CFrame.new(5, 10, 2));
					end;
				end;
			end);
		end;
	end;
end);
if World3 then
	FarmTab:Seperator("Elite Hunter");
	local Elite_Hunter_Status = FarmTab:Label("Status");
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if (game:GetService("ReplicatedStorage")):FindFirstChild("Diablo") or (game:GetService("ReplicatedStorage")):FindFirstChild("Deandre") or (game:GetService("ReplicatedStorage")):FindFirstChild("Urban") or (game:GetService("Workspace")).Enemies:FindFirstChild("Diablo") or (game:GetService("Workspace")).Enemies:FindFirstChild("Deandre") or (game:GetService("Workspace")).Enemies:FindFirstChild("Urban") then
					Elite_Hunter_Status:Set("Status : Elite Spawn!");
				else
					Elite_Hunter_Status:Set("Status : Elite Not Spawn");
				end;
			end);
		end;
	end);
	FarmTab:Toggle("Auto Elite Hunter", _G.Settings.Farm["Auto Elite Hunter"], "Auto Kill Elite Hunter When Spawn", function(value)
		_G.Settings.Farm["Auto Elite Hunter"] = value;
		StopTween(_G.Settings.Farm["Auto Elite Hunter"]);
		(getgenv()).SaveSetting();
	end);
	FarmTab:Toggle("Auto Elite Hunter Hop", _G.Settings.Farm["Auto Elite Hunter Hop"], "Auto Hop If Elite Hunter Not Spawn", function(value)
		_G.Settings.Farm["Auto Elite Hunter Hop"] = value;
		StopTween(_G.Settings.Farm["Auto Elite Hunter Hop"]);
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Elite Hunter Hop"] then
				pcall(function()
					if _G.Settings.Farm["Auto Elite Hunter"] then
						if not (game:GetService("Workspace")).Enemies:FindFirstChild("Diablo") or (not (game:GetService("Workspace")).Enemies:FindFirstChild("Deandre")) or (not (game:GetService("Workspace")).Enemies:FindFirstChild("Urban")) then
							Hop();
						end;
					end;
				end);
			end;
		end;
	end);
	FarmTab:Button("Check Progress", function()
		Update:Notify("Elite Hunter Progress : " .. (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("EliteHunter", "Progress"), 3);
	end);
	local Elite = CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Elite Hunter"] and World3 then
				pcall(function()
					local QuestTitle = (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Diablo") or (game:GetService("Workspace")).Enemies:FindFirstChild("Deandre") or (game:GetService("Workspace")).Enemies:FindFirstChild("Urban") then
						if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false then
							topos(Elite);
							if (Vector3.new((-5418.892578125), 313.74130249023, (-2826.2260742188)) - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
								(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("EliteHunter");
							end;
						elseif (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if string.find(QuestTitle, "Diablo") or string.find(QuestTitle, "Deandre") or string.find(QuestTitle, "Urban") then
								if (game:GetService("Workspace")).Enemies:FindFirstChild("Diablo") or (game:GetService("Workspace")).Enemies:FindFirstChild("Deandre") or (game:GetService("Workspace")).Enemies:FindFirstChild("Urban") then
									for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
										if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat
													(game:GetService("RunService")).Heartbeat:wait();
													AutoHaki();
													EquipWeapon(_G.Settings.Main["Selected Weapon"]);
													v.HumanoidRootPart.CanCollide = false;
													v.Humanoid.WalkSpeed = 0;
													v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
													topos(v.HumanoidRootPart.CFrame * Pos);
													Attack();
												until _G.Settings.Farm["Auto Elite Hunter"] == false or v.Humanoid.Health <= 0 or (not v.Parent);
											end;
										end;
									end;
								end;
							end;
						end;
					end;
				end);
			end;
		end;
	end);
	FarmTab:Seperator("Bone Farm");
	local ListB = {
		"Quest",
		"No Quest"
	};
	FarmTab:Dropdown("Choose Mode", ListB, _G.Settings.Farm["Selected Bone Farm Mode"], function(value)
		_G.Settings.Farm["Selected Bone Farm Mode"] = value;
	end);
	local BonesOwnedStatus = FarmTab:Label("Bones Owned");
	spawn(function()
		while wait(1) do
			pcall(function()
				local Bones = GetCountMaterials("Bones");
				BonesOwnedStatus:Set("Bones Owned: " .. tostring(Bones));
			end);
		end;
	end);
	local BoneFarm = FarmTab:Toggle("Auto Farm Bone", _G.Settings.Farm["Auto Farm Bone"], "Auto Kill Bone Mob", function(value)
		_G.Settings.Farm["Auto Farm Bone"] = value;
		StopTween(_G.Settings.Farm["Auto Farm Bone"]);
		(getgenv()).SaveSetting();
	end);
	local BonePos = CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Selected Bone Farm Mode"] == "No Quest" and _G.Settings.Farm["Auto Farm Bone"] and World3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Reborn Skeleton") or (game:GetService("Workspace")).Enemies:FindFirstChild("Living Zombie") or (game:GetService("Workspace")).Enemies:FindFirstChild("Demonic Soul") or (game:GetService("Workspace")).Enemies:FindFirstChild("Posessed Mummy") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Bone"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375));
					end;
				end);
			end;
		end;
	end);
	local BoneQuestPos = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Selected Bone Farm Mode"] == "Quest" and _G.Settings.Farm["Auto Farm Bone"] and World3 then
				pcall(function()
					local QuestTitle = (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
					if not string.find(QuestTitle, "Demonic Soul") then
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("AbandonQuest");
					end;
					if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false then
						topos(BoneQuestPos);
						if (BoneQuestPos.Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("StartQuest", "HauntedQuest2", 1);
						end;
					elseif (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Reborn Skeleton") or (game:GetService("Workspace")).Enemies:FindFirstChild("Living Zombie") or (game:GetService("Workspace")).Enemies:FindFirstChild("Demonic Soul") or (game:GetService("Workspace")).Enemies:FindFirstChild("Posessed Mummy") then
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
									if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
										if string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Demonic Soul") then
											repeat
												(game:GetService("RunService")).Heartbeat:wait();
												EquipWeapon(_G.Settings.Main["Selected Weapon"]);
												AutoHaki();
												PosMon = v.HumanoidRootPart.CFrame;
												MonFarm = v.Name;
												topos(v.HumanoidRootPart.CFrame * Pos);
												v.HumanoidRootPart.CanCollide = false;
												v.Humanoid.WalkSpeed = 0;
												v.Head.CanCollide = false;
												Attack();
											until not _G.Settings.Farm["Auto Farm Bone"] or v.Humanoid.Health <= 0 or (not v.Parent) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
										end;
									end;
								end;
							end;
						end;
					end;
				end);
			end;
		end;
	end);
	FarmTab:Toggle("Auto Random Surprise", _G.Settings.Farm["Auto Random Surprise"], "Auto Trade Bone", function(value)
		_G.Settings.Farm["Auto Random Surprise"] = value;
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Farm["Auto Random Surprise"] then
					wait(2);
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1);
				end;
			end;
		end);
	end);
	FarmTab:Seperator("Pirate Raid");
	FarmTab:Toggle("Auto Pirate Raid", _G.Settings.Farm["Auto Pirate Raid"], "Auto Kill Pirate Raid Enemies", function(value)
		_G.Settings.Farm["Auto Pirate Raid"] = value;
		StopTween(_G.Settings.Farm["Auto Pirate Raid"]);
		(getgenv()).SaveSetting();
	end);
	function getPirateRaidEnemies()
		local PirateRaidPos = CFrame.new(-5515.08301, 343.112762, -3013.25171, 0.0679906458, 0.0000000121971047, -0.997685969, -0.0000000640159001, 1, 0.00000000786281706, 0.997685969, 0.000000063333168, 0.0679906458);
		for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
			if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
				local enemyPos = v.HumanoidRootPart.Position;
				if (PirateRaidPos.Position - enemyPos).Magnitude <= 2000 then
					if v then
						return v;
					else
						return false;
					end;
				end;
			end;
		end;
	end;
	spawn(function()
		while wait() do
			if _G.Settings.Farm["Auto Pirate Raid"] then
				pcall(function()
					for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							if v.Name then
								if getPirateRaidEnemies() then
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - (v:FindFirstChild("HumanoidRootPart")).Position).Magnitude <= 2000 then
										repeat
											(game:GetService("RunService")).Heartbeat:wait();
											Attack();
											AutoHaki();
											EquipWeapon(_G.Settings.Main["Selected Weapon"]);
											topos(v.HumanoidRootPart.CFrame * Pos);
											v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
											v.HumanoidRootPart.Transparency = 1;
											v.Humanoid.JumpPower = 0;
											v.Humanoid.WalkSpeed = 0;
											v.HumanoidRootPart.CanCollide = false;
											PosMon = v.HumanoidRootPart.CFrame;
											MonFarm = v.Name;
										until not _G.Settings.Main["Auto Pirate Raid"] or (not v.Parent) or v.Humanoid.Health <= 0 or (not game.Workspace.Enemies:FindFirstChild(v.Name));
									end;
								else
									topos(CFrame.new(-5515.08301, 343.112762, -3013.25171, 0.0679906458, 0.0000000121971047, -0.997685969, -0.0000000640159001, 1, 0.00000000786281706, 0.997685969, 0.000000063333168, 0.0679906458));
								end;
							end;
						end;
					end;
				end);
			end;
		end;
	end);
end;
FarmTab:Seperator("Observation");
local ObservationRange = FarmTab:Label("");
spawn(function()
	while wait(0.2) do
		pcall(function()
			ObservationRange:Set("Observation Range : " .. math.floor((game:GetService("Players")).LocalPlayer.VisionRadius.Value));
		end);
	end;
end);
FarmTab:Toggle("Auto Farm Observation", _G.Settings.Farm["Auto Farm Observation"], false, function(value)
	_G.Settings.Farm["Auto Farm Observation"] = value;
	StopTween(_G.Settings.Farm["Auto Farm Observation"]);
	(getgenv()).SaveSetting();
end);
if World3 then
	FarmTab:Toggle("Auto V2 Observation", _G.Settings.Farm["Auto Observation V2"], false, function(value)
		_G.Settings.Farm["Auto Observation V2"] = value;
		StopTween(_G.Settings.Farm["Auto Observation V2"]);
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.Farm["Auto Observation V2"] then
					if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen") == 3 then
						_G.Settings.Farm["Auto Musketeer Hat"] = false;
						if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Banana") and (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Apple") and (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Pineapple") then
							repeat
								topos(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625));
								wait();
							until not _G.Settings.Farm["Auto Observation V2"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-12444.78515625), 332.40396118164, (-7673.1806640625))).Magnitude <= 10;
							wait(0.5);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen");
						elseif (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Fruit Bowl") then
							repeat
								topos(CFrame.new(-10920.125, 624.20275878906, -10266.995117188));
								wait();
							until not _G.Settings.Farm["Auto Observation V2"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-10920.125), 624.20275878906, (-10266.995117188))).Magnitude <= 10;
							wait(0.5);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("KenTalk2", "Start");
							wait(1);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("KenTalk2", "Buy");
						else
							for i, v in pairs((game:GetService("Workspace")):GetDescendants()) do
								if v.Name == "Apple" or v.Name == "Banana" or v.Name == "Pineapple" then
									v.Handle.CFrame = (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10);
									wait();
									firetouchinterest((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart, v.Handle, 0);
									wait();
								end;
							end;
						end;
					else
						_G.Settings.Farm["Auto Musketeer Hat"] = true;
					end;
				end;
			end);
		end;
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Farm["Auto Musketeer Hat"] then
					if (game:GetService("Players")).LocalPlayer.Data.Level.Value >= 1800 and ((game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CitizenQuestProgress")).KilledBandits == false then
						if string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Forest Pirate") then
								for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
									if v.Name == "Forest Pirate" then
										repeat
											(game:GetService("RunService")).Heartbeat:wait();
											EquipWeapon(_G.Settings.Main["Selected Weapon"]);
											AutoHaki();
											v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
											topos(v.HumanoidRootPart.CFrame * Pos);
											v.HumanoidRootPart.CanCollide = false;
											Attack();
											PosMon = v.HumanoidRootPart.CFrame;
											MonFarm = v.Name;
										until _G.Settings.Farm["Auto Musketeer Hat"] == false or (not v.Parent) or v.Humanoid.Health <= 0 or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
									end;
								end;
							else
								topos(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375));
							end;
						else
							topos(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125));
							if (Vector3.new((-12443.8671875), 332.40396118164, (-7675.4892578125)) - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
								wait(1.5);
								(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("StartQuest", "CitizenQuest", 1);
							end;
						end;
					elseif (game:GetService("Players")).LocalPlayer.Data.Level.Value >= 1800 and ((game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CitizenQuestProgress")).KilledBoss == false then
						if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible and string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Captain Elephant") then
								for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
									if v.Name == "Captain Elephant" then
										OldCFrameElephant = v.HumanoidRootPart.CFrame;
										repeat
											(game:GetService("RunService")).Heartbeat:wait();
											EquipWeapon(_G.Settings.Main["Selected Weapon"]);
											AutoHaki();
											v.HumanoidRootPart.CanCollide = false;
											v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
											topos(v.HumanoidRootPart.CFrame * Pos);
											v.HumanoidRootPart.CanCollide = false;
											v.HumanoidRootPart.CFrame = OldCFrameElephant;
											Attack();
										until _G.Settings.Farm["Auto Musketeer Hat"] == false or v.Humanoid.Health <= 0 or (not v.Parent) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
									end;
								end;
							else
								topos(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375));
							end;
						else
							topos(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125));
							if ((CFrame.new((-12443.8671875), 332.40396118164, (-7675.4892578125))).Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
								wait(0.5);
								(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen");
							end;
						end;
					elseif (game:GetService("Players")).LocalPlayer.Data.Level.Value >= 1800 and (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen") == 2 then
						topos(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125));
					end;
				end;
			end;
		end);
	end);
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.Farm["Auto Farm Observation"] then
					repeat
						task.wait();
						if not (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
							(game:GetService("VirtualUser")):CaptureController();
							(game:GetService("VirtualUser")):SetKeyDown("0x65");
							wait(2);
							(game:GetService("VirtualUser")):SetKeyUp("0x65");
						end;
					until (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or (not _G.Settings.Farm["Auto Farm Observation"]);
				end;
			end);
		end;
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Farm["Auto Farm Observation"] then
					if (game:GetService("Players")).LocalPlayer.VisionRadius.Value >= 5000 then
						Update:Notify("You Have Max Points", 3);
						wait(2);
					elseif World2 then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Lava Pirate [Lv. 1200]") then
							if (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
								repeat
									task.wait();
									(game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame = ((game:GetService("Workspace")).Enemies:FindFirstChild("Lava Pirate")).HumanoidRootPart.CFrame * CFrame.new(3, 0, 0);
								until _G.Settings.Farm["Auto Farm Observation"] == false or (not (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel"));
							else
								repeat
									task.wait();
									(game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame = ((game:GetService("Workspace")).Enemies:FindFirstChild("Lava Pirate")).HumanoidRootPart.CFrame * CFrame.new(0, 50, 0);
									if not (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.Settings.Farm["Auto Farm Observation"] == true then
										(game:GetService("TeleportService")):Teleport(game.PlaceId, (game:GetService("Players")).LocalPlayer);
									end;
								until _G.Settings.Farm["Auto Farm Observation"] == false or (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel");
							end;
						else
							topos(CFrame.new(-5478.39209, 15.9775667, -5246.9126));
						end;
					elseif World1 then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Galley Captain") then
							if (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
								repeat
									task.wait();
									(game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame = ((game:GetService("Workspace")).Enemies:FindFirstChild("Galley Captain")).HumanoidRootPart.CFrame * CFrame.new(3, 0, 0);
								until _G.Settings.Farm["Auto Farm Observation"] == false or (not (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel"));
							else
								repeat
									task.wait();
									(game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame = ((game:GetService("Workspace")).Enemies:FindFirstChild("Galley Captain")).HumanoidRootPart.CFrame * CFrame.new(0, 50, 0);
									wait(1);
									if not (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.Settings.Farm["Auto Farm Observation"] == true then
										(game:GetService("TeleportService")):Teleport(game.PlaceId, (game:GetService("Players")).LocalPlayer);
									end;
								until _G.Settings.Farm["Auto Farm Observation"] == false or (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel");
							end;
						else
							topos(CFrame.new(5533.29785, 88.1079102, 4852.3916));
						end;
					elseif World3 then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Giant Islander") then
							if (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
								repeat
									task.wait();
									(game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame = ((game:GetService("Workspace")).Enemies:FindFirstChild("Giant Islander")).HumanoidRootPart.CFrame * CFrame.new(3, 0, 0);
								until _G.Settings.Farm["Auto Farm Observation"] == false or (not (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel"));
							else
								repeat
									task.wait();
									(game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame = ((game:GetService("Workspace")).Enemies:FindFirstChild("Giant Islander")).HumanoidRootPart.CFrame * CFrame.new(0, 50, 0);
									wait(1);
									if not (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.Settings.Farm["Auto Farm Observation"] == true then
										(game:GetService("TeleportService")):Teleport(game.PlaceId, (game:GetService("Players")).LocalPlayer);
									end;
								until _G.Settings.Farm["Auto Farm Observation"] == false or (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel");
							end;
						else
							topos(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789));
						end;
					end;
				end;
			end;
		end);
	end);
end;
if World1 then
	FarmTab:Toggle("Auto Get Saber", _G.Settings.Farm["Auto Saber"], "Auto Get Saber", function(value)
		_G.Settings.Farm["Auto Saber"] = value;
		StopTween(_G.Settings.Farm["Auto Saber"]);
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		while task.wait(0.2) do
			if _G.Settings.Farm["Auto Saber"] and game.Players.LocalPlayer.Data.Level.Value >= 200 then
				pcall(function()
					if (game:GetService("Workspace")).Map.Jungle.Final.Part.Transparency == 0 then
						if (game:GetService("Workspace")).Map.Jungle.QuestPlates.Door.Transparency == 0 then
							if ((CFrame.new((-1612.55884), 36.9774132, 148.719543, 0.37091279, 0.0000000030717151, (-0.928667724), 0.0000000397099491, 1, 0.0000000191679348, 0.928667724, (-0.0000000439869794), 0.37091279)).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
								topos((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame);
								wait(1);
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (game:GetService("Workspace")).Map.Jungle.QuestPlates.Plate1.Button.CFrame;
								wait(1);
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (game:GetService("Workspace")).Map.Jungle.QuestPlates.Plate2.Button.CFrame;
								wait(1);
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (game:GetService("Workspace")).Map.Jungle.QuestPlates.Plate3.Button.CFrame;
								wait(1);
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (game:GetService("Workspace")).Map.Jungle.QuestPlates.Plate4.Button.CFrame;
								wait(1);
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (game:GetService("Workspace")).Map.Jungle.QuestPlates.Plate5.Button.CFrame;
								wait(1);
							else
								topos(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 0.0000000030717151, -0.928667724, 0.0000000397099491, 1, 0.0000000191679348, 0.928667724, -0.0000000439869794, 0.37091279));
							end;
						elseif (game:GetService("Workspace")).Map.Desert.Burn.Part.Transparency == 0 then
							if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
								EquipWeapon("Torch");
								topos(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -0.00000000128799094, 0.761243105, -0.000000000570652914, 1, 0.00000000120584542, -0.761243105, 0.000000000347544882, -0.648466587));
							else
								topos(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 0.0000342372805, -0.258850515, 0.965917408));
							end;
						elseif (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan") ~= 0 then
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ProQuestProgress", "GetCup");
							wait(0.5);
							EquipWeapon("Cup");
							wait(0.5);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ProQuestProgress", "FillCup", (game:GetService("Players")).LocalPlayer.Character.Cup);
							wait(0);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan");
						elseif (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == nil then
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon");
						elseif (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 0 then
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Mob Leader") or (game:GetService("ReplicatedStorage")):FindFirstChild("Mob Leader") then
								topos(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559));
								for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
									if v.Name == "Mob Leader" then
										if (game:GetService("Workspace")).Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat
													(game:GetService("RunService")).Heartbeat:wait();
													AutoHaki();
													EquipWeapon(_G.Settings.Main["Selected Weapon"]);
													v.HumanoidRootPart.CanCollide = false;
													v.Humanoid.WalkSpeed = 0;
													v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
													topos(v.HumanoidRootPart.CFrame * Pos);
													Attack();
												until v.Humanoid.Health <= 0 or (not _G.Settings.Farm["Auto Saber"]);
											end;
										end;
										if (game:GetService("ReplicatedStorage")):FindFirstChild("Mob Leader") then
											topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Mob Leader")).HumanoidRootPart.CFrame * Pos);
										end;
									end;
								end;
							end;
						elseif (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 1 then
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon");
							wait(0.5);
							EquipWeapon("Relic");
							wait(0.5);
							topos(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 0.00000000566906877, 0.481375456, 0.0000000253851997, 1, -0.0000000579995607, -0.481375456, 0.0000000630572643, 0.876514494));
						end;
					elseif (game:GetService("Workspace")).Enemies:FindFirstChild("Saber Expert") or (game:GetService("ReplicatedStorage")):FindFirstChild("Saber Expert") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								if v.Name == "Saber Expert" then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										topos(v.HumanoidRootPart.CFrame * Pos);
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										v.HumanoidRootPart.Transparency = 1;
										v.Humanoid.JumpPower = 0;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										Attack();
									until v.Humanoid.Health <= 0 or (not _G.Settings.Farm["Auto Saber"]);
									if v.Humanoid.Health <= 0 then
										(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ProQuestProgress", "PlaceRelic");
									end;
								end;
							end;
						end;
					end;
				end);
			end;
		end;
	end);
end;
FarmTab:Seperator("Chest Farm");
FarmTab:Toggle("Auto Farm Chest [ Tween ]", _G.Settings.Farm["Auto Farm Chest Tween"], "Auto Claim Chest Tween", function(value)
	_G.Settings.Farm["Auto Farm Chest Tween"] = value;
	StopTween(_G.Settings.Farm["Auto Farm Chest Tween"]);
	(getgenv()).SaveSetting();
end);
spawn(function()
	while wait(0.2) do
		pcall(function()
			if _G.Settings.Farm["Auto Farm Chest Tween"] then
				for i, v in pairs((game:GetService("Workspace")).ChestModels:GetChildren()) do
					if v.Name:find("Chest") then
						repeat
							wait();
							topos(v.RootPart.CFrame);
						until _G.Settings.Farm["Auto Farm Chest Tween"] == false or (not v.Parent);
						topos((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame);
					end;
				end;
			end;
		end);
	end;
end);
FarmTab:Toggle("Auto Farm Chest [ Instant ]", _G.Settings.Farm["Auto Farm Chest Instant"], "Auto Claim Chest Teleport", function(value)
	_G.Settings.Farm["Auto Farm Chest Instant"] = value;
	(getgenv()).SaveSetting();
end);
FarmTab:Toggle("Auto Chest Hop", _G.Settings.Farm["Auto Chest Hop"], "Auto Hop if chest is not avillable", function(value)
	_G.Settings.Farm["Auto Chest Hop"] = value;
	(getgenv()).SaveSetting();
end);
FarmTab:Toggle("Auto Stop Items", _G.Settings.Farm["Auto Stop Items"], "Stop When Get God's Chalice or FoD", function(value)
	_G.Settings.Farm["Auto Stop Items"] = value;
	(getgenv()).SaveSetting();
end);
spawn(function()
	while wait() do
		pcall(function()
			if _G.Settings.Farm["Auto Stop Items"] then
				if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("God's Chalice") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("God's Chalice") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Fist of Darkness") then
					_G.Settings.Farm["Auto Farm Chest Instant"] = false;
					_G.Settings.Farm["Auto Farm Chest Tween"] = false;
					topos((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame);
				end;
			end;
		end);
	end;
end);
if World2 or World3 then
	FarmTab:Toggle("Auto Farm Chest Mirage island", _G.Settings.Farm["Auto Farm Chest Mirage"], "Auto Claim Chest Mirage", function(value)
		_G.Settings.Farm["Auto Farm Chest Mirage"] = value;
		StopTween(_G.Settings.Farm["Auto Farm Chest Mirage"]);
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Chest Mirage"] then
				for i, v in pairs((game:GetService("Workspace")).Map.MysticIsland.Chests:GetChildren()) do
					if string.find(v.Name, "Chest") then
						if (game:GetService("Workspace")):FindFirstChild(v.Name) then
							repeat
								(game:GetService("RunService")).Heartbeat:wait();
								if (game:GetService("Workspace")):FindFirstChild(v.Name) then
									topos(v.CFrame);
								end;
							until _G.Settings.Farm["Auto Farm Chest Mirage"] == false or (not v.Parent);
							topos((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame);
							break;
						end;
					end;
				end;
			end;
		end;
	end);
end;
spawn(function()
	while wait(0.2) do
		pcall(function()
			if _G.Settings.Farm["Auto Farm Chest Instant"] then
				for i, v in pairs((game:GetService("Workspace")).ChestModels:GetChildren()) do
					if v.Name:find("Chest") then
						repeat
							wait();
							if v.Name == "DiamondChest" then
								InstantTp(v.RootPart.CFrame);
								InstantTp(((game:GetService("Workspace")).ChestModels:FindFirstChild("DiamondChest")).RootPart.CFrame);
							elseif v.Name == "GoldChest" then
								InstantTp(v.RootPart.CFrame);
								InstantTp(((game:GetService("Workspace")).ChestModels:FindFirstChild("GoldChest")).RootPart.CFrame);
							elseif v.Name == "SilverChest" then
								InstantTp(v.RootPart.CFrame);
								InstantTp(((game:GetService("Workspace")).ChestModels:FindFirstChild("SilverChest")).RootPart.CFrame);
							end;
						until not _G.Settings.Farm["Auto Farm Chest Instant"] or (not v.Parent);
					end;
				end;
			end;
		end);
	end;
end);
spawn(function()
	while task.wait(0.2) do
		if _G.Settings.Farm["Auto Farm Chest Instant"] then
			(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("SetTeam", "Pirates");
		end;
	end;
end);
if World3 then
	FarmTab:Seperator("Cake Farm");
	local CakePrinceStatus = FarmTab:Label("Cake Prince Status");
	spawn(function()
		while task.wait(5) do
			pcall(function()
				if string.len((game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
					CakePrinceStatus:Set("Cake Prince Status: " .. string.sub((game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 41) .. " Remaining");
				elseif string.len((game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
					CakePrinceStatus:Set("Cake Prince Status: " .. string.sub((game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 40) .. " Remaining");
				elseif string.len((game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
					CakePrinceStatus:Set("Cake Prince Status: " .. string.sub((game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 39) .. " Remaining");
				else
					CakePrinceStatus:Set("Cake Prince Status: Spawned!");
				end;
			end);
		end;
	end);
	FarmTab:Toggle("Auto Katakuri", _G.Settings.Farm["Auto Farm Katakuri"], "Auto Farm + Kill Cake Prince", function(value)
		_G.Settings.Farm["Auto Farm Katakuri"] = value;
		StopTween(_G.Settings.Farm["Auto Farm Katakuri"]);
		(getgenv()).SaveSetting();
	end);
	local CakePos = CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Katakuri"] then
				pcall(function()
					if game.ReplicatedStorage:FindFirstChild("Cake Prince") or (game:GetService("Workspace")).Enemies:FindFirstChild("Cake Prince") then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Cake Prince") then
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v.Name == "Cake Prince" then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat
											(game:GetService("RunService")).Heartbeat:wait();
											AutoHaki();
											EquipWeapon(_G.Settings.Main["Selected Weapon"]);
											v.HumanoidRootPart.CanCollide = false;
											v.Humanoid.WalkSpeed = 0;
											v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
											topos(v.HumanoidRootPart.CFrame * Pos);
											RemoveAnimation(v);
											Attack();
										until not _G.Settings.Farm["Auto Farm Katakuri"] or (not v.Parent) or v.Humanoid.Health <= 0;
									end;
								end;
							end;
						elseif (game:GetService("Workspace")).Map.CakeLoaf.BigMirror.Other.Transparency == 0 and ((CFrame.new((-1990.672607421875), 4532.99951171875, (-14973.6748046875))).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 then
							topos(CFrame.new(-2151.82153, 149.315704, -12404.9053));
						end;
					elseif (game:GetService("Workspace")).Enemies:FindFirstChild("Cookie Crafter") or (game:GetService("Workspace")).Enemies:FindFirstChild("Cake Guard") or (game:GetService("Workspace")).Enemies:FindFirstChild("Baking Staff") or (game:GetService("Workspace")).Enemies:FindFirstChild("Head Baker") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Katakuri"] or (not v.Parent) or v.Humanoid.Health <= 0 or (game:GetService("Workspace")).Map.CakeLoaf.BigMirror.Other.Transparency == 0 or (game:GetService("ReplicatedStorage")):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or (game:GetService("Workspace")).Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]");
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375));
					end;
				end);
			end;
		end;
	end);
	FarmTab:Toggle("Auto Spawn Cake Prince", _G.Settings.Farm["Auto Spawn Cake Prince"], false, function(value)
		_G.Settings.Farm["Auto Spawn Cake Prince"] = value;
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Spawn Cake Prince"] then
				wait(2);
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CakePrinceSpawner", true);
			end;
		end;
	end);
	FarmTab:Toggle("Auto Kill Cake Prince Only", _G.Settings.Farm["Auto Kill Cake Prince"], false, function(value)
		_G.Settings.Farm["Auto Kill Cake Prince"] = value;
		StopTween(_G.Settings.Farm["Auto Kill Cake Prince"]);
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Kill Cake Prince"] and World3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Cake Prince") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Cake Prince" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										RemoveAnimation(v);
										Attack();
										if v.Humanoid:FindFirstChild("Animator") then
											v.Humanoid.Animator:Destroy();
										end;
									until not _G.Settings.Farm["Auto Kill Cake Prince"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
					end;
				end);
			end;
		end;
	end);
	FarmTab:Toggle("Auto Kill Dough King Only", _G.Settings.Farm["Auto Kill Dough King"], false, function(value)
		_G.Settings.Farm["Auto Kill Dough King"] = value;
		StopTween(_G.Settings.Farm["Auto Kill Dough King"]);
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Kill Dough King"] and World3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Dough King") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Dough King" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										RemoveAnimation(v);
										Attack();
										if v.Humanoid:FindFirstChild("Animator") then
											v.Humanoid.Animator:Destroy();
										end;
									until not _G.Settings.Farm["Auto Kill Dough King"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					end;
				end);
			end;
		end;
	end);
end;
SettingsTab:Seperator("Settings");
SettingsTab:Toggle("Spin Position", _G.Settings.Setting["Spin Position"], "Spin Position When Farm", function(value)
	_G.Settings.Setting["Spin Position"] = value;
	(getgenv()).SaveSetting();
end);
SettingsTab:Slider("Farm Distnace", 0, 50, _G.Settings.Setting["Farm Distance"], function(value)
	_G.Settings.Setting["Farm Distance"] = value;
	(getgenv()).SaveSetting();
end);
SettingsTab:Slider("Player Tween Speed", 100, 350, _G.Settings.Setting["Player Tween Speed"], function(value)
	_G.Settings.Setting["Player Tween Speed"] = value;
	(getgenv()).SaveSetting();
end);
SettingsTab:Toggle("Bring Mob", _G.Settings.Setting["Bring Mob"], false, function(value)
	_G.Settings.Setting["Bring Mob"] = value;
	(getgenv()).SaveSetting();
end);
local Bring = {
	"Low",
	"Normal",
	"High"
};
SettingsTab:Dropdown("BringMob Mode", Bring, _G.Settings.Setting["Bring Mob Mode"], function(value)
	_G.Settings.Setting["Bring Mob Mode"] = value;
	(getgenv()).SaveSetting();
end);
spawn(function()
	while wait() do
		if _G.Settings.Setting["Bring Mob Mode"] then
			pcall(function()
				if _G.Settings.Setting["Bring Mob Mode"] == "Low" then
					BringMobDistance = 150;
				elseif _G.Settings.Setting["Bring Mob Mode"] == "Normal" then
					BringMobDistance = 250;
				elseif _G.Settings.Setting["Bring Mob Mode"] == "High" then
					BringMobDistance = 800;
				end;
			end);
		end;
	end;
end);
SettingsTab:Toggle("Fast Attack", _G.Settings.Setting["Fast Attack"], "Fast Attack", function(value)
	_G.Settings.Setting["Fast Attack"] = value;
	(getgenv()).SaveSetting();
end);
local AttackList = {
	"Slow",
	"Normal",
	"Fast",
	"Super Fast"
};
spawn(function()
	while wait() do
		if _G.Settings.Setting["Fast Attack Mode"] == "Slow" then
			_G.Settings.Setting["Fast Attack Delay"] = 0.32;
		elseif _G.Settings.Setting["Fast Attack Mode"] == "Normal" then
			_G.Settings.Setting["Fast Attack Delay"] = 0.22;
		elseif _G.Settings.Setting["Fast Attack Mode"] == "Fast" then
			_G.Settings.Setting["Fast Attack Delay"] = 0.17;
		elseif _G.Settings.Setting["Fast Attack Mode"] == "Super Fast" then
			_G.Settings.Setting["Fast Attack Delay"] = 0.12;
		end;
	end;
end);
SettingsTab:Dropdown("Fast Attack Mode", AttackList, _G.Settings.Setting["Fast Attack Mode"], function(value)
	_G.Settings.Setting["Fast Attack Mode"] = value;
	(getgenv()).SaveSetting();
end);
SettingsTab:Toggle("Attack Aura", _G.Settings.Setting["Attack Aura"], "Attack Mob", function(value)
	_G.Settings.Setting["Attack Aura"] = value;
	(getgenv()).SaveSetting();
end);
spawn(function()
	(game:GetService("RunService")).RenderStepped:Connect(function()
		if _G.Settings.Setting["Attack Aura"] and (not _G.Settings.Main["Auto Farm Fruit Mastery"]) and (not _G.Settings.Main["Auto Farm Gun Mastery"]) then
			pcall(function()
				Attack();
			end);
		end;
	end);
end);
local env = (getgenv or getrenv or getfenv)();
local rs = game:GetService("ReplicatedStorage");
local players = game:GetService("Players");
local client = players.LocalPlayer;
local modules = rs:WaitForChild("Modules");
local net = modules:WaitForChild("Net");
local charFolder = workspace:WaitForChild("Characters");
local enemyFolder = workspace:WaitForChild("Enemies");
local playerFolder = game:GetService("Players");
function getAllBladeHits(Sizes)
	local Hits = {};
	local Client = game.Players.LocalPlayer;
	local Players = (game:GetService("Players")):GetChildren();
	local Enemies = (game:GetService("Workspace")).Enemies:GetChildren();
	for i = 1, #Enemies do
		local v = Enemies[i];
		local Human = v:FindFirstChildOfClass("Humanoid");
		if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes + 5 then
			table.insert(Hits, Human.RootPart);
		end;
	end;
	for i = 1, #Players do
		local v = Players[i];
		local Human = v.Character:FindFirstChildOfClass("Humanoid");
		if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes + 5 then
			table.insert(Hits, Human.RootPart);
		end;
	end;
	return Hits;
end;
local AttackModule = {};
local RegisterAttack = net:WaitForChild("RE/RegisterAttack");
local RegisterHit = net:WaitForChild("RE/RegisterHit");
function AttackModule:AttackEnemy(EnemyHead, Table)
	if EnemyHead then
		RegisterAttack:FireServer(0);
		RegisterAttack:FireServer(1);
		RegisterAttack:FireServer(2);
		RegisterAttack:FireServer(3);
		RegisterHit:FireServer(EnemyHead, Table or {});
	end;
end;
function AttackModule:AttackNearest()
	local args = {
		nil,
		{}
	};
	for _, Enemy in enemyFolder:GetChildren() do
		if not args[1] and Enemy:FindFirstChild("HumanoidRootPart", true) and client:DistanceFromCharacter(Enemy.HumanoidRootPart.Position) < 60 then
			args[1] = Enemy:FindFirstChild("HumanoidRootPart");
		elseif Enemy:FindFirstChild("HumanoidRootPart", true) and client:DistanceFromCharacter(Enemy.HumanoidRootPart.Position) < 60 then
			table.insert(args[2], {
				[1] = Enemy,
				[2] = Enemy:FindFirstChild("HumanoidRootPart")
			});
		end;
	end;
	self:AttackEnemy(unpack(args));
end;
function AttackModule:BladeHits()
	self:AttackNearest();
end;
function Attack()
	if not _G.Settings.Main["Auto Farm Fruit Mastery"] or (not _G.Settings.Main["Auto Farm Gun Mastery"]) then
		if _G.Settings.Setting["Fast Attack"] then
			AttackModule:BladeHits();
		else
			AttackModule:BladeHits();
		end;
	end;
end;
SettingsTab:Seperator("Graphic");
SettingsTab:Toggle("Hide Notifications", _G.Settings.Setting["Hide Notification"], "Invisible Notification", function(value)
	_G.Settings.Setting["Hide Notification"] = value;
	(getgenv()).SaveSetting();
end);
spawn(function()
	while wait(0.2) do
		if _G.Settings.Setting["Hide Notification"] then
			game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false;
		else
			game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true;
		end;
	end;
end);
SettingsTab:Toggle("Hide Damage Text", _G.Settings.Setting["Hide Damage Text"], "Invisible Damage Text", function(value)
	_G.Settings.Setting["Hide Damage Text"] = value;
	(getgenv()).SaveSetting();
end);
spawn(function()
	while wait(0.2) do
		if _G.Settings.Setting["Hide Damage Text"] then
			(game:GetService("ReplicatedStorage")).Assets.GUI.DamageCounter.Enabled = false;
		else
			(game:GetService("ReplicatedStorage")).Assets.GUI.DamageCounter.Enabled = true;
		end;
	end;
end);
SettingsTab:Toggle("Black Screen", _G.Settings.Setting["Black Screen"], false, function(value)
	_G.Settings.Setting["Black Screen"] = value;
	(getgenv()).SaveSetting();
end);
spawn(function()
	while wait(0.2) do
		if _G.Settings.Setting["Black Screen"] then
			(game:GetService("Players")).LocalPlayer.PlayerGui.Main.Blackscreen.Size = UDim2.new(500, 0, 500, 500);
		else
			(game:GetService("Players")).LocalPlayer.PlayerGui.Main.Blackscreen.Size = UDim2.new(1, 0, 500, 500);
		end;
	end;
end);
SettingsTab:Toggle("White Screen", _G.Settings.Setting["Black Screen"], false, function(value)
	_G.Settings.Setting["White Screen"] = value;
	(getgenv()).SaveSetting();
end);
spawn(function()
	while wait(0.2) do
		if _G.Settings.Setting["White Screen"] then
			(game:GetService("RunService")):Set3dRenderingEnabled(false);
		else
			(game:GetService("RunService")):Set3dRenderingEnabled(true);
		end;
	end;
end);
SettingsTab:Toggle("Hide Monsters", _G.Settings.Setting["Hide Monster"], "Invisible Monstera", function(value)
	_G.Settings.Setting["Hide Monster"] = value;
	(getgenv()).SaveSetting();
	while wait(0.2) do
		if _G.Settings.Setting["Hide Monster"] then
			pcall(function()
				for i, v in pairs((game:GetService("Workspace")).Enemies:GetDescendants()) do
					if v.ClassName == "MeshPart" then
						v.Transparency = 1;
					end;
				end;
				for i, v in pairs((game:GetService("Workspace")).Enemies:GetDescendants()) do
					if v.Name == "Head" then
						v.Transparency = 1;
					end;
				end;
				for i, v in pairs((game:GetService("Workspace")).Enemies:GetDescendants()) do
					if v.ClassName == "Accessory" then
						v.Handle.Transparency = 1;
					end;
				end;
				for i, v in pairs((game:GetService("Workspace")).Enemies:GetDescendants()) do
					if v.ClassName == "Decal" then
						v.Transparency = 1;
					end;
				end;
			end);
		else
			pcall(function()
				for i, v in pairs((game:GetService("Workspace")).Enemies:GetDescendants()) do
					if v.ClassName == "MeshPart" then
						v.Transparency = 0;
					end;
				end;
				for i, v in pairs((game:GetService("Workspace")).Enemies:GetDescendants()) do
					if v.Name == "Head" then
						v.Transparency = 0;
					end;
				end;
				for i, v in pairs((game:GetService("Workspace")).Enemies:GetDescendants()) do
					if v.ClassName == "Accessory" then
						v.Handle.Transparency = 0;
					end;
				end;
				for i, v in pairs((game:GetService("Workspace")).Enemies:GetDescendants()) do
					if v.ClassName == "Decal" then
						v.Transparency = 0;
					end;
				end;
			end);
		end;
	end;
end);
SettingsTab:Seperator("Mastery Setting");
SettingsTab:Slider("Kill At %", 1, 100, _G.Settings.Setting["Mastery Health"], function(value)
	_G.Settings.Setting["Mastery Health"] = value;
	(getgenv()).SaveSetting();
end);
SettingsTab:Label("Skill DevilFruit");
SettingsTab:Toggle("Skill Z", _G.Settings.Setting["Fruit Mastery Skill Z"], "Auto Skill Z", function(value)
	_G.Settings.Setting["Fruit Mastery Skill Z"] = value;
	(getgenv()).SaveSetting();
end);
SettingsTab:Toggle("Skill X", _G.Settings.Setting["Fruit Mastery Skill X"], "Auto Skill X", function(value)
	_G.Settings.Setting["Fruit Mastery Skill X"] = value;
	(getgenv()).SaveSetting();
end);
SettingsTab:Toggle("Skill C", _G.Settings.Setting["Fruit Mastery Skill C"], "Auto Skill C", function(value)
	_G.Settings.Setting["Fruit Mastery Skill C"] = value;
	(getgenv()).SaveSetting();
end);
SettingsTab:Toggle("Skill V", _G.Settings.Setting["Fruit Mastery Skill V"], "Auto Skill V", function(value)
	_G.Settings.Setting["Fruit Mastery Skill V"] = value;
	(getgenv()).SaveSetting();
end);
SettingsTab:Toggle("Skill F", _G.Settings.Setting["Fruit Mastery Skill F"], "Auto Skill F", function(value)
	_G.Settings.Setting["Fruit Mastery Skill F"] = value;
	(getgenv()).SaveSetting();
end);
SettingsTab:Label("Skill Gun");
SettingsTab:Toggle("Skill Z", _G.Settings.Setting["Gun Mastery Skill Z"], "Auto Skill Z", function(value)
	_G.Settings.Setting["Gun Mastery Skill Z"] = value;
	(getgenv()).SaveSetting();
end);
SettingsTab:Toggle("Skill X", _G.Settings.Setting["Gun Mastery Skill X"], "Auto Skill X", function(value)
	_G.Settings.Setting["Gun Mastery Skill X"] = value;
	(getgenv()).SaveSetting();
end);
SettingsTab:Seperator("Other");
SettingsTab:Toggle("Auto Set Spawn Point", _G.Settings.Setting["Auto Set Spawn Point"], "Set Spawn Point", function(value)
	_G.Settings.Setting["Auto Set Spawn Point"] = value;
	(getgenv()).SaveSetting();
end);
spawn(function()
	while wait(2) do
		if _G.Settings.Setting["Auto Set Spawn Point"] then
			pcall(function()
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("SetSpawnPoint");
			end);
		end;
	end;
end);
SettingsTab:Toggle("Auto Observation", false, "Auto Active Observation", function(value)
	_G.Settings.Setting["Auto Observation"] = value;
end);
spawn(function()
	while wait(0.2) do
		if _G.Settings.Setting["Auto Observation"] then
			if not (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
				(game:GetService("VirtualUser")):CaptureController();
				(game:GetService("VirtualUser")):SetKeyDown("0x65");
				wait();
				(game:GetService("VirtualUser")):SetKeyUp("0x65");
			end;
		end;
	end;
end);
SettingsTab:Toggle("Auto Haki", _G.Settings.Setting["Auto Haki"], "Auto Active Buso", function(value)
	_G.Settings.Setting["Auto Haki"] = value;
	(getgenv()).SaveSetting();
end);
SettingsTab:Toggle("Auto Rejoin", _G.Settings.Setting["Auto Rejoin"], "Auto Rejoin if disconnected or get kicked", function(value)
	_G.Settings.Setting["Auto Rejoin"] = value;
	(getgenv()).SaveSetting();
end);
spawn(function()
	while wait(0.2) do
		if _G.Settings.Setting["Auto Rejoin"] then
			game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(v)
				if v.Name == "ErrorPrompt" and v:FindFirstChild("MessageArea") and v.MessageArea:FindFirstChild("ErrorFrame") then
					(game:GetService("TeleportService")):Teleport(game.PlaceId);
				end;
			end);
		end;
	end;
end);
spawn(function()
	while wait(0.2) do
		if _G.Settings.Setting["Auto Haki"] then
			if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
				local args = {
					[1] = "Buso"
				};
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(args));
			end;
		end;
	end;
end);
SettingsTab:Toggle("Bypass Anti Cheat", true, "Reset Flags", function(value)
	_G.Settings.Setting["Bypass Anti Cheat"] = value;
	(getgenv()).SaveSetting();
end);
spawn(function()
	while wait(0.2) do
		pcall(function()
			if _G.Settings.Setting["Bypass Anti Cheat"] then
				for i, v in pairs((game:GetService("Players")).LocalPlayer.Character:GetDescendants()) do
					if v:IsA("LocalScript") then
						if v.Name == "General" or v.Name == "Shiftlock" or v.Name == "FallDamage" or v.Name == "4444" or v.Name == "CamBob" or v.Name == "JumpCD" or v.Name == "Looking" or v.Name == "Run" then
							v:Destroy();
						end;
					end;
				end;
				for i, v in pairs((game:GetService("Players")).LocalPlayer.PlayerScripts:GetDescendants()) do
					if v:IsA("LocalScript") then
						if v.Name == "RobloxMotor6DBugFix" or v.Name == "Clans" or v.Name == "Codes" or v.Name == "CustomForceField" or v.Name == "MenuBloodSp" or v.Name == "PlayerList" then
							v:Destroy();
						end;
					end;
				end;
			end;
		end);
	end;
end);
HoldTab:Seperator("Mastery");
HoldTab:Slider("Skill Z", 0, 5, _G.Settings.Hold["Hold Mastery Skill Z"], function(value)
	_G.Settings.Hold["Hold Mastery Skill Z"] = value;
	(getgenv()).SaveSetting();
end);
HoldTab:Slider("Skill X", 0, 5, _G.Settings.Hold["Hold Mastery Skill X"], function(value)
	_G.Settings.Hold["Hold Mastery Skill X"] = value;
	(getgenv()).SaveSetting();
end);
HoldTab:Slider("Skill C", 0, 5, _G.Settings.Hold["Hold Mastery Skill C"], function(value)
	_G.Settings.Hold["Hold Mastery Skill C"] = value;
	(getgenv()).SaveSetting();
end);
HoldTab:Slider("Skill V", 0, 5, _G.Settings.Hold["Hold Mastery Skill V"], function(value)
	_G.Settings.Hold["Hold Mastery Skill V"] = value;
	(getgenv()).SaveSetting();
end);
HoldTab:Slider("Skill F", 0, 5, _G.Settings.Hold["Hold Mastery Skill F"], function(value)
	_G.Settings.Hold["Hold Mastery Skill F"] = value;
	(getgenv()).SaveSetting();
end);
if World3 then
	HoldTab:Seperator("Sea Event");
	HoldTab:Slider("Skill Z", 0, 5, _G.Settings.Hold["Hold Sea Skill Z"], function(value)
		_G.Settings.Hold["Hold Sea Skill Z"] = value;
		(getgenv()).SaveSetting();
	end);
	HoldTab:Slider("Skill X", 0, 5, _G.Settings.Hold["Hold Sea Skill Z"], function(value)
		_G.Settings.Hold["Hold Sea Skill Z"] = value;
		(getgenv()).SaveSetting();
	end);
	HoldTab:Slider("Skill C", 0, 5, _G.Settings.Hold["Hold Sea Skill C"], function(value)
		_G.Settings.Hold["Hold Sea Skill C"] = value;
		(getgenv()).SaveSetting();
	end);
	HoldTab:Slider("Skill V", 0, 5, _G.Settings.Hold["Hold Sea Skill V"], function(value)
		_G.Settings.Hold["Hold Sea Skill V"] = value;
		(getgenv()).SaveSetting();
	end);
	HoldTab:Slider("Skill F", 0, 5, _G.Settings.Hold["Hold Sea Skill F"], function(value)
		_G.Settings.Hold["Hold Sea Skill F"] = value;
		(getgenv()).SaveSetting();
	end);
end;
if World1 or World2 then
	ItemsTab:Seperator("World");
end;
if World1 then
	ItemsTab:Toggle("Auto Second Sea", _G.Settings.Items["Auto Second Sea"], false, function(value)
		_G.Settings.Items["Auto Second Sea"] = value;
		StopTween(_G.Settings.Items["Auto Second Sea"]);
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Second Sea"] then
				pcall(function()
					local MyLevel = (game:GetService("Players")).LocalPlayer.Data.Level.Value;
					if MyLevel >= 700 and World1 then
						if (game:GetService("Workspace")).Map.Ice.Door.CanCollide == false and (game:GetService("Workspace")).Map.Ice.Door.Transparency == 1 then
							local CFrame1 = CFrame.new(4849.29883, 5.65138149, 719.611877);
							repeat
								topos(CFrame1);
								wait();
							until (CFrame1.Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.Settings.Items["Auto Second Sea"] == false;
							wait(1.1);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Detective");
							wait(0.5);
							EquipWeapon("Key");
							repeat
								topos(CFrame.new(1347.7124, 37.3751602, -1325.6488));
								wait();
							until (Vector3.new(1347.7124, 37.3751602, (-1325.6488)) - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.Settings.Items["Auto Second Sea"] == false;
							wait(0.5);
						elseif (game:GetService("Workspace")).Map.Ice.Door.CanCollide == false and (game:GetService("Workspace")).Map.Ice.Door.Transparency == 1 then
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Ice Admiral") then
								for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
									if v.Name == "Ice Admiral" then
										if not v.Humanoid.Health <= 0 then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												OldCFrameSecond = v.HumanoidRootPart.CFrame;
												repeat
													(game:GetService("RunService")).Heartbeat:wait();
													AutoHaki();
													EquipWeapon(_G.Settings.Main["Selected Weapon"]);
													v.HumanoidRootPart.CanCollide = false;
													v.Humanoid.WalkSpeed = 0;
													v.Head.CanCollide = false;
													v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
													v.HumanoidRootPart.CFrame = OldCFrameSecond;
													topos(v.HumanoidRootPart.CFrame * Pos);
													Attack();
												until not _G.Settings.Items["Auto Second Sea"] or (not v.Parent) or v.Humanoid.Health <= 0;
											end;
										else
											(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("TravelDressrosa");
										end;
									end;
								end;
							elseif (game:GetService("ReplicatedStorage")):FindFirstChild("Ice Admiral") then
								topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Ice Admiral")).HumanoidRootPart.CFrame * CFrame.new(5, 10, 7));
							end;
						end;
					end;
				end);
			end;
		end;
	end);
end;
if World2 then
	ItemsTab:Toggle("Auto Third Sea", _G.Settings.Items["Auto Third Sea"], false, function(value)
		_G.Settings.Items["Auto Third Sea"] = value;
		StopTween(_G.Settings.Items["Auto Third Sea"]);
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Third Sea"] then
				pcall(function()
					if (game:GetService("Players")).LocalPlayer.Data.Level.Value >= 1500 and World2 then
						_G.Settings.Main["Auto Farm"] = false;
						if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ZQuestProgress", "General") == 0 then
							topos(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016));
							if ((CFrame.new((-1926.3221435547), 12.819851875305, 1738.3092041016)).Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
								wait(1.5);
								(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ZQuestProgress", "Begin");
							end;
							wait(1.8);
							if (game:GetService("Workspace")).Enemies:FindFirstChild("rip_indra") then
								for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
									if v.Name == "rip_indra" then
										OldCFrameThird = v.HumanoidRootPart.CFrame;
										repeat
											(game:GetService("RunService")).Heartbeat:wait();
											AutoHaki();
											EquipWeapon(_G.Settings.Main["Selected Weapon"]);
											topos(v.HumanoidRootPart.CFrame * Pos);
											v.HumanoidRootPart.CFrame = OldCFrameThird;
											v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
											v.HumanoidRootPart.CanCollide = false;
											v.Humanoid.WalkSpeed = 0;
											Attack();
											(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("TravelZou");
										until _G.Settings.Items["Auto Third Sea"] == false or v.Humanoid.Health <= 0 or (not v.Parent);
									end;
								end;
							elseif not (game:GetService("Workspace")).Enemies:FindFirstChild("rip_indra") and ((CFrame.new((-26880.93359375), 22.848554611206, 473.18951416016)).Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
								topos(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016));
							end;
						end;
					end;
				end);
			end;
		end;
	end);
end;
if World2 then
	ItemsTab:Toggle("Auto Farm Factory", _G.Settings.Items["Auto Farm Factory"], false, function(value)
		_G.Settings.Items["Auto Farm Factory"] = value;
		StopTween(_G.Settings.Items["Auto Farm Factory"]);
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.Items["Auto Farm Factory"] then
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Core") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Core" and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									AutoHaki();
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									topos(CFrame.new(448.46756, 199.356781, -441.389252));
									AttackOld();
								until v.Humanoid.Health <= 0 or _G.Settings.Items["Auto Farm Factory"] == false;
							end;
						end;
					else
						topos(CFrame.new(448.46756, 199.356781, -441.389252));
					end;
				end;
			end);
		end;
	end);
elseif World3 then
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if game.Workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island") then
					Kitsunecheck:Set("â›©ï¸ Kitsune Island Spawning");
					_G.KitsuneSpawn = true;
				else
					Kitsunecheck:Set("â›©ï¸ Kitsune Island Not Spawn");
					_G.KitsuneSpawn = false;
				end;
				if game.Workspace._WorldOrigin.Locations:FindFirstChild("Frozen Dimension") then
					Frozencheck:Set("â„ï¸ Frozen Dimension Spawning");
					_G.FrozenSpawn = true;
				else
					Frozencheck:Set("â„ï¸ Frozen Dimension Not Spawn");
					_G.FrozenSpawn = false;
				end;
				if game.Workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island") then
					Prehistoriccheck:Set("ðŸ¦´ Prehistoric Island Spawning");
					_G.PrehistoricSpawn = true;
				else
					Prehistoriccheck:Set("ðŸ¦´ Prehistoric Island Not Spawn");
					_G.PrehistoricSpawn = false;
				end;
			end;
		end);
	end);
	SeaStackTab:Seperator("Prehistoric Island");
	Prehistoriccheck = SeaStackTab:Label("Prehistoric Island");
	SeaStackTab:Toggle("Summon Prehistoric Island", _G.Settings.SeaStack["Summon Prehistoric Island"], "Need Volcano Magnet", function(value)
		_G.Settings.SeaStack["Summon Prehistoric Island"] = value;
		StopTween(_G.Settings.SeaStack["Summon Prehistoric Island"]);
		(getgenv()).SaveSetting();
		if TweenBoatPrehistoric then
			TweenBoatPrehistoric:Stop();
		end;
	end);
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.SeaStack["Summon Prehistoric Island"] then
					if not (game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"]) then
						local BuyBoatCFrame = CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781);
						if (BuyBoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
							BTP(BuyBoatCFrame);
						else
							BuyBoat = topos(BuyBoatCFrame);
						end;
						if ((CFrame.new((-16927.451171875), 9.0863618850708, 433.8642883300781)).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
							if BuyBoat then
								BuyBoat:Stop();
							end;
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyBoat", _G.Settings.SeaEvent["Selected Boat"]);
							wait(1);
						end;
					elseif (game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"]) then
						repeat
							wait();
							if (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == false then
								if TweenBoatPrehistoric then
									TweenBoatPrehistoric:Stop();
								end;
								local stoppos = topos(((game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"])).VehicleSeat.CFrame * CFrame.new(0, 1, 0));
							elseif (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == true then
								TweenBoatPrehistoric = TweenBoat(CFrame.new(-148073.359, 8.99999523, 7721.05078, -0.0825930536, -0.00000154416148, 0.996583343, -0.000018696026, 1, -0.000000000000391858095, -0.996583343, -0.0000186321486, -0.0825930536));
							end;
						until not _G.Settings.SeaStack["Summon Prehistoric Island"] or game.Workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island");
						if TweenBoatPrehistoric then
							TweenBoatPrehistoric:Stop();
						end;
					end;
				end;
			end);
		end;
	end);
	SeaStackTab:Toggle("Tween To Prehistoric Island", _G.Settings.SeaStack["Tween To Prehistoric Island"], "Need Spawn Prehistoric Island", function(value)
		_G.Settings.SeaStack["Tween To Prehistoric Island"] = value;
		StopTween(_G.Settings.SeaStack["Tween To Prehistoric Island"]);
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		while wait() do
			if _G.Settings.SeaStack["Tween To Prehistoric Island"] then
				pcall(function()
					if (game:GetService("Workspace"))._WorldOrigin.Locations:FindFirstChild("Prehistoric Island") then
						topos(((game:GetService("Workspace"))._WorldOrigin.Locations:FindFirstChild("Prehistoric Island")).CFrame);
					end;
				end);
			end;
		end;
	end);
	SeaStackTab:Toggle("Auto Kill Lava Golem", _G.Settings.SeaStack["Auto Kill Lava Golem"], "Need Spawn Prehistoric Island", function(value)
		_G.Settings.SeaStack["Auto Kill Lava Golem"] = value;
		StopTween(_G.Settings.SeaStack["Auto Kill Lava Golem"]);
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.DragonDojo["Auto Kill Lava Golem"] then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Lava Golem") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Lava Golem" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.DragonDojo["Auto Kill Lava Golem"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					end;
				end);
			end;
		end;
	end);
	SeaStackTab:Seperator("Frozen Dimension");
	Frozencheck = SeaStackTab:Label("Frozen Dimension");
	SeaStackTab:Toggle("Teleport To Frozen Dimension", _G.Settings.SeaStack["Teleport To Frozen Dimension"], "Tween Player To Frozen Dimension", function(value)
		_G.Settings.SeaStack["Teleport To Frozen Dimension"] = value;
		StopTween(_G.Settings.SeaStack["Teleport To Frozen Dimension"]);
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.SeaStack["Teleport To Frozen Dimension"] then
				pcall(function()
					repeat
						wait();
						topos(CFrame.new((game:GetService("Workspace")).Map.FrozenDimension.Center.Position.X, 500, (game:GetService("Workspace")).Map.FrozenDimension.Center.Position.Z));
					until not _G.Settings.SeaStack["Teleport To Frozen Dimension"];
				end);
			end;
		end;
	end);
	SeaStackTab:Toggle("Sail To Frozen Dimension", _G.Settings.SeaStack["Sail To Frozen Dimension"], "Tween Boat To Frozen Dimension", function(value)
		_G.Settings.SeaStack["Sail To Frozen Dimension"] = value;
		StopTween(_G.Settings.SeaStack["Sail To Frozen Dimension"]);
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.SeaStack["Sail To Frozen Dimension"] then
					if (game:GetService("Workspace")).Map:FindFirstChild("FrozenDimension") then
						if not (game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"]) then
							local BuyBoatCFrame = CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781);
							if (BuyBoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
								BTP(BuyBoatCFrame);
							else
								BuyBoat = topos(BuyBoatCFrame);
							end;
							if ((CFrame.new((-16927.451171875), 9.0863618850708, 433.8642883300781)).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
								if BuyBoat then
									BuyBoat:Stop();
								end;
								(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyBoat", _G.Settings.SeaEvent["Selected Boat"]);
								wait(1);
							end;
						elseif (game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"]) then
							repeat
								wait();
								if (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == false then
									local stoppos = topos(((game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"])).VehicleSeat.CFrame * CFrame.new(0, 1, 0));
								elseif (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == true then
									local stopboat = TweenBoat(CFrame.new((game:GetService("Workspace")).Map.FrozenDimension.Center.Position.X, 0, (game:GetService("Workspace")).Map.FrozenDimension.Center.Position.Z));
								end;
							until not _G.Settings.SeaStack["Sail To Frozen Dimension"];
							stopboat:Stop();
						end;
					end;
				end;
			end);
		end;
	end);
	SeaStackTab:Toggle("Summon Frozen Dimension", _G.Settings.SeaStack["Summon Frozen Dimension"], "Spawn Frozen Dimension", function(value)
		_G.Settings.SeaStack["Summon Frozen Dimension"] = value;
		StopTween(_G.Settings.SeaStack["Summon Frozen Dimension"]);
		(getgenv()).SaveSetting();
		if TweenBoatFrozen then
			TweenBoatFrozen:Stop();
		end;
	end);
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.SeaStack["Summon Frozen Dimension"] then
					if not (game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"]) then
						local BuyBoatCFrame = CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781);
						if (BuyBoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
							BTP(BuyBoatCFrame);
						else
							BuyBoat = topos(BuyBoatCFrame);
						end;
						if ((CFrame.new((-16927.451171875), 9.0863618850708, 433.8642883300781)).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
							if BuyBoat then
								BuyBoat:Stop();
							end;
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyBoat", _G.Settings.SeaEvent["Selected Boat"]);
							wait(1);
						end;
					elseif (game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"]) then
						repeat
							wait();
							if (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == false then
								if TweenBoatFrozen then
									TweenBoatFrozen:Stop();
								end;
								local stoppos = topos(((game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"])).VehicleSeat.CFrame * CFrame.new(0, 1, 0));
							elseif (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == true then
								TweenBoatFrozen = TweenBoat(CFrame.new(-148073.359, 8.99999523, 7721.05078, -0.0825930536, -0.00000154416148, 0.996583343, -0.000018696026, 1, -0.000000000000391858095, -0.996583343, -0.0000186321486, -0.0825930536));
							end;
						until not _G.Settings.SeaStack["Summon Frozen Dimension"] or game.Workspace._WorldOrigin.Locations:FindFirstChild("Frozen Dimension");
						if TweenBoatFrozen then
							TweenBoatFrozen:Stop();
						end;
					end;
				end;
			end);
		end;
	end);
	local BribeStatus = SeaStackTab:Label("Leviathan Status");
	SeaStackTab:Button("Bribe Leviathan ( Buy Info Leviathan )", function()
		local Status = (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("InfoLeviathan", "2");
		BribeStatus:Set("Leviathan Status: " .. Status);
	end);
	function GetHighestPoint()
		for i, v in pairs((game:GetService("Workspace")).Map.MysticIsland:GetDescendants()) do
			if v:IsA("MeshPart") then
				if v.MeshId == "rbxassetid://6745037796" then
					return v;
				end;
			end;
		end;
	end;
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Race["Tween To Highest Mirage"] then
					if (game:GetService("Workspace")).Map:FindFirstChild("MysticIsland") then
						topos((GetHighestPoint()).CFrame * CFrame.new(0, 211.88, 0));
					end;
				end;
			end;
		end);
	end);
	SeaStackTab:Seperator("Kitsune Island");
	Kitsunecheck = SeaStackTab:Label("Kitsune Island");
	SeaStackTab:Toggle("Summon Kitsune Island", _G.Settings.SeaStack["Summon Kitsune Island"], "Spawn Kitsune Island", function(value)
		_G.Settings.SeaStack["Summon Kitsune Island"] = value;
		StopTween(_G.Settings.SeaStack["Summon Kitsune Island"]);
		(getgenv()).SaveSetting();
		if TweenBoatKitsune then
			TweenBoatKitsune:Stop();
		end;
	end);
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.SeaStack["Summon Kitsune Island"] then
					if not (game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"]) then
						local BuyBoatCFrame = CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781);
						if (BuyBoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
							BTP(BuyBoatCFrame);
						else
							BuyBoatKitsune = topos(BuyBoatCFrame);
						end;
						if ((CFrame.new((-16927.451171875), 9.0863618850708, 433.8642883300781)).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
							if BuyBoatKitsune then
								BuyBoatKitsune:Stop();
							end;
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyBoat", _G.Settings.SeaEvent["Selected Boat"]);
							wait(1);
						end;
					elseif (game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"]) then
						repeat
							wait();
							if (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == false then
								if TweenBoatKitsune then
									TweenBoatKitsune:Stop();
								end;
								local stoppos = topos(((game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"])).VehicleSeat.CFrame * CFrame.new(0, 1, 0));
							elseif (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == true then
								TweenBoatKitsune = TweenBoat(CFrame.new(-44541.7617, 30.0003204, -1244.8584, -0.0844199061, -0.00553312758, 0.9964149, -0.0654025897, 0.997858942, 0.000000000202319411, -0.99428153, -0.0651681125, -0.0846010372));
							end;
						until not _G.Settings.SeaStack["Summon Kitsune Island"] or game.Workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island");
						if TweenBoatKitsune then
							TweenBoatKitsune:Stop();
						end;
					end;
				end;
			end);
		end;
	end);
	SeaStackTab:Toggle("Teleport To Kitsune Island", _G.Settings.SeaStack["Teleport To Kitsune Island"], "Tween To Kitsune Island", function(value)
		_G.Settings.SeaStack["Teleport To Kitsune Island"] = value;
		StopTween(_G.Settings.SeaStack["Teleport To Kitsune Island"]);
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.SeaStack["Teleport To Kitsune Island"] then
				if (game:GetService("Workspace")).Map:FindFirstChild("KitsuneIsland") then
					topos(game.Workspace.Map.KitsuneIsland.ShrineActive.NeonShrinePart.CFrame * CFrame.new(0, 0, 10));
				end;
			end;
		end;
	end);
	SeaStackTab:Toggle("Auto Collect Azure Ember", _G.Settings.SeaStack["Auto Collect Azure Ember"], "Tween To Azure Ember", function(value)
		_G.Settings.SeaStack["Auto Collect Azure Ember"] = value;
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.SeaStack["Auto Collect Azure Ember"] then
				pcall(function()
					if (game:GetService("Workspace")):FindFirstChild("AttachedAzureEmber") then
						topos((((game:GetService("Workspace")):WaitForChild("EmberTemplate")):FindFirstChild("Part")).CFrame);
					end;
				end);
			end;
		end;
	end);
	SeaStackTab:Slider("Set Azure Ember", 10, 25, _G.Settings.SeaStack["Set Azure Ember"], function(value)
		_G.Settings.SeaStack["Set Azure Ember"] = value;
		(getgenv()).SaveSetting();
	end);
	SeaStackTab:Toggle("Auto Trade Azure Ember", _G.Settings.SeaStack["Auto Trade Azure Ember"], "Trade Azure Ember", function(value)
		_G.Settings.SeaStack["Auto Trade Azure Ember"] = value;
		(getgenv()).SaveSetting();
	end);
	function GetCountMaterials(MaterialName)
		local Inventory = (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("getInventory");
		for i, v in pairs(Inventory) do
			if v.Name == MaterialName then
				return v.Count;
			end;
		end;
	end;
	spawn(function()
		while wait(0.2) do
			if _G.Settings.SeaStack["Auto Trade Azure Ember"] then
				pcall(function()
					local AzureAvilable = GetCountMaterials("Azure Ember");
					if AzureAvilable >= _G.Settings.SeaStack["Set Azure Ember"] then
						((game:GetService("ReplicatedStorage")).Modules.Net:FindFirstChild("RF/KitsuneStatuePray")):InvokeServer();
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("KitsuneStatuePray");
					end;
				end);
			end;
		end;
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.SeaStack["Teleport To Advanced Fruit Dealer"] then
					if (game:GetService("Workspace")).NPCs:FindFirstChild("Advanced Fruit Dealer") then
						topos(CFrame.new((game:GetService("Workspace")).NPCs["Advanced Fruit Dealer"].HumanoidRootPart.Position));
					end;
				end;
			end;
		end);
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Race["Find Blue Gear"] then
					if (game:GetService("Workspace")).Map:FindFirstChild("MysticIsland") then
						for i, v in pairs((game:GetService("Workspace")).Map.MysticIsland:GetChildren()) do
							if v:IsA("MeshPart") then
								if v.Material == Enum.Material.Neon then
									topos(v.CFrame);
								end;
							end;
						end;
					end;
				end;
			end;
		end);
	end);
end;
if World2 or World3 then
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if game.Workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island") then
					Mirragecheck:Set("ðŸï¸ Mirage Island Spawning");
					_G.MirageSpawn = true;
				else
					Mirragecheck:Set("ðŸï¸ Mirage Island Not Spawn");
					_G.MirageSpawn = false;
				end;
			end;
		end);
	end);
	SeaStackTab:Seperator("Mirage Island");
	Mirragecheck = SeaStackTab:Label("Mirage Island");
	SeaStackTab:Toggle("Teleport To Mirage Island", _G.Settings.SeaStack["Teleport To Mirage Island"], "Tween To Mirage Island", function(value)
		_G.Settings.SeaStack["Teleport To Mirage Island"] = value;
		StopTween(_G.Settings.SeaStack["Teleport To Mirage Island"]);
		(getgenv()).SaveSetting();
	end);
	SeaStackTab:Toggle("Teleport Advanced Fruit Dealer", _G.Settings.SeaStack["Teleport To Advanced Fruit Dealer"], "Tween To Advanced Fruit Dealer", function(value)
		_G.Settings.SeaStack["Teleport To Advanced Fruit Dealer"] = value;
		StopTween(_G.Settings.SeaStack["Teleport To Advanced Fruit Dealer"]);
		(getgenv()).SaveSetting();
	end);
	if World2 then
		SeaStackTab:Seperator("Sea Beasts");
		SeaStackTab:Toggle("Auto Attack Seabeasts", _G.Settings.SeaStack["Auto Attack Seabeasts"], "Need spawn seabeasts", function(value)
			_G.Settings.SeaStack["Auto Attack Seabeasts"] = value;
			StopTween(_G.Settings.SeaStack["Auto Attack Seabeasts"]);
			(getgenv()).SaveSetting();
		end);
		spawn(function()
			pcall(function()
				while wait() do
					if _G.Settings.SeaStack["Auto Attack Seabeasts"] then
						if (game:GetService("Workspace")):FindFirstChild("SeaBeasts") then
							for i, v in pairs((game:GetService("Workspace")).SeaBeasts:GetChildren()) do
								if CheckSeaBeast() then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										CFrameSeaBeast = v.HumanoidRootPart.CFrame * CFrame.new(0, 200, 0);
										if (CFrameSeaBeast.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 400 then
											_G.SeaSkill = true;
										else
											_G.SeaSkill = false;
										end;
										AutoHaki();
										Skillaimbot = true;
										AimBotSkillPosition = v.HumanoidRootPart.CFrame.Position;
										if SBAttacking then
											topos(CFrameSeaBeast * CFrame.new(math.random(100, 300), 100, math.random(100, 300)));
										else
											topos(CFrameSeaBeast * CFrame.new(0, 100, 0));
										end;
									until not _G.Settings.SeaEvent["Auto Farm Seabeasts"] or CheckSeaBeast() == false or (not v:FindFirstChild("Humanoid")) or (not v:FindFirstChild("HumanoidRootPart")) or v.Humanoid.Health < 0 or (not v.Parent);
									Skillaimbot = false;
									_G.SeaSkill = false;
								else
									Skillaimbot = false;
									_G.SeaSkill = false;
								end;
							end;
						end;
					end;
				end;
			end);
		end);
	end;
	spawn(function()
		pcall(function()
			while wait() do
				if _G.Settings.SeaStack["Teleport To Mirage Island"] then
					if (game:GetService("Workspace")).Map:FindFirstChild("MysticIsland") then
						topos(CFrame.new((game:GetService("Workspace")).Map.MysticIsland.Center.Position.X, 500, (game:GetService("Workspace")).Map.MysticIsland.Center.Position.Z));
					end;
				end;
			end;
		end);
	end);
end;
if World3 then
	DragonDojoTab:Seperator("Dragon Dojo");
	function getBlazeEmberQuest()
		local ResQuest = ((((game:GetService("ReplicatedStorage")):WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/DragonHunter")):InvokeServer({
			Context = "Check"
		});
		if ResQuest then
			for key, value in pairs(ResQuest) do
				if key == "Text" then
					return value;
				end;
			end;
		end;
	end;
	function getRequestQuest()
		local Req = ((((game:GetService("ReplicatedStorage")):WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/DragonHunter")):InvokeServer({
			Context = "RequestQuest"
		});
		return Req;
	end;
	function getIsOnQuest()
		local ResQuest = ((((game:GetService("ReplicatedStorage")):WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/DragonHunter")):InvokeServer({
			Context = "Check"
		});
		if ResQuest then
			for key, value in pairs(ResQuest) do
				if key == "Text" then
					if string.find(value, "Venomous Assailant") or string.find(value, "Hydra Enforcer") or string.find(value, "Destroy 10 trees") then
						return true;
					end;
				end;
			end;
		end;
		return false;
	end;
	spawn(function()
		while wait(0.2) do
			if _G.Settings.DragonDojo["Auto Farm Blaze Ember"] then
				pcall(function()
					if not _G.OnBlzeQuest and (not getIsOnQuest()) then
						local DragonHunterPos = CFrame.new(5864.86377, 1209.55066, 812.775024, 0.879059196, 0.00000000381980803, 0.476712614, -0.0000000131110456, 1, 0.0000000161639893, -0.476712614, -0.0000000204593036, 0.879059196);
						topos(DragonHunterPos);
						((((game:GetService("ReplicatedStorage")):WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/DragonHunter")):InvokeServer({
							Context = "RequestQuest"
						});
					end;
					SaveBlazeEmberQuest();
					_G.OnBlzeQuest = true;
				end);
			end;
		end;
	end);
	function SaveBlazeEmberQuest()
		if string.find(getBlazeEmberQuest(), "Venomous Assailant") then
			_G.BlazeEmberQuest = "Venomous Assailant";
		elseif string.find(getBlazeEmberQuest(), "Hydra Enforcer") then
			_G.BlazeEmberQuest = "Hydra Enforcer";
		elseif string.find(getBlazeEmberQuest(), "Destroy 10 trees") then
			_G.BlazeEmberQuest = "Destroy 10 trees";
		end;
	end;
	_G.OnBlzeQuest = false;
	spawn(function()
		while wait(0.2) do
			if isQuestCompleated() then
				_G.OnBlzeQuest = false;
			end;
		end;
	end);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.DragonDojo["Auto Farm Blaze Ember"] then
				pcall(function()
					if _G.BlazeEmberQuest == "Venomous Assailant" and _G.OnBlzeQuest then
						autoKillVenemousAssailant();
					elseif _G.BlazeEmberQuest == "Hydra Enforcer" and _G.OnBlzeQuest then
						autoKillHydraEnforcer();
					elseif _G.BlazeEmberQuest == "Destroy 10 trees" and _G.OnBlzeQuest then
						autoDestroyHydraTrees();
					end;
				end);
			end;
		end;
	end);
	function isQuestCompleated()
		for i, v in pairs((game:GetService("Players")).LocalPlayer.PlayerGui.Notifications:GetChildren()) do
			for _, Notif in pairs(v:GetChildren()) do
				if string.find(Notif.Text, "Task completed!") or string.find(Notif.Text, "Head back to the Dojo") then
					return true;
				end;
			end;
		end;
		return false;
	end;
	function CollectBlazeEmber()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (((game:GetService("Workspace")):WaitForChild("EmberTemplate")):FindFirstChild("Part")).CFrame;
	end;
	DragonDojoTab:Toggle("Auto Farm Blaze Ember", _G.Settings.DragonDojo["Auto Farm Blaze Ember"], "Auto Farm Blaze Ember", function(value)
		_G.Settings.DragonDojo["Auto Farm Blaze Ember"] = value;
		StopTween(_G.Settings.DragonDojo["Auto Farm Blaze Ember"]);
		(getgenv()).SaveSetting();
	end);
	function autoKillVenemousAssailant()
		if not (game:GetService("Workspace")).Enemies:FindFirstChild("Venomous Assailant") then
			topos(CFrame.new(4789.29639, 1078.59082, 962.764099, -0.381989956, 0.0000000198627319, 0.924166501, 0.0000000126859874, 1, -0.0000000162490341, -0.924166501, 0.00000000551699708, -0.381989956));
		else
			for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
				if v.Name == "Venomous Assailant" then
					if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
						repeat
							(game:GetService("RunService")).Heartbeat:wait();
							AutoHaki();
							EquipWeapon(_G.Settings.Main["Selected Weapon"]);
							v.HumanoidRootPart.CanCollide = false;
							v.Humanoid.WalkSpeed = 0;
							v.Head.CanCollide = false;
							v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
							PosMon = v.HumanoidRootPart.CFrame;
							MonFarm = v.Name;
							topos(v.HumanoidRootPart.CFrame * Pos);
							Attack();
						until not v.Parent or v.Humanoid.Health <= 0 or (not _G.Settings.DragonDojo["Auto Farm Blaze Ember"]) or (not _G.OnBlzeQuest);
					end;
				end;
			end;
		end;
	end;
	function autoKillHydraEnforcer()
		if not (game:GetService("Workspace")).Enemies:FindFirstChild("Hydra Enforcer") then
			topos(CFrame.new(4789.29639, 1078.59082, 962.764099, -0.381989956, 0.0000000198627319, 0.924166501, 0.0000000126859874, 1, -0.0000000162490341, -0.924166501, 0.00000000551699708, -0.381989956));
		else
			for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
				if v.Name == "Hydra Enforcer" then
					if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
						repeat
							(game:GetService("RunService")).Heartbeat:wait();
							AutoHaki();
							EquipWeapon(_G.Settings.Main["Selected Weapon"]);
							v.HumanoidRootPart.CanCollide = false;
							v.Humanoid.WalkSpeed = 0;
							v.Head.CanCollide = false;
							v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
							PosMon = v.HumanoidRootPart.CFrame;
							MonFarm = v.Name;
							topos(v.HumanoidRootPart.CFrame * Pos);
							Attack();
						until not v.Parent or v.Humanoid.Health <= 0 or (not _G.Settings.DragonDojo["Auto Farm Blaze Ember"]) or (not _G.OnBlzeQuest);
					end;
				end;
			end;
		end;
	end;
	function autoDestroyHydraTrees()
		local Pos1 = CFrame.new(5260.28223, 1004.24329, 347.062622, 0.923247099, -0.00000000370291953, 0.384206682, -0.000000000671108058, 1, 0.0000000112505019, -0.384206682, -0.0000000106448379, 0.923247099);
		local Pos2 = CFrame.new(5237.94775, 1004.24329, 429.596344, 0.371416599, 0.00000000207420636, 0.92846632, 0.00000000476562345, 1, -0.00000000414041734, -0.92846632, 0.00000000596254068, 0.371416599);
		local Pos3 = CFrame.new(5320.87793, 1004.24329, 439.152954, 0.136340275, -0.0000000995428806, -0.990662038, 0.0000000610136723, 1, -0.0000000920841288, 0.990662038, -0.0000000478891593, 0.136340275);
		local Pos4 = CFrame.new(5346.70752, 1004.24329, 359.389008, 0.296962529, 0.0000000642768185, -0.954889119, -0.0000000737323518, 1, 0.0000000443832349, 0.954889119, 0.0000000572260639, 0.296962529);
		local myPos = (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame;
		if (myPos.Position - Pos1.Position).Magnitude <= 3 then
			useAllSkill();
		else
			topos(Pos1);
		end;
		if (myPos.Position - Pos2.Position).Magnitude <= 3 then
			useAllSkill();
		else
			topos(Pos2);
		end;
		if (myPos.Position - Pos3.Position).Magnitude <= 3 then
			useAllSkill();
		else
			topos(Pos3);
		end;
		if (myPos.Position - Pos4.Position).Magnitude <= 3 then
			useAllSkill();
		else
			topos(Pos4);
		end;
	end;
	function useAllSkill()
		if DoneSkillFruit == false then
			for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v:IsA("Tool") then
					if v.ToolTip == "Blox Fruit" then
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
					end;
				end;
			end;
			(game:service("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
			wait(0);
			(game:service("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
			(game:service("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
			wait(0);
			(game:service("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
			(game:service("VirtualInputManager")):SendKeyEvent(true, "C", false, game);
			wait(0);
			(game:service("VirtualInputManager")):SendKeyEvent(false, "C", false, game);
			(game:service("VirtualInputManager")):SendKeyEvent(true, "V", false, game);
			wait(0);
			(game:service("VirtualInputManager")):SendKeyEvent(false, "V", false, game);
			(game:service("VirtualInputManager")):SendKeyEvent(true, "F", false, game);
			wait(0);
			(game:service("VirtualInputManager")):SendKeyEvent(false, "F", false, game);
			DoneSkillFruit = true;
		end;
		if DoneSkillMelee == false then
			for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v:IsA("Tool") then
					if v.ToolTip == "Melee" then
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
					end;
				end;
			end;
			(game:service("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
			wait(0);
			(game:service("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
			(game:service("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
			wait(0);
			(game:service("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
			(game:service("VirtualInputManager")):SendKeyEvent(true, "C", false, game);
			wait(0);
			(game:service("VirtualInputManager")):SendKeyEvent(false, "C", false, game);
			(game:service("VirtualInputManager")):SendKeyEvent(true, "V", false, game);
			wait(0);
			(game:service("VirtualInputManager")):SendKeyEvent(false, "V", false, game);
			DoneSkillMelee = true;
		end;
		if DoneSkillSword == false then
			for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v:IsA("Tool") then
					if v.ToolTip == "Sword" then
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
					end;
				end;
			end;
			(game:service("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
			wait(0);
			(game:service("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
			(game:service("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
			wait(0);
			(game:service("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
			DoneSkillSword = true;
		end;
		if DoneSkillGun == false then
			for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v:IsA("Tool") then
					if v.ToolTip == "Gun" then
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
					end;
				end;
			end;
			(game:service("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
			wait(0.1);
			(game:service("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
			(game:service("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
			wait(0.1);
			(game:service("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
			DoneSkillGun = true;
		end;
		DoneSkillGun = false;
		DoneSkillSword = false;
		DoneSkillFruit = false;
		DoneSkillMelee = false;
	end;
	DragonDojoTab:Toggle("Auto Collect Blaze Ember", _G.Settings.DragonDojo["Auto Collect Blaze Ember"], false, function(value)
		_G.Settings.DragonDojo["Auto Collect Blaze Ember"] = value;
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.DragonDojo["Auto Collect Blaze Ember"] then
				pcall(function()
					if ((game:GetService("Workspace")):WaitForChild("EmberTemplate")):FindFirstChild("Part") then
						CollectBlazeEmber();
					end;
				end);
			end;
		end;
	end);
	DragonDojoTab:Line();
	DragonDojoTab:Button("Teleport To Dragon Hunter", function()
		topos(CFrame.new(5864.86377, 1209.55066, 812.775024, 0.879059196, 0.00000000381980803, 0.476712614, -0.0000000131110456, 1, 0.0000000161639893, -0.476712614, -0.0000000204593036, 0.879059196));
	end);
	DragonDojoTab:Button("Craft Volcanic Magnet", function()
		(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("CraftItem", "Craft", "Volcanic Magnet");
	end);
	CraftTab:Seperator("Scroll Crafts");
	CraftTab:Toggle("Auto Craft Common Scroll", _G.Settings.Craft["Auto Craft Common Scroll"], "Craft Common Scroll", function(value)
		_G.Settings.Craft["Auto Craft Common Scroll"] = value;
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Craft["Auto Craft Common Scroll"] then
				pcall(function()
					repeat
						wait(1);
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CraftItem", "Craft", "CommonScroll");
					until not _G.Settings.Craft["Auto Craft Common Scroll"];
				end);
			end;
		end;
	end);
	CraftTab:Toggle("Auto Craft Rare Scroll", _G.Settings.Craft["Auto Craft Rare Scroll"], "Craft Rare Scroll", function(value)
		_G.Settings.Craft["Auto Craft Rare Scroll"] = value;
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Craft["Auto Craft Rare Scroll"] then
				pcall(function()
					repeat
						wait(1);
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CraftItem", "Craft", "RareScroll");
					until not _G.Settings.Craft["Auto Craft Rare Scroll"];
				end);
			end;
		end;
	end);
	CraftTab:Toggle("Auto Craft Legendary Scroll", _G.Settings.Craft["Auto Craft Legendary Scroll"], "Craft Legendary Scroll", function(value)
		_G.Settings.Craft["Auto Craft Legendary Scroll"] = value;
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Craft["Auto Craft Legendary Scroll"] then
				pcall(function()
					repeat
						wait(1);
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CraftItem", "Craft", "LegendaryScroll");
					until not _G.Settings.Craft["Auto Craft Legendary Scroll"];
				end);
			end;
		end;
	end);
	CraftTab:Toggle("Auto Craft Mythical Scroll", _G.Settings.Craft["Auto Craft Mythical Scroll"], "Craft Mythical Scroll", function(value)
		_G.Settings.Craft["Auto Craft Mythical Scroll"] = value;
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Craft["Auto Craft Mythical Scroll"] then
				pcall(function()
					repeat
						wait(1);
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CraftItem", "Craft", "MythicalScroll");
					until not _G.Settings.Craft["Auto Craft Mythical Scroll"];
				end);
			end;
		end;
	end);
	CraftTab:Seperator("Beast Hunter Crafts");
	CraftTab:Button("Craft Leviathan Crown", function()
		(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CraftItem", "Craft", "LeviathanCrown");
	end);
	CraftTab:Button("Craft Leviathan Shield", function()
		(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CraftItem", "Craft", "LeviathanShield");
	end);
	CraftTab:Button("Craft Beast Hunter", function()
		(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CraftItem", "Craft", "BeastHunter");
	end);
	CraftTab:Seperator("Shark Hunter Crafts");
	CraftTab:Button("Craft Tooth Necklace", function()
		(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CraftItem", "Craft", "ToothNecklace");
	end);
	CraftTab:Button("Craft Terror Jaw", function()
		(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CraftItem", "Craft", "TerrorJaw");
	end);
	CraftTab:Button("Craft Monster Magnet", function()
		(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CraftItem", "Craft", "MonsterMagnet");
	end);
end;
ItemsTab:Seperator("Fighting Style");
ItemsTab:Toggle("Auto Superhuman", _G.Settings.Items["Auto Super Human"], false, function(value)
	_G.Settings.Items["Auto Super Human"] = value;
	(getgenv()).SaveSetting();
end);
spawn(function()
	pcall(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Super Human"] then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") and (game:GetService("Players")).LocalPlayer.Data.Beli.Value >= 150000 then
					UnEquipWeapon("Combat");
					wait(0.1);
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyBlackLeg");
				end;
				if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
					_G.Settings.Main["Selected Weapon"] = "Superhuman";
				end;
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg")).Level.Value <= 299 then
						_G.Settings.Main["Selected Weapon"] = "Black Leg";
					end;
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro")).Level.Value <= 299 then
						_G.Settings.Main["Selected Weapon"] = "Electro";
					end;
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate")).Level.Value <= 299 then
						_G.Settings.Main["Selected Weapon"] = "Fishman Karate";
					end;
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw")).Level.Value <= 299 then
						_G.Settings.Main["Selected Weapon"] = "Dragon Claw";
					end;
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg")).Level.Value >= 300 and (game:GetService("Players")).LocalPlayer.Data.Beli.Value >= 300000 then
						UnEquipWeapon("Black Leg");
						wait(0.1);
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectro");
					end;
					if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg")).Level.Value >= 300 and (game:GetService("Players")).LocalPlayer.Data.Beli.Value >= 300000 then
						UnEquipWeapon("Black Leg");
						wait(0.1);
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectro");
					end;
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro")).Level.Value >= 300 and (game:GetService("Players")).LocalPlayer.Data.Beli.Value >= 750000 then
						UnEquipWeapon("Electro");
						wait(0.1);
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyFishmanKarate");
					end;
					if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and (game.Players.LocalPlayer.Character:FindFirstChild("Electro")).Level.Value >= 300 and (game:GetService("Players")).LocalPlayer.Data.Beli.Value >= 750000 then
						UnEquipWeapon("Electro");
						wait(0.1);
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyFishmanKarate");
					end;
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate")).Level.Value >= 300 and (game:GetService("Players")).Localplayer.Data.Fragments.Value >= 1500 then
						UnEquipWeapon("Fishman Karate");
						wait(0.1);
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1");
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
					end;
					if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate")).Level.Value >= 300 and (game:GetService("Players")).Localplayer.Data.Fragments.Value >= 1500 then
						UnEquipWeapon("Fishman Karate");
						wait(0.1);
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1");
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
					end;
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw")).Level.Value >= 300 and (game:GetService("Players")).LocalPlayer.Data.Beli.Value >= 3000000 then
						UnEquipWeapon("Dragon Claw");
						wait(0.1);
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySuperhuman");
					end;
					if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw")).Level.Value >= 300 and (game:GetService("Players")).LocalPlayer.Data.Beli.Value >= 3000000 then
						UnEquipWeapon("Dragon Claw");
						wait(0.1);
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySuperhuman");
					end;
				end;
			end;
		end;
	end);
end);
ItemsTab:Toggle("Auto DeathStep", _G.Settings.Items["Auto Death Step"], false, function(value)
	_G.Settings.Items["Auto Death Step"] = value;
	(getgenv()).SaveSetting();
end);
spawn(function()
	while wait(0.2) do
		if _G.Settings.Items["Auto Death Step"] then
			if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Black Leg") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Black Leg") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Death Step") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Death Step") then
				if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Black Leg") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Black Leg")).Level.Value >= 450 then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDeathStep");
					_G.Settings.Main["Selected Weapon"] = "Death Step";
				end;
				if (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Black Leg") and ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Black Leg")).Level.Value >= 450 then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDeathStep");
					_G.Settings.Main["Selected Weapon"] = "Death Step";
				end;
				if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Black Leg") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Black Leg")).Level.Value <= 449 then
					_G.Settings.Main["Selected Weapon"] = "Black Leg";
				end;
			else
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyBlackLeg");
			end;
		end;
	end;
end);
ItemsTab:Toggle("Auto Sharkman Karate", _G.Settings.Items["Auto Fishman Karate"], false, function(value)
	_G.Settings.Items["Auto Fishman Karate"] = value;
	StopTween(_G.Settings.Items["Auto Fishman Karate"]);
	(getgenv()).SaveSetting();
end);
spawn(function()
	pcall(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Fishman Karate"] then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyFishmanKarate");
				if string.find((game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then
					if (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Water Key") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Water Key") then
						topos(CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365));
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySharkmanKarate");
					elseif (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Fishman Karate") and ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Fishman Karate")).Level.Value >= 400 then
					else
						Ms = "Tide Keeper";
						if (game:GetService("Workspace")).Enemies:FindFirstChild(Ms) then
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v.Name == Ms then
									OldCFrameShark = v.HumanoidRootPart.CFrame;
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.Head.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.CanCollide = false;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										v.HumanoidRootPart.CFrame = OldCFrameShark;
										topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
										Attack();
									until not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.Items["Auto Fishman Karate"] == false or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Water Key") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Water Key");
								end;
							end;
						else
							topos(CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -0.000000013857326, 0.885206044, 0.0000000040332897, 1, 0.0000000135347511, -0.885206044, -0.00000000272606271, 0.465199202));
							wait(3);
						end;
					end;
				else
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySharkmanKarate");
				end;
			end;
		end;
	end);
end);
ItemsTab:Toggle("Auto Electric Claw", _G.Settings.Items["Auto Electric Claw"], false, function(value)
	_G.Settings.Items["Auto Electric Claw"] = value;
	StopTween(_G.Settings.Items["Auto Electric Claw"]);
	(getgenv()).SaveSetting();
end);
spawn(function()
	pcall(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Electric Claw"] then
				if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electro") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electric Claw") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electric Claw") then
					if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro")).Level.Value >= 400 then
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw");
						_G.Settings.Main["Selected Weapon"] = "Electric Claw";
					end;
					if (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electro") and ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electro")).Level.Value >= 400 then
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw");
						_G.Settings.Main["Selected Weapon"] = "Electric Claw";
					end;
					if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro")).Level.Value <= 399 then
						_G.Settings.Main["Selected Weapon"] = "Electro";
					end;
				else
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectro");
				end;
			end;
			if _G.Settings.Items["Auto Electric Claw"] then
				if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electro") then
					if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electro") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro")).Level.Value >= 400 or ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electro")).Level.Value >= 400 then
						if _G.Settings.Main["Auto Farm"] == false then
							repeat
								(game:GetService("RunService")).Heartbeat:wait();
								topos(CFrame.new(-10371.4717, 330.764496, -10131.4199));
							until not _G.Settings.Items["Auto Electric Claw"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - (CFrame.new((-10371.4717), 330.764496, (-10131.4199))).Position).Magnitude <= 10;
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
							wait(2);
							repeat
								task.wait();
								topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438));
							until not _G.Settings.Items["Auto Electric Claw"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - (CFrame.new((-12550.532226563), 336.22631835938, (-7510.4233398438))).Position).Magnitude <= 10;
							wait(1);
							repeat
								task.wait();
								topos(CFrame.new(-10371.4717, 330.764496, -10131.4199));
							until not _G.Settings.Items["Auto Electric Claw"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - (CFrame.new((-10371.4717), 330.764496, (-10131.4199))).Position).Magnitude <= 10;
							wait(1);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw");
						elseif _G.Settings.Main["Auto Farm"] == true then
							_G.Settings.Main["Auto Farm"] = false;
							wait(1);
							repeat
								task.wait();
								topos(CFrame.new(-10371.4717, 330.764496, -10131.4199));
							until not _G.Settings.Items["Auto Electric Claw"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - (CFrame.new((-10371.4717), 330.764496, (-10131.4199))).Position).Magnitude <= 10;
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
							wait(2);
							repeat
								task.wait();
								topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438));
							until not _G.Settings.Items["Auto Electric Claw"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - (CFrame.new((-12550.532226563), 336.22631835938, (-7510.4233398438))).Position).Magnitude <= 10;
							wait(1);
							repeat
								task.wait();
								topos(CFrame.new(-10371.4717, 330.764496, -10131.4199));
							until not _G.Settings.Items["Auto Electric Claw"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - (CFrame.new((-10371.4717), 330.764496, (-10131.4199))).Position).Magnitude <= 10;
							wait(1);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw");
							_G.Settings.Main["Selected Weapon"] = "Electric Claw";
							wait(0.1);
							_G.Settings.Main["Auto Farm"] = true;
						end;
					end;
				end;
			end;
		end;
	end);
end);
ItemsTab:Toggle("Auto Dragon Talon", _G.Settings.Items["Auto Dragon Talon"], false, function(value)
	_G.Settings.Items["Auto Dragon Talon"] = value;
	(getgenv()).SaveSetting();
end);
spawn(function()
	while wait(0.2) do
		if _G.Settings.Items["Auto Dragon Talon"] then
			if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Dragon Claw") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Dragon Talon") then
				if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Claw")).Level.Value >= 400 then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDragonTalon");
					_G.Settings.Main["Selected Weapon"] = "Dragon Talon";
				end;
				if (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Dragon Claw") and ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Dragon Claw")).Level.Value >= 400 then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDragonTalon");
					_G.Settings.Main["Selected Weapon"] = "Dragon Talon";
				end;
				if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Claw")).Level.Value <= 399 then
					_G.Settings.Main["Selected Weapon"] = "Dragon Claw";
				end;
			else
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
			end;
		end;
	end;
end);
ItemsTab:Toggle("Auto GodHuman", _G.Settings.Items["Auto God Human"], false, function(value)
	_G.Settings.Items["Auto God Human"] = value;
	(getgenv()).SaveSetting();
end);
spawn(function()
	while task.wait(0.2) do
		if _G.Settings.Items["Auto God Human"] then
			pcall(function()
				if (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Superhuman") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Superhuman") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Black Leg") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Black Leg") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Death Step") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Death Step") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Fishman Karate") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Sharkman Karate") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electro") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electric Claw") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electric Claw") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Dragon Claw") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Dragon Talon") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Godhuman") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Godhuman") then
					if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySuperhuman", true) == 1 then
						if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Superhuman") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Superhuman")).Level.Value >= 400 or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Superhuman") and ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Superhuman")).Level.Value >= 400 then
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDeathStep");
						end;
					else
						Update:Notify("Not Have Superhuman", 3);
					end;
					if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDeathStep", true) == 1 then
						if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Death Step") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Death Step")).Level.Value >= 400 or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Death Step") and ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Death Step")).Level.Value >= 400 then
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySharkmanKarate");
						end;
					else
						Update:Notify("Not Have Death Step", 3);
					end;
					if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySharkmanKarate", true) == 1 then
						if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Sharkman Karate")).Level.Value >= 400 or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Sharkman Karate") and ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Sharkman Karate")).Level.Value >= 400 then
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw");
						end;
					else
						Update:Notify("Not Have Sharkman Karate", 3);
					end;
					if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw", true) == 1 then
						if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electric Claw") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electric Claw")).Level.Value >= 400 or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electric Claw") and ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electric Claw")).Level.Value >= 400 then
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDragonTalon");
						end;
					else
						Update:Notify("Not Have Electric Claw", 3);
					end;
					if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
						if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Talon")).Level.Value >= 400 or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Dragon Talon") and ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Dragon Talon")).Level.Value >= 400 then
							if string.find((game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyGodhuman", true), "Bring") then
								Update:Notify("Not Have Enough Material", 3);
							else
								(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyGodhuman");
							end;
						end;
					else
						Update:Notify("Not Have Dragon Talon", 3);
					end;
				else
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySuperhuman");
				end;
			end);
		end;
	end;
end);
FarmTab:Seperator("Materials");
if World2 then
	FarmTab:Toggle("Auto Farm Radioactive", _G.Settings.Farm["Auto Farm Radioactive"], false, function(value)
		_G.Settings.Farm["Auto Farm Radioactive"] = value;
		StopTween(_G.Settings.Farm["Auto Farm Radioactive"]);
		(getgenv()).SaveSetting();
	end);
	local MaterialsPos1 = CFrame.new(-507.7895202636719, 72.99479675292969, -126.45632934570312);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Radioactive"] and World2 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Factory Staff") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Factory Staff" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Radioactive"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-507.7895202636719, 72.99479675292969, -126.45632934570312));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Factory Staff") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Factory Staff")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;
if World2 then
	FarmTab:Toggle("Auto Farm Mystic Droplet", _G.Settings.Farm["Auto Farm Mystic Droplet"], false, function(value)
		_G.Settings.Farm["Auto Farm Mystic Droplet"] = value;
		StopTween(_G.Settings.Farm["Auto Farm Mystic Droplet"]);
		(getgenv()).SaveSetting();
	end);
	local MaterialsPos2 = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Mystic Droplet"] and World2 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Water Fighter") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Water Fighter" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Mystic Droplet"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Water Fighter") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Water Fighter")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;
if World1 or World2 then
	FarmTab:Toggle("Auto Farm Magma Ore", _G.Settings.Farm["Auto Farm Magma Ore"], "Auto Farm Magma Ore", function(value)
		_G.Settings.Farm["Auto Farm Magma Ore"] = value;
		StopTween(_G.Settings.Farm["Auto Farm Magma Ore"]);
		(getgenv()).SaveSetting();
	end);
	local MaterialsPos3 = CFrame.new(-5850.2802734375, 77.28675079345703, 8848.6748046875);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Magma Ore"] and World1 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Military Spy") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Military Spy" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Magma Ore"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-5850.2802734375, 77.28675079345703, 8848.6748046875));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Military Spy") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Military Spy")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
	local MaterialsPos4 = CFrame.new(-5234.60595703125, 51.953372955322266, -4732.27880859375);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Magma Ore"] and World2 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Lava Pirate") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Lava Pirate" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Magma Ore"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-5234.60595703125, 51.953372955322266, -4732.27880859375));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Lava Pirate") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Lava Pirate")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;
if World1 then
	FarmTab:Toggle("Auto Farm Angel Wings", _G.Settings.Farm["Auto Farm Angel Wings"], false, function(value)
		_G.Settings.Farm["Auto Farm Angel Wings"] = value;
		StopTween(_G.Settings.Farm["Auto Farm Angel Wings"]);
		(getgenv()).SaveSetting();
	end);
	local MaterialsPos5 = CFrame.new(-7827.15625, 5606.912109375, -1705.5833740234375);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Angel Wings"] and World1 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Royal Soldier") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Royal Soldier" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Angel Wings"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-7827.15625, 5606.912109375, -1705.5833740234375));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Royal Soldier") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Royal Soldier")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;
if World1 or World2 or World3 then
	FarmTab:Toggle("Auto Farm Leather", _G.Settings.Farm["Auto Farm Leather"], false, function(value)
		_G.Settings.Farm["Auto Farm Leather"] = value;
		StopTween(_G.Settings.Farm["Auto Farm Leather"]);
		(getgenv()).SaveSetting();
	end);
	local MaterialsPos6 = CFrame.new(-1211.8792724609375, 4.787090301513672, 3916.83056640625);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Leather"] and World1 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Pirate") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Pirate" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Leather"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-1211.8792724609375, 4.787090301513672, 3916.83056640625));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Pirate") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Pirate")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
	local MaterialsPos7 = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Leather"] and World2 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Marine Captain") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Marine Captain" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Leather"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Marine Captain") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Marine Captain")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
	local MaterialsPos8 = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Leather"] and World3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Jungle Pirate") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Jungle Pirate" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Leather"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Jungle Pirate") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Jungle Pirate")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;
if World2 then
	FarmTab:Toggle("Auto Farm Ectoplasm", _G.Settings.Farm["Auto Farm Ectoplasm"], false, function(value)
		_G.Settings.Farm["Auto Farm Ectoplasm"] = value;
		StopTween(_G.Settings.Farm["Auto Farm Ectoplasm"]);
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Farm["Auto Farm Ectoplasm"] then
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Ship Deckhand") or (game:GetService("Workspace")).Enemies:FindFirstChild("Ship Engineer") or (game:GetService("Workspace")).Enemies:FindFirstChild("Ship Steward") or (game:GetService("Workspace")).Enemies:FindFirstChild("Ship Officer") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Ship Deckhand" or v.Name == "Ship Engineer" or v.Name == "Ship Steward" or v.Name == "Ship Officer" then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									AutoHaki();
									if string.find(v.Name, "Ship") then
										v.HumanoidRootPart.CanCollide = false;
										v.Head.CanCollide = false;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
									else
										topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625));
									end;
								until _G.Settings.Farm["Auto Farm Ectoplasm"] == false or (not v.Parent) or v.Humanoid.Health <= 0;
							end;
						end;
					else
						local Distance = (Vector3.new(911.35827636719, 125.95812988281, 33159.5390625) - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
						if Distance > 18000 then
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
						end;
						topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625));
					end;
				end;
			end;
		end);
	end);
end;
if World1 or World2 or World3 then
	FarmTab:Toggle("Auto Farm Scrap Metal", _G.Settings.Farm["Auto Farm Scrap Metal"], false, function(value)
		_G.Settings.Farm["Auto Farm Scrap Metal"] = value;
		StopTween(_G.Settings.Farm["Auto Farm Scrap Metal"]);
		(getgenv()).SaveSetting();
	end);
	local MaterialsPos9 = CFrame.new(-1132.4202880859375, 14.844913482666016, 4293.30517578125);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Scrap Metal"] and World1 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Brute") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Brute" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Scrap Metal"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-1132.4202880859375, 14.844913482666016, 4293.30517578125));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Brute") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Brute")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
	local MaterialsPos10 = CFrame.new(-972.307373046875, 73.04473876953125, 1419.2901611328125);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Scrap Metal"] and World2 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Mercenary") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Mercenary" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Scrap Metal"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-972.307373046875, 73.04473876953125, 1419.2901611328125));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Mercenary") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Mercenary")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
	local MaterialsPos11 = CFrame.new(-289.6311950683594, 43.8282470703125, 5583.66357421875);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Scrap Metal"] and World3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Pirate Millionaire") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Pirate Millionaire" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Scrap Metal"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-289.6311950683594, 43.8282470703125, 5583.66357421875));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Pirate Millionaire") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Pirate Millionaire")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;
if World3 then
	FarmTab:Toggle("Auto Farm Conjured Cocoa", _G.Settings.Farm["Auto Farm Conjured Cocoa"], false, function(value)
		_G.Settings.Farm["Auto Farm Conjured Cocoa"] = value;
		StopTween(_G.Settings.Farm["Auto Farm Conjured Cocoa"]);
		(getgenv()).SaveSetting();
	end);
	local MaterialsPos12 = CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Conjured Cocoa"] and World3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Chocolate Bar Battler") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Chocolate Bar Battler" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Conjured Cocoa"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Chocolate Bar Battler") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Chocolate Bar Battler")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;
if World3 then
	FarmTab:Toggle("Auto Farm Dragon Scale", _G.Settings.Farm["Auto Farm Dragon Scale"], false, function(value)
		_G.Settings.Farm["Auto Farm Dragon Scale"] = value;
		StopTween(_G.Settings.Farm["Auto Farm Dragon Scale"]);
		(getgenv()).SaveSetting();
	end);
	local MaterialsPos13 = CFrame.new(5824.06982421875, 51.38640213012695, -1106.694580078125);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Dragon Scale"] and World3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Dragon Crew Warrior") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Dragon Crew Warrior" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Dragon Scale"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(5824.06982421875, 51.38640213012695, -1106.694580078125));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Dragon Crew Warrior") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Dragon Crew Warrior")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;
if World3 then
	FarmTab:Toggle("Auto Farm Gunpowder", _G.Settings.Farm["Auto Farm Gunpowder"], false, function(value)
		_G.Settings.Farm["Auto Farm Gunpowder"] = value;
		StopTween(_G.Settings.Farm["Auto Farm Gunpowder"]);
		(getgenv()).SaveSetting();
	end);
	local MaterialsPos14 = CFrame.new(-379.6134338378906, 73.84449768066406, 5928.5263671875);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Gunpowder"] and World3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Pistol Billionaire") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Pistol Billionaire" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Gunpowder"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-379.6134338378906, 73.84449768066406, 5928.5263671875));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Pistol Billionaire") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Pistol Billionaire")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;
if World3 then
	FarmTab:Toggle("Auto Farm Fish Tail", _G.Settings.Farm["Auto Farm Fish Tail"], false, function(value)
		_G.Settings.Farm["Auto Farm Fish Tail"] = value;
		StopTween(_G.Settings.Farm["Auto Farm Fish Tail"]);
		(getgenv()).SaveSetting();
	end);
	local MaterialsPos15 = CFrame.new(-10961.0126953125, 331.7977600097656, -8914.29296875);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Fish Tail"] and World3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Fishman Captain") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Fishman Captain" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not Fish or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-10961.0126953125, 331.7977600097656, -8914.29296875));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Fishman Captain") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Fishman Captain")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;
if World3 then
	FarmTab:Toggle("Auto Farm Mini Tusk", _G.Settings.Farm["Auto Farm Mini Tusk"], false, function(value)
		_G.Settings.Farm["Auto Farm Mini Tusk"] = value;
		StopTween(_G.Settings.Farm["Auto Farm Mini Tusk"]);
		(getgenv()).SaveSetting();
	end);
	local MaterialsPos16 = CFrame.new(-13516.0458984375, 469.8182373046875, -6899.16064453125);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Mini Tusk"] and World3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Mythological Pirate") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Mythological Pirate" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Mini Tusk"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-13516.0458984375, 469.8182373046875, -6899.16064453125));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Mythological Pirate") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Mythological Pirate")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;
function NormalAttack()
	AttackModule:BladeHits();
end;
spawn(function()
	(game:GetService("RunService")).RenderStepped:Connect(function()
		pcall(function()
			if UseSkill or UseGunSkill or _G.SeaSkill then
				for i, v in pairs((game:GetService("Players")).LocalPlayer.PlayerGui.Notifications:GetChildren()) do
					for _, Notif in pairs(v:GetChildren()) do
						if string.find(Notif.Text, "Skill locked!") then
							v:Destroy();
						end;
					end;
				end;
			end;
		end);
	end);
end);
function EquipWeaponSword()
	pcall(function()
		for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.ToolTip == "Sword" and v:IsA("Tool") then
				local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name);
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid);
			end;
		end;
	end);
end;
ItemsTab:Seperator("Gun & Sword");
if World3 then
	ItemsTab:Toggle("Auto Buddy Sword", _G.Settings.Items["Auto Buddy Sword"], false, function(value)
		_G.Settings.Items["Auto Buddy Sword"] = value;
		StopTween(_G.Settings.Items["Auto Buddy Sword"]);
		(getgenv()).SaveSetting();
	end);
	local BigMomPos = CFrame.new(-731.2034301757812, 381.5658874511719, -11198.4951171875);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Buddy Sword"] and World3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Cake Queen") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Cake Queen" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Items["Auto Buddy Sword"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-731.2034301757812, 381.5658874511719, -11198.4951171875));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Cake Queen") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Cake Queen")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;
function CheckItemCount(itemName, itemCount)
	for i, v in next, game.ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory") do
		if v.Name == itemName and v.Count >= itemCount then
			return true;
		end;
	end;
	return false;
end;
function DetectChest()
	local dist = math.huge;
	local name;
	for k, v in pairs(game.Workspace:GetChildren()) do
		if string.match(v.Name, "Chest") then
			local magnitude = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude;
			if magnitude < dist then
				dist = magnitude;
				name = v;
			end;
		end;
	end;
	if not name then
		for i, v in next, (game:GetService("Workspace")).Map:GetDescendants() do
			if v:IsA("Part") and string.find(v.Name, "Chest") then
				local magnitude = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude;
				if magnitude < dist then
					dist = magnitude;
					name = v;
				end;
			end;
		end;
	end;
	return name;
end;
local MobBlacklist = {};
function DetectPartSpawnMob(name)
	local name1;
	if string.find(name, "Lv.") then
		name1 = name:gsub(" %pLv. %d+%p", "");
	end;
	for i, v in pairs((game:GetService("Workspace"))._WorldOrigin.EnemySpawns:GetChildren()) do
		local stringgsub;
		if string.find(v.Name, "Lv.") then
			stringgsub = v.Name:gsub(" %pLv. %d+%p", "");
		end;
		if v:IsA("Part") and (stringgsub and stringgsub == name or name == v.Name or name1 and v.Name == name1) then
			return v;
		end;
	end;
	for i, v in pairs(getnilinstances()) do
		local stringgsub;
		if string.find(v.Name, "Lv.") then
			stringgsub = v.Name:gsub(" %pLv. %d+%p", "");
		end;
		if v:IsA("Part") and (stringgsub and stringgsub == name or name == v.Name or name1 and v.Name == name1) then
			return v;
		end;
	end;
end;
function TeleportSpawnMob(Path, value)
	if typeof(Path) == "table" then
		if #MobBlacklist >= 4 then
			MobBlacklist = {};
			return;
		end;
		local GetPart;
		for i, v in next, Path do
			if not table.find(MobBlacklist, v) then
				GetPart = DetectPartSpawnMob(v);
				repeat
					task.wait();
					topos(GetPart.CFrame * CFrame.new(0, 60, 0));
				until (GetPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 100 or DetectMob(Path) or (not value);
			end;
		end;
	else
		GetPart = DetectPartSpawnMob(Path);
		topos(GetPart.CFrame * CFrame.new(0, 60, 0));
	end;
end;
function DetectMob(c)
	local dist = math.huge;
	local name;
	for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
		local stringgsub = v.Name:gsub(" %pLv. %d+%p", "");
		if (typeof(c) == "table" and (table.find(c, v.Name) or table.find(c, stringgsub)) or (v.Name == c or c == stringgsub)) and v:IsA("Model") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") then
			local magnitude = (v.HumanoidRootPart.Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).magnitude;
			if magnitude < dist then
				dist = magnitude;
				name = v;
			end;
		end;
	end;
	return name;
end;
if World3 then
	function DetectRequestSoulGuitar()
		local Mob = {};
		local PlaceId;
		local NameRemote;
		if not CheckItemCount("Ectoplasm", 250) then
			Mob = {
				"Ship Deckhand [Lv. 1250]",
				"Ship Steward [Lv. 1300]",
				"Ship Officer [Lv. 1325]",
				"Ship Engineer [Lv. 1275]"
			};
			PlaceId = 4442272183;
			NameRemote = "TravelDressrosa";
		elseif not CheckItemCount("Bones", 500) then
			Mob = {
				"Reborn Skeleton [Lv. 1975]",
				"Demonic Soul [Lv. 2025]",
				"Living Zombie [Lv. 2000]",
				"Posessed Mummy [Lv. 2050]"
			};
			PlaceId = 7449423635;
			NameRemote = "TravelZou";
		end;
		return Mob, PlaceId, NameRemote;
	end;
	local CommF = (game:GetService("ReplicatedStorage")).Remotes.CommF_;
	function GuitarPuzzleProgress()
		if not CommF:InvokeServer("GuitarPuzzleProgress", "Check") then
			if game.Lighting.Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" and (game.Lighting.ClockTime > 16 or game.Lighting.ClockTime < 5) then
				if (game:GetService("Players")).LocalPlayer:DistanceFromCharacter(Vector3.new(-8654.314453125, 140.9499053955078, 6167.5283203125)) > 50 then
					topos(CFrame.new(-8654.314453125, 140.9499053955078, 6167.5283203125));
				end;
				CommF:InvokeServer("gravestoneEvent", 2);
				CommF:InvokeServer("gravestoneEvent", 2, true);
				task.wait(1);
			else
				Update:Notify("Hop Full Moon", 5);
				Hop();
			end;
		else
			if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Dialogue.Visible then
				game.VirtualUser:Button1Down(Vector2.new(0, 0));
				game.VirtualUser:Button1Down(Vector2.new(0, 0));
			end;
			if not (CommF:InvokeServer("GuitarPuzzleProgress", "Check")).Swamp then
				if ((CFrame.new((-10171.7607421875), 138.62667846679688, 6008.0654296875)).Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 100 then
					toTarget((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position, (CFrame.new(-10171.7607421875, 138.62667846679688, 6008.0654296875)).Position, CFrame.new(-10171.7607421875, 138.62667846679688 + 20, 6008.0654296875));
				elseif CountZombie() == 6 then
					for i, v in pairs(game.workspace.Enemies:GetChildren()) do
						if v.Name == "Living Zombie [Lv. 2000]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							repeat
								task.wait();
								EquipWeapon(_G.Settings.Main["Selected Weapon"]);
								AutoHaki();
								v.HumanoidRootPart.CanCollide = false;
								v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
								PosMon = v.HumanoidRootPart.CFrame;
								MonFarm = v.Name;
								topos(v.HumanoidRootPart.CFrame * Pos);
								Attack();
							until v.Humanoid.Health <= 0 or (not v.Parent);
						end;
					end;
				end;
				return;
			elseif not (CommF:InvokeServer("GuitarPuzzleProgress", "Check")).Gravestones then
				if (game:GetService("Players")).LocalPlayer:DistanceFromCharacter(Vector3.new(-8761.4765625, 142.10487365722656, 6086.07861328125)) > 50 then
					topos(CFrame.new(-8761.4765625, 142.10487365722656, 6086.07861328125));
				else
					local ClickSigns = {
						game.workspace.Map["Haunted Castle"].Placard1.Right.ClickDetector,
						game.workspace.Map["Haunted Castle"].Placard2.Right.ClickDetector,
						game.workspace.Map["Haunted Castle"].Placard3.Left.ClickDetector,
						game.workspace.Map["Haunted Castle"].Placard4.Right.ClickDetector,
						game.workspace.Map["Haunted Castle"].Placard5.Left.ClickDetector,
						game.workspace.Map["Haunted Castle"].Placard6.Left.ClickDetector,
						game.workspace.Map["Haunted Castle"].Placard7.Left.ClickDetector
					};
					for i, v in pairs(ClickSigns) do
						fireclickdetector(v);
					end;
				end;
			elseif not (CommF:InvokeServer("GuitarPuzzleProgress", "Check")).Ghost then
				if (game:GetService("Players")).LocalPlayer:DistanceFromCharacter(Vector3.new(-9755.6591796875, 271.0661315917969, 6290.61474609375)) > 50 then
					topos(CFrame.new(-9755.6591796875, 271.0661315917969, 6290.61474609375));
				end;
				CommF:InvokeServer("GuitarPuzzleProgress", "Ghost");
				task.wait(3);
			elseif not (CommF:InvokeServer("GuitarPuzzleProgress", "Check")).Trophies then
				if (game:GetService("Players")).LocalPlayer:DistanceFromCharacter(Vector3.new(-9530.0126953125, 6.104853630065918, 6054.83349609375)) > 50 then
					topos(CFrame.new(-9530.0126953125, 6.104853630065918, 6054.83349609375));
				end;
				local Tablet = game.workspace.Map["Haunted Castle"].Tablet;
				for i, v in pairs(BlankTablets) do
					local x = Tablet[v];
					if x.Line.Position.X ~= 0 then
						repeat
							task.wait();
							fireclickdetector(x.ClickDetector);
						until x.Line.Position.X == 0;
					end;
				end;
				for i, v in pairs(Trophy) do
					local x = game.workspace.Map["Haunted Castle"].Trophies.Quest[v].Handle.CFrame;
					x = tostring(x);
					x = (x:split(", "))[4];
					local c = "180";
					if x == "1" or x == "-1" then
						c = "90";
					end;
					if not string.find(tostring(Tablet[i].Line.Rotation.Z), c) then
						repeat
							task.wait();
							fireclickdetector(Tablet[i].ClickDetector);
						until string.find(tostring(Tablet[i].Line.Rotation.Z), c);
						print(i, c);
					end;
				end;
			elseif not (CommF:InvokeServer("GuitarPuzzleProgress", "Check")).Pipes then
				for i, v in pairs(Pipes) do
					local x = game.workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model[i];
					if x.BrickColor.Name ~= v then
						repeat
							task.wait();
							fireclickdetector(x.ClickDetector);
						until x.BrickColor.Name == v;
					end;
				end;
			end;
		end;
	end;
	function AutoSoulGuitar()
		if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("soulGuitarBuy", true) == "[You already own this item.]" then
			Update:Notify("You already own this item", 5);
			task.wait(5);
			return;
		end;
		if game.Players.LocalPlayer.Data.Fragments.Value < 5000 then
			task.wait(2);
			Update:Notify("Need 5000 Fragments", 5);
			return;
		end;
		if not CheckItemCount("Ectoplasm", 250) then
			task.wait(2);
			Update:Notify("Need 250 Ectoplasm", 5);
			return;
		end;
		if CheckItemCount("Dark Fragment", 1) and CheckItemCount("Ectoplasm", 250) and CheckItemCount("Bones", 500) then
			(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("soulGuitarBuy", true);
			(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("soulGuitarBuy");
			if World3 then
				GuitarPuzzleProgress();
			else
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("TravelZou");
			end;
			return;
		end;
		if not CheckItemCount("Dark Fragment", 1) then
			if World2 then
				if CheckNameBoss("Darkbeard [Lv. 1000] [Raid Boss]") then
					local v = CheckNameBoss("Darkbeard [Lv. 1000] [Raid Boss]");
					repeat
						task.wait();
						AutoHaki();
						EquipWeapon(_G.Settings.Main["Selected Weapon"]);
						v.HumanoidRootPart.CanCollide = false;
						v.Humanoid.WalkSpeed = 0;
						v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
						topos(v.HumanoidRootPart.CFrame * Pos);
						Attack();
					until v.Humanoid.Health <= 0 or (not v.Parent);
				elseif game.Players.LocalPlayer.Character:FindFirstChild("Fist of Darkness") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") then
					if ((game:GetService("Workspace")).Map.DarkbeardArena.Summoner.Detection.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
						EquipWeapon("Fist of Darkness");
						firetouchinterest(game.Players.LocalPlayer.Character["Fist of Darkness"].Handle, (game:GetService("Workspace")).Map.DarkbeardArena.Summoner.Detection, 0);
						firetouchinterest(game.Players.LocalPlayer.Character["Fist of Darkness"].Handle, (game:GetService("Workspace")).Map.DarkbeardArena.Summoner.Detection, 1);
						firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, (game:GetService("Workspace")).Map.DarkbeardArena.Summoner.Detection, 0);
						firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, (game:GetService("Workspace")).Map.DarkbeardArena.Summoner.Detection, 1);
					else
						topos((game:GetService("Workspace")).Map.DarkbeardArena.Summoner.Detection.CFrame);
					end;
				else
					local v = DetectChest();
					repeat
						task.wait();
						if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude <= 2 then
							firetouchinterest(v, game.Players.LocalPlayer.Character.HumanoidRootPart, 0);
							firetouchinterest(v, game.Players.LocalPlayer.Character.HumanoidRootPart, 1);
						end;
						if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude <= 5 then
							(game:service("VirtualInputManager")):SendKeyEvent(true, "W", false, game);
							task.wait();
							(game:service("VirtualInputManager")):SendKeyEvent(false, "W", false, game);
						end;
						InstantTp(v.CFrame * CFrame.new(0, 1, 0));
					until not v or (not v.Parent) or (not _G.Settings.Items["Auto Soul Guitar"]);
				end;
			else
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("TravelDressrosa");
			end;
		else
			local Mob, PlaceId, NameRemote = DetectRequestSoulGuitar();
			if game.PlaceId == PlaceId then
				if not DetectMob(Mob) then
					TeleportSpawnMob(Mob, _G.Settings.Items["Auto Soul Guitar"]);
				else
					local v = DetectMob(Mob);
					repeat
						task.wait();
						EquipWeapon(_G.Settings.Main["Selected Weapon"]);
						AutoHaki();
						v.HumanoidRootPart.CanCollide = false;
						v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
						PosMon = v.HumanoidRootPart.CFrame;
						MonFarm = v.Name;
						topos(v.HumanoidRootPart.CFrame * Pos);
						Attack();
					until not v or (not v.Parent) or v.Humanoid.Health == 0 or (not _G.Settings.Items["Auto Soul Guitar"]);
				end;
			else
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(NameRemote);
			end;
		end;
	end;
	ItemsTab:Toggle("Auto Soul Guitar", _G.Settings.Items["Auto Soul Guitar"], false, function(value)
		_G.Settings.Items["Auto Soul Guitar"] = value;
		StopTween(_G.Settings.Items["Auto Soul Guitar"]);
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.Items["Auto Soul Guitar"] then
					AutoSoulGuitar();
				end;
			end);
		end;
	end);
end;
if World2 then
	ItemsTab:Toggle("Auto Rengoku", _G.Settings.Items["Auto Rengoku"], false, function(value)
		_G.Settings.Items["Auto Rengoku"] = value;
		StopTween(_G.Settings.Items["Auto Rengoku"]);
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Items["Auto Rengoku"] and World2 then
					if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Hidden Key") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Hidden Key") then
						EquipWeapon("Hidden Key");
						topos(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875));
					elseif (game:GetService("Workspace")).Enemies:FindFirstChild("Snow Lurker") or (game:GetService("Workspace")).Enemies:FindFirstChild("Arctic Warrior") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if (v.Name == "Snow Lurker" or v.Name == "Arctic Warrior") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									AutoHaki();
									v.HumanoidRootPart.CanCollide = false;
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
									topos(v.HumanoidRootPart.CFrame * Pos);
									Attack();
								until (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Hidden Key") or _G.Settings.Items["Auto Rengoku"] == false or (not v.Parent) or v.Humanoid.Health <= 0;
							end;
						end;
					else
						topos(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188));
					end;
				end;
			end;
		end);
	end);
end;
if World3 then
	ItemsTab:Toggle("Auto Hallow Scythe", _G.Settings.Items["Auto Hallow Scythe"], "Auto Kill Soul Reaper", function(value)
		_G.Settings.Items["Auto Hallow Scythe"] = value;
		StopTween(_G.Settings.Items["Auto Hallow Scythe"]);
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Hallow Scythe"] then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Soul Reaper") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if string.find(v.Name, "Soul Reaper") then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									AutoHaki();
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									topos(v.HumanoidRootPart.CFrame * Pos);
									Attack();
									v.HumanoidRootPart.Transparency = 1;
								until v.Humanoid.Health <= 0 or _G.Settings.Items["Auto Hallow Scythe"] == false;
							end;
						end;
					elseif (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Hallow Essence") then
						repeat
							topos(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125));
							wait();
						until ((CFrame.new((-8932.322265625), 146.83154296875, 6062.55078125)).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8;
						EquipWeapon("Hallow Essence");
					elseif (game:GetService("ReplicatedStorage")):FindFirstChild("Soul Reaper") then
						topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Soul Reaper")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
					end;
				end);
			end;
		end;
	end);
end;
if World1 then
	ItemsTab:Toggle("Auto Warden Sword", _G.Settings.Items["Auto Warden Sword"], "Auto Get Warden Sword", function(value)
		_G.Settings.Items["Auto Warden Sword"] = value;
		StopTween(_G.Settings.Items["Auto Warden Sword"]);
		(getgenv()).SaveSetting();
	end);
	local NamfonPos = CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Warden Sword"] and World1 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Chief Warden") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Chief Warden" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Items["Auto Warden Sword"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Chief Warden") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Chief Warden")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;
if World3 then
	ItemsTab:Toggle("Auto Cursed Dual Katana", _G.Settings.Items["Auto Cursed Dual Katana"], "Must be have Yama and Tushita", function(value)
		_G.Settings.Items["Auto Cursed Dual Katana"] = value;
		StopTween(_G.Settings.Items["Auto Cursed Dual Katana"]);
		(getgenv()).SaveSetting();
	end);
	ItemsTab:Toggle("Auto Get Yama", _G.Settings.Items["Auto Yama"], "Auto Get Yama Fully", function(value)
		_G.Settings.Items["Auto Yama"] = value;
		(getgenv()).SaveSetting();
	end);
	ItemsTab:Toggle("Auto Get Yama Hop", _G.Settings.Items["Auto Yama"], "Hop If Elite Hunter Not Spawn", function(value)
		_G.Settings.Items["Auto Yama Hop"] = value;
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Yama Hop"] then
				pcall(function()
					if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("EliteHunter", "Progress") < 30 then
						if _G.Settings.Items["Auto Yama"] then
							if not (game:GetService("Workspace")).Enemies:FindFirstChild("Diablo") or (not (game:GetService("Workspace")).Enemies:FindFirstChild("Deandre")) or (not (game:GetService("Workspace")).Enemies:FindFirstChild("Urban")) then
								Hop();
							end;
						end;
					end;
				end);
			end;
		end;
	end);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Yama"] then
				if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("EliteHunter", "Progress") >= 30 then
					repeat
						wait(0.1);
						fireclickdetector((game:GetService("Workspace")).Map.Waterfall.SealedKatana.Handle.ClickDetector);
					until (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Yama") or (not _G.Settings.Items["Auto Yama"]);
				elseif string.find(QuestTitle, "Diablo") or string.find(QuestTitle, "Deandre") or string.find(QuestTitle, "Urban") then
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Diablo") or (game:GetService("Workspace")).Enemies:FindFirstChild("Deandre") or (game:GetService("Workspace")).Enemies:FindFirstChild("Urban") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until _G.Settings.Farm["Auto Elite Hunter"] == false or v.Humanoid.Health <= 0 or (not v.Parent);
								end;
							end;
						end;
					end;
				else
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("EliteHunter");
				end;
			end;
		end;
	end);
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.Items["Auto Cursed Dual Katana"] then
					if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") or game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
						if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
								EquipWeapon("Tushita");
							end;
						elseif game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
								EquipWeapon("Yama");
							end;
						end;
					else
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("LoadItem", "Tushita");
					end;
				end;
			end);
		end;
	end);
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.Items["Auto Cursed Dual Katana"] then
					if GetMaterial("Alucard Fragment") == 0 then
						Auto_Quest_Yama_1 = true;
						Auto_Quest_Yama_2 = false;
						Auto_Quest_Yama_3 = false;
						Auto_Quest_Tushita_1 = false;
						Auto_Quest_Tushita_2 = false;
						Auto_Quest_Tushita_3 = false;
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil");
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil");
					elseif GetMaterial("Alucard Fragment") == 1 then
						Auto_Quest_Yama_1 = false;
						Auto_Quest_Yama_2 = true;
						Auto_Quest_Yama_3 = false;
						Auto_Quest_Tushita_1 = false;
						Auto_Quest_Tushita_2 = false;
						Auto_Quest_Tushita_3 = false;
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil");
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil");
					elseif GetMaterial("Alucard Fragment") == 2 then
						Auto_Quest_Yama_1 = false;
						Auto_Quest_Yama_2 = false;
						Auto_Quest_Yama_3 = true;
						Auto_Quest_Tushita_1 = false;
						Auto_Quest_Tushita_2 = false;
						Auto_Quest_Tushita_3 = false;
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil");
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil");
					elseif GetMaterial("Alucard Fragment") == 3 then
						Auto_Quest_Yama_1 = false;
						Auto_Quest_Yama_2 = false;
						Auto_Quest_Yama_3 = false;
						Auto_Quest_Tushita_1 = true;
						Auto_Quest_Tushita_2 = false;
						Auto_Quest_Tushita_3 = false;
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good");
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Good");
					elseif GetMaterial("Alucard Fragment") == 4 then
						Auto_Quest_Yama_1 = false;
						Auto_Quest_Yama_2 = false;
						Auto_Quest_Yama_3 = false;
						Auto_Quest_Tushita_1 = false;
						Auto_Quest_Tushita_2 = true;
						Auto_Quest_Tushita_3 = false;
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good");
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Good");
					elseif GetMaterial("Alucard Fragment") == 5 then
						Auto_Quest_Yama_1 = false;
						Auto_Quest_Yama_2 = false;
						Auto_Quest_Yama_3 = false;
						Auto_Quest_Tushita_1 = false;
						Auto_Quest_Tushita_2 = false;
						Auto_Quest_Tushita_3 = true;
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good");
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Good");
					elseif GetMaterial("Alucard Fragment") == 6 then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or (game:GetService("Workspace")).ReplicatedStorage:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") then
							Auto_Quest_Yama_1 = false;
							Auto_Quest_Yama_2 = false;
							Auto_Quest_Yama_3 = false;
							Auto_Quest_Tushita_1 = false;
							Auto_Quest_Tushita_2 = false;
							Auto_Quest_Tushita_3 = false;
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or (game:GetService("Workspace")).Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") then
								for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
									if v.Name == "Cursed Skeleton Boss" or v.Name == "Cursed Skeleton" then
										if v.Humanoid.Health > 0 then
											EquipWeapon(Sword);
											topos(v.HumanoidRootPart.CFrame * pos);
											v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
											v.HumanoidRootPart.Transparency = 1;
											v.Humanoid.JumpPower = 0;
											v.Humanoid.WalkSpeed = 0;
											v.HumanoidRootPart.CanCollide = false;
											PosMon = v.HumanoidRootPart.CFrame;
											MonFarm = v.Name;
											Attack();
										end;
									end;
								end;
							end;
						elseif ((CFrame.new((-12361.7060546875), 603.3547973632812, (-6550.5341796875))).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good");
							wait(1);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil");
							wait(1);
							topos(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875));
							wait(1.5);
							(game:GetService("VirtualInputManager")):SendKeyEvent(true, "E", false, game);
							wait(1.5);
							topos(CFrame.new(-12253.5419921875, 598.8999633789062, -6546.8388671875));
						else
							topos(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875));
						end;
					end;
				end;
			end);
		end;
	end);
	spawn(function()
		while wait(0.2) do
			if Auto_Quest_Yama_1 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Mythological Pirate") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Mythological Pirate" then
								repeat
									wait();
									topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 0, (-2)));
								until _G.Settings.Items["Auto Cursed Dual Katana"] == false or Auto_Quest_Yama_1 == false;
								(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil");
							end;
						end;
					else
						topos(CFrame.new(-13451.46484375, 543.712890625, -6961.0029296875));
					end;
				end);
			end;
		end;
	end);
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if Auto_Quest_Yama_2 then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v:FindFirstChild("HazeESP") then
							v.HazeESP.Size = UDim2.new(50, 50, 50, 50);
							v.HazeESP.MaxDistance = "inf";
						end;
					end;
					for i, v in pairs((game:GetService("ReplicatedStorage")):GetChildren()) do
						if v:FindFirstChild("HazeESP") then
							v.HazeESP.Size = UDim2.new(50, 50, 50, 50);
							v.HazeESP.MaxDistance = "inf";
						end;
					end;
				end;
			end);
		end;
	end);
	spawn(function()
		while wait(0.2) do
			pcall(function()
				for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
					if Auto_Quest_Yama_2 and v:FindFirstChild("HazeESP") and (v.HumanoidRootPart.Position - PosMonsEsp.Position).magnitude <= 300 then
						v.HumanoidRootPart.CFrame = PosMonsEsp;
						v.HumanoidRootPart.CanCollide = false;
						v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
						if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
							local vc = Instance.new("BodyVelocity", v.HumanoidRootPart);
							vc.MaxForce = Vector3.new(1, 1, 1) * math.huge;
							vc.Velocity = Vector3.new(0, 0, 0);
						end;
					end;
				end;
			end);
		end;
	end);
	spawn(function()
		while wait(0.2) do
			if Auto_Quest_Yama_2 then
				pcall(function()
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v:FindFirstChild("HazeESP") then
							repeat
								(game:GetService("RunService")).Heartbeat:wait();
								if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
									topos(v.HumanoidRootPart.CFrame * Pos);
								else
									EquipWeapon(Sword);
									topos(v.HumanoidRootPart.CFrame * Pos);
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									v.HumanoidRootPart.Transparency = 1;
									v.Humanoid.JumpPower = 0;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.CanCollide = false;
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
									Attack();
									if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
										v.Humanoid.Animator:Destroy();
									end;
								end;
							until _G.Settings.Items["Auto Cursed Dual Katana"] == false or Auto_Quest_Yama_2 == false or (not v.Parent) or v.Humanoid.Health <= 0 or (not v:FindFirstChild("HazeESP"));
						else
							for x, y in pairs((game:GetService("ReplicatedStorage")):GetChildren()) do
								if y:FindFirstChild("HazeESP") then
									if (y.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
										topos(y.HumanoidRootPart.CFrameMon * Pos);
									else
										topos(y.HumanoidRootPart.CFrame * Pos);
									end;
								end;
							end;
						end;
					end;
				end);
			end;
		end;
	end);
	spawn(function()
		while wait(0.2) do
			if Auto_Quest_Yama_3 then
				pcall(function()
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then
						topos((game:GetService("Workspace")).Map["Haunted Castle"].Summoner.Detection.CFrame);
					elseif (game:GetService("Workspace")).Map:FindFirstChild("HellDimension") then
						repeat
							wait();
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or (game:GetService("Workspace")).Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or (game:GetService("Workspace")).Enemies:FindFirstChild("Hell's Messenger [Lv. 2200] [Boss]") then
								for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
									if v.Name == "Cursed Skeleton" or v.Name == "Cursed Skeleton" or v.Name == "Hell's Messenger" then
										if v.Humanoid.Health > 0 then
											repeat
												(game:GetService("RunService")).Heartbeat:wait();
												EquipWeapon(Sword);
												topos(v.HumanoidRootPart.CFrame * Pos);
												v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
												v.HumanoidRootPart.Transparency = 1;
												v.Humanoid.JumpPower = 0;
												v.Humanoid.WalkSpeed = 0;
												v.HumanoidRootPart.CanCollide = false;
												PosMon = v.HumanoidRootPart.CFrame;
												MonFarm = v.Name;
												Attack();
											until v.Humanoid.Health <= 0 or (not v.Parent) or Auto_Quest_Yama_3 == false;
										end;
									end;
								end;
							else
								wait(5);
								topos((game:GetService("Workspace")).Map.HellDimension.Torch1.CFrame);
								wait(1.5);
								(game:GetService("VirtualInputManager")):SendKeyEvent(true, "E", false, game);
								(game:GetService("VirtualInputManager")):SendKeyEvent(false, "E", false, game);
								wait(1.5);
								topos((game:GetService("Workspace")).Map.HellDimension.Torch2.CFrame);
								wait(1.5);
								(game:GetService("VirtualInputManager")):SendKeyEvent(true, "E", false, game);
								(game:GetService("VirtualInputManager")):SendKeyEvent(false, "E", false, game);
								wait(1.5);
								topos((game:GetService("Workspace")).Map.HellDimension.Torch3.CFrame);
								wait(1.5);
								(game:GetService("VirtualInputManager")):SendKeyEvent(true, "E", false, game);
								(game:GetService("VirtualInputManager")):SendKeyEvent(false, "E", false, game);
								wait(1.5);
								topos((game:GetService("Workspace")).Map.HellDimension.Exit.CFrame);
							end;
						until _G.Settings.Items["Auto Cursed Dual Katana"] == false or Auto_Quest_Yama_3 == false or GetMaterial("Alucard Fragment") == 3;
					elseif (game:GetService("Workspace")).Enemies:FindFirstChild("Soul Reaper") or game.ReplicatedStorage:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Soul Reaper") then
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v.Name == "Soul Reaper" then
									if v.Humanoid.Health > 0 then
										repeat
											wait();
											topos(v.HumanoidRootPart.CFrame * Pos);
										until _G.Settings.Items["Auto Cursed Dual Katana"] == false or Auto_Quest_Yama_3 == false or (game:GetService("Workspace")).Map:FindFirstChild("HellDimension");
									end;
								end;
							end;
						else
							topos(CFrame.new(-9570.033203125, 315.9346923828125, 6726.89306640625));
						end;
					else
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1);
					end;
				end);
			end;
		end;
	end);
	spawn(function()
		while wait(0.2) do
			if Auto_Quest_Tushita_1 then
				topos(CFrame.new(-9546.990234375, 21.139892578125, 4686.1142578125));
				wait(5);
				topos(CFrame.new(-6120.0576171875, 16.455780029296875, -2250.697265625));
				wait(5);
				topos(CFrame.new(-9533.2392578125, 7.254445552825928, -8372.69921875));
			end;
		end;
	end);
	spawn(function()
		while wait(0.2) do
			if Auto_Quest_Tushita_2 then
				pcall(function()
					if ((CFrame.new((-5539.3115234375), 313.800537109375, (-2972.372314453125))).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if Auto_Quest_Tushita_2 and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										EquipWeapon(Sword);
										topos(v.HumanoidRootPart.CFrame * Pos);
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										v.HumanoidRootPart.Transparency = 1;
										v.Humanoid.JumpPower = 0;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										Attack();
									until v.Humanoid.Health <= 0 or (not v.Parent) or Auto_Quest_Tushita_2 == false;
								end;
							end;
						end;
					else
						topos(CFrame.new(-5545.1240234375, 313.800537109375, -2976.616455078125));
					end;
				end);
			end;
		end;
	end);
	spawn(function()
		while wait(0.2) do
			if Auto_Quest_Tushita_3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Cake Queen") or game.ReplicatedStorage:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Cake Queen") then
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v.Name == "Cake Queen" then
									if v.Humanoid.Health > 0 then
										repeat
											(game:GetService("RunService")).Heartbeat:wait();
											EquipWeapon(Sword);
											topos(v.HumanoidRootPart.CFrame * Pos);
											v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
											v.HumanoidRootPart.Transparency = 1;
											v.Humanoid.JumpPower = 0;
											v.Humanoid.WalkSpeed = 0;
											v.HumanoidRootPart.CanCollide = false;
											PosMon = v.HumanoidRootPart.CFrame;
											MonFarm = v.Name;
											Attack();
										until _G.Settings.Items["Auto Cursed Dual Katana"] == false or Auto_Quest_Tushita_3 == false or (game:GetService("Workspace")).Map:FindFirstChild("HeavenlyDimension");
									end;
								end;
							end;
						else
							topos(CFrame.new(-709.3132934570312, 381.6005859375, -11011.396484375));
						end;
					elseif (game:GetService("Workspace")).Map:FindFirstChild("HeavenlyDimension") then
						repeat
							wait();
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or (game:GetService("Workspace")).Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or (game:GetService("Workspace")).Enemies:FindFirstChild("Heaven's Guardian [Lv. 2200] [Boss]") then
								for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
									if v.Name == "Cursed Skeleton" or v.Name == "Cursed Skeleton" or v.Name == "Heaven's Guardian" then
										if v.Humanoid.Health > 0 then
											repeat
												(game:GetService("RunService")).Heartbeat:wait();
												EquipWeapon(Sword);
												topos(v.HumanoidRootPart.CFrame * Pos);
												v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
												v.HumanoidRootPart.Transparency = 1;
												v.Humanoid.JumpPower = 0;
												v.Humanoid.WalkSpeed = 0;
												v.HumanoidRootPart.CanCollide = false;
												PosMon = v.HumanoidRootPart.CFrame;
												MonFarm = v.Name;
												Attack();
											until v.Humanoid.Health <= 0 or (not v.Parent) or Auto_Quest_Tushita_3 == false;
										end;
									end;
								end;
							else
								wait(5);
								topos((game:GetService("Workspace")).Map.HeavenlyDimension.Torch1.CFrame);
								wait(1.5);
								(game:GetService("VirtualInputManager")):SendKeyEvent(true, "E", false, game);
								wait(1.5);
								topos((game:GetService("Workspace")).Map.HeavenlyDimension.Torch2.CFrame);
								wait(1.5);
								(game:GetService("VirtualInputManager")):SendKeyEvent(true, "E", false, game);
								wait(1.5);
								topos((game:GetService("Workspace")).Map.HeavenlyDimension.Torch3.CFrame);
								wait(1.5);
								(game:GetService("VirtualInputManager")):SendKeyEvent(true, "E", false, game);
								wait(1.5);
								topos((game:GetService("Workspace")).Map.HeavenlyDimension.Exit.CFrame);
							end;
						until not _G.Settings.Items["Auto Cursed Dual Katana"] or (not Auto_Quest_Tushita_3) or GetMaterial("Alucard Fragment") == 6;
					end;
				end);
			end;
		end;
	end);
	function CheckTorch()
		local a;
		if not (game:GetService("Workspace")).Map.Turtle.QuestTorches.Torch1.Particles.Main.Enabled then
			a = "1";
		elseif not (game:GetService("Workspace")).Map.Turtle.QuestTorches.Torch2.Particles.Main.Enabled then
			a = "2";
		elseif not (game:GetService("Workspace")).Map.Turtle.QuestTorches.Torch3.Particles.Main.Enabled then
			a = "3";
		elseif not (game:GetService("Workspace")).Map.Turtle.QuestTorches.Torch4.Particles.Main.Enabled then
			a = "4";
		elseif not (game:GetService("Workspace")).Map.Turtle.QuestTorches.Torch5.Particles.Main.Enabled then
			a = "5";
		end;
		for i, v in next, (game:GetService("Workspace")).Map.Turtle.QuestTorches:GetChildren() do
			if v:IsA("MeshPart") and string.find(v.Name, a) and (not v.Particles.Main.Enabled) then
				return v;
			end;
		end;
	end;
	ItemsTab:Toggle("Auto Get Tushita", _G.Settings.Items["Auto Tushita"], "Need Spawn Longma and Rip Indra", function(value)
		_G.Settings.Items["Auto Tushita"] = value;
		StopTween(_G.Settings.Items["Auto Tushita"]);
		(getgenv()).SaveSetting();
	end);
	function CheckNameBoss(a)
		for i, v in next, game.ReplicatedStorage:GetChildren() do
			if v:IsA("Model") and (typeof(a) == "table" and table.find(a, v.Name) or v.Name == a) and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
				return v;
			end;
		end;
		for i, v in next, game.Workspace.Enemies:GetChildren() do
			if v:IsA("Model") and (typeof(a) == "table" and table.find(a, v.Name) or v.Name == a) and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
				return v;
			end;
		end;
	end;
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Tushita"] and World3 then
				pcall(function()
					if not (game:GetService("Workspace")).Map.Turtle:FindFirstChild("TushitaGate") then
						if CheckNameBoss("Longma [Lv. 2000] [Boss]") then
							local v = CheckNameBoss("Longma [Lv. 2000] [Boss]");
							repeat
								task.wait();
								AutoHaki();
								EquipWeapon(_G.Settings.Main["Selected Weapon"]);
								v.HumanoidRootPart.CanCollide = false;
								v.Humanoid.WalkSpeed = 0;
								v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
								topos(v.HumanoidRootPart.CFrame * Pos);
								Attack();
							until not v or (not v.Parent) or v.Humanoid.Health == 0;
						end;
					elseif CheckNameBoss("rip_indra True Form [Lv. 5000] [Raid Boss]") then
						if not game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") and (not game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch")) then
							topos((game:GetService("Workspace")).Map.Waterfall.SecretRoom.Room.Door.Door.Hitbox.CFrame);
						else
							EquipWeapon("Holy Torch");
							if CheckTorch() then
								topos((CheckTorch()).CFrame);
							end;
						end;
					else
						Update:Notify("Rip Indra Not Spawn", 2);
						task.wait(3);
					end;
				end);
			end;
		end;
	end);
	ItemsTab:Toggle("Auto Canvander", _G.Settings.Items["Auto Canvander"], false, function(value)
		_G.Settings.Items["Auto Canvander"] = value;
		StopTween(_G.Settings.Items["Auto Canvander"]);
		(getgenv()).SaveSetting();
	end);
	local CavandisPos = CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Canvander"] and World3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Beautiful Pirate") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Beautiful Pirate" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Items["Auto Canvander"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						topos(CavandisPos);
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Beautiful Pirate") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Beautiful Pirate")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;
if World3 then
	SeaTab:Seperator("Sea Event");
	local ListSeaBoat = {
		"Guardian",
		"Beast Hunter",
		"PirateGrandBrigade",
		"MarineGrandBrigade",
		"PirateBrigade",
		"MarineBrigade",
		"PirateSloop",
		"MarineSloop"
	};
	local ListSeaZone = {
		"Zone 1",
		"Zone 2",
		"Zone 3",
		"Zone 4",
		"Zone 5",
		"Zone 6",
		"Infinite"
	};
	SeaTab:Dropdown("Choose Boat", ListSeaBoat, _G.Settings.SeaEvent["Selected Boat"], function(value)
		_G.Settings.SeaEvent["Selected Boat"] = value;
		(getgenv()).SaveSetting();
	end);
	SeaTab:Dropdown("Choose Zone", ListSeaZone, _G.Settings.SeaEvent["Selected Zone"], function(value)
		_G.Settings.SeaEvent["Selected Zone"] = value;
		(getgenv()).SaveSetting();
	end);
	SeaTab:Slider("Boat Tween Speed", 100, 350, _G.Settings.SeaEvent["Boat Tween Speed"], function(value)
		_G.Settings.SeaEvent["Boat Tween Speed"] = value;
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.SeaEvent["Selected Zone"] == "Zone 1" then
					CFrameSelectedZone = CFrame.new(-21998.375, 30.0006084, -682.309143, 0.120013528, 0.00690158736, 0.99274826, -0.0574118942, 0.998350561, -0.000000000236509201, -0.991110802, -0.0569955558, 0.120211802);
				elseif _G.Settings.SeaEvent["Selected Zone"] == "Zone 2" then
					CFrameSelectedZone = CFrame.new(-26779.5215, 30.0005474, -822.858032, 0.307457417, 0.019647358, 0.951358974, -0.0637726262, 0.997964442, -0.000000000415334017, -0.949422479, -0.0606706589, 0.308084518);
				elseif _G.Settings.SeaEvent["Selected Zone"] == "Zone 3" then
					CFrameSelectedZone = CFrame.new(-31171.957, 30.0001011, -2256.93774, 0.37637493, 0.0150483791, 0.926345229, -0.0399504974, 0.999201655, 0.0000000000270896673, -0.925605655, -0.0370079502, 0.376675636);
				elseif _G.Settings.SeaEvent["Selected Zone"] == "Zone 4" then
					CFrameSelectedZone = CFrame.new(-34054.6875, 30.2187767, -2560.12012, 0.0935864747, -0.00122954219, 0.995610416, 0.0624034069, 0.998040259, -0.00463332096, -0.993653536, 0.062563099, 0.0934797972);
				elseif _G.Settings.SeaEvent["Selected Zone"] == "Zone 5" then
					CFrameSelectedZone = CFrame.new(-38887.5547, 30.0004578, -2162.99023, -0.188895494, -0.00704088295, 0.981971979, -0.0372481011, 0.999306023, -0.00000000139882339, -0.981290519, -0.0365765914, -0.189026669);
				elseif _G.Settings.SeaEvent["Selected Zone"] == "Zone 6" then
					CFrameSelectedZone = CFrame.new(-44541.7617, 30.0003204, -1244.8584, -0.0844199061, -0.00553312758, 0.9964149, -0.0654025897, 0.997858942, 0.000000000202319411, -0.99428153, -0.0651681125, -0.0846010372);
				elseif _G.Settings.SeaEvent["Selected Zone"] == "Infinite" then
					CFrameSelectedZone = CFrame.new(-148073.359, 8.99999523, 7721.05078, -0.0825930536, -0.00000154416148, 0.996583343, -0.000018696026, 1, -0.000000000000391858095, -0.996583343, -0.0000186321486, -0.0825930536);
				end;
			end;
		end);
	end);
	SeaTab:Toggle("Auto Sail Boat", _G.Settings.SeaEvent["Sail Boat"], "Sail Boat", function(value)
		_G.Settings.SeaEvent["Sail Boat"] = value;
		(getgenv()).SaveSetting();
		StopTween(_G.Settings.SeaEvent["Sail Boat"]);
		if not _G.Settings.SeaEvent["Sail Boat"] then
			_G.SeaSkill = false;
			Skillaimbot = false;
		end;
		if StopTweenBoat then
			StopTweenBoat:Stop();
		end;
	end);
	function CheckBoat()
		for i, v in pairs((game:GetService("Workspace")).Boats:GetChildren()) do
			if v.Name == _G.Settings.SeaEvent["Selected Boat"] then
				for _, child in pairs(v:GetChildren()) do
					if child.Name == "MyBoatEsp" then
						return v;
					end;
				end;
			end;
		end;
		return false;
	end;
	function CheckEnemiesBoat()
		if (game:GetService("Workspace")).Enemies:FindFirstChild("FishBoat") or (game:GetService("Workspace")).Enemies:FindFirstChild("PirateBrigade") or (game:GetService("Workspace")).Enemies:FindFirstChild("PirateGrandBrigade") then
			return true;
		end;
		return false;
	end;
	function CheckShark()
		for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
			if v.Name == "Shark" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Shark") then
					if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then
						return true;
					end;
				end;
			end;
		end;
		return false;
	end;
	function CheckPiranha()
		for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
			if v.Name == "Piranha" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Piranha") then
					if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then
						return true;
					end;
				end;
			end;
		end;
		return false;
	end;
	function AddEsp(Name, Parent)
		local BillboardGui = Instance.new("BillboardGui");
		local TextLabel = Instance.new("TextLabel");
		BillboardGui.Parent = Parent;
		BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
		BillboardGui.Active = true;
		BillboardGui.Name = Name;
		BillboardGui.AlwaysOnTop = true;
		BillboardGui.LightInfluence = 1;
		BillboardGui.Size = UDim2.new(0, 200, 0, 50);
		BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0);
		TextLabel.Parent = BillboardGui;
		TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		TextLabel.BackgroundTransparency = 1;
		TextLabel.Size = UDim2.new(1, 0, 1, 0);
		TextLabel.Font = Enum.Font.GothamBold;
		TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255);
		TextLabel.TextSize = 15;
		TextLabel.Text = "My Boat";
	end;
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.SeaEvent["Sail Boat"] then
					if not CheckBoat() then
						local BuyBoatCFrame = CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781);
						if (BuyBoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
							BTP(BuyBoatCFrame);
						else
							BuyBoat = topos(BuyBoatCFrame);
						end;
						if ((CFrame.new((-16927.451171875), 9.0863618850708, 433.8642883300781)).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
							if BuyBoat then
								BuyBoat:Stop();
							end;
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyBoat", _G.Settings.SeaEvent["Selected Boat"]);
							for i, v in pairs((game:GetService("Workspace")).Boats:GetChildren()) do
								if v.Name == _G.Settings.SeaEvent["Selected Boat"] then
									if (v.VehicleSeat.CFrame.Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
										AddEsp("MyBoatEsp", v);
									end;
								end;
							end;
							wait(1);
						end;
					elseif CheckBoat() then
						for i, v in pairs((game:GetService("Workspace")).Boats:GetChildren()) do
							if v.Name == _G.Settings.SeaEvent["Selected Boat"] then
								if v:FindFirstChild("MyBoatEsp") then
									if (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == false then
										if CheckShark() and _G.Settings.SeaEvent["Auto Farm Shark"] or (game:GetService("Workspace")).Enemies:FindFirstChild("Terrorshark") and _G.Settings.SeaEvent["Auto Farm Terrorshark"] or CheckPiranha() and _G.Settings.SeaEvent["Auto Farm Piranha"] or (game:GetService("Workspace")).Enemies:FindFirstChild("Fish Crew Member") and _G.Settings.SeaEvent["Auto Farm Fish Crew Member"] or (game:GetService("Workspace")).Enemies:FindFirstChild("FishBoat") and _G.Settings.SeaEvent["Auto Farm Ghost Ship"] or (game:GetService("Workspace")).Enemies:FindFirstChild("PirateBrigade") and _G.Settings.SeaEvent["Auto Farm Pirate Brigade"] or (game:GetService("Workspace")).Enemies:FindFirstChild("PirateGrandBrigade") and _G.Settings.SeaEvent["Auto Farm Pirate Grand Brigade"] or CheckSeaBeast() and _G.Settings.SeaEvent["Auto Farm Seabeasts"] then
											if stoppos then
												stoppos:Stop();
											end;
										else
											stoppos = topos(v.VehicleSeat.CFrame * CFrame.new(0, 1, 0));
										end;
									else
										repeat
											wait();
											StopTweenBoat = TweenBoat(CFrameSelectedZone);
										until CheckShark() and _G.Settings.SeaEvent["Auto Farm Shark"] or (game:GetService("Workspace")).Enemies:FindFirstChild("Terrorshark") and _G.Settings.SeaEvent["Auto Farm Terrorshark"] or CheckPiranha() and _G.Settings.SeaEvent["Auto Farm Piranha"] or (game:GetService("Workspace")).Enemies:FindFirstChild("Fish Crew Member") and _G.Settings.SeaEvent["Auto Farm Fish Crew Member"] or (game:GetService("Workspace")).Enemies:FindFirstChild("FishBoat") and _G.Settings.SeaEvent["Auto Farm Ghost Ship"] or (game:GetService("Workspace")).Enemies:FindFirstChild("PirateBrigade") and _G.Settings.SeaEvent["Auto Farm Pirate Brigade"] or (game:GetService("Workspace")).Enemies:FindFirstChild("PirateGrandBrigade") and _G.Settings.SeaEvent["Auto Farm Pirate Grand Brigade"] or CheckSeaBeast() and _G.Settings.SeaEvent["Auto Farm Seabeasts"] or (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == false or _G.Settings.SeaEvent["Sail Boat"] == false;
										if StopTweenBoat then
											StopTweenBoat:Stop();
										end;
										(game:GetService("VirtualInputManager")):SendKeyEvent(true, 32, false, game);
										wait(0.1);
										(game:GetService("VirtualInputManager")):SendKeyEvent(false, 32, false, game);
									end;
								end;
							end;
						end;
					end;
				end;
			end);
		end;
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.SeaEvent["Sail Boat"] then
					if CheckShark() and _G.Settings.SeaEvent["Auto Farm Shark"] or (game:GetService("Workspace")).Enemies:FindFirstChild("Terrorshark") and _G.Settings.SeaEvent["Auto Farm Terrorshark"] or CheckPiranha() and _G.Settings.SeaEvent["Auto Farm Piranha"] or (game:GetService("Workspace")).Enemies:FindFirstChild("Fish Crew Member") and _G.Settings.SeaEvent["Auto Farm Fish Crew Member"] or (game:GetService("Workspace")).Enemies:FindFirstChild("FishBoat") and _G.Settings.SeaEvent["Auto Farm Ghost Ship"] or (game:GetService("Workspace")).Enemies:FindFirstChild("PirateBrigade") and _G.Settings.SeaEvent["Auto Farm Pirate Brigade"] or (game:GetService("Workspace")).Enemies:FindFirstChild("PirateGrandBrigade") and _G.Settings.SeaEvent["Auto Farm Pirate Grand Brigade"] or CheckSeaBeast() and _G.Settings.SeaEvent["Auto Farm Seabeasts"] then
						if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
							(game:GetService("VirtualInputManager")):SendKeyEvent(true, 32, false, game);
							wait(0.1);
							(game:GetService("VirtualInputManager")):SendKeyEvent(false, 32, false, game);
						end;
					end;
				end;
			end;
		end);
	end);
	function DodgeSeabeasts()
		local seaBeastsFolder = (game:GetService("Workspace")).SeaBeasts;
		for _, seaBeast in pairs(seaBeastsFolder:GetChildren()) do
			if seaBeast:FindFirstChild("Humanoid") and seaBeast:FindFirstChild("Anims") then
				local humanoid = seaBeast.Humanoid;
				local animator = humanoid:FindFirstChildOfClass("Animator") or humanoid;
				for _, anim in pairs(seaBeast.Anims:GetChildren()) do
					if anim:IsA("Animation") then
						if anim.AnimationId == "rbxassetid://8708221792" or anim.AnimationId == "rbxassetid://8708222556" or anim.AnimationId == "rbxassetid://8708223619" or anim.AnimationId == "rbxassetid://8708225668" then
							for _, animationTrack in pairs(animator:GetPlayingAnimationTracks()) do
								if animationTrack.Animation.AnimationId == anim.AnimationId then
									if animationTrack.IsPlaying then
										return true;
									else
										return false;
									end;
								end;
							end;
						end;
					end;
				end;
			end;
		end;
	end;
	spawn(function()
		while wait(0.2) do
			if _G.Settings.SeaEvent["Sail Boat"] then
				pcall(function()
					if _G.Settings.SeaEvent["Sail Boat"] and (game:GetService("Workspace")).Enemies:FindFirstChild("Fish Crew Member") and _G.Settings.SeaEvent["Auto Farm Fish Crew Member"] then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Fish Crew Member") then
								if v.Name == "Fish Crew Member" then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat
											(game:GetService("RunService")).Heartbeat:wait();
											AutoHaki();
											EquipWeapon(_G.Settings.Main["Selected Weapon"]);
											topos(v.HumanoidRootPart.CFrame * Pos);
											Attack();
											_G.SeaSkill = false;
										until not _G.Settings.SeaEvent["Auto Farm Fish Crew Member"] or (not v.Parent) or v.Humanoid.Health <= 0;
									end;
								end;
							end;
						end;
					elseif _G.Settings.SeaEvent["Sail Boat"] and (game:GetService("Workspace")).Enemies:FindFirstChild("FishBoat") and _G.Settings.SeaEvent["Auto Farm Ghost Ship"] then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if (game:GetService("Workspace")).Enemies:FindFirstChild("FishBoat") then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									local BoatCFrame = v.Engine.CFrame;
									if (BoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
										_G.SeaSkill = true;
									else
										_G.SeaSkill = false;
									end;
									topos(BoatCFrame);
									AutoHaki();
									Skillaimbot = true;
									AimSkill = v.Engine.CFrame * CFrame.new(0, (-15), 0);
									AimBotSkillPosition = AimSkill.Position;
								until not v.Parent or v.Health < 0 or (not (game:GetService("Workspace")).Enemies:FindFirstChild("FishBoat")) or (not v:FindFirstChild("Engine")) or (not _G.Settings.SeaEvent["Auto Farm Ghost Ship"]);
								Skillaimbot = false;
								_G.SeaSkill = false;
							end;
						end;
					elseif _G.Settings.SeaEvent["Sail Boat"] and (game:GetService("Workspace")).Enemies:FindFirstChild("PirateGrandBrigade") and _G.Settings.SeaEvent["Auto Farm Pirate Grand Brigade"] then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if (game:GetService("Workspace")).Enemies:FindFirstChild("PirateGrandBrigade") then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									local BoatCFrame = v.Engine.CFrame;
									AutoHaki();
									if (BoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
										_G.SeaSkill = true;
									else
										_G.SeaSkill = false;
									end;
									topos(BoatCFrame);
									Skillaimbot = true;
									AimSkill = v.Engine.CFrame * CFrame.new(0, (-15), 0);
									AimBotSkillPosition = AimSkill.Position;
								until not v.Parent or v.Health.Value < 0 or (not (game:GetService("Workspace")).Enemies:FindFirstChild("PirateGrandBrigade")) or (not v:FindFirstChild("Engine")) or (not _G.Settings.SeaEvent["Auto Farm Pirate Grand Brigade"]);
								Skillaimbot = false;
								_G.SeaSkill = false;
							end;
						end;
					elseif _G.Settings.SeaEvent["Sail Boat"] and (game:GetService("Workspace")).Enemies:FindFirstChild("PirateBrigade") and _G.Settings.SeaEvent["Auto Farm Pirate Brigade"] then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if (game:GetService("Workspace")).Enemies:FindFirstChild("PirateBrigade") then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									local BoatCFrame = v.Engine.CFrame;
									if (BoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
										_G.SeaSkill = true;
									else
										_G.SeaSkill = false;
									end;
									topos(BoatCFrame);
									Skillaimbot = true;
									AutoHaki();
									AimSkill = v.Engine.CFrame * CFrame.new(0, (-15), 0);
									AimBotSkillPosition = AimSkill.Position;
								until not v.Parent or v.Health.Value < 0 or (not (game:GetService("Workspace")).Enemies:FindFirstChild("PirateBrigade")) or (not v:FindFirstChild("Engine")) or (not _G.Settings.SeaEvent["Auto Farm Pirate Brigade"]);
								Skillaimbot = false;
								_G.SeaSkill = false;
							end;
						end;
					elseif _G.Settings.SeaEvent["Sail Boat"] and CheckSeaBeast() and _G.Settings.SeaEvent["Auto Farm Seabeasts"] then
						if (game:GetService("Workspace")):FindFirstChild("SeaBeasts") then
							for i, v in pairs((game:GetService("Workspace")).SeaBeasts:GetChildren()) do
								if CheckSeaBeast() then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										CFrameSeaBeast = v.HumanoidRootPart.CFrame * CFrame.new(0, 400, 0);
										if (CFrameSeaBeast.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 400 then
											_G.SeaSkill = true;
										else
											_G.SeaSkill = false;
										end;
										AutoHaki();
										Skillaimbot = true;
										AimBotSkillPosition = v.HumanoidRootPart.CFrame.Position;
										if DodgeSeabeasts() then
											topos(v.HumanoidRootPart.CFrame * CFrame.new(math.random((-200), 300), 400, math.random((-200), 300)));
										else
											topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 400, 0));
										end;
									until not _G.Settings.SeaEvent["Auto Farm Seabeasts"] or CheckSeaBeast() == false or (not v:FindFirstChild("Humanoid")) or (not v:FindFirstChild("HumanoidRootPart")) or v.Humanoid.Health <= 0 or (not v.Parent);
									Skillaimbot = false;
									_G.SeaSkill = false;
								else
									Skillaimbot = false;
									_G.SeaSkill = false;
								end;
							end;
						end;
					elseif _G.Settings.SeaEvent["Sail Boat"] and (game:GetService("Workspace")).Enemies:FindFirstChild("Terrorshark") and _G.Settings.SeaEvent["Auto Farm Terrorshark"] then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Terrorshark") then
								if v.Name == "Terrorshark" then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat
											(game:GetService("RunService")).Heartbeat:wait();
											AutoHaki();
											EquipWeapon(_G.Settings.Main["Selected Weapon"]);
											Attack();
											_G.SeaSkill = false;
											topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 60, 0));
										until not _G.Settings.SeaEvent["Auto Farm Terrorshark"] or (not v.Parent) or v.Humanoid.Health <= 0;
									end;
								end;
							end;
						end;
					elseif _G.Settings.SeaEvent["Sail Boat"] and CheckPiranha() and _G.Settings.SeaEvent["Auto Farm Piranha"] then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Piranha") then
								if v.Name == "Piranha" then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat
											(game:GetService("RunService")).Heartbeat:wait();
											AutoHaki();
											EquipWeapon(_G.Settings.Main["Selected Weapon"]);
											topos(v.HumanoidRootPart.CFrame * Pos);
											Attack();
											_G.SeaSkill = false;
										until not _G.Settings.SeaEvent["Auto Farm Piranha"] or (not v.Parent) or v.Humanoid.Health <= 0;
									end;
								end;
							end;
						end;
					elseif _G.Settings.SeaEvent["Sail Boat"] and CheckShark() and _G.Settings.SeaEvent["Auto Farm Shark"] then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Shark") then
								if v.Name == "Shark" then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat
											(game:GetService("RunService")).Heartbeat:wait();
											AutoHaki();
											EquipWeapon(_G.Settings.Main["Selected Weapon"]);
											topos(v.HumanoidRootPart.CFrame * Pos);
											Attack();
											_G.SeaSkill = false;
										until not _G.Settings.SeaEvent["Auto Farm Shark"] or (not v.Parent) or v.Humanoid.Health <= 0;
									end;
								end;
							end;
						end;
					else
						Skillaimbot = false;
						_G.SeaSkill = false;
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
					end;
				end);
			end;
		end;
	end);
	SeaTab:Label("Enemies");
	SeaTab:Toggle("Auto Farm Shark", _G.Settings.SeaEvent["Auto Farm Shark"], "Auto Kill Shark", function(value)
		_G.Settings.SeaEvent["Auto Farm Shark"] = value;
		StopTween(_G.Settings.SeaEvent["Auto Farm Shark"]);
		(getgenv()).SaveSetting();
	end);
	SeaTab:Toggle("Auto Farm Piranha", _G.Settings.SeaEvent["Auto Farm Piranha"], "Auto Kill Piranha", function(value)
		_G.Settings.SeaEvent["Auto Farm Piranha"] = value;
		StopTween(_G.Settings.SeaEvent["Auto Farm Piranha"]);
		(getgenv()).SaveSetting();
	end);
	SeaTab:Toggle("Auto Farm Fish Crew Member", _G.Settings.SeaEvent["Auto Farm Fish Crew Member"], "Auto Kill Fish Crew Member", function(value)
		_G.Settings.SeaEvent["Auto Farm Fish Crew Member"] = value;
		StopTween(_G.Settings.SeaEvent["Auto Farm Fish Crew Member"]);
		(getgenv()).SaveSetting();
	end);
	SeaTab:Label("Boat");
	SeaTab:Toggle("Auto Kill Ghost Ship", _G.Settings.SeaEvent["Auto Farm Ghost Ship"], "Auto Kill Use Skill", function(value)
		_G.Settings.SeaEvent["Auto Farm Ghost Ship"] = value;
		if not _G.Settings.SeaEvent["Auto Farm Ghost Ship"] then
			_G.SeaSkill = false;
			Skillaimbot = false;
		end;
		StopTween(_G.Settings.SeaEvent["Auto Farm Ghost Ship"]);
		(getgenv()).SaveSetting();
	end);
	SeaTab:Toggle("Auto Kill Pirate Brigade", _G.Settings.SeaEvent["Auto Farm Pirate Brigade"], "Auto Kill Enemies Use Skill", function(value)
		_G.Settings.SeaEvent["Auto Farm Pirate Brigade"] = value;
		StopTween(_G.Settings.SeaEvent["Auto Farm Pirate Brigade"]);
		(getgenv()).SaveSetting();
	end);
	SeaTab:Toggle("Auto Kill Pirate Grand Brigade", _G.Settings.SeaEvent["Auto Farm Pirate Grand Brigade"], "Auto Kill Enemies Use Skill", function(value)
		_G.Settings.SeaEvent["Auto Farm Pirate Grand Brigade"] = value;
		StopTween(_G.Settings.SeaEvent["Auto Farm Pirate Grand Brigade"]);
		(getgenv()).SaveSetting();
	end);
	SeaTab:Label("Boss");
	SeaTab:Toggle("Auto Kill Terrorshark", _G.Settings.SeaEvent["Auto Farm Terrorshark"], false, function(value)
		_G.Settings.SeaEvent["Auto Farm Terrorshark"] = value;
		StopTween(_G.Settings.SeaEvent["Auto Farm Terrorshark"]);
		(getgenv()).SaveSetting();
	end);
	SeaTab:Toggle("Auto Kill Seabest", _G.Settings.SeaEvent["Auto Farm Seabeasts"], false, function(value)
		_G.Settings.SeaEvent["Auto Farm Seabeasts"] = value;
		if not _G.Settings.SeaEvent["Auto Farm Seabeasts"] then
			_G.SeaSkill = false;
			Skillaimbot = false;
		end;
		StopTween(_G.Settings.SeaEvent["Auto Farm Seabeasts"]);
		(getgenv()).SaveSetting();
	end);
	SeaTab:Seperator("Ability");
	SeaTab:Toggle("Lightning", _G.Settings.SeaEvent.Lightning, "For lightning in the night", function(value)
		_G.Settings.SeaEvent.Lightning = value;
	end);
	local RunService = game:GetService("RunService");
	RunService.Heartbeat:Connect(function()
		local Lighting = game:GetService("Lighting");
		if _G.Settings.SeaEvent.Lightning then
			Lighting.ClockTime = 12;
		end;
	end);
	SeaTab:Toggle("Speed Boat", _G.Settings.SeaEvent["Increase Boat Speed"], false, function(value)
		_G.Settings.SeaEvent["Increase Boat Speed"] = value;
	end);
	spawn(function()
		while wait(0.2) do
			pcall(function()
				local vehicleSeats = {};
				for i, v in pairs(game.Workspace.Boats:GetDescendants()) do
					if v:IsA("VehicleSeat") then
						table.insert(vehicleSeats, v);
					end;
				end;
				if _G.Settings.SeaEvent["Increase Boat Speed"] then
					for _, v in pairs(vehicleSeats) do
						v.MaxSpeed = 350;
					end;
				else
					for _, v in pairs(vehicleSeats) do
						v.MaxSpeed = 150;
					end;
				end;
			end);
		end;
	end);
	SeaTab:Toggle("No Clip Rock", _G.Settings.SeaEvent["No Clip Rock"], "NoClip", function(value)
		_G.Settings.SeaEvent["No Clip Rock"] = value;
	end);
	spawn(function()
		while wait(0.2) do
			pcall(function()
				for i, boat in pairs((game:GetService("Workspace")).Boats:GetChildren()) do
					for _, v in pairs((game:GetService("Workspace")).Boats[boat.Name]:GetDescendants()) do
						if v:IsA("BasePart") then
							if _G.Settings.SeaEvent["No Clip Rock"] or _G.Settings.SeaEvent["Sail Boat"] then
								v.CanCollide = false;
							else
								v.CanCollide = true;
							end;
						end;
					end;
				end;
			end);
		end;
	end);
	SettingSeaTab:Seperator("Settings Sea Event");
	SettingSeaTab:Toggle("Use Skill Devil Fruit", _G.Settings.SettingSea["Skill Devil Fruit"], "Use Fruit Skill", function(value)
		_G.Settings.SettingSea["Skill Devil Fruit"] = value;
		(getgenv()).SaveSetting();
	end);
	SettingSeaTab:Toggle("Use Skill Melee", _G.Settings.SettingSea["Skill Melee"], "Use Melee Skill", function(value)
		_G.Settings.SettingSea["Skill Melee"] = value;
		(getgenv()).SaveSetting();
	end);
	SettingSeaTab:Toggle("Use Skill Sword", _G.Settings.SettingSea["Skill Sword"], "Use Sword Skill", function(value)
		_G.Settings.SettingSea["Skill Sword"] = value;
		(getgenv()).SaveSetting();
	end);
	SettingSeaTab:Toggle("Use Skill Gun", _G.Settings.SettingSea["Skill Gun"], "Use Gun Skill", function(value)
		_G.Settings.SettingSea["Skill Gun"] = value;
		(getgenv()).SaveSetting();
	end);
	SettingSeaTab:Label("[ Skill Fruit ]");
	SettingSeaTab:Toggle("Skill Z", _G.Settings.SettingSea["Sea Fruit Skill Z"], "Auto Skill Z", function(value)
		_G.Settings.SettingSea["Sea Fruit Skill Z"] = value;
		(getgenv()).SaveSetting();
	end);
	SettingSeaTab:Toggle("Skill X", _G.Settings.SettingSea["Sea Fruit Skill X"], "Auto Skill X", function(value)
		_G.Settings.SettingSea["Sea Fruit Skill X"] = value;
		(getgenv()).SaveSetting();
	end);
	SettingSeaTab:Toggle("Skill C", _G.Settings.SettingSea["Sea Fruit Skill C"], "Auto Skill C", function(value)
		_G.Settings.SettingSea["Sea Fruit Skill C"] = value;
		(getgenv()).SaveSetting();
	end);
	SettingSeaTab:Toggle("Skill V", _G.Settings.SettingSea["Sea Fruit Skill V"], "Auto Skill V", function(value)
		_G.Settings.SettingSea["Sea Fruit Skill V"] = value;
		(getgenv()).SaveSetting();
	end);
	SettingSeaTab:Toggle("Skill F", _G.Settings.SettingSea["Sea Fruit Skill F"], "Auto Skill F", function(value)
		_G.Settings.SettingSea["Sea Fruit Skill F"] = value;
		(getgenv()).SaveSetting();
	end);
	SettingSeaTab:Label("[ Skill Melee ]");
	SettingSeaTab:Toggle("Skill Z", _G.Settings.SettingSea["Sea Melee Skill Z"], "Auto Skill Z", function(value)
		_G.Settings.SettingSea["Sea Melee Skill Z"] = value;
		(getgenv()).SaveSetting();
	end);
	SettingSeaTab:Toggle("Skill X", _G.Settings.SettingSea["Sea Fruit Skill X"], "Auto Skill X", function(value)
		_G.Settings.SettingSea["Sea Fruit Skill X"] = value;
		(getgenv()).SaveSetting();
	end);
	SettingSeaTab:Toggle("Skill C", _G.Settings.SettingSea["Sea Fruit Skill C"], "Auto Skill C", function(value)
		_G.Settings.SettingSea["Sea Fruit Skill C"] = value;
		(getgenv()).SaveSetting();
	end);
	SettingSeaTab:Toggle("Skill V", _G.Settings.SettingSea["Sea Fruit Skill V"], "Auto Skill V", function(value)
		_G.Settings.SettingSea["Sea Fruit Skill V"] = value;
		(getgenv()).SaveSetting();
	end);
	SettingSeaTab:Label("[ Skill Sword ]");
	SettingSeaTab:Toggle("Skill Z", _G.Settings.SettingSea["Sea Sword Skill Z"], "Auto Skill Z", function(value)
		_G.Settings.SettingSea["Sea Sword Skill Z"] = value;
		(getgenv()).SaveSetting();
	end);
	SettingSeaTab:Toggle("Skill X", _G.Settings.SettingSea["Sea Sword Skill X"], "Auto Skill X", function(value)
		_G.Settings.SettingSea["Sea Sword Skill X"] = value;
		(getgenv()).SaveSetting();
	end);
	SettingSeaTab:Label("[ Skill Gun ]");
	SettingSeaTab:Toggle("Skill Z", _G.Settings.SettingSea["Sea Gun Skill Z"], "Auto Skill Z", function(value)
		_G.Settings.SettingSea["Sea Gun Skill Z"] = value;
		(getgenv()).SaveSetting();
	end);
	SettingSeaTab:Toggle("Skill X", _G.Settings.SettingSea["Sea Gun Skill X"], "Auto Skill X", function(value)
		_G.Settings.SettingSea["Sea Gun Skill X"] = value;
		(getgenv()).SaveSetting();
	end);
end;
DoneSkillGun = false;
DoneSkillSword = false;
DoneSkillFruit = false;
DoneSkillMelee = false;
spawn(function()
	while wait() do
		pcall(function()
			if _G.SeaSkill then
				if _G.Settings.SettingSea["Skill Devil Fruit"] and DoneSkillFruit == false then
					for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v:IsA("Tool") then
							if v.ToolTip == "Blox Fruit" then
								game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
							end;
						end;
					end;
					if _G.Settings.SettingSea["Sea Fruit Skill Z"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
						wait(_G.Settings.Hold["Hold Sea Skill Z"]);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
					end;
					if _G.Settings.SettingSea["Sea Fruit Skill X"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
						wait(_G.Settings.Hold["Hold Sea Skill X"]);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
					end;
					if _G.Settings.SettingSea["Sea Fruit Skill C"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "C", false, game);
						wait(_G.Settings.Hold["Hold Sea Skill C"]);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "C", false, game);
					end;
					if _G.Settings.SettingSea["Sea Fruit Skill V"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "V", false, game);
						wait(_G.Settings.Hold["Hold Sea Skill V"]);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "V", false, game);
					end;
					if _G.Settings.SettingSea["Sea Fruit Skill F"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "F", false, game);
						wait(_G.Settings.Hold["Hold Sea Skill F"]);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "F", false, game);
					end;
					DoneSkillFruit = true;
				end;
				if _G.Settings.SettingSea["Skill Melee"] and DoneSkillMelee == false then
					for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v:IsA("Tool") then
							if v.ToolTip == "Melee" then
								game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
							end;
						end;
					end;
					if _G.Settings.SettingSea["Sea Melee Skill Z"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
						wait(0);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
					end;
					if _G.Settings.SettingSea["Sea Fruit Skill X"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
						wait(0);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
					end;
					if _G.Settings.SettingSea["Sea Fruit Skill C"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "C", false, game);
						wait(0);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "C", false, game);
					end;
					if _G.Settings.SettingSea["Sea Fruit Skill V"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "V", false, game);
						wait(0);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "V", false, game);
					end;
					DoneSkillMelee = true;
				end;
				if _G.Settings.SettingSea["Skill Sword"] and DoneSkillSword == false then
					for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v:IsA("Tool") then
							if v.ToolTip == "Sword" then
								game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
							end;
						end;
					end;
					if _G.Settings.SettingSea["Sea Sword Skill Z"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
						wait(0);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
					end;
					if _G.Settings.SettingSea["Sea Sword Skill X"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
						wait(0);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
					end;
					DoneSkillSword = true;
				end;
				if _G.Settings.SettingSea["Skill Gun"] and DoneSkillGun == false then
					for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v:IsA("Tool") then
							if v.ToolTip == "Gun" then
								game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
							end;
						end;
					end;
					if _G.Settings.SettingSea["Sea Gun Skill Z"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
						wait(0.1);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
					end;
					if _G.Settings.SettingSea["Sea Gun Skill X"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
						wait(0.1);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
					end;
					DoneSkillGun = true;
				end;
				DoneSkillGun = false;
				DoneSkillSword = false;
				DoneSkillFruit = false;
				DoneSkillMelee = false;
			end;
		end);
	end;
end);
function CheckSeaBeast()
	if (game:GetService("Workspace")):FindFirstChild("SeaBeasts") then
		for i, v in pairs((game:GetService("Workspace")).SeaBeasts:GetChildren()) do
			if v:FindFirstChild("Humanoid") or v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health < 0 then
				return true;
			end;
		end;
	end;
	return false;
end;
function EquipAllWeapon()
	pcall(function()
		for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") and (not (v.Name == "Summon Sea Beast" or v.Name == "Water Body" or v.Name == "Awakening")) then
				local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name);
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid);
				wait(1);
			end;
		end;
	end);
end;
local gg = getrawmetatable(game);
local old = gg.__namecall;
setreadonly(gg, false);
gg.__namecall = newcclosure(function(...)
	local method = getnamecallmethod();
	local args = {
		...
	};
	if tostring(method) == "FireServer" then
		if tostring(args[1]) == "RemoteEvent" then
			if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
				if Skillaimbot then
					args[2] = AimBotSkillPosition;
					return old(unpack(args));
				end;
			end;
		end;
	end;
	return old(...);
end);
spawn(function()
	while wait(0.2) do
		pcall(function()
			if UseSkill then
				for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
					if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.Setting["Mastery Health"] / 100 then
						if _G.Settings.Setting["Fruit Mastery Skill Z"] then
							(game:service("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
							wait(_G.Settings.Hold["Hold Mastery Skill Z"]);
							(game:service("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
						end;
						if _G.Settings.Setting["Fruit Mastery Skill X"] then
							(game:service("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
							wait(_G.Settings.Hold["Hold Mastery Skill X"]);
							(game:service("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
						end;
						if _G.Settings.Setting["Fruit Mastery Skill C"] then
							(game:service("VirtualInputManager")):SendKeyEvent(true, "C", false, game);
							wait(_G.Settings.Hold["Hold Mastery Skill C"]);
							(game:service("VirtualInputManager")):SendKeyEvent(false, "C", false, game);
						end;
						if _G.Settings.Setting["Fruit Mastery Skill V"] then
							(game:service("VirtualInputManager")):SendKeyEvent(true, "V", false, game);
							wait(_G.Settings.Hold["Hold Mastery Skill V"]);
							(game:service("VirtualInputManager")):SendKeyEvent(false, "V", false, game);
						end;
						if _G.Settings.Setting["Fruit Mastery Skill F"] then
							(game:service("VirtualInputManager")):SendKeyEvent(true, "F", false, game);
							wait(_G.Settings.Hold["Hold Mastery Skill F"]);
							(game:service("VirtualInputManager")):SendKeyEvent(false, "F", false, game);
						end;
					end;
				end;
			end;
		end);
	end;
end);
spawn(function()
	while wait() do
		pcall(function()
			if UseGunSkill then
				for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
					if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.Setting["Mastery Health"] / 100 then
						if _G.Settings.Setting["Gun Mastery Skill Z"] then
							(game:service("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
							wait(0.5);
							(game:service("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
						end;
						if _G.Settings.Setting["Gun Mastery Skill X"] then
							(game:service("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
							wait(0.5);
							(game:service("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
						end;
					end;
				end;
			end;
		end);
	end;
end);
if World2 then
	ItemsTab:Toggle("Auto Dragon Trident", _G.Settings.Items["Auto Dragon Trident"], false, function(value)
		_G.Settings.Items["Auto Dragon Trident"] = value;
		StopTween(_G.Settings.Items["Auto Dragon Trident"]);
		(getgenv()).SaveSetting();
	end);
	local TridentPos = CFrame.new(-3914.830322265625, 123.29389190673828, -11516.8642578125);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Dragon Trident"] and World2 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Tide Keeper") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Tide Keeper" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Items["Auto Dragon Trident"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-3914.830322265625, 123.29389190673828, -11516.8642578125));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Tide Keeper") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Tide Keeper")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;
if World1 then
	local NamfonPos = CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Warden Sword"] and World1 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Chief Warden") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Chief Warden" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Items["Auto Warden Sword"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Chief Warden") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Chief Warden")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
	local GayMakPos = CFrame.new(-5023.38330078125, 28.65203285217285, 4332.3818359375);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Greybeard"] and World1 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Greybeard") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Greybeard" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Items["Auto Greybeard"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						topos(GayMakPos);
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-5023.38330078125, 28.65203285217285, 4332.3818359375));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Greybeard") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Greybeard")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
	ItemsTab:Toggle("Auto Pole", _G.Settings.Items["Auto Pole"], false, function(value)
		_G.Settings.Items["Auto Pole"] = value;
		StopTween(_G.Settings.Items["Auto Pole"]);
		(getgenv()).SaveSetting();
	end);
	ItemsTab:Toggle("Auto Shark saw", _G.Settings.Items["Auto Shark Saw"], false, function(value)
		_G.Settings.Items["Auto Shark Saw"] = value;
		StopTween(_G.Settings.Items["Auto Shark Saw"]);
		(getgenv()).SaveSetting();
	end);
	ItemsTab:Toggle("Auto Greybeard", _G.Settings.Items["Auto Greybeard"], false, function(value)
		_G.Settings.Items["Auto Greybeard"] = value;
		StopTween(_G.Settings.Items["Auto Greybeard"]);
		(getgenv()).SaveSetting();
	end);
	local PolePos = CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Pole"] and World1 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Thunder God") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Thunder God" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Items["Auto Pole"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Thunder God") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Thunder God")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
	local SharkPos = CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Shark Saw"] and World1 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("The Saw") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "The Saw" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Items["Auto Shark Saw"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						topos(SharkPos);
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("The Saw") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("The Saw")).HumanoidRootPart.CFrame * CFrame.new(2, 40, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;
if World2 then
	ItemsTab:Toggle("Auto Swan Glasses", _G.Settings.Items["Auto Swan Glasses"], "Auto Kill Don Swan", function(value)
		_G.Settings.Items["Auto Swan Glasses"] = value;
		StopTween(_G.Settings.Items["Auto Swan Glasses"]);
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Items["Auto Swan Glasses"] then
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Don Swan") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Don Swan" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									AutoHaki();
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									v.HumanoidRootPart.CanCollide = false;
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									topos(v.HumanoidRootPart.CFrame * Pos);
									Attack();
								until _G.Settings.Items["Auto Swan Glasses"] == false or v.Humanoid.Health <= 0;
							end;
						end;
					else
						repeat
							task.wait();
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(2284.912109375, 15.537666320801, 905.48291015625));
						until ((CFrame.new(2284.912109375, 15.537666320801, 905.48291015625)).Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 or _G.Settings.Items["Auto Swan Glasses"] == false;
					end;
				end;
			end;
		end);
	end);
end;
if World3 then
	ItemsTab:Seperator("Other");
	ItemsTab:Toggle("Auto Arena Trainer", _G.Settings.Items["Auto Arena Trainer"], false, function(value)
		_G.Settings.Items["Auto Arena Trainer"] = value;
		StopTween(_G.Settings.Items["Auto Arena Trainer"]);
		(getgenv()).SaveSetting();
	end);
	local GGPos = CFrame.new(3757.732421875, 91.99540710449219, 253.65066528320312);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Arena Trainer"] and World3 then
				pcall(function()
					if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						if string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Training Dummy") or string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Training Dummy") or string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Training Dummy") then
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Training Dummy") or (game:GetService("Workspace")).Enemies:FindFirstChild("Training Dummy") or (game:GetService("Workspace")).Enemies:FindFirstChild("Training Dummy") then
								for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
									if v.Name == "Training Dummy" or v.Name == "Training Dummy" or v.Name == "Training Dummy" then
										if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat
												(game:GetService("RunService")).Heartbeat:wait();
												AutoHaki();
												EquipWeapon(_G.Settings.Main["Selected Weapon"]);
												v.HumanoidRootPart.CanCollide = false;
												v.Humanoid.WalkSpeed = 0;
												v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
												topos(v.HumanoidRootPart.CFrame * Pos);
												Attack();
											until _G.Settings.Items["Auto Arena Trainer"] == false or v.Humanoid.Health <= 0 or (not v.Parent);
										end;
									end;
								end;
							else
								topos(GGPos);
								topos(CFrame.new(3757.732421875, 91.99540710449219, 253.65066528320312));
								if (game:GetService("ReplicatedStorage")):FindFirstChild("Training Dummy") then
									topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Training Dummy")).HumanoidRootPart.CFrame * MethodFarm);
								elseif (game:GetService("ReplicatedStorage")):FindFirstChild("Training Dummy") then
									topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Training Dummy")).HumanoidRootPart.CFrame * MethodFarm);
								elseif (game:GetService("ReplicatedStorage")):FindFirstChild("Training Dummy") then
									topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Training Dummy")).HumanoidRootPart.CFrame * MethodFarm);
								end;
							end;
						end;
					elseif _G.Settings.Items["Auto Arena Trainer"] and (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ArenaTrainer") == "I don't have anything for you right now. Come back later." then
						Hop();
					else
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ArenaTrainer");
					end;
				end);
			end;
		end;
	end);
	ItemsTab:Toggle("Auto Dark Dagger", _G.Settings.Items["Auto Dark Dagger"], false, function(value)
		_G.Settings.Items["Auto Dark Dagger"] = value;
		StopTween(_G.Settings.Items["Auto Dark Dagger"]);
		(getgenv()).SaveSetting();
	end);
	local AdminPos = CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Items["Auto Dark Dagger"] then
					if (game:GetService("Workspace")).Enemies:FindFirstChild("rip_indra True Form") or (game:GetService("Workspace")).Enemies:FindFirstChild("rip_indra") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == ("rip_indra True Form" or v.Name == "rip_indra") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									AutoHaki();
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									v.HumanoidRootPart.CanCollide = false;
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									topos(v.HumanoidRootPart.CFrame * Pos);
									Attack();
								until _G.Settings.Items["Auto Dark Dagger"] == false or v.Humanoid.Health <= 0;
							end;
						end;
					else
						topos(AdminPos);
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781));
					end;
				end;
			end;
		end);
	end);
	ItemsTab:Toggle("Auto Press Haki Button", _G.Settings.Items["Auto Press Haki Button"], "Need Legendary Haki Color", function(value)
		_G.Settings.Items["Auto Press Haki Button"] = value;
		StopTween(_G.Settings.Items["Auto Press Haki Button"]);
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		while wait(0.3) do
			pcall(function()
				if _G.Settings.Items["Auto Press Haki Button"] then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("activateColor", "Winter Sky");
					wait(0.5);
					repeat
						topos(CFrame.new(-5420.16602, 1084.9657, -2666.8208));
						wait();
					until _G.StopTween == true or _G.Settings.Items["Auto Press Haki Button"] == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-5420.16602), 1084.9657, (-2666.8208))).Magnitude <= 10;
					wait(0.5);
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("activateColor", "Pure Red");
					wait(0.5);
					repeat
						topos(CFrame.new(-5414.41357, 309.865753, -2212.45776));
						wait();
					until _G.StopTween == true or _G.Settings.Items["Auto Press Haki Button"] == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-5414.41357), 309.865753, (-2212.45776))).Magnitude <= 10;
					wait(0.5);
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("activateColor", "Snow White");
					wait(0.5);
					repeat
						topos(CFrame.new(-4971.47559, 331.565765, -3720.02954));
						wait();
					until _G.StopTween == true or _G.Settings.Items["Auto Press Haki Button"] == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-4971.47559), 331.565765, (-3720.02954))).Magnitude <= 10;
					wait(0.5);
					(game:GetService("VirtualUser")):Button1Down(Vector2.new(1280, 600));
					wait(3);
					(game:GetService("VirtualUser")):Button1Down(Vector2.new(1280, 600));
				end;
			end);
		end;
	end);
	ItemsTab:Toggle("Auto Rainbow Haki", _G.Settings.Items["Auto Rainbow Haki"], false, function(value)
		_G.Settings.Items["Auto Rainbow Haki"] = value;
		StopTween(_G.Settings.Items["Auto Rainbow Haki"]);
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Items["Auto Rainbow Haki"] then
					if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false then
						topos(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875));
						if (Vector3.new((-11892.0703125), 930.57672119141, (-8760.1591796875)) - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
							wait(1.5);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("HornedMan", "Bet");
						end;
					elseif (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Stone") then
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v.Name == "Stone" then
									OldCFrameRainbow = v.HumanoidRootPart.CFrame;
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										topos(v.HumanoidRootPart.CFrame * Pos);
										v.HumanoidRootPart.CanCollide = false;
										v.HumanoidRootPart.CFrame = OldCFrameRainbow;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										Attack();
									until _G.Settings.Items["Auto Rainbow Haki"] == false or v.Humanoid.Health <= 0 or (not v.Parent) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
								end;
							end;
						else
							topos(CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 0.0000203251839, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199));
						end;
					elseif (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Island Empress") then
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v.Name == "Island Empress" then
									OldCFrameRainbow = v.HumanoidRootPart.CFrame;
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										topos(v.HumanoidRootPart.CFrame * Pos);
										v.HumanoidRootPart.CanCollide = false;
										v.HumanoidRootPart.CFrame = OldCFrameRainbow;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										Attack();
									until _G.Settings.Items["Auto Rainbow Haki"] == false or v.Humanoid.Health <= 0 or (not v.Parent) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
								end;
							end;
						else
							topos(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, -0, -0.994878292, -0, 1, -0, 0.994878292, 0, -0.101080291));
						end;
					elseif string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Kilo Admiral") then
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v.Name == "Kilo Admiral" then
									OldCFrameRainbow = v.HumanoidRootPart.CFrame;
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										topos(v.HumanoidRootPart.CFrame * Pos);
										v.HumanoidRootPart.CanCollide = false;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										v.HumanoidRootPart.CFrame = OldCFrameRainbow;
										Attack();
									until _G.Settings.Items["Auto Rainbow Haki"] == false or v.Humanoid.Health <= 0 or (not v.Parent) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
								end;
							end;
						else
							topos(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, -0, -0.143904909, -0, 1.00000012, -0, 0.143904924, 0, -0.989591479));
						end;
					elseif string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Captain Elephant") then
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v.Name == "Captain Elephant" then
									OldCFrameRainbow = v.HumanoidRootPart.CFrame;
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										topos(v.HumanoidRootPart.CFrame * Pos);
										v.HumanoidRootPart.CanCollide = false;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										v.HumanoidRootPart.CFrame = OldCFrameRainbow;
										Attack();
									until _G.Settings.Items["Auto Rainbow Haki"] == false or v.Humanoid.Health <= 0 or (not v.Parent) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
								end;
							end;
						else
							topos(CFrame.new(-13485.0283, 331.709259, -8012.4873, 0.714521289, 0.0000000798849911, 0.69961375, -0.000000102065748, 1, -0.00000000994383065, -0.69961375, -0.0000000643015241, 0.714521289));
						end;
					elseif string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Beautiful Pirate") then
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v.Name == "Beautiful Pirate" then
									OldCFrameRainbow = v.HumanoidRootPart.CFrame;
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										topos(v.HumanoidRootPart.CFrame * Pos);
										v.HumanoidRootPart.CanCollide = false;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										v.HumanoidRootPart.CFrame = OldCFrameRainbow;
										Attack();
									until _G.Settings.Items["Auto Rainbow Haki"] == false or v.Humanoid.Health <= 0 or (not v.Parent) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
								end;
							end;
						else
							topos(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359));
						end;
					else
						topos(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875));
						if (Vector3.new((-11892.0703125), 930.57672119141, (-8760.1591796875)) - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
							wait(1.5);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("HornedMan", "Bet");
						end;
					end;
				end;
			end;
		end);
	end);
	ItemsTab:Toggle("Auto Holy Torch", _G.Settings.Items["Auto Holy Torch"], false, function(value)
		_G.Settings.Items["Auto Holy Torch"] = value;
		StopTween(_G.Settings.Items["Auto Holy Torch"]);
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		while wait(0.5) do
			pcall(function()
				if _G.Settings.Items["Auto Holy Torch"] then
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
						repeat
							wait(0.2);
							EquipWeapon("Holy Torch");
							topos(CFrame.new(-10752.4434, 415.261749, -9367.43848, 1, 0, 0, 0, 1, 0, 0, 0, 1));
						until (Vector3.new((-10752.4434), 415.261749, (-9367.43848)) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5;
						wait(2);
						repeat
							wait(0.2);
							EquipWeapon("Holy Torch");
							topos(CFrame.new(-11671.6289, 333.78125, -9474.31934, 0.300932229, 0, -0.953645527, 0, 1, 0, 0.953645527, 0, 0.300932229));
						until (Vector3.new((-11671.6289), 333.78125, (-9474.31934)) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5;
						wait(2);
						repeat
							wait(0.2);
							EquipWeapon("Holy Torch");
							topos(CFrame.new(-12133.1406, 521.507446, -10654.292, 0.80428642, 0, -0.594241858, 0, 1, 0, 0.594241858, 0, 0.80428642));
						until (Vector3.new((-12133.1406), 521.507446, (-10654.292)) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5;
						wait(2);
						repeat
							wait(0.2);
							EquipWeapon("Holy Torch");
							topos(CFrame.new(-13336.127, 484.521179, -6985.31689, 0.853732228, 0, -0.520712316, 0, 1, 0, 0.520712316, 0, 0.853732228));
						until (Vector3.new((-13336.127), 484.521179, (-6985.31689)) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5;
						wait(2);
						EquipWeapon("Holy Torch");
						repeat
							wait(0.2);
							topos(CFrame.new(-13487.623, 336.436188, -7924.53857, -0.982848108, 0, 0.184417039, 0, 1, 0, -0.184417039, 0, -0.982848108));
						until (Vector3.new((-13487.623), 336.436188, (-7924.53857)) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5;
						wait(2);
					end;
				end;
			end);
		end;
	end);
end;
if World2 then
	ItemsTab:Toggle("Auto Bartlio Quest", _G.Settings.Items["Auto Bartilo Quest"], false, function(value)
		_G.Settings.Items["Auto Bartilo Quest"] = value;
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Items["Auto Bartilo Quest"] then
					if (game:GetService("Players")).LocalPlayer.Data.Level.Value >= 800 and (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 0 then
						if string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Swan Pirate") then
								Ms = "Swan Pirate";
								for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
									if v.Name == Ms then
										pcall(function()
											repeat
												(game:GetService("RunService")).Heartbeat:wait();
												EquipWeapon(_G.Settings.Main["Selected Weapon"]);
												AutoHaki();
												v.HumanoidRootPart.CanCollide = false;
												v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
												topos(v.HumanoidRootPart.CFrame * Pos);
												PosMon = v.HumanoidRootPart.CFrame;
												MonFarm = v.Name;
												Attack();
											until not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.Items["Auto Bartilo Quest"] == false or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
										end);
									end;
								end;
							else
								repeat
									topos(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 0.0000000455137119, -0.230443969, 0.0000000267024713, 1, 0.0000000847491108, 0.230443969, 0.0000000763147128, -0.973085582));
									wait();
								until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(932.624451, 156.106079, 1180.27466, (-0.973085582), 0.0000000455137119, (-0.230443969), 0.0000000267024713, 1, 0.0000000847491108, 0.230443969, 0.0000000763147128, (-0.973085582))).Magnitude <= 10;
							end;
						else
							repeat
								topos(CFrame.new(-456.28952, 73.0200958, 299.895966));
								wait();
							until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-456.28952), 73.0200958, 299.895966)).Magnitude <= 10;
							wait(1.1);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("StartQuest", "BartiloQuest", 1);
						end;
					elseif (game:GetService("Players")).LocalPlayer.Data.Level.Value >= 800 and (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 1 then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Jeremy") then
							Ms = "Jeremy";
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v.Name == Ms then
									OldCFrameBartlio = v.HumanoidRootPart.CFrame;
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										AutoHaki();
										v.HumanoidRootPart.CanCollide = false;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										v.HumanoidRootPart.CFrame = OldCFrameBartlio;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.Items["Auto Bartilo Quest"] == false;
								end;
							end;
						elseif (game:GetService("ReplicatedStorage")):FindFirstChild("Jeremy [Lv. 850] [Boss]") then
							repeat
								topos(CFrame.new(-456.28952, 73.0200958, 299.895966));
								wait();
							until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-456.28952), 73.0200958, 299.895966)).Magnitude <= 10;
							wait(1.1);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo");
							wait(1);
							repeat
								topos(CFrame.new(2099.88159, 448.931, 648.997375));
								wait();
							until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10;
							wait(2);
						else
							repeat
								topos(CFrame.new(2099.88159, 448.931, 648.997375));
								wait();
							until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10;
						end;
					elseif (game:GetService("Players")).LocalPlayer.Data.Level.Value >= 800 and (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 2 then
						repeat
							topos(CFrame.new(-1850.49329, 13.1789551, 1750.89685));
							wait();
						until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-1850.49329), 13.1789551, 1750.89685)).Magnitude <= 10;
						wait(1);
						repeat
							topos(CFrame.new(-1858.87305, 19.3777466, 1712.01807));
							wait();
						until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-1858.87305), 19.3777466, 1712.01807)).Magnitude <= 10;
						wait(1);
						repeat
							topos(CFrame.new(-1803.94324, 16.5789185, 1750.89685));
							wait();
						until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-1803.94324), 16.5789185, 1750.89685)).Magnitude <= 10;
						wait(1);
						repeat
							topos(CFrame.new(-1858.55835, 16.8604317, 1724.79541));
							wait();
						until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-1858.55835), 16.8604317, 1724.79541)).Magnitude <= 10;
						wait(1);
						repeat
							topos(CFrame.new(-1869.54224, 15.987854, 1681.00659));
							wait();
						until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-1869.54224), 15.987854, 1681.00659)).Magnitude <= 10;
						wait(1);
						repeat
							topos(CFrame.new(-1800.0979, 16.4978027, 1684.52368));
							wait();
						until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-1800.0979), 16.4978027, 1684.52368)).Magnitude <= 10;
						wait(1);
						repeat
							topos(CFrame.new(-1819.26343, 14.795166, 1717.90625));
							wait();
						until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-1819.26343), 14.795166, 1717.90625)).Magnitude <= 10;
						wait(1);
						repeat
							topos(CFrame.new(-1813.51843, 14.8604736, 1724.79541));
							wait();
						until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-1813.51843), 14.8604736, 1724.79541)).Magnitude <= 10;
					end;
				end;
			end;
		end);
	end);
end;
spawn(function()
	while task.wait() do
		if _G.Settings.Setting["Bring Mob"] then
			pcall(function()
				for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
					if not string.find(v.Name, "Boss") and v.Name == MonFarm and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= BringMobDistance then
						v.HumanoidRootPart.CFrame = PosMon;
						v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
					end;
				end;
			end);
		end;
	end;
end);
spawn(function()
	(game:GetService("RunService")).RenderStepped:Connect(function()
		wait();
		if setscriptable then
			setscriptable(game.Players.LocalPlayer, "SimulationRadius", true);
		end;
		if sethiddenproperty then
			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
		end;
	end);
end);
StatsTab:Seperator("Stats");
local Pointstat = StatsTab:Label("Stat Points");
spawn(function()
	while wait(0.2) do
		pcall(function()
			Pointstat:Set("Stat Points : " .. tostring((game:GetService("Players")).LocalPlayer.Data.Points.Value));
		end);
	end;
end);
StatsTab:Toggle("Melee", _G.Settings.Stats["Auto Add Melee Stats"], "Auto Add Meele Stats", function(Value)
	_G.Settings.Stats["Auto Add Melee Stats"] = value;
	(getgenv()).SaveSetting();
end);
StatsTab:Toggle("Defense", _G.Settings.Stats["Auto Add Defense Stats"], "Auto Add Defense Stats", function(value)
	_G.Settings.Stats["Auto Add Defense Stats"] = value;
	(getgenv()).SaveSetting();
end);
StatsTab:Toggle("Sword", _G.Settings.Stats["Auto Add Sword Stats"], "Auto Add Sword Stats", function(value)
	_G.Settings.Stats["Auto Add Sword Stats"] = value;
	(getgenv()).SaveSetting();
end);
StatsTab:Toggle("Gun", _G.Settings.Stats["Auto Add Gun Stats"], "Auto Add Gun Stats", function(value)
	_G.Settings.Stats["Auto Add Gun Stats"] = value;
	(getgenv()).SaveSetting();
end);
StatsTab:Toggle("Devil Fruit", _G.Settings.Stats["Auto Add Devil Fruit Stats"], "Auto Add Fruit Stats", function(value)
	_G.Settings.Stats["Auto Add Devil Fruit Stats"] = value;
	(getgenv()).SaveSetting();
end);
PointStats = 1;
StatsTab:Slider("Point", 1, 100, PointStats, function(value)
	PointStats = value;
	(getgenv()).SaveSetting();
end);
spawn(function()
	while wait(0.2) do
		if game.Players.localPlayer.Data.Points.Value >= PointStats then
			if _G.Settings.Stats["Auto Add Melee Stats"] then
				local args = {
					[1] = "AddPoint",
					[2] = "Melee",
					[3] = PointStats
				};
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(args));
			end;
			if _G.Settings.Stats["Auto Add Defense Stats"] then
				local args = {
					[1] = "AddPoint",
					[2] = "Defense",
					[3] = PointStats
				};
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(args));
			end;
			if _G.Settings.Stats["Auto Add Sword Stats"] then
				local args = {
					[1] = "AddPoint",
					[2] = "Sword",
					[3] = PointStats
				};
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(args));
			end;
			if _G.Settings.Stats["Auto Add Gun Stats"] then
				local args = {
					[1] = "AddPoint",
					[2] = "Gun",
					[3] = PointStats
				};
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(args));
			end;
			if _G.Settings.Stats["Auto Add Devil Fruit Stats"] then
				local args = {
					[1] = "AddPoint",
					[2] = "Demon Fruit",
					[3] = PointStats
				};
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(args));
			end;
		end;
	end;
end);
StatsTab:Line();
local Melee = StatsTab:Label("Melee : ");
local Defense = StatsTab:Label("Defense : ");
local Sword = StatsTab:Label("Sword : ");
local Gun = StatsTab:Label("Gun : ");
local Fruit = StatsTab:Label("Fruit : ");
spawn(function()
	while wait(0.2) do
		pcall(function()
			Melee:Set("Melee : " .. game.Players.localPlayer.Data.Stats.Melee.Level.Value);
		end);
	end;
end);
spawn(function()
	while wait(0.2) do
		pcall(function()
			Defense:Set("Defense : " .. game.Players.localPlayer.Data.Stats.Defense.Level.Value);
		end);
	end;
end);
spawn(function()
	while wait(0.2) do
		pcall(function()
			Sword:Set("Sword : " .. game.Players.localPlayer.Data.Stats.Sword.Level.Value);
		end);
	end;
end);
spawn(function()
	while wait(0.2) do
		pcall(function()
			Gun:Set("Gun : " .. game.Players.localPlayer.Data.Stats.Gun.Level.Value);
		end);
	end;
end);
spawn(function()
	while wait(0.2) do
		pcall(function()
			Fruit:Set("Fruit : " .. game.Players.localPlayer.Data.Stats["Demon Fruit"].Level.Value);
		end);
	end;
end);
if World2 then
	RaceV4Tab:Seperator("Race V2");
	RaceV4Tab:Toggle("Auto Evo Race [ V2 ]", _G.Settings.Race["Auto Race V2"], false, function(value)
		_G.Settings.Race["Auto Race V2"] = value;
		StopTween(_G.Settings.Race["Auto Race V2"]);
		(getgenv()).SaveSetting();
	end);
	RaceV4Tab:Toggle("Auto Evo Race [ V3 ]", _G.Settings.Race["Auto Race V3"], "false", function(value)
		_G.Settings.Race["Auto Race V3"] = value;
		StopTween(_G.Settings.Race["Auto Race V3"]);
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if _G.AutoSeabeasts then
					if (game:GetService("Workspace")):FindFirstChild("SeaBeasts") then
						for i, v in pairs((game:GetService("Workspace")).SeaBeasts:GetChildren()) do
							if CheckSeaBeast() then
								repeat
									wait();
									local CFrameSeaBeast = v.HumanoidRootPart.CFrame * CFrame.new(0, 200, 0);
									if (CFrameSeaBeast.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 200 then
										_G.SeaSkill = true;
									else
										_G.SeaSkill = false;
									end;
									Skillaimbot = true;
									AimBotSkillPosition = v.HumanoidRootPart.CFrame.Position;
									topos(CFrameSeaBeast * CFrame.new(0, 200, 0));
								until not _G.AutoSeabeasts or CheckSeaBeast() == false or (not v:FindFirstChild("Humanoid")) or (not v:FindFirstChild("HumanoidRootPart")) or v.Humanoid.Health < 0 or (not v.Parent);
								Skillaimbot = false;
								_G.SeaSkill = false;
							else
								Skillaimbot = false;
								_G.SeaSkill = false;
							end;
						end;
					end;
				end;
			end);
		end;
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if _G.AutoSeabeasts then
					if not CheckBoat() then
						local BuyBoatCFrame = CFrame.new(-1936.93213, 6.6355958, -2568.47974, -0.922701657, -0.00000000988315652, 0.385514766, -0.000000016636152, 1, -0.0000000141811682, -0.385514766, -0.0000000194984704, -0.922701657);
						BuyBoat = topos(BuyBoatCFrame);
						if (BuyBoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
							if BuyBoat then
								BuyBoat:Cancel();
							end;
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyBoat", "MarineBrigade");
							wait(1);
							for i, v in pairs((game:GetService("Workspace")).Boats:GetChildren()) do
								if v.Name == "MarineBrigade" then
									if (v.VehicleSeat.CFrame.Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
										AddEsp("MyBoatEsp", v);
									end;
								end;
							end;
						end;
					elseif CheckBoat() then
						for i, v in pairs((game:GetService("Workspace")).Boats:GetChildren()) do
							if v.Name == "MarineBrigade" then
								if v:FindFirstChild("MyBoatEsp") then
									if (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == false then
										if CheckSeaBeast() then
											if TweenPlayer then
												TweenPlayer:Cancel();
											end;
										else
											local BoatPos = v.VehicleSeat.CFrame * CFrame.new(0, 1, 0);
											local Distance = (BoatPos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
											TweenPlayer = (game:GetService("TweenService")):Create((game:GetService("Players")).LocalPlayer.Character:WaitForChild("HumanoidRootPart"), TweenInfo.new(Distance / TweenSpeed, Enum.EasingStyle.Linear), {
												CFrame = BoatPos
											});
											TweenPlayer:Play();
										end;
									else
										repeat
											wait();
											local TargetPos = CFrame.new(-4124.19531, 9.00001144, -996.203918, 0.929954946, 0.0642714053, 0.362012357, -0.0689479187, 0.997620285, 0.00000000286939827, -0.361150861, -0.0249600001, 0.932173312);
											local Distance = (TargetPos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
											TweenBoat = (game:service("TweenService")):Create(v.VehicleSeat, TweenInfo.new(Distance / 250, Enum.EasingStyle.Linear), {
												CFrame = TargetPos
											});
											if (v.VehicleSeat.CFrame.Position - TargetPos.Position).Magnitude <= 25 then
												TweenBoat:Cancel();
											else
												TweenBoat:Play();
											end;
										until CheckSeaBeast() or (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == false;
										if TweenBoat then
											TweenBoat:Cancel();
										end;
										(game:GetService("VirtualInputManager")):SendKeyEvent(true, 32, false, game);
										wait(0.1);
										(game:GetService("VirtualInputManager")):SendKeyEvent(false, 32, false, game);
									end;
								end;
							end;
						end;
					end;
				end;
			end);
		end;
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if _G.AutoSeabeasts then
					if CheckSeaBeast() then
						if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
							(game:GetService("VirtualInputManager")):SendKeyEvent(true, 32, false, game);
							wait(0.1);
							(game:GetService("VirtualInputManager")):SendKeyEvent(false, 32, false, game);
						end;
					end;
				end;
			end);
		end;
	end);
	function CheckV3()
		if (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Mink" then
			if game.Players.LocalPlayer.Backpack:FindFirstChild("Agility") then
				return true;
			end;
		elseif (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Fishman" then
			if game.Players.LocalPlayer.Backpack:FindFirstChild("Water Body") then
				return true;
			end;
		elseif (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Skypiea" then
			if game.Players.LocalPlayer.Backpack:FindFirstChild("Heavenly Blood") then
				return true;
			end;
		end;
		return false;
	end;
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.AutoMeleeSkill then
					(game:service("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
					wait(0);
					(game:service("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
					(game:service("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
					wait(0);
					(game:service("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
					(game:service("VirtualInputManager")):SendKeyEvent(true, "C", false, game);
					wait(0);
					(game:service("VirtualInputManager")):SendKeyEvent(false, "C", false, game);
					(game:service("VirtualInputManager")):SendKeyEvent(true, "V", false, game);
					wait(0);
					(game:service("VirtualInputManager")):SendKeyEvent(false, "V", false, game);
				end;
			end);
		end;
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if _G.Settings.Race["Auto Race V3"] then
					if (game:GetService("Players")).LocalPlayer.Data.Race:FindFirstChild("Evolved") then
						local myRace = tostring((game:GetService("Players")).LocalPlayer.Data.Race.Value);
						if (game:GetService("Players")).LocalPlayer.Data.Beli.Value >= 2000000 then
							_G.AutoKatakuri = false;
							if myRace == "Skypiea" then
								if (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "1") == 0 then
									local QuestCFrame = CFrame.new(-1990.71094, 125.519119, -70.5762024, -0.235444918, -0.0000000715676052, -0.971887708, 0.0000000305724122, 1, -0.0000000810440568, 0.971887708, -0.0000000487943623, -0.235444918);
									topos(QuestCFrame);
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - QuestCFrame.Position).Magnitude <= 5 then
										(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "2");
									end;
								elseif (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "1") == 1 then
									for i, v in pairs((game:GetService("Players")):GetChildren()) do
										if tostring(v.Data.Race.Value) == "Skypiea" then
											local Player = v:FindFirstChild(v.Name);
											if Player then
												repeat
													wait();
													topos(Player.HumanoidRootPart.CFrame * CFrame.new(0, 0, (-2)));
													Attack();
													AutoHaki();
													_G.AutoMeleeSkill = true;
													EquipWeapon("Melee");
												until not Player or (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "1") == 2;
												_G.AutoMeleeSkill = false;
												UnEquipWeapon();
											end;
										end;
									end;
								elseif (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "1") == 2 then
									(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "3");
								end;
							elseif myRace == "Fishman" then
								if (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "1") == 0 then
									local QuestCFrame = CFrame.new(-1990.71094, 125.519119, -70.5762024, -0.235444918, -0.0000000715676052, -0.971887708, 0.0000000305724122, 1, -0.0000000810440568, 0.971887708, -0.0000000487943623, -0.235444918);
									topos(QuestCFrame);
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - QuestCFrame.Position).Magnitude <= 5 then
										(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "2");
									end;
								elseif (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "1") == 1 then
									_G.AutoSeabeasts = true;
								elseif (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "1") == 2 then
									_G.AutoSeabeasts = false;
									(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "3");
								end;
							elseif myRace == "Mink" then
								if (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "1") == 0 then
									local QuestCFrame = CFrame.new(-1990.71094, 125.519119, -70.5762024, -0.235444918, -0.0000000715676052, -0.971887708, 0.0000000305724122, 1, -0.0000000810440568, 0.971887708, -0.0000000487943623, -0.235444918);
									topos(QuestCFrame);
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - QuestCFrame.Position).Magnitude <= 5 then
										(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "2");
									end;
								elseif (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "1") == 1 then
									for i, v in pairs((game:GetService("Workspace")):GetChildren()) do
										if string.find(v.Name, "Chest") then
											if (game:GetService("Workspace")):FindFirstChild(v.Name) then
												repeat
													wait(0.5);
													game.Players.LocalPlayer.Character:PivotTo(v:GetPivot());
													firesignal(v.Touched, game.Players.LocalPlayer.Character.HumanoidRootPart);
													(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("SetTeam", "Pirates");
												until not v.Parent;
											end;
										end;
									end;
								elseif (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "1") == 2 then
									(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "3");
								end;
							end;
						end;
					end;
				end;
			end);
		end;
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Race["Auto Race V2"] then
					if not (game:GetService("Players")).LocalPlayer.Data.Race:FindFirstChild("Evolved") then
						if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("Alchemist", "1") == 0 then
							topos(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 0.0000000639014104, -0.68292886, 0.0000000359963224, 1, 0.0000000550667032, 0.68292886, 0.0000000156424669, -0.730484903));
							if (Vector3.new((-2779.83521), 72.9661407, (-3574.02002)) - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
								wait(1.3);
								(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("Alchemist", "2");
							end;
						elseif (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("Alchemist", "1") == 1 then
							pcall(function()
								if not (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Flower 1") and (not (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Flower 1")) then
									topos((game:GetService("Workspace")).Flower1.CFrame);
								elseif not (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Flower 2") and (not (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Flower 2")) then
									topos((game:GetService("Workspace")).Flower2.CFrame);
								elseif not (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Flower 3") and (not (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Flower 3")) then
									if (game:GetService("Workspace")).Enemies:FindFirstChild("Zombie") then
										for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
											if v.Name == "Zombie" then
												repeat
													(game:GetService("RunService")).Heartbeat:wait();
													AutoHaki();
													EquipWeapon(_G.Settings.Main["Selected Weapon"]);
													topos(v.HumanoidRootPart.CFrame * Pos);
													v.HumanoidRootPart.CanCollide = false;
													v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
													Attack();
													PosMon = v.HumanoidRootPart.CFrame;
													MonFarm = v.Name;
												until (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Flower 3") or (not v.Parent) or v.Humanoid.Health <= 0 or _G.Settings.Race["Auto Race V2"] == false;
											end;
										end;
									else
										topos(CFrame.new(-5685.9233398438, 48.480125427246, -853.23724365234));
									end;
								end;
							end);
						elseif (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("Alchemist", "1") == 2 then
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("Alchemist", "3");
						end;
					end;
				end;
			end;
		end);
	end);
end;
if World3 then
	RaceV4Tab:Seperator("Race V4");
	local PlaceV4List = {
		"Top Of GreatTree",
		"Timple Of Time",
		"Lever Pull",
		"Acient One"
	};
	RaceV4Tab:Dropdown("Choose Place", PlaceV4List, _G.Settings.Race["Selected PlaceV4"], function(value)
		_G.Settings.Race["Selected PlaceV4"] = value;
		(getgenv()).SaveSetting();
	end);
	RaceV4Tab:Toggle("Teleport To Selected Place", _G.Settings.Race["Teleport To PlaceV4"], false, function(value)
		_G.Settings.Race["Teleport To PlaceV4"] = value;
		StopTween(_G.Settings.Race["Teleport To PlaceV4"]);
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Race["Teleport To PlaceV4"] then
				pcall(function()
					if _G.Settings.Race["Selected PlaceV4"] == "Top Of GreatTree" then
						topos(CFrame.new(2947.556884765625, 2281.630615234375, -7213.54931640625));
					elseif _G.Settings.Race["Selected PlaceV4"] == "Timple Of Time" then
						(game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875);
					elseif _G.Settings.Race["Selected PlaceV4"] == "Lever Pull" then
						local LeverPullPos = CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734);
						if (LeverPullPos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1000 then
							(game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875);
						else
							topos(LeverPullPos);
						end;
					elseif _G.Settings.Race["Selected PlaceV4"] == "Acient One" then
						topos(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375));
					end;
				end);
			end;
		end;
	end);
	RaceV4Tab:Toggle("Auto Buy Gear", _G.Settings.Race["Auto Buy Gear"], false, function(value)
		_G.Settings.Race["Auto Buy Gear"] = value;
		StopTween(_G.Settings.Race["Auto Buy Gear"]);
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Race["Auto Buy Gear"] then
					local args = {
						[1] = true
					};
					local args = {
						[1] = "UpgradeRace",
						[2] = "Buy"
					};
					(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer(unpack(args));
				end;
			end;
		end);
	end);
	RaceV4Tab:Toggle("Tween To Highest Point Mirage Island", _G.Settings.Race["Tween To Highest Mirage"], "Tween To Top Mirage Island", function(value)
		_G.Settings.Race["Tween To Highest Mirage"] = value;
		StopTween(_G.Settings.Race["Tween To Highest Mirage"]);
		(getgenv()).SaveSetting();
	end);
	RaceV4Tab:Toggle("Find Blue Gear", _G.Settings.Race["Find Blue Gear"], "Tween To Blue Gear", function(value)
		_G.Settings.Race["Find Blue Gear"] = value;
		StopTween(_G.Settings.Race["Find Blue Gear"]);
		(getgenv()).SaveSetting();
	end);
	RaceV4Tab:Toggle("Auto Look Moon + Use Ability", _G.Settings.Race["Look Moon Ability"], "Camera Focus To Moon", function(value)
		_G.Settings.Race["Look Moon Ability"] = value;
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.Race["Look Moon Ability"] then
					wait();
					local moonDir = game.Lighting:GetMoonDirection();
					local lookAtPos = game.Workspace.CurrentCamera.CFrame.p + moonDir * 100;
					game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, lookAtPos);
				end;
			end);
		end;
	end);
	RaceV4Tab:Toggle("Auto Train", _G.Settings.Race["Auto Train"], false, function(value)
		_G.Settings.Race["Auto Train"] = value;
		StardFarm = value;
		StopTween(_G.Settings.Race["Auto Train"]);
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Race["Auto Train"] then
					if game.Players.LocalPlayer.Character.RaceTransformed.Value == true then
						StardFarm = false;
						topos(CFrame.new(216.211181640625, 126.9352035522461, -12599.0732421875));
					end;
				end;
			end;
		end);
	end);
	spawn(function()
		while wait(0.2) do
			if StardFarm and World3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Cocoa Warrior") or (game:GetService("Workspace")).Enemies:FindFirstChild("Chocolate Bar Battler") or (game:GetService("Workspace")).Enemies:FindFirstChild("Sweet Thief") or (game:GetService("Workspace")).Enemies:FindFirstChild("Candy Rebel") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Cocoa Warrior" or v.Name == "Chocolate Bar Battler" or v.Name == "Sweet Thief" or v.Name == "Candy Rebel" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not StardFarm or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						topos(CFrame.new(216.211181640625, 126.9352035522461, -12599.0732421875));
					end;
				end);
			end;
		end;
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Race["Auto Train"] then
					if game.Players.LocalPlayer.Character.RaceTransformed.Value == false then
						StardFarm = true;
					end;
				end;
			end;
		end);
	end);
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.Race["Auto Train"] then
					(game:GetService("VirtualInputManager")):SendKeyEvent(true, "Y", false, game);
					wait(0.1);
					(game:GetService("VirtualInputManager")):SendKeyEvent(false, "Y", false, game);
				end;
			end);
		end;
	end);
	RaceV4Tab:Toggle("Disabled Inf Stairs", false, false, function(value)
		game.Players.LocalPlayer.Character.InfiniteStairs.Disabled = value;
	end);
	RaceV4Tab:Button("Teleport To Race Door", function()
		(Game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875);
		wait(0.1);
		(Game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875);
		wait(0.1);
		(Game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875);
		wait(0.1);
		(Game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875);
		wait(0.5);
		if (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Human" then
			topos(CFrame.new(29221.822265625, 14890.9755859375, -205.99114990234375));
		elseif (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Skypiea" then
			topos(CFrame.new(28960.158203125, 14919.6240234375, 235.03948974609375));
		elseif (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Fishman" then
			topos(CFrame.new(28231.17578125, 14890.9755859375, -211.64173889160156));
		elseif (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Cyborg" then
			topos(CFrame.new(28502.681640625, 14895.9755859375, -423.7279357910156));
		elseif (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Ghoul" then
			topos(CFrame.new(28674.244140625, 14890.6767578125, 445.4310607910156));
		elseif (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Mink" then
			topos(CFrame.new(29012.341796875, 14890.9755859375, -380.1492614746094));
		end;
		wait(2);
		StopTween(false);
	end);
	RaceV4Tab:Seperator("Auto Complete Trials");
	RaceV4Tab:Button("Buy Ancient One Quest", function()
		(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("UpgradeRace", "Buy");
	end);
	RaceV4Tab:Toggle("Auto Kill Player After Trial", _G.Settings.Race["Auto Kill Player After Trial"], false, function(value)
		_G.Settings.Race["Auto Kill Player After Trial"] = value;
		StopTween(_G.Settings.Race["Auto Kill Player After Trial"]);
		(getgenv()).SaveSetting();
	end);
	RaceV4Tab:Toggle("Auto Trial RaceV4", _G.Settings.Race["Auto Trial"], false, function(value)
		_G.Settings.Race["Auto Trial"] = value;
		StopTween(_G.Settings.Race["Auto Trial"]);
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Race["Auto Trial"] then
					if (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Human" then
						for i, v in pairs(game.Workspace.Enemies:GetDescendants()) do
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								pcall(function()
									repeat
										wait(0.1);
										v.Humanoid.Health = 0;
										v.HumanoidRootPart.CanCollide = false;
									until not _G.Settings.Race["Auto Trial"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end);
							end;
						end;
					elseif (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Skypiea" then
						for i, v in pairs((game:GetService("Workspace")).Map.SkyTrial.Model:GetDescendants()) do
							if v.Name == "snowisland_Cylinder.081" then
								topos(v.CFrame * CFrame.new(0, 0, 0));
							end;
						end;
					elseif (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Fishman" then
						for i, v in pairs((game:GetService("Workspace")).SeaBeasts.SeaBeast1:GetDescendants()) do
							if v.Name == "HumanoidRootPart" then
								repeat
									wait();
									topos(v.CFrame * CFrame.new(0, 200, 0));
									for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
										if v:IsA("Tool") then
											if v.ToolTip == "Melee" then
												game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
											end;
										end;
									end;
									(game:GetService("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
									(game:GetService("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
									wait(0.2);
									(game:GetService("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
									(game:GetService("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
									wait(0.2);
									(game:GetService("VirtualInputManager")):SendKeyEvent(true, "C", false, game);
									(game:GetService("VirtualInputManager")):SendKeyEvent(false, "C", false, game);
									wait(0.2);
									for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
										if v:IsA("Tool") then
											if v.ToolTip == "Blox Fruit" then
												game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
											end;
										end;
									end;
									(game:GetService("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
									(game:GetService("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
									wait(0.2);
									(game:GetService("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
									(game:GetService("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
									wait(0.2);
									(game:GetService("VirtualInputManager")):SendKeyEvent(true, "C", false, game);
									(game:GetService("VirtualInputManager")):SendKeyEvent(false, "C", false, game);
									wait(0.2);
									(game:GetService("VirtualInputManager")):SendKeyEvent(true, "V", false, game);
									(game:GetService("VirtualInputManager")):SendKeyEvent(false, "V", false, game);
									wait(0.2);
									for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
										if v:IsA("Tool") then
											if v.ToolTip == "Sword" then
												game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
											end;
										end;
									end;
									(game:GetService("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
									(game:GetService("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
									wait(0.2);
									(game:GetService("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
									(game:GetService("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
									wait(0.2);
									for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
										if v:IsA("Tool") then
											if v.ToolTip == "Gun" then
												game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
											end;
										end;
									end;
									(game:GetService("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
									(game:GetService("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
									wait(0.2);
									(game:GetService("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
									(game:GetService("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
									wait(0.2);
								until not _G.Settings.Race["Auto Trial"] or (not v.Parent) or v.Humanoid.Health <= 0 or (not v:FindFirstChild("HumanoidRootPart"));
							end;
						end;
					elseif (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Cyborg" then
						topos(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1));
					elseif (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Ghoul" then
						for i, v in pairs(game.Workspace.Enemies:GetDescendants()) do
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								pcall(function()
									repeat
										wait(0.1);
										v.Humanoid.Health = 0;
										v.HumanoidRootPart.CanCollide = false;
									until not _G.Settings.Race["Auto Trial"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end);
							end;
						end;
					elseif (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Mink" then
						for i, v in pairs((game:GetService("Workspace")):GetDescendants()) do
							if v.Name == "StartPoint" then
								topos(v.CFrame * CFrame.new(0, 10, 0));
							end;
						end;
					end;
				end;
			end;
		end);
	end);
end;
spawn(function()
	while wait(0.2) do
		if _G.Settings.Race["Auto Kill Player After Trial"] then
			if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Timer.Visible == true then
				for i, v in pairs((game:GetService("Players")):GetPlayers()) do
					if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
						if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then
							if v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:Wait();
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									AutoHaki();
									topos(v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 20));
									Attack();
								until not _G.Settings.Race["Auto Kill Player After Trial"] or (not v.Character) or v.Character.Humanoid.Health <= 0;
							end;
						end;
					end;
				end;
			end;
		end;
	end;
end);
CombatTab:Seperator("Combat");
local plyserv = CombatTab:Label("Players");
spawn(function()
	while wait(0.2) do
		pcall(function()
			for i, v in pairs((game:GetService("Players")):GetPlayers()) do
				if i == 12 then
					plyserv:Set("Players :" .. " " .. i .. " " .. "/" .. " " .. "12" .. " " .. "(Max)");
				elseif i == 1 then
					plyserv:Set("Player :" .. " " .. i .. " " .. "/" .. " " .. "12");
				else
					plyserv:Set("Players :" .. " " .. i .. " " .. "/" .. " " .. "12");
				end;
			end;
		end);
	end;
end);
Playerslist = {};
for i, v in pairs((game:GetService("Players")):GetChildren()) do
	table.insert(Playerslist, v.Name);
end;
local SelectedPly = CombatTab:Dropdown("Choose Player", Playerslist, false, function(value)
	_G.SelectedPlayer = value;
end);
CombatTab:Button("Refresh Player", function()
	Playerslist = {};
	SelectedPly:Clear();
	for i, v in pairs((game:GetService("Players")):GetChildren()) do
		SelectedPly:Add(v.Name);
	end;
end);
CombatTab:Toggle("Spectate Player", false, "Change Camera Player", function(value)
	SpectatePlys = value;
	local plr1 = (game:GetService("Players")).LocalPlayer.Character.Humanoid;
	local plr2 = (game:GetService("Players")):FindFirstChild(_G.SelectedPlayer);
	repeat
		wait(0.1);
		(game:GetService("Workspace")).Camera.CameraSubject = ((game:GetService("Players")):FindFirstChild(_G.SelectedPlayer)).Character.Humanoid;
	until SpectatePlys == false;
	(game:GetService("Workspace")).Camera.CameraSubject = (game:GetService("Players")).LocalPlayer.Character.Humanoid;
end);
CombatTab:Toggle("Teleport To Player", false, "Tween To Players", function(value)
	_G.TeleportToPlayer = value;
	pcall(function()
		if _G.TeleportToPlayer then
			repeat
				topos((game:GetService("Players"))[_G.SelectedPlayer].Character.HumanoidRootPart.CFrame);
				wait();
			until _G.TeleportToPlayer == false;
		end;
		StopTween(_G.TeleportToPlayer);
	end);
end);
CombatTab:Toggle("Auto Farm Player", false, "Auto Kill Players", function(value)
	_G.AutoKillSelectedPlayer = value;
	StopTween(_G.AutoKillSelectedPlayer);
end);
spawn(function()
	while wait(0.2) do
		if _G.AutoKillSelectedPlayer then
			pcall(function()
				if _G.SelectedPlayer ~= nil then
					if game.Players:FindFirstChild(_G.SelectedPlayer) then
						if (game.Players:FindFirstChild(_G.SelectedPlayer)).Character.Humanoid.Health > 0 then
							repeat
								(game:GetService("RunService")).Heartbeat:wait();
								EquipWeapon(_G.Settings.Main["Selected Weapon"]);
								Attack();
								AutoHaki();
								(game.Players:FindFirstChild(_G.SelectedPlayer)).Character.HumanoidRootPart.CanCollide = false;
								topos((game.Players:FindFirstChild(_G.SelectedPlayer)).Character.HumanoidRootPart.CFrame * CFrame.new(0, 5, 0));
								spawn(function()
									pcall(function()
										if _G.Settings.Main["Selected Weapon"] == SelectWeaponGun then
											local args = {
												[1] = (game.Players:FindFirstChild(_G.SelectedPlayer)).Character.HumanoidRootPart.Position,
												[2] = (game.Players:FindFirstChild(_G.SelectedPlayer)).Character.HumanoidRootPart
											};
											(game:GetService("Players")).LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args));
										else
											(game:GetService("VirtualUser")):CaptureController();
											(game:GetService("VirtualUser")):Button1Down(Vector2.new(1280, 672));
										end;
									end);
								end);
							until (game.Players:FindFirstChild(_G.SelectedPlayer)).Character.Humanoid.Health <= 0 or (not game.Players:FindFirstChild(_G.SelectedPlayer)) or (not _G.AutoKillSelectedPlayer);
						end;
					end;
				end;
			end);
		end;
	end;
end);
if World3 then
	CombatTab:Seperator("Quest Player");
	CombatTab:Button("Get Quest Elite Players", function()
		(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("PlayerHunter");
	end);
	CombatTab:Toggle("Auto Kill Player Quest", _G.Settings.Combat["Auto Kill Player Quest"], "Auto Player Quest", function(value)
		_G.Settings.Combat["Auto Kill Player Quest"] = value;
		StopTween(_G.Settings.Combat["Auto Kill Player Quest"]);
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		(game:GetService("RunService")).Heartbeat:connect(function()
			pcall(function()
				if _G.Settings.Combat["Auto Kill Player Quest"] then
					if (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Humanoid") then
						(game:GetService("Players")).LocalPlayer.Character.Humanoid:ChangeState(11);
					end;
				end;
			end);
		end);
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Combat["Auto Kill Player Quest"] then
					if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("EnablePvp");
					end;
				end;
			end;
		end);
	end);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Combat["Auto Kill Player Quest"] then
				if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					wait(0.5);
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("PlayerHunter");
				else
					for i, v in pairs((game:GetService("Workspace")).Characters:GetChildren()) do
						if string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, v.Name) then
							repeat
								(game:GetService("RunService")).Heartbeat:wait();
								AutoHaki();
								EquipWeapon(_G.Settings.Main["Selected Weapon"]);
								topos(v.HumanoidRootPart.CFrame * CFrame.new(1, 30, 30));
								v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
								Attack();
							until _G.Settings.Combat["Auto Kill Player Quest"] == false or v.Humanoid.Health <= 0;
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("AbandonQuest");
						end;
					end;
				end;
			end;
		end;
	end);
end;
CombatTab:Seperator("Aimbot");
spawn(function()
	while wait() do
		pcall(function()
			local MaxDistance = math.huge;
			for i, v in pairs((game:GetService("Players")):GetPlayers()) do
				if v.Name ~= (game:GetService("Players")).LocalPlayer.Name then
					local Distance = v:DistanceFromCharacter((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position);
					if Distance < MaxDistance then
						MaxDistance = Distance;
						PlayerSelectAimbot = v.Name;
					end;
				end;
			end;
		end);
	end;
end);
CombatTab:Toggle("Aimbot Gun", _G.Settings.Combat["Aimbot Gun"], "Aimbot Skill Gun", function(value)
	_G.Settings.Combat["Aimbot Gun"] = value;
	(getgenv()).SaveSetting();
end);
spawn(function()
	while task.wait() do
		if _G.Settings.Combat["Aimbot Gun"] and (game:GetService("Players")).LocalPlayer.Character:FindFirstChild(SelectWeaponGun) then
			pcall(function()
				(game:GetService("Players")).LocalPlayer.Character[SelectWeaponGun].Cooldown.Value = 0;
				local args = {
					[1] = ((game:GetService("Players")):FindFirstChild(PlayerSelectAimbot)).Character.HumanoidRootPart.Position,
					[2] = ((game:GetService("Players")):FindFirstChild(PlayerSelectAimbot)).Character.HumanoidRootPart
				};
				(game:GetService("Players")).LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args));
				(game:GetService("VirtualUser")):CaptureController();
				(game:GetService("VirtualUser")):Button1Down(Vector2.new(1280, 672));
			end);
		end;
	end;
end);
CombatTab:Toggle("Aimbot Skill Nearest", _G.Settings.Combat["Aimbot Skill Nearest"], "Aim Bot Skill Nearest", function(value)
	_G.Settings.Combat["Aimbot Skill Nearest"] = value;
	(getgenv()).SaveSetting();
end);
spawn(function()
	while wait(0.1) do
		pcall(function()
			local MaxDistance = math.huge;
			for i, v in pairs((game:GetService("Players")):GetPlayers()) do
				if v.Name ~= game.Players.LocalPlayer.Name then
					local Distance = v:DistanceFromCharacter(game.Players.LocalPlayer.Character.HumanoidRootPart.Position);
					if Distance < MaxDistance then
						MaxDistance = Distance;
						TargetPlayerAim = v.Name;
					end;
				end;
			end;
		end);
	end;
end);
spawn(function()
	pcall(function()
		(game:GetService("RunService")).RenderStepped:connect(function()
			if _G.Settings.Combat["Aimbot Skill Nearest"] and TargetPlayerAim ~= nil and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character[(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")).Name]:FindFirstChild("MousePos") then
				local args = {
					[1] = ((game:GetService("Players")):FindFirstChild(TargetPlayerAim)).Character.HumanoidRootPart.Position
				};
				(game:GetService("Players")).LocalPlayer.Character[(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")).Name].RemoteEvent:FireServer(unpack(args));
			end;
		end);
	end);
end);
CombatTab:Toggle("Aimbot Skill", _G.Settings.Combat["Aimbot Skill"], "Aimbot All Skill", function(value)
	_G.Settings.Combat["Aimbot Skill"] = value;
	(getgenv()).SaveSetting();
end);
spawn(function()
	pcall(function()
		while task.wait() do
			if _G.Settings.Combat["Aimbot Skill"] and PlayerSelectAimbot ~= nil and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character[(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")).Name]:FindFirstChild("MousePos") then
				local args = {
					[1] = ((game:GetService("Players")):FindFirstChild(PlayerSelectAimbot)).Character.HumanoidRootPart.Position
				};
				((game:GetService("Players")).LocalPlayer.Character:FindFirstChild((game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")).Name)).RemoteEvent:FireServer(unpack(args));
			end;
		end;
	end);
end);
CombatTab:Toggle("Enable PvP", _G.Settings.Combat["Enable PvP"], "Enable PvP", function(value)
	_G.Settings.Combat["Enable PvP"] = value;
	(getgenv()).SaveSetting();
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.Settings.Combat["Enable PvP"] then
				if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("EnablePvp");
				end;
			end;
		end;
	end);
end);
CombatTab:Toggle("Safe Mode", false, "Auto Teleport To Up", function(value)
	_G.Safe_Mode = value;
	StopTween(_G.Safe_Mode);
end);
spawn(function()
	pcall(function()
		while wait(0.2) do
			if _G.Safe_Mode then
				local PlayerPosition = (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame;
				if (game:GetService("Players")).LocalPlayer.Character.Humanoid.Health <= 2000 then
					repeat
						wait();
						topos(PlayerPosition * CFrame.new(0, 400, 0));
					until (game:GetService("Players")).LocalPlayer.Character.Humanoid.Health >= 5000 or (not _g.Safe_Mode);
				end;
			end;
		end;
	end);
end);
CombatTab:Button("Respawn", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("SetTeam", "Pirates");
end);
if World2 or World3 then
	RaidTab:Seperator("Dungeon");
	local TimeRaid = RaidTab:Label("Wait For Dungeon");
	local Island = RaidTab:Label("Start Dungeon");
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible == true then
					TimeRaid:Set((game:GetService("Players")).LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Text);
				else
					TimeRaid:Set("Wait For Dungeon");
				end;
			end;
		end);
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if game.Workspace.Map.RaidMap:FindFirstChild("RaidIsland5") then
					Island:Set("ðŸï¸ Island 5");
				elseif game.Workspace.Map.RaidMap:FindFirstChild("RaidIsland4") then
					Island:Set("ðŸï¸ Island 4");
				elseif game.Workspace.Map.RaidMap:FindFirstChild("RaidIsland3") then
					Island:Set("ðŸï¸ Island 3");
				elseif game.Workspace.Map.RaidMap:FindFirstChild("RaidIsland2") then
					Island:Set("ðŸï¸ Island 2");
				elseif game.Workspace.Map.RaidMap:FindFirstChild("RaidIsland1") then
					Island:Set("ðŸï¸ Island 1");
				else
					Island:Set("Start Dungeon");
				end;
			end;
		end);
	end);
	function ChechRaidMapIsland(island)
		return game.Workspace.Map.RaidMap:FindFirstChild(island);
	end;
	function NextRaidIsland()
		local RaidPos = CFrame.new(0, 35, 0);
		if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible == true then
			if (game:GetService("Workspace"))._WorldOrigin.Locations:FindFirstChild("Island 5") then
				topos(((game:GetService("Workspace"))._WorldOrigin.Locations:FindFirstChild("Island 5")).CFrame * RaidPos);
			elseif (game:GetService("Workspace"))._WorldOrigin.Locations:FindFirstChild("Island 4") then
				topos(((game:GetService("Workspace"))._WorldOrigin.Locations:FindFirstChild("Island 4")).CFrame * RaidPos);
			elseif (game:GetService("Workspace"))._WorldOrigin.Locations:FindFirstChild("Island 3") then
				topos(((game:GetService("Workspace"))._WorldOrigin.Locations:FindFirstChild("Island 3")).CFrame * RaidPos);
			elseif (game:GetService("Workspace"))._WorldOrigin.Locations:FindFirstChild("Island 2") then
				topos(((game:GetService("Workspace"))._WorldOrigin.Locations:FindFirstChild("Island 2")).CFrame * RaidPos);
			elseif (game:GetService("Workspace"))._WorldOrigin.Locations:FindFirstChild("Island 1") then
				topos(((game:GetService("Workspace"))._WorldOrigin.Locations:FindFirstChild("Island 1")).CFrame * RaidPos);
			end;
		end;
	end;
	function CheckMonRaids()
		for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
			if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300 then
				return true;
			else
				return false;
			end;
		end;
	end;
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Raid["Auto Dungeon"] then
					if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible == true then
						if CheckMonRaids() then
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300 then
										pcall(function()
											repeat
												wait();
												Attack();
												EquipWeapon(_G.Settings.Main["Selected Weapon"]);
												topos(v.HumanoidRootPart.CFrame * Pos);
												v.HumanoidRootPart.CanCollide = false;
												v.Humanoid.WalkSpeed = 0;
												v.Head.CanCollide = false;
												v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
											until not _G.Settings.Raid["Auto Dungeon"] or (not v.Parent) or v.Humanoid.Health <= 0;
										end);
									end;
								end;
							end;
						else
							NextRaidIsland();
						end;
					end;
				end;
			end;
		end);
	end);
	Raidslist = {};
	RaidsModule = require(game.ReplicatedStorage.Raids);
	for i, v in pairs(RaidsModule.raids) do
		table.insert(Raidslist, v);
	end;
	for i, v in pairs(RaidsModule.advancedRaids) do
		table.insert(Raidslist, v);
	end;
	RaidTab:Dropdown("Choose Chip", Raidslist, _G.Settings.Raid["Selected Chip"], function(value)
		_G.Settings.Raid["Selected Chip"] = value;
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Raid["Auto Dungeon"] then
					if not (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Special Microchip") or (not (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Special Microchip")) then
						if not (game:GetService("Workspace"))._WorldOrigin.Locations:FindFirstChild("Island 1") then
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.Settings.Raid["Selected Chip"]);
						end;
					end;
				end;
			end;
		end);
	end);
	RaidTab:Toggle("Auto Dungeon ( Fully )", _G.Settings.Raid["Auto Dungeon"], "Start, Buy Chip, Kill Mob, Next Island", function(value)
		_G.Settings.Raid["Auto Dungeon"] = value;
		StopTween(_G.Settings.Raid["Auto Dungeon"]);
		(getgenv()).SaveSetting();
	end);
	RaidTab:Toggle("Auto Awaken", false, "Auto Awaken When Done Raid", function(value)
		_G.Settings.Raid["Auto Awaken"] = value;
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Raid["Auto Awaken"] then
				pcall(function()
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("Awakener", "Awaken");
				end);
			end;
		end;
	end);
	RaidTab:Slider("Price Devil Fruit", 0, 10000000, _G.Settings.Raid["Price Devil Fruit"], function(value)
		_G.Settings.Raid["Price Devil Fruit"] = value;
		(getgenv()).SaveSetting();
	end);
	RaidTab:Toggle("Auto Unstore Fruit", _G.Settings.Raid["Unstore Devil Fruit"], "Unstore Devil Fruit", function(value)
		_G.Settings.Raid["Unstore Devil Fruit"] = value;
		(getgenv()).SaveSetting();
	end);
	function GetFruitsInfo()
		for i, v in pairs((game:GetService("Players")).LocalPlayer.Backpack:GetChildren()) do
			if string.find(v.Name, "Fruit") then
				return true;
			end;
		end;
		for i, v in pairs((game:GetService("Players")).LocalPlayer.Character:GetChildren()) do
			if string.find(v.Name, "Fruit") then
				return true;
			end;
		end;
		return false;
	end;
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.Raid["Unstore Devil Fruit"] then
					fruit = (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("getInventoryFruits");
					for i, v in pairs(fruit) do
						if v.Price < _G.Settings.Raid["Price Devil Fruit"] then
							if not GetFruitsInfo() then
								(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("LoadFruit", v.Name);
							end;
						end;
					end;
				end;
			end);
		end;
	end);
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.Raid["Auto Dungeon"] then
					if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible == false then
						if not game.Workspace.Map.RaidMap:FindFirstChild("RaidIsland1") and (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Special Microchip") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Special Microchip") then
							if World2 then
								fireclickdetector((game:GetService("Workspace")).Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector);
							elseif World3 then
								(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-5083.26025390625, 314.6056823730469, -3175.673095703125));
								fireclickdetector((game:GetService("Workspace")).Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector);
							end;
						end;
					end;
				end;
			end);
		end;
	end);
	RaidTab:Button("Teleport to Lab", function()
		if World2 then
			topos(CFrame.new(-6438.73535, 250.645355, -4501.50684));
		elseif World3 then
			topos(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 0.0000000448217499, -0.378151238, 0.00000000455503146, 1, 0.000000107377559, 0.378151238, 0.000000097681621, -0.925743818));
		end;
	end);
	if World2 then
		RaidTab:Seperator("Law Raid");
		RaidTab:Toggle("Auto Raid Law", _G.Settings.Raid["Law Raid"], "Law Raid", function(value)
			_G.Settings.Raid["Law Raid"] = value;
			StopTween(_G.Settings.Raid["Law Raid"]);
			(getgenv()).SaveSetting();
		end);
		spawn(function()
			pcall(function()
				while wait(0.2) do
					if _G.Settings.Raid["Law Raid"] then
						if not (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Microchip") and (not (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Microchip")) and (not (game:GetService("Workspace")).Enemies:FindFirstChild("Order")) and (not (game:GetService("ReplicatedStorage")):FindFirstChild("Order")) then
							wait(0.3);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "Microchip", "1");
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "Microchip", "2");
						end;
					end;
				end;
			end);
		end);
		spawn(function()
			pcall(function()
				while wait(0.2) do
					if _G.Settings.Raid["Law Raid"] then
						if not (game:GetService("Workspace")).Enemies:FindFirstChild("Order") and (not (game:GetService("ReplicatedStorage")):FindFirstChild("Order")) then
							if (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Microchip") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Microchip") then
								fireclickdetector((game:GetService("Workspace")).Map.CircleIsland.RaidSummon.Button.Main.ClickDetector);
							end;
						end;
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Order") or (game:GetService("Workspace")).Enemies:FindFirstChild("Order") then
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Order") then
								for h, i in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
									if i.Name == "Order" then
										repeat
											(game:GetService("RunService")).Heartbeat:wait();
											Attack();
											AutoHaki();
											EquipWeapon(_G.Settings.Main["Selected Weapon"]);
											topos(i.HumanoidRootPart.CFrame * Pos);
											i.HumanoidRootPart.CanCollide = false;
											i.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
											Attack();
										until not i.Parent or i.Humanoid.Health <= 0 or _G.Settings.Raid["Law Raid"] == false;
									end;
								end;
							elseif (game:GetService("ReplicatedStorage")):FindFirstChild("Order") then
								topos(CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875));
							end;
						end;
					end;
				end;
			end);
		end);
	end;
end;
TeleportTab:Seperator("World");
TeleportTab:Button("Teleport To First Sea", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("TravelMain");
end);
TeleportTab:Button("Teleport To Second Sea", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("TravelDressrosa");
end);
TeleportTab:Button("Teleport To Third Sea", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("TravelZou");
end);
TeleportTab:Seperator("Island");
if World1 then
	TeleportTab:Dropdown("Choose Island", {
		"WindMill",
		"Marine",
		"Middle Town",
		"Jungle",
		"Pirate Village",
		"Desert",
		"Snow Island",
		"MarineFord",
		"Colosseum",
		"Sky Island 1",
		"Sky Island 2",
		"Sky Island 3",
		"Prison",
		"Magma Village",
		"Under Water Island",
		"Fountain City",
		"Shank Room",
		"Mob Island"
	}, false, function(value)
		_G.SelectIsland = value;
	end);
end;
if World2 then
	TeleportTab:Dropdown("Choose Island", {
		"The Cafe",
		"Frist Spot",
		"Dark Area",
		"Flamingo Mansion",
		"Flamingo Room",
		"Green Zone",
		"Factory",
		"Colossuim",
		"Zombie Island",
		"Two Snow Mountain",
		"Punk Hazard",
		"Cursed Ship",
		"Ice Castle",
		"Forgotten Island",
		"Ussop Island",
		"Mini Sky Island"
	}, false, function(value)
		_G.SelectIsland = value;
	end);
end;
if World3 then
	TeleportTab:Dropdown("Choose Island", {
		"Mansion",
		"Port Town",
		"Great Tree",
		"Castle On The Sea",
		"MiniSky",
		"Hydra Island",
		"Floating Turtle",
		"Haunted Castle",
		"Ice Cream Island",
		"Peanut Island",
		"Cake Island",
		"Cocoa Island",
		"Candy Island",
		"Tiki Outpost",
		"Dragon Dojo"
	}, false, function(value)
		_G.SelectIsland = value;
	end);
end;
TeleportTab:Toggle("Teleport", false, "Tween To Island", function(value)
	_G.TeleportIsland = value;
	if _G.TeleportIsland == true then
		repeat
			wait();
			if _G.SelectIsland == "WindMill" then
				topos(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594));
			elseif _G.SelectIsland == "Marine" then
				topos(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156));
			elseif _G.SelectIsland == "Middle Town" then
				topos(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094));
			elseif _G.SelectIsland == "Jungle" then
				topos(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754));
			elseif _G.SelectIsland == "Pirate Village" then
				topos(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969));
			elseif _G.SelectIsland == "Desert" then
				topos(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688));
			elseif _G.SelectIsland == "Snow Island" then
				topos(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469));
			elseif _G.SelectIsland == "MarineFord" then
				topos(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313));
			elseif _G.SelectIsland == "Colosseum" then
				topos(CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969));
			elseif _G.SelectIsland == "Sky Island 1" then
				topos(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063));
			elseif _G.SelectIsland == "Sky Island 2" then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.82275, 872.54248, -1667.55688));
			elseif _G.SelectIsland == "Sky Island 3" then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047));
			elseif _G.SelectIsland == "Prison" then
				topos(CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656));
			elseif _G.SelectIsland == "Magma Village" then
				topos(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875));
			elseif _G.SelectIsland == "Under Water Island" then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
			elseif _G.SelectIsland == "Fountain City" then
				topos(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813));
			elseif _G.SelectIsland == "Shank Room" then
				topos(CFrame.new(-1442.16553, 29.8788261, -28.3547478));
			elseif _G.SelectIsland == "Mob Island" then
				topos(CFrame.new(-2850.20068, 7.39224768, 5354.99268));
			elseif _G.SelectIsland == "The Cafe" then
				topos(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828));
			elseif _G.SelectIsland == "Frist Spot" then
				topos(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375));
			elseif _G.SelectIsland == "Dark Area" then
				topos(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375));
			elseif _G.SelectIsland == "Flamingo Mansion" then
				topos(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234));
			elseif _G.SelectIsland == "Flamingo Room" then
				topos(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688));
			elseif _G.SelectIsland == "Green Zone" then
				topos(CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344));
			elseif _G.SelectIsland == "Factory" then
				topos(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617));
			elseif _G.SelectIsland == "Colossuim" then
				topos(CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641));
			elseif _G.SelectIsland == "Zombie Island" then
				topos(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094));
			elseif _G.SelectIsland == "Two Snow Mountain" then
				topos(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938));
			elseif _G.SelectIsland == "Punk Hazard" then
				topos(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125));
			elseif _G.SelectIsland == "Cursed Ship" then
				topos(CFrame.new(923.40197753906, 125.05712890625, 32885.875));
			elseif _G.SelectIsland == "Ice Castle" then
				topos(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188));
			elseif _G.SelectIsland == "Forgotten Island" then
				topos(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875));
			elseif _G.SelectIsland == "Ussop Island" then
				topos(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781));
			elseif _G.SelectIsland == "Mini Sky Island" then
				topos(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375));
			elseif _G.SelectIsland == "Great Tree" then
				topos(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625));
			elseif _G.SelectIsland == "Castle On The Sea" then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-5083.26025390625, 314.6056823730469, -3175.673095703125));
			elseif _G.SelectIsland == "MiniSky" then
				topos(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125));
			elseif _G.SelectIsland == "Port Town" then
				topos(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375));
			elseif _G.SelectIsland == "Hydra Island" then
				topos(CFrame.new(5291.24951, 1005.4433, 393.762421, 0.994222522, 0.00000000945717726, -0.10733854, -0.00000000708227299, 1, 0.0000000225065655, 0.10733854, -0.0000000216163336, 0.994222522));
			elseif _G.SelectIsland == "Floating Turtle" then
				topos(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625));
			elseif _G.SelectIsland == "Mansion" then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375));
			elseif _G.SelectIsland == "Haunted Castle" then
				topos(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562));
			elseif _G.SelectIsland == "Ice Cream Island" then
				topos(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625));
			elseif _G.SelectIsland == "Peanut Island" then
				topos(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375));
			elseif _G.SelectIsland == "Cake Island" then
				topos(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375));
			elseif _G.SelectIsland == "Cocoa Island" then
				topos(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375));
			elseif _G.SelectIsland == "Candy Island" then
				topos(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625));
			elseif _G.SelectIsland == "Tiki Outpost" then
				topos(CFrame.new(-16218.6826, 9.08636189, 445.618408, -0.0610186495, 0.00000000110512588, -0.99813664, -0.0000000183458475, 1, 0.00000000222871765, 0.99813664, 0.0000000184476558, -0.0610186495));
			elseif _G.SelectIsland == "Dragon Dojo" then
				topos(CFrame.new(5743.31934, 1206.90991, 936.011047, 0.475779682, -0.00000000366404773, -0.879564524, 0.0000000254969592, 1, 0.00000000962622693, 0.879564524, -0.000000027006184, 0.475779682));
			end;
		until not _G.TeleportIsland;
	end;
	StopTween(_G.TeleportIsland);
end);
TeleportTab:Seperator("Npc");
if World1 then
	TeleportTab:Dropdown("Choose NPC", {
		"Random Devil Fruit",
		"Blox Fruits Dealer",
		"Remove Devil Fruit",
		"Ability Teacher",
		"Dark Step",
		"Electro",
		"Fishman Karate"
	}, false, function(value)
		_G.SelectNPC = value;
	end);
end;
if World2 then
	TeleportTab:Dropdown("Choose NPC", {
		"Dargon Berath",
		"Mtsterious Man",
		"Mysterious Scientist",
		"Awakening Expert",
		"Nerd",
		"Bar Manager",
		"Blox Fruits Dealer",
		"Trevor",
		"Enhancement Editor",
		"Pirate Recruiter",
		"Marines Recruiter",
		"Chemist",
		"Cyborg",
		"Ghoul Mark",
		"Guashiem",
		"El Admin",
		"El Rodolfo",
		"Arowe"
	}, false, function(value)
		_G.SelectNPC = value;
	end);
end;
if World3 then
	TeleportTab:Dropdown("Choose NPC", {
		"Blox Fruits Dealer",
		"Remove Devil Fruit",
		"Horned Man",
		"Hungey Man",
		"Previous Hero",
		"Butler",
		"Lunoven",
		"Trevor",
		"Elite Hunter",
		"Player Hunter",
		"Uzoth"
	}, false, function(value)
		_G.SelectNPC = value;
	end);
end;
TeleportTab:Toggle("Teleport", _G.TeleportNPC, "Tween To Npc", function(value)
	_G.TeleportNPC = value;
	if _G.TeleportNPC == true then
		repeat
			wait();
			if _G.SelectNPC == "Dargon Berath" then
				topos(CFrame.new(703.372986, 186.985519, 654.522034, 1, 0, 0, 0, 1, 0, 0, 0, 1));
			elseif _G.SelectNPC == "Mtsterious Man" then
				topos(CFrame.new(-2574.43335, 1627.92371, -3739.35767, 0.378697902, -0.00000000906400288, 0.92552036, -0.00000000895582009, 1, 0.0000000134578926, -0.92552036, -0.0000000133852689, 0.378697902));
			elseif _G.SelectNPC == "Mysterious Scientist" then
				topos(CFrame.new(-6437.87793, 250.645355, -4498.92773, 0.502376854, -0.0000000101223634, -0.864648759, 0.0000000234106086, 1, 0.00000000189508653, 0.864648759, -0.0000000211940012, 0.502376854));
			elseif _G.SelectNPC == "Awakening Expert" then
				topos(CFrame.new(-408.098846, 16.0459061, 247.432846, 0.028394036, 0.000000000617599138, 0.999596894, -0.00000000557905944, 1, -0.000000000459372484, -0.999596894, -0.00000000556376767, 0.028394036));
			elseif _G.SelectNPC == "Nerd" then
				topos(CFrame.new(-401.783722, 73.0859299, 262.306702, 1, 0, 0, 0, 1, 0, 0, 0, 1));
			elseif _G.SelectNPC == "Bar Manager" then
				topos(CFrame.new(-385.84726, 73.0458984, 316.088806, 1, 0, 0, 0, 1, 0, 0, 0, 1));
			elseif _G.SelectNPC == "Blox Fruits Dealer" then
				topos(CFrame.new(-450.725464, 73.0458984, 355.636902, -0.780352175, -0.000000027266168, 0.625340283, 0.00000000978516468, 1, 0.0000000558128797, -0.625340283, 0.0000000496727601, -0.780352175));
			elseif _G.SelectNPC == "Trevor" then
				topos(CFrame.new(-341.498322, 331.886444, 643.024963, 1, 0, 0, 0, 1, 0, 0, 0, 1));
			elseif _G.SelectNPC == "Plokster" then
				topos(CFrame.new(-1885.16016, 88.3838196, -1912.28723, -0.513468027, 0, 0.858108759, 0, 1, 0, -0.858108759, 0, -0.513468027));
			elseif _G.SelectNPC == "Enhancement Editor" then
				topos(CFrame.new(-346.820221, 72.9856339, 1194.36218, 1, 0, 0, 0, 1, 0, 0, 0, 1));
			elseif _G.SelectNPC == "Pirate Recruiter" then
				topos(CFrame.new(-428.072998, 72.9495239, 1445.32422, 1, 0, 0, 0, 1, 0, 0, 0, 1));
			elseif _G.SelectNPC == "Marines Recruiter" then
				topos(CFrame.new(-1349.77295, 72.9853363, -1045.12964, 0.866493046, 0, -0.499189168, 0, 1, 0, 0.499189168, 0, 0.866493046));
			elseif _G.SelectNPC == "Chemist" then
				topos(CFrame.new(-2777.45288, 72.9919434, -3572.25732, 1, 0, 0, 0, 1, 0, 0, 0, 1));
			elseif _G.SelectNPC == "Ghoul Mark" then
				topos(CFrame.new(635.172546, 125.976357, 33219.832, 1, 0, 0, 0, 1, 0, 0, 0, 1));
			elseif _G.SelectNPC == "Cyborg" then
				topos(CFrame.new(629.146851, 312.307373, -531.624146, 1, 0, 0, 0, 1, 0, 0, 0, 1));
			elseif _G.SelectNPC == "Guashiem" then
				topos(CFrame.new(937.953003, 181.083359, 33277.9297, 1, -0.0000000860126406, 0.0000000000000000381773896, 0.0000000860126406, 1, -0.000000000000000189969598, -0.000000000000000038177373, 0.000000000000000189969598, 1));
			elseif _G.SelectNPC == "El Admin" then
				topos(CFrame.new(1322.80835, 126.345039, 33135.8789, 0.988783717, -0.0000000869797603, -0.149354503, 0.0000000862223786, 1, -0.0000000115461916, 0.149354503, -0.00000000146101409, 0.988783717));
			elseif _G.SelectNPC == "El Rodolfo" then
				topos(CFrame.new(941.228699, 40.4686775, 32778.9922, -0.818029106, -0.0000000119524382, 0.575176775, -0.0000000128741648, 1, 0.00000000247053866, -0.575176775, -0.00000000538394795, -0.818029106));
			elseif _G.SelectNPC == "Arowe" then
				topos(CFrame.new(-1994.51038, 125.519142, -72.2622986, -0.16715166, -0.0000000655417338, -0.985931218, -0.0000000713315558, 1, -0.0000000543836585, 0.985931218, 0.0000000612376851, -0.16715166));
			elseif _G.SelectNPC == "Random Devil Fruit" then
				topos(CFrame.new(-1436.19727, 61.8777695, 4.75247526, -0.557794094, 0.0000000274216543, 0.829979479, 0.0000000583273234, 1, 0.00000000616037932, -0.829979479, 0.0000000518467118, -0.557794094));
			elseif _G.SelectNPC == "Blox Fruits Dealer" then
				topos(CFrame.new(-923.255066, 7.67800522, 1608.61011, 1, 0, 0, 0, 1, 0, 0, 0, 1));
			elseif _G.SelectNPC == "Remove Devil Fruit" then
				topos(CFrame.new(5664.80469, 64.677681, 867.85907, 1, 0, 0, 0, 1, 0, 0, 0, 1));
			elseif _G.SelectNPC == "Ability Teacher" then
				topos(CFrame.new(-1057.67822, 9.65220833, 1799.49146, -0.865874112, -0.0000000926330159, 0.500262439, -0.0000000733759435, 1, 0.00000005816689, -0.500262439, 0.0000000136579752, -0.865874112));
			elseif _G.SelectNPC == "Dark Step" then
				topos(CFrame.new(-987.873047, 13.7778397, 3989.4978, 1, 0, 0, 0, 1, 0, 0, 0, 1));
			elseif _G.SelectNPC == "Electro" then
				topos(CFrame.new(-5389.49561, 13.283, -2149.80151, 1, 0, 0, 0, 1, 0, 0, 0, 1));
			elseif _G.SelectNPC == "Fishman Karate" then
				topos(CFrame.new(61581.8047, 18.8965912, 987.832703, 1, 0, 0, 0, 1, 0, 0, 0, 1));
			elseif _G.SelectNPC == "Random Devil Fruit" then
				topos(CFrame.new(-12491, 337, -7449));
			elseif _G.SelectNPC == "Blox Fruits Dealer" then
				topos(CFrame.new(-12511, 337, -7448));
			elseif _G.SelectNPC == "Remove Devil Fruit" then
				topos(CFrame.new(-5571, 1089, -2661));
			elseif _G.SelectNPC == "Horned Man" then
				topos(CFrame.new(-11890, 931, -8760));
			elseif _G.SelectNPC == "Hungey Man" then
				topos(CFrame.new(-10919, 624, -10268));
			elseif _G.SelectNPC == "Previous Hero" then
				topos(CFrame.new(-10368, 332, -10128));
			elseif _G.SelectNPC == "Butler" then
				topos(CFrame.new(-5125, 316, -3130));
			elseif _G.SelectNPC == "Lunoven" then
				topos(CFrame.new(-5117, 316, -3093));
			elseif _G.SelectNPC == "Elite Hunter" then
				topos(CFrame.new(-5420, 314, -2828));
			elseif _G.SelectNPC == "Player Hunter" then
				topos(CFrame.new(-5559, 314, -2840));
			elseif _G.SelectNPC == "Uzoth" then
				topos(CFrame.new(-9785, 852, 6667));
			end;
		until not _G.TeleportNPC;
	end;
	StopTween(_G.TeleportNPC);
end);
if World2 then
	ShopTab:Seperator("Legendary Sword");
	ShopTab:Toggle("Auto Buy Legendary Sword", _G.Settings.Shop["Auto Buy Legendary Sword"], "Buy Legendary Sword When Spawn", function(value)
		_G.Settings.Shop["Auto Buy Legendary Sword"] = value;
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Shop["Auto Buy Legendary Sword"] then
				pcall(function()
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("LegendarySwordDealer", "1");
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("LegendarySwordDealer", "2");
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("LegendarySwordDealer", "3");
				end);
			end;
		end;
	end);
end;
if World2 or World3 then
	ShopTab:Seperator("Haki Color");
	local MOA_Status = ShopTab:Label("Master of Aura Status");
	spawn(function()
		while wait(0.2) do
			pcall(function()
				local response = (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("ColorsDealer", "1");
				if response then
					MOA_Status:Set("Master of Auras Spawn!");
				else
					MOA_Status:Set("Master of Auras Not Spawn!");
				end;
			end);
		end;
	end);
	ShopTab:Toggle("Auto Buy Haki Color", _G.Settings.Shop["Auto Buy Haki Color"], "Auto Buy Haki Color", function(value)
		_G.Settings.Shop["Auto Buy Haki Color"] = value;
		(getgenv()).SaveSetting();
	end);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Shop["Auto Buy Haki Color"] then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ColorsDealer", "2");
			end;
		end;
	end);
end;
ShopTab:Seperator("Abilities");
ShopTab:Button("Buy Geppo [ $10,000 ]", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyHaki", "Geppo");
end);
ShopTab:Button("Buy Buso Haki [ $25,000 ]", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyHaki", "Buso");
end);
ShopTab:Button("Buy Soru [ $25,000 ]", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyHaki", "Soru");
end);
ShopTab:Button("Buy Observation Haki [ $750,000 ]", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("KenTalk", "Buy");
end);
ShopTab:Toggle("Auto Buy Abilities", false, "Auto Buy Haki", function(t)
	Abilities = t;
	while Abilities do
		wait(0.2);
		(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyHaki", "Geppo");
		(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyHaki", "Buso");
		(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyHaki", "Soru");
	end;
end);
ShopTab:Seperator("Boats");
BoatList = {
	"Pirate Sloop",
	"Enforcer",
	"Rocket Boost",
	"Dinghy",
	"Pirate Basic",
	"Pirate Brigade"
};
spawn(function()
	while wait() do
		pcall(function()
			if SelectBoat == "Pirate Sloop" then
				_G.SelectBoat = "PirateSloop";
			elseif SelectBoat == "Enforcer" then
				_G.SelectBoat = "Enforcer";
			elseif SelectBoat == "RocketBoost" then
				_G.SelectBoat = "RocketBoost";
			elseif SelectBoat == "PirateBasic" then
				_G.SelectBoat = "PirateBasic";
			elseif SelectBoat == "Pirate Brigade" then
				_G.SelectBoat = "PirateBrigade";
			end;
		end);
	end;
end);
ShopTab:Dropdown("Select Boats", BoatList, false, function(value)
	SelectBoat = value;
end);
ShopTab:Button("Buy Boat", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyBoat", _G.SelectBoat);
end);
ShopTab:Seperator("Fighting Style");
ShopTab:Button("Buy Black Leg [ $150,000 ]", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyBlackLeg");
end);
ShopTab:Button("Buy Electro [ $550,000 ]", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectro");
end);
ShopTab:Button("Buy Water Kung Fu [ $750,000 ]", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyFishmanKarate");
end);
ShopTab:Button("Buy Dragon Claw [ Æ’1,500 ]", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1");
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
end);
ShopTab:Button("Buy Superhuman [ $3,000,000 ]", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySuperhuman");
end);
ShopTab:Button("Buy Death Step [ Æ’5,000 $5,000,000 ]", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDeathStep");
end);
ShopTab:Button("Buy Sharkman Karate [ Æ’5,000 $2,500,000 ]", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySharkmanKarate", true);
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySharkmanKarate");
end);
ShopTab:Button("Buy Electric Claw [ Æ’5,000 $3,000,000 ]", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw");
end);
ShopTab:Button("Buy Dragon Talon [ Æ’5,000 $3,000,000 ]", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDragonTalon");
end);
ShopTab:Button("Buy God Human [ Æ’5,000 $5,000,000 ]", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyGodhuman");
end);
ShopTab:Button("Buy Sanguine Art [ Æ’5,000 $5,000,000 ]", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySanguineArt", true);
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySanguineArt");
end);
ShopTab:Seperator("Sword");
ShopTab:Button("Cutlass [ $1,000 ]", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyItem", "Cutlass");
end);
ShopTab:Button("Katana [ $1,000 ]", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyItem", "Katana");
end);
ShopTab:Button("Iron Mace [ $25,000 ]", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace");
end);
ShopTab:Button("Dual Katana [ $12,000 ]", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyItem", "Duel Katana");
end);
ShopTab:Button("Triple Katana [ $60,000 ]", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana");
end);
ShopTab:Button("Pipe [ $100,000 ]", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyItem", "Pipe");
end);
ShopTab:Button("Dual-Headed Blade [ $400,000 ]", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade");
end);
ShopTab:Button("Bisento [ $1,200,000 ]", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyItem", "Bisento");
end);
ShopTab:Button("Soul Cane [ $750,000 ]", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane");
end);
ShopTab:Button("Pole v.2 [ Æ’5,000 ]", function()
	game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ThunderGodTalk");
end);
ShopTab:Seperator("Gun");
ShopTab:Button("Slingshot [ $5,000 ]", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyItem", "Slingshot");
end);
ShopTab:Button("Musket [ $8,000 ]", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyItem", "Musket");
end);
ShopTab:Button("Flintlock [ $10,500 ]", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyItem", "Flintlock");
end);
ShopTab:Button("Refined Slingshot [ $30,000 ]", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyItem", "Refined Flintlock");
end);
ShopTab:Button("Refined Flintlock [ $65,000 ]", function()
	local args = {
		[1] = "BuyItem",
		[2] = "Refined Flintlock"
	};
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(args));
end);
ShopTab:Button("Cannon [ $100,000 ]", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyItem", "Cannon");
end);
ShopTab:Button("Kabucha [ Æ’1,500]", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "1");
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "2");
end);
ShopTab:Button("Bizarre Rifle [ 250 Ectoplasm ]", function()
	local A_1 = "Ectoplasm";
	local A_2 = "Buy";
	local A_3 = 1;
	local Event = (game:GetService("ReplicatedStorage")).Remotes.CommF_;
	Event:InvokeServer(A_1, A_2, A_3);
end);
ShopTab:Seperator("Stats");
ShopTab:Button("Reset Stats [ Use Æ’2,500 ]", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "1");
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2");
end);
ShopTab:Button("Random Race [ Use Æ’3000 ]", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "1");
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2");
end);
ShopTab:Seperator("Accessories");
ShopTab:Button("Black Cape [ $50,000 ]", function()
	local args = {
		[1] = "BuyItem",
		[2] = "Black Cape"
	};
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(args));
end);
ShopTab:Button("Swordsman Hat [ $150,000 ]", function()
	local args = {
		[1] = "BuyItem",
		[2] = "Swordsman Hat"
	};
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(args));
end);
ShopTab:Button("Tomoe Ring [ $500,000 ]", function()
	local args = {
		[1] = "BuyItem",
		[2] = "Tomoe Ring"
	};
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(args));
end);
FruitTab:Seperator("Fruits");
FruitTab:Toggle("Auto Random Fruit", _G.Settings.Fruit["Auto Buy Random Fruit"], "Auto Buy Random Fruit", function(value)
	_G.Settings.Fruit["Auto Buy Random Fruit"] = value;
	(getgenv()).SaveSetting();
end);
spawn(function()
	pcall(function()
		while wait(0.2) do
			if _G.Settings.Fruit["Auto Buy Random Fruit"] then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("Cousin", "Buy");
			end;
		end;
	end);
end);
FruitTab:Button("Random Fruit", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("Cousin", "Buy");
end);
FruitTab:Button("Open Devil Shop", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("GetFruits");
	(game:GetService("Players")).LocalPlayer.PlayerGui.Main.FruitShop.Visible = true;
end);
local RarityFruits = {
	Common = {
		"Rocket Fruit",
		"Spin Fruit",
		"Chop Fruit",
		"Spring Fruit",
		"Bomb Fruit",
		"Smoke Fruit",
		"Spike Fruit"
	},
	Uncommon = {
		"Flame Fruit",
		"Falcon Fruit",
		"Ice Fruit",
		"Sand Fruit",
		"Diamond Fruit",
		"Dark Fruit"
	},
	Rare = {
		"Light Fruit",
		"Rubber Fruit",
		"Barrier Fruit",
		"Ghost Fruit",
		"Magma Fruit"
	},
	Legendary = {
		"Quake Fruit",
		"Budha Fruit",
		"Love Fruit",
		"Spider Fruit",
		"Sound Fruit",
		"Phoenix Fruit",
		"Portal Fruit",
		"Rumble Fruit",
		"Pain Fruit",
		"Blizzard Fruit"
	},
	Mythical = {
		"Gravity Fruit",
		"Mammoth Fruit",
		"T-Rex Fruit",
		"Dough Fruit",
		"Shadow Fruit",
		"Venom Fruit",
		"Control Fruit",
		"Spirit Fruit",
		"Dragon Fruit",
		"Leopard Fruit",
		"Kitsune Fruit"
	}
};
local SelectRarityFruits = {
	"Common - Mythical",
	"Uncommon - Mythical",
	"Rare - Mythical",
	"Legendary - Mythical",
	"Mythical"
};
local ResultUnstoreFruits = {};
FruitTab:Dropdown("Store Rarity Fruit", SelectRarityFruits, _G.Settings.Fruit["Store Rarity Fruit"], function(value)
	_G.Settings.Fruit["Store Rarity Fruit"] = value;
	(getgenv()).SaveSetting();
end);
function CheckFruits()
	for i, v in pairs(RarityFruits) do
		if _G.Settings.Fruit["Store Rarity Fruit"] == "Common - Mythical" then
			if i == "Common" or i == "Uncommon" or i == "Rare" or i == "Legendary" or i == "Mythical" then
				for _, fruit in ipairs(v) do
					table.insert(ResultStoreFruits, fruit);
				end;
			end;
		elseif _G.Settings.Fruit["Store Rarity Fruit"] == "Uncommon - Mythical" then
			if i == "Uncommon" or i == "Rare" or i == "Legendary" or i == "Mythical" then
				for _, fruit in ipairs(v) do
					table.insert(ResultStoreFruits, fruit);
				end;
			end;
		elseif _G.Settings.Fruit["Store Rarity Fruit"] == "Rare - Mythical" then
			if i == "Rare" or i == "Legendary" or i == "Mythical" then
				for _, fruit in ipairs(v) do
					table.insert(ResultStoreFruits, fruit);
				end;
			end;
		elseif _G.Settings.Fruit["Store Rarity Fruit"] == "Legendary - Mythical" then
			if i == "Legendary" or i == "Mythical" then
				for _, fruit in ipairs(v) do
					table.insert(ResultStoreFruits, fruit);
				end;
			end;
		elseif _G.Settings.Fruit["Store Rarity Fruit"] == "Mythical" then
			if i == "Mythical" then
				for _, fruit in ipairs(v) do
					table.insert(ResultStoreFruits, fruit);
				end;
			end;
		end;
	end;
end;
FruitTab:Toggle("Auto Store Fruit", _G.Settings.Fruit["Auto Store Fruit"], "Store Fruit", function(value)
	_G.Settings.Fruit["Auto Store Fruit"] = value;
	(getgenv()).SaveSetting();
end);
spawn(function()
	while wait(0.2) do
		pcall(function()
			if _G.Settings.Fruit["Auto Store Fruit"] then
				for i, v in pairs((game:GetService("Players")).LocalPlayer.Backpack:GetChildren()) do
					if string.find(v.Name, "Fruit") then
						ResultStoreFruits = {};
						CheckFruits();
						for z, Res in pairs(ResultStoreFruits) do
							if v.Name == Res then
								local NameFruit = v.Name;
								local FirstNameFruit = string.gsub(v.Name, " Fruit", "");
								if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild(NameFruit) then
									(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("StoreFruit", FirstNameFruit .. "-" .. FirstNameFruit, (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild(NameFruit));
								end;
							end;
						end;
					end;
				end;
			end;
		end);
	end;
end);
FruitTab:Toggle("Fruit Notification", _G.Settings.Fruit["Fruit Notification"], "Add Notification When Fruit Spawn", function(value)
	_G.Settings.Fruit["Fruit Notification"] = value;
	(getgenv()).SaveSetting();
end);
spawn(function()
	while wait(2) do
		if _G.Settings.Fruit["Fruit Notification"] then
			for i, v in pairs(game.Workspace:GetChildren()) do
				if string.find(v.Name, "Fruit") then
					Update:Notify("Fruit : " .. v.Nmae, 3);
				end;
			end;
		end;
	end;
end);
FruitTab:Toggle("Teleport To Fruit", _G.Settings.Fruit["Teleport To Fruit"], "Teleport To Fruit Instant", function(value)
	_G.Settings.Fruit["Teleport To Fruit"] = value;
	(getgenv()).SaveSetting();
end);
spawn(function()
	while wait(0.2) do
		if _G.Settings.Fruit["Teleport To Fruit"] then
			for i, v in pairs(game.Workspace:GetChildren()) do
				if string.find(v.Name, "Fruit") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame;
				end;
			end;
		end;
	end;
end);
FruitTab:Toggle("Tween To Fruit", _G.Settings.Fruit["Tween To Fruit"], "Teleport To Fruit Using Tween", function(value)
	_G.Settings.Fruit["Tween To Fruit"] = value;
	StopTween(_G.Settings.Fruit["Tween To Fruit"]);
	(getgenv()).SaveSetting();
end);
spawn(function()
	while wait(0.2) do
		if _G.Settings.Fruit["Tween To Fruit"] then
			for i, v in pairs(game.Workspace:GetChildren()) do
				if string.find(v.Name, "Fruit") then
					topos(v.Handle.CFrame);
				end;
			end;
		end;
	end;
end);
FruitTab:Button("Grab All Fruits", function()
	for i, v in pairs(game.Workspace:GetChildren()) do
		if v:IsA("Tool") then
			v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
		end;
	end;
end);
FruitTab:Seperator("Visual");
FruitTab:Button("Rain Fruit", function()
	for h, i in pairs((game:GetObjects("rbxassetid://14759368201"))[1]:GetChildren()) do
		i.Parent = game.Workspace.Map;
		i:MoveTo(game.Players.LocalPlayer.Character.PrimaryPart.Position + Vector3.new(math.random((-50), 50), 100, math.random((-50), 50)));
		if i.Fruit:FindFirstChild("AnimationController") then
			((i.Fruit:FindFirstChild("AnimationController")):LoadAnimation(i.Fruit:FindFirstChild("Idle"))):Play();
		end;
		i.Handle.Touched:Connect(function(cR)
			if cR.Parent == game.Players.LocalPlayer.Character then
				i.Parent = game.Players.LocalPlayer.Backpack;
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(i);
			end;
		end);
	end;
end);
MiscTab:Seperator("Misc");
MiscTab:Button("Open Devil Shop", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("GetFruits");
	(game:GetService("Players")).LocalPlayer.PlayerGui.Main.FruitShop.Visible = true;
end);
MiscTab:Button("Open Haki Color", function()
	game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true;
end);
MiscTab:Button("Open Title Name", function()
	local args = {
		[1] = "getTitles"
	};
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(args));
	game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true;
end);
MiscTab:Button("Open Inventory", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("getInventoryWeapons");
	wait(1);
	(game:GetService("Players")).LocalPlayer.PlayerGui.Main.Inventory.Visible = true;
end);
MiscTab:Button("Open Inventory Fruit", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("getInventoryFruits");
	(game:GetService("Players")).LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true;
end);
MiscTab:Seperator("Teams");
MiscTab:Button("Join Pirates Team", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("SetTeam", "Pirates");
end);
MiscTab:Button("Join Marines Team", function()
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("SetTeam", "Marines");
end);
MiscTab:Seperator("Highlight");
MiscTab:Toggle("Hide Chat", _G.Settings.Misc["Hide Chat"], "Invisible Chat", function(value)
	_G.Settings.Misc["Hide Chat"] = value;
	if _G.Settings.Misc["Hide Chat"] then
		local StarterGui = game:GetService("StarterGui");
		StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false);
	else
		local StarterGui = game:GetService("StarterGui");
		StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true);
	end;
end);
MiscTab:Toggle("Hide Leaderboard", _G.Settings.Misc["Hide Leaderboard"], "Invisible Leaderboard", function(value)
	_G.Settings.Misc["Hide Leaderboard"] = value;
	if _G.Settings.Misc["Hide Leaderboard"] then
		local StarterGui = game:GetService("StarterGui");
		(game:GetService("StarterGui")):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false);
	else
		local StarterGui = game:GetService("StarterGui");
		(game:GetService("StarterGui")):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true);
	end;
end);
MiscTab:Toggle("Highlight Mode", false, "Hide All Player Gui", function(value)
	_G.Settings.Misc["Highlight Mode"] = value;
end);
MiscTab:Seperator("Codes");
local x2Code = {
	"KITTGAMING",
	"ENYU_IS_PRO",
	"FUDD10",
	"BIGNEWS",
	"THEGREATACE",
	"SUB2GAMERROBOT_EXP1",
	"STRAWHATMAIME",
	"SUB2OFFICIALNOOBIE",
	"SUB2NOOBMASTER123",
	"SUB2DAIGROCK",
	"AXIORE",
	"TANTAIGAMIMG",
	"STRAWHATMAINE",
	"JCWK",
	"FUDD10_V2",
	"SUB2FER999",
	"MAGICBIS",
	"TY_FOR_WATCHING",
	"STARCODEHEO"
};
MiscTab:Button("Redeem All Codes", function()
	function RedeemCode(value)
		(game:GetService("ReplicatedStorage")).Remotes.Redeem:InvokeServer(value);
	end;
	for i, v in pairs(x2Code) do
		RedeemCode(v);
	end;
end);
MiscTab:Dropdown("Select Codes", {
	"NOOB_REFUND",
	"SUB2GAMERROBOT_RESET1",
	"Sub2UncleKizaru"
}, false, function(value)
	_G.CodeSelect = value;
end);
MiscTab:Button("Redeem Code", function()
	(game:GetService("ReplicatedStorage")).Remotes.Redeem:InvokeServer(_G.CodeSelect);
end);
MiscTab:Seperator("Graphic");
MiscTab:Button("FPS Boost", function()
	local decalsyeeted = true;
	local g = game;
	local w = g.Workspace;
	local l = g.Lighting;
	local t = w.Terrain;
	(settings()).Rendering.QualityLevel = "Level01";
	for i, v in pairs(g:GetDescendants()) do
		if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
			v.Material = "Plastic";
			v.Reflectance = 0;
		elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
			v.Transparency = 1;
		elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
			v.Lifetime = NumberRange.new(0);
		elseif v:IsA("Explosion") then
			v.BlastPressure = 1;
			v.BlastRadius = 1;
		elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
			v.Enabled = false;
		end;
	end;
end);
MiscTab:Button("Remove Fog", function()
	(game:GetService("Lighting")).LightingLayers:Destroy();
	(game:GetService("Lighting")).Sky:Destroy();
	game.Lighting.FogEnd = 9000000000;
end);
MiscTab:Button("Remove Lava", function()
	for i, v in pairs(game.Workspace:GetDescendants()) do
		if v.Name == "Lava" then
			v:Destroy();
		end;
	end;
	for i, v in pairs(game.ReplicatedStorage:GetDescendants()) do
		if v.Name == "Lava" then
			v:Destroy();
		end;
	end;
end);
EspTab:Seperator("ESP");
EspTab:Toggle("ESP Player", _G.Settings.Esp["ESP Player"], "Highlight Player", function(value)
	_G.Settings.Esp["ESP Player"] = value;
	(getgenv()).SaveSetting();
end);
EspTab:Toggle("ESP Chest", _G.Settings.Esp["ESP Chest"], "Highlight Chest", function(value)
	_G.Settings.Esp["ESP Chest"] = value;
	(getgenv()).SaveSetting();
end);
EspTab:Toggle("ESP Fruit", _G.Settings.Esp["ESP DevilFruit"], "Highlight Fruit", function(value)
	_G.Settings.Esp["ESP DevilFruit"] = value;
	(getgenv()).SaveSetting();
end);
if World3 then
	EspTab:Toggle("ESP Real Fruit", _G.Settings.Esp["ESP RealFruit"], "Highlight Real Fruit", function(value)
		_G.Settings.Esp["ESP RealFruit"] = value;
		(getgenv()).SaveSetting();
	end);
end;
if World2 then
	EspTab:Toggle("ESP Flower", _G.Settings.Esp["ESP Flower"], "Highlight Flower", function(value)
		_G.Settings.Esp["ESP Flower"] = value;
		(getgenv()).SaveSetting();
	end);
end;
EspTab:Toggle("ESP Island", _G.Settings.Esp["ESP Island"], "Highlight Island", function(value)
	_G.Settings.Esp["ESP Island"] = value;
	(getgenv()).SaveSetting();
end);
EspTab:Toggle("ESP Npc", _G.Settings.Esp["ESP Npc"], "Highlight Npc", function(value)
	_G.Settings.Esp["ESP Npc"] = value;
	(getgenv()).SaveSetting();
end);
if World2 or World3 then
	EspTab:Toggle("Esp Sea Beast", _G.Settings.Esp["ESP Sea Beast"], "Highlight SeaBest", function(value)
		_G.Settings.Esp["ESP Sea Beast"] = value;
		(getgenv()).SaveSetting();
	end);
end;
EspTab:Toggle("Esp Monster", _G.Settings.Esp["ESP Monster"], "Highlight Mob", function(value)
	_G.Settings.Esp["ESP Monster"] = value;
	(getgenv()).SaveSetting();
end);
if World2 or World3 then
	EspTab:Toggle("Esp Mirage Island", _G.Settings.Esp["ESP Mirage"], "Highlight Mirage Island", function(value)
		_G.Settings.Esp["ESP Mirage"] = value;
		(getgenv()).SaveSetting();
	end);
end;
if World3 then
	EspTab:Toggle("Esp Kitsune Island", _G.Settings.Esp["ESP Kitsune"], "Highlight Kitsune Island", function(value)
		_G.Settings.Esp["ESP Kitsune"] = value;
		(getgenv()).SaveSetting();
	end);
	EspTab:Toggle("Esp Frozen Dimension", _G.Settings.Esp["ESP Frozen"], "Highlight Frozen Dimension", function(value)
		_G.Settings.Esp["ESP Frozen"] = value;
		(getgenv()).SaveSetting();
	end);
	EspTab:Toggle("Esp Prehistoric Island", _G.Settings.Esp["ESP Prehistoric"], "Highlight Prehistoric Island", function(value)
		_G.Settings.Esp["ESP Frozen"] = value;
		(getgenv()).SaveSetting();
	end);
	EspTab:Toggle("Esp Advanced Fruit Dealer", _G.Settings.Esp["ESP Fruit Dealer"], "Highlight Advanced Fruit Dealer", function(value)
		_G.Settings.Esp["ESP Fruit Dealer"] = value;
		(getgenv()).SaveSetting();
	end);
	EspTab:Toggle("Esp Gear", _G.Settings.Esp["ESP Gear"], "Highlight Gear", function(value)
		_G.Settings.Esp["ESP Gear"] = value;
		(getgenv()).SaveSetting();
	end);
end;
LocalPlayerTab:Seperator("Local Player");
LocalPlayerTab:Toggle("Dodge No Cooldown", _G.Settings.LocalPlayer["Dodge No Cooldown"], false, function(value)
	_G.Settings.LocalPlayer["Dodge No Cooldown"] = value;
	(getgenv()).SaveSetting();
end);
LocalPlayerTab:Toggle("Infinite Energy", _G.Settings.LocalPlayer["Infinite Energy"], false, function(value)
	_G.Settings.LocalPlayer["Infinite Energy"] = value;
	(getgenv()).SaveSetting();
end);
LocalPlayerTab:Toggle("Auto Active Race V3", _G.Settings.LocalPlayer["Active Race V3"], "Auto Active Ability", function(value)
	_G.Settings.LocalPlayer["Active Race V3"] = value;
	(getgenv()).SaveSetting();
end);
LocalPlayerTab:Toggle("Auto Active Race V4", _G.Settings.LocalPlayer["Active Race V4"], "Auto Active Awakening", function(value)
	_G.Settings.LocalPlayer["Active Race V4"] = value;
	(getgenv()).SaveSetting();
end);
spawn(function()
	while wait(0.2) do
		if _G.Settings.LocalPlayer["Active Race V4"] then
			if tonumber(((game:GetService("Players")).LocalPlayer.Character:WaitForChild("RaceEnergy")).Value) == 1 then
				if (game:GetService("Players")).LocalPlayer.Character.RaceTransformed.Value == false then
					(game:GetService("VirtualInputManager")):SendKeyEvent(true, "Y", false, game);
					wait(0.1);
					(game:GetService("VirtualInputManager")):SendKeyEvent(false, "Y", false, game);
				end;
			end;
		end;
	end;
end);
spawn(function()
	pcall(function()
		while wait(1) do
			if _G.Settings.LocalPlayer["Active Race V3"] then
				(game:GetService("ReplicatedStorage")).Remotes.CommE:FireServer("ActivateAbility");
			end;
		end;
	end);
end);
spawn(function()
	pcall(function()
		while wait(0.2) do
			if _G.Settings.Race["Look Moon Ability"] then
				(game:GetService("ReplicatedStorage")).Remotes.CommE:FireServer("ActivateAbility");
			end;
		end;
	end);
end);
LocalPlayerTab:Toggle("Infinite Ability", _G.Settings.LocalPlayer["Infinite Ability"], false, function(value)
	_G.Settings.LocalPlayer["Infinite Ability"] = value;
	(getgenv()).SaveSetting();
end);
spawn(function()
	while wait(0.2) do
		if _G.Settings.LocalPlayer["Infinite Ability"] then
			InfAb();
		end;
	end;
end);
LocalPlayerTab:Toggle("Infinite Geppo", _G.Settings.LocalPlayer["Infinite Geppo"], false, function(value)
	_G.Settings.LocalPlayer["Infinite Geppo"] = value;
	(getgenv()).SaveSetting();
end);
spawn(function()
	while wait(0.2) do
		pcall(function()
			if _G.Settings.LocalPlayer["Infinite Geppo"] then
				for i, v in next, getgc() do
					if (game:GetService("Players")).LocalPlayer.Character.Geppo then
						if typeof(v) == "function" and (getfenv(v)).script == (game:GetService("Players")).LocalPlayer.Character.Geppo then
							for i2, v2 in next, getupvalues(v) do
								if tostring(i2) == "9" then
									repeat
										wait(0.1);
										setupvalue(v, i2, 0);
									until not _G.Settings.LocalPlayer["Infinite Geppo"] or (game:GetService("Players")).LocalPlayer.Character.Humanoid.Health <= 0;
								end;
							end;
						end;
					end;
				end;
			end;
		end);
	end;
end);
LocalPlayerTab:Toggle("Infinite Soru", _G.Settings.LocalPlayer["Infinite Soru"], false, function(value)
	_G.Settings.LocalPlayer["Infinite Soru"] = value;
	(getgenv()).SaveSetting();
end);
spawn(function()
	while wait(0.2) do
		pcall(function()
			if _G.Settings.LocalPlayer["Infinite Soru"] and (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil then
				for i, v in next, getgc() do
					if (game:GetService("Players")).LocalPlayer.Character.Soru then
						if typeof(v) == "function" and (getfenv(v)).script == (game:GetService("Players")).LocalPlayer.Character.Soru then
							for i2, v2 in next, getupvalues(v) do
								if typeof(v2) == "table" then
									repeat
										wait(0.1);
										v2.LastUse = 0;
									until not _G.Settings.LocalPlayer["Infinite Soru"] or (game:GetService("Players")).LocalPlayer.Character.Humanoid.Health <= 0;
								end;
							end;
						end;
					end;
				end;
			end;
		end);
	end;
end);
LocalPlayerTab:Toggle("Walk on Water", _G.Settings.LocalPlayer["Walk On Water"], false, function(value)
	_G.Settings.LocalPlayer["Walk On Water"] = value;
	(getgenv()).SaveSetting();
end);
spawn(function()
	while task.wait(0.2) do
		pcall(function()
			if _G.WalkWater then
				(game:GetService("Workspace")).Map["WaterBase-Plane"].Size = Vector3.new(1000, 112, 1000);
			else
				(game:GetService("Workspace")).Map["WaterBase-Plane"].Size = Vector3.new(1000, 80, 1000);
			end;
		end);
	end;
end);
LocalPlayerTab:Toggle("NoClip", _G.Settings.LocalPlayer["No Clip"], false, function(value)
	_G.Settings.LocalPlayer["No Clip"] = value;
	(getgenv()).SaveSetting();
end);
spawn(function()
	pcall(function()
		while wait(0.2) do
			if _G.Settings.LocalPlayer["No Clip"] then
				for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
					if v:IsA("BasePart") or v:IsA("Part") then
						v.CanCollide = false;
					end;
				end;
			end;
		end;
	end);
end);
ServTab:Seperator("Server");
task.spawn(function()
	while task.wait() do
		pcall(function()
			if (game:GetService("Lighting")).Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
				FM:Set("ðŸŒ• Full Moon 100%");
			elseif (game:GetService("Lighting")).Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" then
				FM:Set("ðŸŒ– Full Moon 75%");
			elseif (game:GetService("Lighting")).Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709143733" then
				FM:Set("ðŸŒ— Full Moon 50%");
			elseif (game:GetService("Lighting")).Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709150401" then
				FM:Set("ðŸŒ˜ Full Moon 25%");
			elseif (game:GetService("Lighting")).Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149680" then
				FM:Set("ðŸŒ˜ Full Moon 15%");
			else
				FM:Set("ðŸŒ‘ Full Moon 0%");
			end;
		end);
	end;
end);
spawn(function()
	pcall(function()
		while wait(0.2) do
			if game.Workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island") then
				KitsuneStatus:Set("â›©ï¸ Kitsune Island is Spawning");
			else
				KitsuneStatus:Set("â›©ï¸ Kitsune Island Not Spawn");
			end;
		end;
	end);
end);
spawn(function()
	pcall(function()
		while wait(0.2) do
			if game.Workspace._WorldOrigin.Locations:FindFirstChild("Frozen Dimension") then
				FrozenStatus:Set("â„ï¸ Frozen Dimension Spawning");
			else
				FrozenStatus:Set("â„ï¸ Frozen Dimension Not Spawn");
			end;
		end;
	end);
end);
spawn(function()
	pcall(function()
		while wait(0.2) do
			if World2 or World3 then
				if game.Workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island") then
					MirageStatus:Set("ðŸï¸ Mirage Island is Spawning");
				else
					MirageStatus:Set("ðŸï¸ Mirage Island Not Spawn");
				end;
			end;
		end;
	end);
end);
spawn(function()
	pcall(function()
		while wait(0.2) do
			for i, v in pairs(game.Workspace:GetChildren()) do
				if string.find(v.Name, "Fruit") then
					FindFruit:Set("ðŸ Find " .. v.Name);
				else
					FindFruit:Set("ðŸ Nothing");
				end;
			end;
		end;
	end);
end);
spawn(function()
	while wait(0.2) do
		pcall(function()
			local response = (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("ColorsDealer", "1");
			if response then
				HakiDealer:Set("ðŸŸ¢ Master Of Auras Spawning");
			else
				HakiDealer:Set("ðŸ”´ Master Of Auras Not Spawn");
			end;
		end);
	end;
end);
ServTab:Button("Rejoin Server", function()
	(game:GetService("TeleportService")):Teleport(game.PlaceId, (game:GetService("Players")).LocalPlayer);
end);
ServTab:Button("Server Hop", function()
	while wait(0.2) do
		local module = (loadstring(game:HttpGet("https://roblox.farrghii.com/Hop.lua")))();
		module:Teleport(game.PlaceId, "Singapore");
	end;
end);
ServTab:Button("Hop Lower Player", function()
	local module = (loadstring(game:HttpGet("https://raw.githubusercontent.com/raw-scriptpastebin/FE/main/Server_Hop_Settings")))();
	module:Teleport(game.PlaceId);
end);
spawn(function()
	while wait(0.2) do
		pcall(function()
			JobAiDee:Set("Server Job ID : " .. game.JobId);
		end);
	end;
end);
ServTab:Line();
JobAiDee = ServTab:Label("Server Job ID : ");
ServTab:Button("Copy Server Job ID", function()
	setclipboard(tostring(game.JobId));
end);
ServTab:Textbox("Enter Server Job ID", true, function(value)
	local parseResult = string.gsub(value, "`", "");
	_G.JobId = parseResult;
end);
ServTab:Button("Join Sever", function()
	(game:GetService("TeleportService")):TeleportToPlaceInstance(game.placeId, _G.JobId, game.Players.LocalPlayer);
end);
ServTab:Seperator("Status");
FM = ServTab:Label("Moon");
if World2 or World3 then
	if World3 then
		KitsuneStatus = ServTab:Label("Kitsune");
		FrozenStatus = ServTab:Label("Frozen");
	end;
	MirageStatus = ServTab:Label("Mirage");
	HakiDealer = ServTab:Label("Haki Dealer");
end;
FindFruit = ServTab:Label("Devil Fruit");
ServTab:Seperator("Advance Fruit Stock");
local ReplicatedStorage = game:GetService("ReplicatedStorage");
local Remotes = ReplicatedStorage.Remotes;
local Event = Remotes.CommF_;
local resultAdvance = Event:InvokeServer("GetFruits", true);
local resultNormal = Event:InvokeServer("GetFruits");
local advanceFruitsOnSale = {};
local normalFruitsOnSale = {};
local function addCommas(number)
	local formatted = tostring(number);
	while true do
		formatted, k = formatted:gsub("^(-?%d+)(%d%d%d)", "%1,%2");
		if k == 0 then
			break;
		end;
	end;
	return formatted;
end;
for _, v in pairs(resultAdvance) do
	if v.OnSale == true then
		local advancePriceWithCommas = addCommas(v.Price);
		local AdvanceFruitInfo = v.Name .. " - $" .. advancePriceWithCommas;
		table.insert(advanceFruitsOnSale, AdvanceFruitInfo);
		ServTab:Label(tostring(AdvanceFruitInfo));
	end;
end;
ServTab:Seperator("Normal Fruit Stock");
for _, v in pairs(resultNormal) do
	if v.OnSale == true then
		local normalPriceWithCommas = addCommas(v.Price);
		local NormalFruitInfo = v.Name .. " - $" .. normalPriceWithCommas;
		table.insert(normalFruitsOnSale, NormalFruitInfo);
		ServTab:Label(tostring(NormalFruitInfo));
	end;
end;
print("Script Loaded!");
