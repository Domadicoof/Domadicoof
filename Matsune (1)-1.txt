local MatsuneA1 = {};

MatsuneA1["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
MatsuneA1["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

MatsuneA1["2"] = Instance.new("Frame", MatsuneA1["1"]);
MatsuneA1["2"]["BorderSizePixel"] = 0;
MatsuneA1["2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
MatsuneA1["2"]["Size"] = UDim2.new(0, 50, 0, 50);
MatsuneA1["2"]["Draggable"] = true
MatsuneA1["2"]["Position"] = UDim2.new(0.20, 0, -0.1, 0);
MatsuneA1["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


MatsuneA1["3"] = Instance.new("UICorner", MatsuneA1["2"]);
MatsuneA1["3"]["CornerRadius"] = UDim.new(1, 0);

MatsuneA1["4"] = Instance.new("TextButton", MatsuneA1["2"]);
MatsuneA1["4"]["TextWrapped"] = true;
MatsuneA1["4"]["BorderSizePixel"] = 0;
MatsuneA1["4"]["TextSize"] = 14;
MatsuneA1["4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
MatsuneA1["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
MatsuneA1["4"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
MatsuneA1["4"]["Size"] = UDim2.new(0, 50, 0, 56);
MatsuneA1["4"]["BackgroundTransparency"] = 1;
MatsuneA1["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
MatsuneA1["4"]["Text"] = [[STOP TWEEN]];
MatsuneA1["4"]["Position"] = UDim2.new(0, 0, -0.07273, 0);
MatsuneA1["5"] = Instance.new("UIStroke", MatsuneA1["4"]);
MatsuneA1["5"]["Color"] = Color3.fromRGB(255, 0, 0);

MatsuneA1["6"] = Instance.new("UIStroke", MatsuneA1["2"]);
MatsuneA1["6"]["Color"] = Color3.fromRGB(169, 238, 8);

local function StopTween()
    if _G.StopTween then
        return
    end
    
    _G.StopTween = true
    wait()
    local player = game.Players.LocalPlayer
    local character = player.Character
    if character and character:IsDescendantOf(game.Workspace) then
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        if humanoidRootPart then
            humanoidRootPart.CFrame = humanoidRootPart.CFrame
        end
    end
    wait()    
    if character:FindFirstChild("BodyClip") then
        character.BodyClip:Destroy()
    end
    if character:FindFirstChild("PartTele") then
        character.PartTele:Destroy()
    end
    _G.StopTween = false
end

MatsuneA1["4"].MouseButton1Click:Connect(function()
    StopTween()
end)

_G.FastAttack = true

if _G.FastAttack then
    local _ENV = (getgenv or getrenv or getfenv)()

    local function SafeWaitForChild(parent, childName)
        local success, result = pcall(function()
            return parent:WaitForChild(childName)
        end)
        if not success or not result then
            warn("noooooo: " .. childName)
        end
        return result
    end

    local function WaitChilds(path, ...)
        local last = path
        for _, child in {...} do
            last = last:FindFirstChild(child) or SafeWaitForChild(last, child)
            if not last then break end
        end
        return last
    end

    local VirtualInputManager = game:GetService("VirtualInputManager")
    local CollectionService = game:GetService("CollectionService")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local TeleportService = game:GetService("TeleportService")
    local RunService = game:GetService("RunService")
    local Players = game:GetService("Players")
    local Player = Players.LocalPlayer

    if not Player then
        warn("Không tìm thấy người chơi cục bộ.")
        return
    end

    local Remotes = SafeWaitForChild(ReplicatedStorage, "Remotes")
    if not Remotes then return end

    local Validator = SafeWaitForChild(Remotes, "Validator")
    local CommF = SafeWaitForChild(Remotes, "CommF_")
    local CommE = SafeWaitForChild(Remotes, "CommE")

    local ChestModels = SafeWaitForChild(workspace, "ChestModels")
    local WorldOrigin = SafeWaitForChild(workspace, "_WorldOrigin")
    local Characters = SafeWaitForChild(workspace, "Characters")
    local Enemies = SafeWaitForChild(workspace, "Enemies")
    local Map = SafeWaitForChild(workspace, "Map")

    local EnemySpawns = SafeWaitForChild(WorldOrigin, "EnemySpawns")
    local Locations = SafeWaitForChild(WorldOrigin, "Locations")

    local RenderStepped = RunService.RenderStepped
    local Heartbeat = RunService.Heartbeat
    local Stepped = RunService.Stepped

    local Modules = SafeWaitForChild(ReplicatedStorage, "Modules")
    local Net = SafeWaitForChild(Modules, "Net")

    local sethiddenproperty = sethiddenproperty or function(...) return ... end
    local setupvalue = setupvalue or (debug and debug.setupvalue)
    local getupvalue = getupvalue or (debug and debug.getupvalue)

    local Settings = {
        AutoClick = true,
        ClickDelay = 0
    }

    local Module = {}

    Module.FastAttack = (function()
        if _ENV.rz_FastAttack then
            return _ENV.rz_FastAttack
        end

        local FastAttack = {
            Distance = 100,
            attackMobs = true,
            attackPlayers = true,
            Equipped = nil
        }

        local RegisterAttack = SafeWaitForChild(Net, "RE/RegisterAttack")
        local RegisterHit = SafeWaitForChild(Net, "RE/RegisterHit")

        local function IsAlive(character)
            return character and character:FindFirstChild("Humanoid") and character.Humanoid.Health > 0
        end

        local function ProcessEnemies(OthersEnemies, Folder)
            local BasePart = nil
            for _, Enemy in Folder:GetChildren() do
                local Head = Enemy:FindFirstChild("Head")
                if Head and IsAlive(Enemy) and Player:DistanceFromCharacter(Head.Position) < FastAttack.Distance then
                    if Enemy ~= Player.Character then
                        table.insert(OthersEnemies, { Enemy, Head })
                        BasePart = Head
                    end
                end
            end
            return BasePart
        end

        function FastAttack:Attack(BasePart, OthersEnemies)
            if not BasePart or #OthersEnemies == 0 then return end
            RegisterAttack:FireServer(Settings.ClickDelay or 0)
            RegisterHit:FireServer(BasePart, OthersEnemies)
        end

        function FastAttack:AttackNearest()
            local OthersEnemies = {}
            local Part1 = ProcessEnemies(OthersEnemies, Enemies)
            local Part2 = ProcessEnemies(OthersEnemies, Characters)

            local character = Player.Character
            if not character then return end
            local equippedWeapon = character:FindFirstChildOfClass("Tool")

            if equippedWeapon and equippedWeapon:FindFirstChild("LeftClickRemote") then
                for _, enemyData in ipairs(OthersEnemies) do
                    local enemy = enemyData[1]
                    local direction = (enemy.HumanoidRootPart.Position - character:GetPivot().Position).Unit
                    pcall(function()
                        equippedWeapon.LeftClickRemote:FireServer(direction, 1)
                    end)
                end
            elseif #OthersEnemies > 0 then
                self:Attack(Part1 or Part2, OthersEnemies)
            else
                task.wait(0)
            end
        end

        function FastAttack:BladeHits()
            local Equipped = IsAlive(Player.Character) and Player.Character:FindFirstChildOfClass("Tool")
            if Equipped and Equipped.ToolTip ~= "Gun" then
                self:AttackNearest()
            else
                task.wait(0)
            end
        end

        task.spawn(function()
            while task.wait(Settings.ClickDelay) do
                if Settings.AutoClick then
                    FastAttack:BladeHits()
                end
            end
        end)

        _ENV.rz_FastAttack = FastAttack
        return FastAttack
    end)()
end
   
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
if not player.Team then
    if getgenv().Team == "Marines" then
        ReplicatedStorage.Remotes.CommF_:InvokeServer("SetTeam", "Marines")
    elseif getgenv().Team == "Pirates" then
        ReplicatedStorage.Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
    end
    repeat
        task.wait(1)
        local chooseTeam = playerGui:FindFirstChild("ChooseTeam", true)
        local uiController = playerGui:FindFirstChild("UIController", true)
        if chooseTeam and chooseTeam.Visible and uiController then
            for _, v in pairs(getgc(true)) do
                if type(v) == "function" and getfenv(v).script == uiController then
                    local constant = getconstants(v)
                    pcall(function()
                        if (constant[1] == "Pirates" or constant[1] == "Marines") and #constant == 1 then
                            if constant[1] == getgenv().Team then
                                v(getgenv().Team)
                            end
                        end
                    end)
                end
            end
        end
    until player.Team
end   
   
hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container.Death), function()end)
hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container.Respawn), function()end)
if game.PlaceId == 2753915549 then
        World1 = true
    elseif game.PlaceId == 4442272183 then
        World2 = true
    elseif game.PlaceId == 7449423635 then
        World3 = true
    end

         function MaterialMon()
         if _G.SelectMaterial == "Radiactive Material" then
               MMon = "Factory Staff"
	            MPos = CFrame.new(-105.889565, 72.8076935, -670.247986, -0.965929747, 0, -0.258804798, 0, 1, 0, 0.258804798, 0, -0.965929747)
				SP = "Bar"
			elseif _G.SelectMaterial == "Leather + Scrap Metal" then
			if game.PlaceId == 2753915549 then
				MMon = "Pirate"
				MPos = CFrame.new(-967.433105, 13.5999937, 4034.24707, -0.258864403, 0, -0.965913713, 0, 1, 0, 0.965913713, 0, -0.258864403)
				SP = "Pirate"
				MMon = "Brute"
				MPos = CFrame.new(-1191.41235, 15.5999985, 4235.50928, 0.629286051, -0, -0.777173758, 0, 1, -0, 0.777173758, 0, 0.629286051)
				SP = "Pirate"
				elseif game.PlaceId == 4442272183 then
		    		MMon = "Mercenary"
					MPos = CFrame.new(-986.774475, 72.8755951, 1088.44653, -0.656062722, 0, 0.754706323, 0, 1, 0, -0.754706323, 0, -0.656062722)
					SP = "DressTown"
				elseif game.PlaceId == 7449423635 then
			    	MMon = "Pirate Millionaire"
		  			MPos = CFrame.new(-118.809372, 55.4874573, 5649.17041, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
					SP = "Default"
				end
			elseif _G.SelectMaterial == "Magma Ore" then
    			if game.PlaceId == 2753915549 then
					MMon = "Military Soldier"
					MPos = CFrame.new(-5565.60156, 9.10001755, 8327.56934, -0.838688731, 0, -0.544611216, 0, 1, 0, 0.544611216, 0, -0.838688731)
					SP = "Magma"				
					MMon = "Military Spy"
					MPos = CFrame.new(-5806.70068, 78.5000458, 8904.46973, 0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, 0.707134247)
					SP = "Magma"
				elseif game.PlaceId == 4442272183 then
    				MMon = "Lava Pirate"
					MPos = CFrame.new(-5158.77051, 14.4791956, -4654.2627, -0.848060489, 0, -0.529899538, 0, 1, 0, 0.529899538, 0, -0.848060489)
					SP = "CircleIslandFire"
				end
				elseif _G.SelectMaterial == "Fish Tail" then
				if game.PlaceId == 2753915549 then
					MMon = "Fishman Warrior"
					MPos = CFrame.new(60943.9023, 17.9492188, 1744.11133, 0.826706648, -0, -0.562633216, 0, 1, -0, 0.562633216, 0, 0.826706648)
					SP = "Underwater City"
					MMon = "Fishman Commando"
					MPos = CFrame.new(61760.8984, 18.0800781, 1460.11133, -0.632549644, 0, -0.774520278, 0, 1, 0, 0.774520278, 0, -0.632549644)
					SP = "Underwater City"
				elseif game.PlaceId == 7449423635 then
		    		MMon = "Fishman Captain"
	    			MPos = CFrame.new(-10828.1064, 331.825989, -9049.14648, -0.0912091732, 0, 0.995831788, 0, 1, 0, -0.995831788, 0, -0.0912091732)
			    	SP = "PineappleTown"
	     		end
				elseif _G.SelectMaterial == "Angel Wings" then
					MMon = "Royal Soldier"
					MPos = CFrame.new(-7759.45898, 5606.93652, -1862.70276, -0.866007447, 0, -0.500031412, 0, 1, 0, 0.500031412, 0, -0.866007447)
					SP = "SkyArea2"				
					elseif _G.SelectMaterial == "Mystic Droplet" then
	    			MMon = "Water Fighter"
	    			MPos = CFrame.new(-3331.70459, 239.138336, -10553.3564, -0.29242146, 0, 0.95628953, 0, 1, 0, -0.95628953, 0, -0.29242146)
				    SP = "ForgottenIsland"
				   elseif _G.SelectMaterial == "Vampire Fang" then
			    	MMon = "Vampire"
				    MPos = CFrame.new(-6132.39453, 9.00769424, -1466.16919, -0.927179813, 0, -0.374617696, 0, 1, 0, 0.374617696, 0, -0.927179813)
			    	SP = "Graveyard"
			   elseif _G.SelectMaterial == "Gunpowder" then
		    		MMon = "Pistol Billionaire"
		    		MPos = CFrame.new(-185.693283, 84.7088699, 6103.62744, 0.90629667, -0, -0.422642082, 0, 1, -0, 0.422642082, 0, 0.90629667)
		   		    SP = "Mansion"	
		       elseif _G.SelectMaterial == "Mini Tusk" then
			    	MMon = "Mythological Pirate"
			    	MPos = CFrame.new(-13456.0498, 469.433228, -7039.96436, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			    	SP = "BigMansion"
		    	 elseif _G.SelectMaterial == "Conjured Cocoa" then
			    	MMon = "Chocolate Bar Battler"
				    MPos = CFrame.new(582.828674, 25.5824986, -12550.7041, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664)
				SP = "Chocolate"						
				end
			end     
     function CheckQuest() 
        MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
        if World1 then
            if (MyLevel >= 1 and MyLevel <= 9) or SelectMonster == "Bandit" then
                Mon = "Bandit"
                LevelQuest = 1
                NameQuest = "BanditQuest1"
                NameMon = "Bandit"
                CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
                CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)              
            elseif (MyLevel >= 10 and MyLevel <= 14) or SelectMonster == "Monkey" then
                Mon = "Monkey"
                LevelQuest = 1
                NameQuest = "JungleQuest"
                NameMon = "Monkey"
                CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)                
            elseif (MyLevel >= 15 and MyLevel <= 29) or SelectMonster == "Gorilla" then
                Mon = "Gorilla"
                LevelQuest = 2
                NameQuest = "JungleQuest"
                NameMon = "Gorilla"
                CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)
            elseif (MyLevel >= 30 and MyLevel <= 39) or SelectMonster == "Pirate" then
                Mon = "Pirate"
                LevelQuest = 1
                NameQuest = "BuggyQuest1"
                NameMon = "Pirate"
                CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)                
            elseif (MyLevel >= 40 and MyLevel <= 59) or SelectMonster == "Brute" then
                Mon = "Brute"
                LevelQuest = 2
                NameQuest = "BuggyQuest1"
                NameMon = "Brute"
                CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)
            elseif (MyLevel >= 60 and MyLevel <= 74) or SelectMonster == "Desert Bandit" then
                Mon = "Desert Bandit"
                LevelQuest = 1
                NameQuest = "DesertQuest"
                NameMon = "Desert Bandit"
                CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
                CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)            
            elseif (MyLevel >= 75 and MyLevel <= 89) or SelectMonster == "Desert Officer" then
                Mon = "Desert Officer"
                LevelQuest = 2
                NameQuest = "DesertQuest"
                NameMon = "Desert Officer"
                CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
                CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)               
            elseif (MyLevel >= 90 and MyLevel <= 99) or SelectMonster == "Snow Bandit" then
                Mon = "Snow Bandit"
                LevelQuest = 1
                NameQuest = "SnowQuest"
                NameMon = "Snow Bandit"
                CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
                CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125)
                
            elseif (MyLevel >= 100 and MyLevel <= 119) or SelectMonster == "Snowman" then
                Mon = "Snowman"
                LevelQuest = 2
                NameQuest = "SnowQuest"
                NameMon = "Snowman"
                CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
                CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
            elseif (MyLevel >= 120 and MyLevel <= 149) or SelectMonster == "Chief Petty Officer" then
                Mon = "Chief Petty Officer"
                LevelQuest = 1
                NameQuest = "MarineQuest2"
                NameMon = "Chief Petty Officer"
                CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
            elseif (MyLevel >= 150 and MyLevel <= 174) or SelectMonster == "Sky Bandit" then
                Mon = "Sky Bandit"
                LevelQuest = 1
                NameQuest = "SkyQuest"
                NameMon = "Sky Bandit"
                CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)
                
            elseif (MyLevel >= 175 and MyLevel <= 189) or SelectMonster == "Dark Master" then
                Mon = "Dark Master"
                LevelQuest = 2
                NameQuest = "SkyQuest"
                NameMon = "Dark Master"
                CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
            elseif (MyLevel >= 190 and MyLevel <= 209) or SelectMonster == "Prisoner" then
                Mon = "Prisoner"
                LevelQuest = 1
                NameQuest = "PrisonerQuest"
                NameMon = "Prisoner"
                CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
            elseif (MyLevel >= 210 and MyLevel <= 249) or SelectMonster == "Dangerous Prisone" then
                Mon = "Dangerous Prisoner"
                LevelQuest = 2
                NameQuest = "PrisonerQuest"
                NameMon = "Dangerous Prisoner"
                CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
            elseif (MyLevel >= 250 and MyLevel <= 274) or SelectMonster == "Toga Warrior" then
                Mon = "Toga Warrior"
                LevelQuest = 1
                NameQuest = "ColosseumQuest"
                NameMon = "Toga Warrior"
                CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
                CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
            elseif (MyLevel >= 275 and MyLevel <= 299) or SelectMonster == "Gladiator" then
                Mon = "Gladiator"
                LevelQuest = 2
                NameQuest = "ColosseumQuest"
                NameMon = "Gladiator"
                CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
                CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
            elseif (MyLevel >= 300 and MyLevel <= 324) or SelectMonster == "Military Soldier" then
                Mon = "Military Soldier"
                LevelQuest = 1
                NameQuest = "MagmaQuest"
                NameMon = "Military Soldier"
                CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
                CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
            elseif (MyLevel >= 325 and MyLevel <= 374) or SelectMonster == "Military Spy" then
                Mon = "Military Spy"
                LevelQuest = 2
                NameQuest = "MagmaQuest"
                NameMon = "Military Spy"
                CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
                CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
            elseif (MyLevel >= 375 and MyLevel <= 399) or SelectMonster == "Fishman Warrior" then
                Mon = "Fishman Warrior"
                LevelQuest = 1
                NameQuest = "FishmanQuest"
                NameMon = "Fishman Warrior"
                CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
            elseif (MyLevel >= 400 and MyLevel <= 449) or SelectMonster == "Fishman Commando" then
                Mon = "Fishman Commando"
                LevelQuest = 2
                NameQuest = "FishmanQuest"
                NameMon = "Fishman Commando"
                CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
            elseif (MyLevel >= 450 and MyLevel <= 474) or SelectMonster == "God's Guard" then
                Mon = "God's Guard"
                LevelQuest = 1
                NameQuest = "SkyExp1Quest"
                NameMon = "God's Guard"
                CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
                CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
                end
            elseif (MyLevel >= 475 and MyLevel <= 524) or SelectMonster == "Shanda" then
                Mon = "Shanda"
                LevelQuest = 2
                NameQuest = "SkyExp1Quest"
                NameMon = "Shanda"
                CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
                CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                end
            elseif (MyLevel >= 525 and MyLevel <= 549) or SelectMonster == "Royal Squad" then
                Mon = "Royal Squad"
                LevelQuest = 1
                NameQuest = "SkyExp2Quest"
                NameMon = "Royal Squad"
                CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
            elseif (MyLevel >= 550 and MyLevel <= 624) or SelectMonster == "Royal Soldier" then
                Mon = "Royal Soldier"
                LevelQuest = 2
                NameQuest = "SkyExp2Quest"
                NameMon = "Royal Soldier"
                CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
            elseif (MyLevel >= 625 and MyLevel <= 649) or SelectMonster == "Galley Pirate" then
                Mon = "Galley Pirate"
                LevelQuest = 1
                NameQuest = "FountainQuest"
                NameMon = "Galley Pirate"
                CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
                CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
            elseif MyLevel >= 650 or SelectMonster == "Galley Captain" then
                Mon = "Galley Captain"
                LevelQuest = 2
                NameQuest = "FountainQuest"
                NameMon = "Galley Captain"
                CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
                CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
            end
           elseif World2 then
            if (MyLevel >= 700 and MyLevel <= 724) or SelectMonster == "Raider" then
                Mon = "Raider"
                LevelQuest = 1
                NameQuest = "Area1Quest"
                NameMon = "Raider"
                CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
                CFrameMon = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125)
            elseif (MyLevel >= 725 and MyLevel <= 774) or SelectMonster == "Mercenary" then
                Mon = "Mercenary"
                LevelQuest = 2
                NameQuest = "Area1Quest"
                NameMon = "Mercenary"
                CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
                CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
            elseif (MyLevel >= 775 and MyLevel <= 799) or SelectMonster == "Swan Pirate" then
                Mon = "Swan Pirate"
                LevelQuest = 1
                NameQuest = "Area2Quest"
                NameMon = "Swan Pirate"
                CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
                CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)
            elseif (MyLevel >= 800 and MyLevel <= 874) or SelectMonster == "Factory Staff" then
                Mon = "Factory Staff"
                NameQuest = "Area2Quest"
                LevelQuest = 2
                NameMon = "Factory Staff"
                CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
                CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
            elseif (MyLevel >= 875 and MyLevel <= 899) or SelectMonster == "Marine Lieutenant" then           
                Mon = "Marine Lieutenant"
                LevelQuest = 1
                NameQuest = "MarineQuest3"
                NameMon = "Marine Lieutenant"
                CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125)
            elseif (MyLevel >= 900 and MyLevel <= 949) or SelectMonster == "Marine Captain" then
                Mon = "Marine Captain"
                LevelQuest = 2
                NameQuest = "MarineQuest3"
                NameMon = "Marine Captain"
                CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
            elseif (MyLevel >= 950 and MyLevel <= 974) or SelectMonster == "Zombie" then
                Mon = "Zombie"
                LevelQuest = 1
                NameQuest = "ZombieQuest"
                NameMon = "Zombie"
                CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
                CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
            elseif (MyLevel >= 975 and MyLevel <= 999) or SelectMonster == "Vampire" then
                Mon = "Vampire"
                LevelQuest = 2
                NameQuest = "ZombieQuest"
                NameMon = "Vampire"
                CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
                CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
            elseif (MyLevel >= 1000 and MyLevel <= 1049) or SelectMonster == "Snow Trooper" then
                Mon = "Snow Trooper"
                LevelQuest = 1
                NameQuest = "SnowMountainQuest"
                NameMon = "Snow Trooper"
                CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
                CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
            elseif (MyLevel >= 1050 and MyLevel <= 1099) or SelectMonster == "Winter Warrior" then
                Mon = "Winter Warrior"
                LevelQuest = 2
                NameQuest = "SnowMountainQuest"
                NameMon = "Winter Warrior"
                CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
                CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
            elseif (MyLevel >= 1100 and MyLevel <= 1124) or SelectMonster == "Lab Subordinate" then
                Mon = "Lab Subordinate"
                LevelQuest = 1
                NameQuest = "IceSideQuest"
                NameMon = "Lab Subordinate"
                CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
                CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
            elseif (MyLevel >= 1125 and MyLevel <= 1174) or SelectMonster == "Horned Warrior" then
                Mon = "Horned Warrior"
                LevelQuest = 2
                NameQuest = "IceSideQuest"
                NameMon = "Horned Warrior"
                CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
                CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
            elseif (MyLevel >= 1175 and MyLevel <= 1199) or SelectMonster == "Magma Ninja" then
                Mon = "Magma Ninja"
                LevelQuest = 1
                NameQuest = "FireSideQuest"
                NameMon = "Magma Ninja"
                CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
            elseif (MyLevel >= 1200 and MyLevel <= 1249) or SelectMonster == "Lava Pirate" then
                Mon = "Lava Pirate"
                LevelQuest = 2
                NameQuest = "FireSideQuest"
                NameMon = "Lava Pirate"
                CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
            elseif (MyLevel >= 1250 and MyLevel <= 1274) or SelectMonster == "Ship Deckhand" then
                Mon = "Ship Deckhand"
                LevelQuest = 1
                NameQuest = "ShipQuest1"
                NameMon = "Ship Deckhand"
                CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)         
                CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)    
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif (MyLevel >= 1275 and MyLevel <= 1299) or SelectMonster == "Ship Engineer" then
                Mon = "Ship Engineer"
                LevelQuest = 2
                NameQuest = "ShipQuest1"
                NameMon = "Ship Engineer"
                CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)   
                CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)   
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end             
            elseif (MyLevel >= 1300 and MyLevel <= 1324) or SelectMonster == "Ship Steward" then
                Mon = "Ship Steward"
                LevelQuest = 1
                NameQuest = "ShipQuest2"
                NameMon = "Ship Steward"
                CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)         
                CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625)      
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif (MyLevel >= 1325 and MyLevel <= 1349) or SelectMonster == "Ship Officer" then
                Mon = "Ship Officer"
                LevelQuest = 2
                NameQuest = "ShipQuest2"
                NameMon = "Ship Officer"
                CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
                CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif (MyLevel >= 1350 and MyLevel <= 1374) or SelectMonster == "Arctic Warrior" then
                Mon = "Arctic Warrior"
                LevelQuest = 1
                NameQuest = "FrostQuest"
                NameMon = "Arctic Warrior"
                CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
                CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
                end
            elseif (MyLevel >= 1375 and MyLevel <= 1424) or SelectMonster == "Snow Lurker" then
                Mon = "Snow Lurker"
                LevelQuest = 2
                NameQuest = "FrostQuest"
                NameMon = "Snow Lurker"
                CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
                CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
            elseif (MyLevel >= 1425 and MyLevel <= 1449) or SelectMonster == "Sea Soldier" then
                Mon = "Sea Soldier"
                LevelQuest = 1
                NameQuest = "ForgottenQuest"
                NameMon = "Sea Soldier"
                CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
                CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
            elseif MyLevel >= 1450 or SelectMonster == "Water Fighter" then
                Mon = "Water Fighter"
                LevelQuest = 2
                NameQuest = "ForgottenQuest"
                NameMon = "Water Fighter"
                CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
                CFrameMon = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)
            end
                elseif World3 then
           if (MyLevel >= 1500 and MyLevel <= 1524) or SelectMonster == "Pirate Millionaire" then
                Mon = "Pirate Millionaire"
                LevelQuest = 1
                NameQuest = "PiratePortQuest"
                NameMon = "Pirate Millionaire"
                CFrameQuest = CFrame.new(-450.104645, 107.681458, 5950.72607, 0.957107544, -0, -0.289732844, 0, 1, -0, 0.289732844, 0, 0.957107544)
                CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
            elseif (MyLevel >= 1525 and MyLevel <= 1574) or SelectMonster == "Pistol Billionaire" then
                Mon = "Pistol Billionaire"
                LevelQuest = 2
                NameQuest = "PiratePortQuest"
                NameMon = "Pistol Billionaire"
                CFrameQuest = CFrame.new(-450.104645, 107.681458, 5950.72607, 0.957107544, -0, -0.289732844, 0, 1, -0, 0.289732844, 0, 0.957107544)
                CFrameMon = CFrame.new(-54.8110352, 83.7698746, 5947.84082, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
            elseif (MyLevel >= 1575 and MyLevel <= 1599) or SelectMonster == "Dragon Crew Warrior" then
                Mon = "Dragon Crew Warrior"
                LevelQuest = 1
                NameQuest = "DragonCrewQuest"
                NameMon = "Dragon Crew Warrior"
                CFrameQuest = CFrame.new(6750.4931640625, 127.44916534423828, -711.0308837890625)
                CFrameMon = CFrame.new(6709.76367, 52.3442993, -1139.02966, -0.763515472, 0, 0.645789504, 0, 1, 0, -0.645789504, 0, -0.763515472)          
            elseif (MyLevel >= 1600 and MyLevel <= 1624) or SelectMonster == "Dragon Crew Archer" then
                Mon = "Dragon Crew Archer"
                NameQuest = "DragonCrewQuest"
                LevelQuest = 2
                NameMon = "Dragon Crew Archer"
                CFrameQuest = CFrame.new(6750.4931640625, 127.44916534423828, -711.0308837890625)
                CFrameMon = CFrame.new(6668.76172, 481.376923, 329.12207, -0.121787429, 0, -0.992556155, 0, 1, 0, 0.992556155, 0, -0.121787429)
            elseif (MyLevel >= 1625 and MyLevel <= 1649) or SelectMonster == "Hydra Enforcer" then
                Mon = "Hydra Enforcer"
                NameQuest = "VenomCrewQuest"
                LevelQuest = 1
                NameMon = "Hydra Enforcer"
                CFrameQuest = CFrame.new(5206.40185546875, 1004.10498046875, 748.3504638671875)
                CFrameMon = CFrame.new(4547.11523, 1003.10217, 334.194824, 0.388810456, -0, -0.921317935, 0, 1, -0, 0.921317935, 0, 0.388810456)
            elseif (MyLevel >= 1650 and MyLevel <= 1699) or SelectMonster == "Venomous Assailant" then
                Mon = "Venomous Assailant"
                NameQuest = "VenomCrewQuest"
                LevelQuest = 2
                NameMon = "Venomous Assailant"
                CFrameQuest = CFrame.new(5206.40185546875, 1004.10498046875, 748.3504638671875)
                CFrameMon = CFrame.new(4674.92676, 1134.82654, 996.308838, 0.731321394, -0, -0.682033002, 0, 1, -0, 0.682033002, 0, 0.731321394)
            elseif (MyLevel >= 1700 and MyLevel <= 1724) or SelectMonster == "Marine Commodore" then
                Mon = "Marine Commodore"
                LevelQuest = 1
                NameQuest = "MarineTreeIsland"
                NameMon = "Marine Commodore"
                CFrameQuest = CFrame.new(2481.09228515625, 74.27049255371094, -6779.640625)
                CFrameMon = CFrame.new(2577.25391, 75.6100006, -7739.87207, 0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, 0.499959469)
            elseif (MyLevel >= 1725 and MyLevel <= 1774) or SelectMonster == "Marine Rear Admiral" then
                Mon = "Marine Rear Admiral"
                LevelQuest = 2
                NameQuest = "MarineTreeIsland"
                NameMon = "Marine Rear Admiral"
                CFrameQuest = CFrame.new(2481.09228515625, 74.27049255371094, -6779.640625)
                CFrameMon = CFrame.new(3761.81006, 123.912003, -6823.52197, 0.961273968, 0, 0.275594592, 0, 1, 0, -0.275594592, 0, 0.961273968)
            elseif (MyLevel >= 1775 and MyLevel <= 1799) or SelectMonster == "Fishman Raider" then
                Mon = "Fishman Raider"
                LevelQuest = 1
                NameQuest = "DeepForestIsland3"
                NameMon = "Fishman Raider"
                CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
                CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
            elseif (MyLevel >= 1800 and MyLevel <= 1824) or SelectMonster == "Fishman Captain" then
                Mon = "Fishman Captain"
                LevelQuest = 2
                NameQuest = "DeepForestIsland3"
                NameMon = "Fishman Captain"
                CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
                CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625) 
            elseif (MyLevel >= 1825 and MyLevel <= 1849) or SelectMonster == "Forest Pirate" then
                Mon = "Forest Pirate"
                LevelQuest = 1
                NameQuest = "DeepForestIsland"
                NameMon = "Forest Pirate"
                CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
                CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
            elseif (MyLevel >= 1850 and MyLevel <= 1899) or SelectMonster == "Mythological Pirate" then
                Mon = "Mythological Pirate"
                LevelQuest = 2
                NameQuest = "DeepForestIsland"
                NameMon = "Mythological Pirate"
                CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)   
                CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
            elseif (MyLevel >= 1900 and MyLevel <= 1924) or SelectMonster == "Jungle Pirate" then
                Mon = "Jungle Pirate"
                LevelQuest = 1
                NameQuest = "DeepForestIsland2"
                NameMon = "Jungle Pirate"
                CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
            elseif (MyLevel >= 1925 and MyLevel <= 1974) or SelectMonster == "Musketeer Pirate" then
                Mon = "Musketeer Pirate"
                LevelQuest = 2
                NameQuest = "DeepForestIsland2"
                NameMon = "Musketeer Pirate"
                CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
            elseif (MyLevel >= 1975 and MyLevel <= 1999) or SelectMonster == "Reborn Skeleton" then
                Mon = "Reborn Skeleton"
                LevelQuest = 1
                NameQuest = "HauntedQuest1"
                NameMon = "Reborn Skeleton"
                CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
            elseif (MyLevel >= 2000 and MyLevel <= 2024) or SelectMonster == "Living Zombie" then
                Mon = "Living Zombie"
                LevelQuest = 2
                NameQuest = "HauntedQuest1"
                NameMon = "Living Zombie"
                CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
            elseif (MyLevel >= 2025 and MyLevel <= 2049) or SelectMonster == "Demonic Soul" then
                Mon = "Demonic Soul"
                LevelQuest = 1
                NameQuest = "HauntedQuest2"
                NameMon = "Demonic Soul"
                CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
                CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
            elseif (MyLevel >= 2050 and MyLevel <= 2074) or SelectMonster == "Posessed Mummy" then
                Mon = "Posessed Mummy"
                LevelQuest = 2
                NameQuest = "HauntedQuest2"
                NameMon = "Posessed Mummy"
                CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
            elseif (MyLevel >= 2075 and MyLevel <= 2099) or SelectMonster == "Peanut Scout" then
                Mon = "Peanut Scout"
                LevelQuest = 1
                NameQuest = "NutsIslandQuest"
                NameMon = "Peanut Scout"
                CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
            elseif (MyLevel >= 2100 and MyLevel <= 2124) or SelectMonster == "Peanut President" then
                Mon = "Peanut President"
                LevelQuest = 2
                NameQuest = "NutsIslandQuest"
                NameMon = "Peanut President"
                CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
            elseif (MyLevel >= 2125 and MyLevel <= 2149) or SelectMonster == "Ice Cream Chef" then
                Mon = "Ice Cream Chef"
                LevelQuest = 1
                NameQuest = "IceCreamIslandQuest"
                NameMon = "Ice Cream Chef"
                CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
            elseif (MyLevel >= 2150 and MyLevel <= 2199) or SelectMonster == "Ice Cream Commander" then
                Mon = "Ice Cream Commander"
                LevelQuest = 2
                NameQuest = "IceCreamIslandQuest"
                NameMon = "Ice Cream Commander"
                CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
            elseif (MyLevel >= 2200 and MyLevel <= 2224) or SelectMonster == "Cookie Crafter" then
                Mon = "Cookie Crafter"
                LevelQuest = 1
                NameQuest = "CakeQuest1"
                NameMon = "Cookie Crafter"
                CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
                CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
            elseif (MyLevel >= 2225 and MyLevel <= 2249) or SelectMonster == "Cake Guard" then
                Mon = "Cake Guard"
                LevelQuest = 2
                NameQuest = "CakeQuest1"
                NameMon = "Cake Guard"
                CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
                CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
            elseif (MyLevel >= 2250 and MyLevel <= 2274) or SelectMonster == "Baking Staff" then
                Mon = "Baking Staff"
                LevelQuest = 1
                NameQuest = "CakeQuest2"
                NameMon = "Baking Staff"
                CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
                CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
            elseif (MyLevel >= 2275 and MyLevel <= 2299) or SelectMonster == "Head Baker" then
                Mon = "Head Baker"
                LevelQuest = 2
                NameQuest = "CakeQuest2"
                NameMon = "Head Baker"
                CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
                CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
            elseif (MyLevel >= 2300 and MyLevel <= 2324) or SelectMonster == "Cocoa Warrior" then
                Mon = "Cocoa Warrior"
                LevelQuest = 1
                NameQuest = "ChocQuest1"
                NameMon = "Cocoa Warrior"
                CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
                CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
            elseif (MyLevel >= 2325 and MyLevel <= 2349) or SelectMonster == "Chocolate Bar Battler" then
                Mon = "Chocolate Bar Battler"
                LevelQuest = 2
                NameQuest = "ChocQuest1"
                NameMon = "Chocolate Bar Battler"
                CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
                CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
            elseif (MyLevel >= 2350 and MyLevel <= 2374) or SelectMonster == "Sweet Thief" then
                Mon = "Sweet Thief"
                LevelQuest = 1
                NameQuest = "ChocQuest2"
                NameMon = "Sweet Thief"
                CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
                CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
            elseif (MyLevel >= 2375 and MyLevel <= 2399) or SelectMonster == "Candy Rebel" then
                Mon = "Candy Rebel"
                LevelQuest = 2
                NameQuest = "ChocQuest2"
                NameMon = "Candy Rebel"
                CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
                CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)
            elseif (MyLevel >= 2400 and MyLevel <= 2424) or SelectMonster == "Candy Pirate" then
                Mon = "Candy Pirate"
                LevelQuest = 1
                NameQuest = "CandyQuest1"
                NameMon = "Candy Pirate"
                CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
                CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
            elseif (MyLevel >= 2425 and MyLevel <= 2449) or SelectMonster == "Snow Demon" then
                Mon = "Snow Demon"
                LevelQuest = 2
                NameQuest = "CandyQuest1"
                NameMon = "Snow Demon"
                CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
                CFrameMon = CFrame.new(-880.2006225585938, 71.24776458740234, -14538.609375)
            elseif (MyLevel >= 2450 and MyLevel <= 2474) or SelectMonster == "Isle Outlaw" then
                Mon = "Isle Outlaw"
                LevelQuest = 1
                NameQuest = "TikiQuest1"
                NameMon = "Isle Outlaw"
                CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
                CFrameMon = CFrame.new(-16442.814453125, 116.13899993896484, -264.4637756347656)
            elseif (MyLevel >= 2475 and MyLevel <= 2524) or SelectMonster == "Island Boy" then
                Mon = "Island Boy"
                LevelQuest = 2
                NameQuest = "TikiQuest1"
                NameMon = "Island Boy"
                CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
                CFrameMon = CFrame.new(-16901.26171875, 84.06756591796875, -192.88906860351562)
            elseif (MyLevel >= 2525 and MyLevel <= 2550) or SelectMonster == "Isle Champion" then
                Mon = "Isle Champion"
                LevelQuest = 2
                NameQuest = "TikiQuest2"
                NameMon = "Isle Champion"
                CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
                CFrameMon = CFrame.new(-16641.6796875, 235.7825469970703, 1031.282958984375)
                elseif (MyLevel >= 2550 and MyLevel <= 2574) or SelectMonster == "Serpent Hunter" then
                Mon = "Serpent Hunter"
                LevelQuest = 1
                NameQuest = "TikiQuest3"
                NameMon = "Serpent Hunter"
                CFrameQuest = CFrame.new(-16665.1914, 104.596405, 1579.69434, 0.951068401, -0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401)
                CFrameMon = CFrame.new(-16521.0625, 106.09285, 1488.78467, 0.469467044, 0, 0.882950008, 0, 1, 0, -0.882950008, 0, 0.469467044)
               elseif MyLevel >= 2575 or SelectMonster == "Skull Slayer" then
                Mon = "Skull Slayer"
                LevelQuest = 2
                NameQuest = "TikiQuest3"
                NameMon = "Skull Slayer"
                CFrameQuest = CFrame.new(-16665.1914, 104.596405, 1579.69434, 0.951068401, -0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401)
                CFrameMon = CFrame.new(-16855.043, 122.457253, 1478.15308, -0.999392271, 0, -0.0348687991, 0, 1, 0, 0.0348687991, 0, -0.999392271)
            end
        end
    end
  
