

	repeat wait() until game:IsLoaded()
	repeat wait() until game:GetService("Players")
	repeat wait() until game:GetService("Players").LocalPlayer
	repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui
	repeat wait() until game:GetService("ReplicatedStorage").Effect.Container

	if not game:IsLoaded() then
		local GameLoadGui = Instance.new("Message",workspace);
		GameLoadGui.Text = 'Wait Game Loading';
		game.Loaded:Wait();
		GameLoadGui:Destroy();
		wait(10);
	end;


	_G.Team = "Marines"


	if not game:IsLoaded() then
		local Loaded = Instance.new("Message",workspace)
		Loaded.Text = 'Wait Game Loading'
		game.Loaded:Wait()
		Loaded:Destroy()
		wait(10)
	end

	join = game.Players.localPlayer.Neutral == false
	if (_G.Team == "Pirates" or _G.Team == "Marines") and not join then
		repeat wait()
			pcall(function()
				join = game.Players.localPlayer.Neutral == false
				if _G.Team == "Pirates" then
					for i,v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
						for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton[v])) do
							v.Function()
						end
					end
				elseif _G.Team == "Marines" then
					for i,v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
						for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton[v])) do
							v.Function()
						end
					end
				else
					for i,v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
						for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton[v])) do
							v.Function()
						end
					end
				end
			end)
		until join == true and game.Players.LocalPlayer.Team ~= nil and game:IsLoaded() 
	end

	Old_World = false
	New_World = false
	Three_World = false
	local placeId = game.PlaceId
	if placeId == 2753915549 then
		Old_World = true
	elseif placeId == 4442272183 then
		New_World = true
	elseif placeId == 7449423635 then
		Three_World = true
	end

	_G.Settings = {

		Main = {
			["Auto Farm Level"] = false,
			["Fast Auto Farm Level"] = false,
	
			--[Mob Aura]
	
			["Distance Mob Aura"] = 1000, -- {Max : 5000} 
			["Mob Aura"] = false,
	
			--[World 1]
			["Auto New World"] = false,
			["Auto Saber"] = false,
			["Auto Pole"] = false,
	
			["Auto Buy Ablility"] = false,
	
			--[World 2]
			["Auto Third Sea"] = false,
			["Auto Factory"] = false,
			["Auto Factory Hop"] = false,
			["Auto Bartilo Quest"] = false,
	
			["Auto True Triple Katana"] = false,
			["Auto Rengoku"] = false,
			["Auto Swan Glasses"] = false,
			["Auto Dark Coat"] = false,
			["Auto Ectoplasm"] = false,
	
			["Auto Buy Legendary Sword"] = false,
			["Auto Buy Enchanment Haki"] = false,
	
			--[World 3]
			["Auto Holy Torch"] = false,
			["Auto Buddy Swords"] = false,
			["Auto Farm Boss Hallow"] = false,
			["Auto Rainbow Haki"] = false,
			["Auto Elite Hunter"] = false,
			["Auto Musketeer Hat"] = false,
			["Auto Buddy Sword"] = false,
			["Auto Farm Bone"] = false,
			["Auto Ken-Haki V2"] = false,
			["Auto Cavander"] = false,
			["Auto Yama Sword"] = false,
			["Auto Tushita Sword"] = false,
			["Auto Serpent Bow"] = false,
			["Auto Dark Dagger"] = false,
			["Auto Cake Prince"] = false,
			["Auto Dough V2"] = false,
			["Auto Random Bone"] = false,
	
			--[For God Human]
	
			["Auto Fish Tail Sea 1"] = false,
			["Auto Fish Tail Sea 3"] = false,
			["Auto Magma Ore Sea 2"] = false,
			["Auto Magma Ore Sea 1"] = false,
			["Auto Mystic Droplet"] = false,
			["Auto Dragon Scales"] = false,
	
		},
		FightingStyle = {
			["Auto God Human"] = false,
			["Auto Superhuman"] = false,
			["Auto Electric Claw"] = false,
			["Auto Death Step"] = false,
			["Auto Fully Death Step"] = false,
			["Auto SharkMan Karate"] = false,
			["Auto Fully SharkMan Karate"] = false,
			["Auto Dragon Talon"] = false,
		},
		Boss = {
			["Auto All Boss"] = false,
			["Auto Boss Select"] = false,
			["Select Boss"] = {},
	
			["Auto Quest"] = false,
		},
		Mastery = {
			["Select Multi Swordd"] = {},
			["Sword Compleat"] = {},
			["Farm Mastery SwordList"] = false,
			["Auto Farm Fruit Mastery"] = false,
			["Auto Farm Gun Mastery"] = false,
			["Mob Health (%)"] = 15,
		},
		Configs = {
			["Double Quest"] = false,
			["Bypass TP"] = false,
			["Select Team"] = {"Marine"}, --{Pirate,Marine}
	
	
			["Fast Attack"] = true,
			["Fast Attack Type"] = {"Fast"}, --{Normal,Fast,Slow}
	
			["Select Weapon"] = {},
	
	
			--[Misc Configs]
			["Auto Haki"] = true,
			["Distance Auto Farm"] = 20, --{Max : 50}
			["Camera Shaker"] = false,
	
			--[Skill Configs]
			["Skill Z"] = true,
			["Skill X"] = true,
			["Skill C"] = true,
			["Skill V"] = true,
	
			--[Mob Configs]
			["Show Hitbox"] = false,
			["Bring Mob"] = true,
			["Disabled Damage"] = false,
	
		},
		Stat = {
			--[Auto Stats]
			["Enabled Auto Stats"] = false,
			["Auto Stats Kaitun"] = false,
	
			["Select Stats"] = {"Melee"}, --{Max Stats,Melee,Defense,Sword,Devil Fruit,Gun}
			["Point Select"] = 3, --{Recommended , Max : 9}
	
			--[Auto Redeem Code]
	
			["Enabled Auto Redeem Code"] = false,
			["Select Level Redeem Code"] = 1, --{Max : 2400}
		},
	
		Misc = {
			["No Soru Cooldown"] = false,
			["No Dash Cooldown"] = false,
	
			["Infinities Geppo"] = false,
			["Infinities Energy"] = false,
	
			["No Fog"] = false,
			["Wall-TP"] = false,
	
			["Fly"] = false,
			["Fly Speed"] = 1,
	
			--[Server]
			["Auto Rejoin"] = true,
		},
		Teleport = {
			["Teleport to Sea Beast"] = false,
		},
	
		Fruits = {
			["Auto Buy Random Fruits"] = false,
			["Auto Store Fruits"] = false,
	
			["Select Devil Fruits"] = {}, -- {"Bomb-Bomb","Spike-Spike","Chop-Chop","Spring-Spring","Kilo-Kilo","Spin-Spin","Kilo-Kilo","Spin-Spin","Bird: Falcon","Smoke-Smoke","Flame-Flame","Ice-Ice","Sand-Sand","Dark-Dark","Revive-Revive","Diamond-Diamond","Light-Light","Love-Love","Rubber-Rubber","Barrier-Barrier","Magma-Magma","Door-Door","Quake-Quake","Human-Human: Buddha","String-String","Bird-Bird: Phoenix","Rumble-Rumble","Paw-Paw","Gravity-Gravity","Dough-Dough","Shadow-Shadow","Venom-Venom","Control-Control","Soul-Soul","Dragon-Dragon"}
			["Auto Buy Devil Fruits Sniper"] = false,
		},
	
		Raids = {
			["Auto Raids"] = false,
	
			["Kill Aura"] = false,
			["Auto Awakened"] = false,
			["Auto Next Place"] = false,
	
			["Select Raids"] = {}, -- {"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha","Sand","Bird: Phoenix","Dough"},
		},
	
		Combat = {
			["Fov Size"] = 200,
			["Show Fov"] = false,
			["Aimbot Skill"] = false,
		},
	
		HUD = {
			["FPS"] = 60,
			["LockFPS"] = true,
			["Boost FPS Windows"] = false,
			['White Screen'] = false,
		},
		ConfigsUI = {
			ColorUI = Color3.fromRGB(255, 0, 127), --{Color UI}
		}
	}

	_G.Rejoin = false
	spawn(function()
		while true do wait()
			getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(Kick)
				if not (_G.TP_Ser or Hop) and _G.Rejoin then
					if Kick.Name == 'ErrorPrompt' and Kick:FindFirstChild('MessageArea') and Kick.MessageArea:FindFirstChild("ErrorFrame") then
						local ts = game:GetService("TeleportService")
						local p = game:GetService("Players").LocalPlayer
						ts:Teleport(game.PlaceId, p)
						wait(50)
					end
				end
			end)
		end
	end)

	local VirtualUser=game:service'VirtualUser'
	game:service'Players'.LocalPlayer.Idled:connect(function()
		VirtualUser:CaptureController()
		VirtualUser:ClickButton2(Vector2.new())
	end)

	spawn(function()
		while wait(3) do
			game:GetService'VirtualUser':CaptureController()
		end
	end)



	_G.Setting_table = {
		Auto_Farm = false,
		Bypass = true,
		Fast_Attack = true,
		DbFast = false,
		KobenHeegeen = true,
		Auto_Buso = true,
		Auto_Ken = true,
		Show_Damage = true,
		NoClip = true,
		Save_Member = true,
		Melee_A = true,
		Defense_A = true,
		SkillZ = true,
		Rejoin = true,
		Anti_AFK = true,
		K_MAX = 50,
		Chest_Lock = 50,
		FastModeD = "Fast",
		FastMode = "Normal",
		Delay_C = 15
	}

	_G.Check_Save_Setting = "CheckSaveSetting"

	getgenv()['JsonEncode'] = function(msg)
		return game:GetService("HttpService"):JSONEncode(msg)
	end
	getgenv()['JsonDecode'] = function(msg)
		return game:GetService("HttpService"):JSONDecode(msg)
	end
	getgenv()['Check_Setting'] = function(Name)
		if not _G.Dis and not isfolder('Sulfurz Hub Srcipt Folder') then
			makefolder('Sulfurz Hub Srcipt Folder')
		end
		if not _G.Dis and not isfile('Sulfurz Hub Srcipt Folder/'..Name..'.json') then
			writefile('Sulfurz Hub Srcipt Folder/'..Name..'.json',JsonEncode(_G.Setting_table))
		end
	end
	getgenv()['Get_Setting'] = function(Name)
		if not _G.Dis and isfolder('Sulfurz Hub Srcipt Folder') and isfile('Sulfurz Hub Srcipt Folder/'..Name..'.json') then
			_G.Setting_table = JsonDecode(readfile('Sulfurz Hub Srcipt Folder/'..Name..'.json'))
			return _G.Setting_table
		elseif not _G.Dis then
			Check_Setting(Name)
		end
	end
	getgenv()['Update_Setting'] = function(Name)
		if not _G.Dis and isfolder('Sulfurz Hub Srcipt Folder') and isfile('Sulfurz Hub Srcipt Folder/'..Name..'.json') then
			writefile('Sulfurz Hub Srcipt Folder/'..Name..'.json',JsonEncode(_G.Setting_table))
		elseif not _G.Dis then
			Check_Setting(Name)
		end
	end

	Check_Setting(_G.Check_Save_Setting)
	Get_Setting(_G.Check_Save_Setting)

	if _G.Setting_table.Save_Member then
		getgenv()['MyName'] = game.Players.LocalPlayer.Name
		print("Save Member")
	elseif _G.Setting_table.Save_All_Member then
		getgenv()['MyName'] = "AllMember"
		print("Save All Member")
	else
		getgenv()['MyName'] = "None"
		_G.Dis = true
	end

	Check_Setting(getgenv()['MyName'])
	Get_Setting(getgenv()['MyName'])

	_G.Setting_table.Key = _G.wl_key
	Update_Setting(getgenv()['MyName'])


	function LoadSettings()
		if readfile and writefile and isfile and isfolder then
			if not isfolder("Unique Hub Premium Scripts") then
				makefolder("Unique Hub Premium Scripts")
			end
			if not isfolder("Unique Hub Premium Scripts/Blox Fruits/") then
				makefolder("Unique Hub Premium Scripts/Blox Fruits/")
			end
			if not isfile("Unique Hub Premium Scripts/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
				writefile("Unique Hub Premium Scripts/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(_G.Settings))
			else
				local Decode = game:GetService("HttpService"):JSONDecode(readfile("Unique Hub Premium Scripts/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"))
				for i,v in pairs(Decode) do
					_G.Settings[i] = v
				end
			end
		else
			return warn("Status : Undetected Executor")
		end
	end
	
	function SaveSettings()
		if readfile and writefile and isfile and isfolder then
			if not isfile("Unique Hub Premium Scripts/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
				LoadSettings()
			else
				local Decode = game:GetService("HttpService"):JSONDecode(readfile("Unique Hub Premium Scripts/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"))
				local Array = {}
				for i,v in pairs(_G.Settings) do
					Array[i] = v
				end
				writefile("Unique Hub Premium Scripts/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(Array))
			end
		else
			return warn("Status : Undetected Executor")
		end
	end
	
	LoadSettings()



	function TelePBoss(p)
		pcall(function()
			if (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 and not Auto_Raid and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
				if NameQuest == "FishmanQuest" then
					_G.Stop_Tween = true
					TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
					_G.Stop_Tween = nil
				elseif Ms == "God's Guard [Lv. 450]"  then
					_G.Stop_Tween = true
					TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
					_G.Stop_Tween = nil
				elseif NameQuest == "SkyExp1Quest" then
					_G.Stop_Tween = true
					TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
					_G.Stop_Tween = nil
				elseif NameQuest == "ShipQuest1" then
					_G.Stop_Tween = true
					TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
					_G.Stop_Tween = nil
				elseif NameQuest == "ShipQuest2" then
					_G.Stop_Tween = true
					TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
					_G.Stop_Tween = nil
				elseif NameQuest == "FrostQuest" then
					_G.Stop_Tween = true
					TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
					_G.Stop_Tween = nil
				else
					Mix_Farm = true
					_G.Stop_Tween = true
					repeat wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
						wait(.05)
						game.Players.LocalPlayer.Character.Head:Destroy()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
					until (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0
					wait()
					_G.Stop_Tween = nil
					Mix_Farm = nil
				end
			end
		end)
	end

	function CheckQuestBoss()
		-- Old World
			if _G.SelectBoss == "Saber Expert" then
				MsBoss = "Saber Expert"
				NameBoss = "Saber Expert"
				CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
			elseif _G.SelectBoss == "The Saw" then
				MsBoss = "The Saw"
				NameBoss = "The Saw"
				CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
			elseif _G.SelectBoss == "Greybeard" then
				MsBoss = "Greybeard"
				NameBoss = "Greybeard"
				CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
			elseif _G.SelectBoss == "The Gorilla King" then
				MsBoss = "The Gorilla King" 
				NameBoss = "The Gorilla King"
				NameQuestBoss = "JungleQuest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
				CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Bobby" then
				MsBoss = "Bobby"
				NameBoss = "Bobby"
				NameQuestBoss = "BuggyQuest1"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
				CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Yeti" then
				MsBoss = "Yeti"
				NameBoss = "Yeti"
				NameQuestBoss = "SnowQuest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
				CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Mob Leader" then
				MsBoss = "Mob Leader"
				NameBoss = "Mob Leader"
				CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
			elseif _G.SelectBoss == "Vice Admiral" then
				MsBoss = "Vice Admiral"
				NameBoss = "Vice Admiral"
				NameQuestBoss = "MarineQuest2"
				QuestLvBoss = 2
				CFrameQBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
				CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Warden" then
				MsBoss = "Warden"
				NameBoss = "Warden"
				NameQuestBoss = "ImpelQuest"
				QuestLvBoss = 1
				CFrameQBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
				CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Chief Warden" then
				MsBoss = "Chief Warden"
				NameBoss = "Chief Warden"
				NameQuestBoss = "ImpelQuest"
				QuestLvBoss = 2
				CFrameQBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
				CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Swan" then
				MsBoss = "Swan"
				NameBoss = "Swan"
				NameQuestBoss = "ImpelQuest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
				CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Magma Admiral" then
				MsBoss = "Magma Admiral"
				NameBoss = "Magma Admiral"
				NameQuestBoss = "MagmaQuest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
				CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Fishman Lord" then
				MsBoss = "Fishman Lord"
				NameBoss = "Fishman Lord"
				NameQuestBoss = "FishmanQuest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
				CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
				if (CFrameQBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
				end
			elseif _G.SelectBoss == "Wysper" then
				MsBoss = "Wysper"
				NameBoss = "Wysper"
				NameQuestBoss = "SkyExp1Quest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
				CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
				if (CFrameQBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
				end
			elseif _G.SelectBoss == "Thunder God" then
				MsBoss = "Thunder God"
				NameBoss = "Thunder God"
				NameQuestBoss = "SkyExp2Quest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
				CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Cyborg" then
				MsBoss = "Cyborg"
				NameBoss = "Cyborg"
				NameQuestBoss = "FountainQuest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
				CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
				TelePBoss(CFrameBoss)
			-- New World
			elseif _G.SelectBoss == "Diamond" then
				MsBoss = "Diamond"
				NameBoss = "Diamond"
				NameQuestBoss = "Area1Quest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
				CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Jeremy" then
				MsBoss = "Jeremy"
				NameBoss = "Jeremy"
				NameQuestBoss = "Area2Quest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
				CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Fajita" then
				MsBoss = "Fajita"
				NameBoss = "Fajita"
				NameQuestBoss = "MarineQuest3"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
				CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Don Swan" then
				MsBoss = "Don Swan"
				NameBoss = "Don Swan"
				CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Smoke Admiral" then
				MsBoss = "Smoke Admiral"
				NameBoss = "Smoke Admiral"
				NameQuestBoss = "IceSideQuest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
				CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Cursed Captain" then
				MsBoss = "Cursed Captain"
				NameBoss = "Cursed Captain"
				CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
			elseif _G.SelectBoss == "Darkbeard" then
				MsBoss = "Darkbeard"
				NameBoss = "Darkbeard"
				CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
			elseif _G.SelectBoss == "Order" then
				MsBoss = "Order"
				NameBoss = "Order"
				CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
			elseif _G.SelectBoss == "Awakened Ice Admiral" then
				MsBoss = "Awakened Ice Admiral"
				NameBoss = "Awakened Ice Admiral"
				NameQuestBoss = "FrostQuest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
				CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Tide Keeper" then
				MsBoss = "Tide Keeper"
				NameBoss = "Tide Keeper"
				NameQuestBoss = "ForgottenQuest"             
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
				CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
				TelePBoss(CFrameBoss)
			-- Thire World
			elseif _G.SelectBoss == "Stone" then
				MsBoss = "Stone"
				NameBoss = "Stone"
				NameQuestBoss = "PiratePortQuest"             
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-290, 44, 5577)
				CFrameBoss = CFrame.new(-1085, 40, 6779)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Island Empress" then
				MsBoss = "Island Empress"
				NameBoss = "Island Empress"
				NameQuestBoss = "AmazonQuest2"             
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(5443, 602, 752)
				CFrameBoss = CFrame.new(5659, 602, 244)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Kilo Admiral" then
				MsBoss = "Kilo Admiral"
				NameBoss = "Kilo Admiral"
				NameQuestBoss = "MarineTreeIsland"             
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(2178, 29, -6737)
				CFrameBoss =CFrame.new(2846, 433, -7100)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Captain Elephant" then
				MsBoss = "Captain Elephant"
				NameBoss = "Captain Elephant"
				NameQuestBoss = "DeepForestIsland"             
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-13232, 333, -7631)
				CFrameBoss = CFrame.new(-13221, 325, -8405)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Beautiful Pirate" then
				MsBoss = "Beautiful Pirate"
				NameBoss = "Beautiful Pirate"
				NameQuestBoss = "DeepForestIsland2"             
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-12686, 391, -9902)
				CFrameBoss = CFrame.new(5182, 23, -20)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "rip_indra True Form" then
				MsBoss = "rip_indra True Form"
				NameBoss = "rip_indra True Form"
				CFrameBoss = CFrame.new(-5359, 424, -2735)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Longma" then
				MsBoss = "Longma"
				NameBoss = "Longma"
				CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Soul Reaper" then
				MsBoss = "Soul Reaper"
				NameBoss = "Soul Reaper"
				CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
				TelePBoss(CFrameBoss)
			elseif _G.SelectBoss == "Cake Queen" then
				MsBoss = "Cake Queen"
				NameBoss = "Cake Queen"
				NameQuestBoss = "IceCreamIslandQuest"             
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-821.267456, 65.9448776, -10964.3994, 0.814093888, -3.67296735e-08, -0.58073324, 3.30765637e-08, 1, -1.6879099e-08, 0.58073324, -5.46748513e-09, 0.814093888)
				CFrameBoss = CFrame.new(-715.467102, 381.69104, -11019.8896, 0.955998719, -1.07319993e-08, -0.293370903, 5.00311881e-09, 1, -2.02781667e-08, 0.293370903, 1.7918131e-08, 0.955998719)
				TelePBoss(CFrameBoss)
			end
		end

		function CheckBossQuest()
			if _G.Setting_table.Selectb == "Saber Expert [Lv. 200] [Boss]" then
				MsBoss = "Saber Expert"
				NameBoss = "Saber Expert"
				CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
			elseif _G.Setting_table.Selectb == "The Saw" then
				MsBoss = "The Saw [Lv. 100] [Boss]"
				NameBoss = "The Saw"
				CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
			elseif _G.Setting_table.Selectb == "Greybeard" then
				MsBoss = "Greybeard"
				NameBoss = "Greybeard"
				CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
			elseif _G.Setting_table.Selectb == "The Gorilla King" then
				MsBoss = "The Gorilla King"
				NameBoss = "The Gorilla King"
				NameQuestBoss = "JungleQuest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
				CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
			elseif _G.Setting_table.Selectb == "Bobby" then
				MsBoss = "Bobby"
				NameBoss = "Bobby"
				NameQuestBoss = "BuggyQuest1"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
				CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
			elseif _G.Setting_table.Selectb == "Yeti" then
				MsBoss = "Yeti"
				NameBoss = "Yeti"
				NameQuestBoss = "SnowQuest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
				CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
			elseif _G.Setting_table.Selectb == "Mob Leader" then
				MsBoss = "Mob Leader"
				NameBoss = "Mob Leader"
				CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
			elseif _G.Setting_table.Selectb == "Vice Admiral" then
				MsBoss = "Vice Admiral"
				NameBoss = "Vice Admiral"
				NameQuestBoss = "MarineQuest2"
				LevelQuestBoss = 2
				CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
				CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
			elseif _G.Setting_table.Selectb == "Warden" then
				MsBoss = "Warden"
				NameBoss = "Warden"
				NameQuestBoss = "ImpelQuest"
				LevelQuestBoss = 1
				CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
				CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
			elseif _G.Setting_table.Selectb == "Chief Warden" then
				MsBoss = "Chief Warden"
				NameBoss = "Chief Warden"
				NameQuestBoss = "ImpelQuest"
				LevelQuestBoss = 2
				CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
				CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
			elseif _G.Setting_table.Selectb == "Swan" then
				MsBoss = "Swan"
				NameBoss = "Swan"
				NameQuestBoss = "ImpelQuest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
				CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
			elseif _G.Setting_table.Selectb == "Magma Admiral" then
				MsBoss = "Magma Admiral"
				NameBoss = "Magma Admiral"
				NameQuestBoss = "MagmaQuest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
				CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
			elseif _G.Setting_table.Selectb == "Fishman Lord" then
				MsBoss = "Fishman Lord"
				NameBoss = "Fishman Lord"
				NameQuestBoss = "FishmanQuest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
				CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
			elseif _G.Setting_table.Selectb == "Wysper" then
				MsBoss = "Wysper"
				NameBoss = "Wysper"
				NameQuestBoss = "SkyExp1Quest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
				CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
			elseif _G.Setting_table.Selectb == "Thunder God [Lv. 575] [Boss]" then
				MsBoss = "Thunder God"
				NameBoss = "Thunder God"
				NameQuestBoss = "SkyExp2Quest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
				CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
			elseif _G.Setting_table.Selectb == "Cyborg" then
				MsBoss = "Cyborg"
				NameBoss = "Cyborg"
				NameQuestBoss = "FountainQuest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
				CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
				-- New World
			elseif _G.Setting_table.Selectb == "Diamond" then
				MsBoss = "Diamond"
				NameBoss = "Diamond"
				NameQuestBoss = "Area1Quest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
				CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
			elseif _G.Setting_table.Selectb == "Jeremy" then
				MsBoss = "Jeremy"
				NameBoss = "Jeremy"
				NameQuestBoss = "Area2Quest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
				CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
			elseif _G.Setting_table.Selectb == "Fajita" then
				MsBoss = "Fajita"
				NameBoss = "Fajita"
				NameQuestBoss = "MarineQuest3"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
				CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
			elseif _G.Setting_table.Selectb == "Don Swan" then
				MsBoss = "Don Swan"
				NameBoss = "Don Swan"
				CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
			elseif _G.Setting_table.Selectb == "Smoke Admiral" then
				MsBoss = "Smoke Admiral"
				NameBoss = "Smoke Admiral"
				NameQuestBoss = "IceSideQuest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
				CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
			elseif _G.Setting_table.Selectb == "Cursed Captain" then
				MsBoss = "Cursed Captain"
				NameBoss = "Cursed Captain"
				CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
			elseif _G.Setting_table.Selectb == "Darkbeard" then
				MsBoss = "Darkbeard"
				NameBoss = "Darkbeard"
				CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
			elseif _G.Setting_table.Selectb == "Order" then
				MsBoss = "Order"
				NameBoss = "Order"
				CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
			elseif _G.Setting_table.Selectb == "Awakened Ice Admiral" then
				MsBoss = "Awakened Ice Admiral"
				NameBoss = "Awakened Ice Admiral"
				NameQuestBoss = "FrostQuest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
				CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
			elseif _G.Setting_table.Selectb == "Tide Keeper" then
				MsBoss = "Tide Keeper"
				NameBoss = "Tide Keeper"
				NameQuestBoss = "ForgottenQuest"             
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
				CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
				-- Thire World
			elseif _G.Setting_table.Selectb == "Stone" then
				MsBoss = "Stone"
				NameBoss = "Stone"
				NameQuestBoss = "PiratePortQuest"             
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-290, 44, 5577)
				CFrameBoss = CFrame.new(-1085, 40, 6779)
			elseif _G.Setting_table.Selectb == "Island Empress" then
				MsBoss = "Island Empress"
				NameBoss = "Island Empress"
				NameQuestBoss = "AmazonQuest2"             
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(5443, 602, 752)
				CFrameBoss = CFrame.new(5659, 602, 244)
			elseif _G.Setting_table.Selectb == "Kilo Admiral" then
				MsBoss = "Kilo Admiral"
				NameBoss = "Kilo Admiral"
				NameQuestBoss = "MarineTreeIsland"             
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(2178, 29, -6737)
				CFrameBoss =CFrame.new(2846, 433, -7100)
			elseif _G.Setting_table.Selectb == "Captain Elephant" then
				MsBoss = "Captain Elephant"
				NameBoss = "Captain Elephant"
				NameQuestBoss = "DeepForestIsland"             
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-13232, 333, -7631)
				CFrameBoss = CFrame.new(-13221, 325, -8405)
			elseif _G.Setting_table.Selectb == "Beautiful Pirate" then
				MsBoss = "Beautiful Pirate"
				NameBoss = "Beautiful Pirate"
				NameQuestBoss = "DeepForestIsland2"             
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-12686, 391, -9902)
				CFrameBoss = CFrame.new(5182, 23, -20)
			elseif _G.Setting_table.Selectb == "Cake Queen" then
				MsBoss = "Cake Queen"
				NameBoss = "Cake Queen"
				NameQuestBoss = "IceCreamIslandQuest"             
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-716, 382, -11010)
				CFrameBoss = CFrame.new(-821, 66, -10965)
			elseif _G.Setting_table.Selectb == "rip_indra True Form" then
				MsBoss = "rip_indra True Form"
				NameBoss = "rip_indra True Form"
				CFrameBoss = CFrame.new(-5359, 424, -2735)
			elseif _G.Setting_table.Selectb == "Longma" then
				MsBoss = "Longma"
				NameBoss = "Longma"
				CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
			elseif _G.Setting_table.Selectb == "Soul Reaper" then
				MsBoss = "Soul Reaper"
				NameBoss = "Soul Reaper"
				CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
			end
		end
		
		_G.GetBoss = false
		function GetBossName()
			for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
				if not _G.GetBoss then
					-- World 1
					if v.Name == "The Gorilla King" and game.Players.localPlayer.Data.Level.Value >= 20  then
						_G.Setting_table.Selectb = "The Gorilla King"
					elseif v.Name == "Bobby" and game.Players.localPlayer.Data.Level.Value >= 55  then
						_G.Setting_table.Selectb = "Bobby" 
					elseif v.Name == "Yeti" and game.Players.localPlayer.Data.Level.Value >= 105  then
						_G.Setting_table.Selectb = "Yeti"
					elseif v.Name == "Mob Leader"  and game.Players.localPlayer.Data.Level.Value >= 120 then
						_G.Setting_table.Selectb = "Mob Leader"
					elseif v.Name == "Vice Admiral"  and game.Players.localPlayer.Data.Level.Value >= 130 then
						_G.Setting_table.Selectb = "Vice Admiral"
					elseif v.Name == "Warden" and game.Players.localPlayer.Data.Level.Value >= 175 then
						_G.Setting_table.Selectb = "Warden"
					elseif v.Name == "Saber Expert" and game.Workspace.Map.Jungle.Final.Part.Transparency == 1 then
						_G.Setting_table.Selectb = "Saber Expert"
					elseif v.Name == "Chief Warden"  and game.Players.localPlayer.Data.Level.Value >= 200 then
						_G.Setting_table.Selectb = "Chief Warden"
					elseif v.Name == "Swan"  and game.Players.localPlayer.Data.Level.Value >= 250 then
						_G.Setting_table.Selectb = "Swan"
					elseif v.Name == "Magma Admiral" and game.Players.localPlayer.Data.Level.Value >= 350  then
						_G.Setting_table.Selectb = "Magma Admiral"
					elseif v.Name == "Fishman Lord" and game.Players.localPlayer.Data.Level.Value >= 425  then
						_G.Setting_table.Selectb = "Fishman Lord"
					elseif v.Name == "Wysper" and game.Players.localPlayer.Data.Level.Value >= 500 then
						_G.Setting_table.Selectb = "Wysper"
					elseif v.Name == "Thunder God"  and game.Players.localPlayer.Data.Level.Value >= 575 then
						_G.Setting_table.Selectb = "Thunder God"
					elseif v.Name == "Cyborg" and game.Players.localPlayer.Data.Level.Value >= 675 then
						_G.Setting_table.Selectb = "Cyborg"
						-- World2
					elseif v.Name == "Diamond" and game.Players.localPlayer.Data.Level.Value >= 750 then
						_G.Setting_table.Selectb = "Diamond"
					elseif v.Name == "Jeremy" and game.Players.localPlayer.Data.Level.Value >= 850 then
						_G.Setting_table.Selectb = "Jeremy"
					elseif v.Name == "Fajita" and game.Players.localPlayer.Data.Level.Value >= 925  then
						_G.Setting_table.Selectb = "Fajita"
					elseif v.Name == "Don Swan" and game.Players.localPlayer.Data.Level.Value >= 1000 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
						_G.Setting_table.Selectb = "Don Swan" 
					elseif v.Name == "Smoke Admiral" and game.Players.localPlayer.Data.Level.Value >= 1150 then
						_G.Setting_table.Selectb = "Smoke Admiral"
					elseif v.Name == "Cursed Captain" and game.Players.localPlayer.Data.Level.Value >= 1325 then
						_G.Setting_table.Selectb = "Cursed Captain"
					elseif v.Name == "Awakened Ice Admiral" and game.Players.localPlayer.Data.Level.Value >= 1400  then
						_G.Setting_table.Selectb = "Awakened Ice Admiral"
					elseif v.Name == "Tide Keeper" and game.Players.localPlayer.Data.Level.Value >= 1475  then
						_G.Setting_table.Selectb = "Tide Keeper"
						-- World3
					elseif v.Name == "Stone" and game.Players.localPlayer.Data.Level.Value >= 1550 then
						_G.Setting_table.Selectb = "Stone"
					elseif v.Name == "Island Empress" and game.Players.localPlayer.Data.Level.Value >= 1675 then
						_G.Setting_table.Selectb = "Island Empress"
					elseif v.Name == "Kilo Admiral" and game.Players.localPlayer.Data.Level.Value >= 1750 then
						_G.Setting_table.Selectb = "Kilo Admiral"
					elseif v.Name == "Captain Elephant" and game.Players.localPlayer.Data.Level.Value >= 1875 then
						_G.Setting_table.Selectb = "Captain Elephant"
					elseif v.Name == "Beautiful Pirate" and game.Players.localPlayer.Data.Level.Value >= 1950 then
						_G.Setting_table.Selectb = "Beautiful Pirate"
					elseif v.Name == "Cake Queen" and game.Players.localPlayer.Data.Level.Value >= 2175 then
						_G.Setting_table.Selectb = "Cake Queen"
					end 
				end 
			end
		end
		

		function CheckLevel()
			local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
			if Old_World then
				if Lv == 1 or Lv <= 9 or SelectMonster == "Bandit" then -- Bandit
					Ms = "Bandit"
					NameQuest = "BanditQuest1"
					QuestLv = 1
					NameMon = "Bandit"
					CFrameQ = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
					CFrameMon = CFrame.new(1038.5533447266, 41.296249389648, 1576.5098876953)
				elseif Lv == 10 or Lv <= 14 or SelectMonster == "Monkey" then -- Monkey
					Ms = "Monkey"
					NameQuest = "JungleQuest"
					QuestLv = 1
					NameMon = "Monkey"
					CFrameQ = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)
					CFrameMon = CFrame.new(-1448.1446533203, 50.851993560791, 63.60718536377)
				elseif Lv == 15 or Lv <= 29 or SelectMonster == "Gorilla" then -- Gorilla
					Ms = "Gorilla"
					NameQuest = "JungleQuest"
					QuestLv = 2
					NameMon = "Gorilla"
					CFrameQ = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)
					CFrameMon = CFrame.new(-1142.6488037109, 40.462348937988, -515.39227294922)
				elseif Lv == 30 or Lv <= 39 or SelectMonster == "Pirate" then -- Pirate
					Ms = "Pirate"
					NameQuest = "BuggyQuest1"
					QuestLv = 1
					NameMon = "Pirate"
					CFrameQ = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)
					CFrameMon = CFrame.new(-1201.0881347656, 40.628940582275, 3857.5966796875)
				elseif Lv == 40 or Lv <= 59 or SelectMonster == "Brute" then -- Brute
					Ms = "Brute"
					NameQuest = "BuggyQuest1"
					QuestLv = 2
					NameMon = "Brute"
					CFrameQ = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)
					CFrameMon = CFrame.new(-1387.5324707031, 24.592035293579, 4100.9575195313)
				elseif Lv == 60 or Lv <= 74 or SelectMonster == "Desert Bandit" then -- Desert Bandit
					Ms = "Desert Bandit"
					NameQuest = "DesertQuest"
					QuestLv = 1
					NameMon = "Desert Bandit"
					CFrameQ = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
					CFrameMon = CFrame.new(984.99896240234, 16.109552383423, 4417.91015625)
				elseif Lv == 75 or Lv <= 89 or SelectMonster == "Desert Officer" then -- Desert Officer
					Ms = "Desert Officer"
					NameQuest = "DesertQuest"
					QuestLv = 2
					NameMon = "Desert Officer"
					CFrameQ = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)
					CFrameMon = CFrame.new(1547.1510009766, 14.452038764954, 4381.8002929688)
				elseif Lv == 90 or Lv <= 99 or SelectMonster == "Snow Bandit" then -- Snow Bandit
					Ms = "Snow Bandit"
					NameQuest = "SnowQuest"
					QuestLv = 1
					NameMon = "Snow Bandit"
					CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
					CFrameMon = CFrame.new(1356.3028564453, 105.76865386963, -1328.2418212891)
				elseif Lv == 100 or Lv <= 119 or SelectMonster == "Snowman" then -- Snowman
					Ms = "Snowman"
					NameQuest = "SnowQuest"
					QuestLv = 2
					NameMon = "Snowman"
					CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
					CFrameMon = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
				elseif Lv == 120 or Lv <= 149 or SelectMonster == "Chief Petty Officer" then -- Chief Petty Officer
					Ms = "Chief Petty Officer"
					NameQuest = "MarineQuest2"
					QuestLv = 1
					NameMon = "Chief Petty Officer"
					CFrameQ = CFrame.new(-5035.49609375, 28.677835464478, 4324.1840820313)
					CFrameMon = CFrame.new(-4931.1552734375, 65.793113708496, 4121.8393554688)
				elseif Lv == 150 or Lv <= 174 or SelectMonster == "Sky Bandit" then -- Sky Bandit
					Ms = "Sky Bandit"
					NameQuest = "SkyQuest"
					QuestLv = 1
					NameMon = "Sky Bandit"
					CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
					CFrameMon = CFrame.new(-4955.6411132813, 365.46365356445, -2908.1865234375)
				elseif Lv == 175 or Lv <= 249 or SelectMonster == "Dark Master" then -- Dark Master
					Ms = "Dark Master"
					NameQuest = "SkyQuest"
					QuestLv = 2
					NameMon = "Dark Master"
					CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
					CFrameMon = CFrame.new(-5148.1650390625, 439.04571533203, -2332.9611816406)
				elseif Lv == 250 or Lv <= 274 or SelectMonster == "Toga Warrior" then -- Toga Warrior
					Ms = "Toga Warrior"
					NameQuest = "ColosseumQuest"
					QuestLv = 1
					NameMon = "Toga Warrior"
					CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
					CFrameMon = CFrame.new(-1872.5166015625, 49.080215454102, -2913.810546875)
				elseif Lv == 275 or Lv <= 299 or SelectMonster == "Gladiator" then -- Gladiator
					Ms = "Gladiator"
					NameQuest = "ColosseumQuest"
					QuestLv = 2
					NameMon = "Gladiator"
					CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
					CFrameMon = CFrame.new(-1521.3740234375, 81.203170776367, -3066.3139648438)
				elseif Lv == 300 or Lv <= 329 or SelectMonster == "Military Soldier" then -- Military Soldier
					Ms = "Military Soldier"
					NameQuest = "MagmaQuest"
					QuestLv = 1
					NameMon = "Military Soldier"
					CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
					CFrameMon = CFrame.new(-5369.0004882813, 61.24352645874, 8556.4921875)
				elseif Lv == 330 or Lv <= 374 or SelectMonster == "Military Spy" then -- Military Spy
					Ms = "Military Spy"
					NameQuest = "MagmaQuest"
					QuestLv = 2
					NameMon = "Military Spy"
					CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
					CFrameMon = CFrame.new(-5984.0532226563, 82.14656829834, 8753.326171875)
				elseif Lv == 375 or Lv <= 399 or SelectMonster == "Fishman Warrior" then -- Fishman Warrior 
					_G.FM = true
					Ms = "Fishman Warrior"
					NameQuest = "FishmanQuest"
					QuestLv = 1
					NameMon = "Fishman Warrior"
					CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
					CFrameMon = CFrame.new(60844.10546875, 98.462875366211, 1298.3985595703)
					if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
					end
				elseif Lv == 400 or Lv <= 449 or SelectMonster == "Fishman Commando" then -- Fishman Commando
					_G.FM = true
					Ms = "Fishman Commando"
					NameQuest = "FishmanQuest"
					QuestLv = 2
					NameMon = "Fishman Commando"
					CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
					CFrameMon = CFrame.new(61738.3984375, 64.207321166992, 1433.8375244141)
					if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
					end
				elseif Lv == 450 or Lv <= 474 or SelectMonster == "God's Guard" then -- God's Guard
					_G.FM = false
					Ms = "God's Guard"
					NameQuest = "SkyExp1Quest"
					QuestLv = 1
					NameMon = "God's Guard"
					CFrameQ = CFrame.new(-4721.8603515625, 845.30297851563, -1953.8489990234)
					CFrameMon = CFrame.new(-4628.0498046875, 866.92877197266, -1931.2352294922)
					if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
					end
				elseif Lv == 475 or Lv <= 524 or SelectMonster == "Shanda" then -- Shanda
					_G.FM = false
					Ms = "Shanda"
					NameQuest = "SkyExp1Quest"
					QuestLv = 2
					NameMon = "Shanda"
					CFrameQ = CFrame.new(-7863.1596679688, 5545.5190429688, -378.42266845703)
					CFrameMon = CFrame.new(-7685.1474609375, 5601.0751953125, -441.38876342773)
					if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
					end
				elseif Lv == 525 or Lv <= 549 or SelectMonster == "Royal Squad" then -- Royal Squad
					Ms = "Royal Squad"
					NameQuest = "SkyExp2Quest"
					QuestLv = 1
					NameMon = "Royal Squad"
					CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
					CFrameMon = CFrame.new(-7654.2514648438, 5637.1079101563, -1407.7550048828)
				elseif Lv == 550 or Lv <= 624 or SelectMonster == "Royal Soldier" then -- Royal Soldier
					Ms = "Royal Soldier"
					NameQuest = "SkyExp2Quest"
					QuestLv = 2
					NameMon = "Royal Soldier"
					CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
					CFrameMon = CFrame.new(-7760.4106445313, 5679.9077148438, -1884.8112792969)
				elseif Lv == 625 or Lv <= 649 or SelectMonster == "Galley Pirate" then -- Galley Pirate
					Ms = "Galley Pirate"
					NameQuest = "FountainQuest"
					QuestLv = 1
					NameMon = "Galley Pirate"
					CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
					CFrameMon = CFrame.new(5557.1684570313, 152.32717895508, 3998.7758789063)
				elseif Lv >= 650 or SelectMonster == "Galley Captain" then -- Galley Captain
					Ms = "Galley Captain"
					NameQuest = "FountainQuest"
					QuestLv = 2
					NameMon = "Galley Captain"
					CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
					CFrameMon = CFrame.new(5677.6772460938, 92.786109924316, 4966.6323242188)
				end
			end
			if New_World then
				if Lv == 700 or Lv <= 724 or SelectMonster == "Raider" then -- Raider
					Ms = "Raider"
					NameQuest = "Area1Quest"
					QuestLv = 1
					NameMon = "Raider"
					CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
					CFrameMon = CFrame.new(68.874565124512, 93.635643005371, 2429.6752929688)
				elseif Lv == 725 or Lv <= 774 or SelectMonster == "Mercenary" then -- Mercenary
					Ms = "Mercenary"
					NameQuest = "Area1Quest"
					QuestLv = 2
					NameMon = "Mercenary"
					CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
					CFrameMon = CFrame.new(-864.85009765625, 122.47104644775, 1453.1505126953)
				elseif Lv == 775 or Lv <= 799 or SelectMonster == "Swan Pirate" then -- Swan Pirate
					Ms = "Swan Pirate"
					NameQuest = "Area2Quest"
					QuestLv = 1
					NameMon = "Swan Pirate"
					CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
					CFrameMon = CFrame.new(1065.3669433594, 137.64012145996, 1324.3798828125)
				elseif Lv == 800 or Lv <= 874 or SelectMonster == "Factory Staff" then -- Factory Staff
					Ms = "Factory Staff"
					NameQuest = "Area2Quest"
					QuestLv = 2
					NameMon = "Factory Staff"
					CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
					CFrameMon = CFrame.new(533.22045898438, 128.46876525879, 355.62615966797)
				elseif Lv == 875 or Lv <= 899 or SelectMonster == "Marine Lieutenant" then -- Marine Lieutenant
					Ms = "Marine Lieutenant"
					NameQuest = "MarineQuest3"
					QuestLv = 1
					NameMon = "Marine Lieutenant"
					CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
					CFrameMon = CFrame.new(-2489.2622070313, 84.613594055176, -3151.8830566406)
				elseif Lv == 900 or Lv <= 949 or SelectMonster == "Marine Captain" then -- Marine Captain
					Ms = "Marine Captain"
					NameQuest = "MarineQuest3"
					QuestLv = 2
					NameMon = "Marine Captain"
					CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
					CFrameMon = CFrame.new(-2335.2026367188, 79.786659240723, -3245.8674316406)
					if Lv >= 925 then
						_G.SelectBoss = "Fajita [Lv. 925] [Boss]"
					end
				elseif Lv == 950 or Lv <= 974 or SelectMonster == "Zombie" then -- Zombie
					Ms = "Zombie"
					NameQuest = "ZombieQuest"
					QuestLv = 1
					NameMon = "Zombie"
					CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
					CFrameMon = CFrame.new(-5536.4970703125, 101.08577728271, -835.59075927734)
				elseif Lv == 975 or Lv <= 999 or SelectMonster == "Vampire" then -- Vampire
					Ms = "Vampire"
					NameQuest = "ZombieQuest"
					QuestLv = 2
					NameMon = "Vampire"
					CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
					CFrameMon = CFrame.new(-5806.1098632813, 16.722528457642, -1164.4384765625)
				elseif Lv == 1000 or Lv <= 1049 or SelectMonster == "Snow Trooper" then -- Snow Trooper
					Ms = "Snow Trooper"
					NameQuest = "SnowMountainQuest"
					QuestLv = 1
					NameMon = "Snow Trooper"
					CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
					CFrameMon = CFrame.new(535.21051025391, 432.74209594727, -5484.9165039063)
				elseif Lv == 1050 or Lv <= 1099 or SelectMonster == "Winter Warrior" then -- Winter Warrior
					Ms = "Winter Warrior"
					NameQuest = "SnowMountainQuest"
					QuestLv = 2
					NameMon = "Winter Warrior"
					CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
					CFrameMon = CFrame.new(1234.4449462891, 456.95419311523, -5174.130859375)
				elseif Lv == 1100 or Lv <= 1124 or SelectMonster == "Lab Subordinate" then -- Lab Subordinate
					Ms = "Lab Subordinate"
					NameQuest = "IceSideQuest"
					QuestLv = 1
					NameMon = "Lab Subordinate"
					CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
					CFrameMon = CFrame.new(-5720.5576171875, 63.309471130371, -4784.6103515625)
				elseif Lv == 1125 or Lv <= 1174 or SelectMonster == "Horned Warrior" then -- Horned Warrior
					Ms = "Horned Warrior"
					NameQuest = "IceSideQuest"
					QuestLv = 2
					NameMon = "Horned Warrior"
					CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
					CFrameMon = CFrame.new(-6292.751953125, 91.181983947754, -5502.6499023438)
				elseif Lv == 1175 or Lv <= 1199 or SelectMonster == "Magma Ninja" then -- Magma Ninja
					Ms = "Magma Ninja"
					NameQuest = "FireSideQuest"
					QuestLv = 1
					NameMon = "Magma Ninja"
					CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
					CFrameMon = CFrame.new(-5461.8388671875, 130.36347961426, -5836.4702148438)
				elseif Lv == 1200 or Lv <= 1249 or SelectMonster == "Lava Pirate" then -- Lava Pirate
					Ms = "Lava Pirate"
					NameQuest = "FireSideQuest"
					QuestLv = 2
					NameMon = "Lava Pirate"
					CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
					CFrameMon = CFrame.new(-5251.1889648438, 55.164535522461, -4774.4096679688)
				elseif Lv == 1250 or Lv <= 1274 or SelectMonster == "Ship Deckhand" then -- Ship Deckhand
					Ms = "Ship Deckhand"
					NameQuest = "ShipQuest1"
					QuestLv = 1
					NameMon = "Ship Deckhand"
					CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
					CFrameMon = CFrame.new(921.12365722656, 125.9839553833, 33088.328125)
					if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
					end
				elseif Lv == 1275 or Lv <= 1299 or SelectMonster == "Ship Engineer" then -- Ship Engineer
					Ms = "Ship Engineer"
					NameQuest = "ShipQuest1"
					QuestLv = 2
					NameMon = "Ship Engineer"
					CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
					CFrameMon = CFrame.new(886.28179931641, 40.47790145874, 32800.83203125)
					if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
					end
				elseif Lv == 1300 or Lv <= 1324 or SelectMonster == "Ship Steward" then -- Ship Steward
					Ms = "Ship Steward"
					NameQuest = "ShipQuest2"
					QuestLv = 1
					NameMon = "Ship Steward"
					CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
					CFrameMon = CFrame.new(943.85504150391, 129.58183288574, 33444.3671875)
					if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
					end
				elseif Lv == 1325 or Lv <= 1349 or SelectMonster == "Ship Officer" then -- Ship Officer
					Ms = "Ship Officer"
					NameQuest = "ShipQuest2"
					QuestLv = 2
					NameMon = "Ship Officer"
					CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
					CFrameMon = CFrame.new(955.38458251953, 181.08335876465, 33331.890625)
					if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
					end
				elseif Lv == 1350 or Lv <= 1374 or SelectMonster == "Arctic Warrior" then -- Arctic Warrior
					Ms = "Arctic Warrior"
					NameQuest = "FrostQuest"
					QuestLv = 1
					NameMon = "Arctic Warrior"
					CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
					CFrameMon = CFrame.new(5935.4541015625, 77.26016998291, -6472.7568359375)
					if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
					end
				elseif Lv == 1375 or Lv <= 1424 or SelectMonster == "Snow Lurker" then -- Snow Lurker
					Ms = "Snow Lurker"
					NameQuest = "FrostQuest"
					QuestLv = 2
					NameMon = "Snow Lurker"
					CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
					CFrameMon = CFrame.new(5628.482421875, 57.574996948242, -6618.3481445313)
				elseif Lv == 1425 or Lv <= 1449 or SelectMonster == "Sea Soldier" then -- Sea Soldier
					Ms = "Sea Soldier"
					NameQuest = "ForgottenQuest"
					QuestLv = 1
					NameMon = "Sea Soldier"
					CFrameQ = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
					CFrameMon = CFrame.new(-3185.0153808594, 58.789089202881, -9663.6064453125)
				elseif Lv >= 1450 or SelectMonster == "Water Fighter" then -- Water Fighter
					Ms = "Water Fighter"
					NameQuest = "ForgottenQuest"
					QuestLv = 2
					NameMon = "Water Fighter"
					CFrameQ = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)
					CFrameMon = CFrame.new(-3262.9301757813, 298.69036865234, -10552.529296875)
				end
			end
			if Three_World then
				if Lv == 1500 or Lv <= 1524 or SelectMonster == "Pirate Millionaire" then -- Pirate Millionaire
					Ms = "Pirate Millionaire"
					NameQuest = "PiratePortQuest"
					QuestLv = 1
					NameMon = "Pirate Millionaire"
					CFrameQ = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
					CFrameMon = CFrame.new(-435.68109130859, 189.69866943359, 5551.0756835938)
				elseif Lv == 1525 or Lv <= 1574 or SelectMonster == "Pistol Billionaire" then -- Pistol Billoonaire
					Ms = "Pistol Billionaire"
					NameQuest = "PiratePortQuest"
					QuestLv = 2
					NameMon = "Pistol Billionaire"
					CFrameQ = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
					CFrameMon = CFrame.new(-236.53652954102, 217.46676635742, 6006.0883789063)
				elseif Lv == 1575 or Lv <= 1599 or SelectMonster == "Dragon Crew Warrior" then -- Dragon Crew Warrior
					Ms = "Dragon Crew Warrior"
					NameQuest = "AmazonQuest"
					QuestLv = 1
					NameMon = "Dragon Crew Warrior"
					CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
					CFrameMon = CFrame.new(6301.9975585938, 104.77153015137, -1082.6075439453)
				elseif Lv == 1600 or Lv <= 1624 or SelectMonster == "Dragon Crew Archer" then -- Dragon Crew Archer
					Ms = "Dragon Crew Archer"
					NameQuest = "AmazonQuest"
					QuestLv = 2
					NameMon = "Dragon Crew Archer"
					CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
					CFrameMon = CFrame.new(6831.1171875, 441.76708984375, 446.58615112305)
				elseif Lv == 1625 or Lv <= 1649 or SelectMonster == "Female Islander" then -- Female Islander
					Ms = "Female Islander"
					NameQuest = "AmazonQuest2"
					QuestLv = 1
					NameMon = "Female Islander"
					CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
					CFrameMon = CFrame.new(5792.5166015625, 848.14392089844, 1084.1818847656)
				elseif Lv == 1650 or Lv <= 1699 or SelectMonster == "Giant Islander" then -- Giant Islander
					Ms = "Giant Islander"
					NameQuest = "AmazonQuest2"
					QuestLv = 2
					NameMon = "Giant Islander"
					CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
					CFrameMon = CFrame.new(5009.5068359375, 664.11071777344, -40.960144042969)
				elseif Lv == 1700 or Lv <= 1724 or SelectMonster == "Marine Commodore" then -- Marine Commodore
					Ms = "Marine Commodore"
					NameQuest = "MarineTreeIsland"
					QuestLv = 1
					NameMon = "Marine Commodore"
					CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
					CFrameMon = CFrame.new(2198.0063476563, 128.71075439453, -7109.5043945313)
				elseif Lv == 1725 or Lv <= 1774 or SelectMonster == "Marine Rear Admiral" then -- Marine Rear Admiral
					Ms = "Marine Rear Admiral"
					NameQuest = "MarineTreeIsland"
					QuestLv = 2
					NameMon = "Marine Rear Admiral"
					CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
					CFrameMon = CFrame.new(3294.3142089844, 385.41125488281, -7048.6342773438)
				elseif Lv == 1775 or Lv <= 1799 or SelectMonster == "Fishman Raider" then -- Fishman Raide
					Ms = "Fishman Raider"
					NameQuest = "DeepForestIsland3"
					QuestLv = 1
					NameMon = "Fishman Raider"
					CFrameQ = CFrame.new(-10582.759765625, 331.78845214844, -8757.666015625)
					CFrameMon = CFrame.new(-10553.268554688, 521.38439941406, -8176.9458007813)
				elseif Lv == 1800 or Lv <= 1824 or SelectMonster == "Fishman Captain" then -- Fishman Captain
					Ms = "Fishman Captain"
					NameQuest = "DeepForestIsland3"
					QuestLv = 2
					NameMon = "Fishman Captain"
					CFrameQ = CFrame.new(-10583.099609375, 331.78845214844, -8759.4638671875)
					CFrameMon = CFrame.new(-10789.401367188, 427.18637084961, -9131.4423828125)
				elseif Lv == 1825 or Lv <= 1849 or SelectMonster == "Forest Pirate" then -- Forest Pirate
					Ms = "Forest Pirate"
					NameQuest = "DeepForestIsland"
					QuestLv = 1
					NameMon = "Forest Pirate"
					CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
					CFrameMon = CFrame.new(-13489.397460938, 400.30349731445, -7770.251953125)
				elseif Lv == 1850 or Lv <= 1899 or SelectMonster == "Mythological Pirate" then -- Mythological Pirate
					Ms = "Mythological Pirate"
					NameQuest = "DeepForestIsland"
					QuestLv = 2
					NameMon = "Mythological Pirate"
					CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
					CFrameMon = CFrame.new(-13508.616210938, 582.46228027344, -6985.3037109375)
				elseif Lv >= 1900 and Lv <= 1924 or SelectMonster == "Jungle Pirate" then -- Jungle Pirate
					Ms = "Jungle Pirate"
					NameQuest = "DeepForestIsland2"
					QuestLv = 1
					NameMon = "Jungle Pirate"
					CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
					CFrameMon = CFrame.new(-12267.103515625, 459.75262451172, -10277.200195313)
				elseif Lv >= 1925 and Lv <= 1974 or SelectMonster == "Musketeer Pirate" then -- Musketeer Pirate
					Ms = "Musketeer Pirate"
					NameQuest = "DeepForestIsland2"
					QuestLv = 2
					NameMon = "Musketeer Pirate"
					CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
					CFrameMon = CFrame.new(-13291.5078125, 520.47338867188, -9904.638671875)
				elseif Lv >= 1975 and Lv <= 1999 or SelectMonster == "Reborn Skeleton" then -- Reborn Skeleton
					Ms = "Musketeer Pirate"
					NameQuest = "DeepForestIsland2"
					QuestLv = 2
					NameMon = "Musketeer Pirate"
					CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
					CFrameMon = CFrame.new(-13291.5078125, 520.47338867188, -9904.638671875)
				elseif Lv >= 2000 and Lv <= 2024 or SelectMonster == "Living Zombie" then -- Living Zombie
					Ms = "Living Zombie"
					NameQuest = "HauntedQuest1"
					QuestLv = 2
					NameMon = "Living Zombie"
					CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305)
					CFrameMon = CFrame.new(-10103.7529, 238.565979, 6179.75977)
				elseif Lv >= 2025 and Lv <= 2049 or SelectMonster == "Demonic Soul" then -- Demonic Soul
					Ms = "Demonic Soul"
					NameQuest = "HauntedQuest1"
					QuestLv = 1
					NameMon = "Demonic Souls"
					CFrameQ = CFrame.new(-9515.39551, 172.266037, 6078.89746)
					CFrameMon = CFrame.new(-9709.30762, 204.695892, 6044.04688)
				elseif Lv >= 2050 and Lv <= 2074 or SelectMonster == "Posessed Mummy" then -- Posessed Mummy
					Ms = "Posessed Mummy"
					NameQuest = "HauntedQuest2"
					QuestLv = 2
					NameMon = "Posessed Mummys"
					CFrameQ = CFrame.new(-9515.39551, 172.266037, 6078.89746)
					CFrameMon = CFrame.new(-9554.11035, 65.6141663, 6041.73584)
				elseif Lv >= 2075 and Lv <= 2099 or SelectMonster == "Peanut Scout" then -- Peanut Scout
					Ms = "Peanut Scout"
					NameQuest = "PeanutQuest1"
					QuestLv = 1
					NameMon = "Peanut Scout"
					CFrameQ = CFrame.new(-2104.453125, 38.129974365234, -10194.0078125)
					CFrameMon = CFrame.new(-2068.0949707031, 76.512603759766, -10117.150390625)
				elseif Lv >= 2100 and Lv <= 2124 or SelectMonster == "Peanut President" then -- Peanut President
					Ms = "Peanut President"
					NameQuest = "PeanutQuest2"
					QuestLv = 2
					NameMon = "Peanut Presidents"
					CFrameQ = CFrame.new(-2104.453125, 38.129974365234, -10194.0078125)
					CFrameMon = CFrame.new(-2067.33203125, 90.557350158691, -10552.051757812)
				elseif Lv >= 2125 and Lv <= 2149 or SelectMonster == "Ice Cream Chef" then --Ice Cream Chef
					Ms = "Ice Cream Chef"
					NameQuest = "IceCreamQuest1"
					QuestLv = 1
					NameMon = "	Ice Cream Chefs"
					CFrameQ = CFrame.new(-821.35913085938, 65.845329284668, -10965.2578125)
					CFrameMon = CFrame.new(-796.37261962891, 110.95275878906, -10847.473632812)
				elseif Lv >= 2150 and Lv <= 2200 or SelectMonster == "Ice Cream Commander" then -- Ice Cream Commander
					Ms = "Ice Cream Commander"
					NameQuest = "IceCreamIslandQuest"
					QuestLv = 2
					NameMon = "Ice Cream Commanders"
					CFrameQ = CFrame.new(-821.35913085938, 65.845329284668, -10965.2578125)
					CFrameMon = CFrame.new(-697.65338134766, 174.48368835449, -11218.38671875)
				elseif Lv >= 2200 and Lv <= 2250 or SelectMonster == "Ice Cream Commander" then -- Ice Cream Commander
					Ms = "Cookie Crafter"
					NameQuest = "CakeQuest1"
					QuestLv = 1
					NameMon = "Cookie Crafters"
					CFrameQ = CFrame.new(-2017.4874267578125, 36.85276412963867, -12027.53515625)
					CFrameMon = CFrame.new(-2358.5791015625, 36.85615539550781, -12111.052734375)
				elseif Lv >= 2225 and Lv <= 2299 or SelectMonster == "Cake Guard" then 
					Ms = "Cake Guard"
					NameQuest = "CakeQuest1"
					QuestLv = 2
					NameMon = "Cake Guards"
					CFrameMon = CFrame.new(-1430.4925537109375, 36.85621643066406, -12322.162109375)
					CFrameQ = CFrame.new(-2017.4874267578125, 36.85276412963867, -12027.53515625)
				elseif Lv >= 2300 and Lv <= 2324 or SelectMonster == "Cocoa Warrior" then 
					Ms = "Cocoa Warrior"
					NameQuest = "ChocQuest1"
					QuestLv = 1
					NameMon = "Cocoa Warrior"
					CFrameQ = CFrame.new(232.46937561035156, 30.263864517211914, -12199.86328125)
					CFrameMon = CFrame.new(-16.506715774536133, 70.69639587402344, -12338.564453125)
                elseif Lv >= 2325 and Lv <= 2349 or SelectMonster == "Chocolate Bar Battler" then 
					Ms = "Chocolate Bar Battler"
					NameQuest = "ChocQuest1"
					QuestLv = 2
					NameMon = "Chocolate Bar Battler "
					CFrameQ = CFrame.new(232.46937561035156, 30.263864517211914, -12199.86328125)
					CFrameMon = CFrame.new(780.2754516601562, 75.43675994873047, -12732.5732421875)
                elseif Lv >= 2350 and Lv <= 2374 or SelectMonster == "Sweet Thief" then 
					Ms = "Sweet Thief"
					NameQuest = "ChocQuest2"
					QuestLv = 1
					NameMon = "Cake Guard"
					CFrameQ = CFrame.new(151.9495391845703, 30.66791343688965, -12773.796875)
					CFrameMon = CFrame.new(69.60169219970703, 77.22183990478516, -12631.5205078125)
                elseif Lv >= 2375 and Lv <= 2399 or SelectMonster == "Candy Rebel" then 
					Ms = "Candy Rebel"
					NameQuest = "ChocQuest2"
					QuestLv = 2
					NameMon = "Candy Rebel"
					CFrameQ = CFrame.new(151.9495391845703, 30.66791343688965, -12773.796875)
					CFrameMon = CFrame.new(32.20514678955078, 77.48395538330078, -12900.884765625)
                elseif Lv >= 2400 and Lv <= 2424 or SelectMonster == "Candy Pirate" then 
					Ms = "Candy Pirate"
					NameQuest = "CandyQuest1"
					QuestLv = 1
					NameMon = "Candy Pirate"
					CFrameQ = CFrame.new(-1148.7237548828125, 20.353158950805664, -14445.751953125)
					CFrameMon = CFrame.new(-1353.9947509765625, 14.107321739196777, -14548.1103515625)
				elseif Lv >= 2425 and Lv <= 2449 or SelectMonster == "Snow Demon" then 
					Ms = "Snow Demon"
					NameQuest = "CandyQuest1"
					QuestLv = 2
					NameMon = "Snow Demon"
					CFrameQ = CFrame.new(-1148.7237548828125, 20.353158950805664, -14445.751953125)
					CFrameMon = CFrame.new(-883.241455, 40.9553833, -14538.4951, -0.28144443, -1.18274158e-07, 0.959577501, 1.83865634e-08, 1, 1.28649276e-07, -0.959577501, 5.38509575e-08, -0.28144443)
				elseif Lv >= 2450 and Lv <= 2524 or SelectMonster == "Isle Outlaw" then 
					Ms = "Isle Outlaw"
					NameQuest = "TikiQuest1"
					QuestLv = 1
					NameMon = "Isle Outlaw"
					CFrameQ = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
					CFrameMon = CFrame.new(-16442.814453125, 116.13899993896484, -264.4637756347656)
                elseif Lv >= 2525 or SelectMonster == "Island Boy" then 
					Ms = "Island Boy"
					NameQuest = "TikiQuest1"
					QuestLv = 2
					NameMon = "Island Boy"
					CFrameQ = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
					CFrameMon = CFrame.new(-16901.26171875, 84.06756591796875, -192.88906860351562)
				end
			end
		end

		function CheckLevel1()
			local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
			if _G.Upto then
				Lv = Lv + 100
			end
			if Old_World and not Auto_Raid then
				if Lv == 1 or Lv <= 9 or SelectMonster == "" then -- Bandit
					local SW = "Bandit"
				elseif Lv == 10 or Lv <= 14 or SelectMonster == "Monkey" then -- Monkey
					
					local SW = "Monkey"
					
				elseif Lv == 15 or Lv <= 29 or SelectMonster == "Gorilla" then -- Gorilla
					local SW = "Gorilla"
				elseif Lv == 30 or Lv <= 39 or SelectMonster == "Pirate" then -- Pirate
				
					local SW = "Pirate"
					
				elseif Lv == 40 or Lv <= 59 or SelectMonster == "Brute" then -- Brute
				
					local SW = "Brute"
					
				elseif Lv == 60 or Lv <= 74 or SelectMonster == "Desert Bandit" then -- Desert Bandit
				
			    	local SW = "Desert Bandit"
				
				elseif Lv == 75 or Lv <= 89 or SelectMonster == "Desert Officer" then -- Desert Officer
				
			    	local SW = "Desert Officer"
			
				elseif Lv == 90 or Lv <= 99 or SelectMonster == "Snow Bandit" then -- Snow Bandit
				
				    local SW = "Snow Bandit"
				
				elseif Lv == 100 or Lv <= 119 or SelectMonster == "Snowman" then -- Snowman
				    
		    		local SW = "Snowman"
				
				elseif Lv == 120 or Lv <= 149 or SelectMonster == "Chief Petty Officer" then -- Chief Petty Officer
				
				    local SW = "Chief Petty Officer"
				
				elseif Lv == 150 or Lv <= 174 or SelectMonster == "Sky Bandit" then -- Sky Bandit
				
				    local SW = "Sky Bandit"
				
				elseif Lv == 175 or Lv <= 249 or SelectMonster == "Dark Master" then -- Dark Master
				
				    local SW = "Dark Master"
				
				elseif Lv == 250 or Lv <= 274 or SelectMonster == "Toga Warrior" then -- Toga Warrior
				
		    		local SW = "Toga Warrior"
				
				elseif Lv == 275 or Lv <= 299 or SelectMonster == "Gladiator" then -- Gladiator
				
				    local SW = "Gladiator"
				
				elseif Lv == 300 or Lv <= 324 or SelectMonster == "Military Soldier" then -- Military Soldier
					
					local SW = "Military Soldier"
					
					
				elseif Lv == 325 or Lv <= 374 or SelectMonster == "Military Spy" then -- Military Spy
					
					local SW = "Military Spy"
					
				elseif Lv == 375 or Lv <= 399 or SelectMonster == "Fishman Warrior" then -- Fishman Warrior
					
					local SW = "Fishman Warrior"
					
				elseif Lv == 400 or Lv <= 449 or SelectMonster == "Fishman Commando" then -- Fishman Commando
					
					local SW = "Fishman Commando"
					
				elseif Lv == 450 or Lv <= 474 or SelectMonster == "God's Guard" then 
					local SW = "God's Guard"
				
		
				elseif Lv == 475 or Lv <= 524 or SelectMonster == "Shanda" then
					local SW = "Shanda"
					
				elseif Lv == 525 or Lv <= 549 or SelectMonster == "Royal Squad" then -- Royal Squad
					
					local SW = "Royal Squad"
					
				elseif Lv == 550 or Lv <= 624 or SelectMonster == "Royal Soldier" then -- Royal Soldier
					
					local SW = "Royal Soldier"
					
				elseif Lv == 625 or Lv <= 649 or SelectMonster == "Galley Pirate" then -- Galley Pirate
					
					local SW = "Galley Pirate"
					
				elseif Lv >= 650 or SelectMonster == "Galley Captain" then -- Galley Captain
					
					local SW = "Galley Captain"
				end
			end
			if New_World and not Auto_Raid then
				
				if Lv == 700 or Lv <= 724 or SelectMonster == "Raider" then -- Raider [Lv. 700]
					local SW = "Raider"
				
				elseif Lv == 725 or Lv <= 774 or SelectMonster == "Mercenary" then -- Mercenary [Lv. 725]
					local SW = "Mercenary"
					
					
				elseif Lv == 775 or Lv <= 799 or SelectMonster == "Swan Pirate" then -- Swan Pirate [Lv. 775]
					local SW = "Swan Pirate"
					
				elseif Lv == 800 or Lv <= 874 or SelectMonster == "Factory Staff" then -- Factory Staff [Lv. 800]
					local SW = "Factory Staff"
		
				elseif Lv == 875 or Lv <= 899 or SelectMonster == "Marine Lieutenant" then -- Marine Lieutenant [Lv. 875]
					local SW = "Marine Lieutenant"
					
				elseif Lv == 900 or Lv <= 949 or SelectMonster == "Marine Captain" then -- Marine Captain [Lv. 900]
					local SW = "Marine Captain"
					
					SelectMonster = "Marine Lieutenant [Lv. 875]"
				elseif Lv == 950 or Lv <= 974 or SelectMonster == "Zombie" then -- Zombie [Lv. 950]
					local SW = "Zombie"
					
				elseif Lv == 975 or Lv <= 999 or SelectMonster == "Vampire" then -- Vampire [Lv. 975]
					local SW = "Vampire"
					
				elseif Lv == 1000 or Lv <= 1049 or SelectMonster == "Snow Trooper" then -- Snow Trooper [Lv. 1000] **
					local SW = "Snow Trooper"
					
				elseif Lv == 1050 or Lv <= 1099 or SelectMonster == "Winter Warrior" then -- Winter Warrior [Lv. 1050]
					local SW = "Winter Warrior"
		
				elseif Lv == 1100 or Lv <= 1124 or SelectMonster == "Lab Subordinate" then -- Lab Subordinate [Lv. 1100]
					local SW = "Lab Subordinate"
					
				elseif Lv == 1125 or Lv <= 1174 or SelectMonster == "Horned Warrior" then -- Horned Warrior [Lv. 1125]
					local SW = "Horned Warrior"
				elseif Lv == 1175 or Lv <= 1199 or SelectMonster == "Magma Ninja" then -- Magma Ninja [Lv. 1175]
					local SW = "Magma Ninja"
					
				elseif Lv == 1200 or Lv <= 1249 or SelectMonster == "Lava Pirate" then 
					local SW = "Lava Pirate"
					
				elseif Lv == 1250 or Lv <= 1274 or SelectMonster == "Ship Deckhand" then 
					local SW = "Ship Deckhand"
					
				elseif Lv == 1275 or Lv <= 1299 or SelectMonster == "Ship Engineer" then 
					local SW = "Ship Engineer"
					
				elseif Lv == 1300 or Lv <= 1324 or SelectMonster == "Ship Steward" then 
					local SW = "Ship Steward"
				
				elseif Lv == 1325 or Lv <= 1349 or SelectMonster == "Ship Officer" then 
					local SW = "Ship Officer"
					
				elseif Lv == 1350 or Lv <= 1374 or SelectMonster == "Arctic Warrior" then 
					local SW = "Arctic Warrior"
					
				elseif Lv == 1375 or Lv <= 1424 or SelectMonster == "Snow Lurker" then -- Snow Lurker [Lv. 1375]
					local SW = "Snow Lurker"
				
				elseif Lv == 1425 or Lv <= 1449 or SelectMonster == "Sea Soldier" then -- Sea Soldier [Lv. 1425]
					local SW = "Sea Soldier"
					
				elseif Lv >= 1450 or SelectMonster == "Water Fighter" then -- Water Fighter [Lv. 1450]
					local SW = "Water Fighter"
				
				end
			end
			if Three_World and not Auto_Raid then
				if Lv >= 1500 and Lv <= 1524 or SelectMonster == "Pirate Millionaire" then -- Pirate Millionaire [Lv. 1500]
					local SW = "Pirate Millionaire"
					
				elseif Lv >= 1525 and Lv <= 1574 or SelectMonster == "Pistol Billionaire" then -- Pistol Billionaire [Lv. 1525]
					local SW = "Pistol Billionaire"
				
				elseif Lv >= 1575 and Lv <= 1599 or SelectMonster == "Dragon Crew Warrior" then -- Dragon Crew Warrior [Lv. 1575]
					local SW = "Dragon Crew Warrior"
					
				elseif Lv >= 1600 and Lv <= 1624 or SelectMonster == "Dragon Crew Archer" then -- Dragon Crew Archer [Lv. 1600]
					local SW = "Dragon Crew Archer"
		
				elseif Lv >= 1625 and Lv <= 1649 or SelectMonster == "Female Islander" then -- Female Islander [Lv. 1625]
					local SW = "Female Islander"
					
				elseif Lv >= 1650 and Lv <= 1699 or SelectMonster == "Giant Islander" then -- Giant Islander [Lv. 1650]
					local SW = "Giant Islander"
					
				
				elseif Lv >= 1700 and Lv <= 1724 or SelectMonster == "Marine Commodore" then -- Marine Commodore [Lv. 1700]
					local SW = "Marine Commodore"
				
				elseif Lv >= 1725 and Lv <= 1774 or SelectMonster == "Marine Rear Admiral" then -- Marine Rear Admiral [Lv. 1725]
					local SW = "Marine Rear Admiral"
					
				elseif Lv >= 1775 and Lv <= 1799 or SelectMonster == "Fishman Raider" then -- Fishman Raider [Lv. 1775]
					local SW = "Fishman Raider"
				
				elseif Lv >= 1800 and Lv <= 1824 or SelectMonster == "Fishman Captain" then -- Fishman Captain [Lv. 1800]
					local SW = "Fishman Captain"
				
				elseif Lv >= 1825 and Lv <= 1849 or SelectMonster == "Forest Pirate" then -- Forest Pirate [Lv. 1825]
					local SW = "Forest Pirate"
		
				
				elseif Lv >= 1850 and Lv <= 1899 or SelectMonster == "Mythological Pirate" then -- Mythological Pirate [Lv. 1850]
					local SW = "Mythological Pirate "
					NameQuest = "DeepForestIsland"
				
				elseif Lv >= 1900 and Lv <= 1924 or SelectMonster == "Jungle Pirate" then -- Jungle Pirate [Lv. 1900]
					local SW = "Jungle Pirate"
					
				elseif Lv >= 1925 and Lv <= 1974 or SelectMonster == "Musketeer Pirate" then -- Musketeer Pirate [Lv. 1925]
					local SW = "Musketeer Pirate"
				
				elseif Lv >= 1975 and Lv <= 1999 or SelectMonster == "Reborn Skeleton" then
					local SW = "Reborn Skeleton"
					
				elseif Lv >= 2000 and Lv <= 2024 or SelectMonster == "Living Zombie" then
					local SW = "Living Zombie"
					
				elseif Lv >= 2025 and Lv <= 2049  or  SelectMonster == "Demonic Soul" then
					local SW = "Demonic Soul"
					
				elseif Lv >= 2050 and Lv <= 2074 or SelectMonster == "Posessed Mummy" then
					local SW = "Posessed Mummy"
					
				elseif Lv >= 2075 and Lv <= 2099 or SelectMonster == "Peanut Scout" then
					local SW = "Peanut Scout"
				
				elseif Lv >= 2100 and Lv <= 2124 or SelectMonster == "Peanut President" then
					local SW = "Peanut President"
					
				elseif Lv >= 2125 and Lv <= 2149 or SelectMonster == "Ice Cream Chef" then
					local SW = "Ice Cream Chef"
					
				elseif Lv >= 2150 and Lv <= 2199 or SelectMonster == "Ice Cream Commander" then 
					local SW = "Ice Cream Commander"
					
				elseif Lv >= 2200 and Lv <= 2224 or SelectMonster == "Cookie Crafter" then 
					local SW = "Cookie Crafter"
					
				elseif Lv >= 2225 and Lv <= 2249 or SelectMonster == "Cake Guard" then 
					local SW = "Cake Guard"
					
				elseif Lv >= 2250 and Lv <= 2274 or SelectMonster == "Baking Staff" then 
					local SW = "Baking Staff"
					
				elseif Lv >= 2275 and Lv <= 2299 or SelectMonster == "Head Baker" then 
					local SW = "Head Baker"
					
				elseif Lv >= 2300 and Lv <= 2324 or SelectMonster == "Cocoa Warrior" then 
					local SW = "Cocoa Warrior"
					
				elseif Lv >= 2325 and Lv <= 2349 or SelectMonster == "Chocolate Bar Battler" then 
					local SW = "Chocolate Bar Battler"
					
				elseif Lv >= 2350 and Lv <= 2374 or SelectMonster == "Sweet Thief" then 
					local SW = "Sweet Thief"
					
				elseif Lv >= 2375 and Lv <= 2399 or SelectMonster == "Candy Rebel" then 
					local SW = "Candy Rebel"
					
				elseif Lv >= 2400 and Lv <= 2424 or SelectMonster == "Candy Pirate" then 
					local SW = "Candy Pirate"
					
				elseif Lv >= 2425 and Lv <= 2449 or SelectMonster == "Candy Pirate"   then 
					local SW = "Snow Demon"
					
				elseif Lv >= 2450 and Lv <= 2474 or SelectMonster == "Candy Pirate"   then 
					local SW = "Isle Outlaw"
					
				elseif Lv >= 2475 and Lv <= 2524 or SelectMonster == "Candy Pirate"   then 
					local SW = "Island Boy"
					
				elseif Lv >= 2525 or SelectMonster == "Candy Pirate"   then 
					local SW = "Isle Champion"
				
				end
			end
		end

		function CheckLevel2()
			local Lvl = game:GetService("Players").LocalPlayer.Data.Level.Value
			if Lvl >= 1 and Lvl <= 9 then
				if tostring(game.Players.LocalPlayer.Team) == "Marines" then
					namemon = "Trainee"
					namequest = "MarineQuest"
					questlv = 1
					npcpos = CFrame.new(-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-08, -0.667371571, 4.32403588e-08, 1, -1.07884304e-07, 0.667371571, -1.09201515e-07, -0.744724929)
				elseif tostring(game.Players.LocalPlayer.Team) == "Pirates" then
					namemon = "Bandit"
					namequest = "BanditQuest1"
					questlv = 1
					npcpos = CFrame.new(1059.99731, 16.9222069, 1549.28162, -0.95466274, 7.29721794e-09, 0.297689587, 1.05190106e-08, 1, 9.22064114e-09, -0.297689587, 1.19340022e-08, -0.95466274)
				end
				return {["QuestLv"] = questlv, ["CFrameQuest"] = npcpos, ["NameMon"] = namemon, ["NameQuest"] = namequest}
			end
			local GuideModule = require(game:GetService("ReplicatedStorage").GuideModule)
			local Quests = require(game:GetService("ReplicatedStorage").Quests)
			for i,v in pairs(GuideModule["Data"]["NPCList"]) do
				for i1,v1 in pairs(v["Levels"]) do
					if Lvl >= v1 then
						if not levelreq then
							levelreq = 0
						end
						if v1 > levelreq then
							npcpos = i["CFrame"]
							questlv = i1
							levelreq = v1
						end
						if #v["Levels"] == 3 and questlv == 3 then
							npcpos = i["CFrame"]
							questlv = 2
							levelreq = v["Levels"][2]
						end
					end
				end
			end
			for i,v in pairs(Quests) do
				for i1,v1 in pairs(v) do
					if v1["LevelReq"] == levelreq and i ~= "CitizenQuest" then
						namequest = i
						for i2,v2 in pairs(v1["Task"]) do
							namemon = i2
						end
					end
				end
			end
			if namequest == "MarineQuest2" then
				namequest = "MarineQuest2"
				questlv = 1
				namemon = "Chief Petty Officer"
				levelreq = 120
			elseif namequest == "ImpelQuest" then
				namequest = "PrisonerQuest"
				questlv = 2
				namemon = "Dangerous Prisoner"
				levelreq = 210
				npcpos = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
			elseif namequest == "SkyExp1Quest" then
				if questlv == 1 then
					npcpos = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
				elseif questlv == 2 then
					npcpos = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
				end
			elseif namequest == "Area2Quest" and questlv == 2 then
				namequest = "Area2Quest"
				questlv = 1
				namemon = "Swan Pirate"
				levelreq = 775
			end
			namemon = namemon:sub(1,#namemon)
			if not namemon:find("Lv") then
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					monlv = string.match(v.Name, "%d+")
					if v.Name:find(namemon) and #v.Name > #namemon and tonumber(monlv) <= Lvl + 50 then
						namemon = v.Name
					end
				end
			end
			if not namemon:find("Lv") then
				for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
					monlv = string.match(v.Name, "%d+")
					if v.Name:find(namemon) and #v.Name > #namemon and tonumber(monlv) <= Lvl + 50 then
						namemon = v.Name
					end
				end
			end
			return {["QuestLv"] = questlv, ["CFrameQuest"] = npcpos, ["NameMon"] = namemon, ["NameQuest"] = namequest, ["LevelReq"] = levelreq}
		end

	function CheckLevel3()
		local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
		if _G.Upto then
			Lv = Lv + 100
		end
		if Old_World and not Auto_Raid then
			if Lv == 1 or Lv <= 9 or SelectMonster == "" then -- Bandit
				Ms = "Bandit"
				NameQuest = "BanditQuest1"
				QuestLv = 1
				NameMon = "Bandit"
				CFrameQ = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
				CFrameMon = CFrame.new(1353.44885, 3.40935516, 1376.92029, 0.776053488, -6.97791975e-08, 0.630666852, 6.99138596e-08, 1, 2.4612488e-08, -0.630666852, 2.49917598e-08, 0.776053488)
				TelePBoss(CFrameQ)
			elseif Lv == 10 or Lv <= 14 or SelectMonster == "Monkey" then -- Monkey
				
				Ms = "Monkey"
				NameQuest = "JungleQuest"
				QuestLv = 1
				NameMon = "Monkey"
				CFrameQ = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
				CFrameMon = CFrame.new(-1402.74609, 98.5633316, 90.6417007, 0.836947978, 0, 0.547282517, -0, 1, -0, -0.547282517, 0, 0.836947978)
				TelePBoss(CFrameQ)
				
			elseif Lv == 15 or Lv <= 29 or SelectMonster == "Gorilla" then -- Gorilla
				Ms = "Gorilla"
				NameQuest = "JungleQuest"
				QuestLv = 2
				NameMon = "Gorilla"
				CFrameQ = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
				CFrameMon = CFrame.new(-1267.89001, 66.2034225, -531.818115, -0.813996196, -5.25169774e-08, -0.580869019, -5.58769671e-08, 1, -1.21082593e-08, 0.580869019, 2.26011476e-08, -0.813996196)
				TelePBoss(CFrameQ)
				if Lv >= 25 then
					_G.SelectBoss = "The Gorilla King" 
				end
				SelectMonster = "Monkey"
			elseif Lv >= 30 and Lv <= 40 or SelectMonster == "Pirate" then
					 
				Ms = "Pirate"
				NameQuest = "BuggyQuest1"
				QuestLv = 1
				NameMon = "Pirate"
				CFrameQ = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
				CFrameMon = CFrame.new(-1169.5365, 5.09531212, 3933.84082, -0.971822679, -3.73200315e-09, 0.235713184, -4.16762763e-10, 1, 1.41145424e-08, -0.235713184, 1.3618596e-08, -0.971822679)
				TelePBoss(CFrameQ)
					
			elseif Lv >= 40 and Lv <= 60 or SelectMonster == "Brute" then
					
				Ms = "Brute"
				NameQuest = "BuggyQuest1"
				QuestLv = 2
				NameMon = "Brute"
				CFrameQ = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
				CFrameMon = CFrame.new(-1165.09985, 15.1531372, 4363.51514, -0.962800264, 1.17564889e-06, 0.270213336, 2.60172015e-07, 1, -3.4237969e-06, -0.270213336, -3.22613073e-06, -0.962800264)
				TelePBoss(CFrameQ)
				if Lv >= 55 then
					_G.SelectBoss = "Bobby"
				end
				SelectMonster = "Pirate"
				elseif Lv >= 60 and Lv <= 75 or SelectMonster == "Desert Bandit" then
					 
				Ms = "Desert Bandit"
				NameQuest = "DesertQuest"
				QuestLv = 1
				NameMon = "Desert Bandit"
				CFrameQ = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
				CFrameMon = CFrame.new(932.788818, 6.8503746, 4488.24609, -0.998625934, 3.08948351e-08, 0.0524050146, 2.79967303e-08, 1, -5.60361286e-08, -0.0524050146, -5.44919629e-08, -0.998625934)
				TelePBoss(CFrameQ)
					
			elseif Lv >= 75 and Lv <= 89 or SelectMonster == "Desert Officer" then
				Ms = "Desert Officer"
				NameQuest = "DesertQuest"
				QuestLv = 2
				NameMon = "Desert Officer"
				CFrameQ = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
				CFrameMon = CFrame.new(1617.07886, 1.5542295, 4295.54932, -0.997540116, -2.26287735e-08, -0.070099175, -1.69377223e-08, 1, -8.17798806e-08, 0.070099175, -8.03913949e-08, -0.997540116)
				TelePBoss(CFrameQ)
				SelectMonster = "Desert Bandit"
			elseif Lv == 90 or Lv <= 99 or SelectMonster == "Snow Bandit" then -- Snow Bandit
				Ms = "Snow Bandit"
				NameQuest = "SnowQuest"
				QuestLv = 1
				NameMon = "Snow Bandits"
				CFrameQ = CFrame.new(1389.74451, 86.6520844, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
				CFrameMon = CFrame.new(1412.92346, 55.3503647, -1260.62036, -0.246266365, -0.0169920288, -0.969053388, 0.000432241941, 0.999844253, -0.0176417865, 0.969202161, -0.00476344163, -0.246220857)
				TelePBoss(CFrameQ)
					
			elseif Lv == 100 or Lv <= 119 or SelectMonster == "Snowman" then -- Snowman
					
				Ms = "Snowman"
				NameQuest = "SnowQuest"
				QuestLv = 2
				NameMon = "Snowman"
				CFrameQ = CFrame.new(1389.74451, 86.6520844, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
				CFrameMon = CFrame.new(1376.86401, 97.2779999, -1396.93115, -0.986755967, 7.71178321e-08, -0.162211925, 7.71531674e-08, 1, 6.08143536e-09, 0.162211925, -6.51427134e-09, -0.986755967)
				TelePBoss(CFrameQ)
				if Lv >= 110 then
					_G.SelectBoss = "Yeti"
				end
				SelectMonster = "Snow Bandit"
				_G.Farm_Mon = true
			elseif Lv == 120 or Lv <= 174 or SelectMonster == "Chief Petty Officer" then -- Chief Petty Officer
				Ms = "Chief Petty Officer"
				NameQuest = "MarineQuest2"
				QuestLv = 1
				NameMon = "Chief Petty Officer"
				CFrameQ = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				CFrameMon = CFrame.new(-4882.8623, 22.6520386, 4255.53516, 0.273695946, -5.40380647e-08, -0.96181643, 4.37720793e-08, 1, -4.37274998e-08, 0.96181643, -3.01326679e-08, 0.273695946)
				TelePBoss(CFrameQ)
				if Lv >= 130 then
					_G.SelectBoss = "Vice Admiral"
				end
					
			elseif SelectMonster == "Sky Bandit" then -- Sky Bandit
				Ms = "Sky Bandit"
				NameQuest = "SkyQuest"
				QuestLv = 1
				NameMon = "Sky Bandit"
				CFrameQ = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
				CFrameMon = CFrame.new(-4959.51367, 365.39267, -2974.56812, 0.964867651, 7.74418396e-08, 0.262737453, -6.95931988e-08, 1, -3.91783708e-08, -0.262737453, 1.95171506e-08, 0.964867651)
				TelePBoss(CFrameQ)
					
			elseif Lv == 175 or Lv <= 209 or SelectMonster == "Dark Master" then -- Dark Master
					 
				Ms = "Dark Master"
				NameQuest = "SkyQuest"
				QuestLv = 2
				NameMon = "Dark Master"
				CFrameQ = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
				CFrameMon = CFrame.new(-5079.98096, 376.477356, -2194.17139, 0.465965867, -3.69776352e-08, 0.884802461, 3.40249851e-09, 1, 4.00000886e-08, -0.884802461, -1.56281423e-08, 0.465965867)
				TelePBoss(CFrameQ)
				SelectMonster = "Sky Bandit"
			elseif SelectMonster == "Prisoner" then
					 
				Ms = "Prisoner"
				QuestLv = 1
				NameQuest = "PrisonerQuest"
				NameMon = "Prisoner"
				CFrameQ = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
				CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
				TelePBoss(CFrameQ)
					
			elseif Lv == 210 or Lv <= 249 or SelectMonster == "Dangerous Prisoner" then
					 
				Ms = "Dangerous Prisoner"
				QuestLv = 2
				NameQuest = "PrisonerQuest"
				NameMon = "Dangerous Prisoner"
				CFrameQ = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
				CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
				TelePBoss(CFrameQ)
				if Lv >= 240 then
					_G.SelectBoss = "Swan"
						
				elseif Lv >= 230 then
					_G.SelectBoss = "Chief Warden"
						
				elseif Lv >= 220 then
					_G.SelectBoss = "Warden"
				end
				SelectMonster = "Prisoner"
			elseif Lv == 250 or Lv <= 274 or SelectMonster == "Toga Warrior" then -- Toga Warrior
					 
				Ms = "Toga Warrior"
				NameQuest = "ColosseumQuest"
				QuestLv = 1
				NameMon = "Toga Warrior"
				CFrameQ = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
				CFrameMon = CFrame.new(-1779.97583, 44.6077499, -2736.35474, 0.984437346, 4.10396339e-08, 0.175734788, -3.62286876e-08, 1, -3.05844168e-08, -0.175734788, 2.3741821e-08, 0.984437346)
				TelePBoss(CFrameQ)
					
			elseif Lv == 275 or Lv <= 324 or SelectMonster == "Gladiator" then -- Gladiato
					 
				Ms = "Gladiator"
				NameQuest = "ColosseumQuest"
				QuestLv = 2
				NameMon = "Gladiato"
				CFrameQ = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
				CFrameMon = CFrame.new(-1274.75903, 58.1895943, -3188.16309, 0.464524001, 6.21005611e-08, 0.885560572, -4.80449414e-09, 1, -6.76054768e-08, -0.885560572, 2.71497012e-08, 0.464524001)
				TelePBoss(CFrameQ)
				SelectMonster = "Toga Warrior"
				
			elseif Lv == 300 or Lv <= 324 or SelectMonster == "Military Soldier" then -- Military Soldier
				
				Ms = "Military Soldier"
				NameQuest = "MagmaQuest"
				QuestLv = 1
				NameMon = "Military Soldier"
				CFrameQ = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
				CFrameMon = CFrame.new(-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-10, 0.815856814, 9.11209668e-08, 1, 6.498761e-08, -0.815856814, 1.11920997e-07, -0.578253984)
				TelePBoss(CFrameQ)
				
			elseif Lv == 325 or Lv <= 374 or SelectMonster == "Military Spy" then -- Military Spy
				
				Ms = "Military Spy"
				NameQuest = "MagmaQuest"
				QuestLv = 2
				NameMon = "Military Spy"
				CFrameQ = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
				CFrameMon = CFrame.new(-5787.99023, 120.864456, 8762.25293, -0.188358366, -1.84706277e-08, 0.982100308, -1.23782129e-07, 1, -4.93306951e-09, -0.982100308, -1.22495649e-07, -0.188358366)
				TelePBoss(CFrameQ)
				if Lv >= 350 and Lv <= 375 then
					_G.SelectBoss = "Magma Admiral"
				end
				SelectMonster = "Military Soldier"
			elseif Lv == 375 or Lv <= 399 or SelectMonster == "Fishman Warrior" then -- Fishman Warrior
				
				Ms = "Fishman Warrior"
				NameQuest = "FishmanQuest"
				QuestLv = 1
				NameMon = "Fishman Warrior"
				CFrameQ = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
				CFrameMon = CFrame.new(60946.6094, 48.6735229, 1525.91687, -0.0817126185, 8.90751153e-08, 0.996655822, 2.00889794e-08, 1, -8.77269599e-08, -0.996655822, 1.28533992e-08, -0.0817126185)
				if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
					_G.Stop_Tween = true
					TP(CFrameQ)
					wait(.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
					wait(.5)
					_G.Stop_Tween = nil
				end
			elseif Lv == 400 or Lv <= 449 or SelectMonster == "Fishman Commando" then -- Fishman Commando
				
				Ms = "Fishman Commando"
				NameQuest = "FishmanQuest"
				QuestLv = 2
				NameMon = "Fishman Commando"
				CFrameQ = CFrame.new(61122.5625, 18.4716396, 1568.16504)
				CFrameMon = CFrame.new(61877.8516, 75.4723358, 1400.76831, -0.828722656, -2.44484943e-09, -0.559659481, -6.34942552e-08, 1, 8.96514436e-08, 0.559659481, 1.09831348e-07, -0.828722656)
				if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
					_G.Stop_Tween = true
					TP(CFrameQ)
					wait(.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
					wait(.5)
					_G.Stop_Tween = nil
				end
				if Lv >= 425 then
					_G.SelectBoss = "Fishman Lord"
				end
				SelectMonster = "Fishman Warrior"
			elseif Lv == 450 or Lv <= 474 or SelectMonster == "God's Guard" then 
				Ms = "God's Guard"
				NameQuest = "SkyExp1Quest"
				QuestLv = 1
				NameMon = "God's Guards"
				CFrameQ = CFrame.new(-4721.71436, 845.277161, -1954.20105)
				CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.925427)
				if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
					_G.Stop_Tween = true
					TP(CFrameQ)
					wait(.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
					wait(.5)
					_G.Stop_Tween = nil
				end
				if Lv >= 425 then
					_G.SelectBoss = "Fishman Lord"
				end
				SelectMonster = "Fishman Commando"
			elseif Lv == 475 or Lv <= 524 or SelectMonster == "Shanda" then
				Ms = "Shanda"
				NameQuest = "SkyExp1Quest"
				QuestLv = 2
				NameMon = "Shandas"
				CFrameQ = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
				CFrameMon = CFrame.new(-7904.57373, 5584.37646, -459.62973, 0.65171206, 5.11171692e-08, 0.758466363, -4.76232476e-09, 1, -6.33034247e-08, -0.758466363, 3.76435416e-08, 0.65171206)
				if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
					_G.Stop_Tween = true
					TP(CFrameQ)
					wait(.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
					wait(.5)
					_G.Stop_Tween = nil
				end
				if Lv >= 500 then
					_G.SelectBoss = "Wysper"
				end
				SelectMonster = "God's Guard"
			elseif Lv == 525 or Lv <= 549 or SelectMonster == "Royal Squad" then -- Royal Squad
				
				Ms = "Royal Squad"
				NameQuest = "SkyExp2Quest"
				QuestLv = 1
				NameMon = "Royal Squad"
				CFrameQ = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				CFrameMon = CFrame.new(-7555.04199, 5606.90479, -1303.24744, -0.896107852, -9.6057462e-10, -0.443836004, -4.24974544e-09, 1, 6.41599973e-09, 0.443836004, 7.63560326e-09, -0.896107852)
				TelePBoss(CFrameQ) 
				SelectMonster = "Shanda"
			elseif Lv == 550 or Lv <= 624 or SelectMonster == "Royal Soldier" then -- Royal Soldier
				
				Ms = "Royal Soldier"
				NameQuest = "SkyExp2Quest"
				QuestLv = 2
				NameMon = "Royal Soldier"
				CFrameQ = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				CFrameMon = CFrame.new(-7837.31152, 5649.65186, -1791.08582, -0.716008604, 0.0104285581, -0.698013008, 5.02521061e-06, 0.99988848, 0.0149335321, 0.69809103, 0.0106890313, -0.715928733)
				TelePBoss(CFrameQ)
				if Lv >= 575 then
					_G.SelectBoss = "Thunder God"
				end
				SelectMonster = "Royal Squad"
			elseif Lv == 625 or Lv <= 649 or SelectMonster == "Galley Pirate" then -- Galley Pirate
				
				Ms = "Galley Pirate"
				NameQuest = "FountainQuest"
				QuestLv = 1
				NameMon = "Galley Pirate"
				CFrameQ = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
				CFrameMon = CFrame.new(5569.80518, 38.5269432, 3849.01196, 0.896460414, 3.98027495e-08, 0.443124533, -1.34262139e-08, 1, -6.26611296e-08, -0.443124533, 5.02237434e-08, 0.896460414)
				TelePBoss(CFrameQ)
			elseif Lv >= 650 or SelectMonster == "Galley Captain" then -- Galley Captain
				
				Ms = "Galley Captain"
				NameQuest = "FountainQuest"
				QuestLv = 2
				NameMon = "Galley Captain"
				CFrameQ = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
				CFrameMon = CFrame.new(5782.90186, 94.5326462, 4716.78174, 0.361808896, -1.24757526e-06, -0.932252586, 2.16989656e-06, 1, -4.96097414e-07, 0.932252586, -1.84339774e-06, 0.361808896)
				TelePBoss(CFrameQ)
				
				if Lv >= 675 then
					_G.SelectBoss = "Cyborg"
				end
				SelectMonster = "Galley Pirate"
			end
		end
		if New_World and not Auto_Raid then
			
			if Lv == 700 or Lv <= 724 or SelectMonster == "Raider" then -- Raider [Lv. 700]
				Ms = "Raider"
				NameQuest = "Area1Quest"
				QuestLv = 1
				NameMon = "Raider"
				CFrameQ = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
				CFrameMon = CFrame.new(-737.026123, 10.1748352, 2392.57959, 0.272128761, 0, -0.962260842, -0, 1, -0, 0.962260842, 0, 0.272128761)
				TelePBoss(CFrameQ)
			elseif Lv == 725 or Lv <= 774 or SelectMonster == "Mercenary" then -- Mercenary [Lv. 725]
				Ms = "Mercenary"
				NameQuest = "Area1Quest"
				QuestLv = 2
				NameMon = "Mercenary"
				CFrameQ = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
				CFrameMon = CFrame.new(-1022.21271, 72.9855194, 1891.39148, -0.990782857, 0, -0.135460541, 0, 1, 0, 0.135460541, 0, -0.990782857)
				TelePBoss(CFrameQ)
				SelectMonster = "Raider"
			elseif Lv == 775 or Lv <= 799 or SelectMonster == "Swan Pirate" then -- Swan Pirate [Lv. 775]
				Ms = "Swan Pirate"
				NameQuest = "Area2Quest"
				QuestLv = 1
				NameMon = "Swan Pirate"
				CFrameQ = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
				CFrameMon = CFrame.new(976.467651, 111.174057, 1229.1084, 0.00852567982, -4.73897828e-08, -0.999963999, 1.12251888e-08, 1, -4.7295778e-08, 0.999963999, -1.08215579e-08, 0.00852567982)
				TelePBoss(CFrameQ)
			elseif Lv == 800 or Lv <= 874 or SelectMonster == "Factory Staff" then -- Factory Staff [Lv. 800]
				Ms = "Factory Staff"
				NameQuest = "Area2Quest"
				QuestLv = 2
				NameMon = "Factory Staff"
				CFrameQ = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
				CFrameMon = CFrame.new(336.74585, 73.1620483, -224.129272, 0.993632793, 3.40154607e-08, 0.112668738, -3.87658332e-08, 1, 3.99718729e-08, -0.112668738, -4.40850592e-08, 0.993632793)
				TelePBoss(CFrameQ)
				SelectMonster = "Swan Pirate"
			elseif Lv == 875 or Lv <= 899 or SelectMonster == "Marine Lieutenant" then -- Marine Lieutenant [Lv. 875]
				Ms = "Marine Lieutenant"
				NameQuest = "MarineQuest3"
				QuestLv = 1
				NameMon = "Marine Lieutenant"
				CFrameQ = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
				CFrameMon = CFrame.new(-2842.69922, 72.9919434, -2901.90479, -0.762281299, 0, -0.64724648, 0, 1.00000012, 0, 0.64724648, 0, -0.762281299)
				TelePBoss(CFrameQ)
			elseif Lv == 900 or Lv <= 949 or SelectMonster == "Marine Captain" then -- Marine Captain [Lv. 900]
				Ms = "Marine Captain"
				NameQuest = "MarineQuest3"
				QuestLv = 2
				NameMon = "Marine Captain"
				CFrameQ = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
				CFrameMon = CFrame.new(-1814.70313, 72.9919434, -3208.86621, -0.900422215, 7.93464423e-08, -0.435017526, 3.68856199e-08, 1, 1.06050372e-07, 0.435017526, 7.94441988e-08, -0.900422215)
				TelePBoss(CFrameQ)
				SelectMonster = "Marine Lieutenant"
			elseif Lv == 950 or Lv <= 974 or SelectMonster == "Zombie" then -- Zombie [Lv. 950]
				Ms = "Zombie"
				NameQuest = "ZombieQuest"
				QuestLv = 1
				NameMon = "Zombie"
				CFrameQ = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
				CFrameMon = CFrame.new(-5649.23438, 126.0578, -737.773743, 0.355238914, -8.10359282e-08, 0.934775114, 1.65461245e-08, 1, 8.04023372e-08, -0.934775114, -1.3095117e-08, 0.355238914)
				TelePBoss(CFrameQ)
			elseif Lv == 975 or Lv <= 999 or SelectMonster == "Vampire" then -- Vampire [Lv. 975]
				Ms = "Vampire"
				NameQuest = "ZombieQuest"
				QuestLv = 2
				NameMon = "Vampire"
				CFrameQ = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
				CFrameMon = CFrame.new(-6030.32031, 0.4377408, -1313.5564, -0.856965423, 3.9138893e-08, -0.515373945, -1.12178942e-08, 1, 9.45958547e-08, 0.515373945, 8.68467822e-08, -0.856965423)
				TelePBoss(CFrameQ)
				SelectMonster = "Zombie"
			elseif Lv == 1000 or Lv <= 1049 or SelectMonster == "Snow Trooper" then -- Snow Trooper [Lv. 1000] **
				Ms = "Snow Trooper"
				NameQuest = "SnowMountainQuest"
				QuestLv = 1
				NameMon = "Snow Trooper"
				CFrameQ = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
				CFrameMon = CFrame.new(621.003418, 391.361053, -5335.43604, 0.481644779, 0, 0.876366913, 0, 1, 0, -0.876366913, 0, 0.481644779)
				TelePBoss(CFrameQ)
			elseif Lv == 1050 or Lv <= 1099 or SelectMonster == "Winter Warrior" then -- Winter Warrior [Lv. 1050]
				Ms = "Winter Warrior"
				NameQuest = "SnowMountainQuest"
				QuestLv = 2
				NameMon = "Winter Warrior"
				CFrameQ = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
				CFrameMon = CFrame.new(1295.62683, 429.447784, -5087.04492, -0.698032081, -8.28980049e-08, -0.71606636, -1.98835952e-08, 1, -9.63858184e-08, 0.71606636, -5.30424877e-08, -0.698032081)
				TelePBoss(CFrameQ)
				SelectMonster = "Snow Trooper"
			elseif Lv == 1100 or Lv <= 1124 or SelectMonster == "Lab Subordinate" then -- Lab Subordinate [Lv. 1100]
				Ms = "Lab Subordinate"
				NameQuest = "IceSideQuest"
				QuestLv = 1
				NameMon = "Lab Subordinate"
				CFrameQ = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
				CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.49055017e-08, 0.822046936, -6.96206541e-08, 1, -1.79282633e-08, -0.822046936, -6.74401548e-08, -0.569419742)
				TelePBoss(CFrameQ)
			elseif Lv == 1125 or Lv <= 1174 or SelectMonster == "Horned Warrior" then -- Horned Warrior [Lv. 1125]
				Ms = "Horned Warrior"
				NameQuest = "IceSideQuest"
				QuestLv = 2
				NameMon = "Horned Warrior"
				CFrameQ = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
				CFrameMon = CFrame.new(-6401.27979, 15.9775667, -5948.24316, 0.388303697, 0, -0.921531856, 0, 1, 0, 0.921531856, 0, 0.388303697)
				TelePBoss(CFrameQ)
				SelectMonster = "Lab Subordinate"
			elseif Lv == 1175 or Lv <= 1199 or SelectMonster == "Magma Ninja" then -- Magma Ninja [Lv. 1175]
				Ms = "Magma Ninja"
				NameQuest = "FireSideQuest"
				QuestLv = 1
				NameMon = "Magma Ninja"
				CFrameQ = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
				CFrameMon = CFrame.new(-5466.06445, 57.6952019, -5837.42822, -0.988835871, 0, -0.149006829, 0, 1, 0, 0.149006829, 0, -0.988835871)
				TelePBoss(CFrameQ)
			elseif Lv == 1200 or Lv <= 1249 or SelectMonster == "Lava Pirate" then 
				Ms = "Lava Pirate"
				NameQuest = "FireSideQuest"
				QuestLv = 2
				NameMon = "Lava Pirate"
				CFrameQ = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
				CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, 0.98044765, 0, 1.00000012, -0, -0.98044765, 0, -0.196780294)
				TelePBoss(CFrameQ)
				SelectMonster = "Magma Ninja"
			elseif Lv == 1250 or Lv <= 1274 or SelectMonster == "Ship Deckhand" then 
				Ms = "Ship Deckhand"
				NameQuest = "ShipQuest1"
				QuestLv = 1
				NameMon = "Ship Deckhand"
				CFrameQ = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
				CFrameMon = CFrame.new(1163.80872, 138.288452, 33058.4258, -0.998580813, 5.49076979e-08, -0.0532564968, 5.57436763e-08, 1, -1.42118655e-08, 0.0532564968, -1.71604082e-08, -0.998580813)
				if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				end
			elseif Lv == 1275 or Lv <= 1299 or SelectMonster == "Ship Engineer" then 
				Ms = "Ship Engineer"
				NameQuest = "ShipQuest1"
				QuestLv = 2
				NameMon = "Ship Engineer"
				CFrameQ = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
				CFrameMon = CFrame.new(921.30249023438, 125.400390625, 32937.34375)
				if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				end
				SelectMonster = "Ship Deckhand [Lv. 1250]"
			elseif Lv == 1300 or Lv <= 1324 or SelectMonster == "Ship Steward" then 
				Ms = "Ship Steward"
				NameQuest = "ShipQuest2"
				QuestLv = 1
				NameMon = "Ship Steward"
				CFrameQ = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
				CFrameMon = CFrame.new(917.96057128906, 136.89932250977, 33343.4140625)
				if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				end
			elseif Lv == 1325 or Lv <= 1349 or SelectMonster == "Ship Officer" then 
				Ms = "Ship Officer"
				NameQuest = "ShipQuest2"
				QuestLv = 2
				NameMon = "Ship Officer"
				CFrameQ = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
				CFrameMon = CFrame.new(944.44964599609, 181.40081787109, 33278.9453125)
				if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				end
				SelectMonster = "Ship Steward"
			elseif Lv == 1350 or Lv <= 1374 or SelectMonster == "Arctic Warrior" then 
				Ms = "Arctic Warrior"
				NameQuest = "FrostQuest"
				QuestLv = 1
				NameMon = "Arctic Warrior"
				CFrameQ = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
				CFrameMon = CFrame.new(5878.23486, 81.3886948, -6136.35596, -0.451037169, 2.3908234e-07, 0.892505825, -1.08168464e-07, 1, -3.22542007e-07, -0.892505825, -2.4201924e-07, -0.451037169)
				if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
				end
			elseif Lv == 1375 or Lv <= 1424 or SelectMonster == "Snow Lurker" then -- Snow Lurker [Lv. 1375]
				Ms = "Snow Lurker"
				NameQuest = "FrostQuest"
				QuestLv = 2
				NameMon = "Snow Lurker"
				CFrameQ = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
				CFrameMon = CFrame.new(5513.36865, 60.546711, -6809.94971, -0.958693981, -1.65617333e-08, 0.284439981, -4.07668654e-09, 1, 4.44854642e-08, -0.284439981, 4.14883701e-08, -0.958693981)
				if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
				end
				SelectMonster = "Arctic Warrior"
			elseif Lv == 1425 or Lv <= 1449 or SelectMonster == "Sea Soldier" then -- Sea Soldier [Lv. 1425]
				Ms = "Sea Soldier"
				NameQuest = "ForgottenQuest"
				QuestLv = 1
				NameMon = "Sea Soldier"
				CFrameQ = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
				CFrameMon = CFrame.new(-3115.78223, 63.8785706, -9808.38574, -0.913427353, 3.11199457e-08, 0.407000452, 7.79564235e-09, 1, -5.89660658e-08, -0.407000452, -5.06883708e-08, -0.913427353)
				TelePBoss(CFrameQ)
			elseif Lv >= 1450 or SelectMonster == "Water Fighter" then -- Water Fighter [Lv. 1450]
				Ms = "Water Fighter"
				NameQuest = "ForgottenQuest"
				QuestLv = 2
				NameMon = "Water Fighter"
				CFrameQ = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
				CFrameMon = CFrame.new(-3273.9021, 295.388245, -10612.5547, -0.171454117, 1.56274425e-08, 0.98519212, -2.4293584e-08, 1, -2.00901713e-08, -0.98519212, -2.73783893e-08, -0.171454117)
				TelePBoss(CFrameQ)
				SelectMonster = "Sea Soldier"
				if Lv >= 1475 then
					_G.SelectBoss = "Tide Keeper"
				end
			end
		end
		if Three_World and not Auto_Raid then
			if Lv >= 1500 and Lv <= 1524 or SelectMonster == "Pirate Millionaire" then -- Pirate Millionaire [Lv. 1500]
				Ms = "Pirate Millionaire"
				NameQuest = "PiratePortQuest"
				QuestLv = 1
				NameMon = "Pirate Millionaire"
				CFrameQ = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
				CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
				TelePBoss(CFrameQ)
			elseif Lv >= 1525 and Lv <= 1574 or SelectMonster == "Pistol Billionaire" then -- Pistol Billionaire [Lv. 1525]
				Ms = "Pistol Billionaire"
				NameQuest = "PiratePortQuest"
				QuestLv = 2
				NameMon = "Pistol Billionaire"
				CFrameQ = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
				CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
				TelePBoss(CFrameQ)
				SelectMonster = "Pirate Millionaire"
			elseif Lv >= 1575 and Lv <= 1599 or SelectMonster == "Dragon Crew Warrior" then -- Dragon Crew Warrior [Lv. 1575]
				Ms = "Dragon Crew Warrior"
				NameQuest = "AmazonQuest"
				QuestLv = 1
				NameMon = "Dragon Crew Warrior"
				CFrameQ = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
				CFrameMon = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
				TelePBoss(CFrameQ)
			elseif Lv >= 1600 and Lv <= 1624 or SelectMonster == "Dragon Crew Archer" then -- Dragon Crew Archer [Lv. 1600]
				Ms = "Dragon Crew Archer"
				NameQuest = "AmazonQuest"
				QuestLv = 2
				NameMon = "Dragon Crew Archer"
				CFrameQ = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
				CFrameMon = CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715)
				TelePBoss(CFrameQ)
				SelectMonster = "Dragon Crew Warrior"
			elseif Lv >= 1625 and Lv <= 1649 or SelectMonster == "Female Islander" then -- Female Islander [Lv. 1625]
				Ms = "Female Islander"
				NameQuest = "AmazonQuest2"
				QuestLv = 1
				NameMon = "Female Islander"
				CFrameQ = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
				CFrameMon = CFrame.new(4770.4990234375, 758.95520019531, 1069.8680419922)
				TelePBoss(CFrameQ)
			elseif Lv >= 1650 and Lv <= 1699 or SelectMonster == "Giant Islander" then -- Giant Islander [Lv. 1650]
				Ms = "Giant Islander"
				NameQuest = "AmazonQuest2"
				QuestLv = 2
				NameMon = "Giant Islander"
				CFrameQ = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
				CFrameMon = CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789)
				TelePBoss(CFrameQ)
				SelectMonster = "Female Islander"
			elseif Lv >= 1700 and Lv <= 1724 or SelectMonster == "Marine Commodore" then -- Marine Commodore [Lv. 1700]
				Ms = "Marine Commodore"
				NameQuest = "MarineTreeIsland"
				QuestLv = 1
				NameMon = "Marine Commodore"
				CFrameQ = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
				CFrameMon = CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688)
				TelePBoss(CFrameQ)
			elseif Lv >= 1725 and Lv <= 1774 or SelectMonster == "Marine Rear Admiral" then -- Marine Rear Admiral [Lv. 1725]
				Ms = "Marine Rear Admiral"
				NameQuest = "MarineTreeIsland"
				QuestLv = 2
				NameMon = "Marine Rear Admiral"
				CFrameQ = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
				CFrameMon = CFrame.new(3951.3903808594, 229.11549377441, -6912.81640625)
				TelePBoss(CFrameQ)
				SelectMonster = "Marine Commodore"
			elseif Lv >= 1775 and Lv <= 1799 or SelectMonster == "Fishman Raider" then -- Fishman Raider [Lv. 1775]
				Ms = "Fishman Raider"
				NameQuest = "DeepForestIsland3"
				QuestLv = 1
				NameMon = "Fishman Raider"
				CFrameQ = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
				CFrameMon = CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125)
				TelePBoss(CFrameQ)
			elseif Lv >= 1800 and Lv <= 1824 or SelectMonster == "Fishman Captain" then -- Fishman Captain [Lv. 1800]
				Ms = "Fishman Captain"
				NameQuest = "DeepForestIsland3"
				QuestLv = 2
				NameMon = "Fishman Captain"
				CFrameQ = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
				CFrameMon = CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625)
				TelePBoss(CFrameQ)
				SelectMonster = "Fishman Raider"
			elseif Lv >= 1825 and Lv <= 1849 or SelectMonster == "Forest Pirate" then -- Forest Pirate [Lv. 1825]
				Ms = "Forest Pirate"
				NameQuest = "DeepForestIsland"
				QuestLv = 1
				NameMon = "Forest Pirate"
				CFrameQ = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
				CFrameMon = CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188)
				TelePBoss(CFrameQ)
			elseif Lv >= 1850 and Lv <= 1899 or SelectMonster == "Mythological Pirate" then -- Mythological Pirate [Lv. 1850]
				Ms = "Mythological Pirate"
				NameQuest = "DeepForestIsland"
				QuestLv = 2
				NameMon = "Mythological Pirate"
				CFrameQ = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
				CFrameMon = CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188)
				TelePBoss(CFrameQ)
				SelectMonster = "Forest Pirate"
			elseif Lv >= 1900 and Lv <= 1924 or SelectMonster == "Jungle Pirate" then -- Jungle Pirate [Lv. 1900]
				Ms = "Jungle Pirate"
				NameQuest = "DeepForestIsland2"
				QuestLv = 1
				NameMon = "Jungle Pirate"
				CFrameQ = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
				CFrameMon = CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063)
				TelePBoss(CFrameQ)
			elseif Lv >= 1925 and Lv <= 1974 or SelectMonster == "Musketeer Pirate" then -- Musketeer Pirate [Lv. 1925]
				Ms = "Musketeer Pirate"
				NameQuest = "DeepForestIsland2"
				QuestLv = 2
				NameMon = "Musketeer Pirate"
				CFrameQ = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
				CFrameMon = CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625)
				TelePBoss(CFrameQ)
				SelectMonster = "Jungle Pirate"
			elseif Lv >= 1975 and Lv <= 1999 or SelectMonster == "Reborn Skeleton" then
				Ms = "Reborn Skeleton"
				NameQuest = "HauntedQuest1"
				QuestLv = 1
				NameMon = "Reborn Skeleton"
				CFrameQ = CFrame.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
				CFrameMon = CFrame.new(-8817.880859375, 191.16761779785, 6298.6557617188)
				TelePBoss(CFrameQ)
			elseif Lv >= 2000 and Lv <= 2024 or SelectMonster == "Living Zombie" then
				Ms = "Living Zombie"
				NameQuest = "HauntedQuest1"
				QuestLv = 2
				NameMon = "Living Zombie"
				CFrameQ = CFrame.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
				CFrameMon = CFrame.new(-10125.234375, 183.94705200195, 6242.013671875)
				TelePBoss(CFrameQ)
				SelectMonster = "Reborn Skeleton"
			elseif Lv >= 2025 and Lv <= 2049  or  SelectMonster == "Demonic Soul" then
				Ms = "Demonic Soul"
				NameQuest = "HauntedQuest2"
				QuestLv = 1
				NameMon = "Demonic"
				CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
				CFrameMon = CFrame.new(-9712.03125, 204.69589233398, 6193.322265625)
				TelePBoss(CFrameQ)
				SelectMonster = "Living Zombie"
			elseif Lv >= 2050 and Lv <= 2074 or SelectMonster == "Posessed Mummy" then
				Ms = "Posessed Mummy"
				NameQuest = "HauntedQuest2"
				QuestLv = 2
				NameMon = "Posessed Mummy"
				CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
				CFrameMon = CFrame.new(-9545.7763671875, 69.619895935059, 6339.5615234375)    
				TelePBoss(CFrameQ)
				SelectMonster = "Demonic Soul"
			elseif Lv >= 2075 and Lv <= 2099 or SelectMonster == "Peanut Scout" then
				Ms = "Peanut Scout"
				NameQuest = "NutsIslandQuest"
				QuestLv = 1
				NameMon = "Peanut Scout"
				CFrameQ = CFrame.new(-2104.17163, 38.1299706, -10194.418, 0.758814394, -1.38604395e-09, 0.651306927, 2.85280208e-08, 1, -3.1108879e-08, -0.651306927, 4.21863646e-08, 0.758814394)
				CFrameMon = CFrame.new(-2098.07544, 192.611862, -10248.8867, 0.983392298, -9.57031787e-08, 0.181492642, 8.7276355e-08, 1, 5.44169616e-08, -0.181492642, -3.76732068e-08, 0.983392298)
				TelePBoss(CFrameQ)
			elseif Lv >= 2100 and Lv <= 2124 or SelectMonster == "Peanut President" then
				Ms = "Peanut President"
				NameQuest = "NutsIslandQuest"
				QuestLv = 2
				NameMon = "Peanut President"
				CFrameQ = CFrame.new(-2104.17163, 38.1299706, -10194.418, 0.758814394, -1.38604395e-09, 0.651306927, 2.85280208e-08, 1, -3.1108879e-08, -0.651306927, 4.21863646e-08, 0.758814394)
				CFrameMon = CFrame.new(-1876.95959, 192.610947, -10542.2939, 0.0553516336, -2.83836812e-08, 0.998466909, -6.89634405e-10, 1, 2.84654931e-08, -0.998466909, -2.26418861e-09, 0.0553516336)
				SelectMonster = "Peanut Scout"
				TelePBoss(CFrameQ)
			elseif Lv >= 2125 and Lv <= 2149 or SelectMonster == "Ice Cream Chef" then
				Ms = "Ice Cream Chef"
				NameQuest = "IceCreamIslandQuest"
				QuestLv = 1
				NameMon = "Ice Cream Chef"
				CFrameQ = CFrame.new(-820.404358, 65.8453293, -10965.5654, 0.822534859, 5.24448502e-08, -0.568714678, -2.08336317e-08, 1, 6.20846663e-08, 0.568714678, -3.92184099e-08, 0.822534859)
				CFrameMon = CFrame.new(-821.614075, 208.39537, -10990.7617, -0.870096624, 3.18909272e-08, 0.492881238, -1.8357893e-08, 1, -9.71107568e-08, -0.492881238, -9.35439957e-08, -0.870096624)
				TelePBoss(CFrameQ)
			elseif Lv >= 2150 and Lv <= 2199 or SelectMonster == "Ice Cream Commander" then 
				Ms = "Ice Cream Commander"
				NameQuest = "IceCreamIslandQuest"
				QuestLv = 2
				NameMon = "Ice Cream Commander"
				CFrameQ = CFrame.new(-819.376526, 67.4634171, -10967.2832)
				CFrameMon = CFrame.new(-610.11669921875, 208.26904296875, -11253.686523438)
				TelePBoss(CFrameQ)
				SelectMonster = "Ice Cream Chef"
			elseif Lv >= 2200 and Lv <= 2224 or SelectMonster == "Cookie Crafter" then 
				Ms = "Cookie Crafter"
				NameQuest = "CakeQuest1"
				QuestLv = 1
				NameMon = "Cookie Crafter"
				CFrameQ = CFrame.new(-2020.6068115234375, 37.82400894165039, -12027.80859375)
				CFrameMon = CFrame.new(-2286.684326171875, 146.5656280517578, -12226.8818359375)
				TelePBoss(CFrameQ)
			elseif Lv >= 2225 and Lv <= 2249 or SelectMonster == "Cake Guard" then 
				Ms = "Cake Guard"
				NameQuest = "CakeQuest1"
				QuestLv = 2
				NameMon = "Cake Guard"
				CFrameQ = CFrame.new(-2020.6068115234375, 37.82400894165039, -12027.80859375)
				CFrameMon = CFrame.new(-1817.9747314453125, 209.5632781982422, -12288.9228515625)
				SelectMonster = "Cookie Crafter"
				TelePBoss(CFrameQ)
			elseif Lv >= 2250 and Lv <= 2274 or SelectMonster == "Baking Staff" then 
				Ms = "Baking Staff"
				NameQuest = "CakeQuest2"
				QuestLv = 1
				NameMon = "Baking Staff"
				CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626)
				CFrameMon = CFrame.new(-1818.347900390625, 93.41275787353516, -12887.66015625)
				SelectMonster = "Cake Guard"
				TelePBoss(CFrameQ)
			elseif Lv >= 2275 and Lv <= 2299 or SelectMonster == "Head Baker" then 
				Ms = "Head Baker"
				NameQuest = "CakeQuest2"
				QuestLv = 2
				NameMon = "Head Baker"
				CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626)
				CFrameMon = CFrame.new(-2302.75806, 105.851219, -12928.1738, -0.436930418, 3.63066199e-08, -0.899495304, -6.58884005e-08, 1, 7.23686568e-08, 0.899495304, 9.0886374e-08, -0.436930418)
				SelectMonster = "Baking Staff"
				TelePBoss(CFrameQ)
			elseif Lv >= 2300 and Lv <= 2324 or SelectMonster == "Cocoa Warrior" then 
				Ms = "Cocoa Warrior"
				NameQuest = "ChocQuest1"
				QuestLv = 1
				NameMon = "Cocoa Warrior"
				CFrameQ = CFrame.new(231.607498, 24.7600384, -12198.8262, 0.998603284, -6.89139341e-08, -0.0528342389, 7.20464115e-08, 1, 5.73841312e-08, 0.0528342389, -6.1110498e-08, 0.998603284)
				CFrameMon = CFrame.new(44.8907547, 53.4631424, -12308.167, -0.695348501, -4.32111094e-08, 0.718672693, -1.05426594e-07, 1, -4.18787494e-08, -0.718672693, -1.0488754e-07, -0.695348501)
				TelePBoss(CFrameQ)
			elseif Lv >= 2325 and Lv <= 2349 or SelectMonster == "Chocolate Bar Battler" then 
				Ms = "Chocolate Bar Battler"
				NameQuest = "ChocQuest1"
				QuestLv = 2
				NameMon = "Chocolate Bar Battler"
				CFrameQ = CFrame.new(231.607498, 24.7600384, -12198.8262, 0.998603284, -6.89139341e-08, -0.0528342389, 7.20464115e-08, 1, 5.73841312e-08, 0.0528342389, -6.1110498e-08, 0.998603284)
				CFrameMon = CFrame.new(717.393555, 70.0507431, -12599.917, 0.64754194, -3.87490608e-08, 0.762029827, -3.6116095e-08, 1, 8.15397811e-08, -0.762029827, -8.03219677e-08, 0.64754194)
				SelectMonster = "Cocoa Warrior"
				TelePBoss(CFrameQ)
			elseif Lv >= 2350 and Lv <= 2374 or SelectMonster == "Sweet Thief" then 
				Ms = "Sweet Thief"
				NameQuest = "ChocQuest2"
				QuestLv = 1
				NameMon = "Sweet Thief"
				CFrameQ = CFrame.new(150.015152, 24.8196201, -12775.3916, -0.513929904, -9.5491286e-09, -0.857832193, 1.2668723e-08, 1, -1.87215683e-08, 0.857832193, -2.04892121e-08, -0.513929904)
				CFrameMon = CFrame.new(2.84610295, 82.2038116, -12553.6885, 0.720501184, 1.15794183e-08, -0.693453729, 1.00857711e-09, 1, 1.77460997e-08, 0.693453729, -1.34854874e-08, 0.720501184)
				SelectMonster = "Chocolate Bar Battler"
				TelePBoss(CFrameQ)
			elseif Lv >= 2375 and Lv <= 2399 or SelectMonster == "Candy Rebel" then 
				Ms = "Candy Rebel"
				NameQuest = "ChocQuest2"
				QuestLv = 2
				NameMon = "Candy Rebel"
				CFrameQ = CFrame.new(150.015152, 24.8196201, -12775.3916, -0.513929904, -9.5491286e-09, -0.857832193, 1.2668723e-08, 1, -1.87215683e-08, 0.857832193, -2.04892121e-08, -0.513929904)
				CFrameMon = CFrame.new(127.958076, 77.2476959, -12883.584, 0.769614816, -6.44218734e-10, 0.638508439, 1.49726986e-08, 1, -1.70381345e-08, -0.638508439, 2.26729959e-08, 0.769614816)
				SelectMonster = "Sweet Thief"
				TelePBoss(CFrameQ)
			elseif Lv >= 2400 and Lv <= 2424 or SelectMonster == "Candy Pirate" then 
				Ms = "Candy Pirate"
				NameQuest = "CandyQuest1"
				QuestLv = 1
				NameMon = "Candy Pirate"
				CFrameQ = CFrame.new(-1147.95142, 16.1072559, -14445.3105, -0.0240679532, 4.06167295e-08, 0.999710321, 7.46657349e-08, 1, -3.8830926e-08, -0.999710321, 7.3709522e-08, -0.0240679532)
				CFrameMon = CFrame.new(-1423.03235, 113.437248, -14594.1602, 0.0492029786, 2.03225614e-08, -0.998788774, -2.60848516e-08, 1, 1.90621972e-08, 0.998788774, 2.51153409e-08, 0.0492029786)
				TelePBoss(CFrameQ)
			elseif Lv >= 2425 and Lv <= 2449 or SelectMonster == "Snow Demon" then 
				Ms = "Snow Demon"
				NameQuest = "CandyQuest1"
				QuestLv = 2
				NameMon = "Snow Demon"
				CFrameQ = CFrame.new(-1147.95142, 16.1072559, -14445.3105, -0.0240679532, 4.06167295e-08, 0.999710321, 7.46657349e-08, 1, -3.8830926e-08, -0.999710321, 7.3709522e-08, -0.0240679532)
				CFrameMon = CFrame.new(-883.241455, 40.9553833, -14538.4951, -0.28144443, -1.18274158e-07, 0.959577501, 1.83865634e-08, 1, 1.28649276e-07, -0.959577501, 5.38509575e-08, -0.28144443)
				TelePBoss(CFrameQ)
			elseif Lv >= 2450 and Lv <= 2474 or SelectMonster == "Isle Outlaw" then 
				Ms = "Isle Outlaw"
				NameQuest = "TikiQuest1"
				QuestLv = 1
				NameMon = "Isle Outlaw"
				CFrameQ = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
				CFrameMon = CFrame.new(-16442.814453125, 116.13899993896484, -264.4637756347656)
				TelePBoss(CFrameQ)
            elseif Lv >= 2475 or SelectMonster == "Island Boy" then 
				Ms = "Island Boy"
				NameQuest = "TikiQuest1"
				QuestLv = 2
				NameMon = "Island Boy"
				CFrameQ = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
				CFrameMon = CFrame.new(-16901.26171875, 84.06756591796875, -192.88906860351562)
				SelectMonster = "Isle Outlaw"
				TelePBoss(CFrameQ)
			end
		end
	end

	---Tween

	function TPs(P1)
		local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		if Distance < 250 then
			Speed = 10000
		elseif Distance < 500 then
			Speed = 500
		elseif Distance < 1000 then
			Speed = 250
		elseif Distance >= 1000 then
			Speed = 250
		end
		game:GetService("TweenService"):Create(
			game.Players.LocalPlayer.Character.HumanoidRootPart,
		TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
		{CFrame = P1}
		):Play()
		if _G.Stop_Tween then
		game:GetService("TweenService"):Create(
		game.Players.LocalPlayer.Character.HumanoidRootPart,
		TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
			{CFrame = P1}
		):Cancel()
		end
	end

	function TP(P1)
			if not _G.Stop_Tween then
				local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
				Speed = 100
				if Distance < 250 then
					Speed = 5000
				elseif Distance < 500 then
					Speed = 650
				elseif Distance < 1000 then
					Speed = 350
				elseif Distance >= 1000 then
					Speed = 250
				end
				Tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),{CFrame = P1})
				if _G.Stop_Tween or Auto_Raid then
					Tween:Cancel()
				elseif game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
					Tween:Play()
				end
			end
		end
		
function TP3(P1)
	local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
	if Distance < 250 then
		Speed = 10000
	elseif Distance < 500 then
		Speed = 500
	elseif Distance < 1000 then
		Speed = 250
	elseif Distance >= 1000 then
		Speed = 250
	end
	game:GetService("TweenService"):Create(
		game.Players.LocalPlayer.Character.HumanoidRootPart,
		TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
		{CFrame = P1}
	):Play()
	if _G.Stop_Tween then
		game:GetService("TweenService"):Create(
		game.Players.LocalPlayer.Character.HumanoidRootPart,
		TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
			{CFrame = P1}
		):Cancel()
	end
end

function TP2(P1)
	local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
	if Distance < 150 then
		Speed = 5000
	elseif Distance < 200 then
		Speed = 1500
	elseif Distance < 300 then
		Speed = 800
	elseif Distance < 500 then
		Speed = 500
	elseif Distance < 1000 then
		Speed = 250
	elseif Distance >= 1000 then
		Speed = 250
	end
	game:GetService("TweenService"):Create(
		game.Players.LocalPlayer.Character.HumanoidRootPart,
		TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
		{CFrame = P1}
	):Play()
	if _G.Stop_Tween then
		game:GetService("TweenService"):Create(
		game.Players.LocalPlayer.Character.HumanoidRootPart,
		TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
			{CFrame = P1}
		):Cancel()
	end
	_G.Clip = true
	wait(Distance/Speed)
	_G.Clip = false
end

	function EquipWeaponAll()
		for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.ToolTip == "Melee" then
				if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
					EquipWeapon(v.Name)
				end
			end
		end
		wait(2)
		for i1 ,v1 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v1.ToolTip == "Sword" then
				if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v1.Name)) then
					EquipWeapon(v1.Name)
				end
			end
		end
		wait(2)
		for i2 ,v2 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v2.ToolTip == "Blox Fruit" then
				if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v2.Name)) then
					EquipWeapon(v2.Name)
				end
			end
		end
		wait(2)
	end

	function fpsboost()
		pcall(function()
		local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
		local g = game
		local w = g.Workspace
		local l = g.Lighting
		local t = w.Terrain
		t.WaterWaveSize = 0
		t.WaterWaveSpeed = 0
		t.WaterReflectance = 0
		t.WaterTransparency = 0
		l.GlobalShadows = false
		l.FogEnd = 9e9
		l.Brightness = 0
		settings().Rendering.QualityLevel = "Level01"
		for i, v in pairs(g:GetDescendants()) do
			if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then 
					v.Material = "Plastic"
					v.Reflectance = 0
					--v.CanCollide = false
			elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
					v.Transparency = 1
			elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
					v.Lifetime = NumberRange.new(0)
			elseif v:IsA("Explosion") then
					v.BlastPressure = 1
					v.BlastRadius = 1
			elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
					v.Enabled = false
			elseif v:IsA("MeshPart") then
					v.Material = "Plastic"
					v.Reflectance = 0
					v.TextureID = 10385902758728957    
			end
		end
		for i, e in pairs(l:GetChildren()) do
			if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
					e.Enabled = false
			end
		end
		for i, v in pairs(game:GetService("Workspace").Camera:GetDescendants()) do
			if v.Name == ("Water;") then
				v.Transparency = 1
				v.Material = "Plastic"
			end
		end
		end)
		pcall(function()
			if not game:IsLoaded() then repeat wait() until game:IsLoaded() end
			if hookfunction and setreadonly then
			local mt = getrawmetatable(game)
			local old = mt.__newindex
			setreadonly(mt, false)
			local sda
			sda = hookfunction(old, function(t, k, v)
				if k == "Material" then
					if v ~= Enum.Material.Neon and v ~= Enum.Material.Plastic and v ~= Enum.Material.ForceField then v = Enum.Material.Plastic end
				elseif k == "TopSurface" then v = "Smooth"
				elseif k == "Reflectance" or k == "WaterWaveSize" or k == "WaterWaveSpeed" or k == "WaterReflectance" then v = 0
				elseif k == "WaterTransparency" then v = 1
				elseif k == "GlobalShadows" then v = false end
				return sda(t, k, v)
			end)
			setreadonly(mt, true)
			end
			local g = game
			local w = g.Workspace
			local l = g:GetService"Lighting"
			local t = w:WaitForChild"Terrain"
			t.WaterWaveSize = 0
			t.WaterWaveSpeed = 0
			t.WaterReflectance = 0
			t.WaterTransparency = 1
			l.GlobalShadows = false
		end)
	end
	

	---EquipWeapon

	function EquipWeapon(ToolSe)
		if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
			local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
			wait(.4)
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
		end
	end

	---HopServer


	function HopServer()
		if not _G.TP_Ser then
			_G.TP_Ser = true
			game.StarterGui:SetCore("SendNotification", {
				Title = "Hop Low Server ", 
				Text = "กำลังหาเซิฟ",
				Icon = "http://www.roblox.com/asset/?id=9606070311",
				Duration = 25
			})
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
					game.StarterGui:SetCore("SendNotification", {
						Title = "Hop Low Server ", 
						Text = "Players : " ..tonumber(v.playing),
						Icon = "http://www.roblox.com/asset/?id=9606070311",
						Duration = 1.5
					})
					if tonumber(v.maxPlayers) > tonumber(v.playing) then
						for _,Existing in pairs(AllIDs) do
							if num ~= 0 then
								if ID == tostring(Existing) then
									Possible = false
								end
							else
								if tonumber(actualHour) ~= tonumber(Existing) then
									local delFile = pcall(function()
										-- delfile("NotSameServers.json")
										AllIDs = {}
										table.insert(AllIDs, actualHour)
									end)
								end
							end
							num = num + 1
						end
						if Possible == true then
							table.insert(AllIDs, ID)
							wait()
							pcall(function()
								_G.Setting_table.Hop_Server = true 
								Update_Setting(getgenv()['MyName'])
								_G.TP_Ser = true
								-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
								wait()
								game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
							end)
							wait(.1)
						end
					end
				end
			end
			function Bring()
				while wait(.2) do
					pcall(function()
						TPReturner()
						if foundAnything ~= "" then
							TPReturner()
						end
					end)
				end
			end
			Bring()
		end
	end

	function Get_Fruit_Backpack()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				if string.find(v.Name,"Fruit") then
					_G.Have_Fruit = true
					return
				end
			end
		end
	end
	function Get_Fruit_Character()
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				if string.find(v.Name,"Fruit") then
					_G.Have_Fruit = true
					return
				end
			end
		end
	end

	---Fps Boost

	function fpsboost()
		pcall(function()
		local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
		local g = game
		local w = g.Workspace
		local l = g.Lighting
		local t = w.Terrain
		t.WaterWaveSize = 0
		t.WaterWaveSpeed = 0
		t.WaterReflectance = 0
		t.WaterTransparency = 0
		l.GlobalShadows = false
		l.FogEnd = 9e9
		l.Brightness = 0
		settings().Rendering.QualityLevel = "Level01"
		for i, v in pairs(g:GetDescendants()) do
			if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then 
					v.Material = "Plastic"
					v.Reflectance = 0
					--v.CanCollide = false
			elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
					v.Transparency = 1
			elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
					v.Lifetime = NumberRange.new(0)
			elseif v:IsA("Explosion") then
					v.BlastPressure = 1
					v.BlastRadius = 1
			elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
					v.Enabled = false
			elseif v:IsA("MeshPart") then
					v.Material = "Plastic"
					v.Reflectance = 0
					v.TextureID = 10385902758728957    
			end
		end
		for i, e in pairs(l:GetChildren()) do
			if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
					e.Enabled = false
			end
		end
		for i, v in pairs(game:GetService("Workspace").Camera:GetDescendants()) do
			if v.Name == ("Water;") then
				v.Transparency = 1
				v.Material = "Plastic"
			end
		end
		end)
		pcall(function()
			if not game:IsLoaded() then repeat wait() until game:IsLoaded() end
			if hookfunction and setreadonly then
			local mt = getrawmetatable(game)
			local old = mt.__newindex
			setreadonly(mt, false)
			local sda
			sda = hookfunction(old, function(t, k, v)
				if k == "Material" then
					if v ~= Enum.Material.Neon and v ~= Enum.Material.Plastic and v ~= Enum.Material.ForceField then v = Enum.Material.Plastic end
				elseif k == "TopSurface" then v = "Smooth"
				elseif k == "Reflectance" or k == "WaterWaveSize" or k == "WaterWaveSpeed" or k == "WaterReflectance" then v = 0
				elseif k == "WaterTransparency" then v = 1
				elseif k == "GlobalShadows" then v = false end
				return sda(t, k, v)
			end)
			setreadonly(mt, true)
			end
			local g = game
			local w = g.Workspace
			local l = g:GetService"Lighting"
			local t = w:WaitForChild"Terrain"
			t.WaterWaveSize = 0
			t.WaterWaveSpeed = 0
			t.WaterReflectance = 0
			t.WaterTransparency = 1
			l.GlobalShadows = false
		end)
	end

	----[Body Gryro]

    task.spawn(function()
		game:GetService("RunService").Stepped:Connect(function()
			pcall(function()
				--[World 1]
				if Prince2 or _G.Settings.Mastery["Farm Mastery SwordList"] or pre or Auto_Raw or Auto_Farm_Fruit or Auto_Farm_Monster or Auto_Quest_Tushita_2 or _G.Setting_table.AutoFarm_Meterial or _G.Setting_table.AutoFarmAllBoss or _G.Setting_table.AutoFarmAllBoss or _G.Setting_table.AutoFarmBoss or _G.Farm_Boss or Auto_Farm_Boss or Farm_Candy or Farm_Mas_Sword or _G.Settings.Mastery["Farm Mastery SwordList"] or _G.Setting_table.AutoFarm or _G.Setting_table.AutoFarm_Meterial or _G.Start_Tween_Island or AutoFarmKen_Rejoin or _G.Setting_table.AutoFarm_Meterial or AutoMobAura or _G.AutoFarm_Ken or AutoFarmObservation or Auto_radiao or Auto_Scrapmetal or Auto_Lather or Auto_minitusk or Auto_magma or Auto_mystcdrop or Auto_vampire or Auto_Dragon or _G.Clip or Auto_Farm_Bounty or Auto_Twin_Hooks or Auto_Canvander or Auto_Buddy_Sword or Auto_Hallow_Scryte or Auto_Spikey_Trident or Auto_Dark_Dagger or Auto_Serpent_Bow or Auto_Acidum_Rifle or Auto_Swan_Glass or Auto_Pale_Scarf or Auto_Valkyrie_Helmet or Saber_Farm or Pole_Farm or Rengoku_A or Auto_Dragon_Trident or Triple_A or Auto_Yama or Auto_Tushita or Auto_Dark_Coat or _G.Setting_table.Human_Evo or _G.Setting_table.Mink_Evo or Auto_Three_World or Bartlio_Farm or Auto_New_A or Auto_Elite_Hunter or Auto_Phoenix_Awaken or Auto_Raid or _G.Setting_table.Farm_Ken_Hop or _G.Setting_table.Auto_Farm_Boss_Hop or _G.Setting_table.Auto_Farm_Boss_All_Hop or Open_Color_Haki or Auto_Holy_Torch or Grab_Chest or Auto_Farm_Monster or Farm_Ken or Auto_Farm_Bone or Farm_Ken_V2 or Auto_Farm_Melee or _G.Settings.Mastery["Farm Mastery SwordList"] or Auto_Farm or Auto_Farm_Gun or Auto_Farm_Boss_All or Auto_Farm_Boss or Auto_Farm_Fruit or _G.TeleportPly or _G.Setting_table.AutoChestMirage or _G.Setting_table.AutoRengoku or Auto_Rainbow_Haki or _G.Setting_table.AutoEctoplasm or _G.Setting_table.TeleporttoGear or FarmShark or AutoTerrorshark or AutoSeaBest or FarmPiranha or Fish_Crew_Member or AutoPirateShip or _G.Setting_table.AutoMysticIsland or AutoRougthFully then
					if syn then
						setfflag("HumanoidParallelRemoveNoPhysics", "False")
						setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
						game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
						if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
							game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
						end
					else
						if not Auto_Sea_Best then
							if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
								if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1") then
									if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
										game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
									end
									local BodyVelocity = Instance.new("BodyVelocity")
									BodyVelocity.Name = "BodyVelocity1"
									BodyVelocity.Parent =  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
									BodyVelocity.MaxForce = Vector3.new(10000, 10000, 10000)
									BodyVelocity.Velocity = Vector3.new(0, 0, 0)
								end
							end
							for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
								if v:IsA("BasePart") then
									v.CanCollide = false    
								end
							end
						end
					end
				else
					if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1") then
						game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1"):Destroy();
					end
				end
			end)
		end)
	end)





	function InMyNetWork(object)
		if isnetworkowner then
			return isnetworkowner(object)
		else
			if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then 
				return true
			end
			return false
		end
	end


	function TP4(P1)
		if not _G.Stop_Tween then
			local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
			Speed = 100
			if Distance < 250 then
				Speed = 5000
			elseif Distance < 500 then
				Speed = 650
			elseif Distance < 1000 then
				Speed = 350
			elseif Distance >= 1000 then
				Speed = 250
			end
			Tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),{CFrame = P1})
			if _G.Stop_Tween or Auto_Raid then
				Tween:Cancel()
			elseif game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
				Tween:Play()
			end
		end
	end



	--function

	function GetFightingStyle(Style)
		ReturnText = ""
		for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == Style then
					ReturnText = v.Name
				end
			end
		end
		for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == Style then
					ReturnText = v.Name
				end
			end
		end
		if ReturnText ~= "" then
			return ReturnText
		else
			return "Not Have"
		end
	end

	function EquipWeaponSword()
		pcall(function()
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v.ToolTip == "Sword" and v:IsA('Tool') then
					local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) 
					game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
				end
			end
		end)
	end

	function Com(com,...)
		local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("Comm"..com)
		if Remote:IsA("RemoteEvent") then
			Remote:FireServer(...)
		elseif Remote:IsA("RemoteFunction") then
			Remote:InvokeServer(...)
		end
	end

	function CheckMasteryWeapon(NameWe,MasNum)
		if game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe) then
			if tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) < MasNum then
				return "true DownTo"
			elseif tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) >= MasNum then
				return "true UpTo"
			end
		end
		if game.Players.LocalPlayer.Character:FindFirstChild(NameWe) then
			if tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) < MasNum then
				return "true DownTo"
			elseif tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) >= MasNum then
				return "true UpTo"
			end
		end
		return "else"
	end

    function Click()
        game:GetService'VirtualUser':CaptureController()
        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
    end
    
    function Text(value)
		game.StarterGui:SetCore("SendNotification", {
			Title = "Makori Notification", 
			Text = tostring(value),
			Icon = "http://www.roblox.com/asset/?id=14395120725",
			Duration = 10
		})
	end
	
	---Fast Attack

	local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
	local CombatFrameworkR = getupvalues(CombatFramework)[2]
	local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
	local RigControllerR = getupvalues(RigController)[2]
	local realbhit = require(game.ReplicatedStorage.CombatFramework.RigLib)
	local cooldownfastattack = tick()

	function CurrentWeapon()
		local ac = CombatFrameworkR.activeController
		local ret = ac.blades[1]
		if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
		pcall(function()
			while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
		end)
		if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
		return ret
	end
	
	function getAllBladeHitsPlayers(Sizes)
		local Hits = {}
		local Client = game.Players.LocalPlayer
		local Characters = game:GetService("Workspace").Characters:GetChildren()
		for i=1,#Characters do local v = Characters[i]
			local Human = v:FindFirstChildOfClass("Humanoid")
			if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
				table.insert(Hits,Human.RootPart)
			end
		end
		return Hits
	end
	
	function getAllBladeHits(Sizes)
		local Hits = {}
		local Client = game.Players.LocalPlayer
		local Enemies = game:GetService("Workspace").Enemies:GetChildren()
		for i=1,#Enemies do local v = Enemies[i]
			local Human = v:FindFirstChildOfClass("Humanoid")
			if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
				table.insert(Hits,Human.RootPart)
			end
		end
		return Hits
	end
	
	function AttackFunction()
		local ac = CombatFrameworkR.activeController
		if ac and ac.equipped then
			for indexincrement = 1, 1 do
				local bladehit = getAllBladeHits(60)
				if #bladehit > 0 then
					local AcAttack8 = debug.getupvalue(ac.attack, 5)
					local AcAttack9 = debug.getupvalue(ac.attack, 6)
					local AcAttack7 = debug.getupvalue(ac.attack, 4)
					local AcAttack10 = debug.getupvalue(ac.attack, 7)
					local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
					local NumberAc13 = AcAttack7 * 798405
					(function()
						NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
						AcAttack8 = math.floor(NumberAc12 / AcAttack9)
						AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
					end)()
					AcAttack10 = AcAttack10 + 1
					debug.setupvalue(ac.attack, 5, AcAttack8)
					debug.setupvalue(ac.attack, 6, AcAttack9)
					debug.setupvalue(ac.attack, 4, AcAttack7)
					debug.setupvalue(ac.attack, 7, AcAttack10)
					for k, v in pairs(ac.animator.anims.basic) do
						v:Play(0.01,0.01,0.01)
					end                 
					if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 
						game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
						game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
						game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 2, "") 
					end
				end
			end
		end
	end


	--Hard fast

	local plr = game.Players.LocalPlayer
	local CbFw = debug.getupvalues(require(plr.PlayerScripts.CombatFramework))
	local CbFw2 = CbFw[2]

	function GetCurrentBlade() 
		local p13 = CbFw2.activeController
		local ret = p13.blades[1]
		if not ret then return end
		while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
		return ret
	end

	function AttackNoCD()
        if not Auto_Farm_Bounty and not Auto_Farm_Fruit or Mix_Farm then
            if not Auto_Raid then
                local AC = CbFw2.activeController
                for i = 1, 1 do 
                    local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
                        plr.Character,
                        {plr.Character.HumanoidRootPart},
                        60
                    )
                    local cac = {}
                    local hash = {}
                    for k, v in pairs(bladehit) do
                        if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                            table.insert(cac, v.Parent.HumanoidRootPart)
                            hash[v.Parent] = true
                        end
                    end
                    bladehit = cac
                    if #bladehit > 0 then
                        local u8 = debug.getupvalue(AC.attack, 5)
                        local u9 = debug.getupvalue(AC.attack, 6)
                        local u7 = debug.getupvalue(AC.attack, 4)
                        local u10 = debug.getupvalue(AC.attack, 7)
                        local u12 = (u8 * 798405 + u7 * 727595) % u9
                        local u13 = u7 * 798405
                        (function()
                            u12 = (u12 * u9 + u13) % 1099511627776
                            u8 = math.floor(u12 / u9)
                            u7 = u12 - u8 * u9
                        end)()
                        u10 = u10 + 1
                        debug.setupvalue(AC.attack, 5, u8)
                        debug.setupvalue(AC.attack, 6, u9)
                        debug.setupvalue(AC.attack, 4, u7)
                        debug.setupvalue(AC.attack, 7, u10)
                        pcall(function()
                            if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
                                AC.animator.anims.basic[1]:Play(0.01,0.01,0.01)
                                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                                game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")
                            end
                        end)
                    end
                end
            end
        end
	end



	--[[task.spawn(function()
		while task.wait() do
			pcall(function()
				if Auto_Farm_Bounty or Auto_Farm_Fruit and not Mix_Farm then
					--[[local Module = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
					local CombatFramework = debug.getupvalues(Module)[2]
					local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)
					CameraShakerR:Stop()
					CombatFramework.activeController.attacking = false
					CombatFramework.activeController.timeToNextAttack = 0
					CombatFramework.activeController.increment = 3
					CombatFramework.activeController.hitboxMagnitude = 150
					CombatFramework.activeController.blocking = false
					CombatFramework.activeController.timeToNextBlock = 0
					CombatFramework.activeController.focusStart = 0
					CombatFramework.activeController.humanoid.AutoRotate = true
					local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
					local Camera = require(game.ReplicatedStorage.Util.CameraShaker)
					Camera:Stop()
					getupvalues(CombatFramework)[2].activeController.hitboxMagnitude = 80
					getupvalues(CombatFramework)[2]['activeController']:attack()  
				end
			end)
		end
	end)]]

	local YaY = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
	local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)
	spawn(function()
		while task.wait() do
			if Auto_Farm_Bounty or Auto_Farm_Fruit and not Mix_Farm then
				pcall(function()
					for i,CombatFrameworkR in pairs(debug.getupvalues(YaY)) do
						if i == 2 then
							CameraShakerR:Stop()
							CombatFrameworkR.activeController.attacking = false
							CombatFrameworkR.activeController.timeToNextAttack = 0
							CombatFrameworkR.activeController.increment = 4
							CombatFrameworkR.activeController.increment = 2
							CombatFrameworkR.activeController.hitboxMagnitude = 80
							CombatFrameworkR.activeController.blocking = false
							CombatFrameworkR.activeController.timeToNextBlock = 0
							CombatFrameworkR.activeController.focusStart = 0
							CombatFrameworkR.activeController.humanoid.AutoRotate = true
						end
					end
				end)
			else
				for i,CombatFrameworkR in pairs(debug.getupvalues(YaY)) do
					if i == 2 then
						pcall(function()
							CameraShakerR:Stop()
							CombatFrameworkR.activeController.attacking = false
							CombatFrameworkR.activeController.hitboxMagnitude = 80
							CombatFrameworkR.activeController.blocking = false
							CombatFrameworkR.activeController.focusStart = 0
							CombatFrameworkR.activeController.humanoid.AutoRotate = true
						end)
					end
				end
			end
		end
	end)


	--[[local Module = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
	local CombatFramework = debug.getupvalues(Module)[2]
	local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)
	spawn(function()
		while true do
			if Auto_Farm_Bounty or Auto_Farm_Fruit and not Mix_Farm then
				pcall(function()
					CameraShakerR:Stop()
					CombatFramework.activeController.attacking = false
					CombatFramework.activeController.timeToNextAttack = 0
					CombatFramework.activeController.increment = 3
					CombatFramework.activeController.hitboxMagnitude = 150
					CombatFramework.activeController.blocking = false
					CombatFramework.activeController.timeToNextBlock = 0
					CombatFramework.activeController.focusStart = 0
					CombatFramework.activeController.humanoid.AutoRotate = true
				end)
			end
			task.wait()
		end
	end)]]

	--[[local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
	for i,v in pairs(getreg()) do
		if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework then
			for x,w in pairs(debug.getupvalues(v)) do
				if typeof(w) == "table" then
					spawn(function()
						game:GetService("RunService").RenderStepped:Connect(function()
							if Auto_Farm_Bounty or Auto_Farm_Fruit and not Mix_Farm then
								pcall(function()
									if game.Players.LocalPlayer.Character:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") then
										w.activeController.increment = 3
									else
										w.activeController.increment = 4
									end             
									CameraShaker:Stop()
									w.activeController.timeToNextAttack = -(math.huge^math.huge^math.huge)
									w.activeController.attacking = false
									w.activeController.timeToNextBlock = 0
									w.activeController.blocking = false                            
									w.activeController.hitboxMagnitude = 50
									w.activeController.humanoid.AutoRotate = true
									w.activeController.focusStart = 0
								end)
							end
						end)
					end)
				end
			end
		end
	end]]


if game.CoreGui:FindFirstChild("SOMEXHUBMODILE") then
    game.CoreGui:FindFirstChild("SOMEXHUBMODILE"):Destroy()
end

if game.CoreGui:FindFirstChild("SOMEXHUBMODILE") then
    game.CoreGui:FindFirstChild("SOMEXHUBMODILE"):Destroy()
end

local SOMEXHUBMODILE = Instance.new("ScreenGui")
local MODILEGUISOMEXHUB = Instance.new("TextButton")
local MODILEGUISOMEXHUBHUI = Instance.new("UICorner")
local MODILEMAGE = Instance.new("ImageLabel")

SOMEXHUBMODILE.Name = "SOMEXHUBMODILE"
        SOMEXHUBMODILE.Parent = game.CoreGui
        SOMEXHUBMODILE.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

        MODILEGUISOMEXHUB.Name = "MODILEGUISOMEXHUB"
        MODILEGUISOMEXHUB.Parent = SOMEXHUBMODILE
        MODILEGUISOMEXHUB.BackgroundColor3 = Color3.fromRGB(30,20,20)
        MODILEGUISOMEXHUB.BorderSizePixel = 0
        MODILEGUISOMEXHUB.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
        MODILEGUISOMEXHUB.Size = UDim2.new(0, 50, 0, 50)
        MODILEGUISOMEXHUB.Font = Enum.Font.SourceSans
        MODILEGUISOMEXHUB.Text = ""
        MODILEGUISOMEXHUB.TextColor3 = Color3.fromRGB(0, 0, 0)
        MODILEGUISOMEXHUB.TextSize = 14.000
        MODILEGUISOMEXHUB.Draggable = true
        MODILEGUISOMEXHUB.MouseButton1Click:Connect(function()
        game.CoreGui:FindFirstChild("SOMEXHUB").Enabled = not game.CoreGui:FindFirstChild("SOMEXHUB").Enabled
        end)
        do
        if game:GetService("CoreGui"):FindFirstChild("SOMEXHUB") then
        end
        end

        MODILEGUISOMEXHUBHUI.Name = "MODILEGUISOMEXHUBHUI"
        MODILEGUISOMEXHUBHUI.Parent = MODILEGUISOMEXHUB

        MODILEMAGE.Name = "MODILEMAGE"
        MODILEMAGE.Parent = MODILEGUISOMEXHUB
        MODILEMAGE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        MODILEMAGE.BackgroundTransparency = 1.000
        MODILEMAGE.BorderSizePixel = 0
        MODILEMAGE.Position = UDim2.new(0, 3, 0, 2)
        MODILEMAGE.Size = UDim2.new(0, 45, 0, 45)
        MODILEMAGE.Image = "http://www.roblox.com/asset/?id=14395120725"

do local GUI = game.CoreGui:FindFirstChild("SOMEXHUB");if GUI then GUI:Destroy();end;if _G.Color == nil then
       _G.Color = Color3.fromRGB(50,255,255)
   end 
end


local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local function MakeDraggable(topbarobject, object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil

	local function Update(input)
		local Delta = input.Position - DragStart
		local pos = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y)
		local Tween = TweenService:Create(object, TweenInfo.new(0.15), {Position = pos})
		Tween:Play()
	end

	topbarobject.InputBegan:Connect(
		function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				Dragging = true
				DragStart = input.Position
				StartPosition = object.Position

				input.Changed:Connect(
					function()
						if input.UserInputState == Enum.UserInputState.End then
							Dragging = false
						end
					end
				)
			end
		end
	)

	topbarobject.InputChanged:Connect(
		function(input)
			if
				input.UserInputType == Enum.UserInputType.MouseMovement or
				input.UserInputType == Enum.UserInputType.Touch
			then
				DragInput = input
			end
		end
	)

	UserInputService.InputChanged:Connect(
		function(input)
			if input == DragInput and Dragging then
				Update(input)
			end
		end
	)
end

local Update = {}

function Update:Window(text,logo,keybind)
	local uihide = false
	local abc = false
	local logo = logo or 0
	local currentpage = ""
	local keybind = keybind or Enum.KeyCode.RightControl
	local yoo = string.gsub(tostring(keybind),"Enum.KeyCode.","")
	
	local SOMEXHUB = Instance.new("ScreenGui")
	SOMEXHUB.Name = "SOMEXHUB"
	SOMEXHUB.Parent = game.CoreGui
	SOMEXHUB.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	local Main = Instance.new("Frame")
	Main.Name = "Main"
	Main.Parent = SOMEXHUB
	Main.ClipsDescendants = true
	Main.AnchorPoint = Vector2.new(0.5,0.5)
	Main.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	Main.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main.Size = UDim2.new(0, 0, 0, 0)
	
	Main:TweenSize(UDim2.new(0, 656, 0, 350),"Out","Quad",0.4,true)
	
	local Top = Instance.new("Frame")
	Top.Name = "Top"
	Top.Parent = Main
	Top.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Top.Size = UDim2.new(0, 656, 0, 27)
	
	local Name = Instance.new("TextLabel")
	Name.Name = "Name"
	Name.Parent = Top
	Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Name.BackgroundTransparency = 1.000
	Name.Position = UDim2.new(0.0609756112, -25, 0, 0)
	Name.Size = UDim2.new(0, 61, 0, 27)
	Name.Font = Enum.Font.GothamSemibold
	Name.Text = text
	Name.TextColor3 = Color3.fromRGB(225, 225, 225)
	Name.TextSize = 17.000

	local Hub = Instance.new("TextLabel")
	Hub.Name = "Hub"
	Hub.Parent = Top
	Hub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Hub.BackgroundTransparency = 1.000
	Hub.Position = UDim2.new(0, 85, 0, 0)
	Hub.Size = UDim2.new(0, 81, 0, 27)
	Hub.Font = Enum.Font.GothamSemibold
	Hub.Text = "  HUB"
	    spawn(function()
            while wait() do
                pcall(function()
                    wait(0.1) 
                    game:GetService('TweenService'):Create(
                        Hub,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(255, 0, 0)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        Hub,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(255, 155, 0)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        Hub,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(255, 255, 0)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        Hub,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(0, 255, 0)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        Hub,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(0, 255, 255)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        Hub,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(0, 155, 255)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        Hub,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(255, 0, 255)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        Hub,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(255, 0, 155)}
                    ):Play() 
                    wait(.5)
                end)
            end
        end)
	Hub.TextSize = 17.000
	Hub.TextXAlignment = Enum.TextXAlignment.Left
	
	local Hubb = Instance.new("TextLabel")
	Hubb.Name = "Hubb"
	Hubb.Parent = Top
	Hubb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Hubb.BackgroundTransparency = 1.000
	Hubb.Position = UDim2.new(0, 480, 0, 0)
	Hubb.Size = UDim2.new(0, 81, 0, 27)
	Hubb.Font = Enum.Font.GothamSemibold
	Hubb.Text = "Version|X เวอร์ชั่นเอ๊กซ์"
	Hubb.TextColor3 = Color3.fromRGB(255, 255, 255)
	Hubb.TextSize = 17.000
	Hubb.TextXAlignment = Enum.TextXAlignment.Left

	local Tab = Instance.new("Frame")
	Tab.Name = "Tab"
	Tab.Parent = Main
	Tab.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Tab.BackgroundTransparency = 1.000
	Tab.Position = UDim2.new(0, 5, 0, 30)
	Tab.Size = UDim2.new(0, 150, 0, 350)

local LogoHub = Instance.new("ImageLabel")
	LogoHub.Name = "LogoHub"
	LogoHub.Parent = Tab
	LogoHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LogoHub.BackgroundTransparency = 1.000
	LogoHub.Position = UDim2.new(0, 0, 0, 1)
	LogoHub.Size = UDim2.new(0, 150, 0, 150)
	LogoHub.Image = "http://www.roblox.com/asset/?id="..tostring(14395120725)

	local ScrollTab = Instance.new("ScrollingFrame")
	ScrollTab.Name = "ScrollTab"
	ScrollTab.Parent = Tab
	ScrollTab.Active = true
	ScrollTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ScrollTab.BackgroundTransparency = 1.000
	ScrollTab.Size = UDim2.new(0, 150, 0, 365)
	ScrollTab.CanvasSize = UDim2.new(0, 0, 0, 0)
	ScrollTab.ScrollBarThickness = 0

	local PLL = Instance.new("UIListLayout")
	PLL.Name = "PLL"
	PLL.Parent = ScrollTab
	PLL.SortOrder = Enum.SortOrder.LayoutOrder
	PLL.Padding = UDim.new(0, 15)

	local PPD = Instance.new("UIPadding")
	PPD.Name = "PPD"
	PPD.Parent = ScrollTab
	PPD.PaddingLeft = UDim.new(0, 10)
	PPD.PaddingTop = UDim.new(0, 10)

	local Page = Instance.new("Frame")
	Page.Name = "Page"
	Page.Parent = Main
	Page.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Page.Position = UDim2.new(0.245426834, 0, 0.075000003, 0)
	Page.Size = UDim2.new(0, 490, 0, 365)

	local MainPage = Instance.new("Frame")
	MainPage.Name = "MainPage"
	MainPage.Parent = Page
	MainPage.ClipsDescendants = true
	MainPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MainPage.BackgroundTransparency = 1.000
	MainPage.Size = UDim2.new(0, 490, 0, 365)

	local PageList = Instance.new("Folder")
	PageList.Name = "PageList"
	PageList.Parent = MainPage

	local UIPageLayout = Instance.new("UIPageLayout")

	UIPageLayout.Parent = PageList
	UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIPageLayout.EasingDirection = Enum.EasingDirection.InOut
	UIPageLayout.EasingStyle = Enum.EasingStyle.Quad
	UIPageLayout.FillDirection = Enum.FillDirection.Vertical
	UIPageLayout.Padding = UDim.new(0, 15)
	UIPageLayout.TweenTime = 0.400
	UIPageLayout.GamepadInputEnabled = false
	UIPageLayout.ScrollWheelInputEnabled = false
	UIPageLayout.TouchInputEnabled = false
	
	MakeDraggable(Top,Main)

	UserInputService.InputBegan:Connect(function(input)
		if input.KeyCode == Enum.KeyCode[yoo] then
			if uihide == false then
				uihide = true
				Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.4,true)
			else
				uihide = false
				Main:TweenSize(UDim2.new(0, 656, 0, 350),"Out","Quad",0.4,true)
			end
		end
	end)
	
	local uitab = {}
	
	function uitab:Tab(text,image)
	    local Image = image
	    
		local TabButton = Instance.new("TextButton")
		TabButton.Parent = ScrollTab
		TabButton.Name = text.."Server"
		TabButton.Text = text
		TabButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		TabButton.BackgroundTransparency = 0.150
		TabButton.Size = UDim2.new(0, 130, 0, 23)
		TabButton.Font = Enum.Font.GothamSemibold
		TabButton.TextColor3 = Color3.fromRGB(225, 225, 225)
		TabButton.TextSize = 15.000
		TabButton.TextTransparency = 0.500

            local PageImage = Instance.new("ImageLabel")
            PageImage.Name = "PageImage"
            PageImage.Parent = TabButton
            PageImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            PageImage.BackgroundTransparency = 1.000
            PageImage.Position = UDim2.new(0, 5, 0, 5)
            PageImage.Size = UDim2.new(0, 15, 0, 15)
            PageImage.Image = "rbxassetid://"..tostring(Image)
            
		local MainFramePage = Instance.new("ScrollingFrame")
		MainFramePage.Name = text.."_Page"
		MainFramePage.Parent = PageList
		MainFramePage.Active = true
		MainFramePage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		MainFramePage.BackgroundTransparency = 1.000
		MainFramePage.BorderSizePixel = 0
		MainFramePage.Size = UDim2.new(0, 490, 0, 365)
		MainFramePage.CanvasSize = UDim2.new(0, 0, 0, 0)
		MainFramePage.ScrollBarThickness = 0
		
		local UIPadding = Instance.new("UIPadding")
		local UIListLayout = Instance.new("UIListLayout")
		
		UIPadding.Parent = MainFramePage
		UIPadding.PaddingLeft = UDim.new(0, 10)
		UIPadding.PaddingTop = UDim.new(0, 10)

		UIListLayout.Padding = UDim.new(0,15)
		UIListLayout.Parent = MainFramePage
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		
		TabButton.MouseButton1Click:Connect(function()
			for i,v in next, ScrollTab:GetChildren() do
				if v:IsA("TextButton") then
					TweenService:Create(
						v,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0.5}
					):Play()
				end
				TweenService:Create(
					TabButton,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextTransparency = 0}
				):Play()
			end
			for i,v in next, PageList:GetChildren() do
				currentpage = string.gsub(TabButton.Name,"Server","").."_Page"
				if v.Name == currentpage then
					UIPageLayout:JumpTo(v)
				end
			end
		end)

		if abc == false then
			for i,v in next, ScrollTab:GetChildren() do
				if v:IsA("TextButton") then
					TweenService:Create(
						v,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0.5}
					):Play()
				end
				TweenService:Create(
					TabButton,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextTransparency = 0}
				):Play()
			end
			UIPageLayout:JumpToIndex(1)
			abc = true
		end
		
		game:GetService("RunService").Stepped:Connect(function()
			pcall(function()
				MainFramePage.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 20)
				ScrollTab.CanvasSize = UDim2.new(0,0,0,PLL.AbsoluteContentSize.Y + 20)
			end)
		end)
		
		local main = {}
		function main:Button(text,callback)
			local Button = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local TextBtn = Instance.new("TextButton")
			local UICorner_2 = Instance.new("UICorner")
			local Black = Instance.new("Frame")
			local IMGTOG = Instance.new("ImageLabel")
			local UICorner_3 = Instance.new("UICorner")
			
			Button.Name = "Button"
			Button.Parent = MainFramePage
			Button.BackgroundColor3 = _G.Color
			Button.Size = UDim2.new(0, 470, 0, 31)
			
			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = Button
			
			TextBtn.Name = "TextBtn"
			TextBtn.Parent = Button
			TextBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
			TextBtn.Position = UDim2.new(0, 1, 0, 1)
			TextBtn.Size = UDim2.new(0, 468, 0, 29)
			TextBtn.AutoButtonColor = false
			TextBtn.Font = Enum.Font.GothamSemibold
			TextBtn.Text = text
			TextBtn.TextColor3 = Color3.fromRGB(225, 225, 225)
			TextBtn.TextSize = 15.000
			
			UICorner_2.CornerRadius = UDim.new(0, 5)
			UICorner_2.Parent = TextBtn
			
			Black.Name = "Black"
			Black.Parent = Button
			Black.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Black.BackgroundTransparency = 1.000
			Black.BorderSizePixel = 0
			Black.Position = UDim2.new(0, 1, 0, 1)
			Black.Size = UDim2.new(0, 468, 0, 29)
	        
			UICorner_3.CornerRadius = UDim.new(0, 5)
			UICorner_3.Parent = Black

			TextBtn.MouseEnter:Connect(function()
				TweenService:Create(
					Black,
					TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{BackgroundTransparency = 0.7}
				):Play()
			end)
			TextBtn.MouseLeave:Connect(function()
				TweenService:Create(
					Black,
					TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{BackgroundTransparency = 1}
				):Play()
			end)
			TextBtn.MouseButton1Click:Connect(function()
				TextBtn.TextSize = 0
				TweenService:Create(
					TextBtn,
					TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextSize = 15}
				):Play()
				callback()
			end)
		end
		function main:Toggle(text,config,callback)
			config = config or false
			local toggled = config
			local Toggle = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local Button = Instance.new("TextButton")
			local UICorner_2 = Instance.new("UICorner")
			local Label = Instance.new("TextLabel")
			local ToggleImage = Instance.new("Frame")
			local UICorner_3 = Instance.new("UICorner")
			local Circle = Instance.new("Frame")
			local IMGTOG = Instance.new("ImageLabel")
			local UICorner_4 = Instance.new("UICorner")

			Toggle.Name = "Toggle"
			Toggle.Parent = MainFramePage
			Toggle.BackgroundColor3 = _G.Color
			Toggle.Size = UDim2.new(0, 470, 0, 31)

			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = Toggle

			Button.Name = "Button"
			Button.Parent = Toggle
			Button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
			Button.Position = UDim2.new(0, 1, 0, 1)
			Button.Size = UDim2.new(0, 468, 0, 29)
			Button.AutoButtonColor = false
			Button.Font = Enum.Font.SourceSans
			Button.Text = ""
			Button.TextColor3 = Color3.fromRGB(0, 0, 0)
			Button.TextSize = 11.000

			UICorner_2.CornerRadius = UDim.new(0, 5)
			UICorner_2.Parent = Button

			Label.Name = "Label"
			Label.Parent = Toggle
			Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Label.BackgroundTransparency = 1.000
			Label.Position = UDim2.new(0, 1, 0, 1)
			Label.Size = UDim2.new(0, 468, 0, 29)
			Label.Font = Enum.Font.GothamSemibold
			Label.Text = text
			Label.TextColor3 = Color3.fromRGB(225, 225, 225)
			Label.TextSize = 15.000

			ToggleImage.Name = "ToggleImage"
			ToggleImage.Parent = Toggle
			ToggleImage.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
			ToggleImage.Position = UDim2.new(0, 415, 0, 5)
			ToggleImage.Size = UDim2.new(0, 45, 0, 20)

			UICorner_3.CornerRadius = UDim.new(0, 10)
			UICorner_3.Parent = ToggleImage

local tggc = Instance.new("TextLabel")
	tggc.Name = "tggc"
	tggc.Parent = Toggle
	tggc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	tggc.BackgroundTransparency = 1.000
	tggc.Position = UDim2.new(0, 40, 0, 3)
	tggc.Size = UDim2.new(0, 81, 0, 27)
	tggc.Font = Enum.Font.GothamSemibold
    tggc.Text = "|"
	tggc.TextColor3 = _G.Color
	tggc.TextSize = 26.000
	tggc.TextXAlignment = Enum.TextXAlignment.Left

local LogoToggle = Instance.new("ImageLabel")
	LogoToggle.Name = "LogoToggle"
	LogoToggle.Parent = Toggle
	LogoToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LogoToggle.BackgroundTransparency = 1.000
	LogoToggle.Position = UDim2.new(0, 7, 0, 2)
	LogoToggle.Size = UDim2.new(0, 26, 0, 26)
	LogoToggle.Image = "http://www.roblox.com/asset/?id="..tostring(14395120725)

			Circle.Name = "Circle"
			Circle.Parent = ToggleImage
			Circle.BackgroundColor3 = Color3.fromRGB(227, 60, 60)
			Circle.Position = UDim2.new(0, 2, 0, 2)
			Circle.Size = UDim2.new(0, 16, 0, 16)

			UICorner_4.CornerRadius = UDim.new(0, 10)
			UICorner_4.Parent = Circle

			Button.MouseButton1Click:Connect(function()
				if toggled == false then
					toggled = true
					Circle:TweenPosition(UDim2.new(0,27,0,2),"Out","Sine",0.2,true)
					TweenService:Create(
						Circle,
						TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{BackgroundColor3 = _G.Color}
					):Play()
				else
					toggled = false
					Circle:TweenPosition(UDim2.new(0,2,0,2),"Out","Sine",0.2,true)
					TweenService:Create(
						Circle,
						TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{BackgroundColor3 = Color3.fromRGB(227, 60, 110)}
					):Play()
				end
				pcall(callback,toggled)
			end)

			if config == true then
				toggled = true
				Circle:TweenPosition(UDim2.new(0,27,0,2),"Out","Sine",0.4,true)
				TweenService:Create(
					Circle,
					TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{BackgroundColor3 = _G.Color}
				):Play()
				pcall(callback,toggled)
			end
		end
		function main:Dropdown(text,option,callback)
			local isdropping = false
			local Dropdown = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local DropTitle = Instance.new("TextLabel")
			local DropScroll = Instance.new("ScrollingFrame")
			local UIListLayout = Instance.new("UIListLayout")
			local UIPadding = Instance.new("UIPadding")
			local DropButton = Instance.new("TextButton")
			local DropImage = Instance.new("ImageLabel")
			
			Dropdown.Name = "Dropdown"
			Dropdown.Parent = MainFramePage
			Dropdown.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
			Dropdown.ClipsDescendants = true
			Dropdown.Size = UDim2.new(0, 470, 0, 31)
			
			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = Dropdown
			
			DropTitle.Name = "DropTitle"
			DropTitle.Parent = Dropdown
			DropTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropTitle.BackgroundTransparency = 1.000
			DropTitle.Size = UDim2.new(0, 470, 0, 31)
			DropTitle.Font = Enum.Font.GothamSemibold
			DropTitle.Text = text.. " : "
			DropTitle.TextColor3 = Color3.fromRGB(225, 225, 225)
			DropTitle.TextSize = 15.000
			
			DropScroll.Name = "DropScroll"
			DropScroll.Parent = DropTitle
			DropScroll.Active = true
			DropScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropScroll.BackgroundTransparency = 1.000
			DropScroll.BorderSizePixel = 0
			DropScroll.Position = UDim2.new(0, 0, 0, 31)
			DropScroll.Size = UDim2.new(0, 470, 0, 100)
			DropScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
			DropScroll.ScrollBarThickness = 3
			
			UIListLayout.Parent = DropScroll
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 5)
			
			UIPadding.Parent = DropScroll
			UIPadding.PaddingLeft = UDim.new(0, 5)
			UIPadding.PaddingTop = UDim.new(0, 5)
			
			DropImage.Name = "DropImage"
			DropImage.Parent = Dropdown
			DropImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropImage.BackgroundTransparency = 1.000
			DropImage.Position = UDim2.new(0, 435, 0, 6)
			DropImage.Rotation = 180.000
			DropImage.Size = UDim2.new(0, 20, 0, 20)
			DropImage.Image = "rbxassetid://10162644180"
			
			DropButton.Name = "DropButton"
			DropButton.Parent = Dropdown
			DropButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropButton.BackgroundTransparency = 1.000
			DropButton.Size = UDim2.new(0, 470, 0, 31)
			DropButton.Font = Enum.Font.SourceSans
			DropButton.Text = ""
			DropButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			DropButton.TextSize = 14.000

			for i,v in next,option do
				local Item = Instance.new("TextButton")

				Item.Name = "Item"
				Item.Parent = DropScroll
				Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Item.BackgroundTransparency = 1.000
				Item.Size = UDim2.new(0, 460, 0, 26)
				Item.Font = Enum.Font.GothamSemibold
				Item.Text = tostring(v)
				Item.TextColor3 = Color3.fromRGB(225, 225, 225)
				Item.TextSize = 13.000
				Item.TextTransparency = 0.500

				Item.MouseEnter:Connect(function()
					TweenService:Create(
						Item,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0}
					):Play()
				end)

				Item.MouseLeave:Connect(function()
					TweenService:Create(
						Item,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0.5}
					):Play()
				end)

				Item.MouseButton1Click:Connect(function()
					isdropping = false
					Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
					TweenService:Create(
						DropImage,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Rotation = 180}
					):Play()
					callback(Item.Text)
					DropTitle.Text = text.." : "..Item.Text
				end)
			end

			DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)

			DropButton.MouseButton1Click:Connect(function()
				if isdropping == false then
					isdropping = true
					Dropdown:TweenSize(UDim2.new(0,470,0,131),"Out","Quad",0.3,true)
					TweenService:Create(
						DropImage,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Rotation = 0}
					):Play()
				else
					isdropping = false
					Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
					TweenService:Create(
						DropImage,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Rotation = 180}
					):Play()
				end
			end)

			local dropfunc = {}
			function dropfunc:Add(t)
				local Item = Instance.new("TextButton")
				Item.Name = "Item"
				Item.Parent = DropScroll
				Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Item.BackgroundTransparency = 1.000
				Item.Size = UDim2.new(0, 470, 0, 26)
				Item.Font = Enum.Font.GothamSemibold
				Item.Text = tostring(t)
				Item.TextColor3 = Color3.fromRGB(225, 225, 225)
				Item.TextSize = 13.000
				Item.TextTransparency = 0.500

				Item.MouseEnter:Connect(function()
					TweenService:Create(
						Item,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0}
					):Play()
				end)

				Item.MouseLeave:Connect(function()
					TweenService:Create(
						Item,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0.5}
					):Play()
				end)

				Item.MouseButton1Click:Connect(function()
					isdropping = false
					Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
					TweenService:Create(
						DropImage,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Rotation = 180}
					):Play()
					callback(Item.Text)
					DropTitle.Text = text.." : "..Item.Text
				end)
			end
			function dropfunc:Clear()
				DropTitle.Text = tostring(text).." : "
				isdropping = false
				Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
				TweenService:Create(
					DropImage,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{Rotation = 180}
				):Play()
				for i,v in next, DropScroll:GetChildren() do
					if v:IsA("TextButton") then
						v:Destroy()
					end
				end
			end
			return dropfunc
		end

		function main:Slider(text,min,max,set,callback)
			local Slider = Instance.new("Frame")
			local slidercorner = Instance.new("UICorner")
			local sliderr = Instance.new("Frame")
			local sliderrcorner = Instance.new("UICorner")
			local SliderLabel = Instance.new("TextLabel")
			local HAHA = Instance.new("Frame")
			local AHEHE = Instance.new("TextButton")
			local bar = Instance.new("Frame")
			local bar1 = Instance.new("Frame")
			local bar1corner = Instance.new("UICorner")
			local barcorner = Instance.new("UICorner")
			local circlebar = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local slidervalue = Instance.new("Frame")
			local valuecorner = Instance.new("UICorner")
			local TextBox = Instance.new("TextBox")
			local UICorner_2 = Instance.new("UICorner")

			Slider.Name = "Slider"
			Slider.Parent = MainFramePage
			Slider.BackgroundColor3 = _G.Color
			Slider.BackgroundTransparency = 0
			Slider.Size = UDim2.new(0, 470, 0, 51)

			slidercorner.CornerRadius = UDim.new(0, 5)
			slidercorner.Name = "slidercorner"
			slidercorner.Parent = Slider

			sliderr.Name = "sliderr"
			sliderr.Parent = Slider
			sliderr.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
			sliderr.Position = UDim2.new(0, 1, 0, 1)
			sliderr.Size = UDim2.new(0, 468, 0, 49)

			sliderrcorner.CornerRadius = UDim.new(0, 5)
			sliderrcorner.Name = "sliderrcorner"
			sliderrcorner.Parent = sliderr

			SliderLabel.Name = "SliderLabel"
			SliderLabel.Parent = sliderr
			SliderLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SliderLabel.BackgroundTransparency = 1.000
			SliderLabel.Position = UDim2.new(0, 15, 0, 0)
			SliderLabel.Size = UDim2.new(0, 180, 0, 26)
			SliderLabel.Font = Enum.Font.GothamSemibold
			SliderLabel.Text = text
			SliderLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
			SliderLabel.TextSize = 16.000
			SliderLabel.TextTransparency = 0
			SliderLabel.TextXAlignment = Enum.TextXAlignment.Left

			HAHA.Name = "HAHA"
			HAHA.Parent = sliderr
			HAHA.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			HAHA.BackgroundTransparency = 1.000
			HAHA.Size = UDim2.new(0, 468, 0, 29)

			AHEHE.Name = "AHEHE"
			AHEHE.Parent = sliderr
			AHEHE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			AHEHE.BackgroundTransparency = 1.000
			AHEHE.Position = UDim2.new(0, 10, 0, 35)
			AHEHE.Size = UDim2.new(0, 448, 0, 5)
			AHEHE.Font = Enum.Font.SourceSans
			AHEHE.Text = ""
			AHEHE.TextColor3 = Color3.fromRGB(0, 0, 0)
			AHEHE.TextSize = 14.000

			bar.Name = "bar"
			bar.Parent = AHEHE
			bar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			bar.Size = UDim2.new(0, 448, 0, 5)

			bar1.Name = "bar1"
			bar1.Parent = bar
			bar1.BackgroundColor3 = _G.Color
			bar1.BackgroundTransparency = 0
			bar1.Size = UDim2.new(set/max, 0, 0, 5)

			bar1corner.CornerRadius = UDim.new(0, 5)
			bar1corner.Name = "bar1corner"
			bar1corner.Parent = bar1

			barcorner.CornerRadius = UDim.new(0, 5)
			barcorner.Name = "barcorner"
			barcorner.Parent = bar

			circlebar.Name = "circlebar"
			circlebar.Parent = bar1
			circlebar.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
			circlebar.Position = UDim2.new(1, -2, 0, -3)
			circlebar.Size = UDim2.new(0, 10, 0, 10)

			UICorner.CornerRadius = UDim.new(0, 100)
			UICorner.Parent = circlebar

			slidervalue.Name = "slidervalue"
			slidervalue.Parent = sliderr
			slidervalue.BackgroundColor3 = _G.Color
			slidervalue.BackgroundTransparency = 0
			slidervalue.Position = UDim2.new(0, 395, 0, 5)
			slidervalue.Size = UDim2.new(0, 65, 0, 18)

			valuecorner.CornerRadius = UDim.new(0, 5)
			valuecorner.Name = "valuecorner"
			valuecorner.Parent = slidervalue

			TextBox.Parent = slidervalue
			TextBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			TextBox.Position = UDim2.new(0, 1, 0, 1)
			TextBox.Size = UDim2.new(0, 63, 0, 16)
			TextBox.Font = Enum.Font.GothamSemibold
			TextBox.TextColor3 = Color3.fromRGB(225, 225, 225)
			TextBox.TextSize = 9.000
			TextBox.Text = set
			TextBox.TextTransparency = 0

			UICorner_2.CornerRadius = UDim.new(0, 5)
			UICorner_2.Parent = TextBox

			local mouse = game.Players.LocalPlayer:GetMouse()
			local uis = game:GetService("UserInputService")

			if Value == nil then
				Value = set
				pcall(function()
					callback(Value)
				end)
			end
			
			AHEHE.MouseButton1Down:Connect(function()
				Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min)) or 0
				pcall(function()
					callback(Value)
				end)
				bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)
				circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)
				moveconnection = mouse.Move:Connect(function()
					TextBox.Text = Value
					Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min))
					pcall(function()
						callback(Value)
					end)
					bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)
					circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)
				end)
				releaseconnection = uis.InputEnded:Connect(function(Mouse)
					if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
						Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min))
						pcall(function()
							callback(Value)
						end)
						bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)
						circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)
						moveconnection:Disconnect()
						releaseconnection:Disconnect()
					end
				end)
			end)
			releaseconnection = uis.InputEnded:Connect(function(Mouse)
				if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
					Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min))
					TextBox.Text = Value
				end
			end)

			TextBox.FocusLost:Connect(function()
				if tonumber(TextBox.Text) > max then
					TextBox.Text  = max
				end
				bar1.Size = UDim2.new((TextBox.Text or 0) / max, 0, 0, 5)
				circlebar.Position = UDim2.new(1, -2, 0, -3)
				TextBox.Text = tostring(TextBox.Text and math.floor( (TextBox.Text / max) * (max - min) + min) )
				pcall(callback, TextBox.Text)
			end)
		end

		function main:Textbox(text,disappear,callback)
			local Textbox = Instance.new("Frame")
			local TextboxCorner = Instance.new("UICorner")
			local Textboxx = Instance.new("Frame")
			local TextboxxCorner = Instance.new("UICorner")
			local TextboxLabel = Instance.new("TextLabel")
			local txtbtn = Instance.new("TextButton")
			local RealTextbox = Instance.new("TextBox")
			local UICorner = Instance.new("UICorner")

			Textbox.Name = "Textbox"
			Textbox.Parent = MainFramePage
			Textbox.BackgroundColor3 = _G.Color
			Textbox.BackgroundTransparency = 0
			Textbox.Size = UDim2.new(0, 470, 0, 31)

			TextboxCorner.CornerRadius = UDim.new(0, 5)
			TextboxCorner.Name = "TextboxCorner"
			TextboxCorner.Parent = Textbox

			Textboxx.Name = "Textboxx"
			Textboxx.Parent = Textbox
			Textboxx.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
			Textboxx.Position = UDim2.new(0, 1, 0, 1)
			Textboxx.Size = UDim2.new(0, 468, 0, 29)

			TextboxxCorner.CornerRadius = UDim.new(0, 5)
			TextboxxCorner.Name = "TextboxxCorner"
			TextboxxCorner.Parent = Textboxx

			TextboxLabel.Name = "TextboxLabel"
			TextboxLabel.Parent = Textbox
			TextboxLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextboxLabel.BackgroundTransparency = 1.000
			TextboxLabel.Position = UDim2.new(0, 15, 0, 0)
			TextboxLabel.Text = text
			TextboxLabel.Size = UDim2.new(0, 145, 0, 31)
			TextboxLabel.Font = Enum.Font.GothamSemibold
			TextboxLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
			TextboxLabel.TextSize = 16.000
			TextboxLabel.TextTransparency = 0
			TextboxLabel.TextXAlignment = Enum.TextXAlignment.Left

			txtbtn.Name = "txtbtn"
			txtbtn.Parent = Textbox
			txtbtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			txtbtn.BackgroundTransparency = 1.000
			txtbtn.Position = UDim2.new(0, 1, 0, 1)
			txtbtn.Size = UDim2.new(0, 468, 0, 29)
			txtbtn.Font = Enum.Font.SourceSans
			txtbtn.Text = ""
			txtbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
			txtbtn.TextSize = 14.000

			RealTextbox.Name = "RealTextbox"
			RealTextbox.Parent = Textbox
			RealTextbox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			RealTextbox.BackgroundTransparency = 0
			RealTextbox.Position = UDim2.new(0, 360, 0, 4)
			RealTextbox.Size = UDim2.new(0, 100, 0, 24)
			RealTextbox.Font = Enum.Font.GothamSemibold
			RealTextbox.Text = ""
			RealTextbox.TextColor3 = Color3.fromRGB(225, 225, 225)
			RealTextbox.TextSize = 11.000
			RealTextbox.TextTransparency = 0

			RealTextbox.FocusLost:Connect(function()
				callback(RealTextbox.Text)
				if disappear then
					RealTextbox.Text = ""
				end
			end)

			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = RealTextbox
		end
		function main:Label(text)
			local Label = Instance.new("TextLabel")
			local PaddingLabel = Instance.new("UIPadding")
			local labelfunc = {}
	
			Label.Name = "Label"
			Label.Parent = MainFramePage
			Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Label.BackgroundTransparency = 1.000
			Label.Size = UDim2.new(0, 470, 0, 20)
			Label.Font = Enum.Font.GothamSemibold
			Label.TextColor3 = Color3.fromRGB(225, 225, 225)
			Label.TextSize = 16.000
			Label.Text = text
			Label.TextXAlignment = Enum.TextXAlignment.Left

			PaddingLabel.PaddingLeft = UDim.new(0,15)
			PaddingLabel.Parent = Label
			PaddingLabel.Name = "PaddingLabel"
	
			function labelfunc:Set(newtext)
				Label.Text = newtext
			end
			return labelfunc
		end

		function main:Seperator(text)
			local Seperator = Instance.new("Frame")
			local Sep1 = Instance.new("Frame")
			local Sep2 = Instance.new("TextLabel")
			local Sep3 = Instance.new("Frame")
			
			Seperator.Name = "Seperator"
			Seperator.Parent = MainFramePage
			Seperator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Seperator.BackgroundTransparency = 1.000
			Seperator.Size = UDim2.new(0, 470, 0, 20)
			
			Sep1.Name = "Sep1"
			Sep1.Parent = Seperator
			Sep1.BackgroundColor3 = _G.Color
			Sep1.BorderSizePixel = 0
			Sep1.Position = UDim2.new(0, 0, 0, 10)
			Sep1.Size = UDim2.new(0, 80, 0, 1)
			
			Sep2.Name = "Sep2"
			Sep2.Parent = Seperator
			Sep2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Sep2.BackgroundTransparency = 1.000
			Sep2.Position = UDim2.new(0, 185, 0, 0)
			Sep2.Size = UDim2.new(0, 100, 0, 20)
			Sep2.Font = Enum.Font.GothamSemibold
			Sep2.Text = text
			Sep2.TextColor3 = Color3.fromRGB(255, 255, 255)
			Sep2.TextSize = 14.000
			
			Sep3.Name = "Sep3"
			Sep3.Parent = Seperator
			Sep3.BackgroundColor3 = _G.Color
			Sep3.BorderSizePixel = 0
			Sep3.Position = UDim2.new(0, 390, 0, 10)
			Sep3.Size = UDim2.new(0, 80, 0, 1)
		end

		function main:Line()
			local Linee = Instance.new("Frame")
			local Line = Instance.new("Frame")
			
			Linee.Name = "Linee"
			Linee.Parent = MainFramePage
			Linee.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Linee.BackgroundTransparency = 1.000
			Linee.Position = UDim2.new(0, 0, 0.119999997, 0)
			Linee.Size = UDim2.new(0, 470, 0, 20)
			
			Line.Name = "Line"
			Line.Parent = Linee
			Line.BackgroundColor3 = _G.Color
			Line.BorderSizePixel = 0
			Line.Position = UDim2.new(0, 0, 0, 10)
			Line.Size = UDim2.new(0, 470, 0, 1)
		end
		return main
	end
	return uitab
end


local Library = Update:Window("Makori","2.0",Enum.KeyCode.RightControl);

Main = Library:Tab("Genneral",6026568198)
Sta = Library:Tab("Stats",7040410130)
Miscf = Library:Tab("MiscFarm",9606626859)
Sho = Library:Tab("Fruit",7044233235)
Shop = Library:Tab("Shop",9606625251)
Raid = Library:Tab("Raid",9606629300)
TPKub = Library:Tab("Teleport",9606628205)
Py = Library:Tab("Players",9606626034)



Main:Toggle("Auto Farm",_G.Setting_table.AutoFarm,function(vu)
	Auto_Farm = vu
	Auto_Fast_Farm = vu
	_G.Setting_table.AutoFarm = vu
	Update_Setting(getgenv()['MyName'])
end)


Main:Toggle("Auto 600 Mas Melee",_G.Setting_table.MasMelee,function(vu)
	MasMelee = vu
	_G.Setting_table.MasMelee = vu
	Update_Setting(getgenv()['MyName'])
end)

spawn(function()
	while wait() do
		pcall(function()
			if MasMelee then
				if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 600 or game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 600 then
					wait(1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
				elseif game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 600 or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 600 then
					wait(1)
					local args = {
						[1] = "BuyFishmanKarate"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				elseif game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 600 or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 600 then
					wait(1)
					local args = {
						[1] = "BlackbeardReward",
						[2] = "DragonClaw",
						[3] = "2"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				elseif game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 600 or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 600 then
					wait(1)
					local args = {
						[1] = "BuySuperhuman"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				elseif game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") and game.Players.LocalPlayer.Character:FindFirstChild("Superhuman").Level.Value >= 600 or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman").Level.Value >= 600 then
					wait(1)
					local string_1 = "BuyElectricClaw";
					local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
					Target:InvokeServer(string_1);
				elseif game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw").Level.Value >= 600 or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value >= 600 then
					wait(1)
					local args = {
						[1] = "BuySharkmanKarate"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				elseif game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate").Level.Value >= 600 or game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value >= 600 then
					wait(1)
					local args = {
						[1] = "BuyDeathStep"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				elseif game.Players.LocalPlayer.Character:FindFirstChild("Death Step") and game.Players.LocalPlayer.Character:FindFirstChild("Death Step").Level.Value >= 600 or game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value >= 600 then
					wait(1)
					local args = {
						[1] = "BuyDragonTalon"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				elseif game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon").Level.Value >= 600 or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value >= 600 then
					wait(1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
				end
			end
		end)
	end
end)

Main:Seperator("Auto New Sea")

Main:Toggle("Auto New World",_G.Setting_table.MasMelee,function(vu)
    Auto_New_A = vu
	_G.Setting_table.Second_Farm = vu
	Update_Setting(getgenv()['MyName'])
end)
spawn(function()
    while wait(.2) do
        if Auto_New_A then
            if Mix_Farm == nil or Auto_New_Farm then
                local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
                local Beli = game:GetService("Players").LocalPlayer.Data.Beli.Value
                local FG = game:GetService("Players").LocalPlayer.Data.Fragments.Value
                if Lv >= 700 then
                    Mix_Farm = true
                    Auto_New_Farm = true
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective") == 1 then
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                        wait(2)
                        EquipWeapon("Key")
                    end
                    repeat wait()
                        TP2(CFrame.new(1347.32947, 37.349369, -1325.44922, 0.538348913, 8.57539106e-08, 0.842722058, 8.61935634e-10, 1, -1.0230886e-07, -0.842722058, 5.58042359e-08, 0.538348913))
                    until (Vector3.new(1347.32947, 37.349369, -1325.44922)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1 or Auto_New_A == false
                    wait(2)
                    for i,v in pairs(game.workspace.Enemies:GetChildren()) do
                        if v.Name == "Ice Admiral" then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                             
                            repeat wait(.2)
                                EquipWeapon(_G.Setting_table.Weapon)
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                TP(v.HumanoidRootPart.CFrame*CFrame.new(0,25,15))
                                AttackNoCD()
                                FastAttack = true
                            until v.Humanoid.Health <= 0 or not v.Parent or Auto_New_A == false
                            FastAttack = false
                            wait(2)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                            wait(25)
                        end
                    end
                end
            end
        end
    end
end)

Main:Toggle("Auto Third World",false,function(vu)
Auto_Three_World = vu
end)

spawn(function()
	while wait(.5) do
		pcall(function()
			if Auto_Three_World then
				if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") ~= 0 then
					if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == "rip_indra" and v.Humanoid.Health > 0 then
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								repeat wait(.1)
									EquipWeapon(_G.Setting_table.Weapon)
									FastAttack = true
									TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280,600))
								until v.Humanoid.Health <= 0 or not v.Parent or not Auto_Three_World or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0
								FastAttack = false
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Zou")
								if not YUHJO then
									Text("ทำเควสโลก 3 เสร็จสิ้น")
									YUHJO = true
								end
							end
						end
					elseif not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
						repeat wait(1)
						until game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") or game.ReplicatedStorage:FindFirstChild("rip_indra [Lv. 1500] [Boss]")
					end
				elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
					if not IJOIJD then
						Text("คุณทำเควสโลก 3 เสร็จแล้ว")
						IJOIJD = true
					end
				else
					if not JUO then
						Text("คุณยังไม่เปิดประตูโดฟา\nไม่สามารถทำได้!!")
						JUO = true
					end
				end
			else
				wait(2)
			end
		end)
	end
end)

 Faa = Main:Label("")
 db = Main:Label("")
 mr = Main:Label("")


spawn(function()
	while wait(.1) do
		pcall(function()
			if Auto_Farm then
				if not DbQ then
					if not Mix_Farm then
						if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
							if _G.Farm_Boss then
								_G.SelectBoss = nil
								_G.Farm_Boss = nil
								SelectMonster = nil
								_G.Farm_Mon = nil
								wait(1)
							end
							if _G.SelectBoss ~= nil and game.Workspace.Enemies:FindFirstChild(_G.SelectBoss) or _G.SelectBoss ~= nil and game.ReplicatedStorage:FindFirstChild(_G.SelectBoss) then
								CheckQuestBoss()
								repeat wait()
									TelePBoss(CFrameQBoss)
									TP(CFrameQBoss)
								until (CFrameQBoss.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 10
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, QuestLvBoss)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
								_G.Farm_Boss = true
							elseif SelectMonster ~= nil then
								CheckLevel2()
								repeat wait()
									TelePBoss(npcpos)
									TP(npcpos)
								until (npcpos.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 10
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", namequest, questlv)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
								SelectMonster = nil
								_G.Farm_Mon = nil
							else
								StatrMagnet = nil
								CheckLevel2()
								repeat wait()
									TelePBoss(npcpos)
									TP(npcpos)
								until (npcpos.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 10
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", namequest, questlv)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
							end
						elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if _G.Farm_Boss then
								if game.Workspace.Enemies:FindFirstChild(_G.SelectBoss) then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == _G.SelectBoss and v.Humanoid.Health > 0 then
											v.Humanoid:ChangeState(11)
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
											v.HumanoidRootPart.Size = Vector3.new(5,5,5)
											StatrMagnet = nil
											repeat wait()
												TelePBoss(CFrameQBoss)
												EquipWeapon(_G.Setting_table.Weapon)
												TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,50))
												FastAttack = true
											until game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) or not v.Parent or v.Humanoid.Health <= 0 or not Auto_Farm or Mix_Farm
											FastAttack = false
											if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
											end
										end
									end
								else
									TP(CFrameBoss*CFrame.new(0,30,0))
									TelePBoss(CFrameBoss)
								end
							else
								if game.Workspace.Enemies:FindFirstChild(namemon) then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == namemon and v.Humanoid.Health > 0 then
											_G.PosMon = v.HumanoidRootPart.CFrame
											StatrMagnet = true
											CheckMon = false
											OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
											v.Humanoid:ChangeState(11)
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(5,5,5)
											repeat wait()
												TelePBoss(npcpos)
												EquipWeapon(_G.Setting_table.Weapon)
												TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,10))
												FastAttack = true
											until game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not v.Parent or v.Humanoid.Health <= 0 or not Auto_Farm or Mix_Farm
											FastAttack = false
										end
									end
								else
									--CheckLevel2()
									repeat task.wait()
										for i,v in pairs(game.Workspace._WorldOrigin.EnemySpawns:GetChildren()) do
											if v.Name == namemon then
												TP(v.CFrame * CFrame.new(0,30,0))
											end
										end
									until game.Workspace.Enemies:FindFirstChild(namemon) or not Auto_Farm or Mix_Farm
								end
							end
						end
					end
				elseif DbQ then
					if Auto_Farm then
						if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
							if _G.Farm_Boss then
								_G.SelectBoss = nil
								_G.Farm_Boss = nil
								SelectMonster = nil
								_G.Farm_Mon = nil
								wait(1)
							end
							if _G.SelectBoss ~= nil and game.Workspace.Enemies:FindFirstChild(_G.SelectBoss) or _G.SelectBoss ~= nil and game.ReplicatedStorage:FindFirstChild(_G.SelectBoss) then
								CheckQuestBoss()
								repeat wait()
									TelePBoss(CFrameQBoss)
									TP(CFrameQBoss)
								until (CFrameQBoss.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 10
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, QuestLvBoss)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
								_G.Farm_Boss = true
							elseif SelectMonster ~= nil then
								CheckLevel3()
								repeat wait()
									TelePBoss(CFrameQ)
									TP(CFrameQ)
								until (CFrameQ.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 10
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
								SelectMonster = nil
								_G.Farm_Mon = nil
							else
								StatrMagnet = nil
								CheckLevel3()
								repeat wait()
									TelePBoss(CFrameQ)
									TP(CFrameQ)
								until (CFrameQ.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 10
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
							end
						elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if _G.Farm_Boss then
								if game.Workspace.Enemies:FindFirstChild(_G.SelectBoss) then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == _G.SelectBoss and v.Humanoid.Health > 0 then
											v.Humanoid:ChangeState(11)
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
											v.HumanoidRootPart.Size = Vector3.new(5,5,5)
											StatrMagnet = nil
											repeat wait()
												TelePBoss(CFrameQBoss)
												EquipWeapon(_G.Setting_table.Weapon)
												TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,50))
												FastAttack = true
											until game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) or not v.Parent or v.Humanoid.Health <= 0 or not Auto_Farm or Mix_Farm
											FastAttack = false
											if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
											end
										end
									end
								else
									TP(CFrameBoss*CFrame.new(0,30,0))
									TelePBoss(CFrameBoss)
								end
							else
								if game.Workspace.Enemies:FindFirstChild(Ms) then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == Ms and v.Humanoid.Health > 0 then
											_G.PosMon = v.HumanoidRootPart.CFrame
											StatrMagnet = true
											CheckMon = false
											OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
											v.Humanoid:ChangeState(11)
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(5,5,5)
											repeat wait()
												TelePBoss(CFrameQ)
												EquipWeapon(_G.Setting_table.Weapon)
												TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,10))
												FastAttack = true
											until game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or not v.Parent or v.Humanoid.Health <= 0 or not Auto_Farm or Mix_Farm
											FastAttack = false
											if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
											end
										end
									end
								else
									if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
									end
									if (CFrameQ.Position -game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then
										if CFrameMon ~= nil then
											TP(CFrameMon * CFrame.new(0, 0, 0))
										else
											if OldPos ~= nil then
												TP(OldPos.Position)
											end
										end
									else
										StartMagnet = true
										TP(CFrameMon)
									end
									--CheckMon = true
								end
							end
						end
					end
				end
			else
				wait()
			end
		end)
	end
end)


task.spawn(function()
	while task.wait() do
		pcall(function()
			if StatrMagnet then
				if DbQ then
					if Auto_Farm then
						if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == Ms and (v.HumanoidRootPart.Position-_G.PosMon.Position).Magnitude <= 350 then
									v.Humanoid:ChangeState(11)
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(5,5,5)
									v.HumanoidRootPart.CFrame = _G.PosMon
									v.Humanoid:ChangeState(11)
									v.Humanoid:ChangeState(14)
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
									Attack = true
								end
							end
						end
					else
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v.HumanoidRootPart.Position-_G.PosMon.Position).Magnitude <= 350 then
								v.Humanoid:ChangeState(11)
							    v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(5,5,5)
								v.HumanoidRootPart.CFrame = _G.PosMon
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
								sethiddenproperty(game.Players.LocalPlayer, "MaximumSimulationRadius",  math.huge)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  9e20)
							end
						end
					end
				else
					if Auto_Farm then
						if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == namemon and (v.HumanoidRootPart.Position-_G.PosMon.Position).Magnitude <= 350 then
									v.Humanoid:ChangeState(11)
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(5,5,5)
									v.HumanoidRootPart.CFrame = _G.PosMon
									v.Humanoid:ChangeState(11)
									v.Humanoid:ChangeState(14)
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
									Attack = true
								end
							end
						end
					else
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v.HumanoidRootPart.Position-_G.PosMon.Position).Magnitude <= 350 then
								v.Humanoid:ChangeState(11)
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(5,5,5)
								v.HumanoidRootPart.CFrame = _G.PosMon
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
								sethiddenproperty(game.Players.LocalPlayer, "MaximumSimulationRadius",  math.huge)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  9e20)
							end
						end
					end
				end
			end
		end)
	end
end)

Waspon = {
	"Melee",
	"Sword",
	"Fruit"
}

Main:Dropdown("Select Weapon", Waspon,function(vu)
	_G.Setting_table.SelectWeapon = vu
	Update_Setting(getgenv()['MyName'])
end)

Main:Toggle(" Bring Mob",true,function(vu)
	_G.Setting_table.Bring_Mob = vu
	Update_Setting(getgenv()['MyName'])
	end)
	
local fast = {
	"Normal",
	"ExTra"
}

Main:Dropdown("Select Fast Mode",fast,function(vu)
	_G.Setting_table.FastMode = vu
	Update_Setting(getgenv()['MyName'])
end)

local SFast = {
	"Normal",
	"Fast",
	"Extra"
}

Main:Dropdown("Select Fast Delay",SFast,function(vu)
	_G.Setting_table.FastModeD = vu
	Update_Setting(getgenv()['MyName'])
end)

Main:Toggle("Dobble Quest ",_G.Setting_table.DbQ,function(vu)
	DbQ = vu
	_G.Setting_table.DbQ = vu
	Update_Setting(getgenv()['MyName'])
end)

Main:Toggle(" Fast Attack ",true,function(vu)
	Fast_Attack = vu
	_G.Setting_table.Fast_Attack = vu
	Update_Setting(getgenv()['MyName'])
end)

Main:Toggle(" Fast Attack Dobble",_G.Setting_table.DbFast,function(vu)
	DbFast = vu
	_G.Setting_table.DbFast = vu
	Update_Setting(getgenv()['MyName'])
end)

Main:Toggle("Disabled Damage ",_G.Setting_table.KobenHeegeen,function(vu)
	KobenHeegeen = vu
	_G.Setting_table.KobenHeegeen = vu
	Update_Setting(getgenv()['MyName'])
end)

spawn(function()
	while wait() do
		if KobenHeegeen then
			game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
		else
			game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
		end
	end
end)

Main:Toggle(" Disabled Notifications ",_G.Setting_table.Refec,function(vu)
	Refec = vu
	_G.Setting_table.Refec = vu
	Update_Setting(getgenv()['MyName'])
end)

spawn(function()
	while wait() do
		if Refec then
			game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false
		else
			game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true
		end
	end
end)

Main:Toggle(" Remove Effect Mob ",_G.Setting_table.Refec,function(vu)
	Remove_Effect = vu
	_G.Setting_table.Remove_Effect = vu
	Update_Setting(getgenv()['MyName'])
end)

spawn(function()
    game:GetService('RunService').Stepped:Connect(function()
        if Remove_Effect then
            for i, v in pairs(game:GetService("ReplicatedStorage").Effect.Container:GetChildren()) do
                if v.Name == "Death" then
                    v:Destroy() 
                end
            end
        end
    end)
end)

Main:Toggle(" Remove Sound ",_G.Setting_table.Refec,function(vu)
	RemoveHit = vu
	_G.Setting_table.RemoveHit = vu
	Update_Setting(getgenv()['MyName'])
end)

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if RemoveHit == true then
            game:GetService("ReplicatedStorage").Effect.Container.LevelUp:Destroy()
            game:GetService("ReplicatedStorage").Util.Sound:Destroy()
            game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp_Proxy"):Destroy()
            game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp"):Destroy()
            game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()        
        end
    end)
end)
    
Main:Toggle(" Auto Buso ",_G.Setting_table.Auto_Buso,function(vu)
	Auto_Buso = vu
	_G.Setting_table.Auto_Buso = vu
	Update_Setting(getgenv()['MyName'])
end)

spawn(function()
    while wait(.1) do
        if Auto_Buso then 
            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                local args = {
                    [1] = "Buso"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end
end)

Main:Toggle(" Auto Ken Haki ",_G.Setting_table.AutoKen,function(vu)
	_G.Setting_table.AutoKen = vu
	Update_Setting(getgenv()['MyName'])
end)

    spawn(function()
        while wait() do
            pcall(function()
                if _G.Setting_table.AutoKen then
                    repeat task.wait()
                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                            game:GetService('VirtualUser'):CaptureController()
                            game:GetService('VirtualUser'):SetKeyDown('0x65')
                            wait(1)
                            game:GetService('VirtualUser'):SetKeyUp('0x65')
                        end
                    until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                end
            end)
        end
    end)
    
Main:Toggle(" Black Screen ",_G.Setting_table.StartBlackScreen,function(vu)
	_G.Setting_table.StartBlackScreen = vu
	Update_Setting(getgenv()['MyName'])
end)

spawn(function()
	while wait() do
		if _G.Setting_table.StartBlackScreen then
			game:GetService("Players").LocalPlayer.PlayerGui.Main.Blackscreen.Size = UDim2.new(500, 0, 500, 500)
		else
			game:GetService("Players").LocalPlayer.PlayerGui.Main.Blackscreen.Size = UDim2.new(1, 0, 500, 500)
		end
	end
end)

Main:Toggle("Invisible Monsters",_G.Setting_table.inv,function(value)
    _G.Setting_table.inv = value
    Update_Setting(getgenv()['MyName'])
    
         while wait() do
             if _G.Setting_table.inv then
             pcall(function()
     for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
         if v.ClassName == "MeshPart" then
             v.Transparency = 1
     end
     end
     for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
         if v.Name == "Head" then
         v.Transparency = 1
     end
     end
         for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
             if v.ClassName == "Accessory" then
                 v.Handle.Transparency = 1
             end
         end
         for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
             if v.ClassName == "Decal" then
             v.Transparency = 1
              end
            end
          end)
        end
      end
      end)
    
Code = {
        "EXP_5B",
        "CONTROL",
        "UPDATE11",
        "XMASEXP",
        "1BILLION",
        "ShutDownFix2",
        "UPD14",
        "STRAWHATMAINE",
        "TantaiGaming",
        "Colosseum",
        "Axiore",
        "Sub2Daigrock",
        "Sky Island 3",
        "Sub2OfficialNoobie",
        "SUB2NOOBMASTER123",
        "THEGREATACE",
        "Fountain City",
        "BIGNEWS",
        "FUDD10",
        "SUB2GAMERROBOT_EXP1",
        "UPD15",
        "2BILLION",
        "UPD16",
        "3BVISITS",
        "fudd10_v2",
        "Starcodeheo",
        "Magicbus",
        "JCWK",
        "Bluxxy",
        "Sub2Fer999",
        "Enyu_is_Pro",
        "Sub2CaptainMaui",
        "SECRET_ADMIN"
    }
    
    Main:Toggle(" Auto Redeem All Code ",_G.Setting_table.Auto_Redeem_All_Code,function(vu)
	_G.Setting_table.Auto_Redeem_All_Code = vu
	Update_Setting(getgenv()['MyName'])
end)
    
    spawn(function()
        while wait(5) do
            if _G.Setting_table.Auto_Redeem_All_Code then
                Lv = game.Players.localPlayer.Data.Level.value
                if Lv >= _G.Select_Level_to_Redeem_All_Code - 1 then
                    for i,v in pairs(Code) do
                        pcall(function()
                            local args = {
                                [1] = v
                            }
                            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))
                        end)
                    end
                    break
                end
            end
        end
    end)
    
    _G.Select_Level_to_Redeem_All_Code = 1
    Main:Slider("Redeem Code At",0,2450,1,function(value)
    _G.Select_Level_to_Redeem_All_Code = value
    end)

task.spawn(function()
	while wait() do
		pcall(function()
			if _G.Setting_table.SelectWeapon == "Melee" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.Setting_table.Weapon = v.Name
						end
					end
				end
			elseif _G.Setting_table.SelectWeapon == "Sword" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Sword" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.Setting_table.Weapon = v.Name
						end
					end
				end
			elseif _G.Setting_table.SelectWeapon == "Fruit" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Blox Fruit" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.Setting_table.Weapon = v.Name
						end
					end
				end
			else
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.Setting_table.Weapon = v.Name
						end
					end
				end
			end
		end)
	end
end)

Main:Seperator("Farm Select Monster")

Main:Toggle("Auto Farm Select Monster",_G.Setting_table.Auto_Farm_Monster,function(vu)
	Auto_Farm_Monster = vu
	_G.Setting_table.Auto_Farm_Monster = vu
	Update_Setting(getgenv()['MyName'])
end)


spawn(function()
	while wait(.5) do
		pcall(function()
			if Auto_Farm_Monster then
				if not Mix_Farm then
					if game.Workspace.Enemies:FindFirstChild(_G.Setting_table.Mon) or game.ReplicatedStorage:FindFirstChild(_G.Setting_table.Mon) then
						if game.Workspace.Enemies:FindFirstChild(_G.Setting_table.Mon) then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == _G.Setting_table.Mon and v.Humanoid.Health > 0 then
									_G.PosMon = v.HumanoidRootPart.CFrame
									StatrMagnet = true
									repeat wait()
										EquipWeapon(_G.Setting_table.Weapon)
										TP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
										FastAttack = true
									until v.Humanoid.Health <= 0 or not v.Parent or Mix_Farm or not Auto_Farm_Monster
									FastAttack = true
									StatrMagnet = false
								end
							end
						elseif game.ReplicatedStorage:FindFirstChild(_G.Setting_table.Mon) then
							if ((game.ReplicatedStorage:FindFirstChild(_G.Setting_table.Mon).HumanoidRootPart.CFrame).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
								TP(game.ReplicatedStorage:FindFirstChild(_G.Setting_table.Mon).HumanoidRootPart.CFrame)
							else
								TelePBoss(game.ReplicatedStorage:FindFirstChild(_G.Setting_table.Mon).HumanoidRootPart.CFrame)
							end
						end
					end
				end
			else
				wait(.5)
			end
		end)
	end
end)

if Old_World then
	tableMon = {"Bandit","Monkey","Gorilla","Pirate","Brute","Desert Bandit","Desert Officer","Snow Bandit","Snowman","Chief Petty Officer","Sky Bandit","Dark Master","Toga Warrior","Gladiator","Military Soldier","Military Spy","Fishman Warrior","Fishman Commando","God's Guard","Shanda","Royal Squad","Royal Soldier","Galley Pirate","Galley Captain"}
elseif New_World then
	tableMon = {"Raider","Mercenary","Swan Pirate","Factory Staff","Marine Lieutenant","Marine Captain","Zombie","Vampire","Snow Trooper","Winter Warrior","Lab Subordinate","Horned Warrior","Magma Ninja","Lava Pirate","Ship Deckhand","Ship Engineer","Ship Steward","Ship Officer","Arctic Warrior","Snow Lurker","Sea Soldier","Water Fighter"}
elseif Three_World then
	tableMon = {"Pirate Millionaire","Dragon Crew Warrior","Dragon Crew Archer","Female Islander","Giant Islander","Marine Commodore","Marine Rear Admiral","Fishman Raider","Fishman Captain","Forest Pirate","Mythological Pirate","Jungle Pirate","Musketeer Pirate","Reborn Skeleton","Living Zombie","Demonic Soul","Posessed Mummy","Peanut Scout","Peanut President","Ice Cream Chef","Ice Cream Commander","Cookie Crafter","Cake Guard","Baking Staff","Head Baker","Cocoa Warrior","Chocolate Bar Battler","Sweet Thief","Candy Rebel","Candy Pirate","Snow Demon","Isle Outlaw","Island Boy","Sun-kissed Warrior","Isle Champion"}
end



Main:Dropdown("Select Monster",tableMon,function(vu)
	_G.Setting_table.Mon = vu
	Update_Setting(getgenv()['MyName'])
end)

Main:Seperator("Cheat")

Main:Toggle("Auto Grab Chest",_G.Setting_table.Grab_Chest,function(vu)
	Grab_Chest = vu
	_G.Setting_table.Grab_Chest = vu
	Update_Setting(getgenv()['MyName'])
end)

_G.MagnitudeAdd = 0
spawn(function()
	while wait() do 
		if Grab_Chest then
			for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
				if v.Name:find("Chest") then
					if game:GetService("Workspace"):FindFirstChild(v.Name) then
						if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000+_G.MagnitudeAdd then
							repeat wait()
								if game:GetService("Workspace"):FindFirstChild(v.Name) then
									TP(v.CFrame)
								end
							until Grab_Chest == false or not v.Parent
							TP(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
							_G.MagnitudeAdd = _G.MagnitudeAdd+1500
							break
						end
					end
				end
			end
		end
	end
end)

Main:Toggle("Auto Grab Chest Mirage Island",_G.Setting_table.AutoChestMirage,function(vu)
	_G.Setting_table.AutoChestMirage = vu
	Update_Setting(getgenv()['MyName'])
end)

    spawn(function()
			while wait(.1) do
				if _G.Setting_table.AutoChestMirage then
					for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
						if v.Name == "FragChest" then
							TP(v.Parent.CFrame)
						end
					end
				end
    end
    end)
    



	
	spawn(function()
		game:GetService("RunService").Stepped:Connect(function()
			if SafeMode or PlayerHunt or KillPlayer or AutoRainbow or AutoCitiSulfurz or AutoFarmBoss or FarmAllBoss or Elite or AutoThird or AutoBartilo or AutoRengoku or Auto_Bone or AutoEcto or AutoFarmObservation or Auto_Farm or FarmMasteryGun or FarmMasteryFruit or _G.Auto_indra_Hop or _G.Auto_Dark_Dagger_Hop or _G.AutoDonSwan_Hop or _G.Pole_Hop or _G.AutoDoughtBoss or Core or noclip or AutoEvoRace or TPChest or NextIsland or RaidSuperhuman or _G.AutoRaid or SelectFarm or Clip or HolyTorch or AutoFarmSelectMonster or AutoLowRaid then
				for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
					if v:IsA("BasePart") then
						v.CanCollide = false
					end
				end
			end
		end)
	end)

	Bone = Main:Label("")
	spawn(function()
		pcall(function()
			while wait() do
				Bone:Set("    // Total Bone : "..tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check").." \\\\"))
			end
		end)
	end)

	Main:Toggle("Auto Farm Bone",_G.Setting_table.Farm_Bone,function(vu)
		Auto_Farm_Bone = vu
		_G.Setting_table.Farm_Bone = vu
		Update_Setting(getgenv()['MyName'])
	end)


	Main:Toggle("Auto Random Bone",_G.Setting_table.Farm_Random_S,function(vu)
		Farm_Random_S = vu
		_G.Setting_table.Farm_Random_S = vu
		Update_Setting(getgenv()['MyName'])
		spawn(function()
			while wait(.1) do
				pcall(function()
					if Farm_Random_S then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
					end
				end)
			end
		end)
	end)


	spawn(function()
		game:GetService("RunService").Heartbeat:Connect(function()
			pcall(function()
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if (Auto_Farm_Bone or _G.Settings.Mastery["Farm Mastery SwordList"]) and StatrMagnetBoneMon and (v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy") and (v.HumanoidRootPart.Position - PosMonBone.Position).magnitude <= 350 then
						v.HumanoidRootPart.CFrame = PosMonBone
						v.HumanoidRootPart.CanCollide = false
						v.HumanoidRootPart.Size = Vector3.new(50,50,50)
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
					end
				end
			end)
		end)
	end)

	spawn(function()
		while wait() do
			if Auto_Farm_Bone then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Domenic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
								if v.Humanoid.Health > 0 then
									FastAttack = true
									repeat wait()
										EquipWeapon(_G.Setting_table.Weapon)
										StatrMagnetBoneMon = true
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
										PosMonBone = v.HumanoidRootPart.CFrame
										TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
									until Auto_Farm_Bone == false or not v.Parent or v.Humanoid.Health <= 0
									FastAttack = false
								end
							end
						end
					else
						StatrMagnetBoneMon = false
						if (CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
							TP(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
						else
							TelePBoss(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
						end
					end
				end)
			end
		end
	end)


 Kill_Cake_Monster_ST = Main:Label("")

	spawn(function()
	    while wait() do
			pcall(function()
				if not game.Workspace.Enemies:FindFirstChild("Cake Prince") or not game.ReplicatedStorage:FindFirstChild("Cake Prince") then
					local OP = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")
					local Lp = tonumber(string.match(tostring(OP), "%d+"))
					Kill_Cake_Monster_ST:Set(" // Kill Cake Monster : "..tostring(Lp).."/500 \\\\")
				else
				    Kill_Cake_Monster_ST:Set(" // Kill Cake Monster : Spawned !!! \\\\")
				end
			end)
		end
	end)


	Main:Toggle("Auto Cake Prince",_G.Setting_table.Auto_Spikey_Trident,function(vu)
		Auto_Spikey_Trident = vu
		_G.Setting_table.Auto_Spikey_Trident = vu
		Update_Setting(getgenv()['MyName'])
	end)

 Elite_Hunter_Status = Main:Label("")

	task.spawn(function()
		while task.wait() do
			pcall(function()
				if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") then
					Elite_Hunter_Status:Set("Status : Spawned\nName : Diablo ✅")   
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") then 
					Elite_Hunter_Status:Set("Status : Spawned\nName : Deandre ✅")   
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
					Elite_Hunter_Status:Set("Status : Spawned\nName : Urban ✅") 
				else
					Elite_Hunter_Status:Set("Status : Not Spawn ❌")    
				end
			end)
		end
	end)

	Main:Toggle("Auto Cake Prince V2",_G.Setting_table.Prince2,function(vu)
		Prince2 = vu
		_G.Setting_table.Prince2 = vu
		Update_Setting(getgenv()['MyName'])
	end)

	Main:Toggle("Hop Cake Prince V2",_G.Setting_table.Hop,function(vu)
		Hop = vu
		_G.Setting_table.Hop = vu
		Update_Setting(getgenv()['MyName'])
	end)

	task.spawn(function()
		while wait() do
			pcall(function()
				if Prince2 then
					if not game:GetService("Workspace").Map.CakeLoaf:FindFirstChild("RedDoor") then
						if game.Players.LocalPlayer.Character:FindFirstChild("Red Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Red Key") then
							local args = {
								[1] = "CakeScientist",
								[2] = "Check"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))    
							local args = {
								[1] = "RaidsNpc",
								[2] = "Check"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))                        
						end
					elseif game:GetService("Workspace").Map.CakeLoaf:FindFirstChild("RedDoor") then
						if game.Players.LocalPlayer.Character:FindFirstChild("Red Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Red Key") then
							RedDorTween = TP(CFrame.new(-2681.97998, 64.3921585, -12853.7363, 0.149007782, -1.87902192e-08, 0.98883605, 3.60619588e-08, 1, 1.35681812e-08, -0.98883605, 3.36376011e-08, 0.149007782))
							if (CFrame.new(-2681.97998, 64.3921585, -12853.7363, 0.149007782, -1.87902192e-08, 0.98883605, 3.60619588e-08, 1, 1.35681812e-08, -0.98883605, 3.36376011e-08, 0.149007782).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 5 then
								if RedDorTween then RedDorTween:Stop() end
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2681.97998, 64.3921585, -12853.7363, 0.149007782, -1.87902192e-08, 0.98883605, 3.60619588e-08, 1, 1.35681812e-08, -0.98883605, 3.36376011e-08, 0.149007782)
								wait(0.5)
								EquipWeapon("Red Key")
								wait(0.5)
							end
						elseif game.Workspace:FindFirstChild("Enemies"):FindFirstChild("Dough King") or game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if Prince2 and v.Name == "Dough King" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
										repeat wait()
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
												Farmtween = TP(v.HumanoidRootPart.CFrame)
											elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Farmtween then
													Farmtween:Stop()
												end
												EquipWeapon(_G.Setting_table.Weapon)
												v.HumanoidRootPart.Size = Vector3.new(55,55,55)
												FastAttack = true
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
											end
										until not Prince2 or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Dough King [Lv. 2300] [Raid Boss]")
										FastAttack = false
									end
								end
							else
								if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 then
									FastAttack = false
									Questtween = TP(CFrame.new(-2151.82153, 149.315704, -12404.9053))
									if (CFrame.new(-2151.82153, 149.315704, -12404.9053).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										if Questtween then Questtween:Stop() end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2151.82153, 149.315704, -12404.9053)
										wait(1)
									end
								end 
							end
						elseif game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner", true)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
							if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if Prince2 and (v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
										repeat wait()
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
												Farmtween = TP(v.HumanoidRootPart.CFrame)
											elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Farmtween then Farmtween:Stop() end
												FastAttack = true
												PosFarmCakePrince = v.HumanoidRootPart.CFrame
												EquipWeapon(_G.Setting_table.Weapon)
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
												MagnetFarmCakePrince = true
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner", true)
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
											end
										until not Prince2 or not v.Parent or v.Humanoid.Health <= 0
										FastAttack = false
										MagnetFarmCakePrince = false
									end
								end
							else
								MagnetFarmCakePrince = false
								FastAttack = false
								Questtween = TP(CFrame.new(-2077, 252, -12373))
								if (CFrame.new(-2077, 252, -12373).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
									if Questtween then Questtween:Stop() end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2077, 252, -12373)
								end
							end
						elseif (game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice")) and GetMaterial("Conjured Cocoa") >= 10 then
							game.ReplicatedStorage.Remotes.CommF_:InvokeServer("SweetChaliceNpc")
							wait(0.2)
						elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") and not game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") and (game.Workspace.Enemies:FindFirstChild("Deandre") or game.Workspace.Enemies:FindFirstChild("Urban") or game.Workspace.Enemies:FindFirstChild("Diablo") or game.ReplicatedStorage:FindFirstChild("Deandre") or game.ReplicatedStorage:FindFirstChild("Urban") or game.ReplicatedStorage:FindFirstChild("Diablo")) then
							if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
								if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") then
									for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
										if string.find(v.Name,"Diablo") then
											TelePBoss(v.HumanoidRootPart.CFrame)
											DoughTween = TP(v.HumanoidRootPart.CFrame)
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												if DoughTween then
													DoughTween:Stop()
												end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											end
										elseif string.find(v.Name,"Urban") then
											TelePBoss(v.HumanoidRootPart.CFrame)
											DoughTween = TP(v.HumanoidRootPart.CFrame)
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												if DoughTween then
													DoughTween:Stop()
												end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											end
										elseif string.find(v.Name,"Deandre") then
											TelePBoss(v.HumanoidRootPart.CFrame)
											DoughTween = TP(v.HumanoidRootPart.CFrame)
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												if DoughTween then
													DoughTween:Stop()
												end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											end
										end	
									end
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if Prince2 and string.find(v.Name,"Diablo") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat wait()
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 1500 then
													TelePBoss(v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
													EquipWeapon(_G.Setting_table.Weapon)
													FastAttack = true
													TP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
												end 
											until not Prince2 or not v.Parent or v.Humanoid.Health <= 0
											FastAttack = false
										end
										if Prince2 and string.find(v.Name,"Urban") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat wait()
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 1500 then
													TelePBoss(v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
													EquipWeapon(_G.Setting_table.Weapon)
													FastAttack = true
													TP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
												end 
											until not Prince2 or not v.Parent or v.Humanoid.Health <= 0
											FastAttack = false
										end
										if Prince2 and string.find(v.Name,"Deandre") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat wait()
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 1500 then
													TelePBoss(v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
													EquipWeapon(_G.Setting_table.Weapon)
													FastAttack = true
													TP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
												end 
											until not Prince2 or not v.Parent or v.Humanoid.Health <= 0
											FastAttack = false
										end
									end
								elseif not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") then
									local string_1 = "EliteHunter";
									local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									Target:InvokeServer(string_1);
								elseif Hop then
									function HopServer()
										if not _G.TP_Ser then
											_G.TP_Ser = true
											game.StarterGui:SetCore("SendNotification", {
												Title = "Hop Low Server ", 
												Text = "กำลังหาเซิฟ",
												Icon = "http://www.roblox.com/asset/?id=9606070311",
												Duration = 25
											})
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
													game.StarterGui:SetCore("SendNotification", {
														Title = "Hop Low Server ", 
														Text = "Players : " ..tonumber(v.playing),
														Icon = "http://www.roblox.com/asset/?id=9606070311",
														Duration = 1.5
													})
													if tonumber(v.maxPlayers) > tonumber(v.playing) then
														for _,Existing in pairs(AllIDs) do
															if num ~= 0 then
																if ID == tostring(Existing) then
																	Possible = false
																end
															else
																if tonumber(actualHour) ~= tonumber(Existing) then
																	local delFile = pcall(function()
																		-- delfile("NotSameServers.json")
																		AllIDs = {}
																		table.insert(AllIDs, actualHour)
																	end)
																end
															end
															num = num + 1
														end
														if Possible == true then
															table.insert(AllIDs, ID)
															wait()
															pcall(function()
																_G.Setting_table.Hop_Server = true 
																Update_Setting(getgenv()['MyName'])
																_G.TP_Ser = true
																-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
																wait()
																game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
															end)
															wait(.1)
														end
													end
												end
											end
											function Bring()
												while wait(.2) do
													pcall(function()
														TPReturner()
														if foundAnything ~= "" then
															TPReturner()
														end
													end)
												end
											end
											Bring()
										end
									end
									print("Hop")
									wait(3)
									HopServer()
								end
							elseif not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") then
								local string_1 = "EliteHunter";
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1);
							elseif Hop then
								function HopServer()
									if not _G.TP_Ser then
										_G.TP_Ser = true
										game.StarterGui:SetCore("SendNotification", {
											Title = "Hop Low Server ", 
											Text = "กำลังหาเซิฟ",
											Icon = "http://www.roblox.com/asset/?id=9606070311",
											Duration = 25
										})
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
												game.StarterGui:SetCore("SendNotification", {
													Title = "Hop Low Server ", 
													Text = "Players : " ..tonumber(v.playing),
													Icon = "http://www.roblox.com/asset/?id=9606070311",
													Duration = 1.5
												})
												if tonumber(v.maxPlayers) > tonumber(v.playing) then
													for _,Existing in pairs(AllIDs) do
														if num ~= 0 then
															if ID == tostring(Existing) then
																Possible = false
															end
														else
															if tonumber(actualHour) ~= tonumber(Existing) then
																local delFile = pcall(function()
																	-- delfile("NotSameServers.json")
																	AllIDs = {}
																	table.insert(AllIDs, actualHour)
																end)
															end
														end
														num = num + 1
													end
													if Possible == true then
														table.insert(AllIDs, ID)
														wait()
														pcall(function()
															_G.Setting_table.Hop_Server = true 
															Update_Setting(getgenv()['MyName'])
															_G.TP_Ser = true
															-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
															wait()
															game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
														end)
														wait(.1)
													end
												end
											end
										end
										function Bring()
											while wait(.2) do
												pcall(function()
													TPReturner()
													if foundAnything ~= "" then
														TPReturner()
													end
												end)
											end
										end
										Bring()
									end
								end
								print("Hop")
								wait(3)
								HopServer()
							end
						else
							if game:GetService("Workspace").Enemies:FindFirstChild("Candy Rebel") or game:GetService("Workspace").Enemies:FindFirstChild("Sweet Thief") or game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") or game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if Prince2 and (v.Name == "Candy Rebel" or v.Name == "Sweet Thief" or v.Name == "Chocolate Bar Battler" or v.Name == "Cocoa Warrior") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
										repeat wait()
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150 then
												Farmtween = TP(v.HumanoidRootPart.CFrame)
												FastAttack = false
											elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												if Farmtween then Farmtween:Stop() end
												FastAttack = true
												PosFarmCoco = v.HumanoidRootPart.CFrame
												EquipWeapon(_G.Setting_table.Weapon)
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
												MagnetFarmCoco = true
											end
										until not Prince2 or not v.Parent or v.Humanoid.Health <= 0
										FastAttack = false
										MagnetFarmCoco = false
									end
								end
							else
								MagnetFarmCoco = false
								FastAttack = false
								Questtween = TP(CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625))
								if (CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
									if Questtween then
										Questtween:Stop()
									end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625)
								end
							end
						end
					else
						print("Error Whyyy")
					end
				end
			end)
		end
	end)

	spawn(function()
		while wait() do
			pcall(function()
				if StatrMagnet then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
							if InMyNetWork(v.HumanoidRootPart) then
								v.HumanoidRootPart.CFrame = PosMon
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.HumanoidRootPart.Transparency = 1
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
							end
						end
					end
				end
			end)
		end
	end)


	spawn(function()
		while wait() do
			pcall(function()
				if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
					KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41)) - 500)
				elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
					KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),40,41)) - 500)
				elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
					KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),41,41)) - 500)
				end
			end)
		end
	end)

    spawn(function()
		game:GetService("RunService").Heartbeat:Connect(function()
			pcall(function()
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if (Auto_Spikey_Trident and MagnetDought) and _G.Setting_table.Bring_Mob and (v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker") and (v.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).magnitude <= 250 then
						v.HumanoidRootPart.CFrame = PosMonDoughtOpenDoor
						v.HumanoidRootPart.CanCollide = false
						v.HumanoidRootPart.Size = Vector3.new(50,50,50)
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
					end
				end
			end)
		end)
	end)

	spawn(function()
		while wait(.1) do
			pcall(function()
				if Auto_Spikey_Trident then
					if not Mix_Farm or Auto_Spikey_Trident_Farm then
						if game.Workspace.Enemies:FindFirstChild("Cake Prince") or game.ReplicatedStorage:FindFirstChild("Cake Prince") then
							Auto_Spikey_Trident_Farm = true
							Mix_Farm = true							
							if game.Workspace.Enemies:FindFirstChild("Cake Prince") then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if v.Name == "Cake Prince" and v.Humanoid.Health > 0 then
										if v.Humanoid:FindFirstChild("Animator") then
											v.Humanoid.Animator:Destroy()
										end
										DbFast = false
										print("DbFast = fase")
										repeat wait()
										EquipWeapon(_G.Setting_table.Weapon)
										FastAttack = true
										TP(v.HumanoidRootPart.CFrame * CFrame.new(0, 40, 0))
										until v.Humanoid.Health <= 0 or not v.Parent or not Auto_Spikey_Trident
										DbFast = true
										print("DbFast = true")
										FastAttack = false
									end
								end
							else
								if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 and (CFrame.new(-1990.672607421875, 4532.99951171875, -14973.6748046875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >= 2000 then
									Questtween = TP(CFrame.new(-2151.82153, 149.315704, -12404.9053))
									if (CFrame.new(-2151.82153, 149.315704, -12404.9053).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										if Questtween then Questtween:Stop() end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2151.82153, 149.315704, -12404.9053)
										wait(.1)
									end
								end 
							end
						else
							local CFrameMon = CFrame.new(-2133.9267578125, 148.9164581298828, -12341.775390625)
							if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if (v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
										FastAttack = true
										repeat wait()
											EquipWeapon(_G.Setting_table.Weapon)
											MagnetDought = true
											PosMonDoughtOpenDoor = v.HumanoidRootPart.CFrame
											TP(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
										until not Auto_Spikey_Trident or not v.Parent or v.Humanoid.Health <= 0
										FastAttack = false
										MagnetDought = false
									end
								end
							else
								if (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude < 1500 then
									TP(CFrameMon)
								else
									TelePBoss(CFrameMon)
								end
							end
						end
					end
				else
					wait(.1)
				end
			end)
		end
	end)

	Main:Seperator("Mas Farm")

	Main:Toggle("Auto Farm Fruit",_G.Setting_table.Farm_Fruit,function(vu)
		Auto_Farm_Fruit = vu
		_G.Setting_table.Farm_Fruit = vu
		Update_Setting(getgenv()['MyName'])
	end)

    MinHealth = 20
	Main:Slider("Kill At %",1,100,20,function(vu)
		MinHealth = vu
		_G.Setting_table.MinHealth = vu
		Update_Setting(getgenv()['MyName'])
	end)

	Main:Slider("Distance Farm",1,5000,1000,function(vu)
		_G.Setting_table.Distan_Mastery = vu
		Update_Setting(getgenv()['MyName'])
	end)

    spawn(function()
        while wait() do
            if Auto_Farm_Fruit then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        MastertyMagnet = false
                        UseSkill = false
                        CheckLevel()
                        TP(CFrameQ)
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude <= 5 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,QuestLv)
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        CheckLevel()
                        if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    if v.Name == Ms then
                                        HealthMs = v.Humanoid.MaxHealth * MinHealth/100
                                        repeat task.wait()
                                            if v.Humanoid.Health <= HealthMs then
                                                EquipWeapon(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
                                                v.HumanoidRootPart.CanCollide = false
                                                TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                                _G.PosMon = v.HumanoidRootPart.CFrame
                                                v.Humanoid.WalkSpeed = 0
                                                PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                UseSkill = true
                                            else           
                                                UseSkill = false 
                                                EquipWeapon(_G.Setting_table.Weapon)
                                                v.HumanoidRootPart.CanCollide = false
                                                TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,1))
                                                v.Humanoid.WalkSpeed = 0
                                                _G.PosMon = v.HumanoidRootPart.CFrame
                                            end
                                            MastertyMagnet = true
                                            Click()
                                        until not Auto_Farm_Fruit or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    else
                                        UseSkill = false
                                        MastertyMagnet = false
                                    end
                                end
                            end
                        else
                            TP(CFrameMon)
                            MastertyMagnet = false   
                            UseSkill = false 
                            local Mob = game:GetService("ReplicatedStorage"):FindFirstChild(Ms) 
                            if Mob then
                                TP(Mob.HumanoidRootPart.CFrame * CFrame.new(0,0,10))
                            else
                                if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                                    game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
                                    task.wait()
                                    game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    spawn(function()
        while wait() do
            if UseSkill then
                pcall(function()
                    CheckLevel()
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                            MasBF = game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value
                        elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                            MasBF = game:GetService("Players").LocalPlayer.Backpack[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then                      
                            if SkillZ then
                                local args = {
                                    [1] = _G.PosMon.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                        
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                            end
                            if SkillX then          
                                local args = {
                                    [1] = _G.PosMon.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))               
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                            end
                            if SkillC then
                                local args = {
                                    [1] = _G.PosMon.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                          
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                                wait(2)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                            end
                        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom-Venom") then   
                            if SkillZ then
                                local args = {
                                    [1] = _G.PosMon.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                        
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                            end
                            if SkillX then        
                                local args = {
                                    [1] = _G.PosMon.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))               
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                            end
                            if SkillC then 
                                local args = {
                                    [1] = _G.PosMon.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                          
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                                wait(2)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                            end
                        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
                            if SkillZ and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(2, 2.0199999809265, 1) then
                                local args = {
                                    [1] = _G.PosMon.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                         
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                            end
                            if SkillX then
                                local args = {
                                    [1] = _G.PosMon.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                            end
                            if SkillC then
                                local args = {
                                    [1] = _G.PosMon.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                            end
                            if SkillV then
                                local args = {
                                    [1] = _G.PosMon.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
                            end
                        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                            if SkillZ then 
                                local args = {
                                    [1] = _G.PosMon.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                         
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                            end
                            if SkillX then
                                local args = {
                                    [1] = _G.PosMon.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                            end
                            if SkillC then
                                local args = {
                                    [1] = _G.PosMon.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                            end
                            if SkillV then
                                local args = {
                                    [1] = _G.PosMon.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    spawn(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            pcall(function()
                if UseSkill then
                    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
                        if v.Name == "NotificationTemplate" then
                            if string.find(v.Text,"Skill locked!") then
                                v:Destroy()
                            end
                        end
                    end
                end
            end)
        end)
    end)

	spawn(function()
		local gg = getrawmetatable(game)
		local old = gg.__namecall
		setreadonly(gg,false)
		gg.__namecall = newcclosure(function(...)
			local method = getnamecallmethod()
			local args = {...}
			if tostring(method) == "FireServer" then
				if tostring(args[1]) == "RemoteEvent" then
					if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
						if UseSkillMasteryDevilFruit then
							args[2] = PositionSkillMasteryDevilFruit
							return old(unpack(args))
						elseif Skillaimbot then
							args[2] = AimBotSkillPosition
							return old(unpack(args))
						end
					end
				end
			end
			return old(...)
		end)
	end)

spawn(function()
	while task.wait() do
		pcall(function()
			if MastertyMagnet then
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if (v.HumanoidRootPart.Position-_G.PosMon.Position).Magnitude <= 300 then
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						v.Humanoid:ChangeState(11)
						v.Humanoid.JumpPower = 0
						v.Humanoid.WalkSpeed = 0
						v.HumanoidRootPart.CanCollide = false
						v.HumanoidRootPart.Size = Vector3.new(5,5,5)
						v.HumanoidRootPart.CFrame = _G.PosMon
						sethiddenproperty(game.Players.LocalPlayer, "MaximumSimulationRadius",  math.huge)
						sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  9e20)
					end
				end
			end
		end)
	end
end)



	local function CheckQuestMasteryFarm()
		if Old_World then
			Name = "Galley Captain [Lv. 650]";
			CFrameMon = CFrame.new(5649, 39, 4936);
		end
		if New_World then
			Name = "Water Fighter [Lv. 1450]";
			CFrameMon = CFrame.new(-3385, 239, -10542);
		end
		if Three_World then
			Name = "Reborn Skeleton [Lv. 1975]";
			CFrameMon = CFrame.new(-9506.14648, 172.130661, 6101.79053);
		end
	end
	

	Main:Label("// Setting \\\\")

	Main:Toggle("Skill Z",_G.Setting_table.Skill_Z,function(vu)
		SkillZ = vu
		_G.Setting_table.Skill_Z = vu
		Update_Setting(getgenv()['MyName'])
	end)
	Main:Toggle("Skill X",_G.Setting_table.Skill_X,function(vu)
		SkillX = vu
		_G.Setting_table.Skill_X = vu
		Update_Setting(getgenv()['MyName'])
	end)
	Main:Toggle("Skill C",_G.Setting_table.Skill_C,function(vu)
		SkillC = vu
		_G.Setting_table.Skill_C = vu
		Update_Setting(getgenv()['MyName'])
	end)
	Main:Toggle("Skill V",_G.Setting_table.Skill_V,function(vu)
		SkillV = vu
		_G.Setting_table.Skill_V = vu
		Update_Setting(getgenv()['MyName'])
	end)

	Main:Toggle("Skill F",_G.Setting_table.Skill_F,function(vu)
		SkillF = vu
		_G.Setting_table.Skill_F = vu
		Update_Setting(getgenv()['MyName'])
	end)
	
Miscf:Seperator("Mystic Island")

Miscf:Toggle("Auto Mystic Island",_G.Setting_table.AutoMysticIsland,function(vu)
	_G.Setting_table.AutoMysticIsland = vu
	Update_Setting(getgenv()['MyName'])
end)

    spawn(function()
            pcall(function()
                while wait() do
                    if _G.Setting_table.AutoMysticIsland then
                        if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                            TP(CFrame.new(game:GetService("Workspace").Map.MysticIsland.Center.Position.X,500,game:GetService("Workspace").Map.MysticIsland.Center.Position.Z))
                        end
                    end
                end
            end)
        end)
        
Miscf:Button("Teleport To Advanced Fruit Dealer",function()
    for i, ve in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
        if ve.Name == "Advanced Fruit Dealer" then
            TP(ve.HumanoidRootPart.CFrame * CFrame.new(0,2,0))
        end
    end
end)

Miscf:Toggle("Teleport To Gear",_G.Setting_table.TeleporttoGear,function(vu)
	_G.Setting_table.TeleporttoGear = vu
	Update_Setting(getgenv()['MyName'])
end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.Setting_table.TeleporttoGear then
				if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
					for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do 
						if v:IsA("MeshPart")then 
                            if v.Material ==  Enum.Material.Neon then  
                                TP(v.CFrame)
                            end
                        end
					end
				end
			end
        end
    end)
end)
Miscf:Toggle("Auto Find Full Moon",_G.Setting_table.AutoFindFullmoon,function(vu)
	_G.Setting_table.AutoFindFullmoon = vu
	Update_Setting(getgenv()['MyName'])
end)
 
spawn(function()
        while wait() do
            if AutoFindFullmoon then
                pcall(function()
                    if not game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
                        wait(3)
                        HopServer()
                    end
                end)
            end
        end
    end)
Miscf:Seperator("Farm Nearest")

ddiss = Miscf:Label("")

task.spawn(function()
	while task.wait() do
		pcall(function()
			ddiss:Set("Distance | ".._G.Setting_table.DistanceMobAura)
		end)
	end
end)

Miscf:Toggle("Mob Aura",_G.Setting_table.Mob_Aura,function(vu)
	AutoMobAura = vu 
	_G.Setting_table.Mob_Aura = vu
	Update_Setting(getgenv()['MyName'])
end)

Miscf:Slider("Distance Farm",1,5000,1000,function(vu)
	DistanceMobAura = vu
	_G.Setting_table.DistanceMobAura = vu
	Update_Setting(getgenv()['MyName'])
end)

task.spawn(function()
	while wait() do
		if AutoMobAura then
			for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
				if AutoMobAura and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
					FastAttack = true
					repeat task.wait()
						EquipWeapon(_G.Setting_table.Weapon)
						PosMonAura = v.HumanoidRootPart.CFrame
						TP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
						MagnetMobAura = true
					until not AutoMobAura or not v.Parent or v.Humanoid.Health <= 0
					FastAttack = false
					MagnetMobAura = false
				end
			end
		end
	end
end)


spawn(function()
	while true do game:GetService("RunService").RenderStepped:Wait()
		if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
			if MagnetMobAura and AutoMobAura then
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if MagnetMobAura and AutoMobAura and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 400 then
						v.HumanoidRootPart.Size = Vector3.new(50,50,50)
						v.Humanoid:ChangeState(14)
						v.HumanoidRootPart.CanCollide = false
						v.Head.CanCollide = false
						v.HumanoidRootPart.CFrame = PosMonAura
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
					end
				end
			end
		end
	end
end)

Miscf:Seperator("Misc Boss")

Miscf:Toggle("Auto Farm Boss",_G.Setting_table.AutoFarmBoss,function(vu)
	_G.Setting_table.AutoFarmBoss = vu
	Update_Setting(getgenv()['MyName'])
end)


Miscf:Toggle("Auto Farm All Boss",_G.Setting_table.AutoFarmAllBoss,function(vu)
	_G.Setting_table.AutoFarmAllBoss = vu
	Update_Setting(getgenv()['MyName'])
end)

task.spawn(function()
	while wait() do
		if _G.Setting_table.AutoFarmAllBoss then
			GetBossName()
		end
	end
end)

Miscf:Toggle("Auto Quest Boss",_G.Setting_table.AutoQuestBoss,function(vu)
	_G.Setting_table.AutoQuestBoss = vu
	Update_Setting(getgenv()['MyName'])
end)

task.spawn(function()
	while wait() do
		if _G.Setting_table.AutoFarmAllBoss then
			pcall(function()
				CheckBossQuest()
				if MsBoss == "Soul Reaper" or MsBoss == "Longma" or MsBoss == "Don Swan" or MsBoss == "Cursed Captain" or MsBoss == "Order" or MsBoss == "rip_indra True Form" then
					if game:GetService("ReplicatedStorage"):FindFirstChild(MsBoss) or game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
						if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == MsBoss then
									repeat wait()
										EquipWeapon(_G.Setting_table.Weapon)
										_G.GetBoss = true
										StatrMagnet = true
										FastAttack = true
										TP(v.HumanoidRootPart.CFrame * CFrame.new(1,30,0))
										_G.PosMon = v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
									until _G.Setting_table.AutoFarmAllBoss == false or not v.Parent or v.Humanoid.Health <= 0
									_G.GetBoss = false
									FastAttack = false
									StatrMagnet = false
								end
							end
						else
							_G.GetBoss = true
							if ((CFrameBoss).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
								TP(CFrameBoss)
							else
								TelePBoss(CFrameBoss)
							end
						end
					else
						_G.GetBoss = false
					end
				else
					if _G.Setting_table.AutoQuestBoss then
						CheckBossQuest()
						if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
						end
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
							_G.GetBoss = true
							repeat wait()
								if ((CFrameQuestBoss).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
									TP(CFrameQuestBoss)
								else
									TelePBoss(CFrameQuestBoss)
								end
							until (CFrameQuestBoss.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Setting_table.AutoFarmBoss
							if (CFrameQuestBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
								wait(1.1)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, LevelQuestBoss)
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if game:GetService("ReplicatedStorage"):FindFirstChild(MsBoss) or game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
								if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == MsBoss then
											repeat wait()
												_G.GetBoss = true
												if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
													EquipWeapon(_G.Setting_table.Weapon)
													StatrMagnet = true
													FastAttack = true
													TP(v.HumanoidRootPart.CFrame * CFrame.new(1,30,0))
													_G.PosMon = v.HumanoidRootPart.CFrame
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)								
												else
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
												end
											until _G.Setting_table.AutoFarmAllBoss == false or not v.Parent or v.Humanoid.Health <= 0
											_G.GetBoss = false
											FastAttack = false
											StatrMagnet = false
										end
									end
								else
									_G.GetBoss = true
									if ((CFrameBoss).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
										TP(CFrameBoss)
									else
										TelePBoss(CFrameBoss)
									end
								end
							else
								_G.GetBoss = false
							end
						end
					else
						if game:GetService("ReplicatedStorage"):FindFirstChild(MsBoss) or game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
							if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == MsBoss then
										repeat wait()
											EquipWeapon(_G.Setting_table.Weapon)
											_G.GetBoss = true
											StatrMagnet = true
											FastAttack = true
											TP(v.HumanoidRootPart.CFrame * CFrame.new(1,30,0))
											_G.PosMon = v.HumanoidRootPart.CFrame
											v.HumanoidRootPart.Size = Vector3.new(60,60,60)
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid:ChangeState(11)								
										until _G.Setting_table.AutoFarmAllBoss == false or not v.Parent or v.Humanoid.Health <= 0
										_G.GetBoss = false
										FastAttack = false
										StatrMagnet = false
									end
								end
							else
								_G.GetBoss = true
								if ((CFrameBoss).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
									TP(CFrameBoss)
								else
									TelePBoss(CFrameBoss)
								end
							end
						else
							_G.GetBoss = false
						end
					end
				end
			end)
		end
	end
end)

task.spawn(function()
	while wait() do
		if _G.Setting_table.AutoFarmBoss then
			pcall(function()
				CheckBossQuest()
				if MsBoss == "Soul Reaper" or MsBoss == "Longma" or MsBoss == "Don Swan" or MsBoss == "Cursed Captain" or MsBoss == "Order" or MsBoss == "rip_indra True Form" then
					if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == MsBoss then
								repeat wait()
									EquipWeapon(_G.Setting_table.Weapon)
									StatrMagnet = true
									FastAttack = true
									TP(v.HumanoidRootPart.CFrame * CFrame.new(1,30,0))
									_G.PosMon = v.HumanoidRootPart.CFrame
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid:ChangeState(11)
								until _G.Setting_table.AutoFarmBoss == false or not v.Parent or v.Humanoid.Health <= 0
								FastAttack = false
								StatrMagnet = false
							end
						end
					else
						if ((CFrameBoss).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
							TP(CFrameBoss)
						else
							TelePBoss(CFrameBoss)
						end
					end
				else
					if _G.Setting_table.AutoQuestBoss then
						CheckBossQuest()
						if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
						end
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
							repeat wait()
								if ((CFrameQuestBoss).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
									TP(CFrameQuestBoss)
								else
									TelePBoss(CFrameQuestBoss)
								end
							until (CFrameQuestBoss.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Setting_table.AutoFarmBoss
							if (CFrameQuestBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
								wait(1.1)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, LevelQuestBoss)
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == MsBoss then
										repeat wait()
											if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
												EquipWeapon(_G.Setting_table.Weapon)
												StatrMagnet = true
												FastAttack = true
												TP(v.HumanoidRootPart.CFrame * CFrame.new(1,30,0))
												_G.PosMon = v.HumanoidRootPart.CFrame
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)								
											else
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
											end
										until _G.Setting_table.AutoFarmBoss == false or not v.Parent or v.Humanoid.Health <= 0
										FastAttack = false
										StatrMagnet = false
									end
								end
							else
								if ((CFrameBoss).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
									TP(CFrameBoss)
								else
									TelePBoss(CFrameBoss)
								end
							end
						end
					else
						if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == MsBoss then
									repeat wait()
										EquipWeapon(_G.Setting_table.Weapon)
										StatrMagnet = true
										FastAttack = true
										TP(v.HumanoidRootPart.CFrame * CFrame.new(1,30,0))
										_G.PosMon = v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)								
									until _G.Setting_table.AutoFarmBoss == false or not v.Parent or v.Humanoid.Health <= 0
									FastAttack = false
									StatrMagnet = false
								end
							end
						else
							if ((CFrameBoss).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
								TP(CFrameBoss)
							else
								TelePBoss(CFrameBoss)
							end
						end
					end
				end
			end)
		end
	end
end)

if Old_World then
	tableBoss = {"The Gorilla King","Bobby","Yeti","Mob Leader","Vice Admiral","Warden","Chief Warden","Swan","Magma Admiral","Fishman Lord","Wysper","Thunder God","Cyborg","Saber Expert"}
elseif New_World then
	tableBoss = {"Diamond","Jeremy","Fajita","Don Swan","Smoke Admiral","Cursed Captain","Darkbeard","Order","Awakened Ice Admiral","Tide Keeper"}
elseif Three_World then
	tableBoss = {"Stone","Island Empress","Kilo Admiral","Captain Elephant","Beautiful Pirate","rip_indra True Form","Longma","Soul Reaper","Cake Queen"}
end

Miscf:Dropdown("Select Boss",tableBoss,function(a)
	_G.Setting_table.Selectb = a
	Update_Setting(getgenv()['MyName'])
end)


Sta:Seperator("// Auto Stats \\\\\ ")

Sta:Toggle("Melee",_G.Setting_table.Melee_A,function(vu)
	Melee_A = vu
	_G.Setting_table.Melee_A = vu
	Update_Setting(getgenv()['MyName'])
end)
Sta:Toggle("Defense",_G.Setting_table.Defense_A,function(vu)
	Defense_A = vu
	_G.Setting_table.Defense_A = vu
	Update_Setting(getgenv()['MyName'])
end)
Sta:Toggle("Sword",_G.Setting_table.Sword_A,function(vu)
	Sword_A = vu
	_G.Setting_table.Sword_A = vu
	Update_Setting(getgenv()['MyName'])
end)
Sta:Toggle("Fruit",_G.Setting_table.Fruit_A,function(vu)
	Fruit_A = vu
	_G.Setting_table.Fruit_A = vu
	Update_Setting(getgenv()['MyName'])
end)
Sta:Toggle("Gun",_G.Setting_table.Gun_A,function(vu)
	Gun_A = vu
	_G.Setting_table.Gun_A = vu
	Update_Setting(getgenv()['MyName'])
end)
Sta:Slider("Point",1,100,3,function(vu)
	Points = vu
end)

spawn(function()
    while wait() do
        if Melee_A then
            if game:GetService("Players").LocalPlayer.Data.Points.Value > 0 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Melee", Points)
            end
        end
    end
end)

spawn(function()
    while wait() do
        if Defense_A then
            if game:GetService("Players").LocalPlayer.Data.Points.Value > 0 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Defense", Points)
            end
        end
    end
end)

spawn(function()
    while wait() do
        if Sword_A then
            if game:GetService("Players").LocalPlayer.Data.Points.Value > 0 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Sword", Points)
            end
        end
    end
end)

spawn(function()
    while wait() do
        if Gun_A then
            if game:GetService("Players").LocalPlayer.Data.Points.Value > 0 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Gun", Points)
            end
        end
    end
end)

spawn(function()
    while wait() do
        if Fruit_A then
            if game:GetService("Players").LocalPlayer.Data.Points.Value > 0 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Demon Fruit", Points)
            end
        end
    end
end)

Miscf:Seperator("// Acidum Rifle \\\\\ ")

Miscf:Toggle("Auto Acidum Rifle",_G.Setting_table.Auto_Acidum_Rifle,function(vu)
	Auto_Acidum_Rifle = vu
	_G.Setting_table.Auto_Acidum_Rifle = vu
	Update_Setting(getgenv()['MyName'])
end)
spawn(function()
	while wait(.5) do
		pcall(function()
			if Auto_Acidum_Rifle then
				if not Mix_Farm or Auto_Acidum_Rifle_Farm then
					if game.Workspace.Enemies:FindFirstChild("Core") or game.ReplicatedStorage:FindFirstChild("Core") then
						Mix_Farm = true
						Auto_Acidum_Rifle_Farm = true
						if game.Workspace.Enemies:FindFirstChild("Core") then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == "Core" then
									repeat wait(.2)
										EquipWeapon(_G.Setting_table.Weapon)
										TP(CFrame.new(402.404296875, 182.53373718262, -414.73394775391))
										AttackNoCD()
										FastAttack = true
									until not game.Workspace.Enemies:FindFirstChild("Core") or not Auto_Acidum_Rifle
									FastAttack = false
									Mix_Farm = nil
									Auto_Acidum_Rifle_Farm = nil
								end
							end
						else
							TP(CFrame.new(402.404296875, 182.53373718262, -414.73394775391))
						end
					elseif _G.Setting_table.Auto_Acidum_Rifle_Hop then
						wait(5)
						if not game.Workspace.Enemies:FindFirstChild("Core") and not game.ReplicatedStorage:FindFirstChild("Core") then
							HopServer()
							wait(50)
						end
					elseif Auto_Acidum_Rifle_Farm then
						Auto_Acidum_Rifle_Farm = nil
						Mix_Farm = nil
					end
				end
			else
				wait(2)
			end
		end)
	end
end)

Miscf:Toggle("Auto Acidum Rifle Hop",_G.Setting_table.Auto_Acidum_Rifle_Hop,function(vu)
	_G.Setting_table.Auto_Acidum_Rifle_Hop = vu
	Update_Setting(getgenv()['MyName'])
end)

Miscf:Seperator("// Fighting Style \\\\\ ")

Miscf:Toggle("Auto Superhuman",_G.Setting_table.Superhuman,function(vu)
	_G.Setting_table.Superhuman = vu
	Update_Setting(getgenv()['MyName'])
end)
Miscf:Toggle("Auto Death Step",_G.Setting_table.Death_Step,function(vu)
	_G.Setting_table.Death_Step = vu
	
	Update_Setting(getgenv()['MyName'])
end)
Miscf:Toggle("Auto Sharkman Karate",_G.Setting_table.Sharkman_Karate,function(vu)
	_G.Setting_table.Sharkman_Karate = vu
	
	Update_Setting(getgenv()['MyName'])
end)
Miscf:Toggle("Auto Electric Claw",_G.Setting_table.Electric_Claw,function(vu)
	_G.Setting_table.Electric_Claw = vu
	
	Update_Setting(getgenv()['MyName'])
end)
Miscf:Toggle("Auto Dragon Talon",_G.Setting_table.Dragon_Talon,function(vu)
	_G.Setting_table.Dragon_Talon = vu
	
	Update_Setting(getgenv()['MyName'])
end)
Miscf:Toggle("Auto_God_Human",_G.Setting_table.Auto_God_Human,function(vu)
	_G.Setting_table.Auto_God_Human = vu
	Update_Setting(getgenv()['MyName'])
	-- Auto Exc
end)

spawn(function()
	while wait(.5) do
		pcall(function()
			if not Mix_Farm or Farm_Melee_Ex then
				if _G.Setting_table.Superhuman and not Superhuman_H then
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman") == 1 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman") == 2 then
						_G.Setting_table.Weapon = "Superhuman"
						
						if _G.Setting_table.Next_Melee then
							Superhuman_H = true
						end
					else
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
							_G.Setting_table.Weapon = "Combat"
							if game:GetService("Players").LocalPlayer.Data.Beli.Value > 500000 then
								local args = {
									[1] = "BuyElectro"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
							
						end
						
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
							_G.Setting_table.Weapon = "Black Leg"
							
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 300 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
							_G.Setting_table.Weapon = "Electro"
							
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
							_G.Setting_table.Weapon = "Fishman Karate"
							
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 300 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
							_G.Setting_table.Weapon = "Dragon Claw"
							
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
							
							local args = {
								[1] = "BuyFishmanKarate"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
						if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
							local args = {
								[1] = "BuyFishmanKarate"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
						
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
							
							local args = {
								[1] = "BuyBlackLeg"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
						if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
							
							local args = {
								[1] = "BuyBlackLeg"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
							local FG = game:GetService("Players").LocalPlayer.Data.Fragments.Value
							if FG >= 1500 then
								local args = {
									[1] = "BlackbeardReward",
									[2] = "DragonClaw",
									[3] = "2"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							elseif _G.Setting_table.Melee_Hop and not Mix_Farm then
								Raid_FG()
							end
						end
						if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
							local FG = game:GetService("Players").LocalPlayer.Data.Fragments.Value
							if FG >= 1500 then
								local args = {
									[1] = "BlackbeardReward",
									[2] = "DragonClaw",
									[3] = "2"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							elseif _G.Setting_table.Melee_Hop and not Mix_Farm then
								Raid_FG()
							end
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
							local Beli = game:GetService("Players").LocalPlayer.Data.Beli.Value
							if Beli >= 300000 then
								local args = {
									[1] = "BuySuperhuman"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							else
								
								_G.Setting_table.Weapon = "Dragon Claw"
							end
						end
						if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
							local Beli = game:GetService("Players").LocalPlayer.Data.Beli.Value
							if Beli >= 300000 then
								local args = {
									[1] = "BuySuperhuman"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							else
								
								_G.Setting_table.Weapon = "Dragon Claw"
							end
						end
					end
				elseif _G.Setting_table.Death_Step and not Death_Step_H then
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep") == 1 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep") == 2 then
						_G.Setting_table.Weapon = "Death Step"
						
						if _G.Setting_table.Next_Melee then
							Death_Step_H = true
						end
					else
						if not New_World and _G.Setting_table.Next_Melee then
							TP_World2()
							wait(50)
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 400 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
							_G.Setting_table.Weapon = "Black Leg"
							
						elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and not game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and not game.Players.LocalPlayer.Character:FindFirstChild("Death Step") and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
							wait(4)
							if not game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and not game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and not game.Players.LocalPlayer.Character:FindFirstChild("Death Step") then
								local args = {
									[1] = "BuyBlackLeg"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 400 then
							local Beli = game:GetService("Players").LocalPlayer.Data.Beli.Value
							local FG = game:GetService("Players").LocalPlayer.Data.Fragments.Value
							if FG >= 5000 and Beli >= 3000000 then
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep") ~= 1 then
									if game.Players.LocalPlayer.Backpack:FindFirstChild("Library Key") or game.Players.LocalPlayer.Character:FindFirstChild("Library Key") then
										Mix_Farm = true
										repeat wait(1)
											EquipWeapon("Library Key")
											TP(CFrame.new(6377.12549, 296.634735, -6843.76025, -0.860993743, 1.17677516e-07, -0.508615494, 1.31121894e-07, 1, 9.40274347e-09, 0.508615494, -5.8594928e-08, -0.860993743))
										until not game.Players.LocalPlayer.Backpack:FindFirstChild("Library Key") and not game.Players.LocalPlayer.Character:FindFirstChild("Library Key")
										Mix_Farm = nil
									else
										if game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral") or game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") then
											Mix_Farm = true
											Farm_Melee_Ex = true
											if game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral") and not AutoRaid then
												repeat wait()
													TP(game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
													EquipWeapon(_G.Setting_table.Weapon)
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280,700))
												until not game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral") or game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]").Humanoid.Health <= 0 
												Mix_Farm = nil
												Farm_Melee_Ex = nil
											elseif game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral") then
												TP(game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral").HumanoidRootPart.CFrame*CFrame.new(0,50,0))
											end
										elseif _G.Setting_table.Melee_Hop then
											wait(5)
											if not game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") and not game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") then
												HopServer()
												wait(50)
											end
										end
									end
								elseif Farm_Melee_Ex then
									Farm_Melee_Ex = nil
									Mix_Farm = nil
								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep") == 1 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
								end
							elseif FG < 5000 and not Mix_Farm and _G.Setting_table.Melee_Hop then
								Raid_FG()
							end
						end
						if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 400 then
							local Beli = game:GetService("Players").LocalPlayer.Data.Beli.Value
							local FG = game:GetService("Players").LocalPlayer.Data.Fragments.Value
							if FG >= 5000 and Beli >= 3000000 then
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep") ~= 1 then
									if game.Players.LocalPlayer.Backpack:FindFirstChild("Library Key") or game.Players.LocalPlayer.Character:FindFirstChild("Library Key") then
										Mix_Farm = true
										repeat wait(1)
											EquipWeapon("Library Key")
											TP(CFrame.new(6377.12549, 296.634735, -6843.76025, -0.860993743, 1.17677516e-07, -0.508615494, 1.31121894e-07, 1, 9.40274347e-09, 0.508615494, -5.8594928e-08, -0.860993743))
										until not game.Players.LocalPlayer.Backpack:FindFirstChild("Library Key") and not game.Players.LocalPlayer.Character:FindFirstChild("Library Key")
										Mix_Farm = nil
									else
										if game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral") or game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") then
											Mix_Farm = true
											Farm_Melee_Ex = true
											if game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral") and not AutoRaid then
												repeat wait()
													TP(game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
													EquipWeapon(_G.Setting_table.Weapon)
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280,700))
												until not game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral") or game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]").Humanoid.Health <= 0 
												Mix_Farm = nil
												Farm_Melee_Ex = nil
											elseif game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral") then
												TP(game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral").HumanoidRootPart.CFrame*CFrame.new(0,50,0))
											end
										elseif _G.Setting_table.Melee_Hop then
											wait(5)
											if not game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral") and not game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") then
												HopServer()
												wait(50)
											end
										end
									end
								elseif Farm_Melee_Ex then
									Farm_Melee_Ex = nil
									Mix_Farm = nil
								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep") == 1 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
								end
							elseif FG < 5000 and not Mix_Farm and _G.Setting_table.Melee_Hop then
								Raid_FG()
							end
						end
					end	
				elseif _G.Setting_table.Sharkman_Karate and not Sharkman_Karate_H then
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate") == 1 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate") == 2 then
						_G.Setting_table.Weapon = "Sharkman Karate"
						if _G.Setting_table.Next_Melee then
							Sharkman_Karate_H = true
						end
					else
						if not New_World and _G.Setting_table.Next_Melee then
							TP_World2()
							wait(50)
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 400 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
							_G.Setting_table.Weapon  = "Fishman Karate"
							
						elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
							wait(5)
							if not game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") then
								local args = {
										[1] = "BuyFishmanKarate"
									}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then
							if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then
								if game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
									EquipWeapon("Water Key")
									wait(0.5)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
								else
									if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper") or game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper") then
										Mix_Farm = true
										Farm_Melee_Ex = true
										if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper") and not AutoRaid then
											for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
												if v.Name == "Tide Keeper" then
													repeat wait(_G.Fast_Delay)
														EquipWeapon(_G.Setting_table.Weapon)
														TP(v.HumanoidRootPart.CFrame * CFrame.new(0,25,0))
														AttackNoCD()
													until v.Humanoid.Health <= 0 or not v.Parent or not _G.Setting_table.Sharkman_Karate
													Mix_Farm = nil
													Farm_Melee_Ex = nil
												end
											end
										elseif game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
											TP(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]").HumanoidRootPart.CFrame*CFrame.new(0,50,0))
										end
									elseif _G.Setting_table.Melee_Hop then
										wait(5)
										if not game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") and not game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
											HopServer()
											wait(50)
										end
									end
								end
							elseif FG >= 5000 and Beli >= 3000000 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == 1 then
								local args = {
									[1] = "BuySharkmanKarate",
									[2] = true
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								local args = {
									[1] = "BuySharkmanKarate"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							elseif Farm_Melee_Ex then
								Farm_Melee_Ex = nil
								Mix_Farm = nil
							elseif FG < 5000 and not Mix_Farm and _G.Setting_table.Melee_Hop then
								Raid_FG()
							end
						end
						if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 then
							if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then
								if game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
									EquipWeapon("Water Key")
									wait(0.5)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
								else
									if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
										Mix_Farm = true
										Farm_Melee_Ex = true
										if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper") and not AutoRaid then
											for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
												if v.Name == "Tide Keeper" then
													repeat wait(.2)
														EquipWeapon(_G.Setting_table.Weapon)
														TP(v.HumanoidRootPart.CFrame * CFrame.new(0,25,0))
														AttackNoCD()
														FastAttack = true
													until v.Humanoid.Health <= 0 or not v.Parent or not _G.Setting_table.Sharkman_Karate
													Mix_Farm = nil
													Farm_Melee_Ex = nil
													FastAttack = false
												end
											end
										elseif game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
											TP(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]").HumanoidRootPart.CFrame*CFrame.new(0,50,0))
										end
									elseif _G.Setting_table.Melee_Hop then
										wait(5)
										if not game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") and not game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
											HopServer()
											wait(50)
										end
									end
								end
							elseif FG >= 5000 and Beli >= 3000000 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == 1 then
								local args = {
									[1] = "BuySharkmanKarate",
									[2] = true
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								local args = {
									[1] = "BuySharkmanKarate"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							elseif Farm_Melee_Ex then
								Farm_Melee_Ex = nil
								Mix_Farm = nil
							elseif FG < 5000 and not Mix_Farm and _G.Setting_table.Melee_Hop then
								Raid_FG()
							end
						end
					end
				elseif _G.Setting_table.Electric_Claw and not Electric_Claw_H then
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw") == 1 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw") == 2 then
						_G.Setting_table.Weapon = "Electric Claw"
						if _G.Setting_table.Next_Melee then
							Electric_Claw_H = true
						end
					else
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 400 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
							_G.Setting_table.Weapon  = "Electro"
							
						elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and not game.Players.LocalPlayer.Character:FindFirstChild("Electro") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and not game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") then
							wait(5)
							if not game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and not game.Players.LocalPlayer.Character:FindFirstChild("Electro") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and not game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") then
								local args = {
										[1] = "BuyElectro"
									}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 and Three_World then
							local Beli = game:GetService("Players").LocalPlayer.Data.Beli.Value
							local FG = game:GetService("Players").LocalPlayer.Data.Fragments.Value
							if FG >= 5000 and Beli >= 3000000 then
								if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", true) == 4 then
									if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start") == nil and not AutoRaid then
										Mix_Farm = true
										repeat wait(1)
											TP2(CFrame.new(-12548, 337, -7481))
										until (Vector3.new(-12548, 337, -7481)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10
										Mix_Farm = nil
									end
								else
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
								end
							elseif FG < 5000 and not Mix_Farm and _G.Setting_table.Melee_Hop then
								Raid_FG()
							end
						end
						if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 and Three_World then
							local Beli = game:GetService("Players").LocalPlayer.Data.Beli.Value
							local FG = game:GetService("Players").LocalPlayer.Data.Fragments.Value
							if FG >= 5000 and Beli >= 3000000 then
								if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", true) == 4 then
									if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start") == nil and not AutoRaid then
										Mix_Farm = true
										repeat wait(1)
											TP2(CFrame.new(-12548, 337, -7481))
										until (Vector3.new(-12548, 337, -7481)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10
										Mix_Farm = nil
									end
								else
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
								end
							elseif FG < 5000 and not Mix_Farm and _G.Setting_table.Melee_Hop then
								Raid_FG()
							end
						end
					end
				elseif _G.Setting_table.Dragon_Talon and not Dragon_Talon_H then
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon") == 1 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon") == 2 then
						_G.Setting_table.Weapon = "Dragon Talon"
						if _G.Setting_table.Next_Melee then
							Dragon_Talon_H = true
						end
					else
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 400 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
							_G.Setting_table.Weapon = "Dragon Claw"
							
						elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and not game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and not game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
							wait(5)
							if not game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and not game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and not game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") then
								local args = {
									[1] = "BlackbeardReward",
									[2] = "DragonClaw",
									[3] = "2"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 then
							local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
							local Beli = game:GetService("Players").LocalPlayer.Data.Beli.Value
							local FG = game:GetService("Players").LocalPlayer.Data.Fragments.Value
							if FG >= 5000 and Beli >= 3000000 and Lv >= 1950 then
								local B_H = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check")
								Auto_Farm_Melee = false
								Auto_Farm_Bone = true
								if tonumber(B_H) >= 500 then
									spawn(function()
										repeat wait(1)
											wait(15)
											IKAIP = true
										until IKAIP == true
									end)
									repeat wait(.1)
										local args = {
											[1] = "Bones",
											[2] = "Check"
										}
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										local args = {
											[1] = "Bones",
											[2] = "Buy",
											[3] = 1,
											[4] = 1
										}
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									until IKAIP == true or game.Players.LocalPlayer.Backpack:FindFirstChild("Fire Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Fire Essence")
								end
								if game.Players.LocalPlayer.Backpack:FindFirstChild("Fire Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Fire Essence") then
									game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon",true)
								end
								if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
									game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Bones", "Buy",1,1)
									game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon",true)
								elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
									game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
								else
									game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon",true)
									game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
								end
								wait(2)
							elseif FG < 5000 and not Mix_Farm and _G.Setting_table.Melee_Hop then
								Raid_FG()
							end
						end
						if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 then
							local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
							local Beli = game:GetService("Players").LocalPlayer.Data.Beli.Value
							local FG = game:GetService("Players").LocalPlayer.Data.Fragments.Value
							if FG >= 5000 and Beli >= 3000000 and Lv >= 1950 then
								local B_H = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check")
								Auto_Farm_Melee = false
								Auto_Farm_Bone = true
								if tonumber(B_H) >= 500 then
									spawn(function()
										repeat wait(1)
											wait(15)
											IKAIP = true
										until IKAIP == true
									end)
									repeat wait(.1)
										local args = {
											[1] = "Bones",
											[2] = "Check"
										}
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										local args = {
											[1] = "Bones",
											[2] = "Buy",
											[3] = 1,
											[4] = 1
										}
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									until IKAIP == true or game.Players.LocalPlayer.Backpack:FindFirstChild("Fire Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Fire Essence")
								end
								if game.Players.LocalPlayer.Backpack:FindFirstChild("Fire Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Fire Essence") then
									game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon",true)
								end
								if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
									game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Bones", "Buy",1,1)
									game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon",true)
								elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
									game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
								else
									game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon",true)
									game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
								end
								wait(2)
							elseif FG < 5000 and not Mix_Farm and _G.Setting_table.Melee_Hop then
								Raid_FG()
							end
						end
					end
				else
					wait(2)
				end
			else
				wait(3)
			end
		end)
	end
end)

spawn(function()
    while task.wait() do
		if _G.Setting_table.Auto_God_Human then
			pcall(function()
				if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sharkman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon") or game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman") then
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true) == 1 then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") and game.Players.LocalPlayer.Character:FindFirstChild("Superhuman").Level.Value >= 400 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
						end
					else
						game.StarterGui:SetCore("SendNotification", {
							Title = "Notification", 
							Text = "Not Have Superhuman" ,
							Icon = "http://www.roblox.com/asset/?id=",
							Duration = 2.5
						})
					end
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true) == 1 then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Death Step") and game.Players.LocalPlayer.Character:FindFirstChild("Death Step").Level.Value >= 400 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
						end
					else
						game.StarterGui:SetCore("SendNotification", {
							Title = "Notification", 
							Text = "Not Have Death Step" ,
							Icon = "http://www.roblox.com/asset/?id=",
							Duration = 2.5
						})
					end
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == 1 then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate").Level.Value >= 400 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
						end
					else
						game.StarterGui:SetCore("SendNotification", {
							Title = "Notification", 
							Text = "Not Have SharkMan Karate" ,
							Icon = "http://www.roblox.com/asset/?id=",
							Duration = 2.5
						})
					end
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true) == 1 then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw").Level.Value >= 400 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
						end
					else
						game.StarterGui:SetCore("SendNotification", {
							Title = "Notification", 
							Text = "Not Have Electric Claw" ,
							Icon = "http://www.roblox.com/asset/?id=",
							Duration = 2.5
						})
					end
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true) == 1 then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon").Level.Value >= 400 then
							if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true), "Bring") then
								game.StarterGui:SetCore("SendNotification", {
									Title = "Notification", 
									Text = "Not Have Enough Material" ,
									Icon = "http://www.roblox.com/asset/?id=",
									Duration = 2.5
								})
							else
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
							end
						end
					else
						game.StarterGui:SetCore("SendNotification", {
							Title = "Notification", 
							Text = "Not Have Dragon Talon" ,
							Icon = "http://www.roblox.com/asset/?id=",
							Duration = 2.5
						})
					end
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
				end
			end)
		end
	end
end)

        function MaterialMon()
			if _G.SelectMaterial == "Radioactive Material" then
				MMon = "Factory Staff"
				MPos = CFrame.new(-507.7895202636719, 72.99479675292969, -126.45632934570312)
				SP = "Bar"
			elseif _G.SelectMaterial == "Mystic Droplet" then
				MMon = "Water Fighter"
				MPos = CFrame.new(-3214.218017578125, 298.69952392578125, -10543.685546875)
				SP = "ForgottenIsland"
			elseif _G.SelectMaterial == "Magma Ore" then
				if game.PlaceId == 2753915549 then
					MMon = "Military Spy"
					MPos = CFrame.new(-5850.2802734375, 77.28675079345703, 8848.6748046875)
					SP = "Magma"
				elseif game.PlaceId == 4442272183 then
					MMon = "Lava Pirate"
					MPos = CFrame.new(-5234.60595703125, 51.953372955322266, -4732.27880859375)
					SP = "CircleIslandFire"
				end
			elseif _G.SelectMaterial == "Angel Wings" then
				MMon = "Royal Soldier"
				MPos = CFrame.new(-7827.15625, 5606.912109375, -1705.5833740234375)
				SP = "Sky2"
			elseif _G.SelectMaterial == "Leather" then
				if game.PlaceId == 2753915549 then
					MMon = "Pirate"
					MPos = CFrame.new(-1211.8792724609375, 4.787090301513672, 3916.83056640625)
					SP = "Pirate"
				elseif game.PlaceId == 4442272183 then
					MMon = "Marine Captain"
					MPos = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)
					SP = "Greenb"
				elseif game.PlaceId == 7449423635 then
					MMon = "Jungle Pirate"
					MPos = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375)
					SP = "PineappleTown"
				end
			elseif _G.SelectMaterial == "Scrap Metal" then
				if game.PlaceId == 2753915549 then
					MMon = "Brute"
					MPos = CFrame.new(-1132.4202880859375, 14.844913482666016, 4293.30517578125)
					SP = "Pirate"
				elseif game.PlaceId == 4442272183 then
					MMon = "Mercenary"
					MPos = CFrame.new(-972.307373046875, 73.04473876953125, 1419.2901611328125)
					SP = "DressTown"
				elseif game.PlaceId == 7449423635 then
					MMon = "Pirate Millionaire"
					MPos = CFrame.new(-289.6311950683594, 43.8282470703125, 5583.66357421875)
					SP = "Default"
				end
			elseif _G.SelectMaterial == "Demonic Wisp" then
				MMon = "Demonic Soul"
				MPos = CFrame.new(-9503.388671875, 172.139892578125, 6143.0634765625)
				SP = "HauntedCastle"
			elseif _G.SelectMaterial == "Vampire Fang" then
				MMon = "Vampire"
				MPos = CFrame.new(-5999.20458984375, 6.437741279602051, -1290.059326171875)
				SP = "Graveyard"
			elseif _G.SelectMaterial == "Conjured Cocoa" then
				MMon = "Chocolate Bar Battler"
				MPos = CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375)
				SP = "Chocolate"
			elseif _G.SelectMaterial == "Dragon Scale" then
				MMon = "Dragon Crew Warrior"
				MPos = CFrame.new(5824.06982421875, 51.38640213012695, -1106.694580078125)
				SP = "Hydra1"
			elseif _G.SelectMaterial == "Gunpowder" then
				MMon = "Pistol Billionaire"
				MPos = CFrame.new(-379.6134338378906, 73.84449768066406, 5928.5263671875)
				SP = "Default"
			elseif _G.SelectMaterial == "Fish Tail" then
				MMon = "Fishman Captain"
				MPos = CFrame.new(-10961.0126953125, 331.7977600097656, -8914.29296875)
				SP = "PineappleTown"
			elseif _G.SelectMaterial == "Mini Tusk" then
				MMon = "Mythological Pirate"
				MPos = CFrame.new(-13516.0458984375, 469.8182373046875, -6899.16064453125)
				SP = "BigMansion"
			end
		end

local MaterialMethod
if Old_World then
	MaterialMethod = {
 "Magma Ore",
 "Angel Wings",
 "Leather",
 "Scrap Metal",
 "Radioactive Material",
 }
elseif New_World then
MaterialMethod = {
 "Mystic Droplet",
 "Magma Ore",
 "Leather",
 "Scrap Metal",
 "Demonic Wisp",
 "Vampire Fang",
 "Radioactive Material",
 }
 elseif Three_World then
MaterialMethod = {
 "Leather",
 "Scrap Metal",
 "Vampire Fang",
 "Conjured Cocoa",
 "Dragon Scale",
 "Gunpowder",
 "Fish Tail",
 "Mini Tusk",
 "Radioactive Material",
 }
 end
 
 Miscf:Seperator("Materials")
 
 local SelectMaterial = Miscf:Dropdown("Select Material",MaterialMethod,function(vu)
 _G.SelectMaterial = vu
end)

Miscf:Toggle("Auto Farm Material",_G.Setting_table.AutoFarm_Meterial,function(vu)
_G.Setting_table.AutoFarm_Meterial = vu
end)
		
spawn(function()
        while wait() do 
            if _G.Setting_table.AutoFarm_Meterial then
                MaterialMon()
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild(MMon) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == MMon then
                               if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                   repeat task.wait()
                                        EquipWeapon(_G.Setting_table.Weapon)
                                        Startmg = true
                                        _G.PosMon = v.HumanoidRootPart.CFrame
                                        TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,1))
                                        FastAttack = true
                                    until not _G.Setting_table.AutoFarm_Meterial or not v.Parent or v.Humanoid.Health <= 0
                                    FastAttack = false
                                    Startmg = false
                                end
                            end
                        end
                    else
                    if ((MPos).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
						TP(MPos)
					else
						TelePBoss(MPos)
						end
                    end
                end)
            end
        end
    end)    

spawn(function()
	while task.wait() do
		pcall(function()
			if Startmg then
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if (v.HumanoidRootPart.Position-_G.PosMon.Position).Magnitude <= 300 then
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						v.Humanoid:ChangeState(11)
						v.Humanoid.JumpPower = 0
						v.Humanoid.WalkSpeed = 0
						v.HumanoidRootPart.CanCollide = false
						v.HumanoidRootPart.Size = Vector3.new(5,5,5)
						v.HumanoidRootPart.CFrame = _G.PosMon
						sethiddenproperty(game.Players.LocalPlayer, "MaximumSimulationRadius",  math.huge)
						sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  9e20)
					end
				end
			end
		end)
	end
end)

Miscf:Seperator("// Elite Hunter \\\\\ ")

Miscf:Toggle("Auto Elite Hunter",_G.Setting_table.Auto_Elite_Hunter,function(vu)
	Auto_Elite_Hunter = vu
	_G.Setting_table.Auto_Elite_Hunter = vu
	Update_Setting(getgenv()['MyName'])
end)
spawn(function()
	while wait(.5) do
		pcall(function()
			if Auto_Elite_Hunter then
				if not Mix_Farm or Auto_Elite_Hunter_Farm then
					if game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
						Mix_Farm = true
						Auto_Elite_Hunter_Farm = true
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
						if game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Urban" then
									repeat wait(.2)
										EquipWeapon(_G.Setting_table.Weapon)
										TP(v.HumanoidRootPart.CFrame * CFrame.new(0,25,0))
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280,630))
										FastAttack = true
									until v.Humanoid.Health <= 0 or not v.Parent or not Auto_Elite_Hunter
									Mix_Farm = nil
									Auto_Elite_Hunter_Farm = nil
									FastAttack = false
								end
							end
						elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
							TP(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
						end
					elseif game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") then
						Mix_Farm = true
						Auto_Elite_Hunter_Farm = true
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
						if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Diablo" then
									repeat wait(.2)
										EquipWeapon(_G.Setting_table.Weapon)
										TP(v.HumanoidRootPart.CFrame * CFrame.new(0,25,0))
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280,630))
										FastAttack = true
									until v.Humanoid.Health <= 0 or not v.Parent or not Auto_Elite_Hunter
									Mix_Farm = nil
									Auto_Elite_Hunter_Farm = nil
									FastAttack = false
								end
							end
						elseif game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
							TP(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
						end
					elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") then
						Mix_Farm = true
						Auto_Elite_Hunter_Farm = true
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
						if game:GetService("Workspace").Enemies:FindFirstChild("Deandre") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Deandre" then
									repeat wait(.2)
										EquipWeapon(_G.Setting_table.Weapon)
										TP(v.HumanoidRootPart.CFrame * CFrame.new(0,25,0))
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280,630))
										FastAttack = true
									until v.Humanoid.Health <= 0 or not v.Parent or not Auto_Elite_Hunter
									Mix_Farm = nil
									Auto_Elite_Hunter_Farm = nil
									FastAttack = false
								end
							end
						elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
							TP(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
						end
					elseif _G.Setting_table.Auto_Elite_Hunter_Hop then
						wait(5)
						if not game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") and not game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") and not game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") and not game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") and not game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") and not game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") then
							HopServer()
							wait(50)
						end
					elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Urban (0/1)" or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Deandre (0/1)" or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Diablo (0/1)" then
						Mix_Farm = nil
						Auto_Elite_Hunter_Farm = nil
					elseif Auto_Elite_Hunter_Farm then
						Mix_Farm = nil
						Auto_Elite_Hunter_Farm = nil
					else
						wait(3)
					end
				end
			else
				wait(2)
			end
		end)
	end
end)

Miscf:Seperator("// Advanced Dungeon \\\\\ ")

Miscf:Toggle("Auto Phoenix Awaken",_G.Setting_table.Auto_Phoenix_Awaken,function(vu)
	Auto_Phoenix_Awaken = vu
	Auto_Farm_Fruit = vu
	SkillZ = vu
	_G.Setting_table.Auto_Phoenix_Awaken = vu
end)
if _G.Setting_table.Farm_Fruit then
	Auto_Farm_Fruit = true
end
if _G.Setting_table.Skill_Z then
	SkillZ = true
end
function Get_Fruit_Backpack()
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			if string.find(v.Name,"Fruit") then
				_G.Have_Fruit = true
				return
			end
		end
	end
end
function Get_Fruit_Character()
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			if string.find(v.Name,"Fruit") then
				_G.Have_Fruit = true
				return
			end
		end
	end
end
function Get_Fruit_Inventory()
	local fruit = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
	for i,v in pairs(fruit) do
		if _G.Phoenix_R then
			if v["Price"] < 1000000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",v["Name"])
				_G.Have_Fruit = true
				return
			end
		elseif _G.Phoenix_XR then
			if v["Price"] >= 1000000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",v["Name"])
				_G.Have_Fruit = true
				return
			end
		elseif v["Price"] >= 10 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",v["Name"])
			_G.Have_Fruit = true
			return
		end
	end
end
function Raid_FG()
	for i,v6 in pairs(game:GetService("Workspace"):GetChildren()) do
		if v6:IsA ("Tool") and (v6.Handle.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 13000 then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v6.Handle.CFrame
			v6.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		end
	end
	wait(1)
	Inventory_Fruit = nil
	Get_Fruit_Inventory()
	Get_Fruit_Backpack()
	Get_Fruit_Character()
	if _G.Have_Fruit then
		Mix_Farm = true
		Raid_FG_Ex = true
		Auto_Raid = true
	elseif _G.Setting_table.Melee_Hop then
		HopServer()
		wait(50)
	elseif _G.Setting_table.Phoenix_Hop then
		HopServer()
		wait(50)
	elseif _G.Setting_table.Race_Hop then
		HopServer()
		wait(50)
	elseif _G.Setting_table.Auto_Pole_V2_Hop then
		HopServer()
		wait(50)
	elseif Raid_FG_Ex then
		Mix_Farm = nil
		Raid_FG_Ex = nil
		Auto_Raid = nil
	elseif not _G.Have_Fruit then
		Text("ไม่มีผลปีศาจเหลือ\nไม่สามารถลงดันได้")
	end
end
spawn(function()
	while wait(.5) do
		pcall(function()
			if Auto_Phoenix_Awaken then
				if not Mix_Farm or Auto_Phoenix_Awaken_Ex then
					if game.Players.LocalPlayer.Character:FindFirstChild("Bird-Bird: Phoenix") or game.Players.LocalPlayer.Backpack:FindFirstChild("Bird-Bird: Phoenix") then
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Check") ~= false then
							if not UHuHI then
								Text("กำลังฟามมาสเตอรี่ผลปีศาจ")
								UHuHI = true
							end
							Auto_Farm_Fruit = true
						elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Check") == false then
							Auto_Farm_Fruit = false
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Heal") == 1 then
								local Beli = game:GetService("Players").LocalPlayer.Data.Beli.Value
								local FG = game:GetService("Players").LocalPlayer.Data.Fragments.Value
								if FG >= 6000 then
									_G.Have_Fruit = nil
									_G.Phoenix_R = nil
									_G.Phoenix_XR = true
									Get_Fruit_Inventory()
									_G.Phoenix_XR = nil
									wait(1)
									if _G.Have_Fruit then
										if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", "Bird: Phoenix") == 1 then
											_G.Setting_table.Select_Map = "Bird: Phoenix"
											_G.Setting_table.Auto_Awaken = true
											Mix_Farm = true
											Auto_Phoenix_Awaken_Ex = true
											Auto_Raid = true
											TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
											Text("กำลังลงดันฟีนิกตื่น")
											repeat wait(1)
											until game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true
											repeat wait(1)
											until game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false
										elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", "Bird: Phoenix") == '[You already have a Special Microchip.]' then
											_G.Setting_table.Select_Map = "Flame"
											Mix_Farm = true
											Auto_Phoenix_Awaken_Ex = true
											Auto_Raid = true
											TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
											Text("กำลังลงดันหาเงินม่วง")
											repeat wait(1)
											until game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true
											repeat wait(1)
											until game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false
										elseif Auto_Phoenix_Awaken_Ex then
											Auto_Phoenix_Awaken_Ex = nil
											Mix_Farm = nil
											Auto_Raid = nil
										elseif _G.Setting_table.Phoenix_Hop then
											if not UHIkx then
												Text("รอ2ช.มถึงจะซื้อชิปลงดันได้\nฟามเงินม่วงรอดีกว่า")
												UHIkx = true
											end
											_G.Phoenix_R = true
											Raid_FG()
										else
											if not UHIkz then
												Text("รอ2ช.มถึงจะซื้อชิปลงดันได้")
												UHIkz = true
											end
										end
									elseif Beli >= 1000000 then
										if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", "Bird: Phoenix") == 1 then
											_G.Setting_table.Select_Map = "Bird: Phoenix"
											_G.Setting_table.Auto_Awaken = true
											Mix_Farm = true
											Auto_Phoenix_Awaken_Ex = true
											Auto_Raid = true
											TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
											Text("กำลังลงดันฟีนิกตื่น")
											repeat wait(1)
											until game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true
											repeat wait(1)
											until game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false
										elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", "Bird: Phoenix") == '[You already have a Special Microchip.]' then
											_G.Setting_table.Select_Map = "Flame"
											Mix_Farm = true
											Auto_Phoenix_Awaken_Ex = true
											Auto_Raid = true
											TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
											Text("กำลังลงดันหาเงินม่วง")
											repeat wait(1)
											until game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true
											repeat wait(1)
											until game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false
										elseif Auto_Phoenix_Awaken_Ex then
											Auto_Phoenix_Awaken_Ex = nil
											Mix_Farm = nil
											Auto_Raid = nil
										elseif _G.Setting_table.Phoenix_Hop then
											if not UHIkxz then
												Text("รอ2ช.มถึงจะซื้อชิปลงดันได้\nฟามเงินม่วงรอดีกว่า")
												UHIkxz = true
											end
											_G.Phoenix_R = true
											Raid_FG()
										else
											if not UHIk then
												Text("รอ2ช.มถึงจะซื้อชิปลงดันได้")
												UHIk = true
											end
										end
									elseif Auto_Phoenix_Awaken_Ex then
										Auto_Phoenix_Awaken_Ex = nil
										Mix_Farm = nil
									else
										Text("กำลังฟามเงินไห้ถึง 1ล้าน\nเพื่อซื้อชิปลงดันฟีนิก")
										wait(10)
									end
								elseif Auto_Phoenix_Awaken_Ex then
									Auto_Phoenix_Awaken_Ex = nil
									Mix_Farm = nil
									Auto_Raid = nil
								else
									_G.Phoenix_R = true
									Raid_FG()
									Text("เงินม่วงไม่ถึง 6000\nไม่สามารถลงดันได้")
									Text("กำลังหาผลมาลงดัน!")
									wait(10)
								end
							elseif FG < 1500 then
								if not LPOJO then
									Text("เงินม่วงไม่ถึง 1500\nไม่สามารถทำเควสได้")
									Text("กำลังหาผลมาลงดัน!")
									LPOJO = true
								end
								_G.Phoenix_R = true
								Raid_FG()
							end
						end
					else
						wait(2)
					end
				else
					wait(2)
				end
			else
				wait(2)
			end
		end)
	end
end)

Miscf:Seperator("// Pole \\\\\ ")

Miscf:Toggle("Auto Pole V1",_G.Setting_table.Pole_Farm,function(vu)
	Pole_Farm = vu
	_G.Setting_table.Pole_Farm = vu
	Update_Setting(getgenv()['MyName'])
end)

spawn(function()
	while wait(.5) do
		pcall(function()
			if Pole_Farm then
				if not Mix_Farm or Pole_Farm_Ex then
					if game.Workspace.Enemies:FindFirstChild("Thunder God") or game.ReplicatedStorage:FindFirstChild("Thunder God") then
						Pole_Farm_Ex = true
						Mix_Farm = true
						if game.Workspace.Enemies:FindFirstChild("Thunder God") then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == "Thunder God" then
									repeat wait(.2)
										EquipWeapon(_G.Setting_table.Weapon)
										TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,15))
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280,900))
										game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
										game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
										game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
										FastAttack = true
									until v.Humanoid.Health <= 0 or not v.Parent or not Pole_Farm 
									FastAttack = false
									Pole_Farm_Ex = nil
									Mix_Farm = nil
								end
							end
						elseif game.ReplicatedStorage:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
							TP(game.ReplicatedStorage:FindFirstChild("Thunder God [Lv. 575] [Boss]").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
						end
					elseif _G.Setting_table.Pole_V1_Hop then
						wait(5)
						if not game.Workspace.Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") and not game.ReplicatedStorage:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
							HopServer()
							wait(50)
						end
					elseif Pole_Farm_Ex then
						Mix_Farm = nil
						Pole_Farm_Ex = nil
					else
						wait(5)
					end
				end
			else
				wait(2)
			end
		end)
	end
end)

Miscf:Toggle("Auto Pole V1 Hop",_G.Setting_table.Pole_V1_Hop,function(vu)
	_G.Setting_table.Pole_V1_Hop = vu
	Update_Setting(getgenv()['MyName'])
end)

Miscf:Seperator("// Serpent Bow \\\\\ ")

Miscf:Toggle("Auto Serpent Bow",_G.Setting_table.Auto_Serpent_Bow,function(vu)
	Auto_Serpent_Bow = vu
	_G.Setting_table.Auto_Serpent_Bow = vu
	Update_Setting(getgenv()['MyName'])
end)
spawn(function()
	while wait(.5) do
		pcall(function()
			if Auto_Serpent_Bow then
				if not Mix_Farm or Auto_Serpent_Bow_Farm then
					if game.Workspace.Enemies:FindFirstChild("Island Empress") or game.ReplicatedStorage:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
						Auto_Serpent_Bow_Farm = true
						Mix_Farm = true
						if game.Workspace.Enemies:FindFirstChild("Island Empress") then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == "Island Empress" and v.Humanoid.Health > 0 then
									repeat wait(.2)
										EquipWeapon(_G.Setting_table.Weapon)
										TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
										AttackNoCD()
										FastAttack = true
									until v.Humanoid.Health <= 0 or not v.Parent or not Auto_Serpent_Bow
									FastAttack = false
								end
							end
						elseif game.ReplicatedStorage:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
							TP(game.ReplicatedStorage:FindFirstChild("Island Empress [Lv. 1675] [Boss]").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
						end
					elseif _G.Setting_table.Auto_Serpent_Bow_Hop then
						wait(5)
						if not game.Workspace.Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") and not game.ReplicatedStorage:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
							HopServer()
							wait(50)
						end
					elseif Auto_Serpent_Bow_Farm then
						Auto_Serpent_Bow_Farm = nil
						Mix_Farm = nil
					end
				end
			else
				wait(2)
			end
		end)
	end
end)

Miscf:Toggle("Auto Serpent Bow Hop",_G.Setting_table.Auto_Serpent_Bow_Hop,function(vu)
	_G.Setting_table.Auto_Serpent_Bow_Hop = vu
	Update_Setting(getgenv()['MyName'])
end)

Miscf:Seperator("// Auto Dragon Trident \\\\\ ")

Miscf:Toggle("Auto Dragon Trident",_G.Setting_table.Auto_Dragon_Trident,function(vu)
	Auto_Dragon_Trident = vu
	_G.Setting_table.Auto_Dragon_Trident = vu
	Update_Setting(getgenv()['MyName'])
end)
spawn(function()
	while wait(.5) do
		pcall(function()
			if Auto_Dragon_Trident then
				if not Mix_Farm or Auto_Dragon_Trident_Farm then
					if game.Workspace.Enemies:FindFirstChild("Tide Keeper") or game.ReplicatedStorage:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
						Auto_Dragon_Trident_Farm = true
						Mix_Farm = true
						if game.Workspace.Enemies:FindFirstChild("Tide Keeper") then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == "Tide Keeper" and v.Humanoid.Health > 0 then
									if v.Humanoid:FindFirstChild("Animator") then
										v.Humanoid.Animator:Destroy()
									end
									repeat wait(.2)
										EquipWeapon(_G.Setting_table.Weapon)
										TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
										AttackNoCD()
										FastAttack = true
									until v.Humanoid.Health <= 0 or not v.Parent or not Auto_Dragon_Trident
									FastAttack = false
								end
							end
						elseif game.ReplicatedStorage:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
							TP(game.ReplicatedStorage:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
						end
					elseif Auto_Dragon_Trident_Farm then
						Auto_Dragon_Trident_Farm = nil
						Mix_Farm = nil
					elseif _G.Setting_table.Auto_Dragon_Trident_Hop then
						wait(5)
						if not game.Workspace.Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") and not game.ReplicatedStorage:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
							HopServer()
							wait(50)
						end
					end
				end
			else
				wait(2)
			end
		end)
	end
end)

Miscf:Toggle("Auto Dragon Trident Hop",_G.Setting_table.Auto_Dragon_Trident_Hop,function(vu)
	_G.Setting_table.Auto_Dragon_Trident_Hop = vu
	Update_Setting(getgenv()['MyName'])
end)

Miscf:Seperator("// Swan Glasses \\\\\ ")

Miscf:Toggle("Auto Swan Glass",_G.Setting_table.Auto_Swan_Glass,function(vu)
	Auto_Swan_Glass = vu
	_G.Setting_table.Auto_Swan_Glass = vu
	Update_Setting(getgenv()['MyName'])
end)
spawn(function()
	while wait(.5) do
		pcall(function()
			if Auto_Swan_Glass then
				if not Mix_Farm or Auto_Swan_Glass_Farm then
					if game.Workspace.Enemies:FindFirstChild("Don Swan") or game.ReplicatedStorage:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
						Auto_Swan_Glass_Farm = true
						Mix_Farm = true
						if game.Workspace.Enemies:FindFirstChild("Don Swan") then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == "Don Swan" and v.Humanoid.Health > 0 then
									repeat wait(.2)
										EquipWeapon(_G.Setting_table.Weapon)
										TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
										AttackNoCD()
										FastAttack = true
									until v.Humanoid.Health <= 0 or not v.Parent or not Auto_Swan_Glass
									FastAttack = false
								end
							end
						elseif game.ReplicatedStorage:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
							TP(game.ReplicatedStorage:FindFirstChild("Don Swan [Lv. 1000] [Boss]").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
						end
					elseif _G.Setting_table.Auto_Swan_Glass_Hop then
						wait(5)
						if not game.Workspace.Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") and not game.ReplicatedStorage:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
							HopServer()
							wait(50)
						end
					elseif Auto_Swan_Glass_Farm then
						Auto_Swan_Glass_Farm = nil
						Mix_Farm = nil
					end
				end
			else
				wait(3)
			end
		end)
	end
end)

Miscf:Toggle("Auto Swan Glass Hop",_G.Setting_table.Auto_Swan_Glass_Hop,function(vu)
	_G.Setting_table.Auto_Swan_Glass_Hop = vu
	Update_Setting(getgenv()['MyName'])
end)

Miscf:Seperator("// Buddy Sword \\\\\ ")

Miscf:Toggle("Auto Buddy Sword",_G.Setting_table.Auto_Buddy_Sword,function(vu)
	Auto_Buddy_Sword = vu
	_G.Setting_table.Auto_Buddy_Sword = vu
	Update_Setting(getgenv()['MyName'])
end)
spawn(function()
	while wait(.5) do
		pcall(function()
			if Auto_Buddy_Sword then
				if not Mix_Farm or Auto_Buddy_Sword_Farm then
					if game.Workspace.Enemies:FindFirstChild("Cake Queen") or game.ReplicatedStorage:FindFirstChild("Cake Queen") then
						Auto_Buddy_Sword_Farm = true
						Mix_Farm = true
						if game.Workspace.Enemies:FindFirstChild("Cake Queen") then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == "Cake Queen" and v.Humanoid.Health > 0 then
									if v.Humanoid:FindFirstChild("Animator") then
										v.Humanoid.Animator:Destroy()
									end
									repeat wait(.2)
										EquipWeapon(_G.Setting_table.Weapon)
										TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
										AttackNoCD()
										FastAttack = true
									until v.Humanoid.Health <= 0 or not v.Parent or not Auto_Buddy_Sword
									FastAttack = false
								end
							end
						elseif game.ReplicatedStorage:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
							TP(game.ReplicatedStorage:FindFirstChild("Cake Queen [Lv. 2175] [Boss]").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
						end
					elseif _G.Setting_table.Auto_Buddy_Sword_Hop then
						wait(5)
						if not game.Workspace.Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") and not game.ReplicatedStorage:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
							HopServer()
							wait(50)
						end
					elseif Auto_Buddy_Sword_Farm then
						Auto_Buddy_Sword_Farm = nil
						Mix_Farm = nil
					end
				end
			else
				wait(2)
			end
		end)
	end
end)

Miscf:Toggle("Auto Buddy Sword Hop",_G.Setting_table.Auto_Buddy_Sword_Hop,function(vu)
	_G.Setting_table.Auto_Buddy_Sword_Hop = vu
	Update_Setting(getgenv()['MyName'])
end)

Miscf:Seperator("// Dark Danger \\\\\ ")

Miscf:Toggle("Auto Valkyrie Helmet",_G.Setting_table.Auto_Valkyrie_Helmet,function(vu)
	Auto_Valkyrie_Helmet = vu
	_G.Setting_table.Auto_Valkyrie_Helmet = vu
	Update_Setting(getgenv()['MyName'])
end)
spawn(function()
	while wait(.5) do
		pcall(function()
			if Auto_Valkyrie_Helmet then
				if not Mix_Farm or Auto_Valkyrie_Helmet_Farm then
					if game.Workspace.Enemies:FindFirstChild("rip_indra True Form") or game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
						Auto_Valkyrie_Helmet_Farm = true
						Mix_Farm = true
						if game.Workspace.Enemies:FindFirstChild("rip_indra True Form") then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == "rip_indra True Form" and v.Humanoid.Health > 0 then
									if v.Humanoid:FindFirstChild("Animator") then
										v.Humanoid.Animator:Destroy()
									end
									repeat wait(.2)
										EquipWeapon(_G.Setting_table.Weapon)
										TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
										AttackNoCD()
										FastAttack = true
									until v.Humanoid.Health <= 0 or not v.Parent or not Auto_Valkyrie_Helmet
									FastAttack = false
								end
							end
						elseif game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
							TP(game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
						end
					elseif _G.Setting_table.Auto_Valkyrie_Helmet_Hop then
						wait(5)
						if not game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") and not game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
							HopServer()
							wait(50)
						end
					elseif Auto_Valkyrie_Helmet_Farm then
						Auto_Valkyrie_Helmet_Farm = nil
						Mix_Farm = nil
					end
				end
			else
				wait(2)
			end
		end)
	end
end)

Miscf:Toggle("Auto Valkyrie Helmet Hop",_G.Setting_table.Auto_Valkyrie_Helmet_Hop,function(vu)
	_G.Setting_table.Auto_Valkyrie_Helmet_Hop = vu
	Update_Setting(getgenv()['MyName'])
end)

Miscf:Seperator("// Rougth Sea \\\\\ ")
    
    BN = {}

for i,v in pairs(game:GetService("Workspace").Boats:GetChildren()) do  
  table.insert(BN ,v.Name)
end

local BC = Miscf:Dropdown("Selected Boats Rough Sea Quest",BN,function(plys)
  BoatLis = plys
end)
    
Miscf:Button("Refrsh Boats",function()
  BN = {}
  BC:Clear()
  for i,v in pairs(game:GetService("Workspace").Boats:GetChildren()) do  
     BC:Add(v.Name)
  end
end)

Miscf:Toggle("Auto Rougth Sea Quest [BETA]", _G.Setting_table.AutoRougthFully,function(vu)
         AutoRougthFully = vu
         _G.Setting_table.AutoRougthFully = vu
         Update_Setting(getgenv()['MyName'])
    end)
    
    spawn(function()
        while wait() do
            if AutoRougthFully then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") or game:GetService("Workspace").Enemies:FindFirstChild("Shark") or game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Fish Crew Member" or v.Name == "Shark" or v.Name == "Piranha" or v.Name == "Terrorshark" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.Setting_table.Weapon)
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        _G.PosMon = v.HumanoidRootPart.CFrame
                                        TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                        StatrMagnet = true
                                        FastAttack = true
                                        game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                    until not  AutoRougthFully or not v.Parent or v.Humanoid.Health <= 0
                                    FastAttack = false
                                    StatrMagnet = false
                                end
                            end
                        end
                    else
                        game.Players.LocalPlayer.Character.Humanoid.Sit = true
                        TP(game:GetService("Workspace").Boats[BoatLis].VehicleSeat.CFrame * CFrame.new(0,1,0))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Fish Crew Member") then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Fish Crew Member").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if  _G.AutoTerrorsharkhop then
                                HopServer()
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    Miscf:Toggle("Auto Farm Terrorshark", _G.Setting_table.AutoTerrorshark,function(vu)
         AutoTerrorshark = vu
         _G.Setting_table.AutoTerrorshark = vu
         Update_Setting(getgenv()['MyName'])
    end)
    
    Miscf:Toggle("Auto Farm Shark", _G.Setting_table.FarmShark,function(vu)
         FarmShark = vu
         _G.Setting_table.FarmShark = vu
         Update_Setting(getgenv()['MyName'])
    end)

    spawn(function()
        while wait() do
            if  FarmShark then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Shark") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Shark" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.Setting_table.Weapon)
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        _G.PosMon = v.HumanoidRootPart.CFrame
                                        TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                        StatrMagnet = true
                                        FastAttack = true
                                    until not  FarmShark or not v.Parent or v.Humanoid.Health <= 0
                                    StatrMagnet = false
                                    FastAttack = false
                                end
                            end
                        end
                    else
                        TP(CFrame.new(-41261.59765625, 41.04343795776367, 8055.5380859375))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Shark") then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Shark").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.Setting_table.AutoTerrorsharkhop then
                                HopServer()
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    
    Miscf:Toggle("Auto Farm Piranha", _G.Setting_table.FarmPiranha,function(vu)
         FarmPiranha = vu
         _G.Setting_table.FarmPiranha = vu
         Update_Setting(getgenv()['MyName'])
    end)

    spawn(function()
        while wait() do
            if  FarmPiranha then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Piranha") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Piranha" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.Setting_table.Weapon)
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        _G.PosMon = v.HumanoidRootPart.CFrame
                                        TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                        FastAttack = true
                                        StatrMagnet = true
                                    until not  FarmPiranha or not v.Parent or v.Humanoid.Health <= 0
                                    FastAttack = false
                                    StatrMagnet = false
                                end
                            end
                        end
                    else
                        TP(CFrame.new(-41261.59765625, 41.04343795776367, 8055.5380859375))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Piranha") then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Piranha").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.Setting_table.AutoTerrorsharkhop then
                                HopServer()
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    Miscf:Toggle('Auto Seabeast',_G.Setting_table.AutoSeaBest, function(vu)
    AutoSeaBest = vu
    _G.Setting_table.AutoSeaBest = vu
    Update_Setting(getgenv()['MyName'])
    end)
    
local gg = getrawmetatable(game)
local old = gg.__namecall
setreadonly(gg,false)
gg.__namecall = newcclosure(function(...)
	local method = getnamecallmethod()
	local args = {...}
	if tostring(method) == "FireServer" then
		if tostring(args[1]) == "RemoteEvent" then
			if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
				if Skillaimbot then
					args[2] = AimBotSkillPosition
					return old(unpack(args))
				end
			end
		end
	end
	return old(...)
end)

        
    spawn(function()
        while wait() do
            if AutoSeaBest then
                   pcall(function()
                     for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                         if v:FindFirstChild("HumanoidRootPart") then
                            EquipWeapon(_G.Setting_table.Weapon)
                            TP(v.HumanoidRootPart.CFrame * CFrame.new(0,300,0))
                            AimBotSkillPosition = v.HumanoidRootPart
                            game:GetService("VirtualUser"):CaptureController()
                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                       else
                           if _G.Setting_table.AutoTerrorsharkhop then
                             HopServer()
							    end
							end
                         end
                    end)
                end
            end
        end)
        
    Miscf:Toggle(" Hop",_G.Setting_table.AutoTerrorsharkhop,function(vu)
	_G.Setting_table.AutoTerrorsharkhop = vu
	Update_Setting(getgenv()['MyName'])
end)
   
    spawn(function()
        while wait() do
            if AutoTerrorshark then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Terrorshark" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.Setting_table.Weapon)
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        _G.PosMon = v.HumanoidRootPart.CFrame
                                        TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                        FastAttack = true
                                        StatrMagnet = true
                                    until not  AutoTerrorshark or not v.Parent or v.Humanoid.Health <= 0
                                    FastAttack = false
                                    StatrMagnet = false
                                end
                            end
                        end
                    else
                        TP(CFrame.new(-41261.59765625, 41.04343795776367, 8055.5380859375))--Frame1
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Terrorshark") then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Terrorshark").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.Setting_table.AutoTerrorsharkhop then
                                HopServer()
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    spawn(function()
        while wait() do
            if Fish_Crew_Member then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Fish Crew Member" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.Setting_table.Weapon)
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        _G.PosMon = v.HumanoidRootPart.CFrame
                                        TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                        FastAttack = true
                                        StatrMagnet = false
                                    until not Fish_Crew_Member or not v.Parent or v.Humanoid.Health <= 0
                                    FastAttack = false
                                    StatrMagnet = false
                                end
                            end
                        end
                    else
                        TP(CFrame.new(-41261.59765625, 41.04343795776367, 8055.5380859375))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Fish Crew Member") then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Fish Crew Member").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.Setting_table.AutoTerrorsharkhop then
                                HopServer()
                            end
                        end
                    end
                end)
            end
        end
    end)
    
Miscf:Seperator("// Saber \\\\\ ")

Miscf:Toggle("Auto Saber",_G.Setting_table.Saber_Farm,function(vu)
	Saber_Farm = vu
	_G.Setting_table.Saber_Farm = vu
	Update_Setting(getgenv()['MyName'])
end)
spawn(function()
        while task.wait() do
            if Saber_Farm and game.Players.LocalPlayer.Data.Level.Value >= 200 then
                pcall(function()
                    if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
                        if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
                            if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                TP(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                                wait(5)
                                TP(game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame)
                                wait(5)
                                TP(game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame)
                                wait(5)
                                TP(game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame)
                                wait(5)
                                TP(game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame)
                                wait(5)
                                TP(game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame)
                                wait(5)
                            else
                                TP(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279))
                            end
                        else
                            if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
                                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
                                    EquipWeapon("Torch")
                                    TP(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09, 0.761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10, -0.648466587))
                                  else
                                  TP(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515, 0.965917408))
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
										TP(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559)) 
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v.Name == "Mob Leader" then
                                                   if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
                                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                        repeat task.wait()
                                                        EquipWeapon(_G.Setting_table.Weapon)
                                                        TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,1))
                                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                        v.HumanoidRootPart.CanCollide = false
                                                        FastAttack = true
                                                        until v.Humanoid.Health <= 0 or not Saber_Farm
                                                        FastAttack = false
                                                     end
                                                end
                                                if game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
                                                    TP(game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]").HumanoidRootPart.CFrame * Farm_Mode)
                                                end
                                            end
                                        end
                                     end
                                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                        wait(0.5)
                                        EquipWeapon("Relic")
                                        wait(0.5)
                                        TP(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09, 0.481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08, 0.876514494))
                                    end
                                end
                            end
                        end
                    else
                        if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    if v.Name == "Saber Expert" then
                                        repeat task.wait()
                                            EquipWeapon(_G.Setting_table.Weapon)
                                            TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,1))
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.CanCollide = false
                                            FastAttack = true
                                        until v.Humanoid.Health <= 0 or not Saber_Farm
                                        FastAttack = false
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



Miscf:Seperator("// Raid Pirate \\\\\ ")

Miscf:Toggle("Auto Raid Pirate",_G.Setting_table.Auto_Quest_Tushita_2,function(vu)
	Auto_Quest_Tushita_2 = vu
	_G.Setting_table.Auto_Quest_Tushita_2 = vu
	Update_Setting(getgenv()['MyName'])
end)

spawn(function()
	while wait() do
		if Auto_Quest_Tushita_2 then
			pcall(function()
				local CFrameBoss = CFrame.new(-5496.17432, 313.768921, -2841.53027, 0.924894512, 7.37058015e-09, 0.380223751, 3.5881019e-08, 1, -1.06665446e-07, -0.380223751, 1.12297109e-07, 0.924894512)
				if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if Auto_Quest_Tushita_2 and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
								repeat wait()
									FastAttack = true
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
								until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_2 == false
								FastAttack = false
							end
						end
					end
				else
					if ((CFrameBoss).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
						TP(CFrameBoss)
					else
						TelePBoss(CFrameBoss)
					end
				end
			end)
		end
	end
end)

Miscf:Seperator("// tushita \\\\\ ")

Miscf:Toggle("Auto Tushita",_G.Setting_table.Auto_Tushita,function(vu)
	Auto_Tushita = vu
	_G.Setting_table.Auto_Tushita = vu
	Update_Setting(getgenv()['MyName'])
end)
spawn(function()
	while wait(.5) do
		pcall(function()
			if Auto_Tushita then
				if not Mix_Farm or Auto_Tushita_Farm then
					if not _G.Setting_table.Quest_Torch then
						if game.Workspace.Enemies:FindFirstChild("rip_indra True Form") or game.ReplicatedStorage:FindFirstChild("rip_indra True Form") then
							Auto_Tushita_Farm = true
							Mix_Farm = true
							repeat wait(1)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress")
							until game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") or not Auto_Tushita
							wait(1)
							local Q_Tushita = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress")
							local Q_Torch = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress")['Torches']
							if Q_Torch[1] == false then
								if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
									EquipWeapon("Holy Torch")
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",1)
								else
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress")
								end
							elseif Q_Torch[2] == false then
								if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
									EquipWeapon("Holy Torch")
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",2)
								else
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress")
								end
							elseif Q_Torch[3] == false then
								if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
									EquipWeapon("Holy Torch")
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",3)
								else
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress")
								end
							elseif Q_Torch[4] == false then
								if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
									EquipWeapon("Holy Torch")
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",4)
								else
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress")
								end
							elseif Q_Torch[5] == false then
								if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
									EquipWeapon("Holy Torch")
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",5)
								else
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress")
								end
							elseif Q_Tushita['KilledLongma'] == false then
								_G.Tushita_Q = true
							end
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",1)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",2)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",3)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",4)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",5)
								wait(1)
								_G.Setting_table.Quest_Torch = true
								Update_Setting(getgenv()['MyName'])
							elseif game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
								_G.Setting_table.Quest_Torch = true
								Update_Setting(getgenv()['MyName'])
							end
						elseif _G.Setting_table.No_Color_Haki_Tushita and _G.Setting_table.Auto_Tushita_Hop then
							wait(5)
							if not game.Workspace.Enemies:FindFirstChild("rip_indra True Form") and not game.ReplicatedStorage:FindFirstChild("rip_indra True Form") then
								HopServer()
								wait(50)
							end
						elseif not _G.Setting_table.No_Color_Haki_Tushita then
							if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
								Mix_Farm = true
								Auto_Tushita_Farm = true
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Winter Sky")
								wait(1)
								repeat TP2(CFrame.new(-5420.16602, 1084.9657, -2666.8208)) wait() until not Auto_Tushita or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5420.16602, 1084.9657, -2666.8208)).Magnitude <= 10
								wait(1)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Pure Red")
								wait(1)
								repeat TP2(CFrame.new(-5414.41357, 309.865753, -2212.45776)) wait() until not Auto_Tushita or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5414.41357, 309.865753, -2212.45776)).Magnitude <= 10
								wait(1)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Snow White")
								wait(1)
								repeat TP2(CFrame.new(-4971.47559, 331.565765, -3720.02954)) wait() until not Auto_Tushita or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-4971.47559, 331.565765, -3720.02954)).Magnitude <= 10
								wait(1)
								repeat wait()
									EquipWeapon("God's Chalice")
									TP(CFrame.new(-5561.32471, 314.284546, -2663.39697, -0.391084909, 1.08295005e-07, 0.920354605, 4.10446699e-09, 1, -1.15922504e-07, -0.920354605, -4.15579748e-08, -0.391084909))
								until not Auto_Tushita or not game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalicee") and not game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") or game.Workspace.Enemies:FindFirstChild("rip_indra True Form")
								wait(1)
							else
								if game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
									Mix_Farm = true
									Auto_Tushita_Farm = true
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
									if game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if v.Name == "Urban" and v.Humanoid.Health > 0 then
												if v.Humanoid:FindFirstChild("Animator") then
													v.Humanoid.Animator:Destroy()
												end
												repeat wait(.1)
													EquipWeapon(_G.Setting_table.Weapon)
													TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
													AttackNoCD()
													FastAttack = true
												until v.Humanoid.Health <= 0 or not v.Parent or not Auto_Tushita
												FastAttack = false
											end
										end
									elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
										TP(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
									end
								elseif game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") then
									Mix_Farm = true
									Auto_Tushita_Farm = true
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
									if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") then
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if v.Name == "Diablo" and v.Humanoid.Health > 0 then
												if v.Humanoid:FindFirstChild("Animator") then
													v.Humanoid.Animator:Destroy()
												end
												repeat wait(.1)
													EquipWeapon(_G.Setting_table.Weapon)
													TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
													AttackNoCD()
													FastAttack = true
												until v.Humanoid.Health <= 0 or not v.Parent or not Auto_Tushita
												FastAttack = false
											end
										end
									elseif game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
										TP(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
									end
								elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") then
									Mix_Farm = true
									Auto_Tushita_Farm = true
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
									if game:GetService("Workspace").Enemies:FindFirstChild("Deandre") then
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if v.Name == "Deandre" and v.Humanoid.Health > 0 then
												if v.Humanoid:FindFirstChild("Animator") then
													v.Humanoid.Animator:Destroy()
												end
												repeat wait(.1)
													EquipWeapon(_G.Setting_table.Weapon)
													TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
													AttackNoCD()
													FastAttack = true
												until v.Humanoid.Health <= 0 or not v.Parent or not Auto_Tushita
												FastAttack = false
											end
										end
									elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
										TP(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
									end
								elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Urban (0/1)" or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Deandre (0/1)" or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Diablo (0/1)" then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
								elseif _G.Setting_table.Auto_Tushita_Hop then
									wait(5)
									if not game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") and not game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") and not game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") and not game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") and not game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") and not game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") then
										HopServer()
										wait(50)
									end
								elseif Auto_Tushita_Farm then
									Auto_Tushita_Farm = nil
									Mix_Farm = nil
								end
							end
						elseif Auto_Tushita_Farm then
							Auto_Tushita_Farm = nil
							Mix_Farm = nil
						end
					else
						if game.Workspace.Enemies:FindFirstChild("Longma") or game.ReplicatedStorage:FindFirstChild("Longma") then
							Auto_Tushita_Farm = true
							Mix_Farm = true
							if game.Workspace.Enemies:FindFirstChild("Longma") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if v.Name == "Longma" and v.Humanoid.Health > 0 then
										if v.Humanoid:FindFirstChild("Animator") then
											v.Humanoid.Animator:Destroy()
										end
										repeat wait(.1)
											EquipWeapon(_G.Setting_table.Weapon)
											TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
											AttackNoCD()
											FastAttack = true
										until v.Humanoid.Health <= 0 or not v.Parent or not Auto_Tushita
										FastAttack = false
									end
								end
							elseif game.ReplicatedStorage:FindFirstChild("Longma [Lv. 2000] [Boss]") then
								TP(game.ReplicatedStorage:FindFirstChild("Longma [Lv. 2000] [Boss]").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
							end
						elseif Auto_Tushita_Farm then
							Auto_Tushita_Farm = nil
							Mix_Farm = nil
						end
					end
				end
			else
				wait(2)
			end
		end)
	end
end)

Miscf:Seperator("// Twin Hooks \\\\\ ")

Miscf:Toggle("Auto Twin Hooks",_G.Setting_table.Auto_Twin_Hooks,function(vu)
	Auto_Twin_Hooks = vu
	_G.Setting_table.Auto_Twin_Hooks = vu
	Update_Setting(getgenv()['MyName'])
end)
spawn(function()
	while wait(.5) do
		pcall(function()
			if Auto_Twin_Hooks then
				if not Mix_Farm or Auto_Twin_Hooks_Farm then
					if game.Workspace.Enemies:FindFirstChild("Captain Elephant") or game.ReplicatedStorage:FindFirstChild("Captain Elephant") then
						Auto_Twin_Hooks_Farm = true
						Mix_Farm = true
						if game.Workspace.Enemies:FindFirstChild("Captain Elephant") then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == "Captain Elephant" and v.Humanoid.Health > 0 then
									if v.Humanoid:FindFirstChild("Animator") then
										v.Humanoid.Animator:Destroy()
									end
									repeat wait(.2)
										EquipWeapon(_G.Setting_table.Weapon)
										TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
										AttackNoCD()
										FastAttack = true
									until v.Humanoid.Health <= 0 or not v.Parent or not Auto_Twin_Hooks
									FastAttack = false
								end
							end
						elseif game.ReplicatedStorage:FindFirstChild("Captain Elephant") then
							TP(game.ReplicatedStorage:FindFirstChild("Captain Elephant").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
						end
					elseif _G.Setting_table.Auto_Twin_Hooks_Hop then
						wait(5)
						if not game.Workspace.Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") and not game.ReplicatedStorage:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
							HopServer()
							wait(50)
						end
					elseif Auto_Twin_Hooks_Farm then
						Auto_Twin_Hooks_Farm = nil
						Mix_Farm = nil
					end
				end
			else
				wait(2)
			end
		end)
	end
end)

Miscf:Toggle("Auto Twin Hooks Hop",_G.Setting_table.Auto_Twin_Hooks_Hop,function(vu)
	_G.Setting_table.Auto_Twin_Hooks_Hop = vu
	Update_Setting(getgenv()['MyName'])
end)

Miscf:Seperator("// Canvander \\\\\ ")


Miscf:Toggle("Auto Canvander",_G.Setting_table.Auto_Canvander,function(vu)
	Auto_Canvander = vu
	_G.Setting_table.Auto_Canvander = vu
	Update_Setting(getgenv()['MyName'])
end)
spawn(function()
	while wait(.5) do
		pcall(function()
			if Auto_Canvander then
				if not Mix_Farm or Auto_Canvander_Farm then
					if game.Workspace.Enemies:FindFirstChild("Beautiful Pirate") or game.ReplicatedStorage:FindFirstChild("Beautiful Pirate") then
						Auto_Canvander_Farm = true
						Mix_Farm = true
						if game.Workspace.Enemies:FindFirstChild("Beautiful Pirate") then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == "Beautiful Pirate" and v.Humanoid.Health > 0 then
									if v.Humanoid:FindFirstChild("Animator") then
										v.Humanoid.Animator:Destroy()
									end
									repeat wait(.2)
										EquipWeapon(_G.Setting_table.Weapon)
										TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
										AttackNoCD()
										FastAttack = true
									until v.Humanoid.Health <= 0 or not v.Parent or not Auto_Canvander
									FastAttack = false
								end
							end
						elseif game.ReplicatedStorage:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
							TP(game.ReplicatedStorage:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
						end
					elseif _G.Setting_table.Auto_Canvander_Hop then
						wait(5)
						if not game.Workspace.Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") and not game.ReplicatedStorage:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
							HopServer()
							wait(50)
						end
					elseif Auto_Canvander_Farm then
						Auto_Canvander_Farm = nil
						Mix_Farm = nil
					end
				end
			else
				wait(2)
			end
		end)
	end
end)

Miscf:Toggle("Auto Canvander Hop",_G.Setting_table.Auto_Canvander_Hop,function(vu)
	_G.Setting_table.Auto_Canvander_Hop = vu
	Update_Setting(getgenv()['MyName'])
end)

    
Miscf:Seperator("// Hallow Scythe \\\\\ ")

Miscf:Toggle("Auto Hallow Scythe",_G.Setting_table.Auto_Hallow_Scryte,function(vu)
	Auto_Hallow_Scryte = vu
	_G.Setting_table.Auto_Hallow_Scryte = vu
	Update_Setting(getgenv()['MyName'])
end)
spawn(function()
	while wait(.5) do
		pcall(function()
			if Auto_Hallow_Scryte then
				if game.Workspace.Enemies:FindFirstChild("Soul Reaper") or game.ReplicatedStorage:FindFirstChild("Soul Reaper") then
					if game.Workspace.Enemies:FindFirstChild("Soul Reaper") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == "Soul Reaper" and v.Humanoid.Health > 0 then
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								repeat wait(.2)
									EquipWeapon(_G.Setting_table.Weapon)
									TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
									AttackNoCD()
									FastAttack = true
								until v.Humanoid.Health <= 0 or not v.Parent or not Auto_Hallow_Scryte
								FastAttack = false
							end
						end
					elseif game.ReplicatedStorage:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
						TP(game.ReplicatedStorage:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
					end
				elseif game.Players.LocalPlayer.Character:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then
					repeat wait(.3)
						EquipWeapon("Hallow Essence")
						TP2(CFrame.new(-8932.86, 143.258, 6063.31))
					until not game.Players.LocalPlayer.Character:FindFirstChild("Hallow Essence") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game.Workspace.Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") or game.ReplicatedStorage:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") 
				elseif _G.Setting_table.Hallow_Scryte_Hop then
					wait(5)
					if not game.Workspace.Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") and not game.ReplicatedStorage:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
						HopServer()
						wait(50)
					end
				else
					local args = {
						[1] = "Bones",
						[2] = "Check"
					}
					
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			
					local args = {
						[1] = "Bones",
						[2] = "Buy",
						[3] = 1,
						[4] = 1
					}
					
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					if game.Workspace.Enemies:FindFirstChild("Reborn Skeleton") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == "Reborn Skeleton" and v.Humanoid.Health > 0 then
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								_G.PosMon = v.HumanoidRootPart.CFrame
								StatrMagnet = true
								repeat wait(.2)
									EquipWeapon(_G.Setting_table.Weapon)
									TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
									AttackNoCD()
									FastAttack = true
								until v.Humanoid.Health <= 0 or not v.Parent or not Auto_Hallow_Scryte
								StatrMagnet = false
								FastAttack = false
							end
						end
					elseif game.ReplicatedStorage:FindFirstChild("Reborn Skeleton [Lv. 1975]") then
						TP(game.ReplicatedStorage:FindFirstChild("Reborn Skeleton [Lv. 1975]").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
					end
				end
			else
				wait(2)
			end
		end)
	end
end)
Miscf:Toggle("Auto Hallow Scythe Hop",_G.Setting_table.Hallow_Scryte_Hop,function(vu)
	_G.Setting_table.Hallow_Scryte_Hop = vu
	Update_Setting(getgenv()['MyName'])
end)

Miscf:Seperator("// Dark Dagger \\\\\ ")

Miscf:Toggle("Auto Dark Dagger",_G.Setting_table.Auto_Dark_Dagger,function(vu)
	Auto_Dark_Dagger = vu
	_G.Setting_table.Auto_Dark_Dagger = vu
	Update_Setting(getgenv()['MyName'])
end)
function TelePQ(p)
	if (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 3000 and not Auto_Raid then
		if game.Players.LocalPlayer.Data.SpawnPoint.Value == 'Fountain' then
			_G.Stop_Tween = true
			Tween:Cancel()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			wait(1)
			_G.Stop_Tween = nil
		else
			_G.Stop_Tween = true
			local Speed = 100
			local Distance = 100
			game:GetService("TweenService"):Create(
				game.Players.LocalPlayer.Character.HumanoidRootPart,
				TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
				{CFrame = P1}
			):Cancel()
			TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
			wait(1)
			if not Auto_Raid then
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
				wait(.5)
				repeat wait(.2)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
				until game.Players.LocalPlayer.Character.Humanoid.Health > 0
				wait(2)
				_G.Stop_Tween = nil
			end
		end
	end
end
spawn(function()
	while wait(.5) do
		pcall(function()
			if Auto_Dark_Dagger then
                if game.Workspace.Enemies:FindFirstChild("rip_indra True Form") or game.ReplicatedStorage:FindFirstChild("rip_indra True Form") then
                    if game.Workspace.Enemies:FindFirstChild("rip_indra True Form") then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == "rip_indra True Form" and v.Humanoid.Health > 0 then
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                repeat wait(.1)
                                    EquipWeapon(_G.Setting_table.Weapon)
                                    TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
                                    AttackNoCD()
                                    FastAttack = true
                                until not v.Parent or v.Humanoid.Health <= 0 or not Auto_Dark_Dagger
                                FastAttack = false
                            end
                        end
                    elseif game.ReplicatedStorage:FindFirstChild("rip_indra True Form") then
                        TP(game.ReplicatedStorage:FindFirstChild("rip_indra True Form").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
                    end
                else
                    wait(5)
                    if game.Workspace.Enemies:FindFirstChild("rip_indra True Form") or game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
                    else
                        HopServer()
                        wait(20)
                    end
                end
			end
		end)
	end
end)

Miscf:Toggle("Auto Dark Dagger Hop",_G.Setting_table.Auto_Dark_Dagger_Hop,function(vu)
	_G.Setting_table.Auto_Dark_Dagger_Hop = vu
	Update_Setting(getgenv()['MyName'])
end)

Miscf:Seperator("// Legendary Sword \\\\\ ")
    
spawn(function()
    pcall(function()
        while wait() do
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "1") then
                LegendSwords:Set("Shisui")
            elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","2") then
                LegendSwords:Set("Wando")
            elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","3") then
                LegendSwords:Set("Saddi")
            else
                LegendSwords:Set("Not Found LegendSwords")
            end
        end
    end)
end)

LegendSwords = Miscf:Label("")

    Miscf:Toggle("Auto Legendary Sword",_G.Setting_table.AutoBuyLegendarySword,function(vu)
	_G.Setting_table.AutoBuyLegendarySword = vu
	Update_Setting(getgenv()['MyName'])
end)
    
    spawn(function()
        while wait() do
            if _G.Setting_table.AutoBuyLegendarySword then
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
                    if _G.Setting_table.AutoBuyLegendarySword_Hop and _G.AutoBuyLegendarySword and World2 then
                        wait(10)
                        HopServer()
                    end
                end)
            end 
        end
    end)
    
Miscf:Toggle("Auto Buy Legendary Sword Hop",_G.Setting_table.AutoBuyLegendarySword_Hop,function(vu)
	_G.Setting_table.AutoBuyLegendarySword_Hop = vu
	Update_Setting(getgenv()['MyName'])
end)
    
    Miscf:Seperator("// Enchancement Colour \\\\\ ")
    
local KuyKoben = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("ColorsDealer", "1")
    
spawn(function()
    pcall(function()
        while wait() do
            if game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("ColorsDealer", "1") then
                ColorHaki:Set(KuyKoben)
            else
                ColorHaki:Set("Not Found HakiDealer")
            end
        end
    end)
end)

ColorHaki = Miscf:Label("")
    
    Miscf:Toggle("Auto Buy Enchancement Colour",_G.Setting_table.AutoBuyEnchancementColour,function(vu)
	_G.Setting_table.AutoBuyEnchancementColour = vu
	Update_Setting(getgenv()['MyName'])
end)
    
    Miscf:Toggle("Auto Buy Enchancement Colour Hop",_G.Setting_table.AutoBuyEnchancementColour,function(vu)
	_G.Setting_table.AutoBuyEnchancementColour_Hop = vu
	Update_Setting(getgenv()['MyName'])
end)
    
    spawn(function()
        while wait() do
            if _G.Setting_table.AutoBuyEnchancementColour then
                local args = {
                    [1] = "ColorsDealer",
                    [2] = "2"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                if _G.Setting_table.AutoBuyEnchancementColour_Hop and _G.AutoBuyEnchancementColour and not World1 then
                    wait(10)
                    HopServer()
                end
            end 
        end
    end)
   

Miscf:Seperator("// Misc \\\\\ ")

Miscf:Toggle("Auto Mink Evo ",_G.Setting_table.Mink_Evo,function(vu)
	_G.Setting_table.Mink_Evo = vu
	Update_Setting(getgenv()['MyName'])
end)
Miscf:Toggle("Auto Human Evo ",_G.Setting_table.Human_Evo,function(vu)
	_G.Setting_table.Human_Evo = vu
	Update_Setting(getgenv()['MyName'])
end)
Miscf:Toggle("Auto Skypiea Evo ",_G.Setting_table.Skypiea_Evo,function(vu)
	_G.Setting_table.Skypiea_Evo = vu
	Update_Setting(getgenv()['MyName'])
end)
Miscf:Toggle("Auto Fish Evo ",_G.Setting_table.Fishman_Evo,function(vu)
	_G.Setting_table.Fishman_Evo = vu
	Update_Setting(getgenv()['MyName'])
end)
if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == -2 then
	if game.Players.LocalPlayer.Data.Race.Value == 'Mink' then
		_G.Setting_table.Mink_Evo_H = true
	elseif game.Players.LocalPlayer.Data.Race.Value == 'Human' then
		_G.Setting_table.Human_Evo_H = true
	elseif game.Players.LocalPlayer.Data.Race.Value == 'Skypiea' then
		_G.Setting_table.Skypiea_Evo_H = true
	elseif game.Players.LocalPlayer.Data.Race.Value == 'Fishman' then
		_G.Setting_table.Fishman_Evo_H = true
	end
end
spawn(function()
	while wait(.5) do
		pcall(function()
			if _G.Setting_table.Mink_Evo and not _G.Setting_table.Mink_Evo_H and game.Players.LocalPlayer.Data.Race.Value == 'Mink' then
				if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == -2 then
					if game.Players.LocalPlayer.Data.Race.Value == 'Mink' then
						_G.Setting_table.Mink_Evo_H = true
						return
					elseif game.Players.LocalPlayer.Data.Race.Value == 'Human' then
						_G.Setting_table.Human_Evo_H = true
						return
					elseif game.Players.LocalPlayer.Data.Race.Value == 'Skypiea' then
						_G.Setting_table.Skypiea_Evo_H = true
						return
					elseif game.Players.LocalPlayer.Data.Race.Value == 'Fishman' then
						_G.Setting_table.Fishman_Evo_H = true
						return
					end
				end
				if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") ~= -2 then
						if not UIhjdk then
							Text("กำลังทำเผ่ามิงค์วี 1")
							UIhjdk = true
						end
						pcall(function()
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
						end)
						if not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game.Players.LocalPlayer.Character:FindFirstChild("Flower 1") and game:GetService("Workspace"):FindFirstChild("Flower1") then
							if not YUIk then
								Text("กำลังหา ดอกไม้น้ำเงิน")
								YUIk = true
							end
							repeat wait(1)
								TP2(game:GetService("Workspace"):FindFirstChild("Flower1").CFrame)
							until game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 1") or game.Players.LocalPlayer.Character:FindFirstChild("Flower 1") or not _G.Setting_table.Mink_Evo
						elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game.Players.LocalPlayer.Character:FindFirstChild("Flower 2") and game:GetService("Workspace"):FindFirstChild("Flower2") then
							if not YUIkx then
								Text("กำลังหา ดอกไม้แดง")
								YUIkx = true
							end
							repeat wait(1)
								TP2(game:GetService("Workspace"):FindFirstChild("Flower2").CFrame)
							until game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 2") or game.Players.LocalPlayer.Character:FindFirstChild("Flower 2") or not _G.Setting_table.Mink_Evo
						elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game.Players.LocalPlayer.Character:FindFirstChild("Flower 3") then
							if PO == nil then
								Text("กำลังหา ดอกไม้เหลือง")
								PO = true
							end
							if game:GetService("Workspace").Enemies:FindFirstChild("Marine Captain") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if v.Name == "Marine Captain" then
										repeat wait(.2)
											EquipWeapon(_G.Setting_table.Weapon)
											TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
											AttackNoCD()
											FastAttack = true
										until v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 3") or not _G.Setting_table.Mink_Evo
										FastAttack = false
									end
								end
							else
								TP2(CFrame.new(-2335.2026367188, 79.786659240723, -3245.8674316406))
							end
						elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 3") and game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 1") and game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 2") then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
							wait(2)
						else
							if not UHuit then
								Text("รอดอกไม้เกิด")
								TP2(CFrame.new(-379.70889282227, 73.0458984375, 304.84692382813))
								UHuit = true
							end
							wait(2)
						end
					elseif _G.Setting_table.Mink_Evo_V2 ~= true then
						if not UIjfiz then
							Text("กำลังทำเผ่ามิงค์วี 2")
							UIjfiz = true
						end
						if game.Workspace.Enemies:FindFirstChild("Don Swan") then
							repeat wait(.2)
								EquipWeapon(_G.Setting_table.Weapon)
								TP(game.Workspace.Enemies:FindFirstChild("Don Swan").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
								AttackNoCD()
								FastAttack = true
							until not game.Workspace.Enemies:FindFirstChild("Don Swan") or game.Workspace.Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]").Humanoid.Health <= 0 or not _G.Setting_table.Mink_Evo 
							FastAttack = false
							_G.Setting_table.Mink_Evo_V2 = true
							Update_Setting(getgenv()['MyName'])
						elseif game.ReplicatedStorage:FindFirstChild("Don Swan") then
							TP(game.ReplicatedStorage:FindFirstChild("Don Swan").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
						else
							Text("รอบอสโดฟาเกิด")
							TP(CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072))
							wait(10)
						end
					elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") ~= -2 then
						if not UIjfi then
							Text("กำลังทำเผ่ามิงค์วี 3")
							UIjfi = true
						end
						if not ijoijofdga then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","2")
							ijoijofdga = true
						end
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1")
                		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","3")
						for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                            if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1500 then
                                repeat wait()
                                    TP2(v.CFrame)
                                until not v.Parent or not _G.Setting_table.Mink_Evo 
                            elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1500 then
                                repeat wait()
                                    TP2(v.CFrame)
                                until not v.Parent or not _G.Setting_table.Mink_Evo 
                            elseif New_World then
                                TP2(CFrame.new(-379.70889282227, 73.0458984375, 304.84692382813))
                            end
                        end
					elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == -2 then
						if not IUHidm then
							Text("ทำเผ่ามิงค์วี 3 เสร็จสิ้น!")
							IUHidm = true
						end
						if _G.Setting_table.Next_Race then
							_G.Setting_table.Mink_Evo_H = true
							Update_Setting(getgenv()['MyName'])
						end
					end
				else
					Text("ประตูโดฟายังไม่เปิด\nไม่สามารถทำเผ่าได้")
					wait(5)
				end
			elseif _G.Setting_table.Human_Evo and not _G.Setting_table.Human_Evo_H and game.Players.LocalPlayer.Data.Race.Value == 'Human' then
				if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") ~= -2 then
						if not UIhjdkh then
							Text("กำลังทำเผ่าคนวี 1")
							UIhjdkh = true
						end
						pcall(function()
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
						end)
						if not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game.Players.LocalPlayer.Character:FindFirstChild("Flower 1") and game:GetService("Workspace"):FindFirstChild("Flower1") then
							if not YUIks then
								Text("กำลังหา ดอกไม้น้ำเงิน")
								YUIks = true
							end
							repeat wait(1)
								TP2(game:GetService("Workspace"):FindFirstChild("Flower1").CFrame)
							until game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 1") or game.Players.LocalPlayer.Character:FindFirstChild("Flower 1") or not _G.Setting_table.Human_Evo
						elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game.Players.LocalPlayer.Character:FindFirstChild("Flower 2") and game:GetService("Workspace"):FindFirstChild("Flower2") then
							if not YUIkxz then
								Text("กำลังหา ดอกไม้แดง")
								YUIkxz = true
							end
							repeat wait(1)
								TP2(game:GetService("Workspace"):FindFirstChild("Flower2").CFrame)
							until game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 2") or game.Players.LocalPlayer.Character:FindFirstChild("Flower 2") or not _G.Setting_table.Human_Evo
						elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game.Players.LocalPlayer.Character:FindFirstChild("Flower 3") then
							if POs == nil then
								Text("กำลังหา ดอกไม้เหลือง")
								POs = true
							end
							if game:GetService("Workspace").Enemies:FindFirstChild("Marine Captain") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if v.Name == "Marine Captain" then
										repeat wait(.1)
											EquipWeapon(_G.Setting_table.Weapon)
											TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
											AttackNoCD()
											FastAttack = true
										until v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 3") or not _G.Setting_table.Human_Evo
										FastAttack = false
									end
								end
							else
								TP2(CFrame.new(-2335.2026367188, 79.786659240723, -3245.8674316406))
							end
						elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 3") and game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 1") and game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 2") then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
							wait(2)
						else
							if not UHuits then
								Text("รอดอกไม้เกิด")
								TP2(CFrame.new(-379.70889282227, 73.0458984375, 304.84692382813))
								UHuits = true
							end
							wait(2)
						end
					elseif _G.Setting_table.Human_Evo_V2 ~= true then
						if not UIjfize then
							Text("กำลังทำเผ่าคนวี 2")
							UIjfize = true
						end
						if game.Workspace.Enemies:FindFirstChild("Don Swan") then
							repeat wait(.1)
								EquipWeapon(_G.Setting_table.Weapon)
								TP(game.Workspace.Enemies:FindFirstChild("Don Swan").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
								AttackNoCD()
								FastAttack = true
							until not game.Workspace.Enemies:FindFirstChild("Don Swan") or game.Workspace.Enemies:FindFirstChild("Don Swan").Humanoid.Health <= 0 or not _G.Setting_table.Human_Evo 
							FastAttack = false
							_G.Setting_table.Human_Evo_V2 = true
							Update_Setting(getgenv()['MyName'])
						elseif game.ReplicatedStorage:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
							TP(game.ReplicatedStorage:FindFirstChild("Don Swan [Lv. 1000] [Boss]").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
						else
							Text("รอบอสโดฟาเกิด")
							TP(CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072))
							wait(10)
						end
					elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") ~= -2 then
						if not UIjfie then
							Text("กำลังทำเผ่าคนวี 3")
							UIjfie = true
						end
						if not ijoijofdga then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","2")
							ijoijofdga = true
						end
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1")
                		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","3")
						if game.Workspace.Enemies:FindFirstChild("Fajita") then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == "Fajita" then
									repeat twait(.1)
										EquipWeapon(_G.Setting_table.Weapon)
										TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
										AttackNoCD()
										FastAttack = true
									until v.Humanoid.Health <= 0 or not v.Parent or not _G.Setting_table.Human_Evo
									FastAttack = false
								end
							end
						elseif game.ReplicatedStorage:FindFirstChild("Fajita") then
							TP(game.ReplicatedStorage:FindFirstChild("Fajita").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
						elseif game.Workspace.Enemies:FindFirstChild("Jeremy") then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == "Jeremy" then
									repeat wait(.1)
										EquipWeapon(_G.Setting_table.Weapon)
										TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
										AttackNoCD()
										FastAttack = true
									until v.Humanoid.Health <= 0 or not v.Parent or not _G.Setting_table.Human_Evo
									FastAttack = false
								end
							end
						elseif game.ReplicatedStorage:FindFirstChild("Jeremy") then
							TP(game.ReplicatedStorage:FindFirstChild("Jeremy").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
						elseif game.Workspace.Enemies:FindFirstChild("Diamond") then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == "Diamond" then
									repeat wait(.1)
										EquipWeapon(_G.Setting_table.Weapon)
										TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
										AttackNoCD()
										FastAttack = true
									until v.Humanoid.Health <= 0 or not v.Parent or not _G.Setting_table.Human_Evo
									FastAttack = false
								end
							end
						elseif game.ReplicatedStorage:FindFirstChild("Diamond") then
							TP(game.ReplicatedStorage:FindFirstChild("Diamond").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
						else
							if not IJOijogr then
								TP2(CFrame.new(-379.70889282227, 73.0458984375, 304.84692382813))
								IJOijogr = true
							end
							Text("รอบอสเกิด 5 - 15นาที")
							wait(10)
						end
					elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == -2 then
						if not IUHidmr then
							Text("ทำเผ่าคนวี 3 เสร็จสิ้น!")
							IUHidmr = true
						end
						if _G.Setting_table.Next_Race then
							_G.Setting_table.Human_Evo_H = true
							Update_Setting(getgenv()['MyName'])
						end
					end
				else
					Text("ประตูโดฟายังไม่เปิด\nไม่สามารถทำเผ่าได้")
					wait(5)
				end
			elseif _G.Setting_table.Skypiea_Evo and not _G.Setting_table.Skypiea_Evo_H and game.Players.LocalPlayer.Data.Race.Value == 'Skypiea' then
				if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") ~= -2 then
						if not UIhjdkhz then
							Text("กำลังทำเผ่าปีกวี 1")
							UIhjdkhz = true
						end
						pcall(function()
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
						end)
						if not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game.Players.LocalPlayer.Character:FindFirstChild("Flower 1") and game:GetService("Workspace"):FindFirstChild("Flower1") then
							if not YUIksz then
								Text("กำลังหา ดอกไม้น้ำเงิน")
								YUIksz = true
							end
							repeat wait(1)
								TP2(game:GetService("Workspace"):FindFirstChild("Flower1").CFrame)
							until game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 1") or game.Players.LocalPlayer.Character:FindFirstChild("Flower 1") or not _G.Setting_table.Skypiea_Evo
						elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game.Players.LocalPlayer.Character:FindFirstChild("Flower 2") and game:GetService("Workspace"):FindFirstChild("Flower2") then
							if not YUIkxzx then
								Text("กำลังหา ดอกไม้แดง")
								YUIkxzx = true
							end
							repeat wait(1)
								TP2(game:GetService("Workspace"):FindFirstChild("Flower2").CFrame)
							until game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 2") or game.Players.LocalPlayer.Character:FindFirstChild("Flower 2") or not _G.Setting_table.Skypiea_Evo
						elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game.Players.LocalPlayer.Character:FindFirstChild("Flower 3") then
							if POsz == nil then
								Text("กำลังหา ดอกไม้เหลือง")
								POsz = true
							end
							if game:GetService("Workspace").Enemies:FindFirstChild("Marine Captain") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if v.Name == "Marine Captain" then
										repeat wait(.1)
											EquipWeapon(_G.Setting_table.Weapon)
											TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
											AttackNoCD()
											FastAttack = true
										until v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 3") or not _G.Setting_table.Skypiea_Evo
										FastAttack = false
									end
								end
							else
								TP2(CFrame.new(-2335.2026367188, 79.786659240723, -3245.8674316406))
							end
						elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 3") and game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 1") and game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 2") then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
							wait(2)
						else
							if not UHuitsz then
								Text("รอดอกไม้เกิด")
								TP2(CFrame.new(-379.70889282227, 73.0458984375, 304.84692382813))
								UHuitsz = true
							end
							wait(2)
						end
					elseif _G.Setting_table.Skypiea_Evo_V2 ~= true then
						if not UIjfizez then
							Text("กำลังทำเผ่าปีกวี 2")
							UIjfizez = true
						end
						if game.Workspace.Enemies:FindFirstChild("Don Swan") then
							repeat wait(.1)
								EquipWeapon(_G.Setting_table.Weapon)
								TP(game.Workspace.Enemies:FindFirstChild("Don Swan").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
								AttackNoCD()
								FastAttack = true
							until not game.Workspace.Enemies:FindFirstChild("Don Swan") or game.Workspace.Enemies:FindFirstChild("Don Swan").Humanoid.Health <= 0 or not _G.Setting_table.Skypiea_Evo 
							FastAttack = false
							_G.Setting_table.Skypiea_Evo_V2 = true
							Update_Setting(getgenv()['MyName'])
						elseif game.ReplicatedStorage:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
							TP(game.ReplicatedStorage:FindFirstChild("Don Swan [Lv. 1000] [Boss]").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
						else
							Text("รอบอสโดฟาเกิด")
							TP(CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072))
							wait(10)
						end
					elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") ~= -2 then
						if not UIjfiez then
							Text("กำลังทำเผ่าปีกวี 3")
							UIjfiez = true
						end
						if not ijoijofdga then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","2")
							ijoijofdga = true
						end
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1")
                		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","3")
						_G.Select_Player = nil
						Check_Race_Skypiea()
						if _G.Select_Player ~= nil then
							print(_G.Select_Player)
							repeat wait(.1)
								EquipWeapon(_G.Setting_table.Weapon)
								TP(game.Players:FindFirstChild(_G.Select_Player).Character.HumanoidRootPart.CFrame*CFrame.new(0,0,2))
								AttackNoCD()
								FastAttack = true
							until game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == -2 or game.Players:FindFirstChild(_G.Select_Player).Character.Humanoid.Health <= 0 or not game.Players:FindFirstChild(_G.Select_Player) or not _G.Setting_table.Skypiea_Evo
							FastAttack = false
						elseif _G.Setting_table.Race_Hop then
							Text("ไม่มีคนที่มีเผ่าสกายเปีย\nในโลกนี้เลย")
							HopServer()
							wait(50)
						else
							Text("ไม่มีคนที่มีเผ่าสกายเปีย\nในโลกนี้เลย")
							wait(7)
						end
					elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == -2 then
						if not IUHidmrz then
							Text("ทำเผ่าปีกวี 3 เสร็จสิ้น!")
							IUHidmrz = true
						end
						if _G.Setting_table.Next_Race then
							_G.Setting_table.Skypiea_Evo_H = true
							Update_Setting(getgenv()['MyName'])
						end
					end
				else
					Text("ประตูโดฟายังไม่เปิด\nไม่สามารถทำเผ่าได้")
					wait(5)
				end
			elseif _G.Setting_table.Fishman_Evo and not _G.Setting_table.Fishman_Evo_H and game.Players.LocalPlayer.Data.Race.Value == 'Fishman' then
				if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") ~= -2 then
						if not UIhjdkhzt then
							Text("กำลังทำเผ่าเงือกวี 1")
							UIhjdkhzt = true
						end
						pcall(function()
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
						end)
						if not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game.Players.LocalPlayer.Character:FindFirstChild("Flower 1") and game:GetService("Workspace"):FindFirstChild("Flower1") then
							if not YUIkszt then
								Text("กำลังหา ดอกไม้น้ำเงิน")
								YUIkszt = true
							end
							repeat wait(1)
								TP2(game:GetService("Workspace"):FindFirstChild("Flower1").CFrame)
							until game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 1") or game.Players.LocalPlayer.Character:FindFirstChild("Flower 1") or not _G.Setting_table.Fishman_Evo
						elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game.Players.LocalPlayer.Character:FindFirstChild("Flower 2") and game:GetService("Workspace"):FindFirstChild("Flower2") then
							if not YUIkxzxt then
								Text("กำลังหา ดอกไม้แดง")
								YUIkxzxt = true
							end
							repeat wait(1)
								TP2(game:GetService("Workspace"):FindFirstChild("Flower2").CFrame)
							until game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 2") or game.Players.LocalPlayer.Character:FindFirstChild("Flower 2") or not _G.Setting_table.Fishman_Evo
						elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game.Players.LocalPlayer.Character:FindFirstChild("Flower 3") then
							if POszt == nil then
								Text("กำลังหา ดอกไม้เหลือง")
								POszt = true
							end
							if game:GetService("Workspace").Enemies:FindFirstChild("Marine Captain") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if v.Name == "Marine Captain" then
										repeat wait(.1)
											EquipWeapon(_G.Setting_table.Weapon)
											TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
											AttackNoCD()
											FastAttack = true
										until v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 3") or not _G.Setting_table.Fishman_Evo
										FastAttack = false
									end
								end
							else
								TP2(CFrame.new(-2335.2026367188, 79.786659240723, -3245.8674316406))
							end
						elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 3") and game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 1") and game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 2") then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
							wait(2)
						else
							if not UHuitszt then
								Text("รอดอกไม้เกิด")
								TP2(CFrame.new(-379.70889282227, 73.0458984375, 304.84692382813))
								UHuitszt = true
							end
							wait(2)
						end
					elseif _G.Setting_table.Fishman_Evo_V2 ~= true then
						if not UIjfizezt then
							Text("กำลังทำเผ่าเงือกวี 2")
							UIjfizezt = true
						end
						if game.Workspace.Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
							repeat wait(.1)
								EquipWeapon(_G.Setting_table.Weapon)
								TP(game.Workspace.Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
								AttackNoCD()
								FastAttack = true
							until not game.Workspace.Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") or game.Workspace.Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]").Humanoid.Health <= 0 or not _G.Setting_table.Fishman_Evo 
							FastAttack = false
							_G.Setting_table.Fishman_Evo_V2 = true
							Update_Setting(getgenv()['MyName'])
						elseif game.ReplicatedStorage:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
							TP(game.ReplicatedStorage:FindFirstChild("Don Swan [Lv. 1000] [Boss]").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
						else
							Text("รอบอสโดฟาเกิด")
							TP(CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072))
							wait(10)
						end
					elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") ~= -2 then
						if not UIjfiezt then
							Text("กำลังทำเผ่าเงือกวี 3")
							UIjfiezt = true
						end
						if not ijoijofdg then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","2")
							ijoijofdg = true
						end
						for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
							if v:FindFirstChild("HumanoidRootPart") then
								_G.Ping = true
								repeat wait(.1)
									EquipWeapon(_G.Setting_table.Weapon)
									TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
									AttackNoCD()
								until not v.Parent or not _G.Setting_table.Fishman_Evo or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == -2
							end
						end
						Text("เจ้าทะเลยังไม่เกิด")
						if _G.Setting_table.Race_Hop and not _G.Ping then
							HopServer()
							wait(50)
						end
						wait(9)
					elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == -2 then
						if not IUHidmrzt then
							Text("ทำเผ่าเงือกวี 3 เสร็จสิ้น!")
							IUHidmrzt = true
						end
						if _G.Setting_table.Next_Race then
							_G.Setting_table.Fishman_Evo_H = true
							Update_Setting(getgenv()['MyName'])
						end
					end
				else
					Text("ประตูโดฟายังไม่เปิด\nไม่สามารถทำเผ่าได้")
					wait(5)
				end
			elseif _G.Setting_table.Next_Race and _G.Setting_table.Mink_Evo and not _G.Setting_table.Mink_Evo_H and game.Players.LocalPlayer.Data.Race.Value ~= 'Mink' then
				local FG = game:GetService("Players").LocalPlayer.Data.Fragments.Value
				if FG >= 3000 then
					local args = {
						[1] = "BlackbeardReward",
						[2] = "Reroll",
						[3] = "2"
					}
					
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					wait(5)
				elseif not Mix_Farm then
					_G.Have_Fruit = nil
					Raid_FG()
				end
			elseif _G.Setting_table.Next_Race and _G.Setting_table.Human_Evo and not _G.Setting_table.Human_Evo_H and game.Players.LocalPlayer.Data.Race.Value ~= 'Human' then
				local FG = game:GetService("Players").LocalPlayer.Data.Fragments.Value
				if FG >= 3000 then
					local args = {
						[1] = "BlackbeardReward",
						[2] = "Reroll",
						[3] = "2"
					}
					
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					wait(5)
				elseif not Mix_Farm then
					_G.Have_Fruit = nil
					Raid_FG()
				end
			elseif _G.Setting_table.Next_Race and _G.Setting_table.Skypiea_Evo and not _G.Setting_table.Skypiea_Evo_H and game.Players.LocalPlayer.Data.Race.Value ~= 'Skypiea' then
				local FG = game:GetService("Players").LocalPlayer.Data.Fragments.Value
				if FG >= 3000 then
					local args = {
						[1] = "BlackbeardReward",
						[2] = "Reroll",
						[3] = "2"
					}
					
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					wait(5)
				elseif not Mix_Farm then
					_G.Have_Fruit = nil
					Raid_FG()
				end
			elseif _G.Setting_table.Next_Race and _G.Setting_table.Fishman_Evo and not _G.Setting_table.Fishman_Evo_H and game.Players.LocalPlayer.Data.Race.Value ~= 'Fishman' then
				local FG = game:GetService("Players").LocalPlayer.Data.Fragments.Value
				if FG >= 3000 then
					local args = {
						[1] = "BlackbeardReward",
						[2] = "Reroll",
						[3] = "2"
					}
					
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					wait(5)
				elseif not Mix_Farm then
					_G.Have_Fruit = nil
					Raid_FG()
				end
			elseif _G.Setting_table.Mink_Evo_H and _G.Setting_table.Fishman_Evo_H and _G.Setting_table.Skypiea_Evo_H and _G.Setting_table.Human_Evo_H then
				Text("อีโวเผ่าขั้น 3 ครบทั้ง4เผ่าแล้ว")
				wait(10)
			else
				wait(2)
			end
		end)
	end
end)

function Check_Race_Skypiea()
	for i,v in pairs(game.Players:GetChildren()) do
		if v.Name ~= game.Players.LocalPlayer.Name and tostring(v.Data.Race.Value) == "Skypiea" then
			print(v.Name)
			_G.Select_Player = v.Name
			return
		end
	end
end

Miscf:Toggle("Auto True Triple Katana",_G.Setting_table.Triple_A,function(vu)
	Auto_Farm_Sword = vu
	Triple_A = vu
	_G.Setting_table.Triple_A = vu
	Update_Setting(getgenv()['MyName'])
end)
function Dis()
    if New_World then
        repeat wait(.2)
			Mix_Farm = true
            TP(CFrame.new(121.6969223022461, 18.738399505615234, 2850.1474609375))
        until (Vector3.new(121.6969223022461, 18.738399505615234, 2850.1474609375)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2
		wait(1)
		for i2,v2 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
			if tostring(v2.ToolTip) == "Melee" then
				EquipWeapon(v2.Name)
			end
		end
		wait(1)
        for i2,v2 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
            if tostring(v2.ToolTip) == "Sword" then
                local args = {
                    [1] = "StoreItem",
                    [2] = v2.Name
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
		wait(1)
		Mix_Farm = nil
    elseif Three_World then
        repeat wait(.2)
			Mix_Farm = true
            TP(CFrame.new(-220.47975158691406, 5.787993431091309, 5324.3720703125))
        until (Vector3.new(-220.47975158691406, 5.787993431091309, 5324.3720703125)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2
        wait(1)
		for i2,v2 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
			if tostring(v2.ToolTip) == "Melee" then
				EquipWeapon(v2.Name)
			end
		end
		wait(1)
        for i2,v2 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
            if tostring(v2.ToolTip) == "Sword" then
                local args = {
                    [1] = "StoreItem",
                    [2] = v2.Name
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
		wait(1)
		Mix_Farm = nil
    end
end
function Load(vu)
    if New_World then
        repeat wait(.2)
			Mix_Farm = true
            TP(CFrame.new(121.6969223022461, 18.738399505615234, 2850.1474609375))
        until (Vector3.new(121.6969223022461, 18.738399505615234, 2850.1474609375)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2
		wait(1)
        local args = {
            [1] = "LoadItem",
            [2] = tostring(vu)
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		wait(2)
		Mix_Farm = nil
    elseif Three_World then
        repeat wait(.2)
			Mix_Farm = true
            TP(CFrame.new(-220.47975158691406, 5.787993431091309, 5324.3720703125))
        until (Vector3.new(-220.47975158691406, 5.787993431091309, 5324.3720703125)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2
		wait(1)
        local args = {
            [1] = "LoadItem",
            [2] = tostring(vu)
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		wait(2)
		Mix_Farm = nil
    end
end
local I_W = game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryWeapons")

for i,x in pairs(I_W) do
    v = {
        Name = x["Name"]
    }
	if v.Name == "Shisui" then
		_G.Setting_table.Shisui = true
	end
	if v.Name == "Wando" then
		_G.Setting_table.Wando = true
	end
		if v.Name == "Saddi" then
		_G.Setting_table.Saddi = true
	end
end
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
	if v:IsA("Tool") then
		if v.Name == "Shisui" then
			_G.Setting_table.Shisui = true
		end
		if v.Name == "Wando" then
			_G.Setting_table.Wando = true
		end
			if v.Name == "Saddi" then
			_G.Setting_table.Saddi = true
		end
	end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
	if v:IsA("Tool") then
		if v.Name == "Shisui" then
			_G.Setting_table.Shisui = true
		end
		if v.Name == "Wando" then
			_G.Setting_table.Wando = true
		end
			if v.Name == "Saddi" then
			_G.Setting_table.Saddi = true
		end
	end
end
spawn(function()
    while wait(.1) do
        pcall(function()
            if Triple_A then
                local args = {
                    [1] = "LegendarySwordDealer",
                    [2] = "2"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end)
    end
end)
spawn(function()
    while wait(.3) do
        pcall(function()
            if Triple_A then
                if game.Players.LocalPlayer.Backpack:FindFirstChild("True Triple Katana") or game.Players.LocalPlayer.Character:FindFirstChild("True Triple Katana") then
                    _G.Setting_table.Weapon = "True Triple Katana"
					Auto_Farm_Sword = true
                elseif _G.Setting_table.Shisui_H and _G.Setting_table.Wando_H and _G.Setting_table.Saddi_H then
                    local Beli = game:GetService("Players").LocalPlayer.Data.Beli.Value
                    if Beli >= 3000000 then
                        pcall(function()
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("MysteriousMan","1")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("MysteriousMan","2")
                        end)
                    else
                        Auto_Farm_Sword = true
                    end
                elseif _G.Setting_table.Shisui and not _G.Setting_table.Shisui_H then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Shisui") or game.Players.LocalPlayer.Character:FindFirstChild("Shisui") then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Shisui") and game.Players.LocalPlayer.Backpack:FindFirstChild("Shisui").Level.Value >= 300 then
                            _G.Setting_table.Weapon = "Shisui"
                            _G.Setting_table.Shisui_H = true
                            Update_Setting(getgenv()['MyName'])
                        elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Shisui") and game.Players.LocalPlayer.Backpack:FindFirstChild("Shisui").Level.Value < 300 then
                            _G.Setting_table.Weapon = "Shisui"
							Auto_Farm_Sword = true
                        end
						if game.Players.LocalPlayer.Character:FindFirstChild("Shisui") and game.Players.LocalPlayer.Character:FindFirstChild("Shisui").Level.Value >= 300 then
                            _G.Setting_table.Weapon = "Shisui"
                            _G.Setting_table.Shisui_H = true
                            Update_Setting(getgenv()['MyName'])
                        elseif game.Players.LocalPlayer.Character:FindFirstChild("Shisui") and game.Players.LocalPlayer.Character:FindFirstChild("Shisui").Level.Value < 300 then
                            _G.Setting_table.Weapon = "Shisui"
							Auto_Farm_Sword = true
                        end
                    else
						wait(5)
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Shisui") or game.Players.LocalPlayer.Character:FindFirstChild("Shisui") then
						else
							Dis()
							Load("Shisui")
						end
                    end
                elseif _G.Setting_table.Wando and not _G.Setting_table.Wando_H then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Wando") or game.Players.LocalPlayer.Character:FindFirstChild("Wando") then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Wando") and game.Players.LocalPlayer.Backpack:FindFirstChild("Wando").Level.Value >= 300 then
                            _G.Setting_table.Weapon = "Wando"
                            _G.Setting_table.Wando_H = true
                            Update_Setting(getgenv()['MyName'])
                        elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Wando") and game.Players.LocalPlayer.Backpack:FindFirstChild("Wando").Level.Value < 300 then
                            _G.Setting_table.Weapon = "Wando"
							Auto_Farm_Sword = true
                        end
						if game.Players.LocalPlayer.Character:FindFirstChild("Wando") and game.Players.LocalPlayer.Character:FindFirstChild("Wando").Level.Value >= 300 then
                            _G.Setting_table.Weapon = "Wando"
                            _G.Setting_table.Wando_H = true
                            Update_Setting(getgenv()['MyName'])
                        elseif game.Players.LocalPlayer.Character:FindFirstChild("Wando") and game.Players.LocalPlayer.Character:FindFirstChild("Wando").Level.Value < 300 then
                            _G.Setting_table.Weapon = "Wando"
							Auto_Farm_Sword = true
                        end
                    else
						wait(5)
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Wando") or game.Players.LocalPlayer.Character:FindFirstChild("Wando") then
						else
							Dis()
							Load("Wando")
						end
                    end
                elseif _G.Setting_table.Saddi and not _G.Setting_table.Saddi_H then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Saddi") or game.Players.LocalPlayer.Character:FindFirstChild("Saddi") then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Saddi") and game.Players.LocalPlayer.Backpack:FindFirstChild("Saddi").Level.Value >= 300 then
                            _G.Setting_table.Weapon = "Saddi"
                            _G.Setting_table.Saddi_H = true
                            Update_Setting(getgenv()['MyName'])
                        elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Saddi") and game.Players.LocalPlayer.Backpack:FindFirstChild("Saddi").Level.Value < 300 then
                            _G.Setting_table.Weapon = "Saddi"
							Auto_Farm_Sword = true
                        end
						if game.Players.LocalPlayer.Character:FindFirstChild("Saddi") and game.Players.LocalPlayer.Character:FindFirstChild("Saddi").Level.Value >= 300 then
                            _G.Setting_table.Weapon = "Saddi"
                            _G.Setting_table.Saddi_H = true
                            Update_Setting(getgenv()['MyName'])
                        elseif game.Players.LocalPlayer.Character:FindFirstChild("Saddi") and game.Players.LocalPlayer.Character:FindFirstChild("Saddi").Level.Value < 300 then
                            _G.Setting_table.Weapon = "Saddi"
							Auto_Farm_Sword = true
                        end
                    else
						wait(5)
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Saddi") or game.Players.LocalPlayer.Character:FindFirstChild("Saddi") then
						else
							Dis()
							Load("Saddi")
						end
                    end
                elseif _G.Setting_table.Triple_Hop then
					local Beli = game:GetService("Players").LocalPlayer.Data.Beli.Value
					if Beli < 2000000 then
						Text("ฟามเงินรอดาบเกิด")
						Auto_Farm_Sword = true
						wait(10)
					else
						Text("กำลังหาดาบ")
						wait(10)
						HopServer()
						wait(50)
					end
				else
					Text("ฟามเงินรอดาบเกิด")
					Auto_Farm_Sword = true
					wait(10)
                end
            end
        end)
    end
end)

Miscf:Toggle("Auto yama",_G.Setting_table.AutoYama,function(vu)
	_G.Setting_table.AutoYama = vu
	Update_Setting(getgenv()['MyName'])
end)

spawn(function()
        while wait() do
            if AutoYama then
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
                    repeat wait(.1)
                        fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                    until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not _G.AutoYama
                end
            end
        end
    end)
    
Miscf:Toggle("Auto Open Color Haki",Open_Color_Haki,function(vu)
	Open_Color_Haki = vu
	_G.Setting_table.Farm_Ob_Color = vu
	Update_Setting(getgenv()['MyName'])
end)
spawn(function()
    while wait(.3) do
        pcall(function()
            if Open_Color_Haki and Three_World then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Winter Sky")
            	wait(0.5)
            	repeat TP(CFrame.new(-5420.16602, 1084.9657, -2666.8208)) wait() 
                until _G.StopTween == true or Open_Color_Haki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5420.16602, 1084.9657, -2666.8208)).Magnitude <= 10
                wait(0.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Pure Red")
                wait(0.5)
                repeat TP(CFrame.new(-5414.41357, 309.865753, -2212.45776)) wait() 
                until _G.StopTween == true or Open_Color_Haki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5414.41357, 309.865753, -2212.45776)).Magnitude <= 10
                wait(0.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Snow White")
                wait(0.5)
                repeat TP(CFrame.new(-4971.47559, 331.565765, -3720.02954)) wait() 
                until _G.StopTween == true or Open_Color_Haki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-4971.47559, 331.565765, -3720.02954)).Magnitude <= 10
                wait(0.5)
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280,600))
                wait(3)
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280,600))
            end
        end) 
    end
end)

Miscf:Toggle("Auto Holy Torch",_G.Setting_table.Auto_Holy_Torch,function(vu)
	Auto_Holy_Torch = vu
	_G.Setting_table.Auto_Holy_Torch = vu
	Update_Setting(getgenv()['MyName'])
end)

spawn(function()
    while wait(.5) do
        pcall(function()
            if Auto_Holy_Torch then
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
                    repeat wait(.2)
                        EquipWeapon("Holy Torch")
                        TP2(CFrame.new(-10752.4434, 415.261749, -9367.43848, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                    until (Vector3.new(-10752.4434, 415.261749, -9367.43848)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                    wait(2)
                    repeat wait(.2)
                        EquipWeapon("Holy Torch")
                        TP2(CFrame.new(-11671.6289, 333.78125, -9474.31934, 0.300932229, 0, -0.953645527, 0, 1, 0, 0.953645527, 0, 0.300932229))
                    until (Vector3.new(-11671.6289, 333.78125, -9474.31934)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                    wait(2)
                    repeat wait(.2)
                        EquipWeapon("Holy Torch")
                        TP2(CFrame.new(-12133.1406, 521.507446, -10654.292, 0.80428642, 0, -0.594241858, 0, 1, 0, 0.594241858, 0, 0.80428642))
                    until (Vector3.new(-12133.1406, 521.507446, -10654.292)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                    wait(2)
                    repeat wait(.2)
                        EquipWeapon("Holy Torch")
                        TP2(CFrame.new(-13336.127, 484.521179, -6985.31689, 0.853732228, 0, -0.520712316, 0, 1, 0, 0.520712316, 0, 0.853732228))
                    until (Vector3.new(-13336.127, 484.521179, -6985.31689)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                    wait(2)
                    EquipWeapon("Holy Torch")
                    repeat wait(.2)
                        TP2(CFrame.new(-13487.623, 336.436188, -7924.53857, -0.982848108, 0, 0.184417039, 0, 1, 0, -0.184417039, 0, -0.982848108))
                    until (Vector3.new(-13487.623, 336.436188, -7924.53857)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                    wait(2)
                    Com()
                    wait(20)
                elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") and not game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
                    if Uiio == nil then
						Text("No Have Holy Torch")
						Uiio = true
					end
                    wait(3)
                end
            end
        end)
    end
end)

ObservationLevel = Miscf:Label("")

    spawn(function()
		while game:GetService("RunService").Heartbeat:wait() do
			local OPP = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Status")
			local Lpp = string.match(tostring(OPP), "%d+")
			ObservationLevel:Set("Ken Haki Level : "..tostring(Lpp))
		end
	end)
	
spawn(function()
    while wait(2) do
        pcall(function()
            if CH_K then
                local OPP = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Status")
                local Lpp = string.match(tostring(OPP), "%d+")
                _G.Lv_Ken = tonumber(Lpp)
                wait(5)
            end
        end)
    end
end)

Miscf:Toggle("Auto Farm Observation Haki",_G.Setting_table.Farm_Ken,function(vu)
	Farm_Ken = vu
	_G.Setting_table.Farm_Ken = vu
	Update_Setting(getgenv()['MyName'])
end)

Miscf:Toggle("Auto Observation Haki V2",_G.Setting_table.Farm_Ken_V2,function(vu)
	Farm_Ken = vu
	Farm_Ken_V2 = vu
	_G.Setting_table.Farm_Ken_V2 = vu
	Update_Setting(getgenv()['MyName'])
end)
if _G.Setting_table.Farm_Ken or _G.Setting_table.Farm_Ken_V2 then
	Farm_Ken = true
end

    spawn(function()
        while wait() do
            pcall(function()
                if Farm_Ken then
                    repeat task.wait()
                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                            game:GetService('VirtualUser'):CaptureController()
                            game:GetService('VirtualUser'):SetKeyDown('0x65')
                            wait(2)
                            game:GetService('VirtualUser'):SetKeyUp('0x65')
                        end
                    until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not Farm_Ken
                end
            end)
        end
    end)
    
spawn(function()
	while wait(.5) do
		pcall(function()
			if Farm_Ken then
				if not Mix_Farm then
					if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
						CheckLevel()
						if (CFrameQ.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10 then
                            TP(CFrameQ)
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                        end
					elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						CheckLevel()
						if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
							if game.Workspace.Enemies:FindFirstChild(Ms) then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if not string.find(v.Name,"Boss") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-CFrameMon.Position).Magnitude <= 1000 then
										if v.Humanoid:FindFirstChild("Animator") then
											v.Humanoid.Animator:Destroy()
										end
										_G.PosMon = v.HumanoidRootPart.CFrame
										spawn(function()
											repeat wait(1)
												if (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 7 then
													wait(7)
													if game.Players.LocalPlayer.Character.Humanoid.Health == game.Players.LocalPlayer.Character.Humanoid.MaxHealth then
														_G.IKAI = true
														--break
													end
												end
											until _G.IKAI == true or StatrMagnet
										end)
										repeat wait(.2)
											local health = game.Players.LocalPlayer.Character.Humanoid.Health
											local maxhealth = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
											local percent = (health / maxhealth) * 100
											if percent >= 90 then
												TP(v.HumanoidRootPart.CFrame*CFrame.new(0,0,2))
											else
												TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
											end
										until _G.IKAI or percent < 90 or v.Humanoid.Health <= 0 or not v.Parent or Mix_Farm or not Farm_Ken
										TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
										_G.IKAI = false
										StatrMagnet = true
										repeat wait(.2)
											TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
											EquipWeapon(_G.Setting_table.Weapon)
											AttackNoCD()
											FastAttack = true
										until v.Humanoid.Health <= 0 or not v.Parent or Mix_Farm or not Farm_Ken 
										StatrMagnet = false
										FastAttack = false
									end
								end
							elseif game.ReplicatedStorage:FindFirstChild(Ms) then
								TP(game.ReplicatedStorage:FindFirstChild(Ms).HumanoidRootPart.CFrame*CFrame.new(0,30,0))
							else
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if not string.find(v.Name,"Boss") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-CFrameMon.Position).Magnitude <= 1000 then
										if v.Humanoid:FindFirstChild("Animator") then
											v.Humanoid.Animator:Destroy()
										end
										_G.PosMon = v.HumanoidRootPart.CFrame
										StatrMagnet = false
										spawn(function()
											repeat wait(1)
												if (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 7 then
													wait(7)
													if game.Players.LocalPlayer.Character.Humanoid.Health == game.Players.LocalPlayer.Character.Humanoid.MaxHealth then
														_G.IKAI = true
														--break
													end
												end
											until _G.IKAI == true or StatrMagnet
										end)
										repeat wait(.2)
											local health = game.Players.LocalPlayer.Character.Humanoid.Health
											local maxhealth = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
											local percent = (health / maxhealth) * 100
											if percent >= 90 then
												TP(v.HumanoidRootPart.CFrame*CFrame.new(0,0,2))
											else
												TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
											end
										until _G.IKAI or percent < 90 or v.Humanoid.Health <= 0 or not v.Parent or Mix_Farm or not _G.Setting_table.Farm_Ken_Hop
										TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
										_G.IKAI = false
										StatrMagnet = true
										repeat wait(_G.Fast_Delay)
											TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
											EquipWeapon(_G.Setting_table.Weapon)
											AttackNoCD()
										until v.Humanoid.Health <= 0 or not v.Parent or Mix_Farm or not Farm_Ken 
										StatrMagnet = false
									end
								end
							end
						end
					end
				end
			elseif _G.Setting_table.Farm_Ken_Hop then
				if not Mix_Farm then
					if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
						CheckLevel()
						if (CFrameQ.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10 then
                            TP(CFrameQ)
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                        end
					elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						CheckLevel()
						if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
							if game.Workspace.Enemies:FindFirstChild(Ms) then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if not string.find(v.Name,"Boss") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-CFrameMon.Position).Magnitude <= 1000 then
										if v.Humanoid:FindFirstChild("Animator") then
											v.Humanoid.Animator:Destroy()
										end
										spawn(function()
											repeat wait(1)
												if (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 7 then
													wait(15)
													if game.Players.LocalPlayer.Character.Humanoid.Health == game.Players.LocalPlayer.Character.Humanoid.MaxHealth then
														_G.IKAI = true
														--break
													end
												end
											until _G.IKAI == true
										end)
										repeat wait(.2)
											local health = game.Players.LocalPlayer.Character.Humanoid.Health
											local maxhealth = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
											local percent = (health / maxhealth) * 100
											if percent >= 90 then
												TP(v.HumanoidRootPart.CFrame*CFrame.new(0,0,2))
											else
												TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
											end
										until _G.IKAI or percent < 90 or v.Humanoid.Health <= 0 or not v.Parent or Mix_Farm or not _G.Setting_table.Farm_Ken_Hop
										TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
										if _G.IKAI then
											_G.Upto = true
											_G.IKAI = false
										else
											_G.TP_Ser = true
											game:GetService("TeleportService"):Teleport(game.PlaceId)
											wait(50)
										end
									end
								end
							elseif game.ReplicatedStorage:FindFirstChild(Ms) then
								TP(game.ReplicatedStorage:FindFirstChild(Ms).HumanoidRootPart.CFrame*CFrame.new(0,30,0))
							else
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if not string.find(v.Name,"Boss") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-CFrameMon.Position).Magnitude <= 1000 then
										if v.Humanoid:FindFirstChild("Animator") then
											v.Humanoid.Animator:Destroy()
										end
										spawn(function()
											repeat wait(1)
												if (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 7 then
													wait(15)
													if game.Players.LocalPlayer.Character.Humanoid.Health == game.Players.LocalPlayer.Character.Humanoid.MaxHealth then
														_G.IKAI = true
														--break
													end
												end
											until _G.IKAI == true 
										end)
										repeat wait(.2)
											local health = game.Players.LocalPlayer.Character.Humanoid.Health
											local maxhealth = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
											local percent = (health / maxhealth) * 100
											if percent >= 90 then
												TP(v.HumanoidRootPart.CFrame*CFrame.new(0,0,2))
											else
												TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
											end
										until _G.IKAI or percent < 90 or v.Humanoid.Health <= 0 or not v.Parent or Mix_Farm or not _G.Setting_table.Farm_Ken_Hop
										TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
										if _G.IKAI then
											_G.Upto = true
											_G.IKAI = false
										else
											_G.TP_Ser = true
											game:GetService("TeleportService"):Teleport(game.PlaceId)
											wait(50)
										end
									end
								end
							end
						end
					end
				end
			else
				wait(2)
			end
		end)
	end
end)

spawn(function()
    while wait(.3) do
        pcall(function()
            if Farm_Ken_V2 then
                if not Mix_Farm or Farm_Ken_Ex then
                    local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
                    local Beli = game:GetService("Players").LocalPlayer.Data.Beli.Value
                    if Lv >= 1800 and Beli >= 5000000 then
                        CH_K = true
                        if _G.Lv_Ken >= 5000 then
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 3 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Start")
                                if not game.Players.LocalPlayer.Backpack:FindFirstChild("Pineapple") and not game.Players.LocalPlayer.Character:FindFirstChild("Pineapple") then
                                    for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
                                        if v.Name == "Pineapple" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
                                            wait(1)
                                        end
                                    end
                                    if not GPIJdz then
                                        Text("wait Fruit Spawn\nรอผลไม้เกิด")
                                        GPIJdz = true
                                    end
                                elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("Banana") and not game.Players.LocalPlayer.Character:FindFirstChild("Banana") then
                                    for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
                                        if v.Name == "Banana" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
                                            wait(1)
                                        end
                                    end
                                    if not GPIJdx then
                                        Text("wait Fruit Spawn\nรอผลไม้เกิด")
                                        GPIJdx = true
                                    end
                                elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("Apple") and not game.Players.LocalPlayer.Character:FindFirstChild("Apple") then
                                    for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
                                        if v.Name == "Apple" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
                                            wait(1)
                                        end
                                    end
                                    if not GPIJdcw then
                                        Text("wait Fruit Spawn\nรอผลไม้เกิด")
                                        GPIJdcw = true
                                    end
                                elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") and not  game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fruit Bowl") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Buy")
                                end
                            elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 2 then
                                Mix_Farm = true
                                Farm_Ken_Ex = true
								TP(CFrame.new(-12512.6533203125, 336.21612548828125, -9872.841796875))
                            elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 1 then
                                if game.Workspace.Enemies:FindFirstChild("Captain Elephant") then
                                    Mix_Farm = true
                                    Farm_Ken_Ex = true
                                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if v.Name == "Captain Elephant" and v.Humanoid.Health > 0 then
											repeat wait(.2)
												EquipWeapon(_G.Setting_table.Weapon)
                                                TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
                                                AttackNoCD()
                                                FastAttack = true
                                            until v.Humanoid.Health <= 0 or not v.Parent or Farm_Ken_V2 == false
                                            FastAttack = false
                                        end
                                    end
                                elseif game.ReplicatedStorage:FindFirstChild("Captain Elephant") then
                                    Mix_Farm = true
                                    Farm_Ken_Ex = true
									TP(CFrame.new(-13400.6103515625, 317.9277648925781, -8409.9853515625)*CFrame.new(0,200,0))
                                elseif Farm_Ken_Ex then
                                    Mix_Farm = nil
                                    Farm_Ken_Ex = nil
                                end
                            elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 0 then
                                if LIPO == nil then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
                                    LIPO = true
                                end
                                if game.Workspace.Enemies:FindFirstChild("Forest Pirate") then
                                    Mix_Farm = true
                                    Farm_Ken_Ex = true
                                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if v.Name == "Forest Pirate" and v.Humanoid.Health > 0 then
                                            _G.PosMon = v.HumanoidRootPart.CFrame
                                            StatrMagnet = true
                                            repeat wait(.2)
												EquipWeapon(_G.Setting_table.Weapon)
                                                TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
                                                AttackNoCD()
                                                FastAttack = true
                                            until v.Humanoid.Health <= 0 or not v.Parent or Farm_Ken_V2 == false
                                            StatrMagnet = false
                                            FastAttack = false
                                        end
                                    end
                                elseif game.ReplicatedStorage:FindFirstChild("Forest Pirate") then
                                    Mix_Farm = true
                                    Farm_Ken_Ex = true
									TP(game.ReplicatedStorage:FindFirstChild("Forest Pirate").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
								elseif Farm_Ken_Ex then
									Farm_Ken_Ex = nil
									Mix_Farm = nil
								end
							elseif Farm_Ken_Ex then
								Farm_Ken_Ex = nil
								Mix_Farm = nil
                            end
                        elseif _G.Lv_Ken < 5000 then
                            if XER == nil then
								if Lv < 1800 then
									Text("❌ Level < 1800")
									_G.Have_Lv = "0"
								else
									Text("✅ Level >= 1800")
									_G.Have_Lv = "1"
								end
								if Beli < 5000000 then
									Text("❌ Money < 5M")
									_G.Have_B = "0"
								else
									Text("✅ Money >= 5M")
									_G.Have_B = "1"
								end
								if _G.Lv_Ken < 5000 then
									Text("❌ Ken Level < 5000")
								else
									Text("✅ Ken Level == 5000")
								end
								XER = true
							end
							--Farm_Ken = true
                        end
                    else
                        if XER == nil then
                            if Lv < 1800 then
                                Text("❌ Level < 1800")
                                _G.Have_Lv = "0"
                            else
                                Text("✅ Level >= 1800")
                                _G.Have_Lv = "1"
                            end
                            if Beli < 5000000 then
                                Text("❌ Money < 5M")
                                _G.Have_B = "0"
                            else
                                Text("✅ Money >= 5M")
                                _G.Have_B = "1"
                            end
                            if _G.Lv_Ken < 5000 then
                                Text("❌ Ken Level < 5000")
                            else
                                Text("✅ Ken Level == 5000")
                            end
                            XER = true
                        end
                        --Farm_Ken = true
                    end
                end
			elseif Farm_Ken_Ex then
				Farm_Ken_Ex = nil
				Mix_Farm = nil
			else
				wait(2)
            end
        end)
    end
end)

Miscf:Toggle("Auto Rainbow Haki",_G.Setting_table.Auto_Rainbow_Haki,function(vu)
	_G.Setting_table.Auto_Rainbow_Haki = vu
	Update_Setting(getgenv()['MyName'])
end)

    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Setting_table.Auto_Rainbow_Haki then
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        TP(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
                        if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Stone [Lv. 1550] [Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Stone" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.Setting_table.Weapon)
                                        TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        FastAttack = true
                                    until _G.Setting_table.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    FastAttack = false
                                end
                            end
                        else
                            TP(CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 2.03251839e-05, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199))
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Island Empress" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.Setting_table.Weapon)
                                        TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        FastAttack = true
                                    until _G.Setting_table.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    FastAttack = false
                                end
                            end
                        else
                            TP(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, -0, -0.994878292, -0, 1, -0, 0.994878292, 0, -0.101080291))
                        end
                    elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Kilo Admiral" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.Setting_table.Weapon)
                                        TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        FastAttack = true
                                    until _G.Setting_table.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    FastAttack = false
                                end
                            end
                        else
                            TP(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, -0, -0.143904909, -0, 1.00000012, -0, 0.143904924, 0, -0.989591479))
                        end
                    elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Captain Elephant" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.Setting_table.Weapon)
                                        TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        FastAttack = true
                                    until _G.Setting_table.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    FastAttack = false
                                end
                            end
                        else
                            TP(CFrame.new(-13485.0283, 331.709259, -8012.4873, 0.714521289, 7.98849911e-08, 0.69961375, -1.02065748e-07, 1, -9.94383065e-09, -0.69961375, -6.43015241e-08, 0.714521289))
                        end
                    elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Beautiful Pirate" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.Setting_table.Weapon)
                                        TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        FastAttack = true
                                    until _G.Setting_table.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    FastAttack = false
                                end
                            end
                        else
                            TP(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359))
                        end
                    else
                        TP(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
                        if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
                        end
                    end
                end
            end
        end)
    end)
    
Miscf:Toggle("Auto Rengoku",_G.Setting_table.AutoRengoku,function(vu)
	_G.Setting_table.AutoRengoku = vu
	Update_Setting(getgenv()['MyName'])
end)

    spawn(function()
        pcall(function()
            while wait() do
                if _G.Setting_table.AutoRengoku then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
                        EquipWeapon("Hidden Key")
                        TP(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
                    elseif game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if (v.Name == "Snow Lurker" or v.Name == "Arctic Warrior") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    EquipWeapon(_G.Setting_table.Weapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    _G.PosMon = v.HumanoidRootPart.CFrame
                                    TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,1))
                                    StatrMagnet = true
                                    FastAttack = true
                                until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or AutoRengoku == false or not v.Parent or v.Humanoid.Health <= 0
                                StatrMagnet = false
                                FastAttack = false
                            end
                        end
                    else
                        StatrMagnet = false
                        TP(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
                    end
                end
            end
        end)
    end)
    
    local EctoplasmPos = CFrame.new(911.35827636719, 125.95812988281, 33159.5390625)
    
Miscf:Toggle("Auto Farm Ectoplasm",_G.Setting_table.AutoEctoplasm,function(vu)
	_G.Setting_table.AutoEctoplasm = vu
	Update_Setting(getgenv()['MyName'])
end)

   spawn(function()
        while wait() do 
            if _G.Setting_table.AutoEctoplasm then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Ship Deckhand" or v.Name == "Ship Engineer" or v.Name == "Ship Steward" or v.Name == "Ship Officer" then
                               if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                   repeat task.wait()
                                        EquipWeapon(_G.Setting_table.Weapon)
                                        StatrMagnet = true
                                        _G.PosMon = v.HumanoidRootPart.CFrame
                                        TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,1))
                                        FastAttack = true
                                    until not _G.Setting_table.AutoEctoplasm or not v.Parent or v.Humanoid.Health <= 0
                                    FastAttack = false
                                    StatrMagnet = false
                                end
                            end
                        end
                    else
                    if ((EctoplasmPos).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
						TP(EctoplasmPos)
					else
						TelePBoss(EctoplasmPos)
						end
                    end
                end)
            end
        end
    end)    
    
    
Miscf:Toggle("Auto Bartlio",_G.Setting_table.Bartlio_Farm,function(vu)
	Bartlio_Farm = vu
	_G.Setting_table.Bartlio_Farm = vu
	Update_Setting(getgenv()['MyName'])
end)
spawn(function()
    while wait(1) do
		pcall(function()
			if Bartlio_Farm and New_World then
				local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
				if Lv >= 900 then
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
						if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if game.workspace.Enemies:FindFirstChild("Swan Pirate") then
								for i,v in pairs(game.workspace.Enemies:GetChildren()) do
									if v.Name == "Swan Pirate" then
										CFrameMon = v.HumanoidRootPart.CFrame
										_G.PosMon = v.HumanoidRootPart.CFrame
										StatrMagnet = true
										repeat wait()
											EquipWeapon(_G.Setting_table.Weapon)
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											TP(v.HumanoidRootPart.CFrame*CFrame.new(0,25,0))
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280,900))
											FastAttack = true
										until v.Humanoid.Health <= 0 or not v.Parent or Bartlio_Farm ==false
										StatrMagnet = false
										FastAttack = false
									end
								end
							elseif game:GetService("ReplicatedStorage"):FindFirstChild("Swan Pirate") then
								TP2(game:GetService("ReplicatedStorage"):FindFirstChild("Swan Pirate").HumanoidRootPart.CFrame*CFrame.new(0,20,0))
							end
						else
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
						end
					elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
						_G.SelectBoss = "Jeremy"
						CheckQuestBoss()
						if game.workspace.Enemies:FindFirstChild("Jeremy") then
							for i,v in pairs(game.workspace.Enemies:GetChildren()) do
								if v.Name == "Jeremy" then
									repeat wait()
										EquipWeapon(_G.Setting_table.Weapon)
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										TP(v.HumanoidRootPart.CFrame*CFrame.new(0,25,0))
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280,900))
									until v.Humanoid.Health <= 0 or not v.Parent or Bartlio_Farm == false
								end
							end
						else
							TP(CFrameBoss)
						end
					elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
						repeat wait()
							TP2(CFrame.new(-1836, 11, 1714))
						until (Vector3.new(-1836, 11, 1714)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1836, 11, 1714)
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1850.49329, 13.1789551, 1750.89685)
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807)
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685)
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541)
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659)
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368)
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343, 14.795166, 1717.90625)
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843, 14.8604736, 1724.79541)
					end
				end
			end
		end)
    end
end)


Miscf:Toggle("Auto Open Swan Glass",_G.Setting_table.Open_Don_Swan,function(vu)
	Inventory_Fruit = vu
	BringFruit = vu
	Don_Swan_Quest = vu
	_G.Setting_table.Open_Don_Swan = vu
	Update_Setting(getgenv()['MyName'])
end)

local function split(str, sep)
	local result = {}
	local regex = ("([^%s]+)"):format(sep)
	for each in str:gmatch(regex) do
	   table.insert(result, each)
	end
	return result
 end

spawn(function()
    while wait(.5) do
        pcall(function()
            if Don_Swan_Quest then
                if New_World then
                    local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
                    if Lv >= 1200 then
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") ~= 0 then
                            wait(2)
							local fruit = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
                            for i,v in pairs(fruit) do
                                if v["Price"] >= 1000000 then
                                    Inventory_Fruit = false
                                    Mix_Farm = true
                                    wait(1)
                                    local NameFruit = split(v["Name"], "-")[2] .. " Fruit"
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",v["Name"])
                                    wait(2)
                                    EquipWeapon(NameFruit)
                                    wait(2)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1")
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","2")
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","3")
                                    Mix_Farm = nil
                                    Inventory_Fruit = true
									return
                                end
                            end
                        end
                    end
                end
			else
				wait(2)
            end
        end)
    end
end)


Sho:Seperator("Fruit")

local Remote_GetFruits = game.ReplicatedStorage:FindFirstChild("Remotes").CommF_:InvokeServer("GetFruits");

Table_DevilFruitSniper = {}
ShopDevilSell = {}

for i,v in next,Remote_GetFruits do
	table.insert(Table_DevilFruitSniper,v.Name)
	if v.OnSale then 
		table.insert(ShopDevilSell,v.Name)
	end
end


Sho:Dropdown("Select Fruit",Table_DevilFruitSniper,function(vu)
	_G.Select_Devil_Fruit = vu
	_G.Setting_table.Select_Devil_Fruit = vu
	Update_Setting(getgenv()['MyName'])
end)

Sho:Toggle("Auto Buy Fruit Select",_G.Setting_table.Auto_Buy_Devil_Fruit,function(vu)
	_G.Auto_Buy_Devil_Fruit = value    
	_G.Setting_table.Auto_Buy_Devil_Fruit = value
	Update_Setting(getgenv()['MyName'])
end)

spawn(function()
	while wait() do
		if _G.Auto_Buy_Devil_Fruit then
			pcall(function()
				local string_1 = "PurchaseRawFruit";
				local string_2 = _G.Select_Devil_Fruit;
				local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
				Target:InvokeServer(string_1, string_2);
			end)
		end                              
	end
end)

Sho:Button("Open Fruit Shop",function()
	game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
end)

Sho:Toggle("Auto Random Fruit",_G.Setting_table.Auto_Random_Fruit,function(vu)
	_G.Auto_Random_Fruit = vu    
	_G.Setting_table.Auto_Random_Fruit = vu
	Update_Setting(getgenv()['MyName'])
end)

spawn(function()
	while wait() do
		if _G.Auto_Random_Fruit then	
			local args = {
				[1] = "Cousin",
				[2] = "Buy"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)

Sho:Toggle("Bring Fruit",_G.Setting_table.BringFruit,function(vu)
	BringFruit = vu
	_G.Setting_table.BringFruit = vu
	Update_Setting(getgenv()['MyName'])
	spawn(function()
		while wait(.2) do
			pcall(function()
				if BringFruit or BringFruit_P then
					for i,v6 in pairs(game:GetService("Workspace"):GetChildren()) do
						if v6:IsA ("Tool") and (v6.Handle.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 13000 then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v6.Handle.CFrame
							v6.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
						end
					end
				end				
			end)
		end
	end)
end)

Sho:Toggle("Auto Store Fruit",_G.Setting_table.Auto_Store_Fruit,function(vu)
	_G.Setting_table.Auto_Store_Fruit = vu
	Update_Setting(getgenv()['MyName'])
end)

spawn(function()
    while wait() do
        if _G.Setting_table.Auto_Store_Fruit then
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if string.find(v.Name,"Fruit") and not UseThireWorld then
                    local FruitName = RemoveSpaces(v.Name)
                    if v.Name == "Bird: Falcon Fruit" then
                        NameFruit = "Bird-Bird: Falcon"
                    elseif v.Name == "Bird: Phoenix Fruit" then
                        NameFruit = "Bird-Bird: Phoenix"
                    elseif v.Name == "Human: Buddha Fruit" then
                        NameFruit = "Human-Human: Buddha"
                    else
                        NameFruit = FruitName.."-"..FruitName
                    end
    
                    local string_1 = "getInventoryFruits";
                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                    for i1,v1 in pairs(Target:InvokeServer(string_1)) do
                        if v1.Name == NameFruit then
                            HaveFruitInStore = true
                        end
                    end
                    if not HaveFruitInStore and not AutoRaids then
                        local string_1 = "StoreFruit";
                        local string_2 = NameFruit;
                        local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                        Target:InvokeServer(string_1, string_2);
                    end
                    HaveFruitInStore = false
                end
            end
        end
    end
end)

Shop:Seperator("Melee")

Shop:Button("Buy Black Leg",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
end)

Shop:Button("Buy Electro",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
end)

Shop:Button("Buy Fishman Karate",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
end)

Shop:Button("Buy Dragon Claw",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
end)

Shop:Button("Buy Superhuman",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
end)

Shop:Button("Buy Death Step",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
end)

Shop:Button("Buy Sharkman Karate",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
end)

Shop:Button("Buy Electric Claw",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
end)

Shop:Button("Buy Dragon Talon",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
end)

Shop:Button("Buy God Human",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
end)

Shop:Seperator("MiscShop")

Shop:Button("Cutlass",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
end)

Shop:Button("Katana",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
end)

Shop:Button("Iron Mace",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
end)

Shop:Button("Duel Katana",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
end)

Shop:Button("Triple Katana", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
end)

Shop:Button("Pipe",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
end)

Shop:Button("Dual Headed Blade",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
end)

Shop:Button("Bisento",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
end)

Shop:Button("Soul Cane",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
end)

Shop:Button("Stat Refund",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
end)

Shop:Button("Buy Surprise",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
end)





local TimeRaid = Raid:Label("Wait For Dungeon")
    
    spawn(function()
        pcall(function()
            while wait() do
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                    TimeRaid:Set(game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Text)
                else
                    TimeRaid:Set("Wait For Dungeon")
                end
            end
        end)
    end)
    
Raid:Toggle("Auto Raid Hop",_G.Setting_table.Auto_Raid_Hop,function(vu)
	Auto_Raid = vu
	_G.Setting_table.Auto_Raid_Hop = vu
	Update_Setting(getgenv()['MyName'])
end)

Raid:Toggle("Auto Raid Normal [One Click]",_G.Setting_table.Auto_Raid,function(vu)
	Auto_Raid = vu
	_G.Setting_table.Auto_Raid = vu
	Update_Setting(getgenv()['MyName'])
end)

Raid:Toggle("Auto Aweak",_G.Setting_table.Auto_Awaken,function(vu)
	_G.Setting_table.Auto_Awaken = vu
	Update_Setting(getgenv()['MyName'])
end)

Map = {
	"Dark",
	"Sand",
	"Magma",
	"Rumble",
	"Flame",
	"Ice",
	"Light",
	"Quake",
	"Human: Buddha",
	"Flame",
	"Bird: Phoenix",
	"Dough"
}

Raid:Dropdown("Select Dungeon",Map,function(vu)
	_G.Setting_table.Select_Map = vu
	Update_Setting(getgenv()['MyName'])
end)



Raid:Toggle("Get Fruit Inventory",_G.Setting_table.Get_Fruit,function(vu)
	_G.Setting_table.Get_Fruit = vu
	Update_Setting(getgenv()['MyName'])
end)

spawn(function()
	while wait(.5) do
		pcall(function()
			if _G.Setting_table.Get_Fruit then
				if Inventory_Fruit then
					Inventory_Fruit = nil
				end
				fruit = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
				for i,v in pairs(fruit) do
					if v["Price"] < 10000000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",v["Name"])
					end
				end
			else
				wait(2)
			end
		end)
	end
end)


if _G.Setting_table.Auto_Raid_Hop then
	Auto_Raid = true
end

if type(_G.Setting_table.Select_Map) ~= 'string' then
	_G.Setting_table.Select_Map = "Flame"
end

function Buy_Chip()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.Setting_table.Select_Map)
end

    spawn(function()
        pcall(function() 
            while wait() do
                if Auto_Raid then
                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                pcall(function()
                                    repeat wait()
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        v.Humanoid.Health = 0
                                        v.HumanoidRootPart.CanCollide = false
                                    until not Auto_Raid or not v.Parent or v.Humanoid.Health <= 0
                                end)
                            end
                        end
                    end
                end
            end
        end)
    end)
   

    spawn(function()
	while wait(.5) do
		pcall(function()
			if Auto_Raid then
				if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
					for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
						if v.Name == "Island 5" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2300 then
							TP2(v.CFrame*CFrame.new(0,70,0))
						end
					end
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
					for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
						if v.Name == "Island 4" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
							TP2(v.CFrame*CFrame.new(0,70,0))
						--wait(2)
						end
					end
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
					for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
						if v.Name == "Island 3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2100 then
							TP2(v.CFrame*CFrame.new(0,70,0))
							--wait(2)
						end
					end
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
					for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
						if v.Name == "Island 2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
							TP2(v.CFrame*CFrame.new(0,10,0))
							--wait(2)
						end
					end
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
					for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
						if v.Name == "Island 1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
							TP2(v.CFrame*CFrame.new(0,70,0))
							--wait(2)
						end
					end
				else
					wait(1)
				end
			else
				wait(2)
			end
		end)
	end
end)
    
spawn(function()
	while wait(2) do
		pcall(function()
			if Auto_Raid_Farm then
				if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
					_G.Stop_Tween = true
				elseif game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
					_G.Stop_Tween = false
				end
			end
		end)
	end
end)

function Raid_FG()
	for i,v6 in pairs(game:GetService("Workspace"):GetChildren()) do
		if v6:IsA ("Tool") and (v6.Handle.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 13000 then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v6.Handle.CFrame
			v6.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		end
	end
	wait(1)
	Inventory_Fruit = nil
	Get_Fruit_Inventory()
	Get_Fruit_Backpack()
	Get_Fruit_Character()
	if _G.Have_Fruit then
		Mix_Farm = true
		Raid_FG_Ex = true
		Auto_Raid = true
	elseif _G.Setting_table.Melee_Hop then
		HopServer()
		wait(50)
	elseif _G.Setting_table.Phoenix_Hop then
		HopServer()
		wait(50)
	elseif _G.Setting_table.Race_Hop then
		HopServer()
		wait(50)
	elseif _G.Setting_table.Auto_Pole_V2_Hop then
		HopServer()
		wait(50)
	elseif Raid_FG_Ex then
		Mix_Farm = nil
		Raid_FG_Ex = nil
		Auto_Raid = nil
	elseif not _G.Have_Fruit then
		Library:Notify("ไม่มีผลปีศาจเหลือ\nไม่สามารถลงดันได้")
	end
end

spawn(function()
	while wait(.5) do
		pcall(function()
			if Auto_Raid then
				if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
					if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
						Auto_Raid_Farm = true
						Mix_Farm = true
						if New_World then
							fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
							repeat wait(1)
							until game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true
						elseif Three_World then
							fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
							repeat wait(1)
							until game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true
						end
					else
						if _G.Setting_table.Auto_Raid_Hop or _G.Setting_table.Melee_Hop or Auto_Phoenix_Awaken then
							_G.Have_Fruit = nil
							Raid_FG()
						end
						Buy_Chip()
						wait(1)
						if _G.Setting_table.Auto_Raid_Hop and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
							HopServer()
						elseif Auto_Raid_Farm and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
							Mix_Farm = nil
							_G.Stop_Tween = nil
							Auto_Raid_Farm = nil
							Library:Notify("ไม่มีผลปีศาจเหลือแล้ว")
						end
					end
				elseif game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
					repeat wait(1)
					until game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false
					if _G.Setting_table.Auto_Awaken then
						wait(2)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
					end
				end
			end
		end)
	end
end)

if New_World then
        Raid:Button("Teleport to Lab",function()
            TP2(CFrame.new(-6438.73535, 250.645355, -4501.50684))
            end)
    elseif Three_World then
        Raid:Button("Teleport to Lab",function()
            TP2(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818))
        end)
    end
    
    if New_World then
        Raid:Button("Awakening Room",function()
            TP2(CFrame.new(266.227783, 1.39509034, 1857.00732))
        end)
    elseif Three_World then
        Raid:Button("Awakening Room",function()
            TP2(CFrame.new(-11571.440429688, 49.172668457031, -7574.7368164062))
        end)
    end
    
Raid:Seperator("Law Boss")
	

	Raid:Toggle("Auto Law Boss",_G.Setting_table.Raw,function(vu)
		Auto_Raw = vu
		_G.Setting_table.Raw = vu
		Update_Setting(getgenv()['MyName'])
	end)

	spawn(function()
		pcall(function()
			while wait() do
				if Auto_Raw then
					if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") and not game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") and not game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
						wait(3)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Microchip","1")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Microchip","2")
					end
				end
			end
		end)
	end)
	
	spawn(function()
		pcall(function()
			while wait(.1) do
				if Auto_Raw then
					if not game:GetService("Workspace").Enemies:FindFirstChild("Order") and not game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") then
							fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
						end
					end
					if game:GetService("ReplicatedStorage"):FindFirstChild("Order") or game:GetService("Workspace").Enemies:FindFirstChild("Order") then
						if game:GetService("Workspace").Enemies:FindFirstChild("Order") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Order" then
									repeat game:GetService("RunService").Heartbeat:wait()
										EquipWeapon(_G.Setting_table.Weapon)
										TP(v.HumanoidRootPart.CFrame * CFrame.new(0,50,25))
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(120, 120, 120)
										FastAttack = true
									until not v.Parent or v.Humanoid.Health <= 0 or Auto_Raw == false
									FastAttack = false
								end
							end
						elseif game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
							FastAttack = false
							TP(CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875))
						end
					end
				end
			end
		end)
	end)

Raid:Seperator("Esp")

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
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
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
						v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
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
function UpdateChestChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if string.find(v.Name,"Chest") then
				if ChestESP then
					if string.find(v.Name,"Chest") then
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
							if v.Name == "Chest1" then
								name.TextColor3 = Color3.fromRGB(109, 109, 109)
								name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
							end
							if v.Name == "Chest2" then
								name.TextColor3 = Color3.fromRGB(173, 158, 21)
								name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
							end
							if v.Name == "Chest3" then
								name.TextColor3 = Color3.fromRGB(85, 255, 255)
								name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
							end
						else
							v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
						end
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
						name.TextColor3 = Color3.fromRGB(255, 0, 0)
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
					else
						v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
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
							name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
							name.TextColor3 = Color3.fromRGB(0, 0, 255)
						end
						if v.Name == "Flower2" then
							name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
							name.TextColor3 = Color3.fromRGB(255, 0, 0)
						end
					else
						v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
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
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
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
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
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
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
end
function UpdateAfdESP() 
    for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
        pcall(function()
            if _G.Setting_table.AfdESP then 
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
function UpdateIsland() 
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if Islandesp then 
                if v.Name ~= "Sea" then
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
Raid:Toggle("Esp Players",_G.Setting_table.ESPPlayer,function(vu)
	ESPPlayer = vu
	_G.Setting_table.ESPPlayer = vu
	UpdatePlayerChams()
end)

Raid:Toggle("Esp Chests",_G.Setting_table.ChestESP,function(vu)
	ChestESP = vu
	_G.Setting_table.ChestESP = vu
	UpdateChestChams()
end)

Raid:Toggle("ESP Island",_G.Setting_table.Islandesp,function(vu)
	Islandesp = vu
	_G.Setting_table.Islandesp = vu
	UpdateIsland()
end)

Raid:Toggle("ESP Fruit Spawn",_G.Setting_table.RealFruitESP,function(vu)
	RealFruitESP = vu
	_G.Setting_table.RealFruitESP = vu
	UpdateRealFruitChams()
end)

Raid:Toggle("ESP Devil Fruit",_G.Setting_table.DevilFruitESP,function(vu)
	DevilFruitESP = vu
	_G.Setting_table.DevilFruitESP = vu
	UpdateDevilChams() 
end)

Raid:Toggle("ESP Fruit Spawn",_G.Setting_table.RealFruitESP,function(vu)
	RealFruitESP = vu
	_G.Setting_table.RealFruitESP = vu
	UpdateRealFruitChams()
end)



spawn(function()
	while wait() do
		if DevilFruitESP then
			UpdateDevilChams() 
		end
		if ChestESP then
			UpdateChestChams() 
		end
		if ESPPlayer then
			UpdatePlayerChams()
		end
		if RealFruitESP then
			UpdateRealFruitChams()
		end
		if Islandesp then
			UpdateIsland()
		end
		if New_World then
			if FlowerESP then
				UpdateFlowerChams() 
			end
		end
	end
end)




TPKub:Seperator("Wrold")

TPKub:Button("Travel Main",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
end)


TPKub:Button("Travel Dressrosa",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
end)

TPKub:Button("Travel Zou",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
end)

if Old_World then
	Island = {
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
		}
elseif New_World then  
	Island = {
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
		}
else
	Island = {
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
		"Coco Island",
		"Candy Island"
		}	
end

TPKub:Seperator("Teleport")

TPKub:Dropdown("Select Island",Island,function(vu)
	_G.Select_Island = vu
	_G.Setting_table.Select_Island = vu
end)

TPKub:Button("Teleport Island BypassTeleport",function()
	TPIS()
end)

function TPIS()
	repeat wait()
		if _G.Select_Island == "WindMill" then
			TelePBoss(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
		elseif _G.Select_Island == "Marine" then
			TelePBoss(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
		elseif _G.Select_Island == "Middle Town" then
			TelePBoss(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
		elseif _G.Select_Island == "Jungle" then
			TelePBoss(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
		elseif _G.Select_Island == "Pirate Village" then
			TelePBoss(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
		elseif _G.Select_Island == "Desert" then
			TelePBoss(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
		elseif _G.Select_Island == "Snow Island" then
			TelePBoss(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
		elseif _G.Select_Island == "MarineFord" then
			TelePBoss(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
		elseif _G.Select_Island == "Colosseum" then
			TelePBoss( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
		elseif _G.Select_Island == "Sky Island 1" then
			TelePBoss(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
		elseif _G.Select_Island == "Sky Island 2" then  
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
		elseif _G.Select_Island == "Sky Island 3" then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
		elseif _G.Select_Island == "Prison" then
			TelePBoss( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
		elseif _G.Select_Island == "Magma Village" then
			TelePBoss(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
		elseif _G.Select_Island == "Under Water Island" then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
		elseif _G.Select_Island == "Fountain City" then
			TelePBoss(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
		elseif _G.Select_Island == "Shank Room" then
			TelePBoss(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
		elseif _G.Select_Island == "Mob Island" then
			TelePBoss(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
		elseif _G.Select_Island == "The Cafe" then
			TelePBoss(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
		elseif _G.Select_Island == "Frist Spot" then
			TelePBoss(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
		elseif _G.Select_Island == "Dark Area" then
			TelePBoss(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
		elseif _G.Select_Island == "Flamingo Mansion" then
			TelePBoss(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
		elseif _G.Select_Island == "Flamingo Room" then
			TelePBoss(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
		elseif _G.Select_Island == "Green Zone" then
			TelePBoss( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
		elseif _G.Select_Island == "Factory" then
			TelePBoss(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
		elseif _G.Select_Island == "Colossuim" then
			TelePBoss( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
		elseif _G.Select_Island == "Zombie Island" then
			TelePBoss(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
		elseif _G.Select_Island == "Two Snow Mountain" then
			TelePBoss(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
		elseif _G.Select_Island == "Punk Hazard" then
			TelePBoss(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
		elseif _G.Select_Island == "Cursed Ship" then
			TelePBoss(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
		elseif _G.Select_Island == "Ice Castle" then
			TelePBoss(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
		elseif _G.Select_Island == "Forgotten Island" then
			TelePBoss(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
		elseif _G.Select_Island == "Ussop Island" then
			TelePBoss(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
		elseif _G.Select_Island == "Mini Sky Island" then
			TelePBoss(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
		elseif _G.Select_Island == "Great Tree" then
			TelePBoss(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
		elseif _G.Select_Island == "Castle On The Sea" then
			TelePBoss(CFrame.new(-5074.45556640625, 314.5155334472656, -2991.054443359375))
		elseif _G.Select_Island == "MiniSky" then
			TelePBoss(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
		elseif _G.Select_Island == "Port Town" then
			TelePBoss(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
		elseif _G.Select_Island == "Hydra Island" then
			TelePBoss(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
		elseif _G.Select_Island == "Floating Turtle" then
			TelePBoss(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
		elseif _G.Select_Island == "Mansion" then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
		elseif _G.Select_Island == "Haunted Castle" then
			TelePBoss(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
		elseif _G.Select_Island == "Ice Cream Island" then
			TelePBoss(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
		elseif _G.Select_Island == "Peanut Island" then
			TelePBoss(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
		elseif _G.Select_Island == "Cake Island" then
			TelePBoss(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
		elseif _G.Select_Island == "Coco Island" then
			TelePBoss(CFrame.new(67.0007935, 24.760025, -12050.1963, -0.665517807, -1.17702537e-09, 0.746381998, 3.25347194e-09, 1, 4.47796022e-09, -0.746381998, 5.40849499e-09, -0.665517807))
		elseif _G.Select_Island == "Candy Island" then
			TelePBoss(CFrame.new(-1047.63477, 6.48305178, -13994.9961, -0.991097987, 0, -0.133134499, 0, 1, 0, 0.133134499, 0, -0.991097987))
		end
	until not _G.Start_Tween_Island
end

TPKub:Seperator("Teleport Tween ")

if Old_World then

    TPKub:Button("Jones Salad", function()
        TP2(CFrame.new(1042.1501464844, 16.299360275269, 1444.3442382813))
    end)

    TPKub:Button("Marine1", function()
        TP2(CFrame.new(-2599.6655273438, 6.9146227836609, 2062.2216796875))
    end)

    TPKub:Button("Marine2", function()
        TP2(CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188))
    end)

    TPKub:Button("Midle Town", function()
        TP2(CFrame.new(-655.97088623047, 7.878026008606, 1573.7612304688))
    end)

    TPKub:Button("Jungle", function()
        TP2(CFrame.new(-1499.9877929688, 22.877912521362, 353.87060546875))
    end)

    TPKub:Button("Pirate Village", function()
        TP2(CFrame.new(-1163.3889160156, 44.777843475342, 3842.8276367188))
    end)

    TPKub:Button("Desert", function()
        TP2(CFrame.new(954.02056884766, 6.6275520324707, 4262.611328125))
    end)

    TPKub:Button("Frozen Village", function()
        TP2(CFrame.new(1144.5270996094, 7.3292083740234, -1164.7322998047))
    end)

    TPKub:Button("Colosseum", function()
        TP2(CFrame.new(-1667.5869140625, 39.385631561279, -3135.5817871094))
    end)

    TPKub:Button("Prison", function()
        TP2(CFrame.new(4857.6982421875, 5.6780304908752, 732.75750732422))
    end)

    TPKub:Button("Mob Leader", function()
        TP2(CFrame.new(-2841.9604492188, 7.3560485839844, 5318.1040039063))
    end)

    TPKub:Button("Magma Village", function()
        TP2(CFrame.new(-5328.8740234375, 8.6164798736572, 8427.3994140625))
    end)

    TPKub:Button("UnderWater Gate", function()
        TP2(CFrame.new(3893.953125, 5.3989524841309, -1893.4851074219))
    end)

    TPKub:Button("UnderWater City", function()
        TP2(CFrame.new(61191.12109375, 18.497436523438, 1561.8873291016))
    end)

    TPKub:Button("Fountain City", function()
        TP2(CFrame.new(5244.7133789063, 38.526943206787, 4073.4987792969))
    end)

    TPKub:Button("Sky1", function()
        TP2(CFrame.new(-4878.0415039063, 717.71246337891, -2637.7294921875))
    end)

    TPKub:Button("Sky2", function()
        TP2(CFrame.new(-7899.6157226563, 5545.6030273438, -422.21798706055))
    end)

    TPKub:Button("Sky3", function()
        TP2(CFrame.new(-7868.5288085938, 5638.205078125, -1482.5548095703))
    end)

elseif New_World then


    TPKub:Button("Dock", function()
        TP2(CFrame.new(-12.519311904907, 19.302536010742, 2827.853515625))
    end)

    TPKub:Button("Mansion", function()
        TP2(CFrame.new(-390.34829711914, 321.89730834961, 869.00506591797))
    end)

    TPKub:Button("Kingdom Of Rose", function()
        TP2(CFrame.new(-388.29895019531, 138.35575866699, 1132.1662597656))
    end)

    TPKub:Button("Cafe", function()
        TP2(CFrame.new(-379.70889282227, 73.0458984375, 304.84692382813))
    end)

    TPKub:Button("Sunflower Field", function()
        TP2(CFrame.new(-1576.7171630859, 198.61849975586, 13.725157737732))
    end)

    TPKub:Button("Jeramy Mountain", function()
        TP2(CFrame.new(1986.3519287109, 448.95678710938, 796.70239257813))
    end)

    TPKub:Button("Colossuem", function()
        TP2(CFrame.new(-1871.8974609375, 45.820514678955, 1359.6843261719))
    end)

    TPKub:Button("Factory", function()
        TP2(CFrame.new(349.53750610352, 74.446998596191, -355.62420654297))
    end)

    TPKub:Button("The Bridge", function()
        TP2(CFrame.new(-1860.6354980469, 88.384948730469, -1859.1593017578))
    end)

    TPKub:Button("Green Bit", function()
        TP2(CFrame.new(-2202.3706054688, 73.097663879395, -2819.2687988281))
    end)

    TPKub:Button("Graveyard", function()
        TP2(CFrame.new(-5617.5927734375, 492.22183227539, -778.3017578125))
    end)

    TPKub:Button("Dark Area", function()
        TP2(CFrame.new(3464.7700195313, 13.375151634216, -3368.90234375))
    end)

    TPKub:Button("Snow Mountain", function()
        TP2(CFrame.new(561.23834228516, 401.44781494141, -5297.14453125))
    end)

    TPKub:Button("Hot Island", function()
        TP2(CFrame.new(-5505.9633789063, 15.977565765381, -5366.6123046875))
    end)

    TPKub:Button("Cold Island", function()
        TP2(CFrame.new(-5924.716796875, 15.977565765381, -4996.427734375))
    end)

    TPKub:Button("Ice Castle", function()
        TP2(CFrame.new(6111.7109375, 294.41259765625, -6716.4829101563))
    end)

    TPKub:Button("Usopp's Island", function()
        TP2(CFrame.new(4760.4985351563, 8.3444719314575, 2849.2426757813))
    end)

    TPKub:Button("inscription Island", function()
        TP2(CFrame.new(-5099.01171875, 98.241539001465, 2424.4035644531))
    end)

    TPKub:Button("Forgotten Island", function()
        TP2(CFrame.new(-3051.9514160156, 238.87203979492, -10250.807617188))
    end)

    TPKub:Button("Ghost Ship", function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
    end)

    TPKub:Button("Mini Sky", function()
        TP2(CFrame.new(-262.11901855469, 49325.69140625, -35272.49609375))
    end)

elseif Three_World  then
    TPKub:Button("Port Town", function()
        TP2(CFrame.new(-275.21615600586, 43.755737304688, 5451.0659179688))
    end)

    TPKub:Button("Hydra Island", function()
        TP2(CFrame.new(5541.2685546875, 668.30456542969, 195.48069763184))
    end)
    
    TPKub:Button("Gaint Tree", function()
        TP2(CFrame.new(2276.0859375, 25.87850189209, -6493.03125))
    end)
    
    TPKub:Button("Zou Island", function()
        TP2(CFrame.new(-10034.40234375, 331.78845214844, -8319.6923828125))
    end)
    
    TPKub:Button("PineApple Village", function()
        TP2(CFrame.new(-11172.950195313, 331.8049621582, -10151.033203125))
    end)
    
    TPKub:Button("Mansion", function()
        TP2(CFrame.new(-12548.998046875, 332.40396118164, -7603.1865234375))
    end)

    TPKub:Button("Castle on the Sea", function()
        TP2(CFrame.new(-5498.0458984375, 313.79473876953, -2860.6022949219))
    end)

    TPKub:Button("Graveyard Island", function()
        TP2(CFrame.new(-9515.07324, 142.130615, 5537.58398))
    end)
    TPKub:Button("Haunted Castle",function()
        TP2(CFrame.new(-8932.86, 143.258, 6063.31))
    end)
    TPKub:Button("Raid Lab", function()
        TP2(CFrame.new(-5057.146484375, 314.54132080078, -2934.7995605469))
    end)

    TPKub:Button("Mini Sky", function()
        TP2(CFrame.new(-263.66668701172, 49325.49609375, -35260))
    end)
    TPKub:Button("Ice Cream Island",function()
        TP2(CFrame.new(-691.829, 371.943, -11106.4))
    end)
    TPKub:Button("Soa of Cake",function()
        TP2(CFrame.new(-2073.262451171875, 37.16134262084961, -10183.3271484375))
    end)
    TPKub:Button("Cake Loaf",function()
        TP2(CFrame.new(-2099.33, 66.9971, -12128.6))
    end)
end


function activatefly()
	local mouse=game.Players.LocalPlayer:GetMouse''
	localplayer=game.Players.LocalPlayer
	game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
	local torso = game.Players.LocalPlayer.Character.HumanoidRootPart
	local keys={a=false,d=false,w=false,s=false}
	local e1
	local e2
	local function start()
		local pos = Instance.new("BodyPosition",torso)
		local gyro = Instance.new("BodyGyro",torso)
		pos.Name="EPIXPOS"
		pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		pos.position = torso.Position
		gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		gyro.cframe = torso.CFrame
		repeat
			wait()
			localplayer.Character.Humanoid.PlatformStand=true
			local new=gyro.cframe - gyro.cframe.p + pos.position
			if not keys.w and not keys.s and not keys.a and not keys.d then
				speed=1
			end
			if keys.w then
				new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
				speed=speed+speedSET
			end
			if keys.s then
				new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
				speed=speed+speedSET
			end
			if keys.d then
				new = new * CFrame.new(speed,0,0)
				speed=speed+speedSET
			end
			if keys.a then
				new = new * CFrame.new(-speed,0,0)
				speed=speed+speedSET
			end
			if speed>speedSET then
				speed=speedSET
			end
				pos.position=new.p
			if keys.w then
				gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*15),0,0)
			elseif keys.s then
				gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*15),0,0)
			else
				gyro.cframe = workspace.CurrentCamera.CoordinateFrame
			end
		until not Fly
		if gyro then 
			gyro:Destroy() 
		end
		if pos then 
			pos:Destroy() 
		end
		flying=false
		localplayer.Character.Humanoid.PlatformStand=false
		speed=0
	end
	e1=mouse.KeyDown:connect(function(key)
		if not torso or not torso.Parent then 
			flying=false e1:disconnect() e2:disconnect() return 
		end
		if key=="w" then
			keys.w=true
		elseif key=="s" then
			keys.s=true
		elseif key=="a" then
			keys.a=true
		elseif key=="d" then
			keys.d=true
		end
	end)
	e2=mouse.KeyUp:connect(function(key)
		if key=="w" then
			keys.w=false
		elseif key=="s" then
			keys.s=false
		elseif key=="a" then
			keys.a=false
		elseif key=="d" then
			keys.d=false
		end
	end)
	start()
end

Py:Toggle("Fly",_G.Setting_table.Fly,function(vu)
	Fly = vu
	_G.Setting_table.Fly = vu
	Update_Setting(getgenv()['MyName'])
	if vu then
		activatefly()
	end
end)

Py:Slider("Speed ",1,50,16,function(vu)
	speedSET = vu
	_G.Setting_table.Speed = vu
	Update_Setting(getgenv()['MyName'])
end)

Py:Seperator("Miscpvp")

Py:Toggle("Auto PvP Turn On",_G.Setting_table.Auto_PvP_Turn_On,function(vu)
	_G.Setting_table.Auto_PvP_Turn_On = vu
	Update_Setting(getgenv()['MyName'])
end)
spawn(function()
	while wait(1) do
		pcall(function()
			if _G.Setting_table.Auto_PvP_Turn_On then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
			end
		end)
	end
end)
Py:Toggle("Auto Teleport To Position Spawn",_G.Setting_table.TP_Position_Spawn,function(vu)
	_G.Setting_table.TP_Position_Spawn = vu
	Update_Setting(getgenv()['MyName'])
end)
spawn(function()
	while wait(1) do
		pcall(function()
			if _G.Setting_table.TP_Position_Spawn then
				if _G.Setting_table.Pos_Spawn ~= nil and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
					TP(_G.Setting_table.Pos_Spawn)
				end
			end
		end)
	end
end)
Py:Button("Set Position Spawn",function()
	_G.Setting_table.Pos_Spawn = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	Update_Setting(getgenv()['MyName'])
	Com()
end)
Py:Seperator("Bounty")
	Py:Toggle("Aattack",false,function(vu)
		Attack = vu
	end)
	PlayerName = {}
	for i,v in pairs(game.Players:GetChildren()) do  
		table.insert(PlayerName ,v.Name)
	end
	SelectedKillPlayer = "..."
	local Sl_P = Py:Dropdown("Select Player",PlayerName,function(vu)
		SelectedKillPlayer = vu
	end)
	Py:Button("Refresh Select Player",function()
		Sl_P:Clear()
		for i,v in pairs(game.Players:GetChildren()) do  
			Sl_P:Add(v.Name)
		end
	end)
	Py:Toggle("Spectate Player",false,function(value)
        SpectatePlys = value
        local plr1 = game:GetService("Players").LocalPlayer.Character.Humanoid
        local plr2 = game:GetService("Players"):FindFirstChild(SelectedKillPlayer)
        repeat wait(.1)
            game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players"):FindFirstChild(SelectedKillPlayer).Character.Humanoid
        until SpectatePlys == false 
        game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
    end)
	spawn(function()
		local gg = getrawmetatable(game)
		local old = gg.__namecall
		setreadonly(gg,false)
		gg.__namecall = newcclosure(function(...)
			local method = getnamecallmethod()
			local args = {...}
			if tostring(method) == "FireServer" then
				if tostring(args[1]) == "RemoteEvent" then
					if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
						if UseSkillMasteryDevilFruit then
							args[2] = PositionSkillMasteryDevilFruit
							return old(unpack(args))
						elseif Skillaimbot then
							args[2] = AimBotSkillPosition
							return old(unpack(args))
						end
					end
				end
			end
			return old(...)
		end)
	end)
	Py:Toggle("Teleport to player",false,function(value)
        _G.TeleportPly = value
        pcall(function()
            if _G.TeleportPly then
                repeat TP(game:GetService("Players")[SelectedKillPlayer].Character.HumanoidRootPart.CFrame) wait() until _G.TeleportPly == false
            end
        end)
    end)
	Py:Toggle("Teleport Player Bypass",false,function(bool)
                                    _G.Teleport = bool
                                    if _G.Teleport == false then
                                        game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                                    end
                                    while _G.Teleport do task.wait()
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 0)
                                        game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    end
                                end)
	Py:Toggle("Aimbot Gun",false,function(vu)
		Aimbot = vu
		if vu then
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
				if v:IsA("Tool") then
					if v:FindFirstChild("RemoteFunctionShoot") then 
						SelectToolWeaponGun = v.Name
					end
				end
			end
			for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
				if v:IsA("Tool") then
					if v:FindFirstChild("RemoteFunctionShoot") then 
						SelectToolWeaponGun = v.Name
					end
				end
			end
		end
	end)
	Py:Toggle("Aimbot Skill",false,function(vu)
		Skillaimbot = vu
		if Skillaimbot then
			if game.Players:FindFirstChild(SelectedKillPlayer) and game.Players:FindFirstChild(SelectedKillPlayer).Character:FindFirstChild("HumanoidRootPart") and game.Players:FindFirstChild(SelectedKillPlayer).Character:FindFirstChild("Humanoid") and game.Players:FindFirstChild(SelectedKillPlayer).Character.Humanoid.Health > 0 then
				AimBotSkillPosition = game.Players:FindFirstChild(SelectedKillPlayer).Character:FindFirstChild("HumanoidRootPart").Position
			end
		end
	end)
	local lp = game:GetService('Players').LocalPlayer
	local mouse = lp:GetMouse()
	mouse.Button1Down:Connect(function()
		if Aimbot and game.Players.LocalPlayer.Character:FindFirstChild(SelectToolWeaponGun) and game:GetService("Players"):FindFirstChild(SelectedKillPlayer) then
			tool = game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun]
			v17 = workspace:FindPartOnRayWithIgnoreList(Ray.new(tool.Handle.CFrame.p, (game:GetService("Players"):FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Position - tool.Handle.CFrame.p).unit * 100), { game.Players.LocalPlayer.Character, workspace._WorldOrigin });
			game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(game:GetService("Players"):FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Position, (require(game.ReplicatedStorage.Util).Other.hrpFromPart(v17)));
		end
	end)
	
	Py:Seperator("Boats Menu")

BoatsName = {}

for i,v in pairs(game:GetService("Workspace").Boats:GetChildren()) do  
  table.insert(BoatsName ,v.Name)
end

local Boats = Py:Dropdown("Selected Boats",BoatsName,function(plys)
  _G.SelectB = plys
end)
    
Py:Button("Refrsh Boats",function()
  BoatsName = {}
  Boats:Clear()
  for i,v in pairs(game:GetService("Workspace").Boats:GetChildren()) do  
     Boats:Add(v.Name)
  end
end)

Py:Button("Bring Boats",function()
   game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Boats[_G.SelectB].VehicleSeat.CFrame
end)

Py:Toggle("Teleport to Boats",_G.TPB,function(bool)
   _G.TPB = bool       
 StopTween(_G.TPB)

   if _G.TPB then
       _G.Boats = true
       while _G.Boats do wait()
           Distance = (game:GetService("Workspace").Boats[_G.SelectB].VehicleSeat.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
           Speed = 220
           tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
           tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("Workspace").Boats[_G.SelectB].VehicleSeat.CFrame})
           tween:Play()
           _G.Clip = true
           wait(Distance/Speed)
       end
   elseif _G.TPB == false then
       _G.Boats = false
       while _G.Boats do wait()
           Distance = (game:GetService("Workspace").Boats[_G.SelectB].VehicleSeat.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
           Speed = 220
           tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
           tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("Workspace").Boats[_G.SelectB].VehicleSeat.CFrame})
           tween:Play()
           _G.Clip = true
           wait(Distance/Speed)
       end
       tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(.1, Enum.EasingStyle.Linear)
       tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame})
       tween:Play()
       _G.Clip = false
   end
end)

Py:Toggle("Spectate Boats",false,function(bool)
  Sp = bool
  local plr1 = game.Players.LocalPlayer.Character.Humanoid
  local plr2 = game:GetService("Workspace").Boats:FindFirstChild(_G.SelectB)
  repeat wait(.1)
     game.Workspace.Camera.CameraSubject = game:GetService("Workspace").Boats[_G.SelectB].VehicleSeat
  until Sp == false 
  game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
end)

Py:Seperator("Server")
    
    spawn(function()
        while wait() do
            pcall(function()
                JobAiDee:Set("Job ID :".." "..game.JobId)
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                CrewAiDee:Set("Crew ID :".." "..game:GetService("Players").LocalPlayer.Data.CrewID.Value)
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                Cframe:Set("Your CFrame : "..tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position))
            end)
        end
    end)
    
    Cframe = Py:Label("Your Frame : ")
    
    JobAiDee = Py:Label("Job ID : ")
    
    CrewAiDee = Py:Label("Crew ID : ")
    
    Py:Button("Copy Job Id",function()
    setclipboard(game.JobId)
    end)
    
    Py:Textbox("Place Job Idl",true,function(value)
    Server_ID = value
    end)
    
    
    Py:Button("Join Server",function()
    game.ReplicatedStorage['__ServerBrowser']:InvokeServer('teleport',"'"..Server_ID.."'")
    end)
    
    Py:Button("Rejoin Server",function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
    end)
    
    Py:Button("Server Hop",function()
        Hop()
    end)
    
    Py:Button("Hop To Lower Player",function()
        getgenv().AutoTeleport = true
        getgenv().DontTeleportTheSameNumber = true 
        getgenv().CopytoClipboard = false
        if not game:IsLoaded() then
            print("Game is loading waiting...")
        end
        local maxplayers = math.huge
        local serversmaxplayer;
        local goodserver;
        local gamelink = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100" 
        function serversearch()
            for _, v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink)).data) do
                if type(v) == "table" and v.playing ~= nil and maxplayers > v.playing then
                    serversmaxplayer = v.maxPlayers
                    maxplayers = v.playing
                    goodserver = v.id
                end
            end       
        end
        function getservers()
            serversearch()
            for i,v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink))) do
                if i == "nextPageCursor" then
                    if gamelink:find("&cursor=") then
                        local a = gamelink:find("&cursor=")
                        local b = gamelink:sub(a)
                        gamelink = gamelink:gsub(b, "")
                    end
                    gamelink = gamelink .. "&cursor=" ..v
                    getservers()
                end
            end
        end 
        getservers()
        if AutoTeleport then
            if DontTeleportTheSameNumber then 
                if #game:GetService("Players"):GetPlayers() - 4  == maxplayers then
                    return warn("It has same number of players (except you)")
                elseif goodserver == game.JobId then
                    return warn("Your current server is the most empty server atm") 
                end
            end
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, goodserver)
        end
    end)
    
    Py:Button("Open Devil Shop",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
    end)
    
    Py:Button("Open Inventory",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")
        wait(1)
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = true
    end)
    
    Py:Button("Open Inventory Fruit",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true
    end)
    
    Py:Button("Title Name",function()
    local args = {
        [1] = "getTitles"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
end)

Py:Button("Color Haki",function()
    game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
end)

Py:Seperator("Abilities")
Py:Toggle("Soru No Cooldown",_G.Setting_table.Sorunocool,function(vu)
	Sorunocool = vu
	_G.Setting_table.Sorunocool = vu
	if vu then
		NoSoruCool()
	end
	Update_Setting(getgenv()['MyName'])
end)
function NoSoruCool()
    for i, v in pairs(getgc()) do
        if type(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character:WaitForChild("Soru") then
            for i2,v2 in pairs(debug.getupvalues(v)) do
                if type(v2) == 'table' then
                    if v2.LastUse then
                        repeat wait()
                            setupvalue(v, i2, {LastAfter = 0,LastUse = 0})
                        until not Sorunocool
                    end
                end
            end
        end
    end
end
Py:Toggle("Dodge No Cooldown",_G.Setting_table.Dodge_No_Cooldown,function(vu)
	nododgecool = vu
	_G.Setting_table.Dodge_No_Cooldown  = vu
	Update_Setting(getgenv()['MyName'])
    if vu then
        NoDodgeCool()
    end
end)
	function NoDodgeCool()
		if nododgecool then
			for i,v in next, getgc() do
				if game.Players.LocalPlayer.Character.Dodge then
					if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Dodge then
						for i2,v2 in next, getupvalues(v) do
							if tostring(v2) == "0.4" then
								repeat wait(.1)
									setupvalue(v,i2,0)
								until not nododgecool
							end
						end
					end
				end
			end
		end
	end
Py:Toggle("Infinity Geppo",_G.Setting_table.Infinity_Geppo,function(vu)
	noGeppocool = vu
	_G.Setting_table.Infinity_Geppo = vu
	Update_Setting(getgenv()['MyName'])
    if vu then
        NoGeppoCool()
    end
end)
function NoGeppoCool()
    if noGeppocool then
        for i,v in next, getgc() do
            if game.Players.LocalPlayer.Character.Geppo then
                if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Geppo then
                    for i2,v2 in next, getupvalues(v) do
                        if tostring(v2) == "0" then
                            repeat wait(.1)
                                setupvalue(v,i2,0)
                            until not noGeppocool
                        end
                    end
                end
            end
        end
    end
end
Py:Toggle("Infinity Energy",_G.Setting_table.InfinitsEnergy,function(vu)
	InfinitsEnergy = vu
	if vu then
		infinitestam()
	end
	_G.Setting_table.InfinitsEnergy = vu
	Update_Setting(getgenv()['MyName'])
end)
	local LocalPlayer = game:GetService'Players'.LocalPlayer
	local originalstam = LocalPlayer.Character.Energy.Value
	function infinitestam()
		game:GetService'Players'.LocalPlayer.Character.Energy.Changed:connect(function()
			if InfinitsEnergy then
				LocalPlayer.Character.Energy.Value = originalstam
			end 
		end)
	end
	
	Py:Toggle("Walk On Water",_G.Setting_table.WalkWater,function(vu)
	_G.Setting_table.WalkWater = vu
	Update_Setting(getgenv()['MyName'])
end)

	spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Setting_table.WalkWater then
						game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
					else
						game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
					end
				end)
			end
		end)
		
		Py:Toggle("Infinite Ability",_G.Setting_table.InfAbility,function(vu)
    	_G.Setting_table.InfAbility = vu
	    Update_Setting(getgenv()['MyName'])
        if vu == false then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
        end
    end)
    
    spawn(function()
        while wait() do
            if _G.Setting_table.InfAbility then
                InfAb()
            end
        end
    end)
    
    function InfAb()
        if _G.Setting_table.InfAbility then
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

Main:Label("Makori Hub By Domadic Hub")








coroutine.wrap(function()
	while task.wait(.1) do
		local ac = CombatFrameworkR.activeController
		if ac and ac.equipped then
			if FastAttack and Fast_Attack and _G.Setting_table.FastMode == "Normal" then
				AttackFunction()
				if _G.Setting_table.FastModeD == "Normal" then
					if tick() - cooldownfastattack > 1 then wait(1) cooldownfastattack = tick() end
				elseif _G.Setting_table.FastModeD == "Fast" then
					if tick() - cooldownfastattack > 2.5 then wait(1) cooldownfastattack = tick() end
				elseif _G.Setting_table.FastModeD == "Extra" then
					if tick() - cooldownfastattack > 3.5 then wait() cooldownfastattack = tick() end
				end
			elseif FastAttack and Fast_Attack and _G.Setting_table.FastMode == "ExTra" then
				AttackNoCD()
				if _G.Setting_table.FastModeD == "Normal" then
					if tick() - cooldownfastattack > 1 then wait(1) cooldownfastattack = tick() end
				elseif _G.Setting_table.FastModeD == "Fast" then
					if tick() - cooldownfastattack > 2.5 then wait(1) cooldownfastattack = tick() end
				elseif _G.Setting_table.FastModeD == "Extra" then
					if tick() - cooldownfastattack > 3.5 then wait() cooldownfastattack = tick() end
				end
			end
		end
	end
end)()

coroutine.wrap(function()
	while task.wait(.1) do
		if DbFast and _G.Setting_table.DbFast then
			local ac = CombatFrameworkR.activeController
			if ac and ac.equipped then
				if FastAttack and _G.Setting_table.FastMode == "Normal" then
					AttackFunction()
					if _G.Setting_table.FastModeD == "Normal" then
						if tick() - cooldownfastattack > 1 then wait(1) cooldownfastattack = tick() end
					elseif _G.Setting_table.FastModeD == "Fast" then
						if tick() - cooldownfastattack > 2.5 then wait(1) cooldownfastattack = tick() end
					elseif _G.Setting_table.FastModeD == "Extra" then
						if tick() - cooldownfastattack > 3.5 then wait() cooldownfastattack = tick() end
					end
				elseif FastAttack and _G.Setting_table.FastMode == "ExTra" then
					AttackNoCD()
					if _G.Setting_table.FastModeD == "Normal" then
						if tick() - cooldownfastattack > 1 then wait(1) cooldownfastattack = tick() end
					elseif _G.Setting_table.FastModeD == "Fast" then
						if tick() - cooldownfastattack > 2.5 then wait(1) cooldownfastattack = tick() end
					elseif _G.Setting_table.FastModeD == "Extra" then
						if tick() - cooldownfastattack > 3.5 then wait() cooldownfastattack = tick() end
					end
				end
			end
		end
	end
end)()

task.spawn(function()
	while task.wait() do
		pcall(function()
			if _G.Setting_table.FastModeD == "Normal" then
				Faa:Set("ATTACK | 1 Wait | 1")
			elseif _G.Setting_table.FastModeD == "Fast" then
				Faa:Set("ATTACK | 2.5 Wait | 1")
			elseif _G.Setting_table.FastModeD == "Extra" then
				Faa:Set("ATTACK | INF Wait | 0")
			end
		end)
	end
end)

task.spawn(function()
	while task.wait() do
		pcall(function()
			if DbFast then
				db:Set("Duble Fast | Enable ")
			else
				db:Set("Duble Fast | Disable ")
			end
		end)
	end
end) 

task.spawn(function()
	while task.wait() do
		pcall(function()
			if game.Workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island") then
				mr:Set("Mirage Island : Spawn ✅")
			else
				mr:Set("Mirage Island : Not Spawn ❌")
			end
		end)
	end
end) 