function Hop()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _,Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()                                
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait(.1)
                    pcall(function()
                        
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(.1)
                end
            end
        end
    end
    function Teleport() 
        while wait(.1) do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
        end
    end
    Teleport()
end

function CheckItem(ah)
    for k, v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")) do
        if v.Name == ah then
            return v
        end
    end
end

    function UpdateIslandESP() 
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            pcall(function()
                if IslandESP then 
                    if v.Name ~= "Sea" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "GothamSemibold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(255, 255, 255)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end
    
    function isnil(thing)
	return (thing == nil)
end
local function round(n)
	return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
	for i,v in pairs(game:GetService'Players':GetChildren()) do
		pcall(function()
			if not isnil(v.Character) then
				if ESPPlayer then
					if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Character.Head)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Character.Head
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						if v.Team == game.Players.LocalPlayer.Team then
							name.TextColor3 = Color3.new(0,255,0)
						else
							name.TextColor3 = Color3.new(255,0,0)
						end
					else
						v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
					end
				else
					if v.Character.Head:FindFirstChild('NameEsp'..Number) then
						v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
	end
end
function UpdateChestESP()
    for _, chest in pairs(game:GetService("CollectionService"):GetTagged("_ChestTagged")) do
        pcall(function()
            if _G.ChestESP then
                if not chest:GetAttribute("IsDisabled") then
                    if not chest:FindFirstChild("ChestEsp") then
                        local bill = Instance.new("BillboardGui", chest)
                        bill.Name = "ChestEsp"
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1, 200, 1, 30)
                        bill.Adornee = chest
                        bill.AlwaysOnTop = true
                        local name = Instance.new("TextLabel", bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1, 0, 1, 0)
                        name.TextYAlignment = "Top"
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(255, 215, 0) -- Màu vàng cho chest
                    else
                        local distance = round((game:GetService("Players").LocalPlayer.Character.Head.Position - chest:GetPivot().Position).Magnitude / 3)
                        chest["ChestEsp"].TextLabel.Text = ("Chest\n" .. distance .. " M")
                    end
                end
            else
                if chest:FindFirstChild("ChestEsp") then
                    chest:FindFirstChild("ChestEsp"):Destroy()
                end
            end
        end)
    end
end

function round(num)
    return math.floor(num + 0.5)
end
function UpdateDevilChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v.Name, "Fruit") then   
					if not v.Handle:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Handle)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Handle
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 255, 255)
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					else
						v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					end
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end
		end)
	end
end
function UpdateFlowerChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if v.Name == "Flower2" or v.Name == "Flower1" then
				if FlowerESP then 
					if not v:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 0, 0)
						if v.Name == "Flower1" then 
							name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							name.TextColor3 = Color3.fromRGB(0, 0, 255)
						end
						if v.Name == "Flower2" then
							name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							name.TextColor3 = Color3.fromRGB(255, 0, 0)
						end
					else
						v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
					end
				else
					if v:FindFirstChild('NameEsp'..Number) then
					v:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end   
		end)
	end
end
function UpdateRealFruitChams() 
	for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 0, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
	for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 174, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
	for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(251, 255, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
end

function UpdateIslandESP() 
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            pcall(function()
                if IslandESP then 
                    if v.Name ~= "Sea" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "GothamSemibold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(8, 247, 255)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end
  function isnil(thing)
	return (thing == nil)
end
local function round(n)
	return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
	for i,v in pairs(game:GetService'Players':GetChildren()) do
		pcall(function()
			if not isnil(v.Character) then
				if ESPPlayer then
					if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Character.Head)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Character.Head
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						if v.Team == game.Players.LocalPlayer.Team then
							name.TextColor3 = Color3.new(0,255,0)
						else
							name.TextColor3 = Color3.new(255,0,0)
						end
					else
						v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
					end
				else
					if v.Character.Head:FindFirstChild('NameEsp'..Number) then
						v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
	end
end
function UpdateChestESP()
    for _, chest in pairs(game:GetService("CollectionService"):GetTagged("_ChestTagged")) do
        pcall(function()
            if _G.ChestESP then
                if not chest:GetAttribute("IsDisabled") then
                    if not chest:FindFirstChild("ChestEsp") then
                        local bill = Instance.new("BillboardGui", chest)
                        bill.Name = "ChestEsp"
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1, 200, 1, 30)
                        bill.Adornee = chest
                        bill.AlwaysOnTop = true
                        local name = Instance.new("TextLabel", bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1, 0, 1, 0)
                        name.TextYAlignment = "Top"
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(255, 215, 0) -- Màu vàng cho chest
                    else
                        local distance = round((game:GetService("Players").LocalPlayer.Character.Head.Position - chest:GetPivot().Position).Magnitude / 3)
                        chest["ChestEsp"].TextLabel.Text = ("Chest\n" .. distance .. " M")
                    end
                end
            else
                if chest:FindFirstChild("ChestEsp") then
                    chest:FindFirstChild("ChestEsp"):Destroy()
                end
            end
        end)
    end
end

function round(num)
    return math.floor(num + 0.5)
end
function UpdateDevilChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v.Name, "Fruit") then   
					if not v.Handle:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Handle)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Handle
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 255, 255)
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					else
						v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					end
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end
		end)
	end
end
function UpdateFlowerChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if v.Name == "Flower2" or v.Name == "Flower1" then
				if FlowerESP then 
					if not v:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 0, 0)
						if v.Name == "Flower1" then 
							name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							name.TextColor3 = Color3.fromRGB(0, 0, 255)
						end
						if v.Name == "Flower2" then
							name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							name.TextColor3 = Color3.fromRGB(255, 0, 0)
						end
					else
						v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
					end
				else
					if v:FindFirstChild('NameEsp'..Number) then
					v:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end   
		end)
	end
end

function UpdateRealFruitChams() 
	for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 0, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
	for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 174, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
	for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(251, 255, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
end

function UpdateIslandESP() 
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            pcall(function()
                if IslandESP then 
                    if v.Name ~= "Sea" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "GothamSemibold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(8, 247, 255)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end
  function isnil(thing)
	return (thing == nil)
end
local function round(n)
	return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
	for i,v in pairs(game:GetService'Players':GetChildren()) do
		pcall(function()
			if not isnil(v.Character) then
				if ESPPlayer then
					if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Character.Head)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Character.Head
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						if v.Team == game.Players.LocalPlayer.Team then
							name.TextColor3 = Color3.new(0,255,0)
						else
							name.TextColor3 = Color3.new(255,0,0)
						end
					else
						v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
					end
				else
					if v.Character.Head:FindFirstChild('NameEsp'..Number) then
						v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
	end
end
function UpdateChestESP()
    for _, chest in pairs(game:GetService("CollectionService"):GetTagged("_ChestTagged")) do
        pcall(function()
            if _G.ChestESP then
                if not chest:GetAttribute("IsDisabled") then
                    if not chest:FindFirstChild("ChestEsp") then
                        local bill = Instance.new("BillboardGui", chest)
                        bill.Name = "ChestEsp"
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1, 200, 1, 30)
                        bill.Adornee = chest
                        bill.AlwaysOnTop = true
                        local name = Instance.new("TextLabel", bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1, 0, 1, 0)
                        name.TextYAlignment = "Top"
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(255, 215, 0) -- Màu vàng cho chest
                    else
                        local distance = round((game:GetService("Players").LocalPlayer.Character.Head.Position - chest:GetPivot().Position).Magnitude / 3)
                        chest["ChestEsp"].TextLabel.Text = ("Chest\n" .. distance .. " M")
                    end
                end
            else
                if chest:FindFirstChild("ChestEsp") then
                    chest:FindFirstChild("ChestEsp"):Destroy()
                end
            end
        end)
    end
end

function round(num)
    return math.floor(num + 0.5)
end
function UpdateDevilChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v.Name, "Fruit") then   
					if not v.Handle:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Handle)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Handle
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 255, 255)
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					else
						v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					end
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end
		end)
	end
end
function UpdateFlowerChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if v.Name == "Flower2" or v.Name == "Flower1" then
				if FlowerESP then 
					if not v:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 0, 0)
						if v.Name == "Flower1" then 
							name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							name.TextColor3 = Color3.fromRGB(0, 0, 255)
						end
						if v.Name == "Flower2" then
							name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							name.TextColor3 = Color3.fromRGB(255, 0, 0)
						end
					else
						v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
					end
				else
					if v:FindFirstChild('NameEsp'..Number) then
					v:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end   
		end)
	end
end
function UpdateRealFruitChams() 
	for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 0, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
	for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 174, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
	for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(251, 255, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
end

spawn(function()
    while wait() do
        pcall(function()
            if MobESP then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild('HumanoidRootPart') then
                        if not v:FindFirstChild("MobEap") then
                            local BillboardGui = Instance.new("BillboardGui")
                            local TextLabel = Instance.new("TextLabel")

                            BillboardGui.Parent = v
                            BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            BillboardGui.Active = true
                            BillboardGui.Name = "MobEap"
                            BillboardGui.AlwaysOnTop = true
                            BillboardGui.LightInfluence = 1.000
                            BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                            BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                            TextLabel.Parent = BillboardGui
                            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.BackgroundTransparency = 1.000
                            TextLabel.Size = UDim2.new(0, 200, 0, 50)
                            TextLabel.Font = Enum.Font.GothamBold
                            TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                            TextLabel.Text.Size = 35
                        end
                        local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                        v.MobEap.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                    end
                end
            else
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild("MobEap") then
                        v.MobEap:Destroy()
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if SeaESP then
                for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                    if v:FindFirstChild('HumanoidRootPart') then
                        if not v:FindFirstChild("Seaesps") then
                            local BillboardGui = Instance.new("BillboardGui")
                            local TextLabel = Instance.new("TextLabel")

                            BillboardGui.Parent = v
                            BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            BillboardGui.Active = true
                            BillboardGui.Name = "Seaesps"
                            BillboardGui.AlwaysOnTop = true
                            BillboardGui.LightInfluence = 1.000
                            BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                            BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                            TextLabel.Parent = BillboardGui
                            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.BackgroundTransparency = 1.000
                            TextLabel.Size = UDim2.new(0, 200, 0, 50)
                            TextLabel.Font = Enum.Font.GothamBold
                            TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                            TextLabel.Text.Size = 35
                        end
                        local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                        v.Seaesps.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                    end
                end
            else
                for i,v in pairs (game:GetService("Workspace").SeaBeasts:GetChildren()) do
                    if v:FindFirstChild("Seaesps") then
                        v.Seaesps:Destroy()
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if NpcESP then
                for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                    if v:FindFirstChild('HumanoidRootPart') then
                        if not v:FindFirstChild("NpcEspes") then
                            local BillboardGui = Instance.new("BillboardGui")
                            local TextLabel = Instance.new("TextLabel")

                            BillboardGui.Parent = v
                            BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            BillboardGui.Active = true
                            BillboardGui.Name = "NpcEspes"
                            BillboardGui.AlwaysOnTop = true
                            BillboardGui.LightInfluence = 1.000
                            BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                            BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                            TextLabel.Parent = BillboardGui
                            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.BackgroundTransparency = 1.000
                            TextLabel.Size = UDim2.new(0, 200, 0, 50)
                            TextLabel.Font = Enum.Font.GothamBold
                            TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                            TextLabel.Text.Size = 35
                        end
                        local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                        v.NpcEspes.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                    end
                end
            else
                for i,v in pairs (game:GetService("Workspace").NPCs:GetChildren()) do
                    if v:FindFirstChild("NpcEspes") then
                        v.NpcEspes:Destroy()
                    end
                end
            end
        end)
    end
end)

function isnil(thing)
    return (thing == nil)
end
local function round(n)
    return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)

function UpdateIslandMirageESP() 
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if MirageIslandESP then 
                if v.Name == "Mirage Island" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end

function UpdatePrehistoricIslandESP() 
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if PrehistoricIslandESP then 
                if v.Name == "PrehistoricIsland" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end

function UpdateAfdESP() 
    for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
        pcall(function()
            if AfdESP then 
                if v.Name == "Advanced Fruit Dealer" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end

function UpdateAuraESP() 
    for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
        pcall(function()
            if AuraESP then 
                if v.Name == "Master of Enhancement" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end

function UpdateLSDESP() 
    for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
        pcall(function()
            if LADESP then 
                if v.Name == "Legendary Sword Dealer" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end
spawn(function()
    while wait() do
        if InfAbility then
            InfAb()
        end
    end
end)
function InfAb()
    if InfAbility then
        if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
            local inf = Instance.new("ParticleEmitter")
            inf.Acceleration = Vector3.new(0,0,0)
            inf.Archivable = true
            inf.Drag = 20
            inf.EmissionDirection = Enum.NormalId.Top
            inf.Enabled = true
            inf.Lifetime = NumberRange.new(0,0)
            inf.LightInfluence = 0
            inf.LockedToPart = true
            inf.Name = "Agility"
            inf.Rate = 500
            local numberKeypoints2 = {
                NumberSequenceKeypoint.new(0, 0);
                NumberSequenceKeypoint.new(1, 4); 
            }
            inf.Size = NumberSequence.new(numberKeypoints2)
            inf.RotSpeed = NumberRange.new(9999, 99999)
            inf.Rotation = NumberRange.new(0, 0)
            inf.Speed = NumberRange.new(30, 30)
            inf.SpreadAngle = Vector2.new(0,0,0,0)
            inf.Texture = ""
            inf.VelocityInheritance = 0
            inf.ZOffset = 2
            inf.Transparency = NumberSequence.new(0)
            inf.Color = ColorSequence.new(Color3.fromRGB(0,0,0),Color3.fromRGB(0,0,0))
            inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        end
    else
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
        end
    end
end
function UpdateGeaESP() 
    for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do 
        pcall(function()
            if GearESP then 
                if v.Name == "MeshPart" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end

function UpdateBerriesESP()
    local CollectionService = game:GetService("CollectionService")
    local BerryBushes = CollectionService:GetTagged("BerryBush")
    for _, Bush in pairs(BerryBushes) do
        pcall(function()
            for AttributeName, Berry in pairs(Bush:GetAttributes()) do
                if Berry then
                    if not Bush.Parent:FindFirstChild("BerryESP") then
                        local bill = Instance.new("BillboardGui", Bush.Parent)
                        bill.Name = "BerryESP"
                        bill.ExtentsOffset = Vector3.new(0, 2, 0)
                        bill.Size = UDim2.new(1, 200, 1, 30)
                        bill.Adornee = Bush.Parent
                        bill.AlwaysOnTop = true
                        local name = Instance.new("TextLabel", bill)
                        name.Font = Enum.Font.GothamSemibold
                        name.TextSize = 14
                        name.TextWrapped = true
                        name.Size = UDim2.new(1, 0, 1, 0)
                        name.TextYAlignment = Enum.TextYAlignment.Top
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(255, 255, 0)
                        name.Text = Berry 
                    end
                    if Bush.Parent:FindFirstChild("BerryESP") then
                        local Player = game.Players.LocalPlayer
                        if Player and Player.Character and Player.Character:FindFirstChild("Head") then
                            local Position = Player.Character.Head.Position
                            local Magnitude = (Bush.Parent:GetPivot().Position - Position).Magnitude
                            Bush.Parent.BerryESP.TextLabel.Text = Berry .. "\n" .. math.floor(Magnitude) .. "m"
                        end
                    end
                else
                    if Bush.Parent:FindFirstChild("NameEsp") then
                        Bush.Parent:FindFirstChild("NameEsp"):Destroy()
                    end
                end
            end
        end)
    end
end

function UpdateIslandKisuneESP() 
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            pcall(function()
                if KitsuneIslandEsp then 
                    if v.Name == "Kitsune Island" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "Code"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(80, 245, 245)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end

        function AutoHaki()
  local player = game:GetService("Players").LocalPlayer
  local character = player.Character
  if character and not character:FindFirstChild("HasBuso") then
    local remote = game:GetService("ReplicatedStorage").Remotes.CommF_
    if remote then
      remote:InvokeServer("Buso") 
    end
  end
end
  function UnEquipWeapon(Weapon)
        if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
            _G.NotAutoEquip = true
            wait(.5)
            game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
            wait(.1)
            _G.NotAutoEquip = false
        end
    end
    
    function EquipWeapon(ToolSe)
        if not _G.NotAutoEquip then
            if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
                Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
                wait(.1)
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
            end
        end
    end
    
	spawn(function()
		local gg = getrawmetatable(game)
		local old = gg.__namecall
		setreadonly(gg,false)
		gg.__namecall = newcclosure(function(...)
		  local method = getnamecallmethod()
		  local args = {
			...
		  }
		  if tostring(method) == "FireServer" then
		  if tostring(args[1]) == "RemoteEvent" then
		  if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
		  if _G.UseSkill then
		  if type(args[2]) == "vector" then
		  args[2] = PositionSkillMasteryDevilFruit
		  else
			args[2] = CFrame.new(PositionSkillMasteryDevilFruit)
		  end
		  return old(unpack(args))
		  end
		  end
		  end
		  end
		  return old(...)
		  end)
        end)

spawn(function()
  pcall(function()
    while task.wait() do
    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
    if v:FindFirstChild("RemoteFunctionShoot") then
    CurrentEquipGun = v.Name
    end
    end
    end
    end
    end)
  end)

function StopTween(target)
    local plyr = game:GetService("Players").LocalPlayer
    local char = plyr.Character

    if not target then
        _G.StopTween = true
        wait(0.2)
        topos(char.HumanoidRootPart.CFrame)
        wait(0.2)
        if char.HumanoidRootPart:FindFirstChild("BodyClip") then
            char.HumanoidRootPart.BodyClip:Destroy()
        end
        if char:FindFirstChild("Block") then
            char.Block:Destroy()
        end
        _G.StopTween = false
        _G.Clip = false
    end

    if char:FindFirstChild("Highlight") then
        char.Highlight:Destroy()
    end
end

function LockTween()
    if _G.LockTween then
        return
    end
    _G.LockTween = true
    wait()
    local plyr = game.Players.LocalPlayer
    local char = plyr.Character
    if char and char:IsDescendantOf(game.Workspace) then
        local hrp = char:WaitForChild("HumanoidRootPart")
        if hrp then
            hrp.CFrame = hrp.CFrame
        end
    end
    wait()
    if char:FindFirstChild("BodyClip") then
        char.BodyClip:Destroy()
    end
    if char:FindFirstChild("PartTele") then
        char.Block:Destroy()
    end
    _G.LockTween = false
end

function BringMob(huh)
    for i, v in pairs(WS.Enemies:GetChildren()) do
        if v.Name == huh and v.Parent and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 350 then
            v.HumanoidRootPart.CFrame = BringPos
            v.Humanoid.JumpPower = 0
            v.Humanoid.WalkSpeed = 0
            v.HumanoidRootPart.Transparency = 1
            v.HumanoidRootPart.CanCollide = false
            v.Head.CanCollide = false
            if v.Humanoid:FindFirstChild("Animator") then
                v.Humanoid.Animator:Destroy()
            end
            if not v.HumanoidRootPart:FindFirstChild("Lock") then
                local lock = Instance.new("BodyVelocity")
                lock.Parent = v.HumanoidRootPart
                lock.Name = "Lock"
                lock.MaxForce = Vector3.new(100000, 100000, 100000)
                lock.Velocity = Vector3.new(0, 0, 0)
            end
            sethiddenproperty(plr, "SimulationRadius", math.huge)
            v.Humanoid:ChangeState(11)
        end
    end
end

function CancelTween23()
    if plr.Character.Head:FindFirstChild("BodyVelocity") then
        plr.Character.Head:FindFirstChild("BodyVelocity"):Destroy()
    end
    if plr.Character:FindFirstChild("PartTele") then
        plr.Character:FindFirstChild("PartTele"):Destroy()
    end
    NoClip = false
    return Tween23(plr.Character.HumanoidRootPart.CFrame)
end

function KillMob(V1, StopFunction)
    pcall(function()
        thismob = DetectMob2(V1)
        if thismob:FindFirstChild("HumanoidRootPart") and thismob.Parent and thismob:FindFirstChild("Humanoid") and thismob.Humanoid.Health > 0 then
            repeat task.wait()
                Buso()
                EquipWeapon()
                Tween23(thismob.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0))
                BringPos = thismob.HumanoidRootPart.CFrame
                BringMob(V1)
                NoClip = true
            until not thismob.Parent or not thismob:FindFirstChild("Humanoid") or thismob:FindFirstChild("Humanoid").Health <= 0 or not thismob:FindFirstChild("HumanoidRootPart") or StopFunction()
            NoClip = false
            CancelTween23()
        end
    end)
end

spawn(function()
    while wait() do
        pcall(function()
            if NoClip == true then
                if not plr.Character.Head:FindFirstChild("Nigga") then
                    local Bucaccho = Instance.new("BodyVelocity", plr.Character.Head)
                    Bucaccho.P = 1500
                    Bucaccho.Name = "Nigga"
                    Bucaccho.MaxForce = Vector3.new(0, 100000, 0)
                    Bucaccho.Velocity = Vector3.new(0, 0, 0)
                end
                for i, v in pairs(plr.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            else
                if plr.Character.Head:FindFirstChild("Nigga") then
                    plr.Character.Head:FindFirstChild("Nigga"):Destroy()
                end
            end
        end)
    end
end)

    
spawn(function()
    while task.wait() do
        pcall(function()
            local player = game:GetService("Players").LocalPlayer
            local character = player.Character
            local hrp = character:FindFirstChild("HumanoidRootPart")

            if character.Humanoid.Health <= 0 or not hrp then
                if character:FindFirstChild("Block") then
                    character.Block:Destroy()
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait() do
        pcall(function()
            local player = game:GetService("Players").LocalPlayer
            local character = player.Character
            local hrp = character:FindFirstChild("HumanoidRootPart")

            if character:FindFirstChild("Block") then
                if (hrp.Position - character.Block.Position).Magnitude >= 100 then
                    character.Block:Destroy()
                end
            end
        end)
    end
end)


function enableNoclip()
    if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
        local Noclip = Instance.new("BodyVelocity")
        Noclip.Name = "BodyClip"
        Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        Noclip.MaxForce = Vector3.new(100000, 100000, 100000)
        Noclip.Velocity = Vector3.new(0, 0, 0)
    end
end

function disableNoclip()
    local bodyClip = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip")
    if bodyClip then
        bodyClip:Destroy()
    end
end

function disableCollisions()
    for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
        if v:IsA("BasePart") then
            v.CanCollide = false
        end
    end
end
local success, Module = pcall(function() 
    return getgenv().Module;
end);
spawn(function()
    pcall(function()
        while task.wait(0.2) do
            if getgenv().Module or
            _G.DefendVolcano or
              getgenv().AutoFarm
            then
                enableNoclip()
                disableCollisions()
            else
                disableNoclip()
            end
        end
    end)
end)
    
    
function EquipAllWeapon()
        pcall(function()
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA('Tool') and not (v.Name == "Summon Sea Beast" or v.Name == "Water Body" or v.Name == "Awakening") then
                    local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) 
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
                    wait(1)
                end
            end
        end)
    end

local isTeleporting = false

function WaitHRP(q0)
    if not q0 then return end
    return q0.Character:WaitForChild("HumanoidRootPart", 9)
end

function CheckNearestTeleporter(aI)
    local vcspos = aI.Position
    local minDist = math.huge
    local chosenTeleport = nil
    local y = game.PlaceId

    local TableLocations = {}

    if y == 2753915549 then
        TableLocations = {
            ["Sky3"] = Vector3.new(-7894, 5547, -380),
            ["Sky3Exit"] = Vector3.new(-4607, 874, -1667),
            ["UnderWater"] = Vector3.new(61163, 11, 1819),
            ["Underwater City"] = Vector3.new(61165.19140625, 0.18704631924629211, 1897.379150390625),
            ["Pirate Village"] = Vector3.new(-1242.4625244140625, 4.787059783935547, 3901.282958984375),
            ["UnderwaterExit"] = Vector3.new(4050, -1, -1814)
        }
    elseif y == 4442272183 then
        TableLocations = {
            ["Swan Mansion"] = Vector3.new(-390, 332, 673),
            ["Swan Room"] = Vector3.new(2285, 15, 905),
            ["Cursed Ship"] = Vector3.new(923, 126, 32852),
            ["Zombie Island"] = Vector3.new(-6509, 83, -133)
        }
    elseif y == 7449423635 then
        TableLocations = {
            ["Floating Turtle"] = Vector3.new(-12462, 375, -7552),
            ["Hydra Island"] = Vector3.new(5657.88623046875, 1013.0790405273438, -335.4996337890625),
            ["Mansion"] = Vector3.new(-12462, 375, -7552),
            ["Castle"] = Vector3.new(-5036, 315, -3179),
            ["Dimensional Shift"] = Vector3.new(-2097.3447265625, 4776.24462890625, -15013.4990234375),
            ["Beautiful Pirate"] = Vector3.new(5319, 23, -93),
            ["Beautiful Room"] = Vector3.new(5314.58203, 22.5364361, -125.942276, 1, 2.14762768e-08, -1.99111154e-13, -2.14762768e-08, 1, -3.0510602e-08, 1.98455903e-13, 3.0510602e-08, 1),
            ["Temple of Time"] = Vector3.new(28286, 14897, 103)
        }
    end

    for _, v in pairs(TableLocations) do
        local dist = (v - vcspos).Magnitude
        if dist < minDist then
            minDist = dist
            chosenTeleport = v
        end
    end

    local playerPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    if minDist <= (vcspos - playerPos).Magnitude then
        return chosenTeleport
    end
end

function requestEntrance(teleportPos)
    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", teleportPos)
    local char = game.Players.LocalPlayer.Character.HumanoidRootPart
    char.CFrame = char.CFrame + Vector3.new(0, 50, 0)
    task.wait(0.5)
end

function TelePPlayer(P)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
end
    
        
function topos(Pos)
    local plr = game.Players.LocalPlayer
    if plr.Character and plr.Character.Humanoid.Health > 0 and plr.Character:FindFirstChild("HumanoidRootPart") then
        local Distance = (Pos.Position - plr.Character.HumanoidRootPart.Position).Magnitude
        if not Pos then 
            return 
        end
        local nearestTeleport = CheckNearestTeleporter(Pos)
        if nearestTeleport then
            requestEntrance(nearestTeleport)
        end
        if not plr.Character:FindFirstChild("PartTele") then
            local PartTele = Instance.new("Part", plr.Character)
            PartTele.Size = Vector3.new(10,1,10)
            PartTele.Name = "PartTele"
            PartTele.Anchored = true
            PartTele.Transparency = 1
            PartTele.CanCollide = true
            PartTele.CFrame = WaitHRP(plr).CFrame 
            PartTele:GetPropertyChangedSignal("CFrame"):Connect(function()
                if not isTeleporting then return end
                task.wait()
                if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                    WaitHRP(plr).CFrame = PartTele.CFrame
                end
            end)
        end
        isTeleporting = true
        local Tween = game:GetService("TweenService"):Create(plr.Character.PartTele, TweenInfo.new(Distance / 360, Enum.EasingStyle.Linear), {CFrame = Pos})
        Tween:Play()
        Tween.Completed:Connect(function(status)
            if status == Enum.PlaybackState.Completed then
                if plr.Character:FindFirstChild("PartTele") then
                    plr.Character.PartTele:Destroy()
                end
                isTeleporting = false
            end
        end)
    end
end

function stopTeleport()
    isTeleporting = false
    local plr = game.Players.LocalPlayer
    if plr.Character:FindFirstChild("PartTele") then
        plr.Character.PartTele:Destroy()
    end
end

spawn(function()
    while task.wait() do
        if not isTeleporting then
            stopTeleport()
        end
    end
end)

spawn(function()
    local plr = game.Players.LocalPlayer
    while task.wait() do
        pcall(function()
            if plr.Character:FindFirstChild("PartTele") then
                if (plr.Character.HumanoidRootPart.Position - plr.Character.PartTele.Position).Magnitude >= 100 then
                    stopTeleport()
                end
            end
        end)
    end
end)

local plr = game.Players.LocalPlayer
local function onCharacterAdded(character)
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.Died:Connect(function()
        stopTeleport()
    end)
end
plr.CharacterAdded:Connect(onCharacterAdded)
if plr.Character then
    onCharacterAdded(plr.Character)
end
function TP1(Pos)
    topos(Pos)
end

    spawn(function()
        while wait() do
            if _G.SpinPos then
                Pos = CFrame.new(0,PosY,-20)
                wait(0.1)
                Pos = CFrame.new(-20,PosY,0)
                wait(0.1)
                Pos = CFrame.new(0,PosY,20)
                wait(0.1)
                Pos = CFrame.new(20,PosY,0)
            else
                Pos = CFrame.new(0,PosY,0)
            end
        end
    end)
    
-----------------------------------------------------------------
 ---------------------------------------------------------------   
    spawn(function()
			while task.wait() do
				pcall(function()
						if _G.FarmBone or _G.AutoFarm or _G.Pray or _G.Trylux or _G.Hallow or _G.FarmCake or _G.FarmDaiBan or _G.Greybeard or _G.CursedCaptain or _G.AutoDarkBoss or _G.ChiefWarden or _G.Trident or _G.Longsword or _G.GravityBlade or _G.SwodsFlail or _G.AutoRengoku or _G.SwodsDRTrident or _G.SwodCanvande or _G.SwodsBuddy or _G.SwodTwinHooks or _G.Fullykatakuri or _G.AutoBoss or _G.SwodCanvander or _G.AutoFarmMaterial or _G.AutoSecondSea or _G.ThirdSea or _G.AutoBartilo or _G.AutoFactory or _G.AutoRaidPirate or _G.AutoQuestYama or _G.AutoYamaQuest or AutoSaber or _G.DefendVolcano or _G.TPB or _G.SailBoat or _G.Autoterrorshark or _G.KillShark or _G.KillPiranha or _G.KillFishCrew or _G.AutoQuestRace or ProjectTrialPro or _G.TweenMGear or _G.AutoMysticIsland or AutoUpgradeRace or AutoRaceEvo1 or _G.AutoFarmFruits or _G.Autopole or _G.Autosaw or _G.AutoElitehunter or FarmMtrFruit or _G.AutoNear or _G.CollectBerry or _G.RipIndraKill or _G.FarmChocola or SoulGuitar or _G.AutoHolyTorch or _G.AutoGetTushita or _G.AutoYama or _G.AutoMobDragon or _G.AutoHydraTree or _G.TweenToKitsune or _G.AutoAzuerEmber or _G.TweenVolcano or _G.Dungeon or _G.AutoLawRaid or _G.TweenFruit or _G.Grabfruit or _G.TeleportIsland or _G.TeleportNPC or _G.SafeMode or _G.AutoPlayerHunter or _G.AutoKillPlayer or _G.TeleportPly then
						if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
							local Noclip = Instance.new("BodyVelocity")
							Noclip.Name = "BodyClip"
							Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
							Noclip.MaxForce = Vector3.new(100000,100000,100000)
							Noclip.Velocity = Vector3.new(0,0,0)
						end
					else
						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
					end
				end)
			end
		end)

spawn(function()
  pcall(function()
    game:GetService("RunService").Stepped:Connect(function()
      if _G.FarmBone or _G.AutoFarm or _G.Pray or _G.Trylux or _G.Hallow or _G.FarmCake or _G.FarmDaiBan or _G.Fullykatakuri or _G.AutoBoss or _G.AutoMateria or _G.AutoSecondSea or _G.Greybeard or _G.CursedCaptain or _G.AutoDarkBoss or _G.ChiefWarden or _G.Trident or _G.Longsword or _G.GravityBlade or _G.SwodsFlail or _G.AutoRengoku or _G.SwodsDRTrident or _G.SwodCanvande or _G.SwodsBuddy or _G.SwodTwinHooks or _G.ThirdSea or _G.AutoBartilo or _G.AutoFactory or _G.AutoRaidPirate or _G.AutoQuestYama or _G.AutoYamaQuest or _G.AutoElitehunter or FarmMtrFruit or AutoUpgradeRace or _G.AutoFarmMaterial or AutoRaceEvo1 or AutoSaber or _G.Autopole or _G.SwodCanvander or _G.DefendVolcano or _G.SailBoat or _G.Autoterrorshark or _G.KillShark or _G.KillPiranha or _G.KillFishCrew or _G.AutoQuestRace or ProjectTrialPro or _G.AutoMysticIsland or _G.TweenMGear or _G.Autosaw or _G.AutoNear or _G.AutoFarmFruits or _G.CollectBerry or _G.RipIndraKill or _G.FarmChocola or SoulGuitar or _G.AutoHolyTorch or _G.AutoGetTushita or _G.AutoYama or _G.AutoMobDragon or _G.AutoHydraTree or _G.TweenToKitsune or _G.AutoAzuerEmber or _G.TweenVolcano or _G.Dungeon or _G.AutoLawRaid or _G.TweenFruit or _G.Grabfruit or _G.TeleportIsland or _G.TeleportNPC or _G.SafeMode or _G.AutoPlayerHunter or _G.AutoKillPlayer or _G.TeleportPly then
      for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
      if v:IsA("BasePart") then
      v.CanCollide = false
      end
      end
      end
      end)
    end)
  end)

local stoppos = {}
function TP13(Pos)
    local Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    local tween = game:GetService("TweenService"):Create(
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/TweenSpeed, Enum.EasingStyle.Linear),
        {CFrame = Pos}
    ):Play()

    function stoppos:Stop()
        tween:Cancel()
    end

    return stoppos
end


    function fastpos(Pos)
        Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        Speed = 1000
        game:GetService("TweenService"):Create(
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
            {CFrame = Pos}
        ):Play()
    end

    function slowpos(Pos)
        Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        Speed = 150
        game:GetService("TweenService"):Create(
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
            {CFrame = Pos}
        ):Play()
    end

    -- or (game:GetService("Workspace").Enemies:FindFirstChild("Shark") and _G.AutoKillShark) or (game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") and _G.AutoTerrorshark) or (game:GetService("Workspace").Enemies:FindFirstChild("Piranha") and _G.AutoKillPiranha) or (game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") and _G.AutoKillFishCrew)
    
    local stopboat = {}
function BTP(p)
    pcall(function()
        if (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 and not Auto_Raid and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
            repeat wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                wait(.05)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
            until (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0
        end
    end)
end

function TelePPlayer(P)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
end


--Tween Boats 
function TPB(CFgo)
local tween_s = game:service"TweenService"
local info = TweenInfo.new((game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame.Position - CFgo.Position).Magnitude/300, Enum.EasingStyle.Linear)
tween = tween_s:Create(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat, info, {CFrame = CFgo})
tween:Play()

local tweenfunc = {}

function tweenfunc:Stop()
    tween:Cancel()
end

return tweenfunc
end

function TPP(CFgo)
if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
local tween_s = game:service"TweenService"
local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
tween:Play()

local tweenfunc = {}

function tweenfunc:Stop()
    tween:Cancel()
end

return tweenfunc
end

    function StopTween(target)
        if not target then
            _G.StopTween = true
            wait()
            topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            wait()
            if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
            end
            _G.StopTween = false
            _G.Clip = false
        end
    end
    
    spawn(function()
        pcall(function()
            while wait() do
                for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
                    if v:IsA("Tool") then
                        if v:FindFirstChild("RemoteFunctionShoot") then 
                            _G.SelectWeaponGun = v.Name
                        end
                    end
                end
            end
        end)
    end)
    
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)

    function CheckColorRipIndra()
        mmb = {}
        for r, v in next, game:GetService("Workspace").Map["Boat Castle"].Summoner.Circle:GetChildren() do
            if v:IsA("Part") and v:FindFirstChild("Part") and v.Part.BrickColor.Name == "Dark stone grey" then
                mmb[v.BrickColor.Name] = v
            end
        end
        return mmb
    end
    function ActivateColor(cw)
        haki = {["Hot pink"] = "Winter Sky", ["Really red"] ="Pure Red", ["Oyster"] = "Snow White"}
        runnay = haki[cw]
        if runnay then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", runnay)
        end
    end
    function AutoActiveColorRip_Indra()
        for r, v in pairs(CheckColorRipIndra()) do
            ActivateColor(r)
            topos(v.CFrame)
            firetouchinterest(v.TouchInterest)
        end
    end

function CheckRace()
    local bf = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "1")
    local c4 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1")
    if game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
        return game:GetService('Players').LocalPlayer.Data.Race.Value .. " V4"
    end
    if bf == -2 then
        return game:GetService('Players').LocalPlayer.Data.Race.Value .. " V3"
    end
    if c4 == -2 then
        return game:GetService('Players').LocalPlayer.Data.Race.Value .. " V2"
    end
    return game:GetService('Players').LocalPlayer.Data.Race.Value .. " V1"
end

_G.TargTrial = nil
function targettrial()
    if _G.TargTrial ~= nil then return end
    local a = nil
    local b = 450
    for i,v in pairs(game.Players:GetChildren()) do
        c = (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if c <= b and v ~= game.Players.LocalPlayer then
            b = c 
            a = v
        end
    end
    if a == nil then return end
    if _G.TargTrial ~= nil then return end
    _G.TargTrial = a
end
    

function CheckPirateBoat()
    local checkmmpb = {"PirateBrigade", "PirateBrigade"}
    for r, v in next, game:GetService("Workspace").Enemies:GetChildren() do
        if table.find(checkmmpb, v.Name) and v:FindFirstChild("Health") and v.Health.Value > 0 then
            return v
        end
    end
end

function CheckPirateBoat()
    local checkmmpb = {"FishBoat"}
    for r, v in next, game:GetService("Workspace").Enemies:GetChildren() do
        if table.find(checkmmpb, v.Name) and v:FindFirstChild("Health") and v.Health.Value > 0 then
            return v
        end
    end
end

function StoreFruit()
    for i,v in pairs(thelocal.Backpack:GetChildren()) do
        if v:IsA("Tool") and string.find(v.Name, "Fruit") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",v:GetAttribute("OriginalName"),v)
        end
    end
end

function TpEntrance(P)
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", P)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
        wait(0.5)
    end

function CheckItemBPCRBPCR(name)
    chbp = {game.Players.LocalPlayer.Character,game.Players.LocalPlayer.Backpack}
    for i, v in pairs(chbp) do
        if v:FindFirstChild(name) then
            return v:FindFirstChild(name)
        end
    end
end

local library = {}

_G.Color = Color3.fromRGB(154, 240, 17) 
_G.imageLogo = "rbxassetid://12940626152"
_G.Logo = "rbxassetid://12940626152"
_G.NameHub = "Made By Dragon Toro" -- ชื่อ Hub
_G.Title = "Matsune Hub Script blox fruits" -- คำอธิบาย
-----------------------------------------------------------------

local isUIEnabled = true 

local function toggleUI()
    -- Loop through the children of "Modules" to find any ScreenGui
    for i, v in pairs(game.CoreGui:WaitForChild("RobloxGui"):WaitForChild("Modules"):GetChildren()) do
        if v.ClassName == "ScreenGui" then
            v.Enabled = isUIEnabled  -- Update the UI's Enabled property
        end
    end

    -- Check if ScreenGui exists in CoreGui and update its state
    local coreGui = game:GetService("CoreGui")
    if coreGui:FindFirstChild("ScreenGui") then
        coreGui.ScreenGui.Enabled = isUIEnabled
    end
end

-- Creating the ScreenGui and ImageButton
local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.120833337 - 0.10, 0, 0.0952890813 + 0.01, 0)
ImageButton.Size = UDim2.new(0, 40, 0, 40)
ImageButton.Draggable = true
ImageButton.Image = "rbxassetid://100666805146072"

UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ImageButton

-- Handle the event when the ImageButton is clicked
ImageButton.MouseButton1Click:Connect(function()
    isUIEnabled = not isUIEnabled  -- Toggle the UI state
    toggleUI()
end)


--local library = {}

local UIConfig = {Bind = Enum.KeyCode.RightControl}
local chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
local length = 20
local randomString = ""

math.randomseed(os.time())

charTable = {}
for c in chars:gmatch "." do
	table.insert(charTable, c)
end

for i = 1, length do
	randomString = randomString .. charTable[math.random(1, #charTable)]
end

for i, v in pairs(game.CoreGui:WaitForChild("RobloxGui"):WaitForChild("Modules"):GetChildren()) do
	if v.ClassName == "ScreenGui" then
	    local MrMaxNaJa = Instance.new("ScreenGui")
		for i1, v1 in pairs(v:GetChildren()) do
			if v1.Name == "Main" then
				do
					local ui = v
					if ui then
						ui:Destroy()
						game:GetService("CoreGui").ScreenGui:Destroy()
					end
				end
			end
		end
	end
end
function CircleClick(Button, X, Y)
	coroutine.resume(
		coroutine.create(
			function()
				local Circle = Instance.new("ImageLabel")
				Circle.Parent = Button
				Circle.Name = "Circle"
				Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Circle.BackgroundTransparency = 1.000
				Circle.ZIndex = 10
				Circle.Image = "rbxassetid://266543268"
				Circle.ImageColor3 = Color3.fromRGB(255, 255, 255)
				Circle.ImageTransparency = 0.7
				local NewX = X - Circle.AbsolutePosition.X
				local NewY = Y - Circle.AbsolutePosition.Y
				Circle.Position = UDim2.new(0, NewX, 0, NewY)

				local Time = 0.2
				Circle:TweenSizeAndPosition(
					UDim2.new(0, 30.25, 0, 30.25),
					UDim2.new(0, NewX - 15, 0, NewY - 10),
					"Out",
					"Quad",
					Time,
					false,
					nil
				)
				for i = 1, 10 do
					Circle.ImageTransparency = Circle.ImageTransparency + 0.01
					wait(Time / 10)
				end
				Circle:Destroy()
			end
		)
	)
end
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
function dragify(Frame, object)
	DragToggle = nil
	Dragging = nil
	DragSpeed = .25
	DragInputl = nil
	DragStart = nil
	DragPos = nil

	function updateInput(input)
		Delta = input.Position - DragStart
		Position =
			UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
		game:GetService("TweenService"):Create(object, TweenInfo.new(DragSpeed), {Position = Position}):Play()
	end

	Frame.InputBegan:Connect(
		function(input)
			if
				(input.UserInputType == Enum.UserInputType.MouseButton1 or
					input.UserInputType == Enum.UserInputType.Touch)
			then
				DragToggle = true
				DragStart = input.Position
				startPos = object.Position
				input.Changed:Connect(
					function()
						if (input.UserInputState == Enum.UserInputState.End) then
							DragToggle = false
						end
					end
				)
			end
		end
	)

	Frame.InputChanged:Connect(
		function(input)
			if
				(input.UserInputType == Enum.UserInputType.MouseMovement or
					input.UserInputType == Enum.UserInputType.Touch)
			then
				DragInputl = input
			end
		end
	)

	game:GetService("UserInputService").InputChanged:Connect(
	function(input)
		if (input == DragInputl and DragToggle) then
			updateInput(input)
		end
	end
	)
end

local UI = Instance.new("ScreenGui")
UI.Name = randomString
UI.Parent = game.CoreGui:WaitForChild("RobloxGui"):WaitForChild("Modules")
UI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

if syn then
	syn.protect_gui(UI)
end

function library:Destroy()
	library:Destroy()
	game:GetService("CoreGui").ScreenGui:Destroy()
end

function library:NaJa()
	local Main = Instance.new("Frame")
	local Logo = Instance.new("ImageButton")
	local UICorner = Instance.new("UICorner")
	local Top = Instance.new("Frame")
	local TabHolder = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local TabContainer = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local UIPadding = Instance.new("UIPadding")
	local Title = Instance.new("TextLabel")
	local Desc = Instance.new("TextLabel")

	Main.Name = "Main"
	Main.Parent = UI
	Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0) --Color3.fromRGB(33, 33, 33)
	Main.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main.BackgroundTransparency = 0.6
	Main.Size = UDim2.new(0, 520, 0, 380)
	Main.ClipsDescendants = true
	Main.AnchorPoint = Vector2.new(0.5, 0.5)

	local ClickFrame = Instance.new("Frame")
	ClickFrame.Name = "Top"
	ClickFrame.Parent = Main
	ClickFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ClickFrame.BackgroundTransparency = 1
	ClickFrame.Position = UDim2.new(0, 0, 0, 50)
	ClickFrame.Size = UDim2.new(0, 520, 0, 360)

	Top.Name = "Top"
	Top.Parent = Main
	Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Top.BackgroundTransparency = 1.000
	Top.Position = UDim2.new(0.021956088, 0, 0.01, 5)
	Top.Size = UDim2.new(0, 414, 0, 43)

local TweenService = game:GetService("TweenService")

-- Tween helper function
local function TweenObject(obj, props, duration)
    local tween = TweenService:Create(obj, TweenInfo.new(duration or 0.3), props)
    tween:Play()
end

local Discord = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local Disc_Logo = Instance.new("ImageLabel")
local Disc_Title = Instance.new("TextLabel")

Discord.Name = "Discord"
Discord.Parent = Main
Discord.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Discord.BackgroundTransparency = 1 -- Làm cho nền trong suốt
Discord.BorderColor3 = Color3.fromRGB(0, 0, 0)
Discord.BorderSizePixel = 0
Discord.Position = UDim2.new(0, 430, 0, 16)
Discord.Size = UDim2.new(0, 85, 0, 25)
Discord.AutoButtonColor = false
Discord.Font = Enum.Font.SourceSans
Discord.Text = ""
Discord.TextColor3 = Color3.fromRGB(0, 0, 0)
Discord.TextSize = 14.000

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Discord

Disc_Logo.Name = "Disc_Logo"
Disc_Logo.Parent = Discord
Disc_Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Disc_Logo.BackgroundTransparency = 1.000
Disc_Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
Disc_Logo.BorderSizePixel = 0
Disc_Logo.Position = UDim2.new(0, 5, 0, 1)
Disc_Logo.Size = UDim2.new(0, 23, 0, 23)
Disc_Logo.Image = "http://www.roblox.com/asset/?id=12058969086"

Disc_Title.Name = "Disc_Title"
Disc_Title.Parent = Discord
Disc_Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Disc_Title.BackgroundTransparency = 1.000
Disc_Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Disc_Title.BorderSizePixel = 0
Disc_Title.Position = UDim2.new(0, 35, 0, 0)
Disc_Title.Size = UDim2.new(0, 40, 0, 25)
Disc_Title.Font = Enum.Font.SourceSansSemibold
Disc_Title.Text = "Discord"
Disc_Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Disc_Title.TextSize = 14.000
Disc_Title.TextXAlignment = Enum.TextXAlignment.Left

-- Hover Effects
Discord.MouseEnter:Connect(function()
    TweenObject(Discord, {BackgroundTransparency = 0.3}, .15)
    TweenObject(Disc_Logo, {ImageTransparency = 0.7}, .15)
    TweenObject(Disc_Title, {TextTransparency = 0.7}, .15)
end)

Discord.MouseLeave:Connect(function()
    TweenObject(Discord, {BackgroundTransparency = 1}, .15)
    TweenObject(Disc_Logo, {ImageTransparency = 0}, .15)
    TweenObject(Disc_Title, {TextTransparency = 0}, .15)
end)

-- Click event: copy Discord link
Discord.MouseButton1Click:Connect(function()
    (setclipboard or toclipboard)("https://discord.gg/SpJQ3XVEJ8")
    wait(.1)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Discord",
        Text = "Discord copied on your clipboard",
        Button1 = "Okay",
        Duration = 20
    })
end)


UICorner.Parent = ImageButton
	local Cornerx = Instance.new("UICorner")
	local Cornerxx = Instance.new("UICorner")
	local Cornerxxx = Instance.new("UICorner")
	local Cornerxxxxx = Instance.new("UICorner")
	local Cornerxxxxxx = Instance.new("UICorner")
	local o = Instance.new("UICorner")
	local r = Instance.new("UICorner")
    Cornerx.CornerRadius = UDim.new(0, 5)
    Cornerxx.CornerRadius = UDim.new(0, 5)
    Cornerxxx.CornerRadius = UDim.new(0, 5)
    Cornerxxxxx.CornerRadius = UDim.new(1, 0)
    Cornerxxxxxx.CornerRadius = UDim.new(1, 0)
    o.CornerRadius = UDim.new(1, 0)
    r.CornerRadius = UDim.new(1, 0)
    Cornerx.Name = "ServerCorner"
    Cornerx.Parent = Topdiscor
    Cornerxx.Name = "ServerCorner"
    Cornerxx.Parent = Topdiscord
    Cornerxxx.Name = "ServerCorner"
    Cornerxxx.Parent = TopdiscordI
    Cornerxxxxx.Name = "ServerCorner"
    Cornerxxxxx.Parent = Topdiscor11
    Cornerxxxxxx.Name = "ServerCorner"
    Cornerxxxxxx.Parent = atopdiscor11
    o.Name = "ServerCorner"
    o.Parent = Topdiscor1
    r.Name = "ServerCorner"
    r.Parent = atopdiscor111
    
	TabHolder.Name = "TabHolder"
	TabHolder.Parent = Top
	TabHolder.BackgroundColor3 = Color3.fromRGB(20,20,20) --25
	TabHolder.BackgroundTransparency = 0.7
	TabHolder.Position = UDim2.new(-0.010309278, 6, 0.023051, 0.2)
	TabHolder.Size = UDim2.new(0, 410, 0, 40)

	UICorner_2.Parent = TabHolder

	TabContainer.Name = "TabContainer"
	TabContainer.Parent = TabHolder
	TabContainer.Active = true
	TabContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabContainer.BackgroundTransparency = 1.000
	TabContainer.Size = UDim2.new(0, 405, 0, 45)
	TabContainer.CanvasSize = UDim2.new(2, 0, 0, 0)
	TabContainer.ScrollBarThickness = 6
	TabContainer.VerticalScrollBarInset = Enum.ScrollBarInset.Always

	UIListLayout.Parent = TabContainer
	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 5)
	UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
	function()
		TabContainer.CanvasSize = UDim2.new(.0, UIListLayout.AbsoluteContentSize.X, 0, 0)
	end
	)
	UIPadding.Parent = TabContainer
	UIPadding.PaddingLeft = UDim.new(0, 5)
	UIPadding.PaddingTop = UDim.new(0, 5) --3

	local Bottom = Instance.new("Frame")
	Bottom.Name = "Bottom"
	Bottom.Parent = Main
	Bottom.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	Bottom.BackgroundTransparency = 0.5
	Bottom.Position = UDim2.new(0.0119760484, 2, 0.0916666687, 25)
	Bottom.Size = UDim2.new(0, 505, 0, 300)
    
	local uitoggled = false
	UserInputService.InputBegan:Connect(
		function(io, p)
			if io.KeyCode == UIConfig.Bind then
				if uitoggled == false then
					Main:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 1, true)
					uitoggled = true
					wait(.5)
					UI.Enabled = false
				else
					Main:TweenSize(
						UDim2.new(0, 520, 0, 380),
						Enum.EasingDirection.Out,
						Enum.EasingStyle.Quart,
						1,
						true
					)
					UI.Enabled = true
					uitoggled = false
				end
			end
		end
	)

	dragify(ClickFrame, Main)
	local tabs = {}
	local S = false
	function tabs:Tab(Name, icon)
		local FrameTab = Instance.new("Frame")
		local Tab = Instance.new("TextButton")
		local UICorner_3 = Instance.new("UICorner")
		local UICorner_Tab = Instance.new("UICorner")
		local ImageLabel = Instance.new("ImageLabel")
		local TextLabel = Instance.new("TextLabel")

		FrameTab.Name = "FrameTab"
		FrameTab.Parent = Tab
		FrameTab.BackgroundColor3 = Color3.fromRGB(13, 13, 13) --34
		FrameTab.Size = UDim2.new(0, 130, 0, 30)
		FrameTab.BackgroundTransparency = 1.4
		UICorner_Tab.CornerRadius = UDim.new(0, 3)
		UICorner_Tab.Parent = FrameTab

		Tab.Name = "Tab"
		Tab.Parent = TabContainer
		Tab.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
		Tab.Size = UDim2.new(0, 130, 0, 30)
		Tab.BackgroundTransparency = 0.5
		Tab.Text = ""
		UICorner_3.CornerRadius = UDim.new(0, 3)
		UICorner_3.Parent = Tab

		ImageLabel.Parent = Tab
		ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ImageLabel.Position = UDim2.new(0, 5, 0.2, 0)
		ImageLabel.Size = UDim2.new(0, 20, 0, 20)
		ImageLabel.Image = "http://www.roblox.com/asset/?id=" .. icon
		ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
		ImageLabel.ImageTransparency = 0.2
		ImageLabel.BackgroundTransparency = 1

		TextLabel.Parent = Tab
		TextLabel.Text = Name.." "

		TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.BackgroundTransparency = 1.000
		TextLabel.Position = UDim2.new(0.342105269, 0, 0.100000001, 0)
		TextLabel.Size = UDim2.new(0, 87, 0, 27)
		TextLabel.Font = Enum.Font.GothamBold
		TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.TextSize = 12.300
		TextLabel.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel.TextTransparency = 0.200

		if TextLabel.Name == Name.." " then
			Tab.Size = UDim2.new(0, 70 + TextLabel.TextBounds.X, 0, 25)
		end

		local Page = Instance.new("ScrollingFrame")
		local Left = Instance.new("ScrollingFrame")
		local Right = Instance.new("ScrollingFrame")
		local UIListLayout_5 = Instance.new("UIListLayout")
		local UIPadding_5 = Instance.new("UIPadding")

		Page.Name = "Page"
		Page.Parent = Bottom
		Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Page.Position = UDim2.new(0.01, 0, 0.015, 0)
		Page.BackgroundTransparency = 1.000
		Page.Size = UDim2.new(0, 495, 0, 295)
		Page.ScrollBarThickness = 0
		Page.CanvasSize = UDim2.new(0, 0, 0, 0)
		Page.Visible = false
    
		Left.Name = "Left"
		Left.Parent = Page
		Left.Active = true
		Left.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Left.BackgroundTransparency = 1
		Left.Size = UDim2.new(0, 242, 0, 290)
		Left.ScrollBarThickness = 3
		Left.CanvasSize = UDim2.new(2, 0, 0, 0)

		Right.Name = "Right"
		Right.Parent = Page
		Right.Active = true
		Right.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Right.BackgroundTransparency = 1
		Right.Size = UDim2.new(0, 242, 0, 290)
		Right.ScrollBarThickness = 3
		Right.CanvasSize = UDim2.new(2, 0, 0, 0)

		local LeftList = Instance.new("UIListLayout")
		local RightList = Instance.new("UIListLayout")

		LeftList.Parent = Left
		LeftList.SortOrder = Enum.SortOrder.LayoutOrder
		LeftList.Padding = UDim.new(0, 0)

		RightList.Parent = Right
		RightList.SortOrder = Enum.SortOrder.LayoutOrder
		RightList.Padding = UDim.new(0, 0)  --5

		UIListLayout_5.Parent = Page
		UIListLayout_5.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_5.Padding = UDim.new(0, 13)

		UIPadding_5.Parent = Page

		if S == false then
			S = true
			Page.Visible = true
			TextLabel.TextColor3 = _G.Color
			TextLabel.TextTransparency = 0
			ImageLabel.ImageColor3 = _G.Color
		end

		Tab.MouseButton1Click:Connect(
			function()
				for _, x in next, TabContainer:GetChildren() do
					if x.Name == "Tab" then
						TweenService:Create(
							x.TextLabel,
							TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{TextColor3 = Color3.fromRGB(255, 255, 255)}
						):Play()
						TweenService:Create(
							x.ImageLabel,
							TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{ImageColor3 = Color3.fromRGB(255, 255, 255)}
						):Play()
						TweenService:Create(
							x.ImageLabel,
							TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{ImageTransparency = 0.2}
						):Play()
						TweenService:Create(
							x.TextLabel,
							TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{TextTransparency = 0.2}
						):Play()
						for index, y in next, Bottom:GetChildren() do
							y.Visible = false
						end
					end
				end
				TweenService:Create(
					TextLabel,
					TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{TextColor3 = _G.Color}
				):Play()
				TweenService:Create(
					ImageLabel,
					TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{ImageColor3 = _G.Color}
				):Play()
				TweenService:Create(
					ImageLabel,
					TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{ImageTransparency = 0}
				):Play()
				TweenService:Create(
					TextLabel,
					TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{TextTransparency = 0}
				):Play()

				Page.Visible = true
			end
		)

		local function GetType(value)
			if value == "Left" then
				return Left
			elseif value == "Right" then
				return Right
			else
				return Left
			end
		end

		game:GetService("RunService").Stepped:Connect(function()
			pcall(function()
				Right.CanvasSize = UDim2.new(0,0,0,RightList.AbsoluteContentSize.Y + 5)
				Left.CanvasSize = UDim2.new(0,0,0,LeftList.AbsoluteContentSize.Y + 5)
			end)
		end)

		local sections = {}
		function sections:Section(Name,side)

			if side == nil then
				return Left
			end

			local Section = Instance.new("Frame")
     		local UICorner_5 = Instance.new("UICorner")
			local Top_2 = Instance.new("Frame")
			local Line = Instance.new("Frame")
			local Sectionname = Instance.new("TextLabel")
			local SectionContainer = Instance.new("Frame")
			local SectionContainer_2 = Instance.new("Frame")
			local UIListLayout_2 = Instance.new("UIListLayout")
			local UIPadding_2 = Instance.new("UIPadding")

			Section.Name = "Section"
			Section.Parent = GetType(side)
			Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255) --25
			Section.BackgroundTransparency = 0.9
			Section.ClipsDescendants = true
			Section.Size = UDim2.new(0, 240, 0, 340)

			UICorner_5.CornerRadius = UDim.new(0, 0) --5
			UICorner_5.Parent = Section

			Top_2.Name = "Top"
			Top_2.Parent = Section
			Top_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Top_2.BackgroundTransparency = 1.000
			Top_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
			Top_2.Size = UDim2.new(0, 238, 0, 35)

			Line.Name = "Line"
			Line.Parent = Top_2
			Line.BackgroundColor3 = _G.Color
			Line.BorderSizePixel = 0
			Line.Size = UDim2.new(0, 239, 0, 1.5)

			spawn(function()
			    while wait() do
			        pcall(function()
      			      wait(0.1) 
			            -- Set the color to a single color (e.g., green)
			            game:GetService('TweenService'):Create(
    			            Line, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
 			               {BackgroundColor3 = Color3.fromRGB(0, 255, 0)} -- green color
			            ):Play() 
			            wait(0.5)            
			        end)
			    end
			end)

			Sectionname.Name = "Sectionname"
			Sectionname.Parent = Top_2
			Sectionname.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Sectionname.BackgroundTransparency = 1.000
			Sectionname.Position = UDim2.new(0.3, 0, 0.1, 0)
			Sectionname.Size = UDim2.new(0, 100, 0, 20)
			Sectionname.Font = Enum.Font.GothamSemibold
			Sectionname.Text = Name
			Sectionname.TextColor3 = Color3.fromRGB(255, 255, 255)
			Sectionname.TextSize = 15.000
			Sectionname.TextTransparency = 0.300
			Sectionname.TextXAlignment = Enum.TextXAlignment.Left

			SectionContainer.Name = "SectionContainer"
			SectionContainer.Parent = Top_2
			SectionContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SectionContainer.BackgroundTransparency = 1.000
			SectionContainer.BorderSizePixel = 0
			SectionContainer.Position = UDim2.new(0, 0, 0.796416223, 0)
			SectionContainer.Size = UDim2.new(0, 239, 0, 318)

			SectionContainer_2.Name = "SectionContainer_2"
			SectionContainer_2.Parent = Top_2
			SectionContainer_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SectionContainer_2.BackgroundTransparency = 1.000
			SectionContainer_2.BorderSizePixel = 0
			SectionContainer_2.Position = UDim2.new(0, 0, 0.796416223, 0)
			SectionContainer_2.Size = UDim2.new(0, 239, 0, 318)

			UIListLayout_2.Parent = SectionContainer
			UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_2.Padding = UDim.new(0, 5)

			UIPadding_2.Parent = SectionContainer
			UIPadding_2.PaddingLeft = UDim.new(0, 5)

			UIListLayout_2:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
			function()

				Section.Size = UDim2.new(1, 0, 0, UIListLayout_2.AbsoluteContentSize.Y + 35) --35
			end)

			local functionitem = {}

			function functionitem:Label(text)
				local textas = {}
				local Label = Instance.new("Frame")
				local Text = Instance.new("TextLabel")
				Label.Name = "Label"
				Label.Parent = SectionContainer
				Label.AnchorPoint = Vector2.new(0.5, 0.5)
				Label.BackgroundTransparency = 1.000
				Label.Size = UDim2.new(0.975000024, 0, 0, 30)

				Text.Name = "Text"
				Text.Parent = Label
				Text.AnchorPoint = Vector2.new(0.5, 0.5)
				Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Text.BackgroundTransparency = 1.000
				Text.Position = UDim2.new(0.5, 0, 0.5, 0)
				Text.Size = UDim2.new(0, 53, 0, 12)
				Text.ZIndex = 15
				Text.Font = Enum.Font.GothamBold
				Text.Text = text
				Text.TextColor3 = Color3.fromRGB(255, 255, 255)
				Text.TextSize = 12.000
				function textas:Set(newtext)
					Text.Text = newtext
				end
				return textas
			end

			function functionitem:LabelColor(text,color)
				local textas = {}
				local Label = Instance.new("Frame")
				local Text = Instance.new("TextLabel")
				Label.Name = "Label"
				Label.Parent = SectionContainer
				Label.AnchorPoint = Vector2.new(0.5, 0.5)
				Label.BackgroundTransparency = 1.000
				Label.Size = UDim2.new(0.975000024, 0, 0, 30)
 
				Text.Name = "Text"
				Text.Parent = Label
				Text.AnchorPoint = Vector2.new(0.5, 0.5)
				Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Text.BackgroundTransparency = 1.000
				Text.Position = UDim2.new(0.5, 0, 0.5, 0)
				Text.Size = UDim2.new(0, 53, 0, 12)
				Text.ZIndex = 16
				Text.Font = Enum.Font.GothamBold
				Text.Text = text
				Text.TextColor3 = Color3.fromRGB(color)
				Text.TextSize = 12.000
				function textas:Set(newtext)
					Text.Text = newtext
				end
				return textas
			end
			function functionitem:Button(Title, default, callback)
				local b3Func = {}
				local callback = callback or function()
				end
				local Tgs = default
				local Button_2 = Instance.new("Frame")
				local UICorner_21 = Instance.new("UICorner")
				local TextLabel_4 = Instance.new("TextLabel")
				local TextButton_4 = Instance.new("TextButton")

				Button_2.Name = "Button"
				Button_2.Parent = SectionContainer
				Button_2.BackgroundColor3 = Color3.fromRGB(154, 240, 17)
				Button_2.Size = UDim2.new(0.975000024, 0, 0, 25)
				Button_2.ZIndex = 16

				if default then
					Button_2.BackgroundColor3 = Color3.fromRGB(154, 240, 17)
				else
					Button_2.BackgroundColor3 = _G.Color
				end

				UICorner_21.CornerRadius = UDim.new(0, 4)
				UICorner_21.Parent = Button_2

				TextLabel_4.Parent = Button_2
				TextLabel_4.AnchorPoint = Vector2.new(0.5, 0.5)
				TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel_4.BackgroundTransparency = 1.000
				TextLabel_4.Position = UDim2.new(0.5, 0, 0.5, 0)
				TextLabel_4.Size = UDim2.new(0, 40, 0, 12)
				TextLabel_4.ZIndex = 16
				TextLabel_4.Font = Enum.Font.GothamBold
				TextLabel_4.Text = tostring(Title)
				TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel_4.TextSize = 12.000

				TextButton_4.Parent = Button_2
				TextButton_4.BackgroundColor3 = Color3.fromRGB(10, 10, 10) --25
				TextButton_4.BackgroundTransparency = 1.000
				TextButton_4.BorderSizePixel = 0
				TextButton_4.ClipsDescendants = true
				TextButton_4.Size = UDim2.new(1, 0, 1, 0)
				TextButton_4.ZIndex = 16
				TextButton_4.AutoButtonColor = false
				TextButton_4.Font = Enum.Font.Gotham
				TextButton_4.Text = ""
				TextButton_4.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextButton_4.TextSize = 14.000

				TextButton_4.MouseButton1Click:Connect(
					function()
						Tgs = not Tgs
						b3Func:Update(Tgs)
						CircleClick(Button_2, Mouse.X, Mouse.Y)
					end
				)

				if default then
					TweenService:Create(
						Button_2,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{
							BackgroundColor3 = state and _G.Color or Color3.fromRGB(154, 240, 17)
						}
					):Play()
					callback(default)
					Tgs = default
				end
				function b3Func:Update(state)
					TweenService:Create(
						Button_2,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{
							BackgroundColor3 = state and Color3.fromRGB(154, 240, 17) or _G.Color
						}
					):Play()
					callback(state)
					Tgs = state
				end

				return b3Func
			end

     function functionitem:Seperator(text)
   	  local Seperator = Instance.new("Frame")
	   local Sep2 = Instance.new("TextLabel")

	   Seperator.Name = "Seperator"
	   Seperator.Parent = SectionContainer
	   Seperator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	   Seperator.BackgroundTransparency = 1.000
	   Seperator.Size = UDim2.new(0.975, 0, 0, 20)

	   Sep2.Name = "Sep2"
	   Sep2.Parent = Seperator
	   Sep2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	   Sep2.BackgroundTransparency = 1.000
	   Sep2.Size = UDim2.new(0, 100, 0, 20)
	   Sep2.Position = UDim2.new(0.5, -50, 0, 0)
	   Sep2.Font = Enum.Font.GothamSemibold
	   Sep2.Text = text
	   Sep2.TextColor3 = Color3.fromRGB(255, 255, 255)
       Sep2.TextSize = 15
	   Sep2.TextXAlignment = Enum.TextXAlignment.Center
      end
		function functionitem:Button(Name, callback)
				local Button = Instance.new("Frame")
				local UICorner_6 = Instance.new("UICorner")
				local TextLabel_3 = Instance.new("TextLabel")
				local TextButton = Instance.new("TextButton")

				Button.Name = "Button"
				Button.Parent = SectionContainer
				Button.BackgroundColor3 = _G.Color
				Button.Size = UDim2.new(0.975000024, 0, 0, 20)
				Button.ZIndex = 16

				UICorner_6.CornerRadius = UDim.new(0, 4)
				UICorner_6.Parent = Button

				TextLabel_3.Parent = Button
				TextLabel_3.AnchorPoint = Vector2.new(0.5, 0.5)
				TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel_3.BackgroundTransparency = 1.000
				TextLabel_3.Position = UDim2.new(0.5, 0, 0.5, 0)
				TextLabel_3.Size = UDim2.new(0, 40, 0, 12)
				TextLabel_3.ZIndex = 16
				TextLabel_3.Font = Enum.Font.GothamBold
				TextLabel_3.Text = Name
				TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel_3.TextSize = 12.000

				TextButton.Parent = Button
				TextButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
				TextButton.BackgroundTransparency = 1.000
				TextButton.BorderSizePixel = 0
				TextButton.ClipsDescendants = true
				TextButton.Size = UDim2.new(1, 0, 1, 0)
				TextButton.ZIndex = 16
				TextButton.AutoButtonColor = false
				TextButton.Font = Enum.Font.Gotham
				TextButton.Text = ""
				TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextButton.TextSize = 14.000

				TextButton.MouseButton1Click:Connect(
					function()
						CircleClick(Button, Mouse.X, Mouse.Y)
						callback()
					end
				)
			end

			function functionitem:Toggle(Name, default, callback)
				local ToglFunc = {}
				local Tgo = default
				local MainToggle = Instance.new("Frame")
				local UICorner = Instance.new("UICorner")
				local Text = Instance.new("TextLabel")
				local MainToggle_2 = Instance.new("ImageLabel")
				local UICorner_2 = Instance.new("UICorner")
				local MainToggle_3 = Instance.new("ImageLabel")
				local UICorner_3 = Instance.new("UICorner")
				local TextButton = Instance.new("TextButton")

				MainToggle.Name = "MainToggle"
				MainToggle.Parent = SectionContainer
				MainToggle.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				MainToggle.BackgroundTransparency = 0.700
				MainToggle.BorderSizePixel = 0
				MainToggle.ClipsDescendants = true
				MainToggle.Size = UDim2.new(0.975000024, 0, 0, 35)
				MainToggle.ZIndex = 16

				UICorner.CornerRadius = UDim.new(0, 4)
				UICorner.Parent = MainToggle

				Text.Name = "Text"
				Text.Parent = MainToggle
				Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Text.BackgroundTransparency = 1.000
				Text.Position = UDim2.new(0, 10, 0, 10)
				Text.Size = UDim2.new(0, 100, 0, 12)
				Text.ZIndex = 16
				Text.Font = Enum.Font.GothamBold
				Text.Text = Name
				Text.TextColor3 = Color3.fromRGB(255, 255, 255)
				Text.TextSize = 12.000
				Text.TextTransparency = 0.4
				Text.TextXAlignment = Enum.TextXAlignment.Left

				MainToggle_2.Name = "MainToggle"
				MainToggle_2.Parent = MainToggle
				MainToggle_2.AnchorPoint = Vector2.new(0.5, 0.5)
				MainToggle_2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
				MainToggle_2.ClipsDescendants = true
				MainToggle_2.Position = UDim2.new(0.899999976, 0, 0.5, 0)
				MainToggle_2.Size = UDim2.new(0, 23, 0, 23)
				MainToggle_2.ZIndex = 16

				UICorner_2.CornerRadius = UDim.new(0, 3)
				UICorner_2.Parent = MainToggle_2

				MainToggle_3.Name = "MainToggle"
				MainToggle_3.Parent = MainToggle_2
				MainToggle_3.AnchorPoint = Vector2.new(0.5, 0.5)
				MainToggle_3.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
				MainToggle_3.ClipsDescendants = true
				MainToggle_3.Position = UDim2.new(0.5, 0, 0.5, 0)
				MainToggle_3.Size = UDim2.new(0, 0, 0, 0)
				MainToggle_3.ZIndex = 16
				MainToggle_3.Image = "http://www.roblox.com/asset/?id=6031068421"
				MainToggle_3.ImageColor3 = _G.Color
				MainToggle_3.Visible =false
				UICorner_3.CornerRadius = UDim.new(0, 3)
				UICorner_3.Parent = MainToggle_3

				TextButton.Name = ""
				TextButton.Parent = MainToggle
				TextButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
				TextButton.BackgroundTransparency = 1.000
				TextButton.BorderSizePixel = 0
				TextButton.Size = UDim2.new(1, 0, 1, 0)
				TextButton.ZIndex = 16
				TextButton.AutoButtonColor = false
				TextButton.Font = Enum.Font.Gotham
				TextButton.Text = ""
				TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextButton.TextSize = 14.000

				TextButton.MouseButton1Click:Connect(
					function()
						Tgo = not Tgo
						ToglFunc:Update(Tgo)
						CircleClick(Button, Mouse.X, Mouse.Y)
					end
				)

				if default then
					if default then
						MainToggle_3.Visible = default
					end
					TweenService:Create(
						Text,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{
							TextTransparency = default and 0 or 0.4
						}
					):Play()
					local we = TweenService:Create(
						MainToggle_3,
						TweenInfo.new(0.1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
						{
							Size = default and UDim2.new(0, 25, 0, 25) or UDim2.new(0, 0, 0, 0) 
						}
					)
					we:Play()
					we.Completed:Wait()
					if default == false then
						MainToggle_3.Visible = default
					end
					callback(default)
					Tgo = default
				end
				function ToglFunc:Update(state)
					if state then
						MainToggle_3.Visible = state
					end
					TweenService:Create(
						Text,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{
							TextTransparency = state and 0 or 0.4
						}
					):Play()
					local we = TweenService:Create(
						MainToggle_3,
						TweenInfo.new(0.1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
						{
							Size = state and UDim2.new(0, 25, 0, 25) or UDim2.new(0, 0, 0, 0) 
						}
					)
					we:Play()
					we.Completed:Wait()
					if state == false then
						MainToggle_3.Visible = state
					end
					callback(state)
					Tgo = state
				end
				return ToglFunc
			end

			function functionitem:Textbox(Name, Placeholder, callback)
				local Textbox = Instance.new("Frame")
				local UICorner_16 = Instance.new("UICorner")
				local Text_5 = Instance.new("TextLabel")
				local TextboxHoler = Instance.new("Frame")
				local UICorner_17 = Instance.new("UICorner")
				local HeadTitle = Instance.new("TextBox")
				Textbox.Name = "Textbox"
				Textbox.Parent = SectionContainer
				Textbox.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				Textbox.BackgroundTransparency = 0.700
				Textbox.BorderSizePixel = 0
				Textbox.ClipsDescendants = true
				Textbox.Size = UDim2.new(0.975000024, 0, 0, 60)
				Textbox.ZIndex = 16

				UICorner_16.CornerRadius = UDim.new(0, 4)
				UICorner_16.Parent = Textbox

				Text_5.Name = "Text"
				Text_5.Parent = Textbox
				Text_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Text_5.BackgroundTransparency = 1.000
				Text_5.Position = UDim2.new(0, 10, 0, 10)
				Text_5.Size = UDim2.new(0, 43, 0, 12)
				Text_5.ZIndex = 16
				Text_5.Font = Enum.Font.GothamBold
				Text_5.Text = Name
				Text_5.TextColor3 = _G.Color
				Text_5.TextSize = 11.000
				Text_5.TextXAlignment = Enum.TextXAlignment.Left

				TextboxHoler.Name = "TextboxHoler"
				TextboxHoler.Parent = Textbox
				TextboxHoler.AnchorPoint = Vector2.new(0.5, 0.5)
				TextboxHoler.BackgroundColor3 = Color3.fromRGB(13, 13, 15)
				TextboxHoler.BackgroundTransparency = 1.000
				TextboxHoler.BorderSizePixel = 0
				TextboxHoler.Position = UDim2.new(0.5, 0, 0.5, 13)
				TextboxHoler.Size = UDim2.new(0.970000029, 0, 0, 30)

				UICorner_17.CornerRadius = UDim.new(0, 6)
				UICorner_17.Parent = TextboxHoler

				HeadTitle.Name = "HeadTitle"
				HeadTitle.Parent = TextboxHoler
				HeadTitle.AnchorPoint = Vector2.new(0.5, 0.5)
				HeadTitle.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				HeadTitle.BackgroundTransparency = 1.000
				HeadTitle.BorderSizePixel = 0
				HeadTitle.ClipsDescendants = true
				HeadTitle.Position = UDim2.new(0.5, 0, 0.5, 0)
				HeadTitle.Size = UDim2.new(0.949999988, 0, 0, 40)
				HeadTitle.ZIndex = 16
				HeadTitle.Font = Enum.Font.GothamBold
				HeadTitle.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
				HeadTitle.PlaceholderText = Placeholder
				HeadTitle.Text = ""
				HeadTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
				HeadTitle.TextSize = 13.000
				HeadTitle.TextTransparency = 0.700
				HeadTitle.TextXAlignment = Enum.TextXAlignment.Left
				HeadTitle.FocusLost:Connect(
					function(ep)
						if ep then
							if #HeadTitle.Text > 0 then
								callback(HeadTitle.Text)
								HeadTitle.Text = ""
							end
						end
					end
				)
			end

			function functionitem:Dropdown(Name, list, default, callback)
				local Dropfunc = {}

				local MainDropDown = Instance.new("Frame")
				local UICorner_7 = Instance.new("UICorner")
				local MainDropDown_2 = Instance.new("Frame")
				local UICorner_8 = Instance.new("UICorner")
				local v = Instance.new("TextButton")
				local Text_2 = Instance.new("TextLabel")
				local ImageButton = Instance.new("ImageButton")
				local Scroll_Items = Instance.new("ScrollingFrame")
				local UIListLayout_3 = Instance.new("UIListLayout")
				local UIPadding_3 = Instance.new("UIPadding")

				MainDropDown.Name = "MainDropDown"
				MainDropDown.Parent = SectionContainer
				MainDropDown.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				MainDropDown.BackgroundTransparency = 0.700
				MainDropDown.BorderSizePixel = 0
				MainDropDown.ClipsDescendants = true
				MainDropDown.Size = UDim2.new(0.975000024, 0, 0, 30)
				MainDropDown.ZIndex = 16

				UICorner_7.CornerRadius = UDim.new(0, 4)
				UICorner_7.Parent = MainDropDown

				MainDropDown_2.Name = "MainDropDown"
				MainDropDown_2.Parent = MainDropDown
				MainDropDown_2.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				MainDropDown_2.BackgroundTransparency = 0.700
				MainDropDown_2.BorderSizePixel = 0
				MainDropDown_2.ClipsDescendants = true
				MainDropDown_2.Size = UDim2.new(1, 0, 0, 30)
				MainDropDown_2.ZIndex = 16

				UICorner_8.CornerRadius = UDim.new(0, 4)
				UICorner_8.Parent = MainDropDown_2

				v.Name = "v"
				v.Parent = MainDropDown_2
				v.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				v.BackgroundTransparency = 1.000
				v.BorderSizePixel = 0
				v.Size = UDim2.new(1, 0, 1, 0)
				v.ZIndex = 16
				v.AutoButtonColor = false
				v.Font = Enum.Font.GothamBold
				v.Text = ""
				v.TextColor3 = Color3.fromRGB(255, 255, 255)
				v.TextSize = 12.000
				function getpro()
					if default then
						if table.find(list, default) then
							callback(default)
							return Name .. " : " .. default
						else
							return Name .. " : "
						end
					else
						return Name .. " : "
					end
				end
				Text_2.Name = "Text"
				Text_2.Parent = MainDropDown_2
				Text_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Text_2.BackgroundTransparency = 1.000
				Text_2.Position = UDim2.new(0, 10, 0, 10)
				Text_2.Size = UDim2.new(0, 62, 0, 12)
				Text_2.ZIndex = 16
				Text_2.Font = Enum.Font.GothamBold
				Text_2.Text = getpro()
				Text_2.TextColor3 = Color3.fromRGB(255, 255, 255)
				Text_2.TextSize = 12.000
				Text_2.TextXAlignment = Enum.TextXAlignment.Left

				ImageButton.Parent = MainDropDown_2
				ImageButton.AnchorPoint = Vector2.new(0, 0.5)
				ImageButton.BackgroundTransparency = 1.000
				ImageButton.Position = UDim2.new(1, -25, 0.5, 0)
				ImageButton.Size = UDim2.new(0, 12, 0, 12)
				ImageButton.ZIndex = 16
				ImageButton.Image = "http://www.roblox.com/asset/?id=6282522798"

				Scroll_Items.Name = "Scroll_Items"
				Scroll_Items.Parent = MainDropDown
				Scroll_Items.Active = true
				Scroll_Items.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Scroll_Items.BackgroundTransparency = 1.000
				Scroll_Items.BorderSizePixel = 0
				Scroll_Items.Position = UDim2.new(0, 0, 0, 35)
				Scroll_Items.Size = UDim2.new(1, 0, 1, -35)
				Scroll_Items.ZIndex = 16
				Scroll_Items.CanvasSize = UDim2.new(2, 0, 0, 0) --265
				Scroll_Items.ScrollBarThickness = 3

				UIListLayout_3.Parent = Scroll_Items
				UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout_3.Padding = UDim.new(0, 5)
				UIListLayout_2:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
				function()
					Scroll_Items.CanvasSize = UDim2.new(1, 0, 0, UIListLayout_2.AbsoluteContentSize.Y+40)
				end
				)
				UIPadding_3.Parent = Scroll_Items
				UIPadding_3.PaddingLeft = UDim.new(0, 10)
				UIPadding_3.PaddingTop = UDim.new(0, 5)

				function Dropfunc:TogglePanel(state)
					TweenService:Create(
						MainDropDown,
						TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = state and UDim2.new(0.975000024, 0, 0, 599) or UDim2.new(0.975000024, 0, 0, 30)}
					):Play()
					TweenService:Create(
						ImageButton,
						TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Rotation = state and 180 or 0}
					):Play()
				end
				local Tof = false
				ImageButton.MouseButton1Click:Connect(
					function()
						Tof = not Tof
						Dropfunc:TogglePanel(Tof)
					end
				)
				v.MouseButton1Click:Connect(
					function()
						Tof = not Tof
						Dropfunc:TogglePanel(Tof)
					end
				)
				function Dropfunc:Clear()
					for i, v in next, Scroll_Items:GetChildren() do
						if v:IsA("TextButton") then 
							v:Destroy()
						end
					end
				end

				function Dropfunc:Add(Text)
					local _5 = Instance.new("TextButton")
					local UICorner_9 = Instance.new("UICorner")
					_5.Name = Text
					_5.Parent = Scroll_Items
					_5.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
					_5.BorderSizePixel = 0
					_5.ClipsDescendants = true
					_5.Size = UDim2.new(1, -10, 0, 20)
					_5.ZIndex = 17
					_5.AutoButtonColor = false
					_5.Font = Enum.Font.GothamBold
					_5.Text = Text
					_5.TextColor3 = Color3.fromRGB(255, 255, 255)
					_5.TextSize = 12.000

					UICorner_9.CornerRadius = UDim.new(0, 4)
					UICorner_9.Parent = _5

					_5.MouseButton1Click:Connect(
						function()
							if _x == nil then
								Tof = false
								Dropfunc:TogglePanel(Tof)
								callback(Text)
								Text_2.Text = Text
								_x = nil
							end
						end
					)
				end
				for i, v in next, list do
					Dropfunc:Add(v)
				end


				return Dropfunc
			end

			function functionitem:MultiDropdown(Name, list, default, callback)
				local Dropfunc = {}

				local MainDropDown = Instance.new("Frame")
				local UICorner_7 = Instance.new("UICorner")
				local MainDropDown_2 = Instance.new("Frame")
				local UICorner_8 = Instance.new("UICorner")
				local v = Instance.new("TextButton")
				local Text_2 = Instance.new("TextLabel")
				local ImageButton = Instance.new("ImageButton")
				local Scroll_Items = Instance.new("ScrollingFrame")
				local UIListLayout_3 = Instance.new("UIListLayout")
				local UIPadding_3 = Instance.new("UIPadding")

				MainDropDown.Name = "MainDropDown"
				MainDropDown.Parent = SectionContainer
				MainDropDown.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				MainDropDown.BackgroundTransparency = 0.700
				MainDropDown.BorderSizePixel = 0
				MainDropDown.ClipsDescendants = true
				MainDropDown.Size = UDim2.new(0.975000024, 0, 0, 30)
				MainDropDown.ZIndex = 16

				UICorner_7.CornerRadius = UDim.new(0, 4)
				UICorner_7.Parent = MainDropDown

				MainDropDown_2.Name = "MainDropDown"
				MainDropDown_2.Parent = MainDropDown
				MainDropDown_2.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				MainDropDown_2.BackgroundTransparency = 0.700
				MainDropDown_2.BorderSizePixel = 0
				MainDropDown_2.ClipsDescendants = true
				MainDropDown_2.Size = UDim2.new(1, 0, 0, 30)
				MainDropDown_2.ZIndex = 16

				UICorner_8.CornerRadius = UDim.new(0, 4)
				UICorner_8.Parent = MainDropDown_2

				v.Name = "v"
				v.Parent = MainDropDown_2
				v.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				v.BackgroundTransparency = 1.000
				v.BorderSizePixel = 0
				v.Size = UDim2.new(1, 0, 1, 0)
				v.ZIndex = 16
				v.AutoButtonColor = false
				v.Font = Enum.Font.GothamBold
				v.Text = ""
				v.TextColor3 = Color3.fromRGB(255, 255, 255)
				v.TextSize = 12.000
				function getpro()
					if default then
						for i, v in next, default do
							if table.find(list, v) then
								callback(default)
								return Name .. " : " .. table.concat(default, ", ")
							else
								return Name
							end
						end
					else
						return Name
					end
				end

				Text_2.Name = "Text"
				Text_2.Parent = MainDropDown_2
				Text_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Text_2.BackgroundTransparency = 1.000
				Text_2.Position = UDim2.new(0, 10, 0, 10)
				Text_2.Size = UDim2.new(0, 62, 0, 12)
				Text_2.ZIndex = 16
				Text_2.Font = Enum.Font.GothamBold
				Text_2.Text = getpro()
				Text_2.TextColor3 = Color3.fromRGB(255, 255, 255)
				Text_2.TextSize = 12.000
				Text_2.TextXAlignment = Enum.TextXAlignment.Left

				ImageButton.Parent = MainDropDown_2
				ImageButton.AnchorPoint = Vector2.new(0, 0.5)
				ImageButton.BackgroundTransparency = 1.000
				ImageButton.Position = UDim2.new(1, -25, 0.5, 0)
				ImageButton.Size = UDim2.new(0, 12, 0, 12)
				ImageButton.ZIndex = 16
				ImageButton.Image = "http://www.roblox.com/asset/?id=6282522798"
				local DropTable = {}
				Scroll_Items.Name = "Scroll_Items"
				Scroll_Items.Parent = MainDropDown
				Scroll_Items.Active = true
				Scroll_Items.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Scroll_Items.BackgroundTransparency = 1.000
				Scroll_Items.BorderSizePixel = 0
				Scroll_Items.Position = UDim2.new(0, 0, 0, 35)
				Scroll_Items.Size = UDim2.new(1, 0, 1, -35)
				Scroll_Items.ZIndex = 16
				Scroll_Items.CanvasSize = UDim2.new(0, 0, 0, 265)
				Scroll_Items.ScrollBarThickness = 0

				UIListLayout_3.Parent = Scroll_Items
				UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout_3.Padding = UDim.new(0, 5)
				UIListLayout_2:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
				function()
					Scroll_Items.CanvasSize = UDim2.new(1, 0, 0, UIListLayout_2.AbsoluteContentSize.Y+40)
				end
				)
				UIPadding_3.Parent = Scroll_Items
				UIPadding_3.PaddingLeft = UDim.new(0, 10)
				UIPadding_3.PaddingTop = UDim.new(0, 5)

				function Dropfunc:TogglePanel(state)
					TweenService:Create(
						MainDropDown,
						TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = state and UDim2.new(0.975000024, 0, 0, 200) or UDim2.new(0.975000024, 0, 0, 30)}
					):Play()
					TweenService:Create(
						ImageButton,
						TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Rotation = state and 180 or 0}
					):Play()
				end
				local Tof = false
				ImageButton.MouseButton1Click:Connect(
					function()
						Tof = not Tof
						Dropfunc:TogglePanel(Tof)
					end
				)
				v.MouseButton1Click:Connect(
					function()
						Tof = not Tof
						Dropfunc:TogglePanel(Tof)
					end
				)
				function Dropfunc:Add(Text)
					local _5 = Instance.new("TextButton")
					local UICorner_9 = Instance.new("UICorner")
					_5.Name = Text
					_5.Parent = Scroll_Items
					_5.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
					_5.BorderSizePixel = 0
					_5.ClipsDescendants = true
					_5.Size = UDim2.new(1, -10, 0, 20)
					_5.ZIndex = 17
					_5.AutoButtonColor = false
					_5.Font = Enum.Font.GothamBold
					_5.Text = Text
					_5.TextColor3 = Color3.fromRGB(255, 255, 255)
					_5.TextSize = 12.000

					UICorner_9.CornerRadius = UDim.new(0, 4)
					UICorner_9.Parent = _5
					_5.MouseButton1Click:Connect(
						function()
							if not table.find(DropTable, Text) then
								table.insert(DropTable, Text)
								callback(DropTable, Text)
								Text_2.Text = Name .. " : " .. table.concat(DropTable, ", ")
								TweenService:Create(
									_5,
									TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
									{TextColor3 = _G.Color}
								):Play()
							else
								TweenService:Create(
									_5,
									TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
									{TextColor3 = _G.Color}
								):Play()
								for i2, v2 in pairs(DropTable) do
									if v2 == Text then
										table.remove(DropTable, i2)
										Text_2.Text = Name .. " : " .. table.concat(DropTable, ", ")
									end
								end
								callback(DropTable, Text)
							end
						end
					)
				end
				function Dropfunc:Clear()
					for i, v in next, Scroll_Items:GetChildren() do
						if v:IsA("TextButton")  then 
							v:Destroy()

						end
					end 
				end

				for i, v in next, list do
					Dropfunc:Add(v)
				end
				return Dropfunc
			end

  function functionitem:Slider(text, floor, min, max, de, callback)
    local SliderFrame = Instance.new("Frame")
    local LabelNameSlider = Instance.new("TextLabel")
    local ShowValueFrame = Instance.new("Frame")
    local CustomValue = Instance.new("TextBox")
    local ShowValueFrameUICorner = Instance.new("UICorner")
    local ValueFrame = Instance.new("Frame")
    local ValueFrameUICorner = Instance.new("UICorner")
    local PartValue = Instance.new("Frame")
    local PartValueUICorner = Instance.new("UICorner")
    local MainValue = Instance.new("Frame")
    local MainValueUICorner = Instance.new("UICorner")
    local sliderfunc = {}

    SliderFrame.Name = "SliderFrame"
    SliderFrame.Parent = SectionContainer
    SliderFrame.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
    SliderFrame.Position = UDim2.new(0.109489053, 0, 0.708609283, 0)
    SliderFrame.Size = UDim2.new(0.975000024, 0, 0, 45)
    SliderFrame.BackgroundTransparency = 0.8  -- Adjusted transparency

    local UiToggle_UiStroke28 = Instance.new("UIStroke")
    UiToggle_UiStroke28.Color = Color3.fromRGB(60, 60, 60)
    UiToggle_UiStroke28.Thickness = 1
    UiToggle_UiStroke28.Name = "UiToggle_UiStroke1"
    UiToggle_UiStroke28.Parent = SliderFrame

    local UICorner_7 = Instance.new("UICorner")
    UICorner_7.CornerRadius = UDim.new(0, 4)
    UICorner_7.Parent = SliderFrame

    LabelNameSlider.Name = "LabelNameSlider"
    LabelNameSlider.Parent = SliderFrame
    LabelNameSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    LabelNameSlider.BackgroundTransparency = 1.000
    LabelNameSlider.Position = UDim2.new(0.0729926974, 0, 0.0396823473, 0)
    LabelNameSlider.Size = UDim2.new(0, 182, 0, 25)
    LabelNameSlider.Font = Enum.Font.GothamBold
    LabelNameSlider.Text = tostring(text)
    LabelNameSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
    LabelNameSlider.TextSize = 11.000
    LabelNameSlider.TextXAlignment = Enum.TextXAlignment.Left

    ShowValueFrame.Name = "ShowValueFrame"
    ShowValueFrame.Parent = SliderFrame
    ShowValueFrame.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
    ShowValueFrame.BackgroundTransparency = 0.8  -- Adjusted transparency
    ShowValueFrame.Position = UDim2.new(0.733576655, 0, 0.0656082779, 0)
    ShowValueFrame.Size = UDim2.new(0, 58, 0, 21)

    CustomValue.Name = "CustomValue"
    CustomValue.Parent = ShowValueFrame
    CustomValue.AnchorPoint = Vector2.new(0.5, 0.5)
    CustomValue.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    CustomValue.BackgroundTransparency = 0.9  -- Adjusted transparency for the text box
    CustomValue.Position = UDim2.new(0.5, 0, 0.5, 0)
    CustomValue.Size = UDim2.new(0, 55, 0, 21)
    CustomValue.Font = Enum.Font.GothamBold
    CustomValue.Text = "50"
    CustomValue.TextColor3 = Color3.fromRGB(255, 255, 255)
    CustomValue.TextSize = 11.000

    ShowValueFrameUICorner.CornerRadius = UDim.new(0, 4)
    ShowValueFrameUICorner.Name = "ShowValueFrameUICorner"
    ShowValueFrameUICorner.Parent = CustomValue

    ValueFrame.Name = "ValueFrame"
    ValueFrame.Parent = SliderFrame
    ValueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    ValueFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    ValueFrame.BackgroundTransparency = 0.9  -- Adjusted transparency
    ValueFrame.Position = UDim2.new(0.5, 0, 0.8, 0)
    ValueFrame.Size = UDim2.new(0, 200, 0, 5)

    ValueFrameUICorner.CornerRadius = UDim.new(0, 30)
    ValueFrameUICorner.Name = "ValueFrameUICorner"
    ValueFrameUICorner.Parent = ValueFrame

    PartValue.Name = "PartValue"
    PartValue.Parent = ValueFrame
    PartValue.AnchorPoint = Vector2.new(0.5, 0.5)
    PartValue.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    PartValue.BackgroundTransparency = 1.0  -- Full transparency
    PartValue.Position = UDim2.new(0.5, 0, 0.8, 0)
    PartValue.Size = UDim2.new(0, 200, 0, 5)

    PartValueUICorner.CornerRadius = UDim.new(0, 30)
    PartValueUICorner.Name = "PartValueUICorner"
    PartValueUICorner.Parent = PartValue

    MainValue.Name = "MainValue"
    MainValue.Parent = ValueFrame
    MainValue.BackgroundColor3 = _G.Color
    MainValue.Size = UDim2.new((de or 0) / max, 0, 0, 5)
    MainValue.BorderSizePixel = 0
    MainValue.BackgroundTransparency = 0.9  -- Transparency for main value

    MainValueUICorner.CornerRadius = UDim.new(0, 30)
    MainValueUICorner.Name = "MainValueUICorner"
    MainValueUICorner.Parent = MainValue

    local ConneValue = Instance.new("Frame")
    ConneValue.Name = "ConneValue"
    ConneValue.Parent = PartValue
    ConneValue.AnchorPoint = Vector2.new(0.7, 0.7)
    ConneValue.BackgroundColor3 = _G.Color
    ConneValue.Position = UDim2.new((de or 0) / max, 0.5, 0.5, 0)
    ConneValue.Size = UDim2.new(0, 10, 0, 10)
    ConneValue.BorderSizePixel = 0

    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 10)
    UICorner.Parent = ConneValue

    -- Hiển thị giá trị mặc định
    if floor == true then
        CustomValue.Text = tostring(de and string.format("%.0f", (de / max) * (max - min) + min) or 0)
    else
        CustomValue.Text = tostring(de and math.floor((de / max) * (max - min) + min) or 0)
    end

    -- Tính toán giá trị khi kéo slider
    local function move(input)
        local pos = UDim2.new(
            math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
            0,
            0.5,
            0
        )
        local pos1 = UDim2.new(
            math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
            0,
            0,
            5
        )
        MainValue:TweenSize(pos1, "Out", "Sine", 0.2, true)
        ConneValue:TweenPosition(pos, "Out", "Sine", 0.2, true)

        local value
        if floor == true then
            value = string.format("%.0f", ((pos.X.Scale * max) / max) * (max - min) + min)
        else
            value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
        end

        CustomValue.Text = tostring(value)
        callback(value)
    end

    -- Cài đặt sự kiện khi kéo
    local dragging = false
    ConneValue.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
        end
    end)
    ConneValue.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
        end
    end)

    -- Cập nhật khi kéo slider
    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            move(input)
        end
    end)

    -- Cập nhật giá trị khi thay đổi CustomValue
    CustomValue.FocusLost:Connect(function()
        if CustomValue.Text == "" then
            CustomValue.Text = de
        end
        if tonumber(CustomValue.Text) > max then
            CustomValue.Text = max
        end
        MainValue:TweenSize(UDim2.new((CustomValue.Text or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
        ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0) / max, 0, 0.6, 0), "Out", "Sine", 0.2, true)

        if floor == true then
            CustomValue.Text = tostring(string.format("%.0f", (CustomValue.Text / max) * (max - min) + min))
        else
            CustomValue.Text = tostring(math.floor((CustomValue.Text / max) * (max - min) + min))
        end

        pcall(callback, CustomValue.Text)
    end)

    return sliderfunc
end


			return functionitem
		end
		return sections
	end
	return tabs
end

----------------------------------------------------------------------------------------------------------------------------------------------

local Window = library:NaJa()

local Main = Window:Tab("General","14477284625")
local AutoQuest = Window:Tab("Items Quest","11446859498")
local Events = Window:Tab("Auto Sea Event","10734941354")
local Racer = Window:Tab("Race V4 & Esp","10747372167")
local RaidFruit = Window:Tab("Raid & Fruits","10734975692")
local Playerrss = Window:Tab("Teleport & PVP","10734910680")
local MiscShop = Window:Tab("Shopee & Misc","10723434557")
local AutoStatus = Window:Tab("Status Server","10709770317")

local AutoFarm = Main:Section("Auto Main Farm","Left")
local Settings = Main:Section("Settings Mastery","Right")

local Items = AutoQuest:Section("Auto Items Quest","Left")
local Dragon = AutoQuest:Section("Auto Dragon Quest","Right")

local Volcano = Events:Section("Auto Prehistoric","Left")
local Events = Events:Section("Auto Events","Right")

local Trailers = Racer:Section("Auto Trailer V4","Left")
local Espbruh = Racer:Section("Auto Esp Player","Right")

local AutoRaid = RaidFruit:Section("Auto Raid Fruit","Left")
local Autofruit = RaidFruit:Section("Auto Random Fruit","Right")

local Teleport = Playerrss:Section("Teleport Island","Left")
local Playersss = Playerrss:Section("Players Combat","Right")

local TikTokShop = MiscShop:Section("Lazada Shopee","Left")
local AutoMisc = MiscShop:Section("Misc Auto","Right")

local Status = AutoStatus:Section("Status Number","Left")
local StatusTime = AutoStatus:Section("Status Time Game","Right")

_G.SelectWeapon = "Melee"
  AutoFarm:Dropdown("Select Weapons",{"Melee","Sword","Gun","Blox Fruit"},{"Melee"},function(v)
    _G.SelectWeapon = v
     end)

    task.spawn(function()
        while wait() do
	    	pcall(function()
 			if _G.SelectWeapon == "Melee" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			elseif _G.SelectWeapon == "Sword" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Sword" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			elseif _G.SelectWeapon == "Gun" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Gun" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			elseif _G.SelectWeapon == "Fruit" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Blox Fruit" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
				 			_G.SelectWeapon = v.Name
			    			end
	      				end
	    			end
		    	end
     		end)
     	end
    end)

   AutoFarm:Toggle("Auto Farm Level",false,function(value)
    _G.AutoFarm = value
      StopTween(_G.AutoFarm)		
       end)
        
        spawn(function()
        while wait() do
            if _G.AutoFarm then
                pcall(function()
                    local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    CheckQuest()
                    if not string.find(QuestTitle, NameMon) then
                        StartBring = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        StartBring = false
                        if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 1500 then
						TP1(CFrameQuest)
						elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 1500 then
						TP1(CFrameQuest)
						end
					else
						TP1(CFrameQuest)
					end
					if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 20 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                    end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "kissed") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if string.find(v.Name,"kissed Warrior") then
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            repeat task.wait()
                                                EquipWeapon(_G.SelectWeapon)
                                                
                                                PosMon = v.HumanoidRootPart.CFrame
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                                MonFarm = v.Name          
                                                v.HumanoidRootPart.Size = Vector3.new(70,70,70)
                                                StartBring = true
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        else
                                            StartBring = false
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    end
                                elseif string.find(v.Name,"kissed Warrior") == nil then
                                    TP1(CFrameMon)
                                    StartBring = false
                                    if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                                        TP1(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                    end
                                end
                            end
                        else
                            if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                        if v.Name == Mon then
                                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                repeat task.wait()
                                                    EquipWeapon(_G.SelectWeapon)
                                                     AutoHaki()                                            
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(70,70,70)
                                                    StartBring = true
                                                    MonFarm = v.Name          
                                                    game:GetService'VirtualUser':CaptureController()
                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            else
                                                StartBring = false
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                            end
                                        end
                                    end
                                end
                            else
                                TP1(CFrameMon)
                                StartBring = false
                                if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                                    TP1(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)
  
  AutoFarm:Toggle("Auto Kill Near | Mob Aura", false,function(value)
         _G.AutoNear = value
        StopTween(_G.AutoNear)
    end)
     
     spawn(function()
    while wait() do
        if _G.AutoNear then
            pcall(function()
                for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        -- Check if within 5000 studs
                        local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude
                        if distance <= 5000 then
                            repeat
                                wait(_G.Fast_Delay)
                                StartBring = true
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                FarmPos = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name

                            until not _G.AutoNear or not v.Parent or v.Humanoid.Health <= 0 or not game.Workspace.Enemies:FindFirstChild(v.Name)
                            StartBring = false
                           end
                        end
                     end
                  end)
                end
             end
          end)
          
     AutoFarm:Seperator("Auto Farm Mastery")       
     
     if World1 or World2 then
     AutoFarm:Dropdown("Select Regime Farm",{"Farm Level Mastery", "Farm Level Mastery No Quest"},{"Farm Level Mastery No Quest"},function(Value)
       _G.selectFruitFarm = Value
      end)
    end      
      if World3 then
    AutoFarm:Dropdown("Select Regime Farm",{"Farm Level Mastery", "Farm Level Mastery No Quest","Farm Bone Mastery","Farm Cake Mastery"},{"Farm Level Mastery No Quest"},function(Value)
       _G.selectFruitFarm = Value
      end)
    end      

      AutoFarm:Toggle("Auto Farm Mastery Fruit", false,function(value)
         _G.AutoFarmFruits = value 
         StopTween(_G.AutoFarmFruits)
        end)  
                                          
spawn(function()
    while task.wait() do
        if _G.UseSkill then
            pcall(function()
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                 if v.Name == MonFarm 
                 and v:FindFirstChild("Humanoid") 
                 and v:FindFirstChild("HumanoidRootPart") 
                 and v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                 repeat
                 game:GetService("RunService").Heartbeat:Wait()
                 EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
                 topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                 PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                 local char = game.Players.LocalPlayer.Character
                 local fruitName = game.Players.LocalPlayer.Data.DevilFruit.Value
                 local fruit = char:FindFirstChild(fruitName)
                 if fruit then
                 fruit.MousePos.Value = PositionSkillMasteryDevilFruit
                 local DevilFruitMastery = fruit.Level.Value
                 if SkillZ and DevilFruitMastery >= 1 then
                 game:service("VirtualInputManager"):SendKeyEvent(true, "Z", false, game)
                 wait()
                 game:service("VirtualInputManager"):SendKeyEvent(false, "Z", false, game)
                 end
                 if SkillX and DevilFruitMastery >= 1 then
                 game:service("VirtualInputManager"):SendKeyEvent(true, "X", false, game)
                 wait()
                 game:service("VirtualInputManager"):SendKeyEvent(false, "X", false, game)
                 end
                 if SkillC and DevilFruitMastery >= 1 then
                 game:service("VirtualInputManager"):SendKeyEvent(true, "C", false, game)
                 wait()
                 game:service("VirtualInputManager"):SendKeyEvent(false, "C", false, game)
                 end
                 if SkillV and DevilFruitMastery >= 1 then
                 game:service("VirtualInputManager"):SendKeyEvent(true, "V", false, game)
                 wait()
                 game:service("VirtualInputManager"):SendKeyEvent(false, "V", false, game)
                 end
                 if SkillF and DevilFruitMastery >= 1 then
                 game:service("VirtualInputManager"):SendKeyEvent(true, "F", false, game)
                 wait()
                game:service("VirtualInputManager"):SendKeyEvent(false, "F", false, game)
                end
               end
             until not _G.AutoFarmFruits or not _G.UseSkill or v.Humanoid.Health == 0
             end
            end
           end)
          end
         end
       end)

spawn(function()
    while wait() do
        if _G.AutoFarmFruits and _G.selectFruitFarm == 'Farm Level Mastery No Quest' then
            pcall(function()
                CheckQuest()
                TP1(CFrameQuest)
            end)
            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                    if v.Name == Mon then
                        repeat wait(_G.Fast_Delay)
                            if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                _G.UseSkill = true
                            else
                                _G.UseSkill = false
                                bringmob = true
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                FarmPos = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                            end
                        until not _G.AutoFarmFruits or not MasteryType == 'Farm Level Mastery No Quest' or not v.Parent or v.Humanoid.Health == 0 or not _G.selectFruitFarm == 'Farm Level Mastery No Quest'
                         bringmob = false
                        _G.UseSkill = false
                    end
                end
            end
        end
    end
end)

spawn(function()
    while wait() do
        if _G.AutoFarmFruits and _G.selectFruitFarm == 'Farm Level Mastery' then
            pcall(function()
                CheckQuest()
                if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    TP1(CFrameQuest)
                end
                if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                end
            end)
            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                            if v.Name == Mon then
                                repeat wait(_G.Fast_Delay)
                                    if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                        _G.UseSkill = true
                                    else
                                        _G.UseSkill = false
                                        bringmob = true
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                    end
                                until not _G.AutoFarmFruits or not MasteryType == 'Farm Level Mastery' or not v.Parent or v.Humanoid.Health == 0 or not _G.selectFruitFarm == 'Farm Level Mastery'
                                bringmob = false
                                _G.UseSkill = false
                            end
                        end
                    end
                end
            end
        end
    end
end)
spawn(function()
    while wait() do
        if _G.AutoFarmFruits and _G.selectFruitFarm == 'Farm Bone Mastery' then
            pcall(function()
                local boneframe = CFrame.new(-9508.5673828125, 142.1398468017578, 5737.3603515625)
                TP1(boneframe)
            end)
            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                    if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                        repeat wait(_G.Fast_Delay)
                            if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                _G.UseSkill = true

                            else
                                _G.UseSkill = false
                                bringmob = true                                
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                FarmPos = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                            end
                        until not _G.AutoFarmFruits or not MasteryType == 'Farm Bone Mastery' or not v.Parent or v.Humanoid.Health == 0 or not _G.selectFruitFarm == 'Farm Bone Mastery'
                        bringmob = false
                        _G.UseSkill = false
                    end
                end
            end
            for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                if v.Name == "Reborn Skeleton" then
               topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
               elseif v.Name == "Living Zombie" then
               topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
               elseif v.Name == "Demonic Soul" then
               topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                elseif v.Name == "Posessed Mummy" then
               topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                end
            end
        end
    end
end)
spawn(function()
    while wait() do
        if _G.AutoFarmFruits and _G.selectFruitFarm == 'Farm Cake Mastery' then
            pcall(function()
                local cakepos = CFrame.new(-2130.80712890625, 69.95634460449219, -12327.83984375)
                TP1(cakepos)
            end)
            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                    if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
                        repeat wait(_G.Fast_Delay)
                            if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                _G.UseSkill = true
                            else
                                _G.UseSkill = false
                                bringmob = true                                
                                AutoHaki()
                                StartBring = false
                                EquipWeapon(_G.SelectWeapon)
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                FarmPos = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                            end
                        until not _G.AutoFarmFruits or not MasteryType == 'Farm Cake Mastery' or not v.Parent or v.Humanoid.Health == 0 or not _G.selectFruitFarm == 'Farm Cake Mastery'
                        bringmob = false
                        _G.UseSkill = false
                    end
                end
            end
            for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                if v.Name == "Cookie Crafter" then
                    topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                elseif v.Name == "Cake Guard" then
                    topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                elseif v.Name == "Baking Staff" then
                    topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                elseif v.Name == "Head Baker" then
                    topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                end
            end
        end
    end
end)

      AutoFarm:Seperator("Auto Chest Farm")       
         
       AutoFarm:Toggle("Auto Farm Chest", false,function(value)
         _G.FarmChest = value 
         StopTween(_G.FarmChest)
        end)  
    
    spawn(function()
	while wait() do
		if _G.FarmChest then
			local Players = game:GetService("Players")
			local Player = Players.LocalPlayer
			local Character = Player.Character or Player.CharacterAdded:Wait()
			local Position = Character:GetPivot().Position
			local CollectionService = game:GetService("CollectionService")
			local Chests = CollectionService:GetTagged("_ChestTagged")
			local Distance, Nearest = math.huge
			for i = 1, #Chests do
				local Chest = Chests[i]
				local Magnitude = (Chest:GetPivot().Position - Position).Magnitude
				if (not Chest:GetAttribute("IsDisabled") and (Magnitude < Distance)) then
					Distance, Nearest = Magnitude, Chest
				end
			end
			if Nearest then
				local ChestPosition = Nearest:GetPivot().Position
				local CFrameTarget = CFrame.new(ChestPosition)
				topos(CFrameTarget)
			end
		end
	end
end)
   
      AutoFarm:Seperator("Auto Collect Berry")       
       
    AutoFarm:Toggle("Auto Farm Berries", false,function(value)
         _G.CollectBerry = value 
         StopTween(_G.CollectBerry)
        end)               

spawn(function()
    while wait() do
        if _G.CollectBerry then
            local Players = game:GetService("Players")
            local Player = Players.LocalPlayer
            local Character = Player.Character or Player.CharacterAdded:Wait()
            local Position = Character:GetPivot().Position
            local CollectionService = game:GetService("CollectionService")
            local BerryBushes = CollectionService:GetTagged("BerryBush")
            local Distance, NearestBush, NearestBerryName = math.huge, nil, nil

            for _, Bush in ipairs(BerryBushes) do
                for AttributeName, _ in pairs(Bush:GetAttributes()) do
                    local Magnitude = (Bush.Parent:GetPivot().Position - Position).Magnitude
                    if Magnitude < Distance then
                        Distance = Magnitude
                        NearestBush = Bush
                        NearestBerryName = AttributeName
                    end
                end
            end

            if NearestBush and NearestBerryName then
                local BushModel = NearestBush.Parent
                local BushCenter = BushModel:GetPivot().Position

                -- Bay vào trong bụi cây
                TP1(CFrame.new(BushCenter + Vector3.new(0, 2, 0)))
                task.wait(0.5)

                -- Tìm object thật sự là trái berry (theo tên attribute)
                local BerryPart = BushModel:FindFirstChild(NearestBerryName)
                if BerryPart and BerryPart:IsA("BasePart") then
                    -- Bay đến đúng vị trí trái berry
                    TP1(BerryPart.CFrame + Vector3.new(0, 1, 0)) -- bay hơi trên trái berry một tí
                    task.wait(0.3)

                    -- Nhấn E để nhặt berry
                    local VirtualInput = game:GetService("VirtualInputManager")
                    VirtualInput:SendKeyEvent(true, Enum.KeyCode.E, false, game)
                    task.wait(0.1)
                    VirtualInput:SendKeyEvent(false, Enum.KeyCode.E, false, game)
                end
            else
                if _G.CollectBerryHop then
                    Hop()
                end
            end
        end
    end
end)


   if World3 then
       AutoFarm:Seperator("Bone Farm")
                
    Boneyou = AutoFarm:Label("Check Bone")
                
    spawn(function()
        while wait() do
            pcall(function()
                Boneyou:Set("Your Bone : "..(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check")))
            end)
        end
    end)
     
     AutoFarm:Toggle("Auto Farm Bone", false,function(value)
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
     		_G.FarmBone = value 
         StopTween(_G.FarmBone)
    end)
    
    spawn(function()
        while wait() do 
            local boneframe = CFrame.new(-9508.5673828125, 142.1398468017578, 5737.3603515625)
            if _G.FarmBone and World3 then
            pcall(function()
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - boneframe.Position).Magnitude > 2000 then
                            TP1(boneframe)
                            wait(.1)
                            for i = 1, 8 do
                                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(boneframe)
			                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")	
                                wait(.1)		
                            end
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - boneframe.Position).Magnitude < 2000 then
                            TP1(boneframe)
                        end
                    else
                        TP1(boneframe)
                    end
                    if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        NoAttackAnimation = true
                                        NeedAttacking = true
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        StartBring = true
                                        MonFarm = v.Name                
                                        PosMon = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.FarmBone or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        StartBring = false
    					topos(CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375))
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                            if v.Name == "Reborn Skeleton" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Living Zombie" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Demonic Soul" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Posessed Mummy" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            end
                        end
                    end
                end)
            end
        end
    end)     
    
        AutoFarm:Toggle("Seperator Hallow Scythe", false,function(value)         
     	_G.Hallow = value 
         StopTween(_G.Hallow)
       end)
       
       spawn(function()
    while wait() do
        if _G.Hallow then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if string.find(v.Name , "Soul Reaper") then
                            repeat task.wait()
                                EquipWeapon(_G.SelectWeapon)
                                AutoHaki()
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                game:GetService("VirtualUser"):CaptureController()
                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
                                v.HumanoidRootPart.Transparency = 1
                            until v.Humanoid.Health <= 0 or _G.Hallow == false
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                    repeat TP1(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8                        
                    EquipWeapon("Hallow Essence")
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
                        TP1(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                   
                       end
                    end
                end)
             end
         end
     end)
      
      AutoFarm:Toggle("Auto Trade Bone", false,function(value)         
     		_G.Rdbone = value 
       end)
       
       spawn(function()
            while wait(.1) do
                if _G.Rdbone then    
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                end
            end
         end)  
         
         AutoFarm:Toggle("Auto Pray", false,function(value)         
     		_G.Pray = value 
       end)
       
       spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Pray then    
                    TP1(CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983064115, -2.48005533e-10, 0.18326205, -1.78910387e-09, 1, -8.24392288e-09, -0.18326205, -8.43218029e-09, -0.983064115))
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",1)
                end
            end
        end)
    end)		
    
        AutoFarm:Toggle("Auto Try Luck", false,function(value)         
     		_G.Trylux = value 
       end)
           
       spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Trylux then    
                    TP1(CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983064115, -2.48005533e-10, 0.18326205, -1.78910387e-09, 1, -8.24392288e-09, -0.18326205, -8.43218029e-09, -0.983064115))
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2)
                end
            end
        end)
    end)      
    
       AutoFarm:Seperator("Tyrant of the Skies Farm")
              
       AutoFarm:Toggle("Auto Farm Tyrant of the Skies", false,function(value)         
     	_G.FarmDaiBan = value 
     	StopTween(_G.FarmDaiBan)
       end)
           local TyrantoftheSkies = CFrame.new(-16194.0048828125, 155.21844482421875, 1420.719970703125)
    local Plsmon = game:GetService("Workspace").Enemies
     task.spawn(function()
    while task.wait() do
        if _G.FarmDaiBan then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Tyrant of the Skies") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Tyrant of the Skies" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 40, 0))
                                    NeedAttacking = true
                                until not _G.FarmDaiBan or not v.Parent or v.Humanoid.Health <= 0
                                wait(1)
                            end
                        end
                    end
                else
                    local foundMob = false
                    for _, mobName in pairs({"Isle Outlaw", "Island Boy", "Isle Champion", "Serpent Hunter", "Skull Slayer"}) do
                        if game:GetService("Workspace").Enemies:FindFirstChild(mobName) then
                            foundMob = true
                            break
                        end
                    end
                    if foundMob then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Isle Outlaw" or v.Name == "Island Boy" or v.Name == "Isle Champion" or v.Name == "Serpent Hunter" or v.Name == "Skull Slayer" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat
                                        task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        StartBring = true
                                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        PosMon = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        v.Head.CanCollide = false
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        NeedAttacking = true
                                        if v.Name == "Isle Outlaw" then
                                            Bring(v.Name, CFrame.new(-16442.814453125, 116.13899993896484, -264.4637756347656))
                                        elseif v.Name == "Island Boy" then
                                            Bring(v.Name, CFrame.new(-16901.26171875, 84.06756591796875, -192.88906860351562))
                                        elseif v.Name == "Isle Champion" then
                                            Bring(v.Name, CFrame.new(-16641.6796875, 235.7825469970703, 1031.282958984375))
                                        elseif v.Name == "Serpent Hunter" then
                                            Bring(v.Name, CFrame.new(-16521.0625, 106.09285, 1488.78467, 0.469467044, 0, 0.882950008, 0, 1, 0, -0.882950008, 0, 0.469467044))
                                            elseif v.Name == "Skull Slayer" then
                                            Bring(v.Name, CFrame.new(-16855.043, 122.457253, 1478.15308, -0.999392271, 0, -0.0348687991, 0, 1, 0, 0.0348687991, 0, -0.999392271))
                                        end
                                    until not _G.FarmDaiBan or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Tyrant of the Skies [Lv. 2600] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Tyrant of the Skies [Lv. 2600] [Raid Boss]")
                                    DamageAura = false
                                end
                            end
                        end
                    else
                        local RandomTele = math.random(1, 3)
                        if RandomTele == 1 then
                            topos(CFrame.new(-1436.86011, 167.753616, -12296.9512))
                        elseif RandomTele == 2 then
                            topos(CFrame.new(-2383.78979, 150.450592, -12126.4961))
                        elseif RandomTele == 3 then
                            topos(CFrame.new(-2231.2793, 168.256653, -12845.7559))
                        end
                    end
                    if BypassTP then
                        if (playerPos - TyrantoftheSkies.Position).Magnitude > 1500 then
                            BTP(TyrantoftheSkies)
                        else
                            topos(TyrantoftheSkies)
                        end
                    else
                        topos(TyrantoftheSkies)
                    end
                    UnEquipWeapon(_G.Selectweapon)
                    topos(CFrame.new(-16194.0048828125, 155.21844482421875, 1420.719970703125))
                end
            end)
        end
    end
end)
    
        AutoFarm:Seperator("Katakuri Farm")

   CakePrinceStatus = AutoFarm:Label("Check Cake Prince")
    task.spawn(function()
       while task.wait() do
          pcall(function()
           if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
           CakePrinceStatus:Set("Killed : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41)..' / 500')
          elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
          CakePrinceStatus:Set("Killed : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40)..' / 500')
           elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
        CakePrinceStatus:Set("Killed : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39)..' / 500')
        else
      CakePrinceStatus:Set("Prince King Spawned ✅")
      end
    end)
  end
  end)
 
       AutoFarm:Toggle("Auto Farm Cake Prince", false,function(value)         
     	_G.FarmCake = value 
     	StopTween(_G.FarmCake)
       end)
       
   local CakePos = CFrame.new(-2130.80712890625, 69.95634460449219, -12327.83984375)
    local Plsmon = game:GetService("Workspace").Enemies
     task.spawn(function()
    while task.wait() do
        if _G.FarmCake then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Cake Prince" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    if game:GetService("Workspace")["_WorldOrigin"]:FindFirstChild("Ring") or game:GetService("Workspace")["_WorldOrigin"]:FindFirstChild("Fist") or game:GetService("Workspace")["_WorldOrigin"]:FindFirstChild("MochiSwirl") then
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, -40, 0))
                                    else
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(4, 10, 10))
                                    end
                                    NeedAttacking = true
                                until not _G.FarmCake or not v.Parent or v.Humanoid.Health <= 0
                                wait(1)
                            end
                        end
                    end
                else
                    local foundMob = false
                    for _, mobName in pairs({"Cookie Crafter", "Cake Guard", "Baking Staff", "Head Baker"}) do
                        if game:GetService("Workspace").Enemies:FindFirstChild(mobName) then
                            foundMob = true
                            break
                        end
                    end
                    if foundMob then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat
                                        task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        StartBring = true
                                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        PosMon = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        v.Head.CanCollide = false
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        NeedAttacking = true
                                        if v.Name == "Cookie Crafter" then
                                            Bring(v.Name, CFrame.new(-2212.88965, 37.0051041, -11969.2568, 0.458114207, -0, -0.888893366, 0, 1, -0, 0.888893366, 0, 0.458114207))
                                        elseif v.Name == "Cake Guard" then
                                            Bring(v.Name, CFrame.new(-1693.98047, 35.2188225, -12436.8438, -0.716115236, 0, -0.697982132, 0, 1, 0, 0.697982132, 0, -0.716115236))
                                        elseif v.Name == "Baking Staff" then
                                            Bring(v.Name, CFrame.new(-1980.4375, 34.6653099, -12983.8408, -0.254338264, 0, -0.967115223, 0, 1, 0, 0.967115223, 0, -0.254338264))
                                        elseif v.Name == "Head Baker" then
                                            Bring(v.Name, CFrame.new(-2151.37793, 51.0095749, -13033.3975, -0.996587753, 0, 0.0825396702, 0, 1, 0, -0.0825396702, 0, -0.996587753))
                                        end
                                    until not _G.FarmCake or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]")
                                    DamageAura = false
                                end
                            end
                        end
                    else
                        local RandomTele = math.random(1, 3)
                        if RandomTele == 1 then
                            topos(CFrame.new(-1436.86011, 167.753616, -12296.9512))
                        elseif RandomTele == 2 then
                            topos(CFrame.new(-2383.78979, 150.450592, -12126.4961))
                        elseif RandomTele == 3 then
                            topos(CFrame.new(-2231.2793, 168.256653, -12845.7559))
                        end
                    end
                    if BypassTP then
                        if (playerPos - CakePos.Position).Magnitude > 1500 then
                            BTP(CakePos)
                        else
                            topos(CakePos)
                        end
                    else
                        topos(CakePos)
                    end
                    UnEquipWeapon(_G.Selectweapon)
                    topos(CFrame.new(-2130.80712890625, 69.95634460449219, -12327.83984375))
                end
            end)
        end
    end
end)

       AutoFarm:Toggle("Auto Katakuri V2", false,function(value)         
     	_G.Fullykatakuri = value 
    	StopTween(_G.Fullykatakuri)
       end)
       
   spawn(function()
		while wait() do
			if _G.Fullykatakuri then
				pcall(function()
					if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
						if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc"),"Where") then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc")
						end
					elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") then
						if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),"Do you want to open the portal now?") then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
						else
							if game.Workspace.Enemies:FindFirstChild("Baking Staff") or game.Workspace.Enemies:FindFirstChild("Head Baker") or game.Workspace.Enemies:FindFirstChild("Cake Guard") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter")  then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
									if (v.Name == "Baking Staff" or v.Name == "Head Baker" or v.Name == "Cake Guard" or v.Name == "Cookie Crafter") and v.Humanoid.Health > 0 then
										repeat wait()
											AutoHaki()
											EquipWeapon(_G.SelectWeapon)
											AutoHaki()                             
											PosMon = v.HumanoidRootPart.CFrame
											topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid.WalkSpeed = 0
											v.Head.CanCollide = false
											attackGunEnemies(v.Name , 5)
											v.HumanoidRootPart.Size = Vector3.new(70,70,70)
											StartBring = false
											MonFarm = v.Name          
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										until _G.Fullykatakuri == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or not v.Parent or v.Humanoid.Health <= 0
									end
								end
							else
								CakeBring = false
								StartBring = false
								topos(CFrame.new(-1820.0634765625, 210.74781799316406, -12297.49609375))
							end
						end						
					elseif game.ReplicatedStorage:FindFirstChild("Dough King") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
						if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
								if v.Name == "Dough King" then
									repeat wait()
										AutoHaki()
										EquipWeapon(_G.SelectWeapon)
										v.HumanoidRootPart.Size = Vector3.new(70,70,70)
										v.HumanoidRootPart.CanCollide = false
										StartBring = false
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0, -40, 0))
							    		game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									until _G.Fullykatakuri == false or not v.Parent or v.Humanoid.Health <= 0
								end    
							end    
						else
							topos(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875)) 
						end
					elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Red Key") or game.Players.LocalPlayer.Character:FindFirstChild("Red Key") then
						local args = {
							[1] = "CakeScientist",
							[2] = "Check"
						}

						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					else
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
								if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat wait()
					    					AutoHaki()
                                           EquipWeapon(_G.SelectWeapon)        
											PosMon = v.HumanoidRootPart.CFrame
											topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid.WalkSpeed = 0
											v.Head.CanCollide = false
											attackGunEnemies(v.Name , 5)
											v.HumanoidRootPart.Size = Vector3.new(70,70,70)
											StartBring = false
											MonFarm = v.Name          
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									    	sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
												until _G.Fullykatakuri == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice")
											end
										end
									end
								else
									if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
										topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
									elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
										topos(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
									elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
										topos(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
									end
								end                    
							end
						else
							wait(0.5)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
						end
					end
				end)
			end
		end
	end)
	
	AutoFarm:Toggle("Auto Start Chocola", false,function(value)         
     	_G.FarmChocola = value 
    	StopTween(_G.FarmChocola)
       end)
       
       spawn(function()
        while wait() do 
            local Choccola = CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375)
            if _G.FarmChocola then
            pcall(function()
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Choccola.Position).Magnitude > 2000 then
                            BTP(Choccola)
                            wait(.1)
                            for i = 1, 8 do
                                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Choccola)
			                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")	
                                wait(.1)		
                            end
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Choccola.Position).Magnitude < 2000 then
                            TP1(Choccola)
                        end
                    else
                        TP1(Choccola)
                    end
                    if game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") or game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior") or game:GetService("Workspace").Enemies:FindFirstChild("Sweet Thief") or game:GetService("Workspace").Enemies:FindFirstChild("Candy Rebel") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Chocolate Bar Battler" or v.Name == "Cocoa Warrior" or v.Name == "Sweet Thief" or v.Name == "Candy Rebel" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        NeedAttacking = true
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        StartBring = true
                                        MonFarm = v.Name                
                                        PosMon = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.FarmChocola or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        StartBring = false
    					topos(CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375))
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                            if v.Name == "Chocolate Bar Battler" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Cocoa Warrior" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Sweet Thief" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Candy Rebel" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            end
                        end
                    end
                end)
            end
        end
    end)     
	
 end	

     if World1 then
       _G.SelectBoss = "The Gorilla King"
       AutoFarm:Dropdown("Auto Select Boss",{"The Saw", "The Gorilla King", "Bobby", "Yeti", "Mob Leader", "Vice Admiral", "Warden", "Chief Warden", "Swan", "Magma Admiral", "Fishman Lord", "Wysper", "Thunder God", "Cyborg", "Saber Expert"},{"The Gorilla King"},function(Value)
        _G.SelectBoss = Value
       end)
   	  elseif World2 then      
       _G.SelectBoss = "Diamond"
       AutoFarm:Dropdown("Auto Select Boss",{"Diamond", "Jeremy", "Fajita", "Don Swan", "Smoke Admiral", "Cursed Captain", "Darkbeard", "Order", "Awakened Ice Admiral", "Tide Keeper"},{"Diamond"},function(Value)
       _G.SelectBoss = Value
      end)      
     elseif World3 then      
       _G.SelectBoss = "Stone"
       AutoFarm:Dropdown("Auto Select Boss",{"Stone", "Island Empress", "Rocket Admiral", "Captain Elephant", "Beautiful Pirate", "rip_indra True Form", "Longma", "Soul Reaper", "Cake Queen", "Cake Prince", "Dough King"
},{"Stone"},function(Value)
        _G.SelectBoss = Value
       end)      
    end     
    
       AutoFarm:Seperator("Auto Boss Farm")
      
    BossSpawn = AutoFarm:Label("Auto Check Boss")
       
       spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) or game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                BossSpawn:Set("Status :Boss Spawn ✅")
            else
                BossSpawn:Set("Status :Boss Not Spawn ❌")
               end
            end)
          end
       end)
 
    AutoFarm:Toggle("Auto Farm Boss", false,function(value)         
      	_G.AutoBoss = value 
       	StopTween(_G.AutoBoss)
       end)
       
       spawn(function()
        while wait() do
            if _G.AutoBoss then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == _G.SelectBoss then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoBoss or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)     
    
      AutoFarm:Seperator("Auto Farm Material")
      
      if World1 then
      AutoFarm:Dropdown("Select Material",{"Farm Leather + Scrap Metal","Farm Fish Tail","Farm Magma Ore","Farm Angel Wings"},{"Farm Fish Tail"},function(Value)
        _G.SelectMaterial = Value
      end)
      
         spawn(function()
        while wait() do 
            local Leather = CFrame.new(-967.433105, 13.5999937, 4034.24707, -0.258864403, 0, -0.965913713, 0, 1, 0, 0.965913713, 0, -0.258864403)
            if _G.AutoFarmMaterial and _G.SelectMaterial == 'Farm Leather + Scrap Metal' then
            pcall(function()
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Choccola.Position).Magnitude > 2000 then
                            BTP(Leather)
                            wait(.1)
                            for i = 1, 8 do
                                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Choccola)
			                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")	
                                wait(.1)		
                            end
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Choccola.Position).Magnitude < 2000 then
                            TP1(Leather)
                        end
                    else
                        TP1(Leather)
                    end
                    if game:GetService("Workspace").Enemies:FindFirstChild("Pirate") or game:GetService("Workspace").Enemies:FindFirstChild("Brute") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Pirate" or v.Name == "Brute"  then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        NeedAttacking = true
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        StartBring = true
                                        MonFarm = v.Name                
                                        PosMon = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoFarmMaterial or not v.Parent or v.Humanoid.Health <= 0 or not _G.SelectMaterial == 'Farm Leather + Scrap Metal'
                                end
                            end
                        end
                    else
                        StartBring = false
    					topos(CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627))
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                            if v.Name == "Pirate" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Brute" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            end
                        end
                    end
                end)
            end
        end
    end)     
    
   spawn(function()
        while wait() do 
            local Fish = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            if _G.AutoFarmMaterial and _G.SelectMaterial == 'Farm Fish Tail' then
            pcall(function()
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Choccola.Position).Magnitude > 2000 then
                            BTP(Fish)
                            wait(.1)
                            for i = 1, 8 do
                                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Choccola)
			                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")	
                                wait(.1)		
                            end
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Choccola.Position).Magnitude < 2000 then
                            TP1(Fish)
                        end
                    else
                        TP1(Fish)
                    end
                    if game:GetService("Workspace").Enemies:FindFirstChild("Fishman Commando") or game:GetService("Workspace").Enemies:FindFirstChild("Fishman Warrior") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Fishman Commando" or v.Name == "Fishman Warrior"  then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        NeedAttacking = true
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        StartBring = true
                                        MonFarm = v.Name                
                                        PosMon = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoFarmMaterial or not v.Parent or v.Humanoid.Health <= 0 or not _G.SelectMaterial == 'Farm Fish Tail'
                                end
                            end
                        end
                    else
                        StartBring = false
    					topos(CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875))
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                            if v.Name == "Fishman Commando" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Fishman Warrior" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            end
                        end
                    end
                end)
            end
        end
    end)    

   spawn(function()
        while wait() do 
            local Magma = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
            if _G.AutoFarmMaterial and _G.SelectMaterial == 'Farm Magma Ore' then
            pcall(function()
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Choccola.Position).Magnitude > 2000 then
                            BTP(Magma)
                            wait(.1)
                            for i = 1, 8 do
                                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Choccola)
			                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")	
                                wait(.1)		
                            end
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Choccola.Position).Magnitude < 2000 then
                            TP1(Magma)
                        end
                    else
                        TP1(Magma)
                    end
                    if game:GetService("Workspace").Enemies:FindFirstChild("Military Soldie") or game:GetService("Workspace").Enemies:FindFirstChild("Military Spy") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Military Soldie" or v.Name == "Military Spy"  then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        NeedAttacking = true
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        StartBring = true
                                        MonFarm = v.Name                
                                        PosMon = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoFarmMaterial or not v.Parent or v.Humanoid.Health <= 0 or not _G.SelectMaterial == 'Farm Magma Ore'
                                end
                            end
                        end
                    else
                        StartBring = false
    					topos(CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875))
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                            if v.Name == "Military Soldier" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Military Spy" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            end
                        end
                    end
                end)
            end
        end
    end)      
   
   spawn(function()
        while wait() do 
            local Angel = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            if _G.AutoFarmMaterial and _G.SelectMaterial == 'Farm Angel Wings' then
            pcall(function()
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Choccola.Position).Magnitude > 2000 then
                            BTP(Angel)
                            wait(.1)
                            for i = 1, 8 do
                                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Choccola)
			                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")	
                                wait(.1)		
                            end
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Choccola.Position).Magnitude < 2000 then
                            TP1(Angel)
                        end
                    else
                        TP1(Angel)
                    end
                    if game:GetService("Workspace").Enemies:FindFirstChild("Royal Soldier") or game:GetService("Workspace").Enemies:FindFirstChild("Royal Squad") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Royal Soldier" or v.Name == "Royal Squad"  then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        NeedAttacking = true
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        StartBring = true
                                        MonFarm = v.Name                
                                        PosMon = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoFarmMaterial or not v.Parent or v.Humanoid.Health <= 0 or not _G.SelectMaterial == 'Farm Angel Wings'
                                end
                            end
                        end
                    else
                        StartBring = false
    					topos(CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625))
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                            if v.Name == "Royal Soldier" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Royal Squad" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            end
                        end
                    end
                end)
            end
        end
    end)      

end

     if World2 then
      AutoFarm:Dropdown("Select Material",{"Farm Leather + Scrap Metal","Farm Radiactive Material","Farm Magma Ore","Farm Vampire Fang","Farm Mystic Droplet","Farm Ectoplasm",},{"Farm Leather + Scrap Metal"},function(Value)
        _G.SelectMaterial = Value
      end)
      
    spawn(function()
        while wait() do 
            local Leather = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
            if _G.AutoFarmMaterial and _G.SelectMaterial == 'Farm Leather + Scrap Metal' then
            pcall(function()
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Choccola.Position).Magnitude > 2000 then
                            BTP(Leather)
                            wait(.1)
                            for i = 1, 8 do
                                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Choccola)
			                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")	
                                wait(.1)		
                            end
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Choccola.Position).Magnitude < 2000 then
                            TP1(Leather)
                        end
                    else
                        TP1(Leather)
                    end
                    if game:GetService("Workspace").Enemies:FindFirstChild("Mercenary") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Mercenary" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        NeedAttacking = true
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        StartBring = true
                                        MonFarm = v.Name                
                                        PosMon = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoFarmMaterial or not v.Parent or v.Humanoid.Health <= 0 or not _G.SelectMaterial == 'Farm Leather + Scrap Metal'
                                end
                            end
                        end
                    else
                        StartBring = false
    					topos(CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625))
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                            if v.Name == "Mercenary" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            end
                        end
                    end
                end)
            end
        end
    end)      

    spawn(function()
        while wait() do 
            local Radiactive = CFrame.new(-105.889565, 72.8076935, -670.247986, -0.965929747, 0, -0.258804798, 0, 1, 0, 0.258804798, 0, -0.965929747)
            if _G.AutoFarmMaterial and _G.SelectMaterial == 'Farm Radiactive Material' then
            pcall(function()
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Choccola.Position).Magnitude > 2000 then
                            BTP(Radiactive)
                            wait(.1)
                            for i = 1, 8 do
                                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Choccola)
			                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")	
                                wait(.1)		
                            end
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Choccola.Position).Magnitude < 2000 then
                            TP1(Radiactive)
                        end
                    else
                        TP1(Radiactive)
                    end
                    if game:GetService("Workspace").Enemies:FindFirstChild("Factory Staff") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Factory Staff" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        NeedAttacking = true
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        StartBring = true
                                        MonFarm = v.Name                
                                        PosMon = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoFarmMaterial or not v.Parent or v.Humanoid.Health <= 0 or not _G.SelectMaterial == 'Farm Radiactive Material'
                                end
                            end
                        end
                    else
                        StartBring = false
    					topos(CFrame.new(-105.889565, 72.8076935, -670.247986, -0.965929747, 0, -0.258804798, 0, 1, 0, 0.258804798, 0, -0.965929747))
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                            if v.Name == "Factory Staff" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            end
                        end
                    end
                end)
            end
        end
    end)      

    spawn(function()
        while wait() do 
            local Magma = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
            if _G.AutoFarmMaterial and _G.SelectMaterial == 'Farm Magma Ore' then
            pcall(function()
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Choccola.Position).Magnitude > 2000 then
                            BTP(Magma)
                            wait(.1)
                            for i = 1, 8 do
                                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Choccola)
			                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")	
                                wait(.1)		
                            end
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Choccola.Position).Magnitude < 2000 then
                            TP1(Magma)
                        end
                    else
                        TP1(Magma)
                    end
                    if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate") or game:GetService("Workspace").Enemies:FindFirstChild("Magma Ninja") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Lava Pirate" or v.Name == "Magma Ninja"  then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        NeedAttacking = true
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        StartBring = true
                                        MonFarm = v.Name                
                                        PosMon = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoFarmMaterial or not v.Parent or v.Humanoid.Health <= 0 or not _G.SelectMaterial == 'Farm Magma Ore'
                                end
                            end
                        end
                    else
                        StartBring = false
    					topos(CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375))
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                            if v.Name == "Lava Pirate" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Magma Ninja" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            end
                        end
                    end
                end)
            end
        end
    end)   

    spawn(function()
        while wait() do 
            local VampireFang = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
            if _G.AutoFarmMaterial and _G.SelectMaterial == 'Farm Vampire Fang' then
            pcall(function()
               if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Choccola.Position).Magnitude > 2000 then
                            BTP(VampireFang)
                            wait(.1)
                            for i = 1, 8 do
                                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Choccola)
			                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")	
                                wait(.1)		
                            end
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Choccola.Position).Magnitude < 2000 then
                            TP1(VampireFang)
                        end
                    else
                        TP1(VampireFang)
                    end
                    if game:GetService("Workspace").Enemies:FindFirstChild("Vampire") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Vampire" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        NeedAttacking = true
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        StartBring = true
                                        MonFarm = v.Name                
                                        PosMon = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoFarmMaterial or not v.Parent or v.Humanoid.Health <= 0 or not _G.SelectMaterial == 'Farm Vampire Fang'
                                end
                            end
                        end
                    else
                        StartBring = false
    					topos(CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625))
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                            if v.Name == "Vampire" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            end
                        end
                    end
                end)
            end
        end
    end)         

    spawn(function()
        while wait() do 
            local MysticDroplet = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)
            if _G.AutoFarmMaterial and _G.SelectMaterial == 'Farm Mystic Droplet' then
            pcall(function()
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Choccola.Position).Magnitude > 2000 then
                            BTP(MysticDroplet)
                            wait(.1)
                            for i = 1, 8 do
                                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Choccola)
			                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")	
                                wait(.1)		
                            end
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Choccola.Position).Magnitude < 2000 then
                            TP1(MysticDroplet)
                        end
                    else
                        TP1(MysticDroplet)
                    end
                    if game:GetService("Workspace").Enemies:FindFirstChild("Water Fighter") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Water Fighter" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        NeedAttacking = true
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        StartBring = true
                                        MonFarm = v.Name                
                                        PosMon = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoFarmMaterial or not v.Parent or v.Humanoid.Health <= 0 or not _G.SelectMaterial == 'Farm Mystic Droplet'
                                end
                            end
                        end
                    else
                        StartBring = false
    					topos(CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875))
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                            if v.Name == "Water Fighter" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            end
                        end
                    end
                end)
            end
        end
    end)      
    
   spawn(function()
        while wait() do 
            local Ectoplasm = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)    
            if _G.AutoFarmMaterial and _G.SelectMaterial == 'Farm Ectoplasm' then
            pcall(function()
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Ectoplasm.Position).Magnitude > 2000 then
                            BTP(Ectoplasm)
                            wait(.1)
                            for i = 1, 8 do
                                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Ectoplasm)
			                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")	
                                wait(.1)		
                            end
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Ectoplasm.Position).Magnitude < 2000 then
                            TP1(Ectoplasm)
                        end
                    else
                        TP1(Ectoplasm)
                    end
                    if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Ship Deckhand" or v.Name == "Ship Engineer" or v.Name == "Ship Steward" or v.Name == "Ship Officer" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        NeedAttacking = true
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        StartBring = true
                                        MonFarm = v.Name                
                                        PosMon = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoFarmMaterial or not v.Parent or v.Humanoid.Health <= 0 or not _G.SelectMaterial == 'Farm Ectoplasm'
                                end
                            end
                        end
                    else
                        StartBring = false
    					topos(CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375))
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                            if v.Name == "Ship Deckhand" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Ship Engineer" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Ship Steward" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Ship Officer" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            end
                        end
                    end
                end)
            end
        end
    end)     
    
end   

      if World3 then
      AutoFarm:Dropdown("Select Material",{"Farm Leather + Scrap Metal","Farm Fish Tail","Farm Mini Tusk","Farm Dragon Scale","Farm Conjured Cocoa"},{"Farm Fish Tail"},function(Value)
        _G.SelectMaterial = Value
      end)
      
      spawn(function()
        while wait() do 
            local Leather = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
            if _G.AutoFarmMaterial and _G.SelectMaterial == 'Farm Leather + Scrap Metal' then
            pcall(function()
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Choccola.Position).Magnitude > 2000 then
                            BTP(Leather)
                            wait(.1)
                            for i = 1, 8 do
                                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Choccola)
			                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")	
                                wait(.1)		
                            end
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Choccola.Position).Magnitude < 2000 then
                            TP1(Leather)
                        end
                    else
                        TP1(Leather)
                    end
                    if game:GetService("Workspace").Enemies:FindFirstChild("Pirate Millionaire") or game:GetService("Workspace").Enemies:FindFirstChild("Pistol Billionaire") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Pirate Millionaire" or v.Name == "Pistol Billionaire"  then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        NeedAttacking = true
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        StartBring = true
                                        MonFarm = v.Name                
                                        PosMon = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoFarmMaterial or not v.Parent or v.Humanoid.Health <= 0 or not _G.SelectMaterial == 'Farm Leather + Scrap Metal'
                                end
                            end
                        end
                    else
                        StartBring = false
    					topos(CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375))
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                            if v.Name == "Pirate Millionaire" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Pistol Billionaire" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            end
                        end
                    end
                end)
            end
        end
    end)     
    
   spawn(function()
        while wait() do 
            local Fish = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625) 
            if _G.AutoFarmMaterial and _G.SelectMaterial == 'Farm Fish Tail' then
            pcall(function()
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Choccola.Position).Magnitude > 2000 then
                            BTP(Fish)
                            wait(.1)
                            for i = 1, 8 do
                                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Choccola)
			                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")	
                                wait(.1)		
                            end
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Choccola.Position).Magnitude < 2000 then
                            TP1(Fish)
                        end
                    else
                        TP1(Fish)
                    end
                    if game:GetService("Workspace").Enemies:FindFirstChild("Fishman Raider") or game:GetService("Workspace").Enemies:FindFirstChild("Fishman Captain") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Fishman Raider" or v.Name == "Fishman Captain"  then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        NeedAttacking = true
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        StartBring = true
                                        MonFarm = v.Name                
                                        PosMon = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoFarmMaterial or not v.Parent or v.Humanoid.Health <= 0 or not _G.SelectMaterial == 'Farm Fish Tail'
                                end
                            end
                        end
                    else
                        StartBring = false
    					topos(CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625))
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                            if v.Name == "Fishman Raider" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Fishman Captain" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            end
                        end
                    end
                end)
            end
        end
    end)    

   spawn(function()
        while wait() do 
            local Mini = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
            if _G.AutoFarmMaterial and _G.SelectMaterial == 'Farm Mini Tusk' then
            pcall(function()
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Choccola.Position).Magnitude > 2000 then
                            BTP(Mini)
                            wait(.1)
                            for i = 1, 8 do
                                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Choccola)
			                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")	
                                wait(.1)		
                            end
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Choccola.Position).Magnitude < 2000 then
                            TP1(Mini)
                        end
                    else
                        TP1(Mini)
                    end
                    if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Mythological Pirate" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        NeedAttacking = true
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        StartBring = true
                                        MonFarm = v.Name                
                                        PosMon = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoFarmMaterial or not v.Parent or v.Humanoid.Health <= 0 or not _G.SelectMaterial == 'Farm Mini Tusk'
                                end
                            end
                        end
                    else
                        StartBring = false
    					topos(CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125))
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                            if v.Name == "Mythological Pirate" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            end
                        end
                    end
                end)
            end
        end
    end)    
   
   spawn(function()
        while wait() do 
            local Dragon = CFrame.new(6668.76172, 481.376923, 329.12207, -0.121787429, 0, -0.992556155, 0, 1, 0, 0.992556155, 0, -0.121787429)
            if _G.AutoFarmMaterial and _G.SelectMaterial == 'Farm Dragon Scale' then
            pcall(function()
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Choccola.Position).Magnitude > 2000 then
                            BTP(Dragon)
                            wait(.1)
                            for i = 1, 8 do
                                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Choccola)
			                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")	
                                wait(.1)		
                            end
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Choccola.Position).Magnitude < 2000 then
                            TP1(Dragon)
                        end
                    else
                        TP1(Dragon)
                    end
                    if game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Archer") or game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Warrior") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Dragon Crew Archer" or v.Name == "Dragon Crew Warrior"  then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        NeedAttacking = true
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        StartBring = true
                                        MonFarm = v.Name                
                                        PosMon = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoFarmMaterial or not v.Parent or v.Humanoid.Health <= 0 or not _G.SelectMaterial == 'Farm Dragon Scale'
                                end
                            end
                        end
                    else
                        StartBring = false
    					topos(CFrame.new(6668.76172, 481.376923, 329.12207, -0.121787429, 0, -0.992556155, 0, 1, 0, 0.992556155, 0, -0.121787429))
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                            if v.Name == "Dragon Crew Archer" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Dragon Crew Warrior" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            end
                        end
                    end
                end)
            end
        end
    end)    
    
    spawn(function()
        while wait() do 
            local Choccola = CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375)
            if _G.AutoFarmMaterial and _G.SelectMaterial == 'Farm Conjured Cocoa' then
            pcall(function()
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Choccola.Position).Magnitude > 2000 then
                            BTP(Choccola)
                            wait(.1)
                            for i = 1, 8 do
                                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Choccola)
			                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")	
                                wait(.1)		
                            end
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Choccola.Position).Magnitude < 2000 then
                            TP1(Choccola)
                        end
                    else
                        TP1(Choccola)
                    end
                    if game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") or game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior") or game:GetService("Workspace").Enemies:FindFirstChild("Sweet Thief") or game:GetService("Workspace").Enemies:FindFirstChild("Candy Rebel") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Chocolate Bar Battler" or v.Name == "Cocoa Warrior" or v.Name == "Sweet Thief" or v.Name == "Candy Rebel" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        NeedAttacking = true
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        StartBring = true
                                        MonFarm = v.Name                
                                        PosMon = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoFarmMaterial or not v.Parent or v.Humanoid.Health <= 0 or not _G.SelectMaterial == 'Farm Conjured Cocoa'
                                end
                            end
                        end
                    else
                        StartBring = false
    					topos(CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375))
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                            if v.Name == "Chocolate Bar Battler" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Cocoa Warrior" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Sweet Thief" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Candy Rebel" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            end
                        end
                    end
                end)
            end
        end
    end)     
	
 end	

      AutoFarm:Toggle("Auto Farm Material", false,function(Value)
       _G.AutoFarmMaterial = Value 
       StopTween(_G.AutoFarmMaterial)
     end)
 
 ---------------------------- Auto Settings 
 
      KillPercent = "30"
       Settings:Dropdown("Select Healt Mob Farm",{"20","25","30","35","40","45","50","55","60","65","70","75", "80"},{"25"},function(Value)
        KillPercent = Value
      end)
      
     Settings:Toggle("Auto Use Skill Z",true,function(Z)
       SkillZ = Z
     end)
     
     Settings:Toggle("Auto Use Skill X",false,function(X)
       SkillX = X
     end)          
       
     Settings:Toggle("Auto Use Skill C",false,function(C)
       SkillC = C
     end)      
     
     Settings:Toggle("Auto Use Skill V",false,function(V)
       SkillV = V
     end)      
     
     Settings:Toggle("Auto Use Skill F",false,function(F)
       SkillC = F
     end)  
     
     Settings:Seperator("Settings Farm")         
     
      
    Settings:Toggle("Auto Bring Mob", true,function(value)
      _G.BringMonster = value
      _G.BringMob = value 
       end)     
       
       spawn(function()
    while task.wait() do
        pcall(function()
            CheckQuest()
            if _G.BringMonster and StartBring and PosMon then
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    local isValid = (v.Name == MonFarm or v.Name == Mon)
                    local hasPart = v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Head")
                    local isAlive = v.Humanoid and v.Humanoid.Health > 0
                    local inRange = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350

                    if isValid and hasPart and isAlive and inRange then
                        local distToPosMon = (v.HumanoidRootPart.Position - PosMon.Position).Magnitude
                        if distToPosMon <= 350 then
                            -- Gôm quái
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                            v.HumanoidRootPart.CFrame = PosMon

                            -- Xoá Animator nếu có
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                        end
                    end
                end

                -- Set SimulationRadius một lần
                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
            end
        end)
    end
end)


spawn(function()
    while wait() do
        pcall(function()
            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if _G.BringMob and bringmob then
                    if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                        if v.Name == "Factory Staff" then
                            if (v.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 1000000000 then
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.CFrame = FarmPos
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            end
                        elseif v.Name == MonFarm then
                            if (v.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 10000000000 then
                                v.HumanoidRootPart.CFrame = FarmPos
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.Humanoid:ChangeState(11)
                                v.Humanoid:ChangeState(14)
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                    end
                end
            end
        end)
    end
end)

if not syn then isnetworkowner = function() return true end end
getgenv().BringMobs = function(F, z)
    PosMon = F
    NameMon = z
end

task.spawn(function()
    while task.wait() do
        pcall(function()
            if PosMon then
                CheckQuest() 
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if syn then
                        if v.Name == NameMon and v.Name ~= "Ice Admiral" and v.Name ~= "Don Swan" and v.Name ~= "Saber Expert" and v.Name ~= "Longma" and  v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                            if isnetworkowner(v.HumanoidRootPart) then
                                v.HumanoidRootPart.CFrame = PosMon
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(2,2,2)
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                                v.Humanoid:ChangeState(11)
                            end
                        end
                    else
                        if v.Name == NameMon and v.Name ~= "Ice Admiral" and v.Name ~= "Don Swan" and v.Name ~= "Saber Expert" and v.Name ~= "Longma" and  v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                            v.HumanoidRootPart.CFrame = PosMon
                            v.Humanoid.JumpPower = 0
                            v.Humanoid.WalkSpeed = 0
                            v.HumanoidRootPart.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(2,2,2)
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                            v.Humanoid:ChangeState(11)
                        end
                    end
                end
            end
        end)
    end
end)
PosY = 35            

  Settings:Toggle("Auto Walk Water", true,function(value)      
      _G.WalkWater = value
 end)

    spawn(function()
			while task.wait() do
				pcall(function()
					if _G.WalkWater then
						game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
					else
						game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
					end
				end)
			end
        end)
        
      Settings:Toggle("Auto Set Home Point", false,function(value)      
      _G.CheckPoint = Value
     end)
    spawn(function()
    	while wait() do
	   	if _G.CheckPoint then
			game:GetService("SetSpawnPoint")
		end
    end
  end)
  
  Settings:Toggle("Auto Haki Buso", true,function(value)
      _G.AutoHaki = value
     end)
     spawn(function()
    while task.wait(0.1) do
        if _G.AutoHaki then
            pcall(AutoHaki)
        end
    end
end)

     Settings:Toggle("Auto Active Race V3", false,function(value)    
      _G.AutoRaceV3 = value
    end)
  spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoRaceV3 then
                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility");
             end
          end);
       end
   end)
   
   Settings:Toggle("Auto Active Race V4", false,function(value)    
      _G.AutoRaceV4 = value
    end)
    spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoRaceV4 then
                game:GetService("VirtualInputManager"):SendKeyEvent(true, "Y", false, game);
                wait();
                game:GetService("VirtualInputManager"):SendKeyEvent(false, "Y", false, game);
            end
        end);
    end
end)
 
  Settings:Toggle("Infinite Soru", false,function(Soru)       
      InfiniteSoru = Soru
     end)
     
    spawn(function()
    while task.wait(1) do
        if InfiniteSoru and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil  then
            pcall(function()
                for i,v in next, getgc() do
                    if getfenv(v).script == game.Players.LocalPlayer.Character:WaitForChild("Soru") then
                        for i2,v2 in pairs(debug.getupvalues(v)) do
                            if type(v2) == 'table' then
                                if v2.LastUse then
                                    repeat task.wait(.1)
                                        setupvalue(v, i2, {LastAfter = 0,LastUse = 0})
                                    until not InfiniteSoru or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

    Settings:Toggle("Spin Position", false,function(value)       
      _G.SpinPos = Value 
     end)
     
PosY = 35
  Settings:Dropdown("Farm Distnace",{"20","25","30","35","40","45","50","55","60","65","70","75","80"},{"50"},function(Value)
        PosY = value
      end)
  
  Settings:Toggle("Dodge No CD", false,function(value)       
      DodgewithoutCool = Value 
     end)
     function NoCooldown()
    for i,v in next, getgc() do
        if typeof(v) == "function" then
            if getfenv(v).script == game.Players.LocalPlayer.Character:WaitForChild("Dodge") then
                for i2,v2 in next, getupvalues(v) do
                    if tostring(v2) == "0.4" then
                        setupvalue(v,i2,0)
                      end
                   end
               end
           end
       end
   end
    spawn(function()
       while wait() do
           if DodgewithoutCool then
             pcall(function()
                 NoCooldown()
               end)
            end
       end
    end)
  
     Settings:Toggle("Infinite Geppo", false,function(Geppo)       
         InfiniteGeppo = Geppo
        end)
        spawn(function()
    while task.wait(1) do
        if InfiniteGeppo then
            pcall(function()
                for i,v in next, getgc() do
                    if getfenv(v).script == game.Players.LocalPlayer.Character:WaitForChild("Geppo") then
                        for i2,v2 in next, getupvalues(v) do
                            if tostring(v2) == "0" then
                                repeat wait(.1)
                                    setupvalue(v,i2,0)
                                until not InfiniteGeppo or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0
                            end
                        end
                    end
                end
            end)
        end
    end
end)
  
    Settings:Toggle("Infinite Jump", false,function(Cokka)       
     Infinite = Cokka
 	 game:GetService("UserInputService").JumpRequest:connect(function()
     if Infinite then
     game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
     end
    end) 
  end)
    
     
     if World1 or World2  then
        Items:Seperator("Auto Quest Sea")
        end
       
      if World1 then
      Items:Toggle("Auto Second Sea", false,function(Second)   
      _G.AutoSecondSea = Second  
     end)
     
      spawn(function()
         while wait() do
          if _G.AutoSecondSea then
               pcall(function()
              if game.Players.LocalPlayer.Data.Level.Value >= 700 and World1 then
              _G.AutoFarm = false
            if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
          repeat wait() topos(CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563)) until (CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoSecondSea
            wait(1)
             game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
            EquipWeapon("Key")
          local pos2 = CFrame.new(1347.7124, 37.3751602, -1325.6488)
        repeat wait() topos(pos2) until (pos2.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoSecondSea
        wait(3)
         elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
           if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then
        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
         if v.Name == "Ice Admiral" and v.Humanoid.Health > 0 then
         repeat wait()
            AutoHaki()
              EquipWeapon(_G.SelectWeapon)
               v.HumanoidRootPart.CanCollide = false
                StartBring = true
               v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                 v.HumanoidRootPart.Transparency = 1
               topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                game:GetService("VirtualUser"):CaptureController()
                 game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 870),workspace.CurrentCamera.CFrame)
              until v.Humanoid.Health <= 0 or not v.Parent or not _G.AutoSecondSea
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                  end
                end
              else
           topos(CFrame.new(1347.7124, 37.3751602, -1325.6488))
           end
         else
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
        end
       end
      end)
     end
    end
   end)
 
end
      if World2 then
      Items:Toggle("Auto Quest Bartilo", false,function(Bartilo)      
       _G.AutoBartilo = Bartilo
       StopTween(_G.AutoBartilo)
      end)
      
      spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.AutoBartilo then
                if game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then 
                        if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
                            Ms = "Swan Pirate"
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == Ms then
                                    pcall(function()
                                        repeat task.wait()
                                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                            EquipWeapon(_G.SelectWeapon)
                                            AutoHaki()
                                            v.HumanoidRootPart.Transparency = 1
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))						
                                            PosMonBarto =  v.HumanoidRootPart.CFrame
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            StartBring = true
                                        until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        StartBring = false
                                    end)
                                end
                            end
                        else
                            repeat topos(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)).Magnitude <= 10
                        end
                    else
                        repeat topos(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                        wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
                    end 
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
                        Ms = "Jeremy"
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == Ms then
                                OldCFrameBartlio = v.HumanoidRootPart.CFrame
                                repeat task.wait()
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                    EquipWeapon(_G.SelectWeapon)
                                    AutoHaki()
                                    v.HumanoidRootPart.Transparency = 1
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    v.HumanoidRootPart.CFrame = OldCFrameBartlio
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy") then
                        repeat topos(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                        wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
                        wait(1)
                        repeat topos(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                        wait(2)
                    else
                        repeat topos(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
                    repeat topos(CFrame.new(-1850.49329, 13.1789551, 1750.89685)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10
                    wait(1)
                    repeat topos(CFrame.new(-1858.87305, 19.3777466, 1712.01807)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10
                    wait(1)
                    repeat topos(CFrame.new(-1803.94324, 16.5789185, 1750.89685)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10
                    wait(1)
                    repeat topos(CFrame.new(-1858.55835, 16.8604317, 1724.79541)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10
                    wait(1)
                    repeat topos(CFrame.new(-1869.54224, 15.987854, 1681.00659)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10
                    wait(1)
                    repeat topos(CFrame.new(-1800.0979, 16.4978027, 1684.52368)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10
                    wait(1)
                    repeat topos(CFrame.new(-1819.26343, 14.795166, 1717.90625)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10
                    wait(1)
                    repeat topos(CFrame.new(-1813.51843, 14.8604736, 1724.79541)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10
                  end
                end 
             end
          end)
       end)

        Items:Toggle("Auto Third Sea", false,function(ThirdSea)      
          _G.ThirdSea = ThirdSea
          StopTween(_G.ThirdSea)
       end)
     spawn(function()
    while wait() do
        if _G.ThirdSea then
            pcall(function()
                if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 and World2 then
                    _G.AutoFarm = false
                    if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "General") == 0 then
                        topos(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
                        if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
                        end
                        wait(1.8)
                        if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "rip_indra" then
                                    OldCFrameThird = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        v.HumanoidRootPart.CFrame = OldCFrameThird
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        v.HumanoidRootPart.CanCollide = false
                                        StartBring = true
                                        v.Humanoid.WalkSpeed = 0
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.ThirdSea == false or v.Humanoid.Health <= 0 or not v.Parent
                                end
                            end
                        elseif not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                            TP1(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                        end
                    end
                end
            end)
        end
    end
end)                                                      

end               
       if World2 then
       Items:Seperator("Auto Factory")
       
        Items:Toggle("Auto Factory", false,function(Values)      
          _G.AutoFactory = Values
       end)
       
       spawn(function()
            while wait() do
                spawn(function()
                    if _G.AutoFactory then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Core" and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()         
                                        EquipWeapon(_G.SelectWeapon)           
                                        topos(CFrame.new(448.46756, 199.356781, -441.389252))                                  
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    until v.Humanoid.Health <= 0 or _G.AutoFactory == false
                                end
                            end
                        else
                            topos(CFrame.new(448.46756, 199.356781, -441.389252))
                        end
                    end
                end)
            end
        end)
        
end

        if World3 then
        Items:Seperator("Auto Pirate")
       
       Items:Toggle("Auto Pirate Raid", false,function(Values)      
          _G.AutoRaidPirate = Values
          StopTween(_G.AutoRaidPirate)
       end)
                 
      spawn(function()
	while wait() do
		if _G.AutoRaidPirate then
			pcall(function()
				local CFrameBoss = CFrame.new(-5496.17432, 313.768921, -2841.53027, 0.924894512, 7.37058015e-09, 0.380223751, 3.5881019e-08, 1, -1.06665446e-07, -0.380223751, 1.12297109e-07, 0.924894512)
				if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if _G.AutoRaidPirate and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
								repeat wait()
									AutoHaki()
									EquipWeapon(_G.SelectWeapon)
									NeedAttacking = true
									StartMagnet = true
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
								until v.Humanoid.Health <= 0 or not v.Parent or _G.AutoRaidPirate == false
								NeedAttacking = false
								StartMagnet = false
							end
						end
					end
				else
					if ((CFrameBoss).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
						TP1(CFrameBoss)
					else
						TP1(CFrameBoss)
					end
				end
			end)
		end
	end
    end)

     Items:Seperator("Auto Elite Hunter")
  
    EliteHunterKill = Items:Label("Check Elite Hunter kill")
     
     spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                EliteHunterKill:Set("Number of kills  : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))
            else
               EliteHunterKill:Set("Number of kills  : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))	
            end
        end)
    end
end)
     
         EliteHunter = Items:Label("Check Elite Hunter")
     
     task.spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
               EliteHunter:Set("Elite Hunter Spawning ✅")
            else
                EliteHunter:Set("Not Have Elite Hunter in Severs ❌")
            end
        end)
    end
end)
     
     Items:Toggle("Auto Farm Elite Hunter", false,function(Values)      
          _G.AutoElitehunter = Values
          StopTween(_G.AutoElitehunter)
       end)
     
       spawn(function()
        while wait() do
            if _G.AutoElitehunter and World3 then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
										if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat wait()
												AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                NeedAttacking = true
                                                StartBring = true
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                            until _G.AutoElitehunter == false or v.Humanoid.Health <= 0 or not v.Parent
										end
									end
								end
							else
							NeedAttacking = false
								if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
                                    TP1(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
                                    TP1(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
                                    TP1(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
								end
							end                    
						end
					else					
						if _G.AutoEliteHunterHop and game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later." then
							Hop()
						else
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
						end
					end
				end)
			end
		end
	end) 
     
     
end
    
   Items:Seperator("Auto Boss Raid")
    
    if World1 then
     Items:Toggle("Auto Kill Greybeard", false,function(Values)      
          _G.Greybeard = Values
          StopTween(_G.Greybeard)
       end)
       spawn(function()
        while wait() do
            if  _G.Greybeard  then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Greybeard") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Greybeard" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.Greybeard or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    topos(CFrame.new(-5023.38330078125, 28.65203285217285, 4332.3818359375))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Greybeard") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Greybeard").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if  _G.Greybeardhop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
        
end       

     if World2 then         
       Items:Toggle("Auto Kill Darkbeard", false,function(Values)
          _G.AutoDarkBoss = Values
          StopTween(_G.AutoDarkBoss)
       end)  
       
       spawn(function()
        while wait() do
            if _G.AutoDarkBoss then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Darkbeard" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                    NeedAttacking = true
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                                                     
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoDarkBoss or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    NeedAttacking = true
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)                            
  
       Items:Toggle("Auto kKll Cursed Captaint", false,function(Values)      
          _G.CursedCaptain = Values
          StopTween(_G.CursedCaptain)
       end)
                  
         spawn(function()
        while wait() do
            if _G.CursedCaptain then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Captain") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cursed Captain" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                    NeedAttacking = true
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                                                     
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.CursedCaptain or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    NeedAttacking = true
                    local Distance = (Vector3.new(911.35827636719, 125.95812988281, 33159.5390625) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                        if Distance > 18000 then
                        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cursed Captain") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cursed Captain").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                     end
                  end)
              end
           end
        end)            

end
      
      if World3 then 
      
     RipIndra = Items:Label("Check Rip Indra")
      
      spawn(function()
	while wait() do
		pcall(function()
		   if game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
		      RipIndra:Set("Rip Indra Spawning ✅")
		   else
		      RipIndra:Set("Not Have Rip Indra in Severs ❌")
		   end
		end)
    end
end)
      
        Items:Toggle("Auto kill Rip Indra", false,function(Values)      
          _G.RipIndraKill = Values
          StopTween(_G.RipIndraKill)
       end)
       
    local AdminPos = CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781)
     spawn(function()
        pcall(function()
            while wait() do
                if _G.RipIndraKill then
                    if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == ("rip_indra True Form" or v.Name == "rip_indra") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                repeat task.wait()
                                    pcall(function()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                         topos(v.HumanoidRootPart.CFrame * CFrame.new(0, -40, 0))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                    end)
                                until _G.RipIndraKill == false or v.Humanoid.Health <= 0
                            end
                        end
                    else
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - AdminPos.Position).Magnitude > 1500 then
                        TP1(AdminPos)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - AdminPos.Position).Magnitude < 1500 then
                        TP1(AdminPos)
                        end
                    else
                        TP1(AdminPos)
                    end
                        TP1(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781))
                    end
                end
            end
        end)
    end)                   

end
        
        Items:Seperator("Auto Buy Haki Colors")
        
        Items:Toggle("Auto Haki Colors", false,function(Value) 
          _G.AutoBuyEnchancementColour = Value          
       end)

     spawn(function()
        while wait() do
            if _G.AutoBuyEnchancementColour then
                local args = {
                    [1] = "ColorsDealer",
                    [2] = "2"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
           end 
      end)
    
      if World2 then
      Items:Seperator("Auto Swords Legendary")
      
      Items:Toggle("Auto Buy Legendary Sword", false,function(Value) 
          _G.AutoBuyLegendarySword = Value
       end)
       
       spawn(function()
        while wait() do
            if _G.AutoBuyLegendarySword then
                pcall(function()
                    local args = {
                        [1] = "LegendarySwordDealer",
                        [2] = "1"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    local args = {
                        [1] = "LegendarySwordDealer",
                        [2] = "2"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    local args = {
                        [1] = "LegendarySwordDealer",
                        [2] = "3"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
             
                end)
            end 
        end
    end)

   end 
 
 if World3 then
       Items:Seperator("Auto Items Legendary")
         
       Items:Toggle("Auto Get Yama", false,function(Values) 
          _G.AutoYama = Values
        end)
       
       spawn(function()
            while wait() do
                if _G.AutoYama then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress")>=30 then
                        repeat wait()
                            fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                        until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not _G.AutoYama
                    end
                end
            end
        end)
         
         Items:Toggle("Auto Holy Torch Tushita", false,function(Values) 
          _G.AutoHolyTorch = Values
          StopTween(_G.AutoHolyTorch)
       end)
       
       spawn(function()
        while wait() do
            if _G.AutoHolyTorch then
                pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5657.88623046875, 1013.0790405273438, -335.4996337890625))
                    wait(1)
                     topos(CFrame.new(5711.87451171875, 45.82802963256836, 254.17005920410156))
                    wait(15)
                    EquipWeapon("Holy Torch")
                    repeat topos(CFrame.new(-10752, 417, -9366)) wait() until not _G.AutoHolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10752, 417, -9366)).Magnitude <= 10
					wait(1)
					repeat topos(CFrame.new(-11672, 334, -9474)) wait() until not _G.AutoHolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-11672, 334, -9474)).Magnitude <= 10
					wait(1)
					repeat topos(CFrame.new(-12132, 521, -10655)) wait() until not _G.AutoHolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12132, 521, -10655)).Magnitude <= 10
					wait(1)
					repeat topos(CFrame.new(-13336, 486, -6985)) wait() until not _G.AutoHolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13336, 486, -6985)).Magnitude <= 10
					wait(1)
					repeat topos(CFrame.new(-13489, 332, -7925)) wait() until not _G.AutoHolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13489, 332, -7925)).Magnitude <= 10
                end)
            end
        end
    end)
  
      Items:Toggle("Auto Get Tushita", false,function(Values)      
          _G.AutoGetTushita = Values
          StopTween(_G.AutoGetTushita)
       end)
       
       spawn(function()
        while wait() do
            if _G.AutoGetTushita then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Longma") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Longma" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        StartBring = true
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoGetTushita or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Longma") then
                            TP1(game:GetService("ReplicatedStorage"):FindFirstChild("Longma").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)                            
end
  
       Items:Seperator("Auto Get Items")       
        if World1 then         
        SaberO = Items:Label("Check Boss Saber")
         
         task.spawn(function()
           while wait() do
            pcall(function()
            if game.ReplicatedStorage:FindFirstChild("Saber Expert") or game.Workspace.Enemies:FindFirstChild("Saber Expert") then
           SaberO:Set("Boss Saber Spawning ✅")
            else
           SaberO:Set("Not Have Boss Saber ❌")
           end
         end)
       end
     end)

       Items:Toggle("Auto Get Saber", false,function(Values) 
          AutoSaber = Values
          StopTween(AutoSaber)
       end)
       
       spawn(function()
        while task.wait() do
            if AutoSaber and game.Players.LocalPlayer.Data.Level.Value >= 200 then
                pcall(function()
                    if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
                        if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
                            if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
                                wait(1)
                            else
                                topos(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279))
                            end
                        else
                            if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
                                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
                                    EquipWeapon("Torch")
                                    topos(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09, 0.761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10, -0.648466587))
                                  else
                                  topos(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515, 0.965917408))
                                end
                            else
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
                                    wait(0.5)
                                    EquipWeapon("Cup")
                                    wait(0.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",game:GetService("Players").LocalPlayer.Character.Cup)
                                    wait(0)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan")
                                else
                                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == nil then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
										topos(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559)) 
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v.Name == "Mob Leader" then
                                                   if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") then
                                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                        repeat task.wait()
                                                        AutoHaki()
                                                        EquipWeapon(_G.SelectWeapon)
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                                        game:GetService("VirtualUser"):CaptureController()
                                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                        until v.Humanoid.Health <= 0 or not AutoSaber
                                                     end
                                                end
                                                if game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
                                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]").HumanoidRootPart.CFrame * Farm_Mode)
                                                end
                                            end
                                        end
                                     end
                                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                        wait(0.5)
                                        EquipWeapon("Relic")
                                        wait(0.5)
                                        topos(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09, 0.481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08, 0.876514494))
                                    end
                                end
                            end
                        end
                    else
                        if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    if v.Name == "Saber Expert" then
                                        repeat task.wait()
                                            EquipWeapon(_G.SelectWeapon)
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            FarmPos = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
                                        until v.Humanoid.Health <= 0 or not AutoSaber
                                        if v.Humanoid.Health <= 0 then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic")
                                        end
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)
         
     PoleStatus = Items:Label("Check Boss Pole")
      
    task.spawn(function()
     while wait() do
       pcall(function()
      if game.ReplicatedStorage:FindFirstChild("Thunder God") or game.Workspace.Enemies:FindFirstChild("Thunder God") then
         PoleStatus:Set("Pole Boss Spawning ✅")
          else
         PoleStatus:Set("Not Have Pole Boss ❌")
        end
       end)
      end
    end)
    
      Items:Toggle("Auto Get Sword Pole", false,function(Values)      
          _G.Autopole = Values
          StopTween(_G.Autopole)
       end)
       
       spawn(function()
        while wait() do
            if _G.Autopole then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Thunder God" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        StartBring = true
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.Autopole or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God") then
                            TP1(game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)                            
    
    Items:Toggle("Auto Get Sword Saw", false,function(Values)      
          _G.Autosaw = Values
          StopTween(_G.Autosaw)
       end)
       
     local SharkPos = CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094)
       spawn(function()
        while wait() do
            if  _G.Autosaw then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("The Saw") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "The Saw" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait(_G.FastAttackDelay)
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                       topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        AttackNoCD()
                                    until not  _G.Autosaw or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - SharkPos.Position).Magnitude > 1500 then
			        BTP(SharkPos)
				    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - SharkPos.Position).Magnitude < 1500 then
				    topos(SharkPos)
					end
				else
				    topos(SharkPos)
				end
				    EquipWeapon(_G.SelectWeapon)
                    topos(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("The Saw") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("The Saw").HumanoidRootPart.CFrame * CFrame.new(2,40,2))
                       
                        end
                    end
                end)
            end
        end
    end)
        
      Items:Toggle("Auto Get Sword Wardens", false,function(Values)      
          _G.ChiefWarden = Values
          StopTween(_G.ChiefWarden)          
       end)
         spawn(function()
           while wait() do
             if _G.ChiefWarden then
                 pcall(function()
                     if game:GetService("Workspace").Enemies:FindFirstChild("Chief Warden") then
                          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                              if v.Name == "Chief Warden" then
                                 if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        StartBring = true
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.ChiefWarden or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Chief Warden") then
                            TP1(game:GetService("ReplicatedStorage"):FindFirstChild("Chief Warden").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                          end
                       end
                    end)
                end
             end
         end)                         
             
      Items:Toggle("Auto Get Sword Trident", false,function(Values)  
          _G.Trident = Values
          StopTween(_G.Trident)          
       end)
         spawn(function()
           while wait() do
             if _G.Trident then
                 pcall(function()
                     if game:GetService("Workspace").Enemies:FindFirstChild("Fishman Lord") then
                          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                              if v.Name == "Fishman Lord" then
                                 if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        StartBring = true
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.Trident or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Fishman Lord") then
                            TP1(game:GetService("ReplicatedStorage"):FindFirstChild("Fishman Lord").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                          end
                       end
                    end)
                end
             end
         end)                         
    
   end

        if World2 then
        Items:Toggle("Auto Get Longsword", false,function(Values)      
          _G.Longsword = Values
          StopTween(_G.Longsword)          
       end)
         spawn(function()
           while wait() do
             if _G.Longsword then
                 pcall(function()
                     if game:GetService("Workspace").Enemies:FindFirstChild("Diamond") then
                          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                              if v.Name == "Diamond" then
                                 if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        StartBring = true
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.Longsword or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Diamond") then
                            TP1(game:GetService("ReplicatedStorage"):FindFirstChild("Diamond").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                          end
                       end
                    end)
                end
             end
         end)                         
    
         Items:Toggle("Auto Get Sword Gravity Blade", false,function(Values)      
          _G.GravityBlade = Values
          StopTween(_G.GravityBlade)          
       end)
         spawn(function()
           while wait() do
             if _G.GravityBlade then
                 pcall(function()
                     if game:GetService("Workspace").Enemies:FindFirstChild("Fajita") then
                          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                              if v.Name == "Fajita" then
                                 if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        StartBring = true
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.GravityBlade or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Fajita") then
                            TP1(game:GetService("ReplicatedStorage"):FindFirstChild("Fajita").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                          end
                       end
                    end)
                end
             end
         end)                         
    
     Items:Toggle("Auto Get Sword Flail", false,function(Values)      
          _G.SwodsFlail = Values
          StopTween(_G.SwodsFlail)          
       end)
         spawn(function()
           while wait() do
             if _G.SwodsFlail then
                 pcall(function()
                     if game:GetService("Workspace").Enemies:FindFirstChild("Smoke Admiral") then
                          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                              if v.Name == "Smoke Admiral" then
                                 if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        StartBring = true
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.SwodsFlail or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Smoke Admiral") then
                            TP1(game:GetService("ReplicatedStorage"):FindFirstChild("Smoke Admiral").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                          end
                       end
                    end)
                end
             end
         end)                         
    
      Items:Toggle("Auto Get Sword Rengoku", false,function(Values)      
          _G.AutoRengoku = Values
          StopTween(_G.AutoRengoku)          
       end)
      
      spawn(function()
         pcall(function()
        while wait() do
            if _G.AutoRengoku then
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") 
                or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
                    EquipWeapon("Hidden Key")
                    topos(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
                elseif game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Awakened Ice Admiral" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") 
                            and v.Humanoid.Health > 0 then
                                repeat 
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    AutoHaki()
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    PosMon = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                    AttackNoCD()
                                    StartBring = true
                                until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") 
                                or _G.AutoRengoku == false 
                                or not v.Parent 
                                or v.Humanoid.Health <= 0
                                StartBring = false
                            end
                        end
                    end
                else
                    StartBring = false
                    topos(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
                end
            end
        end
    end)
end)

   
    
    Items:Toggle("Auto Get Sword Dragon Trident", false,function(Values)      
          _G.SwodsDRTrident = Values
          StopTween(_G.SwodsDRTrident)          
       end)
         spawn(function()
           while wait() do
             if _G.SwodsDRTrident then
                 pcall(function()
                     if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper") then
                          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                              if v.Name == "Tide Keeper" then
                                 if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        StartBring = true
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.SwodsDRTrident or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper") then
                            TP1(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                          end
                       end
                    end)
                end
             end
         end)           
    
   end

       if World3 then
      Items:Toggle("Auto Get Sword Twin Hooks", false,function(Values)      
          _G.SwodTwinHooks = Values
          StopTween(_G.SwodTwinHooks)          
       end)
         spawn(function()
           while wait() do
             if _G.SwodTwinHooks then
                 pcall(function()
                     if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                              if v.Name == "Captain Elephant" then
                                 if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        StartBring = true
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.SwodTwinHooks or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant") then
                            TP1(game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                          end
                       end
                    end)
                end
             end
         end)                         
    
    
       Items:Toggle("Auto Get Sword Canvander", false,function(Values)      
          _G.SwodCanvander = Values
          StopTween(_G.SwodCanvander)          
       end)
         spawn(function()
           while wait() do
             if _G.SwodCanvander then
                 pcall(function()
                     if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
                          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                              if v.Name == "Beautiful Pirate" then
                                 if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        StartBring = true
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.SwodCanvander or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate") then
                            TP1(game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                          end
                       end
                    end)
                end
             end
         end)       
         
       Items:Toggle("Auto Get Sword Buddy", false,function(Values)      
          _G.SwodsBuddy = Values
          StopTween(_G.SwodsBuddy)          
       end)
         spawn(function()
           while wait() do
             if _G.SwodsBuddy then
                 pcall(function()
                     if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
                          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                              if v.Name == "Cake Queen" then
                                 if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        StartBring = true
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.SwodsBuddy or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen") then
                            TP1(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                          end
                       end
                    end)
                end
             end
         end)                             
                                                 
 end      

       Dragon:Button("Tween Dragon Dojo", function()
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5661.5322265625, 1013.0907592773438, - 334.9649963378906));
        TP1(CFrame.new(5841.298828125, 1208.32177734375, 884.3173217773438))
    end)

local CheckDojo = Dragon:Label("Check Quest Dragon")

spawn(function()
    pcall(function()
        while wait() do
            local Check = {
                [1] = {
                    Context = "Check"
                }
            };
            local Pl = game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/DragonHunter"):InvokeServer(unpack(Check));
            if (typeof(Pl) == "table") then
                for c, Tr in pairs(Pl) do
                    if (Tr == "Defeat 3 Venomous Assailants on Hydra Island.") then
                    CheckDojo:Set("Defeat 3 Venomous Assailants on Hydra Island.");
                    elseif (Tr == "Defeat 3 Venomous Assailants on Hydra Island.") then
                     CheckDojo:Set("Defeat 3 Venomous Assailants on Hydra Island.");
                    elseif (Tr == "Destroy 10 trees on Hydra Island.") then
                     CheckDojo:Set("Destroy 10 trees on Hydra Island.");
                    end
                end
            else
            end
        end
    end);
end);

   _G.SelectQuestDragon = "Venomous Assailant"
  Dragon:Dropdown("Select Mob Quest",{"Venomous Assailant","Hydra Enforcer"},{"Venomous Assailant"},function(v)
    _G.SelectQuestDragon = v
     end)

   Dragon:Toggle("Auto Farm Mob Quest", false,function(Values)      
          _G.AutoMobDragon = Values
          _G.AutoBlazeEmber = Values
          StopTween(_G.AutoMobDragon)          
       end)
       
       spawn(function()
        while wait() do
            if _G.AutoMobDragon then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectQuestDragon) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == _G.SelectQuestDragon then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        StartBring = true
                                        PosMon = v.HumanoidRootPart.CFrame
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    until not _G.AutoMobDragon or not v.Parent or v.Humanoid.Health <= 0
                                    StartBring = false
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectQuestDragon) then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectQuestDragon).HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    spawn(function()
    while wait() do
        if _G.AutoBlazeEmber then
            pcall(function()
                game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/DragonDojoEmber"):FireServer();
            end);
        end
    end
end);

   Dragon:Toggle("Auto tree destroyer", false,function(Values)      
   _G.AutoHydraTree = Values
   _G.AutoBlazeEmber = Values
   StopTween(_G.AutoHydraTree)   
  end)
  
  local TweenService = game:GetService("TweenService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local humanoid = char:FindFirstChildOfClass("Humanoid")

local Positions = {
    CFrame.new(5255.1049, 1004.1949, 344.7700),
    CFrame.new(5340.3584, 1004.1949, 362.6387),
    CFrame.new(5323.6436, 1004.1949, 440.7161),
    CFrame.new(5244.3618, 1004.1949, 422.4569)
}

local function pressKey(key)
    VirtualInputManager:SendKeyEvent(true, key, false, game)
    wait(0.1)
    VirtualInputManager:SendKeyEvent(false, key, false, game)
end

local function useWeapon(weapon)
    if humanoid then
        local tool = player.Backpack:FindFirstChild(weapon)
        if tool then
            humanoid:EquipTool(tool)
            wait(0.2)
            pressKey("E")
        end
    end
end

local function useSkills()
    pressKey("Z")
    wait(0.5)
    pressKey("X")
    wait(0.5)
    pressKey("C")
end

local function TweenToPosition(targetCFrame, duration)
    local character = player.Character or player.CharacterAdded:Wait()
    if character and character:FindFirstChild("HumanoidRootPart") then
        local hrp = character.HumanoidRootPart
        local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
        local goal = {CFrame = targetCFrame}
        local tween = TweenService:Create(hrp, tweenInfo, goal)
        tween:Play()
        tween.Completed:Wait()
    end
end

spawn(function()
    while wait() do
        if _G.AutoHydraTree then
            AutoHaki()
            for _, pos in ipairs(Positions) do
                if not _G.AutoHydraTree then break end
                TweenToPosition(pos, 2)

                local character = player.Character
                if character and character:FindFirstChild("HumanoidRootPart") then
                    local distance = (character.HumanoidRootPart.Position - pos.Position).Magnitude
                    if distance <= 1 then
                        _G.AutoSkill = true
                        wait(3)
                        _G.AutoSkill = false
                    end
                end
            end
        end
    end
end)

spawn(function()
    while wait(1) do
        if _G.AutoSkill then
            useWeapon("Melee")
            useWeapon("Sword")
            useWeapon("Gun")
            useSkills()
        end
    end
end)



   Dragon:Button("Craft Volcanic Magnet",function()
    local args = {
      [1] = "CraftItem",
      [2] = "Craft",
      [3] = "Volcanic Magnet"
    }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

 VolcanoSP = Volcano:Label("Check Prehistoric island")
  
  spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland") then
                VolcanoSP:Set("Prehistoric island: Spawning ✅")
            else
                VolcanoSP:Set("Prehistoric island: Not Spawning ❌")
               end
            end)
          end
       end)
       
function GetLocalBoat()
    for i, v in next, game:GetService("Workspace").Boats:GetChildren() do
        if v:IsA("Model") then
            if v:FindFirstChild("Owner") and tostring(v.Owner.Value) == game:GetService("Players").LocalPlayer.Name and v.Humanoid.Value > 0 then
                return v
            end
        end
    end
    return false
end

    Volcano:Button("Remove Lava Prehistoric",function()
        for i,v in pairs(game.Workspace:GetDescendants()) do
			if v.Name == "Lava" then   
				v:Destroy()
			end
		end
		for i,v in pairs(game.ReplicatedStorage:GetDescendants()) do
			if v.Name == "Lava" then   
				v:Destroy()
			end
		end
	end)
 
  Volcano:Toggle("Auto Find Prehistoric", false, function(value)
    _G.AutoFindPrehistoric = value
    _G.Nocliprock = value
  end)
  
  local seatHistory = {}
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local Workspace = game:GetService("Workspace")
local SetSpeedBoat = 350  

RunService.RenderStepped:Connect(function()
    for boatName, seat in pairs(seatHistory) do
        if seat and seat.Parent and seat.Name == "VehicleSeat" and not seat.Occupant then
            seatHistory[boatName] = seat
        end
    end
end)

local function tpToMyBoat()
    for boatName, seat in pairs(seatHistory) do
        if seat and seat.Parent and seat.Name == "VehicleSeat" and not seat.Occupant then
            topos(seat.CFrame)
        end
    end
end

local isTeleporting = false
local notified = false
RunService.RenderStepped:Connect(function()
    if not _G.AutoFindPrehistoric then
        notified = false
        return
    end
    local player = Players.LocalPlayer
    local character = player.Character
    if not character or not character:FindFirstChild("Humanoid") then return end
    
    local function tpToMyBoat()
        if isTeleporting then return end
        isTeleporting = true
        for boatName, seat in pairs(seatHistory) do
            if seat and seat.Parent and seat.Name == "VehicleSeat" and not seat.Occupant then
                topos(seat.CFrame)
                break
            end
        end
        isTeleporting = false
    end
    
    local humanoid = character.Humanoid
    local boatFound = false
    local currentBoat = nil
    
    for _, b in pairs(Workspace.Boats:GetChildren()) do
        local seat = b:FindFirstChild("VehicleSeat")
        if seat and seat.Occupant == humanoid then
            boatFound = true
            currentBoat = seat
            seatHistory[b.Name] = seat
        elseif seat and seat.Occupant == nil then
            tpToMyBoat()
        end
    end

    if not boatFound then return end
    
    currentBoat.MaxSpeed = SetSpeedBoat
    currentBoat.CFrame = CFrame.new(Vector3.new(currentBoat.Position.X, currentBoat.Position.Y, currentBoat.Position.Z)) * currentBoat.CFrame.Rotation
    VirtualInputManager:SendKeyEvent(true, "W", false, game)

    for _, v in pairs(Workspace.Boats:GetDescendants()) do
        if v:IsA("BasePart") then v.CanCollide = false end
    end
    for _, v in pairs(character:GetDescendants()) do
        if v:IsA("BasePart") then v.CanCollide = false end
    end

    local islandsToDelete = { 
        "ShipwreckIsland", 
        "SandIsland", 
        "TreeIsland",
        "TinyIsland", 
        "MysticIsland", 
        "KitsuneIsland", 
        "FrozenDimension" 
    }
    for _, islandName in ipairs(islandsToDelete) do
        local island = Workspace.Map:FindFirstChild(islandName)
        if island and island:IsA("Model") then
            island:Destroy()
        end
    end

    local prehistoricIsland = Workspace.Map:FindFirstChild("PrehistoricIsland")
    if prehistoricIsland then
        VirtualInputManager:SendKeyEvent(false, "W", false, game)
        
        _G.AutoFindPrehistoric = false

        if not notified then
            notified = true
        end
        return
    end
end)

      Volcano:Toggle("Auto Find Zone Prehistoric", false, function(value)
          _G.Nocliprock = value
         _G.findVolcanicMagnet = value
           if _G.findVolcanicMagnet then
           StartBoatMovement()
         else
          StopBoatMovement()
       end
  end)

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local boatMovementConnection

function GetPlayerBoat()
    local character = Players.LocalPlayer.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        local seat = character.Humanoid.SeatPart
        if seat and seat:IsA("VehicleSeat") then
            return seat.Parent
        end
    end
    return nil
end

function MoveBoat(direction, distance, speed)
    local boat = GetPlayerBoat()
    if boat and boat.PrimaryPart then
        local boatPrimaryPart = boat.PrimaryPart
        local targetPosition = boatPrimaryPart.Position + (direction * distance)
        targetPosition = Vector3.new(targetPosition.X, targetPosition.Y + 200, targetPosition.Z)
        local distanceToTarget = (boatPrimaryPart.Position - targetPosition).Magnitude
        local tweenInfo = TweenInfo.new(distanceToTarget / speed, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        local targetCFrame = CFrame.new(targetPosition)

        local tween = TweenService:Create(boatPrimaryPart, tweenInfo, {CFrame = targetCFrame})
        tween:Play()
    end
end

function StartBoatMovement()
    if not _G.findVolcanicMagnet then return end
    boatMovementConnection = RunService.Heartbeat:Connect(function()
        local direction = Vector3.new(0, 0, 1000)
        local distance = 500
        local speed = 186
        MoveBoat(direction, distance, speed)
    end)
end

function StopBoatMovement()
    if boatMovementConnection then
        boatMovementConnection:Disconnect()
        boatMovementConnection = nil
    end
end
spawn(function()
    while wait() do
        if _G.Nocliprock then
            if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                for _, v in pairs(game.Workspace.Boats:GetDescendants()) do
                    if v:IsA("BasePart") and v.CanCollide == true then
                        v.CanCollide = false
                    end
                end
                for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") and v.CanCollide == true then
                        v.CanCollide = false
                    end
                end
            elseif game.Players.LocalPlayer.Character.Humanoid.Sit == false then
                for _, v in pairs(game.Workspace.Boats:GetDescendants()) do
                    if v:IsA("BasePart") and v.CanCollide == false then
                        v.CanCollide = true
                    end
                end
                for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") and v.CanCollide == false then
                        v.CanCollide = true
                    end
                end
            end
        end
    end
end)


  Volcano:Toggle("Auto Tween To Prehistoric", false, function(value)
   _G.TweenVolcano = value
   end)
   
   spawn(function()
    local island
    while not island do
        island = game:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland")
        wait()
    end
    while wait() do
        if _G.TweenVolcano then
            local prehistoricIslandCore = game:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland")
            if prehistoricIslandCore then
                local relic = prehistoricIslandCore:FindFirstChild("Core") and prehistoricIslandCore.Core:FindFirstChild("PrehistoricRelic")
                local skull = relic and relic:FindFirstChild("Skull")
                if skull then
                    TP1(CFrame.new(skull.Position))
                    _G.TweenVolcano = false
                end
            end
        end
    end
end)

  Volcano:Toggle("Auto Defend Prehistoric", false, function(value)
    _G.DefendVolcano = value
  end)
  
   local function sendKeyEvent(key)
	game:GetService("VirtualInputManager"):SendKeyEvent(true, key, false, game);
	game:GetService("VirtualInputManager"):SendKeyEvent(false, key, false, game);
end
local function removeLava()
	local interiorLava = game.Workspace.Map.PrehistoricIsland.Core:FindFirstChild("InteriorLava");
	if (interiorLava and interiorLava:IsA("Model")) then
		interiorLava:Destroy();
	end
	local prehistoricIsland = game.Workspace.Map:FindFirstChild("PrehistoricIsland");
	if prehistoricIsland then
		for _, part in pairs(prehistoricIsland:GetDescendants()) do
			if (part:IsA("Part") and part.Name:lower():find("lava")) then
				part:Destroy();
			end
		end
	end
	if prehistoricIsland then
		for _, model in pairs(prehistoricIsland:GetDescendants()) do
			if model:IsA("Model") then
				for _, mesh in pairs(model:GetDescendants()) do
					if (mesh:IsA("MeshPart") and mesh.Name:lower():find("lava")) then
						mesh:Destroy();
					end
				end
			end
		end
	end
end
local function findVolcanoRock()
	local volcanoRocks = game.Workspace.Map.PrehistoricIsland.Core.VolcanoRocks;
	for _, rockModel in pairs(volcanoRocks:GetChildren()) do
		if rockModel:IsA("Model") then
			local rock = rockModel:FindFirstChild("volcanorock");
			if (rock and rock:IsA("MeshPart")) then
				local rockColor = rock.Color;
				if ((rockColor == Color3.fromRGB(185, 53, 56)) or (rockColor == Color3.fromRGB(185, 53, 57))) then
					return rock;
				end
			end
		end
	end
	return nil;
end
local function useWeapon(weaponType)
	local player = game.Players.LocalPlayer;
	local backpack = player.Backpack;
	for _, tool in pairs(backpack:GetChildren()) do
		if (tool:IsA("Tool") and (tool.ToolTip == weaponType)) then
			tool.Parent = player.Character;
			for _, key in ipairs({"Z", "X", "C", "V", "F"}) do
				wait();
				pcall(function()
					sendKeyEvent(key);
				end);
			end
			tool.Parent = backpack;
			break;
		end
	end
end
spawn(function()
	while wait() do
		if _G.DefendVolcano then
			AutoHaki();
			pcall(removeLava);
			local volcanoRock = findVolcanoRock();
			if volcanoRock then
				local targetPosition = CFrame.new(volcanoRock.Position)
				TP1(targetPosition);
				local rockColor = volcanoRock.Color;
				if ((rockColor ~= Color3.fromRGB(185, 53, 56)) and (rockColor ~= Color3.fromRGB(185, 53, 57))) then
					volcanoRock = findVolcanoRock();
				else
					local playerPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
					local distance = (playerPosition - volcanoRock.Position).Magnitude;
					if (distance <= 1) then
						if _G.UseMelee then
							useWeapon("Melee");
						end
						if _G.UseSword then
							useWeapon("Sword");
						end
						if _G.UseGun then
							useWeapon("Gun");
						end
					end
					_G.TpPrehistoric = false;
				end
			else
				_G.TpPrehistoric = true;
			end
		end
	end
end);

  Volcano:Toggle("Auto Skill Melee", false, function(value)
      _G.UseMelee = value
  end)
  
  Volcano:Toggle("Auto Skill Sword", false, function(value)
      _G.UseSword = value
  end)
  
  Volcano:Toggle("Auto Skill Gun", false, function(value)
      _G.UseGun = value
  end)

  Volcano:Toggle("Auto Kill Golem", false, function(value)
      _G.KillGolem = value
     StopTween(_G.KillGolem)
  end)

spawn(function()
    while wait() do
        if _G.KillGolem and World3 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Lava Golem") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Lava Golem" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                until not  _G.KillGolem or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                 UnEquipWeapon(_G.SelectWeapon)
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Lava Golem") then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Lava Golem").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                    end
                end
            end)
        end
    end
end)

Volcano:Toggle("Auto Kill Aura Golem", false, function(value)
      _G.Kill_Aura = value
  end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.Kill_Aura then
                local player = game:GetService("Players").LocalPlayer
                local enemies = game:GetService("Workspace").Enemies:GetChildren()
                local playerPos = player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player.Character.HumanoidRootPart.Position
                if playerPos then
                    for _, enemy in pairs(enemies) do
                        if enemy:FindFirstChild("Humanoid") and enemy:FindFirstChild("HumanoidRootPart") and enemy.Humanoid.Health > 0 then
                            local distance = (enemy.HumanoidRootPart.Position - playerPos).Magnitude
                            if distance <= 1000 then
                                pcall(function()
                                    repeat wait()
                                        sethiddenproperty(player, "SimulationRadius", math.huge)
                                        enemy.Humanoid.Health = 0
                                        enemy.HumanoidRootPart.CanCollide = false
                                    until not _G.Kill_Aura or not enemy.Parent or enemy.Humanoid.Health <= 0
                                end)
                            end
                        end
                    end
                end
            end
        end
    end)
end)
  Volcano:Toggle("Collect Bone", false, function(Value)
      _G.AutoCollectBone = Value    
     StopTween(_G.AutoCollectBone)
 end)

spawn(function()
    while wait() do
        if _G.AutoCollectBone then
            for _, obj in pairs(workspace:GetDescendants()) do
                if obj:IsA("BasePart") and obj.Name == "DinoBone" then
                    topos(CFrame.new(obj.Position))
                end
            end
        end
    end
end)
Volcano:Toggle("Collect Egg", false, function(Value)
    _G.CollectEgg = Value    
    StopTween(_G.CollectEgg)
end)
spawn(function()
    while wait() do
        if _G.CollectEgg then
            pcall(function()
                game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/CollectedDragonEgg"):FireServer()
            end)
        end
    end
end)

    Events:Button("Remove Fog",function()
    game:GetService("Lighting").BaseAtmosphere:Destroy()
    end)

      Events:Seperator("Kitsune Islands")
   
  Kitsune = Events:Label("Check Kitsune island")
   
   spawn(function()
        pcall(function()
            while wait() do
         if game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland") then
      Kitsune:Set('Kitsune Island Spawning ✅')
        else
      Kitsune:Set('Kitsune Island Not Spawning ❌' )
            end
            end
         end)
     end)
     
     Events:Toggle("Esp Kitsune Island", false, function(value)
        KitsuneIslandEsp = value
        while KitsuneIslandEsp do wait()
            UpdateIslandKisuneESP()   
        end
    end)
    
    spawn(function()
	    while wait(2) do
		    if KitsuneIslandEsp then
			    UpdateIslandKisuneESP()  
		    end
	    end
    end)
     
    Events:Toggle("Tween Kitsune Island", false, function(value)
    _G.TweenToKitsune = value
   end)
   
   spawn(function()
        local kitsuneIsland
        while not kitsuneIsland do
            kitsuneIsland = game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland")
            wait(1)
        end
        while wait() do
            if _G.TweenToKitsune then
                local shrineActive = kitsuneIsland:FindFirstChild("ShrineActive")
                if shrineActive then
                    for _, v in pairs(shrineActive:GetDescendants()) do
                        if v:IsA("BasePart") and v.Name:find("NeonShrinePart") then
                            Tween(v.CFrame)
                        end
                    end
                end
            end
        end
    end)
        
	spawn(function()
        pcall(function()
            while wait() do
                if _G.TweenToKitsune then
                    topos(game.Workspace.Map.KitsuneIsland.ShrineActive.NeonShrinePart.CFrame * CFrame.new(0,0,10))
                end
            end
        end)
    end)
    
     Events:Toggle("Auto Azuer Ember", false, function(value)
    _G.AutoAzuerEmber = value
   end)
   
   spawn(function()
            while wait() do
                if _G.AutoAzuerEmber then
                    pcall(function()
                        if game:GetService("Workspace"):FindFirstChild("AttachedAzureEmber") then
                            TP1(game.Workspace.EmberTemplate.Part.CFrame)
                        end
                    end)
                end
            end
        end)
        
    Events:Seperator("Sea")
    
    Events:Toggle("Auto Drive Boats", false, function(value)
    _G.SailBoat = value
    _G.Nocliprock = value
    StopTween(_G.SailBoat)
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.SailBoat then
                if not game:GetService("Workspace").Enemies:FindFirstChild("Shark") or not game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or not game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or not game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") then
                    if not game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
                        buyb = TPP(CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781))
                        if (CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                            if buyb then buyb:Stop() end
                            local args = {
                                [1] = "BuyBoat",
                                [2] = "PirateBrigade"
                            }

                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
                    elseif game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
                        if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false then
                            TPP(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame * CFrame.new(0,1,0))
                        else
                            for i,v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                                if v.Name == "PirateBrigade" then
                                    repeat wait()
                                        if (CFrame.new(-17013.80078125, 10.962434768676758, 438.0169982910156).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                                            TPB(CFrame.new(-37813.6953, -0.3221744, 6105.16895, -0.252362996, 4.13621581e-09, 0.967632651, 2.87320709e-08, 1, 3.21888249e-09, -0.967632651, 2.86144175e-08, -0.252362996))
                                        elseif (CFrame.new(-37813.6953, -0.3221744, 6105.16895, -0.252362996, 4.13621581e-09, 0.967632651, 2.87320709e-08, 1, 3.21888249e-09, -0.967632651, 2.86144175e-08, -0.252362996).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                                            TPB(CFrame.new(-42250.2227, -0.3221744, 9247.07715, -0.45916447, 6.39043236e-08, 0.888351262, -3.36711423e-08, 1, -8.93395651e-08, -0.888351262, -7.09333605e-08, -0.45916447))
                                        elseif (CFrame.new(-42250.2227, -0.3221744, 9247.07715, -0.45916447, 6.39043236e-08, 0.888351262, -3.36711423e-08, 1, -8.93395651e-08, -0.888351262, -7.09333605e-08, -0.45916447).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                                            TPB(CFrame.new(-37813.6953, -0.3221744, 6105.16895, -0.252362996, 4.13621581e-09, 0.967632651, 2.87320709e-08, 1, 3.21888249e-09, -0.967632651, 2.86144175e-08, -0.252362996))
                                        end 
                                    until game:GetService("Workspace").Enemies:FindFirstChild("Shark") or game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") or _G.SailBoat == false
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.SailBoat then
                if game:GetService("Workspace").Enemies:FindFirstChild("Shark") or game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") then
                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                end
            end
        end
    end)
end)
    
    Events:Toggle("Auto Kill Terror Shank",false, function(state)
        _G.Autoterrorshark = state
        getgenv().SafeMode = state
        StopTween(_G.Autoterrorshark)
    end)
spawn(function()
        while wait() do 
            if _G.Autoterrorshark and World3 then
                pcall(function()                    
                    if game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") or game:GetService("Workspace").Enemies:FindFirstChild("Shark") or game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") or game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") or game:GetService("Workspace").Enemies:FindFirstChild("PirateBasic") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Terrorshark" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(5,40,10))
                                        MonFarm = v.Name                
                                        PosMon = v.HumanoidRootPart.CFrame
                                        game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                        if game:GetService("Workspace")["_WorldOrigin"]:FindFirstChild("Typhoon Splash") then
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 300, 0)); 
                                        else
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 60, 0));
                                        end
                                    until not _G.Autoterrorshark or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else 
                      topos(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame * CFrame.new(0, -1, 0))		                       
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do                                 
                            if v.Name == "Terrorshark" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                           else   
                           game:GetService("Workspace").Boats.VehicleSeat.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                            end
                        end
                    end
                end)
            end
        end
    end)    
    
    spawn(function()
while wait() do 
    if _G.dao then
         pcall(function()
    if not game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then 
		             game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBoat","PirateBrigade")
		          end
        end)
    end
    end
end)
               
    spawn(function()
	while wait() do 
		if _G.dao then		
				if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
		TPB(CFrame.new(-25351.8418, 10.7575607, 26430.791, -0.998379767, -0.00721008703, -0.0564435199, -0.00722159958, 0.999973953, -1.53919405e-10, 0.0564420484, 0.000407612359, -0.998405814))		
		  end
		end
	end
end)   
     
 spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if getgenv().SafeMode then
                local Player = game.Players.LocalPlayer
                local Character = Player.Character
                if Character and Character:FindFirstChild("Humanoid") and Character:FindFirstChild("HumanoidRootPart") then
                    local Humanoid = Character.Humanoid
                    local Root = Character.HumanoidRootPart

                    if Humanoid.Health < 5500 then
                        while getgenv().SafeMode and Humanoid.Health < 5500 do
                            task.wait(0.1)
                            Root.CFrame = Root.CFrame + Vector3.new(0, 200, 0)
                        end
                    end
                end
            end
        end)
    end
end)
             
                                
 spawn(function()
	while wait() do
		if _G.Nocliprock then
			if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
				for _, v in pairs(game.Workspace.Boats:GetDescendants()) do
					if v:IsA("BasePart") and v.CanCollide == true then
						v.CanCollide = false
					end
				end
				for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
					if v:IsA("BasePart") and v.CanCollide == true then
						v.CanCollide = false
					end
				end
			elseif game.Players.LocalPlayer.Character.Humanoid.Sit == false then
				for _, v in pairs(game.Workspace.Boats:GetDescendants()) do
					if v:IsA("BasePart") and v.CanCollide == false then
						v.CanCollide = true
					end
				end
				for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
					if v:IsA("BasePart") and v.CanCollide == false then
						v.CanCollide = true
					end
				end
			end
		end
	end
end)
             
    Events:Toggle("Auto Kill Shark",false, function(state)
        _G.KillShark = state
        StopTween(_G.KillShark)
    end)
    
    spawn(function()
        while wait() do 
            if _G.KillShark and World3 and _G.SailBoat then
                pcall(function()                    
                    if game:GetService("Workspace").Enemies:FindFirstChild("Shark") or game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") or game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") or game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") or game:GetService("Workspace").Enemies:FindFirstChild("PirateBasic") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Shark" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(5,40,10))
                                        MonFarm = v.Name                
                                        PosMon = v.HumanoidRootPart.CFrame
            game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                    until not _G.KillShark or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else        
                      topos(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame * CFrame.new(0, -1, 0))		                
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                        if not v.Name == "Shark" then
                                game:GetService("Workspace").Boats.VehicleSeat.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                            elseif v.Name == "Shark" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))                                   
                            end
                        end
                    end
                end)
            end
        end
    end)    
    
    Events:Toggle("Auto Kill Piranha",false, function(state)
        _G.KillPiranha = state
        StopTween(_G.KillPiranha)
    end)
    
    spawn(function()
        while wait() do 
            if _G.KillPiranha and World3 then
                pcall(function()                    
                    if game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or game:GetService("Workspace").Enemies:FindFirstChild("Shark") or game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") or game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") or game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") or game:GetService("Workspace").Enemies:FindFirstChild("PirateBasic") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Piranha" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(5,40,10))
                                        MonFarm = v.Name                
                                        PosMon = v.HumanoidRootPart.CFrame
                                         game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                    until not _G.KillPiranha or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                      topos(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame * CFrame.new(0, -1, 0))		                        
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                        if not v.Name == "Piranha" then
                                game:GetService("Workspace").Boats.VehicleSeat.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                            elseif v.Name == "Piranha" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))   
                            end
                        end
                    end
                end)
            end
        end
    end)    
    
    Events:Toggle("Auto Auto Kill Fish Crew Member",false, function(state)
        _G.KillFishCrew = state
        StopTween(_G.KillFishCrew)
    end)
        
      spawn(function()
        while wait() do 
            if _G.KillFishCrew and World3 then
                pcall(function()                    
                    if game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") or game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or game:GetService("Workspace").Enemies:FindFirstChild("Shark") or game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") or game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") or game:GetService("Workspace").Enemies:FindFirstChild("PirateBasic") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Fish Crew Member" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(5,40,10))
                                        MonFarm = v.Name                
                                        PosMon = v.HumanoidRootPart.CFrame
                                        game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                    until not _G.KillFishCrew or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                      topos(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame * CFrame.new(0, -1, 0))		
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                        if not v.Name == "Fish Crew Member" then
                                game:GetService("Workspace").Boats.VehicleSeat.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                            end
                        end
                    end
                end)
            end
        end
    end)  
    
         Events:Seperator("Mirage island")
         
        Mirragecheck = Events:Label("Check Mirage Island")
            spawn(function()
        pcall(function()
            while wait() do
                if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
                    Mirragecheck:Set('Mirage Island is Spawning ✅')
                else
                    Mirragecheck:Set('Mirage Island Not Spawn ❌') 
                 end
            end
        end)
    end)           
    
      Events:Toggle("Esp Mirage Island", false, function(value)
        MirageIslandESP = value
        while MirageIslandESP do wait()
            UpdateIslandMirageESP() 
        end
    end)
    
    spawn(function()
	    while wait(2) do
		    if MirageIslandESP then
			    UpdateIslandMirageESP() 
		    end
	    end
    end)                                              
    
    Events:Toggle("Tween mirage island ",false, function(Value)
        _G.AutoMysticIsland = Value
        end)
    spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if _G.AutoMysticIsland then
                for _, cac_329 in pairs(game:GetService("Workspace")._WorldOrigin.Locations:GetChildren()) do
                    if cac_329.Name == "Mirage Island" then
                        topos(cac_329.CFrame * CFrame.new(0, 333, 0))
                    end
                end
            end
        end)
    end
end)
      Events:Toggle("Look Moon + Auto V3",false, function(Value)
        _G.AutoDooHee = Value
        end)
  local virtualInputManager = game:GetService("VirtualInputManager")
   spawn(function()
    while wait() do
        pcall(function()
            if getgenv()._G.AutoDooHee then
                local moonDir = game.Lighting:GetMoonDirection()
                local lookAtPos = game.Workspace.CurrentCamera.CFrame.p + moonDir * 100
                game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, lookAtPos)
                wait(2)
                virtualInputManager:SendKeyEvent(true, "T", false, game)
                wait(0.1)
                virtualInputManager:SendKeyEvent(false, "T", false, game)
            end
        end)
    end
end)
    
    Events:Toggle("Tween Gear",false, function(state)
        _G.TweenMGear = state
        StopTween(_G.TweenMGear)
    end)
    spawn(function()
    pcall(function()
        while wait() do
            if _G.TweenMGear then
				if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
					for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do 
						if v:IsA("MeshPart")then 
                            if v.Material ==  Enum.Material.Neon then  
                                topos(v.CFrame)
                            end
                        end
					end
				end
			end
        end
    end)
    end)                   
    
    Events:Button("Tween Advanced Fruit Dealer",function()
    TweenNpc()
    end)
    
     function TweenNpc()
       repeat
       wait()
      until game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
      if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
      AllNPCS = getnilinstances()
      for r, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
      table.insert(AllNPCS, v)
      end
      for r, v in pairs(AllNPCS) do
      if v.Name == "Advanced Fruit Dealer" then
       topos(v.HumanoidRootPart.CFrame)
      end
    end
  end
end 

  local Pulllevel = Trailers:Label("Check Temple Door")
  
   task.spawn(function()
    while wait() do
        pcall(function()
            if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CheckTempleDoor") then
                Pulllevel:Set("Pull Level: Done ✅")
            else
                Pulllevel:Set("Pull Level: Done ❌")
               end
            end)
          end
       end)


     FM = Trailers:Label("Full Moon")
    
        task.spawn(function()
            while task.wait() do
                pcall(function()
                    if game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
                        FM:Set("Full Moon: 100")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" then
                        FM:Set("Full Moon: 75")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709143733" then
                        FM:Set("Full Moon: 50")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150401" then
                        FM:Set("Full Moon: 25")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149680" then
                        FM:Set("Full Moon: 15")
                    else
                        FM:Set("Full Moon: 0")
                    end
                end)
            end
    end)
    
    Trailers:Button("Teleport To Top GreatTree",function()
    topos(CFrame.new(3030.39453125, 2280.6171875, -7320.18359375))
    end)
    
    Trailers:Button("Teleport Temple Of Time",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
    end)
      
    Trailers:Button("Teleport Lever Pull",function()
    topos(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
    end)
    
    Trailers:Button("Teleport To The Clock",function()
    topos(CFrame.new(29553.7812, 15066.6133, -88.2750015, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    end)
    
    Trailers:Button("Auto Race Door",function()
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875) 
        wait(0.1)
           Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875) 
           wait(0.1)
              Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875) 
              wait(0.1)
                 Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875) 
            wait(0.5)
                    if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
                    topos(CFrame.new(29221.822265625, 14890.9755859375, -205.99114990234375))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
                    topos(CFrame.new(28960.158203125, 14919.6240234375, 235.03948974609375))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
                    topos(CFrame.new(28231.17578125, 14890.9755859375, -211.64173889160156))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
                    topos(CFrame.new(28502.681640625, 14895.9755859375, -423.7279357910156))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
                    topos(CFrame.new(28674.244140625, 14890.6767578125, 445.4310607910156))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
                    topos(CFrame.new(29012.341796875, 14890.9755859375, -380.1492614746094))
                    end
                 end)
                 
       Trailers:Button("Buy Acient One Quest",function()
       game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('UpgradeRace','Buy')
        end)
     
     Trailers:Seperator("Race V4 Trials")
           
        Trailers:Toggle("Auto Trial Human Ghost",false, function(Value)
        _G.Kill_Aura = Value
        end)
        
        Trailers:Toggle("Auto Trial All Race",false, function(Value)
        _G.AutoQuestRace = Value
        end)
        spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoQuestRace then
             if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
                    for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            pcall(function()
                                repeat wait(.1)
                                    v.Humanoid.Health = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health <= 0
                            end)
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
                    for i,v in pairs(game:GetService("Workspace").Map.SkyTrial.Model:GetDescendants()) do
                        if v.Name ==  "snowisland_Cylinder.081" then
                            topos(v.CFrame* CFrame.new(0,0,0))
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
                    for i,v in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
                        if v.Name ==  "HumanoidRootPart" then
                            topos(v.CFrame* Pos)
                            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if v:IsA("Tool") then
                                    if v.ToolTip == "Melee" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                    end
                                end
                            end
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if v:IsA("Tool") then
                                    if v.ToolTip == "Blox Fruit" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                    end
                                end
                            end
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                    
                            wait(0.5)
                            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if v:IsA("Tool") then
                                    if v.ToolTip == "Sword" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                    end
                                end
                            end
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(0.5)
                            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if v:IsA("Tool") then
                                    if v.ToolTip == "Gun" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                    end
                                end
                            end
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
                    topos(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
                    for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            pcall(function()
                                repeat wait(.1)
                                    v.Humanoid.Health = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health <= 0
                            end)
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
                    for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                        if v.Name == "StartPoint" then
                            topos(v.CFrame* CFrame.new(0,3,0))
                            if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                                _G.AutoQuestRace = false
                                StopTween(_G.AutoQuestRace)
                                end
                            end
                          end
                       end
                end
            end
        end
    end)
end)

     Trailers:Toggle("Auto Kill Player V4",false, function(Value)
        ProjectTrialPro = Value
        end)
        spawn(function()
    while task.wait() do 
        pcall(function()
            if ProjectTrialPro then
                for i, v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                    local player = game.Players.LocalPlayer
                    local character = player.Character                    
                    if v.Name ~= player.Name and (v.HumanoidRootPart.Position - character.HumanoidRootPart.Position).Magnitude <= 450 then
                        if v.Humanoid.Health > 0 then
                            repeat
                                task.wait()
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)
                                NameTarget = v.Name
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(1,1,10))
                                v.HumanoidRootPart.CanCollide = false
                                ProjectXTrial = true
                                Click()                                
                            until not ProjectTrialPro or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
            end
        end)
    end
end)
spawn(
    function()
        while wait() do
            if ProjectXTrial then
                pcall(
                    function()
                        ac = aQ.activeController
                        ac:attack()
                        AttackFunctgggggion()
                        ac.hitboxMagnitude = 55
                        wait(.1)
                    end
                )
            end
        end
    end
)

spawn(function()
    while wait(0.2) do
        pcall(function()
            if _G.XaiSkillZ and ProjectTrialPro then
                game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
            end
            if _G.XaiSkillX and ProjectTrialPro then
                game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
            end
            if _G.XaiSkillC and ProjectTrialPro then
                game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
            end
        end)
    end
end)

Trailers:Toggle("Skill Z",false, function(Value)
        _G.XaiSkillZ = Value
        end)
Trailers:Toggle("Skill X",false, function(Value)
        _G.XaiSkillX = Value
        end)
Trailers:Toggle("Skill C",false, function(Value)
        _G.XaiSkillC = Value
        end)        

    Espbruh:Toggle("Esp Island", false, function(value)
        IslandESP = value
        while IslandESP do wait()
            UpdateIslandESP() 
        end
    end)
    
    spawn(function()
	    while wait(2) do
		    if IslandESP then
			    UpdateIslandESP() 
		    end
	    end
    end)
    
        Espbruh:Toggle("Esp Player", false, function(value)
        ESPPlayer = value
        while ESPPlayer do wait()
            UpdatePlayerChams()
        end
    end)
    
    spawn(function()
	    while wait(2) do
		    if ESPPlayer then
			    UpdatePlayerChams()
		    end
	    end
    end)
    
    Espbruh:Toggle("Esp Chest", false, function(value)
        _G.ChestESP = value
        while _G.ChestESP do wait()
            UpdateChestESP()
        end
    end)
    
    spawn(function()
	    while wait(2) do
		    if _G.ChestESP then
			    UpdateChestESP()
		    end
	    end
    end)
        
        Espbruh:Toggle("Esp Fruit", false, function(value)
        DevilFruitESP = value
        while DevilFruitESP do wait()
            UpdateDevilChams() 
        end
    end)
    
    spawn(function()
	    while wait(2) do
		    if DevilFruitESP then
			    UpdateDevilChams() 
		    end
	    end
    end)
    
    Espbruh:Toggle("Esp Berry", false, function(value)
        Berry = value
        while Berry do wait()
            UpdateBerriesESP()
        end
    end)
    
    spawn(function()
	    while wait(2) do
		    if Berry then
			    UpdateBerriesESP()
		    end
	    end
    end)
    
    Espbruh:Toggle("Esp Real Fruits", false, function(value)
        RealFruitESP = value
        while RealFruitESP do wait()
            UpdateRealFruitChams() 
        end
    end)
    
    spawn(function()
	    while wait(2) do
		    if RealFruitESP then
			    UpdateRealFruitChams() 
		    end
	    end
    end)
    
    Espbruh:Toggle("Esp Gear", false, function(value)
        GearESP = value
        while GearESP do wait()
            UpdateGeaESP() 
        end
    end)
    
    spawn(function()
	    while wait(2) do
		    if GearESP then
			    UpdateGeaESP() 
		    end
	    end
    end)
    
    Espbruh:Toggle("Esp Flower", false, function(value)
        FlowerESP = value
        while FlowerESP do wait()
            UpdateFlowerChams() 
        end
    end)
    
    spawn(function()
	    while wait(2) do
		    if FlowerESP then
			    UpdateFlowerChams() 
		    end
	    end
    end)
        
       Espbruh:Toggle("Esp Mirage Island", false, function(value)
        MirageIslandESP = value
        while MirageIslandESP do wait()
            UpdateIslandMirageESP() 
        end
    end)
    
    spawn(function()
	    while wait(2) do
		    if MirageIslandESP then
			    UpdateIslandMirageESP() 
		    end
	    end
    end)                       
    
    Espbruh:Toggle("Esp Prehistoric Island", false, function(value)
        PrehistoricIslandESP = value
        while PrehistoricIslandESP do wait()
            UpdatePrehistoricIslandESP() 
        end
    end)
    
    spawn(function()
	    while wait(2) do
		    if PrehistoricIslandESP then
			    UpdatePrehistoricIslandESP() 
		    end
	    end
    end)
    
    Espbruh:Toggle("Esp Kitsune Island", false, function(value)
        KitsuneIslandEsp = value
        while KitsuneIslandEsp do wait()
            UpdateIslandKisuneESP()   
        end
    end)
    
    spawn(function()
	    while wait(2) do
		    if KitsuneIslandEsp then
			    UpdateIslandKisuneESP()  
		    end
	    end
    end)
    
   TimeRaid = AutoRaid:Label("Auto Time Raid")

   spawn(function()
    pcall(function()
        while wait() do
   if game.Workspace._WorldOrigin.Locations:FindFirstChild('Island 5') then
    TimeRaid:Set('Status : Island 5')
    elseif game.Workspace._WorldOrigin.Locations:FindFirstChild('Island 4') then
      TimeRaid:Set('Status : Island 4')
     elseif game.Workspace._WorldOrigin.Locations:FindFirstChild('Island 3') then
      TimeRaid:Set('Status : Island 3')
     elseif game.Workspace._WorldOrigin.Locations:FindFirstChild('Island 2') then
      TimeRaid:Set('Status : Island 2')
      elseif game.Workspace._WorldOrigin.Locations:FindFirstChild('Island 1') then
        TimeRaid:Set('Status : Island 1')
        else
         TimeRaid:Set("Status : Start Dungeon") 
         end
        end
     end)
   end)        
    
    AutoRaid:Dropdown("Select Chip Raid",{"Flame","Ice","Sand","Dark","Light","Magma","Quake","Buddha","Spider","Phoenix","Rumble","Dough"},{"Flame"},function(v)
    SelectChip = v
     end)
    
    AutoRaid:Toggle("Auto Buy Chip", false, function(value)
    _G.AutoBuyChip = value
    end)
    spawn(function()
    while wait() do
        if _G.AutoBuyChip then
            pcall(function()
                local args = {
                    [1]="RaidsNpc",
                    [2]="Select",
                    [3]=SelectChip
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end)
        end
    end
end)

   AutoRaid:Toggle("Auto Start Raid", false, function(value)
    _G.StartRaid = value
    end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.StartRaid then
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible==false then
                    if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and
                        (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or
                         game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip")) then
                        if World2 then
                            topos(CFrame.new(-6438.73535, 250.645355,-4501.50684))
                            local args = {
                                [1]="SetSpawnPoint"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                        elseif World3 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-5075.50927734375, 314.5155029296875,-3150.0224609375))
                            topos(CFrame.new(-5017.40869, 314.844055,-2823.0127,-0.925743818, 4.48217499e-08,-0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08,-0.925743818))
                            local args = {
                                [1]="SetSpawnPoint"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                        end
                    end
                end
            end
        end)
    end
end)

   AutoRaid:Toggle("Auto Farm Raid Next Island", false, function(value)
    _G.Dungeon = value
    getgenv().SafeMode = value
    StopTween(_G.Dungeon)
    end)

 function IsIslandRaid(cu)
    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island " .. cu) then
        min = 4500
        for r, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            if
                v.Name == "Island " .. cu and
                    (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < min
            then
                min = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            end
        end
        for r, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            if
                v.Name == "Island " .. cu and
                    (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= min
            then
                return v
            end
        end
    end
end

function getNextIsland()
    TableIslandsRaid = {5, 4, 3, 2, 1}
    for r, v in pairs(TableIslandsRaid) do
        if IsIslandRaid(v) and (IsIslandRaid(v).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4500 then
            return IsIslandRaid(v)
        end
    end
end

function attackNearbyEnemies()
    local enemies = {}
    for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
            local distance = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if distance <= 1000 then
                table.insert(enemies, v)
            end
        end
    end

    for _, enemy in pairs(enemies) do
        repeat
            if enemy:FindFirstChild("Humanoid") and enemy.Humanoid.Health > 0 then
                EquipWeapon(_G.SelectWeapon)
                topos(enemy.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                wait(0.1)
            end
        until not enemy:FindFirstChild("Humanoid") or enemy.Humanoid.Health <= 0
    end
end

spawn(function()
    while wait() do
        if _G.Dungeon then
            attackNearbyEnemies()
            if getNextIsland() then
                spawn(topos(getNextIsland().CFrame * CFrame.new(0, 60, 0)), 1)
            end
        end
    end
end)

   AutoRaid:Toggle("Awakener Fruit", false, function(value)
    AutoAwakenAbilities = value
    end)
  
  spawn(function()
    while task.wait() do
        if AutoAwakenAbilities then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
            end)
        end
    end
end)

    AutoRaid:Toggle("Auto Get Fruit Low Beli", false, function(value)
    _G.Autofruit = value
    end)

 spawn(function()
    while wait(.1) do
        pcall(function()
     if _G.Autofruit then
         
local args = {
    [1] = "LoadFruit",
    [2] = "Rocket-Rocket"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

local args = {
    [1] = "LoadFruit",
    [2] = "Spin-Spin"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

local args = {
    [1] = "LoadFruit",
    [2] = "Chop-Chop"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

local args = {
    [1] = "LoadFruit",
    [2] = "Spring-Spring"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

local args = {
    [1] = "LoadFruit",
    [2] = "Bomb-Bomb"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

local args = {
    [1] = "LoadFruit",
    [2] = "Smoke-Smoke"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

local args = {
    [1] = "LoadFruit",
    [2] = "Spike-Spike"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

local args = {
    [1] = "LoadFruit",
    [2] = "Flame-Flame"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

local args = {
    [1] = "LoadFruit",
    [2] = "Falcon-Falcon"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

local args = {
    [1] = "LoadFruit",
    [2] = "Ice-Ice"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

local args = {
    [1] = "LoadFruit",
    [2] = "Sand-Sand"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

local args = {
    [1] = "LoadFruit",
    [2] = "Dark-Dark"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

local args = {
    [1] = "LoadFruit",
    [2] = "Ghost-Ghost"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

local args = {
    [1] = "LoadFruit",
    [2] = "Diamond-Diamond"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

local args = {
    [1] = "LoadFruit",
    [2] = "Light-Light"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

local args = {
    [1] = "LoadFruit",
    [2] = "Rubber-Rubber"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

local args = {
    [1] = "LoadFruit",
    [2] = "Creation-Creation"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
end)
end
end)

      if World2 then
     AutoRaid:Seperator("Auto Law Raid")
     
     Events:Button("Auto Buy Chip Law",function()
    local args = {
       [1] = "BlackbeardReward",
       [2] = "Microchip",
       [3] = "2"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end)
    
    Events:Button("Auto Start Raid Law",function()
    fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
    end)
     
     AutoRaid:Toggle("Auto Farm Law Raid", false, function(value)
    _G.AutoLawRaid = value
    StopTween(_G.AutoLawRaid)
    end)
     
      spawn(function()
        while wait() do
            if _G.AutoLawRaid then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Order" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                                                     
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoLawRaid or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    NeedAttacking = true
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Order").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    
end    

  local FindFruit = Autofruit:Label("Check Fruit")

spawn(function()
	pcall(function()
		while wait() do
			for i, v in pairs(game.Workspace:GetChildren()) do
				if string.find(v.Name, "Fruit") then
					FindFruit:Set("🍏 Find " .. v.Name);
				else
					FindFruit:Set("🍏 Not Have Fruits");
				end;
			end;
		end;
	end);
end);

  Autofruit:Toggle("Auto Random Fruits", false, function(value)
    _G.RandomAuto = value
    end)
    
spawn(function()
    pcall(function()
        while wait() do
            if _G.RandomAuto then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
            end 
        end
    end)
end)
   Autofruit:Button("Random Fruits",function()
     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
    end)
   
   Autofruit:Toggle("Auto Stores Fruits", false, function(value)
    _G.AutoStoreFruit = value
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoStoreFruit then
                    for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                        if string.find(v.Name, "Fruit") then
                            ResultStoreFruits = {}
                            CheckFruits()
                            for z, Res in pairs(ResultStoreFruits) do
                            if v.Name == Res then
                                local NameFruit = v.Name
                                local FirstNameFruit = string.gsub(v.Name, " Fruit", "")
                                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(NameFruit) then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",FirstNameFruit.."-"..FirstNameFruit,game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(NameFruit))
                                end
                            end
                            end
                        end
                    end
                end
            end)
        end
    end)
   
   Autofruit:Toggle("Auto Tween Fruits", false, function(value)
    _G.TweenFruit = value
    end)
        spawn(function()
		while wait(.1) do
			if _G.TweenFruit then
				for i,v in pairs(game.Workspace:GetChildren()) do
					if string.find(v.Name, "Fruit") then
						TP1(v.Handle.CFrame)
					end
				end
			end
        end
    end)
    
    Autofruit:Toggle("Auto Grab Fruit", false, function(value)
    _G.Grabfruit = value
    end)
    spawn(function()
    while wait(.1) do
        if _G.Grabfruit then
            for i,v in pairs(game.Workspace:GetChildren()) do
                if string.find(v.Name, "Fruit") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
                end
            end
        end
   end
end)

   Autofruit:Button("Auto Grab All Fruits",function()
           for i,v in pairs(game.Workspace:GetChildren()) do
            if v:IsA("Tool") then
                v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            end
        end	
    end)
    
     Teleport:Button("Teleport To First Sea",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end)
    
    Teleport:Button("Teleport To Second Sea",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end)
    
    Teleport:Button("Teleport To Third Sea",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end)
    
    Teleport:Seperator("Auto Island")
    
    if World1 then
   Teleport:Dropdown("Select Island",{"WindMill","Marine","Middle Town","Jungle","Pirate Village","Desert","Snow Island","MarineFord","Colosseum","Sky Island 1","Sky Island 2","Sky Island 3","Prison","Magma Village","Under Water Island","Fountain City","Shank Room","Mob Island"},{"WindMill"},function(value)
    _G.SelectIsland = value
     end)
     end
     
    if World2 then
   Teleport:Dropdown("Select Island",{"The Cafe","Frist Spot","Dark Area","Flamingo Mansion","Flamingo Room","Green Zone","Factory","Colossuim","Zombie Island","Two Snow Mountain","Punk Hazard","Cursed Ship","Ice Castle","Forgotten Island","Ussop Island","Mini Sky Island"},{"The Cafe"},function(value)
    _G.SelectIsland = value
     end)
     end
     
    if World3 then
   Teleport:Dropdown("Select Island",{"Mansion","Port Town","Great Tree","Castle On The Sea","MiniSky","Hydra Island","Floating Turtle","Haunted Castle","Ice Cream Island","Peanut Island","Cake Island","Cocoa Island","Candy Island","Tiki Outpost"},{"Mansion"},function(value)
    _G.SelectIsland = value
     end)
     end     
     
  Teleport:Toggle("Auto Tween To Island", false, function(value)
        _G.TeleportIsland = value
        if _G.TeleportIsland == true then
            repeat wait()
                if _G.SelectIsland == "WindMill" then
                    topos(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
                elseif _G.SelectIsland == "Marine" then
                    topos(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
                elseif _G.SelectIsland == "Middle Town" then
                    topos(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
                elseif _G.SelectIsland == "Jungle" then
                    topos(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
                elseif _G.SelectIsland == "Pirate Village" then
                    topos(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
                elseif _G.SelectIsland == "Desert" then
                    topos(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
                elseif _G.SelectIsland == "Snow Island" then
                    topos(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
                elseif _G.SelectIsland == "MarineFord" then
                    topos(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
                elseif _G.SelectIsland == "Colosseum" then
                    topos( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
                elseif _G.SelectIsland == "Sky Island 1" then
                    topos(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
                elseif _G.SelectIsland == "Sky Island 2" then  
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
                elseif _G.SelectIsland == "Sky Island 3" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                elseif _G.SelectIsland == "Prison" then
                    topos( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
                elseif _G.SelectIsland == "Magma Village" then
                    topos(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
                elseif _G.SelectIsland == "Under Water Island" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                elseif _G.SelectIsland == "Fountain City" then
                    topos(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
                elseif _G.SelectIsland == "Shank Room" then
                    topos(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
                elseif _G.SelectIsland == "Mob Island" then
                    topos(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
                elseif _G.SelectIsland == "The Cafe" then
                    topos(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
                elseif _G.SelectIsland == "Frist Spot" then
                    topos(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
                elseif _G.SelectIsland == "Dark Area" then
                    topos(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
                elseif _G.SelectIsland == "Flamingo Mansion" then
                    topos(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
                elseif _G.SelectIsland == "Flamingo Room" then
                    topos(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
                elseif _G.SelectIsland == "Green Zone" then
                    topos( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
                elseif _G.SelectIsland == "Factory" then
                    topos(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                elseif _G.SelectIsland == "Colossuim" then
                    topos( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
                elseif _G.SelectIsland == "Zombie Island" then
                    topos(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
                elseif _G.SelectIsland == "Two Snow Mountain" then
                    topos(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
                elseif _G.SelectIsland == "Punk Hazard" then
                    topos(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
                elseif _G.SelectIsland == "Cursed Ship" then
                    topos(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
                elseif _G.SelectIsland == "Ice Castle" then
                    topos(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
                elseif _G.SelectIsland == "Forgotten Island" then
                    topos(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
                elseif _G.SelectIsland == "Ussop Island" then
                    topos(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
                elseif _G.SelectIsland == "Mini Sky Island" then
                    topos(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
                elseif _G.SelectIsland == "Great Tree" then
                    topos(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
                elseif _G.SelectIsland == "Castle On The Sea" then
                    topos(CFrame.new(-5074.45556640625, 314.5155334472656, -2991.054443359375))
                elseif _G.SelectIsland == "MiniSky" then
                    topos(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
                elseif _G.SelectIsland == "Port Town" then
                    topos(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
                elseif _G.SelectIsland == "Hydra Island" then
                    topos(CFrame.new(5255.1049, 1004.1949, 344.7700))
                elseif _G.SelectIsland == "Floating Turtle" then
                    topos(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
                elseif _G.SelectIsland == "Mansion" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                elseif _G.SelectIsland == "Haunted Castle" then
                    topos(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
                elseif _G.SelectIsland == "Ice Cream Island" then
                    topos(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
                elseif _G.SelectIsland == "Peanut Island" then
                    topos(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
                elseif _G.SelectIsland == "Cake Island" then
                    topos(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
                elseif _G.SelectIsland == "Cocoa Island" then
                    topos(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375))
                elseif _G.SelectIsland == "Candy Island" then
                    topos(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
                elseif _G.SelectIsland == "Tiki Outpost" then
                    topos(CFrame.new(-16218.6826, 9.08636189, 445.618408, -0.0610186495, 1.10512588e-09, -0.99813664, -1.83458475e-08, 1, 2.22871765e-09, 0.99813664, 1.84476558e-08, -0.0610186495))
                end
            until not _G.TeleportIsland
        end
        StopTween(_G.TeleportIsland)
    end)
  
      Teleport:Seperator("Auto NPC")    
       
     if World1 then
   Teleport:Dropdown("Select NPC",{"Random Devil Fruit","Blox Fruits Dealer","Remove Devil Fruit","Ability Teacher","Dark Step","Electro","Fishman Karate"},{"Random Devil Fruit"},function(value)
    _G.SelectNPC = value
     end)
     end
     
     if World2 then
   Teleport:Dropdown("Select NPC",{"Dargon Berath","Mtsterious Man","Mysterious Scientist","Awakening Expert","Nerd","Bar Manager","Blox Fruits Dealer","Trevor","Enhancement Editor","Pirate Recruiter","Marines Recruiter","Chemist","Cyborg","Ghoul Mark","Guashiem","El Admin","El Rodolfo","Arowe"},{"Dargon Berath"},function(value)
    _G.SelectNPC = value
     end)
     end
     
      if World3 then
   Teleport:Dropdown("Select NPC",{"Blox Fruits Dealer","Remove Devil Fruit","Horned Man","Hungey Man","Previous Hero","Butler","Lunoven","Trevor","Elite Hunter","Player Hunter","Uzoth"},{"Random Devil Fruit"},function(value)
    _G.SelectNPC = value
     end)
     end     
     
     Teleport:Toggle("Auto Teleporter Npc", false, function(value)
        _G.TeleportNPC = value
        if _G.TeleportNPC == true then
            repeat wait()
                if _G.SelectNPC == "Dargon Berath" then
                    topos(CFrame.new(703.372986, 186.985519, 654.522034, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Mtsterious Man" then
                    topos(CFrame.new(-2574.43335, 1627.92371, -3739.35767, 0.378697902, -9.06400288e-09, 0.92552036, -8.95582009e-09, 1, 1.34578926e-08, -0.92552036, -1.33852689e-08, 0.378697902))
                elseif _G.SelectNPC == "Mysterious Scientist" then
                    topos(CFrame.new(-6437.87793, 250.645355, -4498.92773, 0.502376854, -1.01223634e-08, -0.864648759, 2.34106086e-08, 1, 1.89508653e-09, 0.864648759, -2.11940012e-08, 0.502376854))
                elseif _G.SelectNPC == "Awakening Expert" then
                    topos(CFrame.new(-408.098846, 16.0459061, 247.432846, 0.028394036, 6.17599138e-10, 0.999596894, -5.57905944e-09, 1, -4.59372484e-10, -0.999596894, -5.56376767e-09, 0.028394036))
                elseif _G.SelectNPC == "Nerd" then
                    topos(CFrame.new(-401.783722, 73.0859299, 262.306702, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Bar Manager" then
                    topos(CFrame.new(-385.84726, 73.0458984, 316.088806, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Blox Fruits Dealer" then
                    topos(CFrame.new(-450.725464, 73.0458984, 355.636902, -0.780352175, -2.7266168e-08, 0.625340283, 9.78516468e-09, 1, 5.58128797e-08, -0.625340283, 4.96727601e-08, -0.780352175))
                elseif _G.SelectNPC == "Trevor" then
                    topos(CFrame.new(-341.498322, 331.886444, 643.024963, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Plokster" then
                    topos( CFrame.new(-1885.16016, 88.3838196, -1912.28723, -0.513468027, 0, 0.858108759, 0, 1, 0, -0.858108759, 0, -0.513468027))
                elseif _G.SelectNPC == "Enhancement Editor" then
                    topos(CFrame.new(-346.820221, 72.9856339, 1194.36218, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Pirate Recruiter" then  
                    topos(CFrame.new(-428.072998, 72.9495239, 1445.32422, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Marines Recruiter" then
                    topos(CFrame.new(-1349.77295, 72.9853363, -1045.12964, 0.866493046, 0, -0.499189168, 0, 1, 0, 0.499189168, 0, 0.866493046))
                elseif _G.SelectNPC == "Chemist" then
                    topos( CFrame.new(-2777.45288, 72.9919434, -3572.25732, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Ghoul Mark" then
                    topos(CFrame.new(635.172546, 125.976357, 33219.832, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Cyborg" then
                    topos(CFrame.new(629.146851, 312.307373, -531.624146, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Guashiem" then
                    topos(CFrame.new(937.953003, 181.083359, 33277.9297, 1, -8.60126406e-08, 3.81773896e-17, 8.60126406e-08, 1, -1.89969598e-16, -3.8177373e-17, 1.89969598e-16, 1))
                elseif _G.SelectNPC == "El Admin" then
                    topos(CFrame.new(1322.80835, 126.345039, 33135.8789, 0.988783717, -8.69797603e-08, -0.149354503, 8.62223786e-08, 1, -1.15461916e-08, 0.149354503, -1.46101409e-09, 0.988783717))
                elseif _G.SelectNPC == "El Rodolfo" then
                    topos(CFrame.new(941.228699, 40.4686775, 32778.9922, -0.818029106, -1.19524382e-08, 0.575176775, -1.28741648e-08, 1, 2.47053866e-09, -0.575176775, -5.38394795e-09, -0.818029106))
                elseif _G.SelectNPC == "Arowe" then
                    topos(CFrame.new(-1994.51038, 125.519142, -72.2622986, -0.16715166, -6.55417338e-08, -0.985931218, -7.13315558e-08, 1, -5.43836585e-08, 0.985931218, 6.12376851e-08, -0.16715166))
                elseif _G.SelectNPC == "Random Devil Fruit" then
                    topos(CFrame.new(-1436.19727, 61.8777695, 4.75247526, -0.557794094, 2.74216543e-08, 0.829979479, 5.83273234e-08, 1, 6.16037932e-09, -0.829979479, 5.18467118e-08, -0.557794094))
                elseif _G.SelectNPC == "Blox Fruits Dealer" then
                    topos(CFrame.new(-923.255066, 7.67800522, 1608.61011, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Remove Devil Fruit" then
                    topos(CFrame.new(5664.80469, 64.677681, 867.85907, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Ability Teacher" then
                    topos(CFrame.new(-1057.67822, 9.65220833, 1799.49146, -0.865874112, -9.26330159e-08, 0.500262439, -7.33759435e-08, 1, 5.816689e-08, -0.500262439, 1.36579752e-08, -0.865874112))
                elseif _G.SelectNPC == "Dark Step" then
                    topos( CFrame.new(-987.873047, 13.7778397, 3989.4978, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Electro" then
                    topos(CFrame.new(-5389.49561, 13.283, -2149.80151, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Fishman Karate" then
                    topos( CFrame.new(61581.8047, 18.8965912, 987.832703, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Random Devil Fruit" then
                    topos(CFrame.new(-12491, 337, -7449))
                elseif _G.SelectNPC == "Blox Fruits Dealer" then
                    topos(CFrame.new(-12511, 337, -7448))
                elseif _G.SelectNPC == "Remove Devil Fruit" then
                    topos(CFrame.new(-5571, 1089, -2661))
                elseif _G.SelectNPC == "Horned Man" then
                    topos(CFrame.new(-11890, 931, -8760))
                elseif _G.SelectNPC == "Hungey Man" then
                    topos(CFrame.new(-10919, 624, -10268))
                elseif _G.SelectNPC == "Previous Hero" then
                    topos(CFrame.new(-10368, 332, -10128))
                elseif _G.SelectNPC == "Butler" then
                    topos(CFrame.new(-5125, 316, -3130))
                elseif _G.SelectNPC == "Lunoven" then
                    topos(CFrame.new(-5117, 316, -3093))
                elseif _G.SelectNPC == "Elite Hunter" then
                    topos(CFrame.new(-5420, 314, -2828))
                elseif _G.SelectNPC == "Player Hunter" then
                    topos(CFrame.new(-5559, 314, -2840))
                elseif _G.SelectNPC == "Uzoth" then
                    topos(CFrame.new(-9785, 852, 6667))
                end
            until not _G.TeleportNPC
        end
        StopTween(_G.TeleportNPC)
    end)
       
    AutoPlayers = Playersss:Label("Check Player")

    spawn(function()
        while wait() do
            pcall(function()
                for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                    if i == 12 then
                        AutoPlayers:Set("Players :".." "..i.." ".."/".." ".."12".." ".."(Max)")
                    elseif i == 1 then
                        AutoPlayers:Set("Player :".." "..i.." ".."/".." ".."12")
                    else
                        AutoPlayers:Set("Players :".." "..i.." ".."/".." ".."12")
                    end
                end
            end)
        end
    end)
    
    Playerslist = {}
    
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        table.insert(Playerslist,v.Name)
    end
    
    local SelectedPly = Playersss:Dropdown("Select Player",Playerslist,false,function(value)
        _G.SelectPly = value
    end)
    
      Playersss:Button("Refresh Player",function()
        Playerslist = {}
        SelectedPly:Clear()
        for i,v in pairs(game:GetService("Players"):GetChildren()) do  
            SelectedPly:Add(v.Name)
        end
    end)
    
        Playersss:Toggle("Spectate Player", false, function(v)
    	SpectatePlys = v
        local plr1 = game:GetService("Players").LocalPlayer.Character.Humanoid
        local plr2 = game:GetService("Players"):FindFirstChild(_G.SelectPly)
        repeat wait(.1)
            game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players"):FindFirstChild(_G.SelectPly).Character.Humanoid
        until SpectatePlys == false 
        game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
		print(v)
	end) 
    
    Playersss:Toggle("Teleport To Player", false, function(value)
        _G.TeleportPly = value
        pcall(function()
            if _G.TeleportPly then
                repeat topos(game:GetService("Players")[_G.SelectPly].Character.HumanoidRootPart.CFrame) wait() until _G.TeleportPly == false
            end
            StopTween(_G.TeleportPly)
        end)
    end)
    
    Playersss:Toggle("Auto Farm Player", false, function(value)
        _G.AutoKillPlayer = value
        StopTween(_G.AutoKillPlayer)
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoKillPlayer then
                pcall(function()
                    if _G.SelectPly ~= nil then 
                        if game.Players:FindFirstChild(_G.SelectPly) then
                            if game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid.Health > 0 then
                                repeat task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    AutoHaki()
                                    game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CanCollide = false
                                    topos(game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CFrame * CFrame.new(0,5,0))
                                    spawn(function()
                                        pcall(function()
                                            if _G.SelectWeapon == SelectWeaponGun then
                                                local args = {
                                                    [1] = game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.Position,
                                                    [2] = game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart
                                                }
                                                game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                                            else
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                            end
                                        end)
                                    end)
                                until game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid.Health <= 0 or not game.Players:FindFirstChild(_G.SelectPly) or not _G.AutoKillPlayer
                            end
                        end
                    end
                end)
            end
        end
    end)
    

    Playersss:Seperator("Quest Player")
    
    Playersss:Button("Get Quest Elite Players",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
    end)
    
    Playersss:Toggle("Auto Kill Player Quest", false, function(Killzps)
		_G.AutoPlayerHunter = Killzps
        StopTween(_G.AutoPlayerHunter)
	end)

	spawn(function()
		game:GetService("RunService").Heartbeat:connect(function()
			pcall(function()
				if _G.AutoPlayerHunter then
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
						game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
					end
				end
			end)
		end)
	end)

	   spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.AutoPlayerHunter then
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                    end
                end
            end
        end)
    end)

	spawn(function()
		while wait() do
			if _G.AutoPlayerHunter then
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					wait(.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
				else
					for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
						if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.Name) then
							repeat wait()
								AutoHaki()
								EquipWeapon(_G.SelectWeapon)
								Useskill = true
								topos(v.HumanoidRootPart.CFrame * CFrame.new(1,7,3))								
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
							until _G.AutoPlayerHunter == false or v.Humanoid.Health <= 0
							Useskill = false
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
						end
					end
				end
			end
		end
	end)
	

    
    Playersss:Seperator("Aimbot")
     
    spawn(function()
        while wait() do
            pcall(function()
                local MaxDistance = math.huge
                for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                    if v.Name ~= game:GetService("Players").LocalPlayer.Name then
                        local Distance = v:DistanceFromCharacter(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position)
                        if Distance < MaxDistance then
                            MaxDistance = Distance
                            PlayerSelectAimbot = v.Name
                        end
                    end
                end
            end)
        end
    end)
    
    Playersss:Toggle("Aimbot Gun", false, function(value)
        _G.Aimbot_Gun = value
    end)
    
    spawn(function()
        while task.wait() do
            if _G.Aimbot_Gun and game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectWeaponGun) then
                pcall(function()
                    game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].Cooldown.Value = 0
                    local args = {
                        [1] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart.Position,
                        [2] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart
                    }
                    game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                    game:GetService'VirtualUser':CaptureController()
                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                end)
            end
        end
    end)
    
    Playersss:Toggle("Aimbot Skill Nearest", false, function(MakoriGG)
    AimSkillNearest = MakoriGG
end)

spawn(function()
	while wait(.1) do
		pcall(function()
			local MaxDistance = math.huge
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				if v.Name ~= game.Players.LocalPlayer.Name then
					local Distance = v:DistanceFromCharacter(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
					if Distance < MaxDistance then
						MaxDistance = Distance
						TargetPlayerAim = v.Name
					end
				end
			end
		end)
	end
end)

spawn(function()
	pcall(function()
		game:GetService("RunService").RenderStepped:connect(function()
			if AimSkillNearest and TargetPlayerAim ~= nil and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name]:FindFirstChild("MousePos") then
				local args = {
					[1] = game:GetService("Players"):FindFirstChild(TargetPlayerAim).Character.HumanoidRootPart.Position
				}
				game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
			end
		end)
	end)
end)

    Playersss:Toggle("Aimbot Skill", false, function(value)
        _G.Aimbot_Skill = value
    end)
    
    spawn(function()
        pcall(function()
            while task.wait() do
                if _G.Aimbot_Skill and PlayerSelectAimbot ~= nil and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name]:FindFirstChild("MousePos") then
                    local args = {
                        [1] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart.Position
                    }
                    
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name).RemoteEvent:FireServer(unpack(args))
                end
            end
        end)
    end)
    
    
    Playersss:Toggle("Enabled PvP", false, function(value)
        _G.EnabledPvP = value
    end)
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.EnabledPvP then
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                    end
                end
            end
        end)
    end)
    

    Playersss:Toggle("Safe Mode", false, function(value)
        _G.SafeMode = value
        StopTween(_G.SafeMode)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.SafeMode then
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,200,0)
                end
            end
        end)
    end)
    
    Playersss:Button("Respawn",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates") 
        wait()
    end)
    
        TikTokShop:Seperator("Abilities")
    
   TikTokShop:Button("Buy Geppo $10,000",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
    end)
    
   TikTokShop:Button("Buy Buso Haki $25,000",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
    end)
    
   TikTokShop:Button("Buy Soru $25,000",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
    end)
    
   TikTokShop:Button("Buy Observation Haki $750,000",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
    end)
    
   TikTokShop:Toggle("Auto Buy Abilities", false, function(t)
    Abilities = t
    while Abilities do wait(.1)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
    end
end)

TikTokShop:Seperator("Boats")

BoatList = {
    "Pirate Sloop",
    "Enforcer",
    "Rocket Boost",
    "Dinghy",
    "Pirate Basic",
    "Pirate Brigade"
}

spawn(function()
    while wait() do
        pcall(function()
            if SelectBoat == "Pirate Sloop" then
                _G.SelectBoat = "PirateSloop"
            else
                if SelectBoat == "Enforcer" then
                    _G.SelectBoat = "Enforcer"
                else
                    if SelectBoat == "RocketBoost" then
                        _G.SelectBoat = "RocketBoost"
                    else
                        if SelectBoat == "PirateBasic" then
                            _G.SelectBoat = "PirateBasic"
                        else
                            if SelectBoat == "Pirate Brigade" then
                                _G.SelectBoat = "PirateBrigade"
                            end
                        end
                    end
                end
            end
        end)
    end
end)

TikTokShop:Dropdown("Select Boats",BoatList,false,function(value)
    SelectBoat = value
end)

TikTokShop:Button("Buy Boat",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBoat",_G.SelectBoat)
end)

    TikTokShop:Seperator("Fighting Style")
    
   TikTokShop:Button("Buy Black Leg $150,000",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
    end)
    
   TikTokShop:Button("Buy Electro $550,000",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
    end)
    
   TikTokShop:Button("Buy Water Kung Fu $750,000",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
    end)
    
   TikTokShop:Button("Buy Dragon Claw 1,500F",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
    end)
    
   TikTokShop:Button("Buy Superhuman $3,000,000",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
    end)
    
   TikTokShop:Button("Buy Death Step $5,000,000 5,000F",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
    end)
    
   TikTokShop:Button("Buy Sharkman Karate $2,500,000 5,000F",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
    end)
    
   TikTokShop:Button("Buy Electric Claw $3,000,000 5,000F",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
    end)
    
   TikTokShop:Button("Buy Dragon Talon $3,000,000 5,000F",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
    end)

   TikTokShop:Button("Buy God Human $5,000,000 5,000F",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
    end)

   TikTokShop:Button("Buy Sanguine Art $5,000,000 5,000F",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt", true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
    end)

    TikTokShop:Seperator("Sword")
    
   TikTokShop:Button("Cutlass $1,000",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
    end)

   TikTokShop:Button("Katana $1,000",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
    end)
    
   TikTokShop:Button("Iron Mace $25,000",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
    end)
    
   TikTokShop:Button("Dual Katana $12,000",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
    end)
    
   TikTokShop:Button("Triple Katana $60,000", function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
    end)
    
   TikTokShop:Button("Pipe $100,000",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
    end)
    
   TikTokShop:Button("Dual-Headed Blade $400,000",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
    end)
    
   TikTokShop:Button("Bisento $1,200,000",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
    end)
    
   TikTokShop:Button("Soul Cane $750,000",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
    end)

   TikTokShop:Button("Pole v.2 5,000F",function()
		game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ThunderGodTalk")
	end)

    TikTokShop:Seperator("Gun")
    
   TikTokShop:Button("Slingshot $5,000",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
    end)
    
   TikTokShop:Button("Musket $8,000",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
    end)
    
   TikTokShop:Button("Flintlock $10,500",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
    end)
    
   TikTokShop:Button("Refined Slingshot $30,000",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
    end)
    
   TikTokShop:Button("Refined Flintlock $65,000",function()
		local args = {
			[1] = "BuyItem",
			[2] = "Refined Flintlock"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
    
   TikTokShop:Button("Cannon $100,000",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
    end)
    
   TikTokShop:Button("Kabucha 1,500F",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
    end)

      TikTokShop:Button("Bizarre Rifle 250 Ectoplasm", function()
         local A_1 = "Ectoplasm"
        local A_2 = "Buy"
        local A_3 = 1
      local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
     Event:InvokeServer(A_1, A_2, A_3) 
        end)
     
    TikTokShop:Seperator("Stats")

TikTokShop:Button("Reset Stats 2,500F", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
end)

TikTokShop:Button("Random Race 3,000F", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","1")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2")
end)

    TikTokShop:Seperator("Accessories")
	TikTokShop:Button("Black Cape $50,000",function()
		local args = {
			[1] = "BuyItem",
			[2] = "Black Cape"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	TikTokShop:Button("Swordsman Hat $150,000",function()
		local args = {
			[1] = "BuyItem",
			[2] = "Swordsman Hat"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	TikTokShop:Button("Tomoe Ring $500,000",function()
		local args = {
			[1] = "BuyItem",
			[2] = "Tomoe Ring"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
                
        AutoMisc:Seperator("Misc")
    
    AutoMisc:Button("Open Haki Color", function()
    game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
    end)

    AutoMisc:Button("Open Title Name", function()
        local args = {
            [1] = "getTitles"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
    end)
    
    AutoMisc:Button("Open Inventory",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")
        wait(1)
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = true
    end)
    
    AutoMisc:Button("Open Inventory Fruit",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true
    end)
    
      
AutoMisc:Seperator("Teams")
    
    AutoMisc:Button("Join Pirates Team",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates") 
    end)
    
    AutoMisc:Button("Join Marines Team",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines") 
    end)
    
AutoMisc:Seperator("Highlight")

AutoMisc:Toggle("Hide Chat",false,function(value)
    _G.chat = value
    if _G.chat == true then
local StarterGui = game:GetService('StarterGui')
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)    
elseif _G.chat == false then
local StarterGui = game:GetService('StarterGui')
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)    
end
  end)

  AutoMisc:Toggle("Hide Leaderboard",false,function(a)
    _G.leaderboard = a
    if _G.leaderboard == true then
local StarterGui = game:GetService('StarterGui')
game:GetService('StarterGui'):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)   
elseif _G.leaderboard == false then
local StarterGui = game:GetService('StarterGui')
game:GetService('StarterGui'):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true)   
end
  end)

    AutoMisc:Toggle("Highlight Mode",false,function(value)
        if value == true then
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Beli.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.HP.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Energy.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.StatsButton.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ShopButton.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Skills.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Level.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.MenuButton.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Code.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Settings.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Mute.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.CrewButton.Visible = false
        else
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Beli.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.HP.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Energy.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.StatsButton.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ShopButton.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Skills.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Level.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.MenuButton.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Code.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Settings.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Mute.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.CrewButton.Visible = true
        end
    end)


	
    AutoMisc:Seperator("Codes")
    
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
    }
    
    AutoMisc:Button("Redeem All Codes",function()
        function RedeemCode(value)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
        end
        for i,v in pairs(x2Code) do
            RedeemCode(v)
        end
    end)
    
    AutoMisc:Dropdown("Select Codes",{"NOOB_REFUND","SUB2GAMERROBOT_RESET1","Sub2UncleKizaru"},false,function(value)
        _G.CodeSelect = value
    end)
    
    AutoMisc:Button("Redeem Code",function()
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(_G.CodeSelect)
    end)
    
    AutoMisc:Seperator("Graphic")

    
    AutoMisc:Button("FPS Boost",function()
        local decalsyeeted = true 
        local g = game
        local w = g.Workspace
        local l = g.Lighting
        local t = w.Terrain
        settings().Rendering.QualityLevel = "Level01"
        for i, v in pairs(g:GetDescendants()) do
            if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
            elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
                v.Transparency = 1
            elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                v.Lifetime = NumberRange.new(0)
            elseif v:IsA("Explosion") then
                v.BlastPressure = 1
                v.BlastRadius = 1
            elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
                v.Enabled = false
            end
        end
    end)
    
AutoMisc:Button("Remove Fog",function()
	game:GetService("Lighting").LightingLayers:Destroy()
	game:GetService("Lighting").Sky:Destroy()
	game.Lighting.FogEnd = 9e9
end)

AutoMisc:Button("Remove Lava",function()
		for i,v in pairs(game.Workspace:GetDescendants()) do
			if v.Name == "Lava" then   
				v:Destroy()
			end
		end
		for i,v in pairs(game.ReplicatedStorage:GetDescendants()) do
			if v.Name == "Lava" then   
				v:Destroy()
			end
		end
	end)
	

    AutoMisc:Button("Rejoin Server",function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
    end)
    
    AutoMisc:Button("Server Hop",function()
        while wait() do
            local module = loadstring(game:HttpGet"https://roblox.relzscript.xyz/Hop.lua")()
            module:Teleport(game.PlaceId, "Singapore")
        end
    end)
    
        Status:Seperator("Stats")

  local Pointstat = Status:Label("Stat Points")
    
    spawn(function()
        while wait() do
            pcall(function()
                Pointstat:Set("Stat Points : "..tostring(game:GetService("Players")["LocalPlayer"].Data.Points.Value))
            end)
        end
    end)
    
local Melee = Status:Label("Melee : ")
local Defense = Status:Label("Defense : ")
local Sword = Status:Label("Sword : ")
local Gun = Status:Label("Gun : ")
local Fruit = Status:Label("Fruit : ")

    spawn(function()
        while wait() do
            pcall(function()
                Melee:Set("Melee : "..game.Players.localPlayer.Data.Stats.Melee.Level.Value)
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                Defense:Set("Defense : "..game.Players.localPlayer.Data.Stats.Defense.Level.Value)
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                Sword:Set("Sword : "..game.Players.localPlayer.Data.Stats.Sword.Level.Value)
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                Gun:Set("Gun : "..game.Players.localPlayer.Data.Stats.Gun.Level.Value)
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                Fruit:Set("Fruit : "..game.Players.localPlayer.Data.Stats["Demon Fruit"].Level.Value)
            end)
        end
    end)
       
Status:Toggle("Melee", false, function(value)
melee = Value    
end)
Status:Toggle("Defense", false, function(value)
defense = value
end)
Status:Toggle("Sword", false, function(value)
sword = value
end)
Status:Toggle("Gun", false, function(value)
gun = value
end)
Status:Toggle("Devil Fruit", false, function(value)
demonfruit = value
end)


spawn(function()
		while wait() do
			if game.Players.localPlayer.Data.Points.Value >= PointStats then
				if melee then
					local args = {
						[1] = "AddPoint",
						[2] = "Melee",
						[3] = PointStats
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
				if defense then
					local args = {
						[1] = "AddPoint",
						[2] = "Defense",
						[3] = PointStats
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
				if sword then
					local args = {
						[1] = "AddPoint",
						[2] = "Sword",
						[3] = PointStats
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
				if gun then
					local args = {
						[1] = "AddPoint",
						[2] = "Gun",
						[3] = PointStats
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
				if demonfruit then
					local args = {
						[1] = "AddPoint",
						[2] = "Demon Fruit",
						[3] = PointStats
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end
		end
	end)
	    

Time = StatusTime:Label("Executor Time")

function UpdateTime()
local GameTime = math.floor(workspace.DistributedGameTime+0.5)
local Hour = math.floor(GameTime/(60^2))%24
local Minute = math.floor(GameTime/(60^1))%60
local Second = math.floor(GameTime/(60^0))%60
Time:Set("[Time] : Hours : "..Hour.." Min : "..Minute.." Sec : "..Second)
end

spawn(function()
while task.wait() do
pcall(function()
UpdateTime()
end)
end
end)

Client = StatusTime:Label("Client")

function UpdateClient()
local Fps = workspace:GetRealPhysicsFPS()
Client:Set("[Fps] : "..Fps)
end

spawn(function()
while true do wait(.1)
UpdateClient()
end
end)

Client1 = StatusTime:Label("Client")

function UpdateClient1()
local Ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
Client1:Set("[Ping] : "..Ping)
end

spawn(function()
while true do wait(.1)
UpdateClient1()
end
end)

        MiragaCheck = StatusTime:Label("Check Mirage Island")
            spawn(function()
        pcall(function()
            while wait() do
                if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
                    MiragaCheck:Set('Mirage Island is Spawning ✅')
                else
                    MiragaCheck:Set('Mirage Island Not Spawn ❌') 
                 end
            end
        end)
    end)           
    
    PrehistoricCheck = StatusTime:Label("Check Prehistoric island")
  
  spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland") then
                PrehistoricCheck:Set("Prehistoric island: Spawning ✅")
            else
                PrehistoricCheck:Set("Prehistoric island: Not Spawning ❌")
               end
            end)
          end
       end)
       
       KitsuneCheck = StatusTime:Label("Check Kitsune island")
   
   spawn(function()
        pcall(function()
            while wait() do
         if game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland") then
      KitsuneCheck:Set('Kitsune Island Spawning ✅')
        else
      KitsuneCheck:Set('Kitsune Island Not Spawning ❌' )
            end
            end
         end)
     end)
     