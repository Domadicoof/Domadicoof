if game.PlaceId == 2753915549 or game.PlaceId == 4442272183 or game.PlaceId == 7449423635 then 
	setfpscap(999)
	_G.Color = Color3.fromRGB(0, 86, 255)
	_G.Settings = {
		Auto_Farm_Level = false,
		Auto_Farm_Fast = true,
		Auto_New_World = false,
		Auto_Third_World = false,
		Auto_Farm_Chest = false,
		Auto_Farm_Chest_Hop = false,
		Auto_Elite_Hunter = false,
		Auto_Elite_Hunter_Hop = false,
		Auto_Spawn_Cake_Prince = false,
		Auto_Cake_Prince = false,
		Auto_Farm_Boss = false,
		Select_Boss = "",
		Auto_Quest_Boss = true,
		Auto_Farm_All_Boss = false,
		SelectWeapon = "Melee",
		Auto_Set_Spawn = true,
		Method = "Upper",
		DistanceAutoFarm = 30,
		Brimob = true,
		Select_Stats = {},
		Bypass = false,
		Rejoin = true,
		FastAttack = true,
		Auto_Saber = false,
		Auto_Saber_Hop = false,
		Auto_Pole_V1_Hop = false,
		Auto_Factory_Farm = false,
		Auto_Farm_Ectoplasm = false,
		Auto_Swan_Glasses = false,
		Auto_Swan_Glasses_Hop = false,
		Auto_Farm_Bone = false,
		AutoObservation = false,
		AutoObservation_Hop = false,
		Auto_Trade_Bone = false,
		Auto_Rainbow_Haki = false,
		Auto_Rainbow_Haki_Hop = false,
		Auto_Canvander = false,
		AutoBuddySwords = false,
		AutoCavander = false,
		AutoMirageIsland = false,
		Auto_Gear = false,
		TptoKisuneIsland = false,
		NeareastFarm = false,
		TptoKisuneshrine = false,
		AutoFarmBossHallow = false,
		Auto_Twin_Hook_Hop = false,
		Auto_Twin_Hook = false,
		Auto_Serpent_Bow = false,
		Auto_Serpent_Bow_Hop = false,
		Auto_Evo_Race_V2 = false,
		Auto_Rengoku = false,
		Auto_Buy_Legendary_Sword = false,
		Auto_Buy_Enchancement = false,
		Auto_Yama = false,
		Auto_Holy_Torch = false,
		Auto_Musketeer_Hat = false,
		Auto_Superhuman = false,
		Auto_Fully_Superhuman = false,
		Auto_Death_Step = false,
		Auto_Fully_Death_Step = false,
		Auto_SharkMan_Karate = false,
		Auto_Fully_SharkMan_Karate = false,
		Auto_Electric_Claw = false,
		Auto_Dragon_Talon = false,
		Auto_God_Human = false,
		Select_Player = "",
		Spectate_Player = false,
		Teleport_to_Player = false,
		EnabledPvP = false,
		Auto_Stats = false,
		Point = 1,
		No_clip = false,
		Infinit_Energy = false,
		Dodge_No_CoolDown = false,
		Infinit_Ability = false,
		Infinit_SkyJump = false,
		Infinit_Inf_Soru = false,
		Infinit_Range_Observation_Haki = false,
		Select_Island = "",
		Start_Tween_Island = false,
		Select_Dungeon = false,
		Auto_Buy_Chips_Dungeon = false,
		Auto_Start_Dungeon = false,
		Auto_Next_Island = false,
		Kill_Aura = false,
		Auto_Awake = false,
		Auto_Buy_Law_Chip = false,
		Auto_Start_Law_Dungeon = false,
		Auto_Kill_Law = false,
		Select_Devil_Fruit = "",
		Auto_Buy_Devil_Fruit = false,
		Auto_Random_Fruit = false,
		Auto_Bring_Fruit = false,
		Auto_Store_Fruit = false,
		LockMoon = false,
		Auto_Mirage_Island = false,
		SkillZ = true,
		SkillX = true,
		SkillC = true,
		SkillV = true,
		AutoMasterySkill = false,
		HealthMs = 85,
		Distance = 30,
		DistanceY = 5,
		ESP_Mirage_Island = false,
		Auto_Awakening_One_Quest = false,
		SuperFastAttack = false,
		ESP_Chest = false,
		Auto_Dack_Coat = false,
		Auto_Sea_King = false,
		Select_Mode = "Chest",
		Remove_UI_DamageCounter = false,
		Notifications_Remove = false,
		Auto_CFrame = true,
		Auto_Gear = false,
	}
	
	if game.PlaceId == 2753915549 then
		W1 = true
	elseif game.PlaceId == 4442272183 then
		W2 = true
	elseif game.PlaceId == 7449423635 then
		W3 = true
	end

	if game:IsLoaded() then
		pcall(function()
			repeat wait()
				game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
				game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
			until not game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") or not game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn")
		end)
	end

	spawn(function()
		while  _G.DisDieffect do wait()
			for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"]:GetChildren()) do
					pcall(function()
						if v.Name == "CurvedRing" or v.Name == "SlashHit" or v.Name == "SwordSlash" then
							v:Destroy()
						end
					end)
				end
			end
		end)
		-- [require module]
		local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
		local CombatFrameworkR = getupvalues(CombatFramework)[2]
		local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
		local RigControllerR = getupvalues(RigController)[2]
		local realbhit = require(game.ReplicatedStorage.CombatFramework.RigLib)
		local cooldownfastattack = tick()
		
		function CameraShaker() 
		local Camera = require(game.ReplicatedStorage.Util.CameraShaker)
		Camera:Stop()
		end
		-- [FastAttack]
		function CurrentWeapon()
		local ac = CombatFrameworkR.activeController
		local ret = ac.blades[1]
		if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
		pcall(function()
		while ret.Parent ~= game.Players.LocalPlayer.Character do ret = ret.Parent end
		end)
		if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
		return ret
		end

		function getAllBladeHits(Sizes)
			local Hits = {}
			local Client = game.Players.LocalPlayer
			local Characters = workspace.Characters:GetChildren()
			local Enemies = game:GetService("Workspace").Enemies:GetChildren()
			for i = 1, #Enemies do
			local v = Enemies[i]
			local Human = v:FindFirstChildOfClass("Humanoid")
			if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) <= Sizes + 5 then
				table.insert(Hits, Human.RootPart)
			end
			end
			for i=1,#Characters do local v = Characters[i]
				if v ~= game.Players.LocalPlayer.Character then
					local Human = v:FindFirstChildOfClass("Humanoid")
					if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) <= Sizes + 5 then
						table.insert(Hits,Human.RootPart)
					end
				end
			end
			return Hits
			end
	
			function yakmefan()
				local ac = CombatFrameworkR.activeController
				if ac and ac.equipped then
				 for Ryuen = 1, 1 do
					local bladehit = getAllBladeHits(100)
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
							v:Play(0.01, 0.01, 0.01)
						end
						if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then
							game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
							game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
							game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 1, "")
						end
					end
				end
				end
				end

	repeat wait(0) until game:IsLoaded()
	if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam")  then
		repeat wait()
			if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
				if _G.Team == "Pirate" then
					for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.TextButton.Activated)) do                                                                                                
						v.Function()
					end
				elseif _G.Team == "Marine" then
					for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.TextButton.Activated)) do                                                                                                
						v.Function()
					end
				else
					for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.TextButton.Activated)) do                                                                                                
						v.Function()
					end
				end
			end
		until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
	end
	
	local EnemySpawns = Instance.new("Folder",workspace)
	EnemySpawns.Name = "EnemySpawns"

	for i, v in pairs(workspace._WorldOrigin.EnemySpawns:GetChildren()) do
		if v:IsA("Part") then
			local EnemySpawnsX2 = v:Clone()
			local result = string.gsub(v.Name, "Lv. ", "")
			local result2 = string.gsub(result, "[%[%]]", "")
			local result3 = string.gsub(result2, "%d+", "")
			local result4 = string.gsub(result3, "%s+", "")
			EnemySpawnsX2.Name = result4
			EnemySpawnsX2.Parent = workspace.EnemySpawns
			EnemySpawnsX2.Anchored = true
		end
	end
	for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
		if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
			print(v.HumanoidRootPart.Parent)
			local EnemySpawnsX2 = v.HumanoidRootPart:Clone()
			local result = string.gsub(v.Name, "Lv. ", "")
			local result2 = string.gsub(result, "[%[%]]", "")
			local result3 = string.gsub(result2, "%d+", "")
			local result4 = string.gsub(result3, "%s+", "")

			print(result4)
			EnemySpawnsX2.Name = result4
			EnemySpawnsX2.Parent = workspace.EnemySpawns
			EnemySpawnsX2.Anchored = true
		end
	end
	for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
		if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
			local EnemySpawnsX2 = v.HumanoidRootPart:Clone()
			local result = string.gsub(v.Name, "Lv. ", "")
			local result2 = string.gsub(result, "[%[%]]", "")
			local result3 = string.gsub(result2, "%d+", "")
			local result4 = string.gsub(result3, "%s+", "")

			print(result4)
			EnemySpawnsX2.Name = result4
			EnemySpawnsX2.Parent = workspace.EnemySpawns
			EnemySpawnsX2.Anchored = true
		end
	end

	_G.Color = Color3.fromRGB(0, 86, 255)
	local UserInputService = game:GetService("UserInputService")
	local VirtualInputManager = game:GetService("VirtualInputManager")
	local TweenService = game:GetService("TweenService")
	local tween = game:service"TweenService"
	local RunService = game:GetService("RunService")
	local LocalPlayer = game:GetService("Players").LocalPlayer
	local Mouse = LocalPlayer:GetMouse()
	local GuiService = game:GetService("GuiService")
	local DamageModule = require(game:GetService("ReplicatedStorage").Effect.Container.Misc.Damage)
	local old = DamageModule.Run
	getgenv().FakeDamage = function(Damage)
    DamageModule.Run = function(...)
        args = {...}
        if Damage then
            args[1]['Value'] = tostring(Damage)
        end
        return old(unpack(args))
    end
end
	local Ui = game.CoreGui:WaitForChild("RobloxGui"):WaitForChild("Modules"):FindFirstChild("dsfwefwfwdfsfasdadaxczcw")
if Ui then
    Ui:Destroy()
end
local UserInputService = game:GetService("UserInputService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local TweenService = game:GetService("TweenService")
local tween = game:service"TweenService"
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local GuiService = game:GetService("GuiService")
local SoundClick2 = Instance.new("Sound")
SoundClick2.Name = "Sound Effect"
SoundClick2.SoundId = "rbxassetid://3398620867"
SoundClick2.Volume = 1
SoundClick2.Parent = game.Workspace
local UIStroke = Instance.new("UIStroke")
local UICorner = Instance.new("UICorner")
local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local RobloxButton = Enum.ButtonStyle.RobloxButton
ScreenGui.Parent = game.CoreGui:WaitForChild("RobloxGui"):WaitForChild("Modules")
ScreenGui.Name = "dsfwefwfwdfsfasdadaxczcw"
ImageButton.Parent = ScreenGui
ImageButton.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
ImageButton.Size = UDim2.new(0, 45, 0, 45)
ImageButton.Draggable = true
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BackgroundTransparency = 1
ImageButton.Image = "rbxassetid://14645512457"

function LoadFunction()    
        ImageButton.MouseEnter:Connect(function()
        TweenService:Create(
            ImageButton,
            TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
            {Size = UDim2.new(0, 80, 0, 80)}
        ):Play()
    end)
    ImageButton.MouseLeave:Connect(function()
        TweenService:Create(
            ImageButton,
            TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
            {Size = UDim2.new(0, 50, 0, 50)}
        ):Play()
    end)
    
    local LoadFocus = false
    
    ImageButton.MouseButton1Down:Connect(function()
        if LoadFocus == false then 
            LoadFocus = false
            TweenService:Create(
                ImageButton,
                TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
                {Rotation = 180}
            ):Play()
            SoundClick2:Play()
            TweenService:Create(
                ImageButton,
                TweenInfo.new(.4, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
                {ImageTransparency = 0}
            ):Play()
            wait(.5)
            TweenService:Create(
                ImageButton,
                TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
                {Rotation = 0}
            ):Play()
            TweenService:Create(
                ImageButton,
                TweenInfo.new(.4, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
                {ImageTransparency = 0}
            ):Play()
            wait(.5)	
            
        end
    end)
end
    LoadFunction()
    ImageButton.MouseButton1Down:connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.F1,false,game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,Enum.KeyCode.F1,false,game)
    end)
	function Vec(text)
		local Notification = require(game.ReplicatedStorage.Notification)
		local notification = Notification.new(text)
		notification.Duration = 4
		notification:Display()
	end
	local function tablefound(ta, object)
		for i,v in pairs(ta) do
			if v == object then
				return true
			end
		end
		return false
	end
	
	local ActualTypes = {
		RoundFrame = "ImageLabel",
		Shadow = "ImageLabel",
		Circle = "ImageLabel",
		CircleButton = "ImageButton",
		Frame = "Frame",
		Label = "TextLabel",
		Button = "TextButton",
		SmoothButton = "ImageButton",
		Box = "TextBox",
		ScrollingFrame = "ScrollingFrame",
		Menu = "ImageButton",
		NavBar = "ImageButton"
	}
	
	local Properties = {
		RoundFrame = {
			BackgroundTransparency = 1,
			Image = "http://www.roblox.com/asset/?id=5554237731",
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(3,3,297,297)
		},
		SmoothButton = {
			AutoButtonColor = false,
			BackgroundTransparency = 1,
			Image = "http://www.roblox.com/asset/?id=5554237731",
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(3,3,297,297)
		},
		Shadow = {
			Name = "Shadow",
			BackgroundTransparency = 1,
			Image = "http://www.roblox.com/asset/?id=5554236805",
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(23,23,277,277),
			Size = UDim2.fromScale(1,1) + UDim2.fromOffset(30,30),
			Position = UDim2.fromOffset(-15,-15)
		},
		Circle = {
			BackgroundTransparency = 1,
			Image = "http://www.roblox.com/asset/?id=5554831670"
		},
		CircleButton = {
			BackgroundTransparency = 1,
			AutoButtonColor = false,
			Image = "http://www.roblox.com/asset/?id=5554831670"
		},
		Frame = {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.fromScale(1,1)
		},
		Label = {
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(5,0),
			Size = UDim2.fromScale(1,1) - UDim2.fromOffset(5,0),
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left
		},
		Button = {
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(5,0),
			Size = UDim2.fromScale(1,1) - UDim2.fromOffset(5,0),
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left
		},
		Box = {
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(5,0),
			Size = UDim2.fromScale(1,1) - UDim2.fromOffset(5,0),
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left
		},
		ScrollingFrame = {
			BackgroundTransparency = 1,
			ScrollBarThickness = 0,
			CanvasSize = UDim2.fromScale(0,0),
			Size = UDim2.fromScale(1,1)
		},
		Menu = {
			Name = "More",
			AutoButtonColor = false,
			BackgroundTransparency = 1,
			Image = "http://www.roblox.com/asset/?id=5555108481",
			Size = UDim2.fromOffset(20,20),
			Position = UDim2.fromScale(1,0.5) - UDim2.fromOffset(25,10)
		},
		NavBar = {
			Name = "SheetToggle",
			Image = "http://www.roblox.com/asset/?id=5576439039",
			BackgroundTransparency = 1,
			Size = UDim2.fromOffset(20,20),
			Position = UDim2.fromOffset(5,5),
			AutoButtonColor = false
		}
	}
	
	local Types = {
		"RoundFrame",
		"Shadow",
		"Circle",
		"CircleButton",
		"Frame",
		"Label",
		"Button",
		"SmoothButton",
		"Box",
		"ScrollingFrame",
		"Menu",
		"NavBar"
	}
	
	function FindType(String)
		for _, Type in next, Types do
			if Type:sub(1, #String):lower() == String:lower() then
				return Type
			end
		end
		return false
	end
	
	local Objects = {}
	
	function Objects.new(Type)
		local TargetType = FindType(Type)
		if TargetType then
			local NewImage = Instance.new(ActualTypes[TargetType])
			if Properties[TargetType] then
				for Property, Value in next, Properties[TargetType] do
					NewImage[Property] = Value
				end
			end
			return NewImage
		else
			return Instance.new(Type)
		end
	end
	
	local function GetXY(GuiObject)
		local Max, May = GuiObject.AbsoluteSize.X, GuiObject.AbsoluteSize.Y
		local Px, Py = math.clamp(Mouse.X - GuiObject.AbsolutePosition.X, 0, Max), math.clamp(Mouse.Y - GuiObject.AbsolutePosition.Y, 0, May)
		return Px/Max, Py/May
	end
	
	local function CircleAnim(GuiObject, EndColour, StartColour)
		local PX, PY = GetXY(GuiObject)
		local Circle = Objects.new("Shadow")
		Circle.Size = UDim2.fromScale(0,0)
		Circle.Position = UDim2.fromScale(PX,PY)
		Circle.ImageColor3 = StartColour or GuiObject.ImageColor3
		Circle.ZIndex = 200
		Circle.Parent = GuiObject
		local Size = GuiObject.AbsoluteSize.X
		TweenService:Create(Circle, TweenInfo.new(0.5), {Position = UDim2.fromScale(PX,PY) - UDim2.fromOffset(Size/2,Size/2), ImageTransparency = 1, ImageColor3 = EndColour, Size = UDim2.fromOffset(Size,Size)}):Play()
		spawn(function()
			wait(0.5)
			Circle:Destroy()
		end)
	end
	
	local function MakeDraggable(topbarobject, object)
		local Dragging = nil
		local DragInput = nil
		local DragStart = nil
		local StartPosition = nil
	
		local function Update(input)
			local Delta = input.Position - DragStart
			local pos =
				UDim2.new(
					StartPosition.X.Scale,
					StartPosition.X.Offset + Delta.X,
					StartPosition.Y.Scale,
					StartPosition.Y.Offset + Delta.Y
				)
			local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
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
	
	local UIConfig = {Bind = Enum.KeyCode.F1}
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
	
	for i, v in pairs(game.CoreGui:WaitForChild("RobloxGui"):WaitForChild("Modules"):WaitForChild("Flags"):GetChildren()) do
		if v.ClassName == "ScreenGui" then
			for i1, v1 in pairs(v:GetChildren()) do
				if v1.Name == "Main" then
					do
						local ui = v
						if ui then
							ui:Destroy()
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
		dragToggle = nil
		dragSpeed = .25
		dragInput = nil
		dragStart = nil
		dragPos = nil
	
		function updateInput(input)
			Delta = input.Position - dragStart
			Position =
				UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			game:GetService("TweenService"):Create(object, TweenInfo.new(dragSpeed), {Position = Position}):Play()
		end
	
		Frame.InputBegan:Connect(
			function(input)
				if
					(input.UserInputType == Enum.UserInputType.MouseButton1 or
						input.UserInputType == Enum.UserInputType.Touch)
				then
					dragToggle = true
					dragStart = input.Position
					startPos = object.Position
					input.Changed:Connect(
						function()
							if (input.UserInputState == Enum.UserInputState.End) then
								dragToggle = false
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
					dragInput = input
				end
			end
		)
	
		game:GetService("UserInputService").InputChanged:Connect(
		function(input)
			if (input == dragInput and dragToggle) then
				updateInput(input)
			end
		end
		)
	end
	
	local UI = Instance.new("ScreenGui")
	UI.Name = randomString
	UI.Parent = game.CoreGui:WaitForChild("RobloxGui"):WaitForChild("Modules"):WaitForChild("Flags")
	UI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	
	library = {}
	
	function library:Destroy()
		library:Destroy()
	end
	
	
	function library:Evil()
		local Main = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local Top = Instance.new("Frame")
		local TabHolder = Instance.new("Frame")
		local UICorner_2 = Instance.new("UICorner")
		local TabContainer = Instance.new("ScrollingFrame")
		local UIListLayout = Instance.new("UIListLayout")
		local UIPadding = Instance.new("UIPadding")
		local Logo = Instance.new("ImageLabel")
		local Logo_Background = Instance.new("ImageLabel")
		local Title = Instance.new("TextLabel")
		local Welcome = Instance.new("TextLabel")
	
	
		Main.Name = "Main"
		Main.Parent = UI
		Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Main.Position = UDim2.new(0.5, 0, 0.5, 0)
		Main.Size = UDim2.new(0, 555, 0, 0)
		Main.ClipsDescendants = true
		Main.AnchorPoint = Vector2.new(0.5, 0.5)
	
		Main:TweenSize(UDim2.new(0,555,0,375),"Out","Quad",0.5,false)
		
	
		local UICorner_59 = Instance.new("UICorner")
		UICorner_59.CornerRadius = UDim.new(0, 5)
		UICorner_59.Parent = Top2
		
		Logo.Name = "Logo"
		Logo.Parent = Main
		Logo.Active = true
		Logo.AnchorPoint = Vector2.new(0,0)
		Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Logo.BackgroundTransparency = 1.000
		Logo.Position = UDim2.new(0, 10, 0, 10)
		Logo.Size = UDim2.new(0, 30, 0, 30)
		Logo.ImageTransparency = 0
		Logo.Image = "rbxassetid://14645512457"
	
		Logo_Background.Name = "Logo"
		Logo_Background.Parent = Main
		Logo_Background.Active = true
		Logo_Background.AnchorPoint = Vector2.new(0,0)
		Logo_Background.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Logo_Background.BackgroundTransparency = 1.000
		Logo_Background.Position = UDim2.new(0, 135, 0, 75)
		Logo_Background.Size = UDim2.new(0, 305, 0, 305)
		Logo_Background.ImageTransparency = 0.7
		Logo_Background.Image = "rbxassetid://14645512457"
		RunService.RenderStepped:Connect(function()
			Logo_Background.Rotation = Logo_Background.Rotation + 1
			if Logo_Background.Rotation >= 360 then
				Logo_Background.Rotation = 0 
			end
		end)
		Title.Name = "Title"
		Title.Parent = Main
		Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title.BackgroundTransparency = 1.000
		Title.Position = UDim2.new(0, 45, 0, 10)
		Title.Size = UDim2.new(0, 483, 0, 31)
		Title.Font = Enum.Font.FredokaOne
		Title.Text = "Vector"
		Title.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title.TextSize = 17.000
		Title.TextWrapped = true
		Title.TextXAlignment = Enum.TextXAlignment.Left
		
		local Title2 = Instance.new("TextLabel")
		Title2.Name = "Title"
		Title2.Parent = Main
		Title2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title2.BackgroundTransparency = 1.000
		Title2.Position = UDim2.new(0, 95, 0, 10)
		Title2.Size = UDim2.new(0, 483, 0, 31)
		Title2.Font = Enum.Font.FredokaOne
		Title2.Text = "Hub | By Ryuenz#6264 |Beta Version"
		Title2.TextColor3 = _G.Color
		Title2.TextSize = 17.000
		Title2.TextWrapped = true
		Title2.TextXAlignment = Enum.TextXAlignment.Left
		
	
		local UiToggle_UiStroke1 = Instance.new("UIStroke")
	
		UiToggle_UiStroke1.Color = Color3.fromRGB(0, 86, 255)
		UiToggle_UiStroke1.Thickness = 1
		UiToggle_UiStroke1.Name = "UiToggle_UiStroke1"
		UiToggle_UiStroke1.Parent = Main
	
		UICorner.CornerRadius = UDim.new(0, 6)
		UICorner.Parent = Main
	
		Top.Name = "Top"
		Top.Parent = Main
		Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Top.BackgroundTransparency = 1
		Top.Position = UDim2.new(0.021956088, 0, 0, 10)
		Top.Size = UDim2.new(0, 565, 0, 39)
		
		local UICorner_Tab2 = Instance.new("UICorner")
		UICorner_Tab2.CornerRadius = UDim.new(0, 100)
		UICorner_Tab2.Parent = PlayerStatss
	
		local ClickFrame = Instance.new("Frame")
		ClickFrame.Name = "Top"
		ClickFrame.Parent = Main
		ClickFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ClickFrame.BackgroundTransparency = 1
		ClickFrame.Position = UDim2.new(0, 0, 0, 0)
		ClickFrame.Size = UDim2.new(0, 600, 0, 35)
	
		TabHolder.Name = "TabHolder"
		TabHolder.Parent = Top
		TabHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabHolder.Position = UDim2.new(0, 0, 0, 35)
		TabHolder.BackgroundTransparency = 1.000
		TabHolder.Size = UDim2.new(0, 395, 0, 38)
	
		UICorner_2.Parent = TabHolder
	
		TabContainer.Name = "TabContainer"
		TabContainer.Parent = TabHolder
		TabContainer.Active = true
		TabContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabContainer.BackgroundTransparency = 1.000
		TabContainer.Size = UDim2.new(0, 560, 0, 38)
		TabContainer.CanvasSize = UDim2.new(2, 0, 0, 0)
		TabContainer.ScrollBarThickness = 1
		TabContainer.VerticalScrollBarInset = Enum.ScrollBarInset.Always
	
		UIListLayout.Parent = TabContainer
		UIListLayout.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 10)
		UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			TabContainer.CanvasSize = UDim2.new(0, UIListLayout.AbsoluteContentSize.X, 0, 0)
		end)
		UIPadding.Parent = TabContainer
		UIPadding.PaddingTop = UDim.new(0, 5)
		UIListLayout.Parent = TabContainer
		UIListLayout.Padding = UDim.new(0, 9)
		local Bottom = Instance.new("Frame")
		Bottom.Name = "Bottom"
		Bottom.Parent = Main
		Bottom.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		Bottom.BackgroundTransparency = 1.000
		Bottom.Position = UDim2.new(0.0119760484, 7, 0, 90)
		Bottom.Size = UDim2.new(0, 525, 0, 300)
	
		local uitoggled = false
		UserInputService.InputBegan:Connect(
			function(io, p)
				if io.KeyCode == UIConfig.Bind then
					if uitoggled == false then
						Main:TweenSize(UDim2.new(0, 555, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.2, true) wait(0.1) UI.Enabled = false
						uitoggled = true
					else
						UI.Enabled = true
						Main:TweenSize(UDim2.new(0, 555, 0, 375), Enum.EasingDirection.Out, Enum.EasingStyle.Quart,0.2,true)
						uitoggled = false
					end
				end
			end
		)
	
		dragify(ClickFrame, Main)
		local tabs = {}
		local S = false
		function tabs:CreateTab(options)
			Name = options.Name
	
			local FrameTab = Instance.new("Frame")
			local Tab2 = Instance.new("Frame")
			local Tab = Instance.new("TextButton")
			local UICorner_3 = Instance.new("UICorner")
			local UICorner_Tab = Instance.new("UICorner")
			local ImageLabel = Instance.new("ImageLabel")
			local TextLabel = Instance.new("TextLabel")
			icon = 123 -- ไอคอน แท็บ
	
			FrameTab.Name = "FrameTab"
			FrameTab.Parent = Tab
			FrameTab.BackgroundColor3 = _G.Color
			FrameTab.BackgroundTransparency = 0
			FrameTab.Position = UDim2.new(0, 14, 0, 22)
			--FrameTab.Size = UDim2.new(0, 80, 0, 2)
			FrameTab.Size = UDim2.new(0, 0, 0, 1)
			FrameTab.Visible = false
	
			UICorner_Tab.CornerRadius = UDim.new(0, 3)
			UICorner_Tab.Parent = FrameTab
	
			Tab.Name = "Tab"
			Tab.Parent = TabContainer
			Tab.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			Tab.Size = UDim2.new(0, 80, 0, 20)
			Tab.BackgroundTransparency = 1.00
			Tab.Text = ""
			UICorner_3.CornerRadius = UDim.new(0, 3)
			UICorner_3.Parent = Tab
	
			Tab2.Name = "Tab"
			Tab2.Parent = Tab
			Tab2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			Tab2.Size = UDim2.new(0, 80, 0, 25)
			Tab2.BackgroundTransparency = 1.00
	
			local UICorner_33 = Instance.new("UICorner")
			UICorner_33.CornerRadius = UDim.new(0, 3)
			UICorner_33.Parent = Tab2
	
			local UIStroke96 = Instance.new("UIStroke")
			UIStroke96.Thickness = 1.2
			UIStroke96.Parent = Tab2
			UIStroke96.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke96.LineJoinMode = Enum.LineJoinMode.Round
			UIStroke96.Color = _G.Color
			UIStroke96.Transparency = 0
	
	
			ImageLabel.Parent = Tab
			ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ImageLabel.Position = UDim2.new(0, 5, 0.2, 0)
			ImageLabel.Size = UDim2.new(0, 20, 0, 30)
			ImageLabel.Image = "http://www.roblox.com/asset/?id=" .. icon
			ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
			ImageLabel.ImageTransparency = 0.2
			ImageLabel.BackgroundTransparency = 1
	
			TextLabel.Parent = Tab
			TextLabel.Text = Name.." "
	
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.Position = UDim2.new(0, 0, 0, 0)
			TextLabel.Size = UDim2.new(0, 80, 0, 30)
			TextLabel.Font = Enum.Font.GothamBold
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextSize = 12.300
			TextLabel.TextTransparency = 0.200
	
			if TextLabel.Name == Name.." " then
				Tab.Size = UDim2.new(0, 60 + TextLabel.TextBounds.X, 0, 15)
			end
	
			local Page = Instance.new("ScrollingFrame")
			local Left = Instance.new("ScrollingFrame")
			local Right = Instance.new("ScrollingFrame")
			local UIListLayout_5 = Instance.new("UIListLayout")
			local UIPadding_5 = Instance.new("UIPadding")
	
			Page.Name = "Page"
			Page.Parent = Bottom
			Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Page.BackgroundTransparency = 1.000
			Page.Size = UDim2.new(0, 585, 0, 335)
			Page.ScrollBarThickness = 0
			Page.CanvasSize = UDim2.new(0, 0, 0, 0)
			Page.Visible = false
	
			Left.Name = "Left"
			Left.Parent = Page
			Left.Active = true
			Left.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Left.BackgroundTransparency = 10
			Left.Size = UDim2.new(0, 274, 0, 335)
			Left.ScrollBarThickness = 0
			Left.CanvasSize = UDim2.new(0, 0, 0, 0)
	
			Right.Name = "Right"
			Right.Parent = Page
			Right.Active = true
			Right.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Right.BackgroundTransparency = 10
			Right.Size = UDim2.new(0, 274, 0, 335)
			Right.ScrollBarThickness = 0
			Right.CanvasSize = UDim2.new(0, 0, 0, 0)
	
			local LeftList = Instance.new("UIListLayout")
			local RightList = Instance.new("UIListLayout")
	
			LeftList.Parent = Left
			LeftList.SortOrder = Enum.SortOrder.LayoutOrder
			LeftList.Padding = UDim.new(0, 5)
	
			RightList.Parent = Right
			RightList.SortOrder = Enum.SortOrder.LayoutOrder
			RightList.Padding = UDim.new(0, 5)
	
			UIListLayout_5.Parent = Page
			UIListLayout_5.FillDirection = Enum.FillDirection.Horizontal
			UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_5.Padding = UDim.new(0, 13)
	
			UIPadding_5.Parent = Page
	
			if S == false then
				S = true
				Page.Visible = true
				TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.TextTransparency = 0
				ImageLabel.ImageTransparency = 0
				ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
				FrameTab.Size = UDim2.new(0, 50, 0, 1)
				FrameTab.Visible = true
			end
	
			Tab.MouseButton1Click:Connect(
				function()
					for _, x in next, TabContainer:GetChildren() do
						if x.Name == "Tab" then
							TweenService:Create(
								x.TextLabel,
								TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{TextColor3 = Color3.fromRGB(255, 255, 255)}
							):Play()
							TweenService:Create(
								x.ImageLabel,
								TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{ImageColor3 = Color3.fromRGB(255, 255, 255)}
							):Play()
							TweenService:Create(
								x.ImageLabel,
								TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{ImageTransparency = 0.2}
							):Play()
							TweenService:Create(
								x.TextLabel,
								TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{TextTransparency = 0.2}
							):Play()
							TweenService:Create(
								x.FrameTab,
								TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{Size = UDim2.new(0, 0, 0, 1)}
							):Play()
							for index, y in next, Bottom:GetChildren() do
								TweenService:Create(
									y,
									TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
									{Position = UDim2.new(0,1500,0,0)}
								):Play()
							end
							
							for index, y in next, Bottom:GetChildren() do
								y.Visible = false
							end
							x.FrameTab.Visible = false
						end
					end
					TweenService:Create(
						TextLabel,
						TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255, 255, 255)}
					):Play()
					TweenService:Create(
						ImageLabel,
						TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{ImageColor3 = Color3.fromRGB(255, 255, 255)}
					):Play()
					TweenService:Create(
						ImageLabel,
						TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{ImageTransparency = 0}
					):Play()
					TweenService:Create(
						TextLabel,
						TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextTransparency = 0}
					):Play()
					FrameTab.Visible = true
					TweenService:Create(
						FrameTab,
						TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 50, 0, 1)}
					):Play()
					Page.Position = UDim2.new(0,0,0,1500)
					TweenService:Create(
						Page,
						TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Position = UDim2.new(0,0,0,0)}
					):Play()
					Page.Visible = true
				end
			)
	
			local function GetType(value)
				if value == 1 or value == "Left" then
					return Left
				elseif value == 2 or value == "Right" then
					return Right
				else
					return Left
				end
			end
	
			game:GetService("RunService").Stepped:Connect(function()
				pcall(function()
					Right.CanvasSize = UDim2.new(0,0,0,RightList.AbsoluteContentSize.Y)
					Left.CanvasSize = UDim2.new(0,0,0,LeftList.AbsoluteContentSize.Y)
				end)
			end)
			
			local UserInputService = game:GetService("UserInputService")
			local ScrollingFrame = Page
			local touchStartPosition = nil
			local scrollingEnabled = false
			local function handleTouch(input)
				if input.UserInputType == Enum.UserInputType.Touch then
					if input.UserInputState == Enum.UserInputState.Begin then
						touchStartPosition = input.Position
						scrollingEnabled = true
					elseif input.UserInputState == Enum.UserInputState.End then
						scrollingEnabled = false
					end
				end
			end
			UserInputService.InputChanged:Connect(handleTouch)
			game:GetService("RunService").RenderStepped:Connect(function()
				if scrollingEnabled then
					local currentTouchPosition = UserInputService:GetMouseLocation()
					local deltaY = (currentTouchPosition.Y - touchStartPosition.Y) * 0.5
					
					ScrollingFrame.CanvasPosition = Vector2.new(
						ScrollingFrame.CanvasPosition.X,
						ScrollingFrame.CanvasPosition.Y - deltaY
					)
					
					touchStartPosition = currentTouchPosition
				end
			end)
			local sections = {}
			function sections:CreateSection(options)
				local Name = options.Name
				local side = options.Side
	
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
	
				Section.Name = Name
				Section.Parent = GetType(side)
				Section.BackgroundColor3 = Color3.fromRGB(10, 11, 12)
				Section.ClipsDescendants = true
				Section.Transparency = 0.1
				Section.Size = UDim2.new(1, 0, 0, 40)
	
				UICorner_5.CornerRadius = UDim.new(0, 5)
				UICorner_5.Parent = Section
	
				Top_2.Name = "Top"
				Top_2.Parent = Section
				Top_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Top_2.BackgroundTransparency = 1.000
				Top_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
				Top_2.Size = UDim2.new(0, 238, 0, 31)
	
				Line.Name = "Line"
				Line.Parent = Top_2
				Line.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
				Line.BorderSizePixel = 0
				Line.Size = UDim2.new(0, 274, 0, 1)
	
				Sectionname.Name = "Sectionname"
				Sectionname.Parent = Top_2
				Sectionname.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Sectionname.BackgroundTransparency = 1.000
				Sectionname.Position = UDim2.new(0.0591227226, 0, 0.0222222228, 0)
				Sectionname.Size = UDim2.new(0, 224, 0, 24)
				Sectionname.Font = Enum.Font.GothamBold
				Sectionname.Text = Name
				Sectionname.TextColor3 = Color3.fromRGB(255, 255, 255)
				Sectionname.TextSize = 12.000
				Sectionname.TextTransparency = 0
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
				UIListLayout_2.Padding = UDim.new(0, 10)
	
				UIPadding_2.Parent = SectionContainer
				UIPadding_2.PaddingLeft = UDim.new(0, 5)
	
				UIListLayout_2:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
				function()
	
					Section.Size = UDim2.new(1, 0, 0, UIListLayout_2.AbsoluteContentSize.Y + 35)
				end
				)
	
	
			
		
	
				local functionitem = {}
	
				function functionitem:AddLabelX(options)
					local text = options.Name
					local Flag = options.Flag
					local text = options.Name
	
					local textas = {}
					local Label = Instance.new("Frame")
					local Text = Instance.new("TextLabel")
					Label.Name = text
					Label.Parent = SectionContainer
					Label.AnchorPoint = Vector2.new(0.5, 0.5)
					Label.BackgroundTransparency = 1.000
					Label.Size = UDim2.new(0, 265, 0, 30)
	
					local Label22 = Instance.new("Frame")
					Label22.Name = "Label22"
					Label22.Parent = Label
					Label22.AnchorPoint = Vector2.new(0, 0.5)
					Label22.BackgroundColor3 = _G.Color
					Label22.Position = UDim2.new(0,0,0.5,0)
					Label22.Size = UDim2.new(0, 45, 0, 1)
	
					local Label23 = Instance.new("Frame")
					Label23.Name = "Label23"
					Label23.Parent = Label
					Label23.AnchorPoint = Vector2.new(0, 0.5)
					Label23.BackgroundColor3 = _G.Color
					Label23.Position = UDim2.new(0,216,0.5,0)
					Label23.Size = UDim2.new(0, 45, 0, 1)
	
					Text.Name = "Text"
					Text.Parent = Label
					Text.AnchorPoint = Vector2.new(0.5, 0.5)
					Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Text.BackgroundTransparency = 1.000
					Text.Position = UDim2.new(0.5, 0, 0.5, 0)
					Text.Size = UDim2.new(0, 53, 0, 150)
					Text.ZIndex = 16
					Text.Font = Enum.Font.GothamBold
					Text.Text = text
					Text.TextColor3 = Color3.fromRGB(255, 255, 255)
					Text.TextSize = 12.000
					function textas:Set(newtext)
						Text.Text = newtext
					end
					return textas
				end
	
				function functionitem:AddLabel(options)
					text = options.Name
					Flag = options.Flag
	
					local textas = {}
					local Label = Instance.new("Frame")
					local Text = Instance.new("TextLabel")
					Label.Name = text
					Label.Parent = SectionContainer
					Label.AnchorPoint = Vector2.new(0.5, 0.5)
					Label.BackgroundTransparency = 1.000
					Label.Size = UDim2.new(0, 265, 0, 30)
	
					Text.Name = "Text"
					Text.Parent = Label
					Text.AnchorPoint = Vector2.new(0.5, 0.5)
					Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Text.BackgroundTransparency = 1.000
					Text.Position = UDim2.new(0.5, 0, 0.5, 0)
					Text.Size = UDim2.new(0, 53, 0, 150)
					Text.ZIndex = 16
					Text.Font = Enum.Font.GothamBold
					Text.Text = text
					Text.TextColor3 = Color3.fromRGB(255, 255, 255)
					Text.TextSize = 12.000
					function textas:Set(newtext)
						Text.Text = newtext
					end
					return textas
				end
	
				function functionitem:LabelLog(text)
					local textas = {}
					local Label = Instance.new("Frame")
					local Text = Instance.new("TextLabel")
					Label.Name = text
					Label.Parent = SectionContainer
					Label.AnchorPoint = Vector2.new(0.5, 0.5)
					Label.BackgroundTransparency = 1.000
					Label.Size = UDim2.new(0, 265, 0, 30)
	
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
					Text.TextColor3 = Color3.fromRGB(255, 255, 255)
					Text.TextSize = 12.000
					function textas:Refresh(newtext)
						Text.Text = newtext
					end
					function textas:Color(Color)
						Text.TextColor3 = Color
					end
					return textas
				end
	
				function functionitem:ButtonTog(Title, default, callback)
					local b3Func = {}
					local callback = callback or function()
					end
					local Tgs = default
					local Button_2 = Instance.new("Frame")
					local UICorner_21 = Instance.new("UICorner")
					local TextLabel_4 = Instance.new("TextLabel")
					local TextButton_4 = Instance.new("TextButton")
	
					Button_2.Name = Title
					Button_2.Parent = SectionContainer
					Button_2.BackgroundColor3 = Color3.fromRGB(33, 132, 112)
					Button_2.Size = UDim2.new(0, 265, 0, 30)
					Button_2.ZIndex = 16
	
					if default then
						Button_2.BackgroundColor3 = Color3.fromRGB(33, 132, 112)
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
					TextButton_4.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
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
								BackgroundColor3 = state and _G.Color or Color3.fromRGB(33, 132, 112)
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
								BackgroundColor3 = state and Color3.fromRGB(33, 132, 112) or _G.Color
							}
						):Play()
						callback(state)
						Tgs = state
					end
	
					return b3Func
				end
	
	
				function functionitem:AddButton(options)
					local Name = options.Name or "Button"
					local callback = options.Callback or function() end
	
					local Button = Instance.new("Frame")
					local UICorner_6 = Instance.new("UICorner")
					local TextLabel_3 = Instance.new("TextLabel")
					local TextButton = Instance.new("TextButton")
	
					Button.Name = "Button"
					Button.Parent = SectionContainer
					Button.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
					Button.Size = UDim2.new(0, 265, 0, 30)
					Button.ZIndex = 16
	
					UICorner_6.CornerRadius = UDim.new(0, 4)
					UICorner_6.Parent = Button
	
					TextLabel_3.Name = "Text"
					TextLabel_3.Parent = Button
					TextLabel_3.AnchorPoint = Vector2.new(0.5, 0.5)
					TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel_3.BackgroundTransparency = 1.000
					TextLabel_3.Position = UDim2.new(0.5, 0, 0.5, 0)
					TextLabel_3.Size = UDim2.new(0, 100, 0, 12)
					TextLabel_3.ZIndex = 16
					TextLabel_3.Font = Enum.Font.GothamBold
					TextLabel_3.Text = Name
					TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel_3.TextSize = 12.000
					TextLabel_3.TextTransparency = 0
	
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
					
					TextButton.MouseEnter:Connect(function()
						TweenService:Create(
							Button,
							TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
							{BackgroundTransparency = 0.5}
						):Play()
					end)
	
					TextButton.MouseLeave:Connect(function()
						TweenService:Create(
							Button,
							TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
							{BackgroundTransparency = 0}
						):Play()
					end)
	
					TextButton.MouseButton1Click:Connect(function()
						CircleClick(Button, Mouse.X, Mouse.Y)
						TextLabel_3.TextSize = 0
						TweenService:Create(
							TextLabel_3,
							TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
							{TextSize = 12}
						):Play()
						callback()
					end)
				end
	
				function functionitem:AddToggle(options)
					local Name = options.Name
					local default = options.Value
					local Flag = options.Flag
					local callback = options.Callback or function() end
					--Name, default, callback
	
					local ToglFunc = {}
					local Tgo = default or false 
					local MainToggle = Instance.new("Frame")
					local UICorner = Instance.new("UICorner")
					local Text = Instance.new("TextLabel")
					local MainToggle_2 = Instance.new("ImageLabel")
					local UICorner_2 = Instance.new("UICorner")
					local MainToggle_3 = Instance.new("ImageLabel")
					local UICorner_3 = Instance.new("UICorner")
					local TextButton = Instance.new("TextButton")
	
					MainToggle.Name = Name
					MainToggle.Parent = SectionContainer
					MainToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					MainToggle.BackgroundTransparency = 1
					MainToggle.BorderSizePixel = 0
					MainToggle.ClipsDescendants = true
					MainToggle.Size = UDim2.new(0, 265, 0, 45)
					MainToggle.ZIndex = 16
	
					UICorner.CornerRadius = UDim.new(0, 4)
					UICorner.Parent = MainToggle
	
					Text.Name = "Text"
					Text.Parent = MainToggle
					Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Text.BackgroundTransparency = 1.000
					Text.Position = UDim2.new(0, 45, 0, 16)
					Text.Size = UDim2.new(0, 100, 0, 12)
					Text.ZIndex = 16
					Text.Font = Enum.Font.GothamBold
					Text.Text = Name
					Text.TextColor3 = Color3.fromRGB(255, 255, 255)
					Text.TextSize = 14.000
					Text.TextTransparency = 0.2
					Text.TextXAlignment = Enum.TextXAlignment.Left
	
					MainToggle_3.Name = "MainToggle"
					MainToggle_3.Parent = MainToggle
					MainToggle_3.AnchorPoint = Vector2.new(0.5, 0.5)
					MainToggle_3.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
					MainToggle_3.ClipsDescendants = true
					MainToggle_3.Position = UDim2.new(0, 15, 0.5, 0)
					MainToggle_3.Size = UDim2.new(0, 25, 0, 25)
					MainToggle_3.ZIndex = 16
					MainToggle_3.Image = "http://www.roblox.com/asset/?id="
					MainToggle_3.ImageColor3 = Color3.fromRGB(255, 255, 255)
					MainToggle_3.Visible = true
	
					UICorner_3.CornerRadius = UDim.new(0, 5)
					UICorner_3.Parent = MainToggle_3
	
					TextButton.Name = ""
					TextButton.Parent = MainToggle
					TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextButton.BackgroundTransparency = 1.000
					TextButton.BorderSizePixel = 0
					TextButton.Position = UDim2.new(0, 0, 0, 0)
					TextButton.Size = UDim2.new(0, 265, 0, 35)
					TextButton.ZIndex = 16
					TextButton.AutoButtonColor = false
					TextButton.Font = Enum.Font.Gotham
					TextButton.Text = ""
					TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
					TextButton.TextSize = 14.000
	
					if default == true then
						MainToggle_3.BackgroundColor3 = _G.Color
						MainToggle_3:TweenSize(UDim2.new(0, 28, 0, 28),"In","Linear",0.2,true)
						MainToggle_3.Image = "http://www.roblox.com/asset/?id=6023426926"
						UICorner_3.CornerRadius = UDim.new(0, 100)
						pcall(callback,true)
					end
	
					TextButton.MouseEnter:Connect(function()
						if Tgo == false then
							MainToggle_3.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
							MainToggle_3.Image = "http://www.roblox.com/asset/?id=00"
							MainToggle_3:TweenSize(UDim2.new(0, 28, 0, 28),"In","Linear",0.2,true)
							UICorner_3.CornerRadius = UDim.new(0, 5)
						else
							MainToggle_3.BackgroundColor3 = _G.Color
							MainToggle_3:TweenSize(UDim2.new(0, 28, 0, 28),"In","Linear",0.2,true)
							MainToggle_3.Image = "http://www.roblox.com/asset/?id=6023426926"
							UICorner_3.CornerRadius = UDim.new(0, 100)
						end
					end)
	
					TextButton.MouseLeave:Connect(function()
						if Tgo == false then
							MainToggle_3.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
							MainToggle_3.Image = "http://www.roblox.com/asset/?id=00"
							MainToggle_3:TweenSize(UDim2.new(0, 25, 0, 25),"In","Linear",0.2,true)
							UICorner_3.CornerRadius = UDim.new(0, 5)
						else
							MainToggle_3.BackgroundColor3 = _G.Color
							MainToggle_3:TweenSize(UDim2.new(0, 25, 0, 25),"In","Linear",0.2,true)
							MainToggle_3.Image = "http://www.roblox.com/asset/?id=6023426926"
							UICorner_3.CornerRadius = UDim.new(0, 100)
						end
					end)
	
					TextButton.MouseButton1Click:Connect(function()
						local SoundClick = Instance.new("Sound")
						SoundClick.Name = "SoundEffect"
						SoundClick.SoundId = "rbxassetid://130785805"
						SoundClick.Volume = 1
						SoundClick.Parent = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
						SoundClick:Play()
						if Tgo == false then
							Tgo = true
							pcall(callback,true)
							MainToggle_3.BackgroundColor3 = _G.Color
							MainToggle_3.Image = "http://www.roblox.com/asset/?id=6023426926"
							UICorner_3.CornerRadius = UDim.new(0, 100)
							MainToggle_3:TweenSize(UDim2.new(0, 29, 0, 29),"In","Linear",0.2,true)
							wait(0.2)
							MainToggle_3:TweenSize(UDim2.new(0, 25, 0, 25),"In","Linear",0.2,true)
						else
							Tgo = false
							pcall(callback,false)
							MainToggle_3.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
							MainToggle_3.Image = "http://www.roblox.com/asset/?id=00"
							MainToggle_3:TweenSize(UDim2.new(0, 29, 0, 29),"In","Linear",0.2,true)
							UICorner_3.CornerRadius = UDim.new(0, 5)
							wait(0.2)
							MainToggle_3:TweenSize(UDim2.new(0, 25, 0, 25),"In","Linear",0.2,true)
						end
						wait(0.1)
						CircleClick(TextButton, Mouse.X, Mouse.Y)
						SoundClick:Destroy()
					end)
					
					return ToglFunc
				end
	
				function functionitem:AddTextbox(options)
					local Name = options.Name
					local Placeholder = options.Value
					local callback = options.Callback
	
					local Textbox = Instance.new("Frame")
					local UICorner_16 = Instance.new("UICorner")
					local Text_5 = Instance.new("TextLabel")
					local TextboxHoler = Instance.new("Frame")
					local UICorner_17 = Instance.new("UICorner")
					local HeadTitle = Instance.new("TextBox")
	
					Textbox.Name = Name
					Textbox.Parent = SectionContainer
					Textbox.BackgroundColor3 = Color3.fromRGB(1, 2, 3)
					Textbox.BackgroundTransparency = 0.700
					Textbox.BorderSizePixel = 0
					Textbox.ClipsDescendants = true
					Textbox.Size = UDim2.new(0, 265, 0, 60)
					Textbox.ZIndex = 16
					--InputEnded
					local UIStroke96 = Instance.new("UIStroke")
					UIStroke96.Thickness = 1.2
					UIStroke96.Parent = Textbox
					UIStroke96.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
					UIStroke96.LineJoinMode = Enum.LineJoinMode.Round
					UIStroke96.Color = _G.Color
					UIStroke96.Transparency = 1
	
					Textbox.MouseEnter:Connect(function()
						TweenService:Create(
							UIStroke96,
							TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
							{Transparency = 0.10}
						):Play()
					end)
	
					Textbox.MouseLeave:Connect(function()
						TweenService:Create(
							UIStroke96,
							TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
							{Transparency = 1}
						):Play()
					end)
	
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
	
					UICorner_17.CornerRadius = UDim.new(0, 8)
					UICorner_17.Parent = TextboxHoler
	
					HeadTitle.Name = "HeadTitle"
					HeadTitle.Parent = TextboxHoler
					HeadTitle.AnchorPoint = Vector2.new(0.5, 0.5)
					HeadTitle.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
					HeadTitle.BackgroundTransparency = 1.000
					HeadTitle.BorderSizePixel = 0
					HeadTitle.ClipsDescendants = true
					HeadTitle.Position = UDim2.new(0.5, 3, 0.5, 0)
					HeadTitle.Size = UDim2.new(0.949999988, 0, 0, 25)
					HeadTitle.ZIndex = 16
					HeadTitle.Font = Enum.Font.GothamBold
					HeadTitle.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
					HeadTitle.PlaceholderText = Placeholder
					HeadTitle.Text = ""
					HeadTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
					HeadTitle.TextSize = 13.000
					HeadTitle.TextXAlignment = Enum.TextXAlignment.Center
					
					local ButtonColor44 = Instance.new("UIStroke")
					
					ButtonColor44.Thickness = 0.9
					ButtonColor44.Name = ""
					ButtonColor44.Parent = HeadTitle
					ButtonColor44.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
					ButtonColor44.LineJoinMode = Enum.LineJoinMode.Round
					ButtonColor44.Color = _G.Color
					ButtonColor44.Transparency = 0.2
	
					Textbox.MouseEnter:Connect(function()
						TweenService:Create(
							ButtonColor44,
							TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
							{Thickness = 1}
						):Play()
						TweenService:Create(
							ButtonColor44,
							TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
							{Transparency = 0.5}
						):Play()
					end)
	
					Textbox.MouseLeave:Connect(function()
						TweenService:Create(
							ButtonColor44,
							TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
							{Thickness = 0.9}
						):Play()
						TweenService:Create(
							ButtonColor44,
							TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
							{Transparency = 0.2}
						):Play()
					end)
					
					HeadTitle.FocusLost:Connect(
					function(ep)
						if ep then
							if #HeadTitle.Text > 0 then
								callback(HeadTitle.Text)
								HeadTitle.Text = HeadTitle.Text
							end
						end
					end)
				end
	
				function functionitem:AddDropdown(options)
					--text, list, default, callback
					local text = options.Name
					local Flag = options.Flag
					local default = options.Value or ""
					local list = options.List
					local callback = options.Callback
	
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
	
					local MainDropDown_3 = Instance.new("Frame")
					MainDropDown_3.Name = text
					MainDropDown_3.Parent = SectionContainer
					MainDropDown_3.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
					MainDropDown_3.Position = UDim2.new(0,0,2,0)
					MainDropDown_3.BackgroundTransparency = 1
					MainDropDown_3.BorderSizePixel = 0
					MainDropDown_3.ClipsDescendants = true
					MainDropDown_3.Size = UDim2.new(0, 265, 0, 15)
					MainDropDown_3.ZIndex = 16
	
					local Text_3 = Instance.new("TextLabel")
	
					Text_3.Name = "Text_3"
					Text_3.Parent = MainDropDown_3
					Text_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Text_3.BackgroundTransparency = 1.000
					Text_3.Size = UDim2.new(0, 62, 0, 12)
					Text_3.ZIndex = 16
					Text_3.Font = Enum.Font.GothamBold
					Text_3.Text = text
					Text_3.TextColor3 = Color3.fromRGB(255, 255, 255)
					Text_3.TextSize = 12.000
					Text_3.TextXAlignment = Enum.TextXAlignment.Left
	
					MainDropDown_2.Name = "MainDropDown"
					MainDropDown_2.Parent = MainDropDown
					MainDropDown_2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
					MainDropDown_2.BackgroundTransparency = 0.700
					MainDropDown_2.BorderSizePixel = 0
					MainDropDown_2.ClipsDescendants = true
					MainDropDown_2.Size = UDim2.new(1, 0, 0, 35)
					MainDropDown_2.ZIndex = 16
	
					UICorner_8.CornerRadius = UDim.new(0, 4)
					UICorner_8.Parent = MainDropDown_2
	
					MainDropDown.Name = text
					MainDropDown.Parent = SectionContainer
					MainDropDown.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
					MainDropDown.BackgroundTransparency = 0.700
					MainDropDown.BorderSizePixel = 0
					MainDropDown.ClipsDescendants = true
					MainDropDown.Size = UDim2.new(0, 265, 0, 35)
					MainDropDown.ZIndex = 16
	
					local UIStroke96 = Instance.new("UIStroke")
					UIStroke96.Thickness = 1.2
					UIStroke96.Parent = MainDropDown
					UIStroke96.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
					UIStroke96.LineJoinMode = Enum.LineJoinMode.Round
					UIStroke96.Color = _G.Color
					UIStroke96.Transparency = 1
	
					MainDropDown.MouseEnter:Connect(function()
						TweenService:Create(
							UIStroke96,
							TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
							{Transparency = 0.10}
						):Play()
					end)
	
					MainDropDown.MouseLeave:Connect(function()
						TweenService:Create(
							UIStroke96,
							TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
							{Transparency = 1}
						):Play()
					end)
	
					UICorner_7.CornerRadius = UDim.new(0, 4)
					UICorner_7.Parent = MainDropDown
	
	
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
								return default
							else
								return ""
							end
						else
							return ""
						end
					end
					Text_2.Name = "Text"
					Text_2.Parent = MainDropDown
					Text_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Text_2.BackgroundTransparency = 1.000
					Text_2.Size = UDim2.new(0, 265, 0, 35)
					Text_2.ZIndex = 16
					Text_2.Font = Enum.Font.GothamBold
					Text_2.Text = default
					Text_2.TextColor3 = Color3.fromRGB(255, 255, 255)
					Text_2.TextSize = 13.000
					Text_2.TextXAlignment = Enum.TextXAlignment.Center
	
					ImageButton.Parent = MainDropDown_2
					ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ImageButton.BackgroundTransparency = 1
					ImageButton.Position = UDim2.new(0, 235, 0, 10)
					ImageButton.Size = UDim2.new(0, 13, 0, 13)
					ImageButton.ZIndex = 16
					ImageButton.Image = "http://www.roblox.com/asset/?id=6282522798"
	
					local UICorner_35 = Instance.new("UICorner")
					UICorner_35.CornerRadius = UDim.new(0, 5)
					UICorner_35.Parent = ImageButton
	
					Scroll_Items.Name = "Scroll_Items"
					Scroll_Items.Parent = MainDropDown
					Scroll_Items.Active = true
					Scroll_Items.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Scroll_Items.BackgroundTransparency = 1.000
					Scroll_Items.BorderSizePixel = 0
					Scroll_Items.Position = UDim2.new(0, 0, 0, 31)
					Scroll_Items.Size = UDim2.new(1, 0, 0, 375)
					Scroll_Items.CanvasSize = UDim2.new(0, 0, 0, 0)
					Scroll_Items.ScrollBarThickness = 0
	
					UIListLayout_3.Parent = Scroll_Items
					UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout_3.Padding = UDim.new(0, 5)
					UIListLayout_3:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
					function()
						Scroll_Items.CanvasSize =  UDim2.new(0, 0, 0, UIListLayout_3.AbsoluteContentSize.Y*2)
					end)
					
					UIPadding_3.Parent = Scroll_Items
					UIPadding_3.PaddingLeft = UDim.new(0, 10)
					UIPadding_3.PaddingTop = UDim.new(0, 5)
	
					function Dropfunc:TogglePanel(state)
						TweenService:Create(
							MainDropDown,
							TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = state and UDim2.new(0, 265, 0, 299) or UDim2.new(0, 265, 0, 35)}
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
						_5.Size = UDim2.new(1, -10, 0, 30)
						_5.ZIndex = 17
						_5.AutoButtonColor = false
						_5.Font = Enum.Font.GothamBold
						_5.Text = Text
						_5.TextColor3 = Color3.fromRGB(255, 255, 255)
						_5.TextSize = 12.000
	
						UICorner_9.CornerRadius = UDim.new(0, 4)
						UICorner_9.Parent = _5
	
						local UIStroke96 = Instance.new("UIStroke")
						UIStroke96.Thickness = 1.2
						UIStroke96.Parent = _5
						UIStroke96.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
						UIStroke96.LineJoinMode = Enum.LineJoinMode.Round
						UIStroke96.Color = _G.Color
						UIStroke96.Transparency = 1
	
						for i, v in pairs(Scroll_Items:GetChildren()) do
							if v.Name == default then
								TweenService:Create(
									v,
									TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
									{TextColor3 = Color3.fromRGB(0 , 200, 200)}
								):Play()
								callback(default)
							end
						end  
	
						_5.MouseEnter:Connect(function()
							TweenService:Create(
								UIStroke96,
								TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
								{Transparency = 0.10}
							):Play()
						end)
	
						_5.MouseLeave:Connect(function()
							TweenService:Create(
								UIStroke96,
								TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
								{Transparency = 1}
							):Play()
						end)
	
						_5.MouseButton1Click:Connect(
							function()
								if _x == nil then
									Tof = false
									TweenService:Create(
										_5,
										TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
										{TextColor3 = Color3.fromRGB(0 , 200, 200)}
									):Play()
									Dropfunc:TogglePanel(Tof)
									callback(Text)
									Text_2.Text = Text
									_x = nil
								end
								for i, v in pairs(Scroll_Items:GetChildren()) do
									if v:IsA("TextButton") and v.TextColor3 == Color3.fromRGB(0, 200, 200) then
										TweenService:Create(
											v,
											TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
											{TextColor3 = Color3.fromRGB(255, 255, 255)}
										):Play()
									end
								end
	
							end
						)
					end
					for i, v in next, list do
						Dropfunc:Add(v)
					end
	
	
					return Dropfunc
				end
	
				function functionitem:AddMultiDropdown(options)
					local text = options.Name
					local Flag = options.Flag
					local default = options.Value or {}
					local list = options.List
					local callback = options.Callback
	
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
	
					local MainDropDown_3 = Instance.new("Frame")
	
					MainDropDown_3.Name = Name
					MainDropDown_3.Parent = SectionContainer
					MainDropDown_3.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
					MainDropDown_3.Position = UDim2.new(0,0,2,0)
					MainDropDown_3.BackgroundTransparency = 1
					MainDropDown_3.BorderSizePixel = 0
					MainDropDown_3.ClipsDescendants = true
					MainDropDown_3.Size = UDim2.new(0, 265, 0, 15)
					MainDropDown_3.ZIndex = 16
	
					local Text_3 = Instance.new("TextLabel")
	
					Text_3.Name = "Text_3"
					Text_3.Parent = MainDropDown_3
					Text_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Text_3.BackgroundTransparency = 1.000
					Text_3.Size = UDim2.new(0, 62, 0, 12)
					Text_3.ZIndex = 16
					Text_3.Font = Enum.Font.GothamBold
					Text_3.Text = Name
					Text_3.TextColor3 = Color3.fromRGB(255, 255, 255)
					Text_3.TextSize = 12.000
					Text_3.TextXAlignment = Enum.TextXAlignment.Left
	
					MainDropDown_2.Name = "MainDropDown"
					MainDropDown_2.Parent = MainDropDown
					MainDropDown_2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
					MainDropDown_2.BackgroundTransparency = 0.700
					MainDropDown_2.BorderSizePixel = 0
					MainDropDown_2.ClipsDescendants = true
					MainDropDown_2.Size = UDim2.new(1, 0, 0, 35)
					MainDropDown_2.ZIndex = 16
	
					UICorner_8.CornerRadius = UDim.new(0, 4)
					UICorner_8.Parent = MainDropDown_2
	
					MainDropDown.Name = Name
					MainDropDown.Parent = SectionContainer
					MainDropDown.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
					MainDropDown.BackgroundTransparency = 0.700
					MainDropDown.BorderSizePixel = 0
					MainDropDown.ClipsDescendants = true
					MainDropDown.Size = UDim2.new(0, 265, 0, 35)
					MainDropDown.ZIndex = 16
	
					local UIStroke96 = Instance.new("UIStroke")
					UIStroke96.Thickness = 1.2
					UIStroke96.Parent = MainDropDown
					UIStroke96.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
					UIStroke96.LineJoinMode = Enum.LineJoinMode.Round
					UIStroke96.Color = _G.Color
					UIStroke96.Transparency = 1
	
					MainDropDown.MouseEnter:Connect(function()
						TweenService:Create(
							UIStroke96,
							TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
							{Transparency = 0.10}
						):Play()
					end)
	
					MainDropDown.MouseLeave:Connect(function()
						TweenService:Create(
							UIStroke96,
							TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
							{Transparency = 1}
						):Play()
					end)
	
					UICorner_7.CornerRadius = UDim.new(0, 4)
					UICorner_7.Parent = MainDropDown
	
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
								end
							end
						end
					end
	
					Text_2.Name = "Text"
					Text_2.Parent = MainDropDown_2
					Text_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Text_2.BackgroundTransparency = 1.000
					Text_2.Size = UDim2.new(0, 265, 0, 35)
					Text_2.ZIndex = 16
					Text_2.Font = Enum.Font.GothamBold
					Text_2.Text = table.concat(default, ", ")
					Text_2.TextColor3 = Color3.fromRGB(255, 255, 255)
					Text_2.TextSize = 13.000
					Text_2.TextXAlignment = Enum.TextXAlignment.Center
	
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
							{Size = state and UDim2.new(0, 265, 0, 200) or UDim2.new(0, 265, 0, 35)}
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
						_5.Size = UDim2.new(1, -10, 0, 30)
						_5.ZIndex = 17
						_5.AutoButtonColor = false
						_5.Font = Enum.Font.GothamBold
						_5.Text = Text
						_5.TextColor3 = Color3.fromRGB(255, 255, 255)
						_5.TextSize = 12.000
	
						local UIStroke96 = Instance.new("UIStroke")
						UIStroke96.Thickness = 1.2
						UIStroke96.Parent = _5
						UIStroke96.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
						UIStroke96.LineJoinMode = Enum.LineJoinMode.Round
						UIStroke96.Color = _G.Color
						UIStroke96.Transparency = 1
	
						_5.MouseEnter:Connect(function()
							TweenService:Create(
								UIStroke96,
								TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
								{Transparency = 0.10}
							):Play()
						end)
	
						_5.MouseLeave:Connect(function()
							TweenService:Create(
								UIStroke96,
								TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
								{Transparency = 1}
							):Play()
						end)
	
						UICorner_9.CornerRadius = UDim.new(0, 4)
						UICorner_9.Parent = _5
						_5.MouseButton1Click:Connect(
							function()
								if not table.find(DropTable, Text) then
									table.insert(DropTable, Text)
									callback(DropTable, Text)
									Text_2.Text = table.concat(DropTable, ", ")
									TweenService:Create(
										_5,
										TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
										{TextColor3 = Color3.fromRGB(0 , 200, 200)}
									):Play()
								else
									TweenService:Create(
										_5,
										TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
										{TextColor3 = Color3.fromRGB(255, 255, 255)}
									):Play()
									for i2, v2 in pairs(DropTable) do
										if v2 == Text then
											table.remove(DropTable, i2)
											Text_2.Text = table.concat(DropTable, ", ")
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
	
				function functionitem:AddSlider(options)
					--text,floor,min,max,de,callback
					local text = options.Name
					local floor = options.floor or false
					local Flag = options.Flag
					local de = options.Value or 1
					local min = options.Min or 1
					local max = options.Max or 2
	
					local callback = options.Format or function() end
	
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
	
					SliderFrame.Name = text
					SliderFrame.Parent = SectionContainer
					SliderFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
					SliderFrame.BackgroundTransparency = 0.700
					SliderFrame.Position = UDim2.new(0.109489053, 0, 0.708609283, 0)
					SliderFrame.Size = UDim2.new(0, 265, 0, 45)
	
					local UIStroke96 = Instance.new("UIStroke")
					UIStroke96.Thickness = 1.2
					UIStroke96.Parent = SliderFrame
					UIStroke96.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
					UIStroke96.LineJoinMode = Enum.LineJoinMode.Round
					UIStroke96.Color = _G.Color
					UIStroke96.Transparency = 1
	
					SliderFrame.MouseEnter:Connect(function()
						TweenService:Create(
							UIStroke96,
							TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
							{Transparency = 0.10}
						):Play()
					end)
	
					SliderFrame.MouseLeave:Connect(function()
						TweenService:Create(
							UIStroke96,
							TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
							{Transparency = 1}
						):Play()
					end)
	
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
					ShowValueFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
					ShowValueFrame.Position = UDim2.new(0.733576655, 0, 0.0656082779, 0)
					ShowValueFrame.Size = UDim2.new(0, 58, 0, 21)
	
					CustomValue.Name = "CustomValue"
					CustomValue.Parent = ShowValueFrame
					CustomValue.AnchorPoint = Vector2.new(0.5, 0.5)
					CustomValue.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
					CustomValue.Position = UDim2.new(0.5, 0, 0.5, 0)
					CustomValue.Size = UDim2.new(0, 55, 0, 21)
					CustomValue.Font = Enum.Font.GothamBold
					CustomValue.Text = ""
					CustomValue.TextColor3 = Color3.fromRGB(255, 255, 255)
					CustomValue.TextSize = 11.000
	
					local UIStroke965 = Instance.new("UIStroke")
					UIStroke965.Thickness = 1.2
					UIStroke965.Parent = CustomValue
					UIStroke965.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
					UIStroke965.LineJoinMode = Enum.LineJoinMode.Round
					UIStroke965.Color = _G.Color
					UIStroke965.Transparency = 0.10
	
					SliderFrame.MouseEnter:Connect(function()
						TweenService:Create(
							UIStroke965,
							TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
							{Transparency = 0.5}
						):Play()
					end)
	
					SliderFrame.MouseLeave:Connect(function()
						TweenService:Create(
							UIStroke965,
							TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
							{Transparency = 0.10}
						):Play()
					end)
	
					ShowValueFrameUICorner.CornerRadius = UDim.new(0, 4)
					ShowValueFrameUICorner.Name = "ShowValueFrameUICorner"
					ShowValueFrameUICorner.Parent = ShowValueFrame
	
					ValueFrame.Name = "ValueFrame"
					ValueFrame.Parent = SliderFrame
					ValueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
					ValueFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
					ValueFrame.Position = UDim2.new(0.5, 0, 0.8, 0)
					ValueFrame.Size = UDim2.new(0, 200, 0, 5)
	
					ValueFrameUICorner.CornerRadius = UDim.new(0, 30)
					ValueFrameUICorner.Name = "ValueFrameUICorner"
					ValueFrameUICorner.Parent = ValueFrame
	
					PartValue.Name = "PartValue"
					PartValue.Parent = ValueFrame
					PartValue.AnchorPoint = Vector2.new(0.5, 0.5)
					PartValue.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
					PartValue.BackgroundTransparency = 1.000
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
	
					MainValueUICorner.CornerRadius = UDim.new(0, 30)
					MainValueUICorner.Name = "MainValueUICorner"
					MainValueUICorner.Parent = MainValue
	
	
					local ConneValue = Instance.new("Frame")
					ConneValue.Name = "ConneValue"
					ConneValue.Parent = PartValue
					ConneValue.AnchorPoint = Vector2.new(0.7, 0.7)
					ConneValue.BackgroundColor3 = _G.Color
					ConneValue.Position = UDim2.new((de or 0)/max, 0.5, 0.5,0, 0)
					ConneValue.Size = UDim2.new(0, 10, 0, 10)
					ConneValue.BorderSizePixel = 0
		
					local UICorner = Instance.new("UICorner")
					UICorner.CornerRadius = UDim.new(0, 10)
					UICorner.Parent = ConneValue
	
	
					if floor == true then
						CustomValue.Text =  tostring(de and string.format("%0.2f",(de / max) * (max - min) + min) or 0)
					else
						CustomValue.Text =  tostring(de and math.floor((de / max) * (max - min) + min) or 0)
					end
	
					local function move(input)
						local pos =
							UDim2.new(
								math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
								0,
								0.5,
								0
							)
						local pos1 =
							UDim2.new(
								math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
								0,
								0,
								5
							)
						MainValue:TweenSize(pos1, "Out", "Sine", 0.2, true)
						ConneValue:TweenPosition(pos, "Out", "Sine", 0.2, true)
						if floor == true then
							local value = string.format("%.0f",((pos.X.Scale * max) / max) * (max - min) + min)
							CustomValue.Text = tostring(value)
							callback(value)
						else
							local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
							CustomValue.Text = tostring(value)
							callback(value)
						end
					end
					local dragging = false
					ConneValue.InputBegan:Connect(
						function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								dragging = true
							end
						end)
					ConneValue.InputEnded:Connect(
						function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								dragging = false
							end
						end)
					SliderFrame.InputBegan:Connect(
						function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								dragging = true
							end
						end)
					SliderFrame.InputEnded:Connect(
						function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								dragging = false
							end
						end)
					ValueFrame.InputBegan:Connect(
						function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								dragging = true
							end
						end)
					ValueFrame.InputEnded:Connect(
						function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								dragging = false
							end
						end)
						game:GetService("UserInputService").InputChanged:Connect(function(input)
							if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
								move(input)
							end
						end)
						CustomValue.FocusLost:Connect(function()
							if CustomValue.Text == "" then
								CustomValue.Text  = de
							end
							if  tonumber(CustomValue.Text) > max then
								CustomValue.Text  = max
							end
							MainValue:TweenSize(UDim2.new((CustomValue.Text or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
							ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.6, 0) , "Out", "Sine", 0.2, true)
							if floor == true then
								CustomValue.Text = tostring(CustomValue.Text and string.format("%.0f",(CustomValue.Text / max) * (max - min) + min) )
							else
								CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
							end
							pcall(callback, CustomValue.Text)
						end)
						
						function sliderfunc:Update(value)
							MainValue:TweenSize(UDim2.new((value or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
							ConneValue:TweenPosition(UDim2.new((value or 0)/max, 0.5, 0.5,0, 0) , "Out", "Sine", 0.2, true)
							CustomValue.Text = value
							pcall(function()
								callback(value)
							end)
						end
					return sliderfunc
				end
				function functionitem:AddColorpicker(text, preset, callback)
					local OldToggleColor = Color3.fromRGB(0, 0, 0)
					local OldColor = Color3.fromRGB(0, 0, 0)
					local OldColorSelectionPosition = nil
					local OldHueSelectionPosition = nil
					local ColorH, ColorS, ColorV = 1, 1, 1
					local RainbowColorPicker = false
					local ColorPickerInput = nil
					local ColorInput = nil
					local HueInput = nil
			
					local Colorpicker = Instance.new("Frame")
					local ColorpickerTitle = Instance.new("TextLabel")
					local ColorpickerFrameOutline = Instance.new("Frame")
					local ColorpickerFrameOutlineCorner = Instance.new("UICorner")
					local ColorpickerFrame = Instance.new("Frame")
					local ColorpickerFrameCorner = Instance.new("UICorner")
					local Color = Instance.new("ImageLabel")
					local ColorCorner = Instance.new("UICorner")
					local ColorSelection = Instance.new("ImageLabel")
					local Hue = Instance.new("ImageLabel")
					local HueCorner = Instance.new("UICorner")
					local HueGradient = Instance.new("UIGradient")
					local HueSelection = Instance.new("ImageLabel")
					local PresetClr = Instance.new("Frame")
					local PresetClrCorner = Instance.new("UICorner")
			
					Colorpicker.Name = "Colorpicker"
					Colorpicker.Parent = SectionContainer
					Colorpicker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Colorpicker.BackgroundTransparency = 1.000
					Colorpicker.Position = UDim2.new(0.0895741582, 0, 0.474232763, 0)
					Colorpicker.Size = UDim2.new(0, 403, 0, 175)
			
					ColorpickerTitle.Name = "ColorpickerTitle"
					ColorpickerTitle.Parent = Colorpicker
					ColorpickerTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ColorpickerTitle.BackgroundTransparency = 1.000
					ColorpickerTitle.Position = UDim2.new(0, 5, 0, 0)
					ColorpickerTitle.Size = UDim2.new(0, 200, 0, 29)
					ColorpickerTitle.Font = Enum.Font.Gotham
					ColorpickerTitle.Text = "Colorpicker"
					ColorpickerTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
					ColorpickerTitle.TextSize = 14.000
					ColorpickerTitle.TextXAlignment = Enum.TextXAlignment.Left
			
					ColorpickerFrameOutline.Name = "ColorpickerFrameOutline"
					ColorpickerFrameOutline.Parent = ColorpickerTitle
					ColorpickerFrameOutline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ColorpickerFrameOutline.Position = UDim2.new(-0.00100000005, 0, 0.991999984, 0)
					ColorpickerFrameOutline.Size = UDim2.new(0, 238, 0, 139)
			
					ColorpickerFrameOutlineCorner.CornerRadius = UDim.new(0, 3)
					ColorpickerFrameOutlineCorner.Name = "ColorpickerFrameOutlineCorner"
					ColorpickerFrameOutlineCorner.Parent = ColorpickerFrameOutline
			
					ColorpickerFrame.Name = "ColorpickerFrame"
					ColorpickerFrame.Parent = ColorpickerTitle
					ColorpickerFrame.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
					ColorpickerFrame.ClipsDescendants = true
					ColorpickerFrame.Position = UDim2.new(0.00899999978, 0, 1.06638515, 0)
					ColorpickerFrame.Selectable = true
					ColorpickerFrame.Size = UDim2.new(0, 234, 0, 135)
			
					ColorpickerFrameCorner.CornerRadius = UDim.new(0, 3)
					ColorpickerFrameCorner.Name = "ColorpickerFrameCorner"
					ColorpickerFrameCorner.Parent = ColorpickerFrame
			
					Color.Name = "Color"
					Color.Parent = ColorpickerFrame
					Color.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
					Color.Position = UDim2.new(0, 10, 0, 10)
					Color.Size = UDim2.new(0, 154, 0, 118)
					Color.ZIndex = 10
					Color.Image = "rbxassetid://4155801252"
			
					ColorCorner.CornerRadius = UDim.new(0, 3)
					ColorCorner.Name = "ColorCorner"
					ColorCorner.Parent = Color
			
					ColorSelection.Name = "ColorSelection"
					ColorSelection.Parent = Color
					ColorSelection.AnchorPoint = Vector2.new(0.5, 0.5)
					ColorSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ColorSelection.BackgroundTransparency = 1.000
					ColorSelection.Position = UDim2.new(preset and select(3, Color3.toHSV(preset)))
					ColorSelection.Size = UDim2.new(0, 18, 0, 18)
					ColorSelection.Image = "http://www.roblox.com/asset/?id=4805639000"
					ColorSelection.ScaleType = Enum.ScaleType.Fit
			
					Hue.Name = "Hue"
					Hue.Parent = ColorpickerFrame
					Hue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Hue.Position = UDim2.new(0, 171, 0, 10)
					Hue.Size = UDim2.new(0, 18, 0, 118)
			
					HueCorner.CornerRadius = UDim.new(0, 3)
					HueCorner.Name = "HueCorner"
					HueCorner.Parent = Hue
			
					HueGradient.Color = ColorSequence.new {ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)), ColorSequenceKeypoint.new(0.20, Color3.fromRGB(234, 255, 0)), ColorSequenceKeypoint.new(0.40, Color3.fromRGB(21, 255, 0)), ColorSequenceKeypoint.new(0.60, Color3.fromRGB(0, 255, 255)), ColorSequenceKeypoint.new(0.80, Color3.fromRGB(0, 17, 255)), ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 0, 251)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 4))}
					HueGradient.Rotation = 270
					HueGradient.Name = "HueGradient"
					HueGradient.Parent = Hue
			
					HueSelection.Name = "HueSelection"
					HueSelection.Parent = Hue
					HueSelection.AnchorPoint = Vector2.new(0.5, 0.5)
					HueSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					HueSelection.BackgroundTransparency = 1.000
					HueSelection.Position = UDim2.new(0.48, 0, 1 - select(1, Color3.toHSV(preset)))
					HueSelection.Size = UDim2.new(0, 18, 0, 18)
					HueSelection.Image = "http://www.roblox.com/asset/?id=4805639000"
			
					PresetClr.Name = "PresetClr"
					PresetClr.Parent = ColorpickerFrame
					PresetClr.BackgroundColor3 = preset
					PresetClr.Position = UDim2.new(0.846153855, 0, 0.0740740746, 0)
					PresetClr.Size = UDim2.new(0, 25, 0, 25)
			
					PresetClrCorner.CornerRadius = UDim.new(0, 3)
					PresetClrCorner.Name = "PresetClrCorner"
					PresetClrCorner.Parent = PresetClr
			
					local function UpdateColorPicker(nope)
						PresetClr.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
						Color.BackgroundColor3 = Color3.fromHSV(ColorH, 1, 1)
						pcall(callback, PresetClr.BackgroundColor3)
					end
			
					ColorH = 1 - (math.clamp(HueSelection.AbsolutePosition.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) / Hue.AbsoluteSize.Y)
					ColorS = (math.clamp(ColorSelection.AbsolutePosition.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) / Color.AbsoluteSize.X)
					ColorV = 1 - (math.clamp(ColorSelection.AbsolutePosition.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) / Color.AbsoluteSize.Y)
			
					PresetClr.BackgroundColor3 = preset
					Color.BackgroundColor3 = preset
					pcall(callback, PresetClr.BackgroundColor3)
			
					Color.InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							if ColorInput then
								ColorInput:Disconnect()
							end
			
							ColorInput = RunService.RenderStepped:Connect(function()
								local ColorX = (math.clamp(Mouse.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) / Color.AbsoluteSize.X)
								local ColorY = (math.clamp(Mouse.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) / Color.AbsoluteSize.Y)
								ColorSelection.Position = UDim2.new(ColorX, 0, ColorY, 0)
								ColorS = ColorX
								ColorV = 1 - ColorY
			
								UpdateColorPicker(true)
							end)
						end
					end)
			
					Color.InputEnded:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							if ColorInput then
								ColorInput:Disconnect()
							end
						end
					end)
			
					Hue.InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							if HueInput then
								HueInput:Disconnect()
							end
			
							HueInput = RunService.RenderStepped:Connect(function()
								local HueY = (math.clamp(Mouse.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) / Hue.AbsoluteSize.Y)
								HueSelection.Position = UDim2.new(0.48, 0, HueY, 0)
								ColorH = 1 - HueY
			
								UpdateColorPicker(true)
							end)
						end
					end)
			
					Hue.InputEnded:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							if HueInput then
								HueInput:Disconnect()
							end
						end
					end)
				end
				return functionitem
			end
			return sections
		end
		return tabs
	end

	

	------------ // SaveSetting \\ ------------
	
	function LoadSettings()
		if readfile and writefile and isfile and isfolder then
			if not isfolder("Vector Hub") then
				makefolder("Vector Hub")
			end
			if not isfolder("Vector Hub/Blox Fruits/") then
				makefolder("Vector Hub/Blox Fruits/")
			end
			if not isfile("Vector Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
				writefile("Vector Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(_G.Settings))
			else
				local Decode = game:GetService("HttpService"):JSONDecode(readfile("Vector Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"))
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
			if not isfile("Vector Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
				LoadSettings()
			else
				local Decode = game:GetService("HttpService"):JSONDecode(readfile("Vector Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"))
				local Array = {}
				for i,v in pairs(_G.Settings) do
					Array[i] = v
				end
				writefile("Vector Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(Array))
			end
		else
			return warn("Status : Undetected Executor")
		end
	end

	LoadSettings()
	
	if _G.Settings.Select_Boss == nil then
		_G.Settings.Select_Boss = "nil"
	end
	
local id = game.PlaceId
if id == 2753915549 then
World1 = true; 
elseif id == 4442272183 then
World2 = true;
elseif id == 7449423635 then
World3 = true;
else
game:Shutdown()
end;
-- [GetMaterial]

function GetMaterial(matname)
	for i, v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
	if type(v) == "table" then
		if v.Type == "Material" then
			if v.Name == matname then
				return v.Count
			end
		end
	end
	end
	return 0
	end
	
	local AllMaterial
	if World1 then
	AllMaterial = {
	"Magma Ore",
	"Leather",
	"Scrap Metal",
	"Angel Wings",
	"Fish Tail"
	}
	elseif World2 then
	AllMaterial = {
	"Magma Ore",
	"Scrap Metal",
	"Radioactive Material",
	"Vampire Fang",
	"Mystic Droplet",
	}
	elseif World3 then
	AllMaterial = {
	"Mini Tusk",
	"Fish Tail",
	"Scrap Metal",
	"Dragon Scale",
	"Conjured Cocoa",
	"Demonic Wisp",
	"Gunpowder",
	}
	end
	
	table.sort(AllMaterial)
	
	-- [CustomFindFirstChild]
	
	local function CustomFindFirstChild(tablename)
	for i, v in pairs(tablename) do
	if game:GetService("Workspace").Enemies:FindFirstChild(v) then
		return true
	end
	end
	return false
	end
	
	-- [CheckMaterial]
	
	local function CheckMaterial(v1)
	if World1 then
	if (v1 == "Magma Ore") then
		MaterialMob = { "Military Soldier", "Military Spy" };
		CFrameMon = CFrame.new(-5815, 84, 8820);
	elseif ((v1 == "Leather") or (v1 == "Scrap Metal")) then
		MaterialMob = { "Brute"};
		CFrameMon = CFrame.new(-1145, 15, 4350);
	elseif (v1 == "Angel Wings") then
		MaterialMob = { "God's Guard"};
		CFrameMon = CFrame.new(-4698, 845, -1912);
	elseif (v1 == "Fish Tail") then
		MaterialMob = { "Fishman Warrior", "Fishman Commando" };
		CFrameMon = CFrame.new(61123, 19, 1569);
	end
	end
	if World2 then
	if (v1 == "Magma Ore") then
		MaterialMob = { "Magma Ninja" };
		CFrameMon = CFrame.new(-5428, 78, -5959);
	elseif (v1 == "Scrap Metal") then
		MaterialMob = { "Swan Pirate" };
		CFrameMon = CFrame.new(878, 122, 1235);
	elseif (v1 == "Radioactive Material") then
		MaterialMob = { "Factory Staff" };
		CFrameMon = CFrame.new(295, 73, -56);
	elseif (v1 == "Vampire Fang") then
		MaterialMob = { "Vampire" };
		CFrameMon = CFrame.new(-6033, 7, -1317);
	elseif (v1 == "Mystic Droplet") then
		MaterialMob = { "Water Fighter", "Sea Soldier" };
		CFrameMon = CFrame.new(-3385, 239, -10542);
	end
	end
	if World3 then
	if (v1 == "Mini Tusk") then
		MaterialMob = { "Mythological Pirate" };
		CFrameMon = CFrame.new(-13545, 470, -6917);
	elseif (v1 == "Fish Tail") then
		MaterialMob = { "Fishman Raider", "Fishman Captain" };
		CFrameMon = CFrame.new(-10993, 332, -8940);
	elseif (v1 == "Scrap Metal") then
		MaterialMob = { "Jungle Pirate" };
		CFrameMon = CFrame.new(-12107, 332, -10549);
	elseif (v1 == "Dragon Scale") then
		MaterialMob = { "Dragon Crew Archer", "Dragon Crew Warrior" };
		CFrameMon = CFrame.new(6594, 383, 139);
	elseif (v1 == "Conjured Cocoa") then
		MaterialMob = { "Cocoa Warrior", "Chocolate Bar Battler", "Sweet Thief",
			"Candy Rebel" };
		CFrameMon = CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625);
	elseif (v1 == "Demonic Wisp") then
		MaterialMob = { "Demonic Soul" };
		CFrameMon = CFrame.new(-9507, 172, 6158);
	elseif (v1 == "Gunpowder") then
		MaterialMob = { "Pistol Billionaire" };
		CFrameMon = CFrame.new(-469, 74, 5904);
	end
	end
	end

	local function QuestCheck()
		local Lvl = game:GetService("Players").LocalPlayer.Data.Level.Value
		if Lvl >= 1 and Lvl <= 9 then
			if tostring(game.Players.LocalPlayer.Team) == "Marines" then
				MobName = "Trainee [Lv. 5]"
				QuestName = "MarineQuest"
				QuestLevel = 1
				Mon = "Trainee"
				NPCPosition = CFrame.new(-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-08, -0.667371571, 4.32403588e-08, 1, -1.07884304e-07, 0.667371571, -1.09201515e-07, -0.744724929)
			elseif tostring(game.Players.LocalPlayer.Team) == "Pirates" then
				MobName = "Bandit [Lv. 5]"
				Mon = "Bandit"
				QuestName = "BanditQuest1"
				QuestLevel = 1
				NPCPosition = CFrame.new(1059.99731, 16.9222069, 1549.28162, -0.95466274, 7.29721794e-09, 0.297689587, 1.05190106e-08, 1, 9.22064114e-09, -0.297689587, 1.19340022e-08, -0.95466274)
			end
			return {
				[1] = QuestLevel,
				[2] = NPCPosition,
				[3] = MobName,
				[4] = QuestName,
				[5] = LevelRequire,
				[6] = Mon,
				[7] = MobCFrame
			}
		end
	
		if Lvl >= 210 and Lvl <= 249 then
			MobName = "Dangerous Prisoner [Lv. 210]"
			QuestName = "PrisonerQuest"
			QuestLevel = 2
			Mon = "Dangerous Prisoner"
			NPCPosition = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
			local matchingCFrames = {}
			local result = string.gsub(MobName, "Lv. ", "")
			local result2 = string.gsub(result, "[%[%]]", "")
			local result3 = string.gsub(result2, "%d+", "")
			local result4 = string.gsub(result3, "%s+", "")
			
			for i,v in pairs(game.workspace.EnemySpawns:GetChildren()) do
				if v.Name == result4 then
					table.insert(matchingCFrames, v.CFrame)
				end
				MobCFrame = matchingCFrames
			end
			return {
				[1] = QuestLevel,
				[2] = NPCPosition,
				[3] = MobName,
				[4] = QuestName,
				[5] = LevelRequire,
				[6] = Mon,
				[7] = MobCFrame
			}
		end
		
		--game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
		local GuideModule = require(game:GetService("ReplicatedStorage").GuideModule)
		local Quests = require(game:GetService("ReplicatedStorage").Quests)
		for i,v in pairs(GuideModule["Data"]["NPCList"]) do
			for i1,v1 in pairs(v["Levels"]) do
				if Lvl >= v1 then
					if not LevelRequire then
						LevelRequire = 0
					end
					if v1 > LevelRequire then
						NPCPosition = i["CFrame"]
						QuestLevel = i1
						LevelRequire = v1
					end
					if #v["Levels"] == 3 and QuestLevel == 3 then
						NPCPosition = i["CFrame"]
						QuestLevel = 2
						LevelRequire = v["Levels"][2]
					end
				end
			end
		end
		if Lvl >= 375 and Lvl <= 399 then -- Fishman Warrior
			if _G.Auto_Farm_Level and (NPCPosition.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			end
		end
	
		if Lvl >= 400 and Lvl <= 449 then -- Fishman Commando
			if _G.Auto_Farm_Level and (NPCPosition.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			end
		end
		for i,v in pairs(Quests) do
			for i1,v1 in pairs(v) do
				if v1["LevelReq"] == LevelRequire and i ~= "CitizenQuest" then
					QuestName = i
					for i2,v2 in pairs(v1["Task"]) do
						MobName = i2
						Mon = string.split(i2," [Lv. ".. v1["LevelReq"] .. "]")[1]
					end
				end
			end
		end
		if QuestName == "MarineQuest2" then
			QuestName = "MarineQuest2"
			QuestLevel = 1
			MobName = "Chief Petty Officer [Lv. 120]"
			Mon = "Chief Petty Officer"
			LevelRequire = 120
		elseif QuestName == "ImpelQuest" then
			QuestName = "PrisonerQuest"
			QuestLevel = 2
			MobName = "Dangerous Prisoner [Lv. 190]"
			Mon = "Dangerous Prisoner"
			LevelRequire = 210
			NPCPosition = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
		elseif QuestName == "SkyExp1Quest" then
			if QuestLevel == 1 then
				NPCPosition = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
			elseif QuestLevel == 2 then
				NPCPosition = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
			end
		elseif QuestName == "Area2Quest" and QuestLevel == 2 then
			QuestName = "Area2Quest"
			QuestLevel = 1
			MobName = "Swan Pirate [Lv. 775]"
			Mon = "Swan Pirate"
			LevelRequire = 775
		end
		MobName = MobName:sub(1,#MobName)
		if not MobName:find("Lv") then
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				MonLV = string.match(v.Name, "%d+")
				if v.Name:find(MobName) and #v.Name > #MobName and tonumber(MonLV) <= Lvl + 50 then
					MobName = v.Name
				end
			end
		end
		if not MobName:find("Lv") then
			for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
				MonLV = string.match(v.Name, "%d+")
				if v.Name:find(MobName) and #v.Name > #MobName and tonumber(MonLV) <= Lvl + 50 then
					MobName = v.Name
					Mon = a
				end
			end
		end
	
		local matchingCFrames = {}
		local result = string.gsub(MobName, "Lv. ", "")
		local result2 = string.gsub(result, "[%[%]]", "")
		local result3 = string.gsub(result2, "%d+", "")
		local result4 = string.gsub(result3, "%s+", "")
		
		for i,v in pairs(game.workspace.EnemySpawns:GetChildren()) do
			if v.Name == result4 then
				table.insert(matchingCFrames, v.CFrame)
			else
				table.insert(matchingCFrames, nil)
			end
			MobCFrame = matchingCFrames
		end
		
		return {
			[1] = QuestLevel,
			[2] = NPCPosition,
			[3] = MobName,
			[4] = QuestName,
			[5] = LevelRequire,
			[6] = Mon,
			[7] = MobCFrame,
			[8] = MonQ,
			[9] = MobCFrameNuber
		}
	end
	
	function CheckBossQuest()
		if _G.Settings.Select_Boss == "Saber Expert" then 
			MsBoss = "Saber Expert"
			NameBoss = "Saber Expert"
			CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
		elseif _G.Settings.Select_Boss == "The Saw" then 
			MsBoss = "The Saw"
			NameBoss = "The Saw"
			CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
		elseif _G.Settings.Select_Boss == "Greybeard" then
			MsBoss = "Greybeard"
			NameBoss = "Greybeard"
			CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
		elseif _G.Settings.Select_Boss == "The Gorilla King" then
			MsBoss = "The Gorilla King"
			NameBoss = "The Gorilla King"
			NameQuestBoss = "JungleQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
			CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
		elseif _G.Settings.Select_Boss == "Bobby" then
			MsBoss = "Bobby"
			NameBoss = "Bobby"
			NameQuestBoss = "BuggyQuest1"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
			CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
		elseif _G.Settings.Select_Boss == "Yeti" then
			MsBoss = "Yeti"
			NameBoss = "Yeti"
			NameQuestBoss = "SnowQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
			CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
		elseif _G.Settings.Select_Boss == "Mob Leader" then
			MsBoss = "Mob Leader"
			NameBoss = "Mob Leader"
			CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
		elseif _G.Settings.Select_Boss == "Vice Admiral" then
			MsBoss = "Vice Admiral"
			NameBoss = "Vice Admiral"
			NameQuestBoss = "MarineQuest2"
			LevelQuestBoss = 2
			CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
			CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
		elseif _G.Settings.Select_Boss == "Warden" then
			MsBoss = "Warden"
			NameBoss = "Warden"
			NameQuestBoss = "ImpelQuest"
			LevelQuestBoss = 1
			CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
			CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
		elseif _G.Settings.Select_Boss == "Chief Warden" then
			MsBoss = "Chief Warden"
			NameBoss = "Chief Warden"
			NameQuestBoss = "ImpelQuest"
			LevelQuestBoss = 2
			CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
			CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
		elseif _G.Settings.Select_Boss == "Swan" then
			MsBoss = "Swan"
			NameBoss = "Swan"
			NameQuestBoss = "ImpelQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
			CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
		elseif _G.Settings.Select_Boss == "Magma Admiral" then
			MsBoss = "Magma Admiral"
			NameBoss = "Magma Admiral"
			NameQuestBoss = "MagmaQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
			CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
		elseif _G.Settings.Select_Boss == "Fishman Lord" then
			MsBoss = "Fishman Lord"
			NameBoss = "Fishman Lord"
			NameQuestBoss = "FishmanQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
			CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
		elseif _G.Settings.Select_Boss == "Wysper" then
			MsBoss = "Wysper"
			NameBoss = "Wysper"
			NameQuestBoss = "SkyExp1Quest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
			CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
		elseif _G.Settings.Select_Boss == "Thunder God" then
			MsBoss = "Thunder God"
			NameBoss = "Thunder God"
			NameQuestBoss = "SkyExp2Quest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
			CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
		elseif _G.Settings.Select_Boss == "Cyborg" then
			MsBoss = "Cyborg"
			NameBoss = "Cyborg"
			NameQuestBoss = "FountainQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
			CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
			-- New World
		elseif _G.Settings.Select_Boss == "Diamond" then
			MsBoss = "Diamond"
			NameBoss = "Diamond"
			NameQuestBoss = "Area1Quest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
			CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
		elseif _G.Settings.Select_Boss == "Jeremy" then
			MsBoss = "Jeremy"
			NameBoss = "Jeremy"
			NameQuestBoss = "Area2Quest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
			CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
		elseif _G.Settings.Select_Boss == "Fajita" then
			MsBoss = "Fajita"
			NameBoss = "Fajita"
			NameQuestBoss = "MarineQuest3"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
			CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
		elseif _G.Settings.Select_Boss == "Don Swan" then
			MsBoss = "Don Swan"
			NameBoss = "Don Swan"
			CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
		elseif _G.Settings.Select_Boss == "Smoke Admiral" then
			MsBoss = "Smoke Admiral"
			NameBoss = "Smoke Admiral"
			NameQuestBoss = "IceSideQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
			CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
		elseif _G.Settings.Select_Boss == "Cursed Captain" then
			MsBoss = "Cursed Captain"
			NameBoss = "Cursed Captain"
			CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
		elseif _G.Settings.Select_Boss == "Darkbeard" then
			MsBoss = "Darkbeard"
			NameBoss = "Darkbeard"
			CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
		elseif _G.Settings.Select_Boss == "Order" then
			MsBoss = "Order"
			NameBoss = "Order"
			CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
		elseif _G.Settings.Select_Boss == "Awakened Ice Admiral" then
			MsBoss = "Awakened Ice Admiral"
			NameBoss = "Awakened Ice Admiral"
			NameQuestBoss = "FrostQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
			CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
		elseif _G.Settings.Select_Boss == "Tide Keeper" then
			MsBoss = "Tide Keeper"
			NameBoss = "Tide Keeper"
			NameQuestBoss = "ForgottenQuest"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
			CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
			-- Thire World
		elseif _G.Settings.Select_Boss == "Stone" then
			MsBoss = "Stone"
			NameBoss = "Stone"
			NameQuestBoss = "PiratePortQuest"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-290, 44, 5577)
			CFrameBoss = CFrame.new(-1085, 40, 6779)
		elseif _G.Settings.Select_Boss == "Island Empress" then
			MsBoss = "Island Empress"
			NameBoss = "Island Empress"
			NameQuestBoss = "AmazonQuest2"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(5443, 602, 752)
			CFrameBoss = CFrame.new(5659, 602, 244)
		elseif _G.Settings.Select_Boss == "Kilo Admiral" then
			MsBoss = "Kilo Admiral"
			NameBoss = "Kilo Admiral"
			NameQuestBoss = "MarineTreeIsland"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(2178, 29, -6737)
			CFrameBoss =CFrame.new(2846, 433, -7100)
		elseif _G.Settings.Select_Boss == "Captain Elephant" then
			MsBoss = "Captain Elephant"
			NameBoss = "Captain Elephant"
			NameQuestBoss = "DeepForestIsland"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-13232, 333, -7631)
			CFrameBoss = CFrame.new(-13221, 325, -8405)
		elseif _G.Settings.Select_Boss == "Beautiful Pirate" then
			MsBoss = "Beautiful Pirate"
			NameBoss = "Beautiful Pirate"
			NameQuestBoss = "DeepForestIsland2"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-12686, 391, -9902)
			CFrameBoss = CFrame.new(5182, 23, -20)
		elseif _G.Settings.Select_Boss == "Cake Queen" then
			MsBoss = "Cake Queen"
			NameBoss = "Cake Queen"
			NameQuestBoss = "IceCreamIslandQuest"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-716, 382, -11010)
			CFrameBoss = CFrame.new(-821, 66, -10965)
		elseif _G.Settings.Select_Boss == "rip_indra True Form" then
			MsBoss = "rip_indra True Form"
			NameBoss = "rip_indra True Form"
			CFrameBoss = CFrame.new(-5359, 424, -2735)
		elseif _G.Settings.Select_Boss == "Longma" then
			MsBoss = "Longma"
			NameBoss = "Longma"
			CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
		elseif _G.Settings.Select_Boss == "Soul Reaper" then
			MsBoss = "Soul Reaper"
			NameBoss = "Soul Reaper"
			CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
		end
	end
	
	function AutoHaki()
		if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
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
	
	function UnEquipWeapon(Weapon)
		if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
			_G.NotAutoEquip = true
			wait(.5)
			game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
			wait(.1)
			_G.NotAutoEquip = false
		end
	end
	
	function Com(com,...)
		local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("Comm"..com)
		if Remote:IsA("RemoteEvent") then
			Remote:FireServer(...)
		elseif Remote:IsA("RemoteFunction") then
			Remote:InvokeServer(...)
		end
	end
	
	-- [Tween Functions]
	
	local function GetIsLand(...)
		local RealtargetPos = {...}
		local targetPos = RealtargetPos[1]
		local RealTarget
		if type(targetPos) == "vector" then
			RealTarget = targetPos
		elseif type(targetPos) == "userdata" then
			RealTarget = targetPos.Position
		elseif type(targetPos) == "number" then
			RealTarget = CFrame.new(unpack(RealtargetPos))
			RealTarget = RealTarget.p
		end
	
		local ReturnValue
		local CheckInOut = math.huge;
		if game.Players.LocalPlayer.Team then
			for i,v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren()) do 
				local ReMagnitude = (RealTarget - v:GetModelCFrame().p).Magnitude;
				if ReMagnitude < CheckInOut then
					CheckInOut = ReMagnitude;
					ReturnValue = v.Name
				end
			end
			if ReturnValue then
				return ReturnValue
			end 
		end
	end
	
	local function toTarget(...)
		local RealtargetPos = { ... }
		local targetPos = RealtargetPos[1]
		local RealTarget
		if type(targetPos) == "vector" then
		RealTarget = CFrame.new(targetPos)
		elseif type(targetPos) == "userdata" then
		RealTarget = targetPos
		elseif type(targetPos) == "number" then
		RealTarget = CFrame.new(unpack(RealtargetPos))
		end
		
		if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 then
		if tween then tween:Cancel() end
		repeat wait() until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0; wait(0.2)
		end
		
		local tweenfunc = {}
		local Distance = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
		if Distance < 50 then
			Speed = 650
		elseif Distance < 250 then
			Speed = 590
		elseif Distance < 500 then
			Speed = 500
		elseif Distance < 750 then
			Speed = 400
		elseif Distance >= 1000 then
			Speed = 350
		end
		if _G.BypassTP then
		if Distance > 3000 and not AutoFarmMaterial and not _G.AutoGodHumanand and not _G.AutoRaids and not (game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice")) and not (Name == "Fishman Commando" or Name == "Fishman Warrior") then
			repeat wait() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5076.60107, 314.54129, -3152.13086, 0.351963997, -4.56893581e-08, -0.93601352, 6.84364423e-08, 1, -2.30789325e-08, 0.93601352, -5.59344855e-08, 0.351963997))  until (CFrame.new(-5076.60107, 314.54129, -3152.13086, 0.351963997, -4.56893581e-08, -0.93601352, 6.84364423e-08, 1, -2.30789325e-08, 0.93601352, -5.59344855e-08, 0.351963997).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
				pcall(function()
				tween:Cancel()
				fkwarp = false
		
				if game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("SpawnPoint").Value == tostring(GetIsLand(RealTarget)) then
					wait(.1)
					Com("F_", "TeleportToSpawn")
				elseif game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("LastSpawnPoint").Value == tostring(GetIsLand(RealTarget)) then
					game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
					wait(0.1)
					repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
				else
					if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
						if fkwarp == false then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
						end
						fkwarp = true
					end
					wait(.08)
					game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
					repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
					wait(.1)
					Com("F_", "SetSpawnPoint")
				end
				wait(0.2)
		
				return
			end)
		end
		end
		local tween_s = game:service "TweenService"
		local info = TweenInfo.new(
		(RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position)
		.Magnitude / Speed, Enum.EasingStyle.Linear)
		local tweenw, err = pcall(function()
				if not game.Players.LocalPlayer.Character:FindFirstChild("Highlight") then
					local Highlight = Instance.new("Highlight")
					Highlight.FillColor = Color3.new(0, 0, 255)
					Highlight.OutlineColor = Color3.new(0,0,255)
					Highlight.Parent = game.Players.LocalPlayer.Character
				end
		tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, { CFrame = RealTarget })
		tween:Play()
		end)
		
		function tweenfunc:Stop()
		tween:Cancel()
		end
		
		function tweenfunc:Wait()
		tween.Completed:Wait()
		end
		
		return tweenfunc
		end

		TweeSpeed = 300
		getgenv().ToTarget = function(Point)
			TweenPlay = (Point.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
			if LocalPlayer.Character.Humanoid.Sit == true then 
				LocalPlayer.Character.Humanoid.Sit = false 
			end
			pcall(function() 
				tot = game:GetService("TweenService"):Create(LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(TweenPlay/TweeSpeed, Enum.EasingStyle.Linear),{CFrame = Point})
			end)
		
			if _G.StopTween == true then
				tot:Cancel()
				_G.Clip = false
			end
	
			if TweenPlay > 2000 and _G.Bypass_TP then
				repeat wait() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5076.60107, 314.54129, -3152.13086, 0.351963997, -4.56893581e-08, -0.93601352, 6.84364423e-08, 1, -2.30789325e-08, 0.93601352, -5.59344855e-08, 0.351963997))  until (CFrame.new(-5076.60107, 314.54129, -3152.13086, 0.351963997, -4.56893581e-08, -0.93601352, 6.84364423e-08, 1, -2.30789325e-08, 0.93601352, -5.59344855e-08, 0.351963997).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
				pcall(function() 
					pcall(function()
						tot:Cancel()
						fkwarp = false
		
						if game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("SpawnPoint").Value == tostring(GetIsLand(Point)) then 
							wait(.1)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TeleportToSpawn")
						elseif game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("LastSpawnPoint").Value == tostring(GetIsLand(Point)) then
							game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
							wait(0.1)
							repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
						else
							if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
								if fkwarp == false then
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
								end
								fkwarp = true
							end
							wait(.08)
							game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
							repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
							wait(.1)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
						end
						wait(0.2)
						return
					end)
				end)
			end
		
			tot:Play()
			if not game.Players.LocalPlayer.Character:FindFirstChild("Highlight") then
				local Highlight = Instance.new("Highlight")
				Highlight.FillColor = Color3.new(0, 0, 255)
				Highlight.OutlineColor = Color3.new(0,0,255)
				Highlight.Parent = game.Players.LocalPlayer.Character
			end
			if TweenPlay < 50 then
				TweeSpeed = 650
			elseif TweenPlay < 250 then
				TweeSpeed = 590
			elseif TweenPlay < 500 then
				TweeSpeed = 500
			elseif TweenPlay < 750 then
				TweeSpeed = 400
			elseif TweenPlay >= 1000 then
				TweeSpeed = 350
			end
			if _G.StopTween then
				tot:Cancel()
				BringMobFarm = false
				UseSkillGun = false
				_G.UseSkill = false
			elseif game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
				tot:Play()
			end
		end

	local function tweenModel(model, goToCFrame)
		local owner = model:FindFirstChild("Owner")
		if owner and owner:IsA("ObjectValue") and owner.Value then
			local ownerName = owner.Value.Name
			if ownerName == game.Players.LocalPlayer.Name then
				for _, part in pairs(model:GetDescendants()) do
					if part:IsA("BasePart") then
						local TweenService = game:GetService("TweenService")
						local info = TweenInfo.new((part.Position - goToCFrame.Position).Magnitude / 200, Enum.EasingStyle.Linear)
						local tween = TweenService:Create(part, info, { CFrame = goToCFrame })
						tween:Play()
                        if _G.stpboat then
                            tween:Cancel()
                        end
                        function StopBoatF()
                            tween:Cancel()
                        end
					end
				end
			end
		end
	end

	local function GetIsLand(...)
		local RealtargetPos = {...}
		local targetPos = RealtargetPos[1]
		local RealTarget
		if type(targetPos) == "vector" then
			RealTarget = targetPos
		elseif type(targetPos) == "userdata" then
			RealTarget = targetPos.Position
		elseif type(targetPos) == "number" then
			RealTarget = CFrame.new(unpack(RealtargetPos))
			RealTarget = RealTarget.p
		end
	
		local ReturnValue
		local CheckInOut = math.huge;
		if game.Players.LocalPlayer.Team then
			for i,v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren()) do 
				local ReMagnitude = (RealTarget - v:GetModelCFrame().p).Magnitude;
				if ReMagnitude < CheckInOut then
					CheckInOut = ReMagnitude;
					ReturnValue = v.Name
				end
			end
			if ReturnValue then
				return ReturnValue
			end 
		end
	end
	
	function StopTween(target)
		if not target then
			tot:Cancel()
			_G.StopTween = true
			_G.UseSkill = false
			--game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
			if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
			end
			wait(0.2)
			_G.StopTween = false
			_G.Clip = false
		end
		if game.Players.LocalPlayer.Character:FindFirstChild('Highlight') then
			game.Players.LocalPlayer.Character:FindFirstChild('Highlight'):Destroy()
		end
	end
	
	function UseCode(Text)
		game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
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
						wait()
						pcall(function()
							wait()
							game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
						end)
						wait(4)
					end
				end
			end
		end
		function Teleport() 
			while wait() do
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
	
	function SkyJumpNoCoolDown()
		if _G.Infinit_SkyJump then
			for i,v in next, getgc() do
				if game.Players.LocalPlayer.Character.Geppo then
					if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Geppo then
						for i2,v2 in next, getupvalues(v) do
							if tostring(v2) == "0" then
								repeat wait(.1)
									setupvalue(v,i2,0)
								until not _G.Infinit_SkyJump
							end
						end
					end
				end
			end
		end
	end
	
	function InfAbility()
		if _G.Infinit_Ability then
			if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
				local inf = Instance.new("ParticleEmitter")
				inf.Acceleration = Vector3.new(0,0,0)
				inf.Archivable = true
				inf.Drag = 20
				inf.EmissionDirection = Enum.NormalId.Top
				inf.Enabled = true
				inf.Lifetime = NumberRange.new(0.2,0.2)
				inf.LightInfluence = 0
				inf.LockedToPart = true
				inf.Name = "Agility"
				inf.Rate = 500

				inf.Size = NumberSequence.new(0.50,0.20)
				inf.RotSpeed = NumberRange.new(999, 9999)
				inf.Rotation = NumberRange.new(0, 0)
				inf.Speed = NumberRange.new(35, 35)
				inf.SpreadAngle = Vector2.new(360,360)
				inf.Texture = "rbxassetid://14300572370"
				inf.VelocityInheritance = 0
				inf.ZOffset = 2
				inf.Transparency = NumberSequence.new(0)
				inf.Color = ColorSequence.new(Color3.fromRGB(128, 0, 255),Color3.fromRGB(128, 0, 255))
				inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
			end
		else
			if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
				game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
			end
		end
	end
	
	_G.Dodge_No_CoolDown = false
	function DodgeNoCoolDown()
		if _G.Dodge_No_CoolDown then
			for i,v in next, getgc() do
				if game.Players.LocalPlayer.Character.Dodge then
					if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Dodge then
						for i2,v2 in next, getupvalues(v) do
							if tostring(v2) == "0.4" then
								repeat wait(.1)
									setupvalue(v,i2,0)
								until not _G.Dodge_No_CoolDown
							end
						end
					end
				end
			end
		end
	end
	
	local LocalPlayer = game:GetService'Players'.LocalPlayer
	local originalstam = LocalPlayer.Character.Energy.Value
	function InfinitEnergy()
		game:GetService'Players'.LocalPlayer.Character.Energy.Changed:connect(function()
			if _G.Infinit_Energy then
				LocalPlayer.Character.Energy.Value = originalstam
			end 
		end)
	end
	
	function RemoveSpaces(str)
		return str:gsub(" Fruit", "")
	end
	
	local function formatNumber(number)
		local i, k, j = tostring(number):match("(%-?%d?)(%d*)(%.?.*)")
		return i..k:reverse():gsub("(%d%d%d)", "%1,"):reverse()..j
	end

	local vu = game:GetService("VirtualUser")
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
	
	---------------------------------------------------------------
	
	spawn(function()
		pcall(function() --velocity
			game:GetService("RunService").Stepped:Connect(function()
				if _G.Auto_Farm_Level or _G.AutoObservation or _G.TPNPCDF or _G.Auto_Kill_Player or AutoFarmMaterial or _G.AutoBuddySwords or _G.AutoCavander or _G.Bboat or _G.TPTOBOAT or _G.AutoEvent or _G.QRepairBoat or _G.QRepairBoat2 or _G.WoodPlank or _G.AutoMirageIsland or _G.Auto_Gear or _G.TptoKisuneIsland  or _G.NeareastFarm or _G.TptoKisuneshrine or _G.AutoFarmBossHallow or _G.Auto_Yama or _G.Auto_Sea_King or _G.Auto_Dack_Coat or _G.Auto_Rip_Indar or _G.Auto_Farm_Mastery_Gun or _G.Auto_Farm_All_Sword or _G.Auto_Awakening_One_Quest or _G.Auto_Lever_UnLock or _G.Auto_Complete_Trial or _G.Auto_Farm_Mastery_Fruit or Auto_Mirage_Island or Auto_Gear or _G.Auto_Farm_All_Boss or _G.Auto_New_World or _G.Auto_Third_World or _G.Auto_Farm_Chest or _G.Auto_Farm_Boss or _G.Auto_Castle_Raid or _G.Auto_Elite_Hunter or _G.Auto_Cake_Prince or _G.Auto_Farm_All_Boss or _G.Auto_Saber or _G.Auto_Pole or _G.Auto_Farm_Scrap_and_Leather or _G.Auto_Farm_Angel_Wing or _G.Auto_Factory_Farm or _G.Auto_Farm_Ectoplasm or _G.Auto_Bartilo_Quest or _G.Auto_Rengoku or _G.Auto_Farm_Radioactive or _G.Auto_Farm_Vampire_Fang or _G.Auto_Farm_Mystic_Droplet or _G.Auto_Farm_GunPowder or _G.Auto_Farm_Dragon_Scales or _G.Auto_Evo_Race_V2 or _G.Auto_Swan_Glasses or _G.Auto_Dragon_Trident or _G.Auto_Soul_Reaper or _G.Auto_Farm_Fish_Tail or _G.Auto_Farm_Mini_Tusk or _G.Auto_Farm_Magma_Ore or _G.Auto_Farm_Bone or _G.Auto_Farm_Conjured_Cocoa or _G.Auto_Open_Dough_Dungeon or _G.Auto_Rainbow_Haki or _G.Auto_Musketeer_Hat or _G.Auto_Holy_Torch or _G.Auto_Canvander or _G.Auto_Twin_Hook or _G.Auto_Serpent_Bow or _G.Auto_Fully_Death_Step or _G.Auto_Fully_SharkMan_Karate or _G.Teleport_to_Player or _G.Auto_Kill_Player_Melee or _G.Auto_Kill_Player_Gun or _G.Start_Tween_Island or _G.Auto_Next_Island or _G.Auto_Kill_Law then
					if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
						local Noclip = Instance.new("BodyVelocity")
						Noclip.Name = "BodyClip"
						Noclip.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
						Noclip.MaxForce = Vector3.new(100000,100000,100000)
						Noclip.Velocity = Vector3.new(0,0,0)
					end
				else	
					if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
						game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
					end
				end
			end)
		end)
	end)
	
	spawn(function()
		pcall(function()
			game:GetService("RunService").Stepped:Connect(function()
				if _G.Auto_Farm_Level or _G.AutoObservation or _G.TPNPCDF or _G.Auto_Kill_Player or AutoFarmMaterial or _G.AutoBuddySwords or _G.Bboat or _G.TPTOBOAT or _G.AutoEvent or _G.QRepairBoat or _G.QRepairBoat2 or _G.WoodPlank or _G.AutoCavander or _G.TPNPCDF or _G.AutoMirageIsland or _G.Auto_Gear or _G.TptoKisuneIsland or _G.NeareastFarm or _G.TptoKisuneshrine or _G.AutoFarmBossHallow or _G.Auto_Yama or _G.Auto_Sea_King or _G.Auto_Dack_Coat or _G.Auto_Rip_Indar or _G.Auto_Farm_Mastery_Gun or _G.Auto_Farm_All_Sword or _G.Auto_Awakening_One_Quest or _G.Auto_Farm_Mastery_Fruit or _G.Auto_Lever_UnLock or _G.Auto_Complete_Trial or Auto_Mirage_Island or Auto_Gear or _G.Auto_Farm_All_Boss or _G.Auto_New_World or _G.Auto_Third_World or _G.Auto_Farm_Chest or _G.Auto_Farm_Boss or _G.Auto_Castle_Raid or _G.Auto_Elite_Hunter or _G.Auto_Cake_Prince or _G.Auto_Farm_All_Boss or _G.Auto_Saber or _G.Auto_Pole or _G.Auto_Farm_Scrap_and_Leather or _G.Auto_Farm_Angel_Wing or _G.Auto_Factory_Farm or _G.Auto_Farm_Ectoplasm or _G.Auto_Bartilo_Quest or _G.Auto_Rengoku or _G.Auto_Farm_Radioactive or _G.Auto_Farm_Vampire_Fang or _G.Auto_Farm_Mystic_Droplet or _G.Auto_Farm_GunPowder or _G.Auto_Farm_Dragon_Scales or _G.Auto_Evo_Race_V2 or _G.Auto_Swan_Glasses or _G.Auto_Dragon_Trident or _G.Auto_Soul_Reaper or _G.Auto_Farm_Fish_Tail or _G.Auto_Farm_Mini_Tusk or _G.Auto_Farm_Magma_Ore or _G.Auto_Farm_Bone or _G.Auto_Farm_Conjured_Cocoa or _G.Auto_Open_Dough_Dungeon or _G.Auto_Rainbow_Haki or _G.Auto_Musketeer_Hat or _G.Auto_Holy_Torch or _G.Auto_Canvander or _G.Auto_Twin_Hook or _G.Auto_Serpent_Bow or _G.Auto_Fully_Death_Step or _G.Auto_Fully_SharkMan_Karate or _G.Teleport_to_Player or _G.Auto_Kill_Player_Melee or _G.Auto_Kill_Player_Gun or _G.Start_Tween_Island or _G.Auto_Next_Island or _G.Auto_Kill_Law then
					for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
						if v:IsA("BasePart") then
							v.CanCollide = false    
						end
					end
				end
			end)
		end)
	end)
	
	
	local function Bypass(Position)
		local CFramePos = Position
		_G.StopTween =  true
		if W3 then
			if (CFramePos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 4000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5076.60107, 314.54129, -3152.13086, 0.351963997, -4.56893581e-08, -0.93601352, 6.84364423e-08, 1, -2.30789325e-08, 0.93601352, -5.59344855e-08, 0.351963997))
			end
		end
		
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(111111,111111,111111)
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
		wait()
		game.Players.LocalPlayer.Character.Head:Destroy()
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
		wait()
		local args = {
			[1] = "SetSpawnPoint"
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
		
		wait()
		local args = {
			[1] = "SetSpawnPoint"
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
		wait()
		local args = {
			[1] = "SetSpawnPoint"
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(111111,111111,111111)
		wait()
		game.Players.LocalPlayer.Character.Head:Destroy()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99999999,99999999,99999999)
		wait()
		local args = {
			[1] = "SetLastSpawnPoint",
			[2] = tostring(game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value)
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
		wait()
		local args = {
			[1] = "SetSpawnPoint"
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99999999,99999999,99999999)
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99999999,99999999,99999999)
		wait()
		local args = {
			[1] = "SetLastSpawnPoint",
			[2] = tostring(game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value)
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		wait()
		local args = {
			[1] = "SetLastSpawnPoint",
			[2] = tostring(game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value)
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		wait(0.5)
		local args = {
			[1] = "SetLastSpawnPoint",
			[2] = tostring(game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value)
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		wait()
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
		wait()
		game.Players.LocalPlayer.Character.Head:Destroy()
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
		wait()
		_G.StopTween = false
		return
	end
	
	function TPPlayer(Point)
		TweeSpeed = 300
		local LocalPlayer = game.Players.LocalPlayer 
		TweenPlay = (Point.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		pcall(function() 
				tot = game:GetService("TweenService"):Create(LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(TweenPlay/TweeSpeed, Enum.EasingStyle.Linear),{CFrame = Point})
		end);tot:Play()
		if TweenPlay >= 1200 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point * CFrame.new(0,50,0)
			wait(.2)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
			wait(.1)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point * CFrame.new(0,50,0)
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
			wait(.1)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
			wait(0.5)
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
			_G.Clip = false
		elseif TweenPlay <= 300 then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
		end
		if _G.StopTween == true then tot:Cancel();_G.Clip = false end
		if _G.StopTween then
			tot:Cancel()
			BringMobFarm = false
			UseSkillGun = false
			_G.UseSkill = false
		elseif game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
			tot:Play()
		end
	end	
	
	function Check_Sword(Sword_Name)
		for i, v in pairs(game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer("getInventory")) do
			if (v.Type == "Sword") then
				if v.Name == Sword_Name then
					return true
				end
			end
		end
	end
	
	--------------------------------------------
	
	local PepsisWorld = library:Evil()
	local InfoTab = PepsisWorld:CreateTab({
		Name = "Information" 
	})
	local InfoSection = InfoTab:CreateSection({
		Name = "Profile",
		Side = "Left"
	})
	
	
	local E  = InfoSection:AddLabel({Name = "..."})
	function UpdateInfo()
		local gameTime = math.floor(workspace.DistributedGameTime + 0.5)
		local hour = math.floor(gameTime / (60^2)) % 24
		local minute = math.floor(gameTime / (60^1)) % 60
		local second = math.floor(gameTime / (60^0)) % 60
		local fps = workspace:GetRealPhysicsFPS()
		local Ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
		E:Set("Username : " .. game.Players.LocalPlayer.Name .. "\nHours: ".. hour .. "Minutes: " .. minute .. "Seconds: " .. second .. "\nFPS: " .. fps .. "\nPing : "..Ping)
	end
	task.spawn(function()
		while task.wait() do
			UpdateInfo()
		end
	end)
	
	local CredtSection = InfoTab:CreateSection({
		Name = "Credit",
		Side = "Left"
	})
	CredtSection:AddLabel({
		Name = "Script Made By Ryuenz#6264\nUi library Made By Ares"
	})
	local Discord =	CredtSection:AddLabel({
		Name = "...."
	})
	local English = {
		Name = "Copy Discord Link Cick Copy Link\nI recommend going to Discord \nso you don't miss any updates."
	}
	
	local Thai = {
		Name = "ก็อปลิ้งดิสคอร์ดกดCopy Link\nแนะนำให้เข้าดิสคอร์ดนะครับเพื่อไม่พลาดการอัพเดต"
	}
	
	local function Loop()
		while true do
			Discord:Set(English.Name)
			Discord:Set(English.Name)
			wait(1)
	
			English, Thai = Thai, English
		end
	end
	coroutine.wrap(Loop)()
	CredtSection:AddButton({
		Name = "Copy Link",
		Callback = function()
			setclipboard("https://discord.gg/977JQXX82w")
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "VectorHub",
				Text = "Successfully copied",
				Icon = "rbxassetid://14645512457",
				Duration = 3,
			})
		end,
	
	})
	
	local InfoStatusSection = InfoTab:CreateSection({
		Name = "Status",
		Side = "Right"
	})
	
		local Stats_Moon = InfoStatusSection:AddLabel({
			Name = "Status Moon : 0% 🌑"
		})
		
		task.spawn(function()
			while task.wait() do
				pcall(function()
					if W1 or W2  or W3 then
						if game:GetService("Lighting").FantasySky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" or game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
							Stats_Moon:Set("Status Moon : 100% 🌝")
						elseif game:GetService("Lighting").FantasySky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" or game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" then
							Stats_Moon:Set("Status Moon : 75% 🌖")
						elseif game:GetService("Lighting").FantasySky.MoonTextureId=="http://www.roblox.com/asset/?id=9709143733" or game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709143733" then
							Stats_Moon:Set("Status Moon : 50% 🌗")
						elseif game:GetService("Lighting").FantasySky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150086" or game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150086" then
							Stats_Moon:Set("Status Moon : 50% 🌗")
						elseif game:GetService("Lighting").FantasySky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150401" or game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150401" then
							Stats_Moon:Set("Status Moon : 25% 🌘")
						elseif game:GetService("Lighting").FantasySky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149680" or game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149680" then
							Stats_MoonFM:Set("Status Moon : 15% 🌙")
						elseif game:GetService("Lighting").FantasySky.MoonTextureId=="http://www.roblox.com/asset/?id=9709139597" or game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709139597" then
							Stats_MoonFM:Set("Status Moon : 15% 🌙")
						else
							Stats_Moon:Set("Status Moon : 0% 🌑")
						end
					else
						if game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
							Stats_Moon:Set("Status Moon : 100% 🌝")
						elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" then
							Stats_Moon:Set("Status Moon : 75% 🌖")
						elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709143733" then
							Stats_Moon:Set("Status Moon : 50% 🌗")
						elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150086" then
							Stats_Moon:Set("Status Moon : 50% 🌗")
						elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150401" then
							Stats_Moon:Set("Status Moon : 25% 🌘")
						elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149680" then
							Stats_MoonFM:Set("Status Moon : 15% 🌙")
						elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709139597" then
							Stats_MoonFM:Set("Status Moon : 15% 🌙")
						else
							Stats_Moon:Set("Status Moon : 0% 🌑")
						end
					end
				end)
			end
		end)
			
		local Mirage_Island_Stats = InfoStatusSection:AddLabel({
			Name = "Status Mirage Island : "
		})
		
		spawn(function()
			while wait() do
				if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Mirage Island") then
					Mirage_Island_Stats:Set("Status Mirage Island : 🟢 🏝️")
				else
					Mirage_Island_Stats:Set("Status Mirage Island : 🔴 🏝️")
				end
			end
		end)
		
		local Kitsunecheck = InfoStatusSection:AddLabel({
			Name = "Status Kitsune Island : "
		})
		spawn(function()
			pcall(function()
				while task.wait() do
					if game.Workspace._WorldOrigin.Locations:FindFirstChild('Kitsune Island') then
						Kitsunecheck:Set('Status Mirage Island : 🟢 🦊') 
					else
						Kitsunecheck:Set('Status Mirage Island : 🔴 🦊')
					end
				end
			end)
		end)

	
	local Dey_Stats = InfoStatusSection:AddLabel({
		Name = "Day : "..os.date('%A, %B %d ')
	})
	
	spawn(function()
		while wait() do
			Dey_Stats:Set("Day : "..os.date('%A, %B %d '))
		end
	end)

	local MainTab = PepsisWorld:CreateTab({
		Name = "General"
	})
	
	local MainSection = MainTab:CreateSection({
		Name = "Main",
		Side = "Left"
	})
	posrandom = 0
	randomposenelfastfarm = 0	
	MainSection:AddToggle({
		Name = "Auto Farm Level\nออโต้ฟาร์มเลเวล",
		Flag = "Auto_Farm_Level",
		Value = _G.Settings.Auto_Farm_Level,
		Callback = function(value)
			_G.Auto_Farm_Level = value 
			_G.Settings.Auto_Farm_Level = value
			StopTween(_G.Auto_Farm_Level)
			if value == false then
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			end
			SaveSettings()
		end
	})
	if W1 then
	MainSection:AddToggle({
		Name = "Auto Farm Fast\nออโต้ฟาร์มเลเวลแบบเร็ว1-300",
		Flag = "Auto_Farm_Fast",
		Value = _G.Settings.Auto_Farm_Fast,
		Callback = function(value)
			if W1 then
				_G.AutoFarmFast = value
			else
				_G.AutoFarmFast = false
			end
			_G.Settings.Auto_Farm_Fast = value
			SaveSettings()
		end
	})
end

    MainSection:AddToggle({
		Name = "Auto Farm Nearest\nออโต้ฟาร์มมอนรอบๆ",
		Flag = "Auto_Farm_Nearest",
		Value = _G.NeareastFarm,
		Callback = function(value)
			_G.NeareastFarm = value
		end})
		spawn(function()
			while task.wait() do
				if _G.NeareastFarm then
					pcall(function()
						for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 2000 and v.Humanoid.Health > 0 then
									repeat
									   wait() 
										EquipWeapon(_G.Select_Weapon)
										PosMon = v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.CanCollide = false 
										v.Head.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
										StartMagnet = true
										FastAttack = true
										toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
										if not FastAttack then
										game:GetService 'VirtualUser':CaptureController()
										game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
										end 
									until not _G.NeareastFarm or not v.Parent or v.Humanoid.Health <= 0 
								end
						end
					end)
				end
			end
		end)
	AttackRandomType_MonCFrame = 1
	spawn(function()
		while wait() do 
			AttackRandomType_MonCFrame = math.random(1,5)
			wait(0.3)
		end
	end)

	spawn(function()
		while wait() do 
			if _G.Settings.Auto_Farm_Fast and _G.AutoFarmFast_Num == 1 then
				_G.AutoFarmFast = false
			end
		end
	end)
	
	local SetCFarme = 1
	spawn(function()
		while wait() do
			local MyLevel = game.Players.LocalPlayer.Data.Level.Value
			local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
			pcall(function()
				if _G.Auto_Farm_Level then
					if _G.AutoFarmFast and (MyLevel >= 15 and MyLevel <= 300) then
						if MyLevel >= 15 and MyLevel <= 300 then
							Auto_Farm_Level_Fast()
							return
						end
					else
						if QuestC.Visible == true then
							if game:GetService("Workspace").Enemies:FindFirstChild(QuestCheck()[3]) then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == QuestCheck()[3] then
										if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat task.wait()
												if _G.Auto_CFrame then
													SetCFarme = 1
												end
												if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, QuestCheck()[6]) then
													--game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
													print(321)
												else
													PosMon = v.HumanoidRootPart.CFrame
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid.WalkSpeed = 0
													v.Head.CanCollide = false
													BringMobFarm = true
													EquipWeapon(_G.Select_Weapon)
													v.HumanoidRootPart.Transparency = 1
													getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)

													if not _G.Auto_Farm_Level or not _G.Auto_Farm_LevelO or _G.Auto_Farm_Level or _G.Auto_Farm_LevelO then
														_G.FastAttack = true
													end
												end
											until not _G.Auto_Farm_Level or not v.Parent or v.Humanoid.Health <= 0 or QuestC.Visible == false or not v:FindFirstChild("HumanoidRootPart")
										end
									end
								end
							else
								--UnEquipWeapon(_G.Select_Weapon)
								if _G.Auto_CFrame and not _G.AutoFarmFast then
									getgenv().ToTarget(QuestCheck()[7][SetCFarme] * MethodFarm)
									if (QuestCheck()[7][SetCFarme].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
										if SetCFarme == nil or SetCFarme == '' then
											SetCFarme = 1
											print(SetCFarme)
										elseif SetCFarme >= #QuestCheck()[7] then
											SetCFarme = 1
											print(SetCFarme)
										end
										SetCFarme =  SetCFarme + 1

										print(SetCFarme)
										wait(0.5)
									end
								else
									if not _G.AutoFarmFast then
										if AttackRandomType_MonCFrame == 1 then
											getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,20))
										elseif AttackRandomType_MonCFrame == 2 then
											getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,-20))
										elseif AttackRandomType_MonCFrame == 3 then
											getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(20,30,0))
										elseif AttackRandomType_MonCFrame == 4 then
											getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,-20))
										elseif AttackRandomType_MonCFrame == 5 then
											getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(-20,30,0))
										else
											getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,20))
										end
									end
								end
							end
						else
							getgenv().ToTarget(QuestCheck()[2])
							if (QuestCheck()[2].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
								BringMobFarm = false
								wait(0.2)
								game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer("StartQuest", QuestCheck()[4], QuestCheck()[1]) wait(0.5)
								getgenv().ToTarget(QuestCheck()[7][1] * MethodFarm)
							end
						end
					end
				end
			end)
		end
	end)
	_G.ChackPlayer = 0
	_G.ChackPlayer2 = _G.ChackPlayer
	function Auto_Farm_Level_Fast()
		local PlayersAll = game.Players:GetPlayers()
		local PlayerLevel = game.Players.LocalPlayer.Data.Level.Value
		local quest = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
		local Player = string.split(quest," ")[2]
		getgenv().SelectPly = string.split(quest," ")[2]
		pcall(function()
			local MyLevel = game.Players.LocalPlayer.Data.Level.Value
			local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
			CFrameMon = CFrame.new(-4837.64258, 850.10199, -1840.58374, -0.430530697, -4.42848638e-08, -0.90257591, -3.08042516e-08, 1, -3.43712756e-08, 0.90257591, 1.30052875e-08, -0.430530697)
	
			if MyLevel >= 15 and MyLevel <= 69 then
				BringMobFarm = false
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if v.Name == "God's Guard" then
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							repeat task.wait()
								--game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.Head.CanCollide = false
								BringMobFarm = true
								EquipWeapon(_G.Select_Weapon)

								if MyLevel >= 70 and MyLevel <= 310 then
									if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
									end
								end

								PosMon = v.HumanoidRootPart.CFrame
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.HumanoidRootPart.Transparency = 1
								getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
								if not _G.Auto_Farm_Level or not _G.Auto_Farm_LevelO or _G.Auto_Farm_Level or _G.Auto_Farm_LevelO or _G.SuperFastAttack then
									_G.FastAttack = true
								end
							until not v.Parent or not _G.Auto_Farm_Level or v.Humanoid.Health < 0
						end
					else
						BringMobFarm = false
						if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
						end
						getgenv().ToTarget(CFrameMon)
					end
				end
			elseif MyLevel >= 70 and MyLevel <= 310 then
				if QuestC.Visible == false then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
				elseif QuestC.Visible == true then
					if string.find(quest,"Defeat") then
						if game.Players[getgenv().SelectPly].Data.Level.Value >= 20 and game.Players[getgenv().SelectPly].Data.Level.Value <= MyLevel * 2 then
							repeat task.wait()
								if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
								end

								if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
								end

								EquipWeapon(_G.Select_Weapon)
								TPPlayer(game:GetService("Players")[getgenv().SelectPly].Character.HumanoidRootPart.CFrame * CFrame.new(0,0,5))
								
								game:GetService("Players")[getgenv().SelectPly].Character.HumanoidRootPart.Size = Vector3.new(120,120,120)
	
								game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
								game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
	
								game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
								game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
	
								if not _G.Auto_Farm_Level or not _G.Auto_Farm_LevelO or _G.Auto_Farm_Level or _G.Auto_Farm_LevelO or _G.SuperFastAttack then
									_G.FastAttack = true
								end

								if game:GetService("Players")[getgenv().SelectPly].Character.Humanoid.Health <= 0 then
									_G.AutoFarmFast_Num = 1
									_G.AutoFarmFast = false
								end

							until game.Players[getgenv().SelectPly].Character.Humanoid.Health <= 0 or not Auto_Farm_Level_Fast() or _G.AutoFarmFast_Num == 1
							_G.AutoFarmFast_Num = 1
							_G.AutoFarmFast = false
							if not game.Players:FindFirstChild(Player) then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
							end
						else
							for i,v in pairs(PlayersAll) do
								if v.Data.Level.Value >= 20 and v.Data.Level.Value <= PlayerLevel * 2 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
									print(v)
								else
									_G.ChackPlayer = _G.ChackPlayer + 1
									if _G.ChackPlayer >= 12 then
										_G.AutoFarmFast = false
									else
										print("Chack Player ".._G.ChackPlayer)
									end
								end
							end
						end
					end
				end
			end
		end)
	end


	spawn(function()
		game:GetService("RunService").Heartbeat:Connect(function()
			pcall(function()
				if _G.BringNormal then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if _G.Auto_Farm_Level and BringMobFarm and v.Name == Mon and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 200 then
							v.HumanoidRootPart.CFrame = PosMon
							v.HumanoidRootPart.CanCollide = false
							v.HumanoidRootPart.Size = Vector3.new(60,60,60)
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy()
							end
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
						end
					end
				end
			end)
		end) 
	end)
	
	local NewWorldsSection = MainTab:CreateSection({
		Name = "Worlds",
		Side = "Left"
	})
	
	NewWorldsSection:AddToggle({
		Name = "Auto New World\nออโต้ไปโลกสอง",
		Flag = "Auto_New_World",
		Value = _G.Settings.Auto_New_World,
		Callback = function(value)
			_G.Auto_New_World = value
			_G.Settings.Auto_New_World = value
			SaveSettings()
			StopTween(_G.Auto_New_World)
			if value == false then
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			end
		end
	})
	
	spawn(function()
		while wait() do
			if _G.Auto_New_World then
				pcall(function()
					if game.Players.LocalPlayer.Data.Level.Value >= 700 and W1 then
						_G.Auto_Farm_Level = false
						if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
							repeat wait() getgenv().ToTarget(CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563)) until (CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_New_World
							wait(1)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
							EquipWeapon("Key")
							local pos2 = CFrame.new(1347.7124, 37.3751602, -1325.6488)
							repeat wait() getgenv().ToTarget(pos2) until (pos2.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_New_World
							wait(3)
						elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
							if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Ice Admiral" and v.Humanoid.Health > 0 then
										repeat wait()
											AutoHaki()
											EquipWeapon(_G.Select_Weapon)
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(60,60,60)
											v.HumanoidRootPart.Transparency = 1
											getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
											game:GetService("VirtualUser"):CaptureController()
											game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 870),workspace.CurrentCamera.CFrame)
										until v.Humanoid.Health <= 0 or not v.Parent or not _G.Auto_New_World
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
									end
								end
							else
								getgenv().ToTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488))
							end
						else
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
						end
					end
				end)
			end
		end
	end)
	
	NewWorldsSection:AddToggle({
		Name = "Auto Third World\nออโต้ไปโลกสาม",
		Flag = "Auto_Third_World",
		Value = _G.Settings.Auto_Third_World,
		Callback = function(value)
			_G.Auto_Third_World = value
			_G.Settings.Auto_Third_World = value
			SaveSettings()  
			StopTween(_G.Auto_Third_World)
			if value == false then
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			end
		end
	})
	spawn(function()
		while wait() do
			if _G.Auto_Third_World and W2 then
				pcall(function()
					local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
					local MyLevel = game.Players.LocalPlayer.Data.Level.Value
					if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 then
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess ~= nil then							
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") == 0 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
									if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
										for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == "rip_indra" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat wait()
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													v.HumanoidRootPart.CanCollide = false
													v.Head.CanCollide = false
													EquipWeapon(_G.Select_Weapon)
													v.HumanoidRootPart.Transparency = 1
													getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
													AutoHaki()
													if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
														_G.FastAttack = true
													end
												until not _G.Auto_Third_World or not v.Parent or v.Humanoid.Health <= 0 
												repeat wait() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou") until LOL == "LOLOL"
											end
										end
									else
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check")
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
									end
								else
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") ~= 0 then
										if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan") or game.ReplicatedStorage:FindFirstChild("Don Swan") then
											for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
												if v.Name == "Don Swan" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
													repeat wait()
														v.HumanoidRootPart.Size = Vector3.new(60,60,60)
														v.HumanoidRootPart.CanCollide = false
														v.Head.CanCollide = false
														EquipWeapon(_G.Select_Weapon)
														v.HumanoidRootPart.Transparency = 1
														getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
														AutoHaki()
														if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
															_G.FastAttack = true
														end
													until not _G.Auto_Third_World or not v.Parent or v.Humanoid.Health <= 0 
												else
													getgenv().ToTarget(2207.38672, 15.1333914, 883.866394, 0.931175113, 3.09244754e-08, -0.364572287, 1.20643637e-08, 1, 1.15638279e-07, 0.364572287, -1.12077821e-07, 0.931175113)
												end
											end
										else
											getgenv().ToTarget(2207.38672, 15.1333914, 883.866394, 0.931175113, 3.09244754e-08, -0.364572287, 1.20643637e-08, 1, 1.15638279e-07, 0.364572287, -1.12077821e-07, 0.931175113)
										end
									end
								end
							else
								for i,v in next,game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("GetFruits") do
									if v.Price >= 1000000 then  
										table.insert(FruitPrice,v.Name)
									end
								end
								for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
									for _,x in pairs(v) do
										if _ == "Name" then 
											table.insert(FruitStore,x)
										end
									end
								end
								function CheckFruit()
									local player = game.Players.LocalPlayer
									for _, tool in pairs(player.Backpack:GetDescendants()) do
										if tool:FindFirstChild("Fruit") then
											return tool
										end
									end
								end
								function AddToNpc()
									if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(CheckFruit())) then
										wait(1.5)
										EquipWeapon(tostring(CheckFruit()))
										wait(0.5)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1")
										wait(0.5)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","2")
										wait(0.5)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1")
										wait(0.5)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","3")
									end
								end
								for _,y in pairs(FruitPrice) do
									for _,z in pairs(FruitStore) do
										if y == z and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
											local args = {
												[1] = "LoadFruit",
												[2] = tostring(y)
											}
								
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											AddToNpc()
										end
									end 
								end
							end
						else
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
								_G.Auto_Farm_Level = false
								if QuestC.Visible == true then
									if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == "Swan Pirate" then
												if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
													repeat task.wait()
														if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirate") then
															--game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
															print(321)
														else
															PosMon = v.HumanoidRootPart.CFrame
															v.HumanoidRootPart.Size = Vector3.new(60,60,60)
															v.HumanoidRootPart.CanCollide = false
															v.Humanoid.WalkSpeed = 0
															v.Head.CanCollide = false
															BringMobFarm = true
															EquipWeapon(_G.Select_Weapon)
															v.HumanoidRootPart.Transparency = 1
															getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
			
															if not _G.FastAttack or not _G.FastAttackO or _G.FastAttack or _G.FastAttackO then
																_G.FastAttack = true
															end
														end
													until not _G.Auto_Third_World or not v.Parent or v.Humanoid.Health <= 0 or QuestC.Visible == false or not v:FindFirstChild("HumanoidRootPart")
												end
											end
										end
									else
										BringMobFarm = false
										for i,v in pairs(workspace._WorldOrigin.EnemySpawns:GetChildren()) do
											if v.Name == "Swan Pirate" then local CFrameEnemySpawns = v.CFrame  wait(0.5)
												getgenv().ToTarget(CFrameEnemySpawns * MethodFarm)
											end
										end
									end
								else
									repeat wait() getgenv().ToTarget(CFrame.new(-461.533203, 72.3478546, 300.311096, 0.050853312, -0, -0.998706102, 0, 1, -0, 0.998706102, 0, 0.050853312)) until (CFrame.new(-461.533203, 72.3478546, 300.311096, 0.050853312, -0, -0.998706102, 0, 1, -0, 0.998706102, 0, 0.050853312).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 or not _G.Auto_Bartilo_Quest
									if (CFrame.new(-461.533203, 72.3478546, 300.311096, 0.050853312, -0, -0.998706102, 0, 1, -0, 0.998706102, 0, 0.050853312).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
										BringMobFarm = false
										game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer("StartQuest", "BartiloQuest", 1)
									end
								end
							elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
								_G.Auto_Farm_Level = false
								if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Jeremy" then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
												repeat task.wait()
													PosMon = v.HumanoidRootPart.CFrame
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid.WalkSpeed = 0
													v.Head.CanCollide = false
													BringMobFarm = true
													EquipWeapon(_G.Select_Weapon)
													v.HumanoidRootPart.Transparency = 1
													getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
			
													if not _G.FastAttack or not _G.FastAttackO or _G.FastAttack or _G.FastAttackO then
														_G.FastAttack = true
													end
												until not _G.Auto_Third_World or not v.Parent or v.Humanoid.Health <= 0 or QuestC.Visible == false or not v:FindFirstChild("HumanoidRootPart")
											end
										end
									end
								else
									getgenv().ToTarget(CFrame.new(2158.97412, 449.056244, 705.411682, -0.754199564, -4.17389057e-09, -0.656645238, -4.47752875e-08, 1, 4.50709301e-08, 0.656645238, 6.3393955e-08, -0.754199564))
								end
							elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
								repeat wait() getgenv().ToTarget(CFrame.new(-1830.83972, 10.5578213, 1680.60229, 0.979988456, -2.02152783e-08, -0.199054286, 2.20792113e-08, 1, 7.1442483e-09, 0.199054286, -1.13962431e-08, 0.979988456)) until (CFrame.new(-1830.83972, 10.5578213, 1680.60229, 0.979988456, -2.02152783e-08, -0.199054286, 2.20792113e-08, 1, 7.1442483e-09, 0.199054286, -1.13962431e-08, 0.979988456).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 or _G.Auto_Third_World == false
								wait(0.7)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate1.CFrame
								wait(0.7)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate2.CFrame
								wait(0.7)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate3.CFrame
								wait(0.7)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate4.CFrame
								wait(0.7)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate5.CFrame
								wait(0.7)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate6.CFrame
								wait(0.7)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate7.CFrame
								wait(0.7)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate8.CFrame
							end
						end
					end
				end)
			end
		end
	end)

	local Mastery = MainTab:CreateSection({
		Name = " Mastery ",
		Side = "Left"
	})

	Mastery:AddToggle({ 
		Name = "Auto Farm Mastery Fruit\nออโต้ฟาร์มมาสเตอรี่ผลปีศาจ",
		Flag = "Auto_Farm_Mastery_Fruit",
		Value = _G.Settings.Auto_Farm_Mastery_Fruit,
		Callback = function(value)
			_G.Auto_Farm_Mastery_Fruit = value    
			_G.Settings.Auto_Farm_Mastery_Fruit = value
			StopTween(_G.Auto_Farm_Mastery_Fruit)
			if value == false then
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			end
			SaveSettings()
		end
	})
	
	function EquipBloxFruit()
		for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.ToolTip == "Blox Fruit" then
			   if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
					EquipWeapon(v.Name)
				end
			end
		end
	end
	
	spawn(function()
		while wait() do
			local MyLevel = game.Players.LocalPlayer.Data.Level.Value
			local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
			pcall(function()
				if _G.Auto_Farm_Mastery_Fruit then
					if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, QuestCheck()[6]) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
					end
					if QuestC.Visible == true then
						if game:GetService("Workspace").Enemies:FindFirstChild(QuestCheck()[3]) then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == QuestCheck()[3] then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat task.wait()
											if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, QuestCheck()[6]) then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
											else
												if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.HealthMs/100 then 
													_G.UseSkill = true
													EquipBloxFruit()
													getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Distance,_G.Settings.DistanceY))
													PosMon = v.HumanoidRootPart.CFrame
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid.WalkSpeed = 0
													v.Head.CanCollide = false
													BringMobFarm = true
													v.HumanoidRootPart.TranAsparency = 1
												else
													_G.UseSkill = false
													PosMon = v.HumanoidRootPart.CFrame
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													v.HumanoidRootPart.CanCollide = false
													v.Head.CanCollide = false
													BringMobFarm = true
													EquipWeapon(_G.Select_Weapon)
													v.HumanoidRootPart.Transparency = 1
													getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Distance,_G.Settings.DistanceY))
													AutoHaki()
													if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
														_G.FastAttack = true
													end
												end
											end
										until not _G.Auto_Farm_Mastery_Fruit or not v.Parent or v.Humanoid.Health <= 0 or QuestC.Visible == false or not v:FindFirstChild("HumanoidRootPart")
									end
								end
							end
						else
							_G.UseSkill = false
							if _G.Auto_CFrame then
								getgenv().ToTarget(QuestCheck()[7][SetCFarme] * MethodFarm)
								if (QuestCheck()[7][SetCFarme].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
									if SetCFarme == nil or SetCFarme == '' then
										SetCFarme = 1
										print(SetCFarme)
									elseif SetCFarme >= #QuestCheck()[7] then
										SetCFarme = 1
										print(SetCFarme)
									end
									SetCFarme =  SetCFarme + 1

									print(SetCFarme)
									wait(0.5)
								end
							else
								if AttackRandomType_MonCFrame == 1 then
									getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,20))
								elseif AttackRandomType_MonCFrame == 2 then
									getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,-20))
								elseif AttackRandomType_MonCFrame == 3 then
									getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(20,30,0))
								elseif AttackRandomType_MonCFrame == 4 then
									getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,-20))
								elseif AttackRandomType_MonCFrame == 5 then
									getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(-20,30,0))
								else
									getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,20))
								end
							end
						end
					else
						getgenv().ToTarget(QuestCheck()[2])
						if (QuestCheck()[2].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
							BringMobFarm = false
							wait(0.2)
							game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer("StartQuest", QuestCheck()[4], QuestCheck()[1]) wait(0.5) 
							getgenv().ToTarget(QuestCheck()[7][1] * MethodFarm)
						end
					end
				end
			end)
		end
	end)
	Mastery:AddToggle({
		Name = "Auto Farm Mastery Gun\nออโต้ฟาร์มมาสเตอรี่ปืน",
		Flag = "Auto_Farm_Mastery_Gun",
		Value = _G.Settings.Auto_Farm_Mastery_Gun,
		Callback = function(value)
			_G.Auto_Farm_Mastery_Gun = value
			_G.Settings.Auto_Farm_Mastery_Gun = value
			StopTween(_G.Auto_Farm_Mastery_Gun)
			if value == false then
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			end
			SaveSettings()
		end
	})

	spawn(function()
		local gt = getrawmetatable(game)
		local old = gt.__namecall
		setreadonly(gt,false)
		gt.__namecall = newcclosure(function(...)
			local args = {...}
			if getnamecallmethod() == "InvokeServer" then 
				if _G.SelectWeaponGun then
					if _G.SelectWeaponGun == "Soul Guitar" then
						if tostring(args[2]) == "TAP" then
							if  _G.Auto_Farm_Mastery_Gun and _G.UseSkill then
								args[3] = PositionSkillMasteryGun
							end
						end
					end
				end
			end
			return old(unpack(args))
		end)
		setreadonly(gt,true)
	end)
	spawn(function()
		while wait() do
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
				if v:IsA("Tool") then
					if v.ToolTip == "Gun" then
						_G.SelectWeaponGun = v.Name
					end
				end
			end
			for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
				if v:IsA("Tool") then
					if v.ToolTip == "Gun" then
						_G.SelectWeaponGun = v.Name
					end
				end
			end
		end
	end)
	spawn(function()
		while wait() do
			local MyLevel = game.Players.LocalPlayer.Data.Level.Value
			local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
			pcall(function()
				if _G.Auto_Farm_Mastery_Gun then
					if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, QuestCheck()[6]) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
					end
					if QuestC.Visible == true then
						if game:GetService("Workspace").Enemies:FindFirstChild(QuestCheck()[3]) then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == QuestCheck()[3] then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										PosMon = v.HumanoidRootPart.CFrame
										MonHumanoidRootPart = v.HumanoidRootPart
										PositionSkillMasteryGun = v.HumanoidRootPart.Position
										repeat task.wait()
											v.HumanoidRootPart.CFrame = PosMon
											if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.HealthMs/100 then 
												_G.UseSkill = true
												getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Distance,_G.Settings.DistanceY))
												v.HumanoidRootPart.Size = Vector3.new(120,120,120)
												v.HumanoidRootPart.CanCollide = false
												v.Head.CanCollide = false
												BringMobFarm = true
												v.HumanoidRootPart.Transparency = 1
												EquipWeapon(_G.SelectWeaponGun)
												local args = {
													[1] = v.HumanoidRootPart.Position,
													[2] = v.HumanoidRootPart
												}
												game:GetService("Players").LocalPlayer.Character[_G.SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
											else
												_G.UseSkill = false
												v.HumanoidRootPart.Size = Vector3.new(120,120,120)
												v.HumanoidRootPart.CanCollide = false
												v.Head.CanCollide = false
												BringMobFarm = true
												EquipWeapon(_G.Select_Weapon)
												v.HumanoidRootPart.Transparency = 1
												getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Distance,_G.Settings.DistanceY))
												AutoHaki()
												if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
													_G.FastAttack = true
												end
											end
										until not _G.Auto_Farm_Mastery_Gun or not v.Parent or v.Humanoid.Health <= 0 or QuestC.Visible == false or not v:FindFirstChild("HumanoidRootPart")
									end
								end
							end
						else
							_G.UseSkill = false
							if _G.Auto_CFrame then
								getgenv().ToTarget(QuestCheck()[7][SetCFarme] * MethodFarm)
								if (QuestCheck()[7][SetCFarme].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
									if SetCFarme == nil or SetCFarme == '' then
										SetCFarme = 1
										print(SetCFarme)
									elseif SetCFarme >= #QuestCheck()[7] then
										SetCFarme = 1
										print(SetCFarme)
									end
									SetCFarme =  SetCFarme + 1

									print(SetCFarme)
									wait(0.5)
								end
							else
								if AttackRandomType_MonCFrame == 1 then
									getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,20))
								elseif AttackRandomType_MonCFrame == 2 then
									getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,-20))
								elseif AttackRandomType_MonCFrame == 3 then
									getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(20,30,0))
								elseif AttackRandomType_MonCFrame == 4 then
									getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,-20))
								elseif AttackRandomType_MonCFrame == 5 then
									getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(-20,30,0))
								else
									getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,20))
								end
							end
						end
					else
						getgenv().ToTarget(QuestCheck()[2])
						if (QuestCheck()[2].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
							BringMobFarm = false
							wait(0.2)
							game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer("StartQuest", QuestCheck()[4], QuestCheck()[1]) wait(0.5)
							getgenv().ToTarget(QuestCheck()[7][1] * MethodFarm)
						end
					end
				end
			end)
		end
	end)
	local Cam = workspace.CurrentCamera
	local hotkey = true
	function lookAt(target, eye)
		Cam.CFrame = CFrame.new(target, eye)
	end
	function CheckMonFF(trg_part)
		local nearest = nil
		local last = math.huge
		for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			if v.Name == QuestCheck()[3] then
				local ePos, vissss = workspace.CurrentCamera:WorldToViewportPoint(v[trg_part].Position)
				local AccPos = Vector2.new(ePos.x, ePos.y)
				local mousePos = Vector2.new(workspace.CurrentCamera.ViewportSize.x / 2, workspace.CurrentCamera.ViewportSize.y / 2)
				local distance = (AccPos - mousePos).magnitude
				if distance < last and vissss and hotkey == true and distance < 1500 then
					last = distance
					nearest = v
				end
			end
		end
		return nearest
	end
	spawn(function()
		while wait() do
			if _G.Auto_Farm_Mastery_Gun and _G.UseSkill == true then
				local closest = CheckMonFF("HumanoidRootPart")
				lookAt(Cam.CFrame.p, closest:FindFirstChild("HumanoidRootPart").Position)
				local args = {
					[1] = PositionSkillMasteryGun
				}
				
				game:GetService("Players").LocalPlayer.Character[_G.SelectWeaponGun].RemoteEvent:FireServer(unpack(args))
				if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, QuestCheck()[6]) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
				end
			end
		end
	end)
	spawn(function()
		while wait() do
			if _G.Auto_Farm_Mastery_Gun and _G.UseSkill == true then
				local args = {
					[1] = PositionSkillMasteryGun,
					[2] = MonHumanoidRootPart
				}
				game:GetService("Players").LocalPlayer.Character[_G.SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
			end
		end
	end)
	

	Mastery:AddToggle({
		Name = "Auto Farm All Mastery Sword\nออโต้ฟาร์มมาสเตอรี่ดาบทั้งหมด",
		Value = _G.Settings.Auto_Farm_All_Sword,
		Callback = function(value)
			_G.Auto_Farm_All_Sword = value 
			_G.Settings.Auto_Farm_All_Sword = value
			SaveSettings()  
			StopTween(_G.Auto_Farm_All_Sword)
			if value == false then
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			end
		end
	})

	Tabel = {}
	function GetCake_CFrame_Mon()
		local targetMonsters = {"Baking Staff", "Head Baker", "Cake Guard", "Cookie Crafter"}
		local enemySpawns = workspace.EnemySpawns:GetChildren()
		local randomSpawnIndex = math.random(1, #enemySpawns)
		local selectedSpawn = enemySpawns[randomSpawnIndex]
		
		for _,_v1 in pairs(targetMonsters) do
			local result = string.gsub(_v1, "Lv. ", "")
			local result2 = string.gsub(result, "[%[%]]", "")
			local result3 = string.gsub(result2, "%d+", "")
			local result4 = string.gsub(result3, "%s+", "")
			local monQName = result4
			
			if selectedSpawn.Name == result4 then
				return selectedSpawn.CFrame
			end
		end
	end
	function EquipWeaponSword()
		for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.ToolTip == "Sword" then
				if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
					EquipWeapon(v.Name)
				end
			end
		end
	end

	spawn(function()
		while wait() do 
			pcall(function()
				if _G.Auto_Farm_All_Sword then
					for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
						if type(v) == "table" then
							if v.Type == "Sword" then
								if tonumber(v.Mastery) >= 1 and tonumber(v.Mastery) < 600 then
									Name = v.Name
									Mastery = v.Mastery
									if tonumber(v.Mastery) >= 1 and tonumber(v.Mastery) < 600 then
										if game.Players.LocalPlayer.Backpack:FindFirstChild(Name) or game.Players.LocalPlayer.Character:FindFirstChild(Name) then
											if game.ReplicatedStorage:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or  game.ReplicatedStorage:FindFirstChild("Dough King") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then   
												_G.Bypass_TP = false
												if not game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
													for _,x in pairs(game.ReplicatedStorage:GetChildren()) do 
														if x.Name == "Cake Prince" or x.Name == "Dough King" then
															if (x.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
																wait(1.5)
																getgenv().ToTarget(CFrame.new(-2145.89722, 70.0088272, -12399.6016, 0.99999702, 1.58276379e-08, 0.00245277886, -1.57982978e-08, 1, -1.19813057e-08, -0.00245277886, 1.19425199e-08, 0.99999702))
																return
															end
														end
													end
												end
												for i,_v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
													if _v.Name == "Cake Prince" then
														if _v:FindFirstChild("Humanoid") and _v:FindFirstChild("HumanoidRootPart") and _v.Humanoid.Health > 0 then
															repeat task.wait()
																_G.Bypass_TP = false
																if (_v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
																	getgenv().ToTarget(CFrame.new(-2145.89722, 70.0088272, -12399.6016, 0.99999702, 1.58276379e-08, 0.00245277886, -1.57982978e-08, 1, -1.19813057e-08, -0.00245277886, 1.19425199e-08, 0.99999702))
																	return
																end
																EquipWeaponSword()
																_v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
																BringMobFarm = true
																getgenv().ToTarget(_v.HumanoidRootPart.CFrame * MethodFarm)
																if (_v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
																	_G.FastAttack = true
																end
																sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
															until not _G.Auto_Farm_All_Sword or not _v.Parent or _v.Humanoid.Health <= 0 or tonumber(v.Mastery) > 599
														end
													else
														for _,x in pairs(game.ReplicatedStorage:GetChildren()) do 
															if x.Name == "Cake Prince" or x.Name == "Dough King" then
																if (x.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
																	getgenv().ToTarget(CFrame.new(-2145.89722, 70.0088272, -12399.6016, 0.99999702, 1.58276379e-08, 0.00245277886, -1.57982978e-08, 1, -1.19813057e-08, -0.00245277886, 1.19425199e-08, 0.99999702))
																	return
																end
															end
														end
													end
												end
											else 
												if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game.ReplicatedStorage:FindFirstChild("Cake Prince") then
													for _,x in pairs(game.ReplicatedStorage:GetChildren()) do 
														if x.Name == "Cake Prince" or x.Name == "Dough King" then
															if (x.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
																getgenv().ToTarget(CFrame.new(-2145.89722, 70.0088272, -12399.6016, 0.99999702, 1.58276379e-08, 0.00245277886, -1.57982978e-08, 1, -1.19813057e-08, -0.00245277886, 1.19425199e-08, 0.99999702))
																return
															end
														end
													end
												else
													if game.Workspace.Enemies:FindFirstChild("Baking Staff") or game.Workspace.Enemies:FindFirstChild("Head Baker") or game.Workspace.Enemies:FindFirstChild("Cake Guard") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter")  then
														for i,_v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
															if (_v2.Name == "Baking Staff" or _v2.Name == "Head Baker" or _v2.Name == "Cake Guard" or _v2.Name == "Cookie Crafter") and _v2.Humanoid.Health > 0 then
																repeat wait()
																	PosMon = _v2.HumanoidRootPart.CFrame
																	EquipWeaponSword()
																	_v2.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
																	BringMobFarm = true
																	getgenv().ToTarget(_v2.HumanoidRootPart.CFrame * MethodFarm)
																	if (_v2.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
																		_G.FastAttack = true
																	end							
																until _G.Auto_Farm_All_Sword == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or not _v2.Parent or _v2.Humanoid.Health <= 0 or tonumber(v.Mastery) > 599
															end
														end
													else
														BringMobFarm = false
														for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
															if v.ToolTip == "Sword" then
																if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
																	print("nomon")
																end
															end
														end
														getgenv().ToTarget(GetCake_CFrame_Mon() * MethodFarm)
														wait(0.5)
													end
												end
											end
										else
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem",Name)
										end
									elseif v.Mastery > 599 then
										if game.Players.LocalPlayer.Backpack:FindFirstChild(Name) or game.Players.LocalPlayer.Character:FindFirstChild(Name) then
										else
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem",Name)
										end
									end
									break
								end
							end
						end
					end
				end
			end)
		end
	end)

	--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	
	

	local ChestSection = MainTab:CreateSection({
		Name = "Chest",
		Side = "Left"
	})
	
	
	ChestSection:AddToggle({
		Name = "Auto Farm Chest Tween\nออโต้ฟาร์มกล่อง{บินเก็บ}",
		Flag = "Auto_Farm_Chest",
		Value = _G.Settings.Auto_Farm_Chest,
		Callback = function(value)
			_G.Auto_Farm_Chest = value 
			StopTween(_G.Auto_Farm_Chest)
			if _G.Bypass_TP == false and _G.HH then
				wait(0.5)
				_G.Bypass_TP = true
			else
				_G.Bypass_TP = false
			end
			_G.Settings.Auto_Farm_Chest = value
			SaveSettings()  
		end
	})
	
	ChestSection:AddToggle({
		Name = "Auto Farm Chest Fast\nออโต้ฟาร์มกล่อง{วาร์ปเก้บ}",
		Flag = "Auto_Farm_Chest_Fast",
		Value = _G.Settings.ChestBypass,
		Callback = function(value)
			_G.ChestBypass = value   
			_G.Settings.ChestBypass = value
			SaveSettings()   
			StopTween(_G.ChestBypass)
		end
	})
	
_G.MagnitudeAdd = 0
spawn(function()
    while wait() do 
        if _G.Auto_Farm_Chest then
            for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
                if v.Name:find("Chest") then
                    if game:GetService("Workspace"):FindFirstChild(v.Name) then
                        if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000+_G.MagnitudeAdd then
                            repeat wait()
                                if game:GetService("Workspace"):FindFirstChild(v.Name) then
                                    EquipWeapon(_G.Select_Weapon)
                                    getgenv().ToTarget(v.CFrame)
                                    UnEquipWeapon(_G.Select_Weapon)
                                end
                            until _G.Auto_Farm_Chest == false or not v.Parent
                            getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                            _G.MagnitudeAdd = _G.MagnitudeAdd+1500
                            break
                        end
                    end
                end
            end
        end
    end
end)

spawn(function()
    while wait() do
    if _G.ChestBypass then
             pcall(function()
                    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                            if string.find(v.Name, "Chest") then
                                print(v.Name)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                                wait(.15)
                            end
                        end
                        --game.Players.LocalPlayer.Character.Head:Destroy()
                        for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                        if string.find(v.Name, "Chest") and v:IsA("TouchTransmitter") then
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
                        wait()
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
                        end
                    end
                end)
            end
        end
    end)
    
    spawn(function()
    while task.wait() do
    if _G.ChestBypass then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(ohString1, ohString2)
         end
    end
    end)

	--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	if W3 then

		local Auto_Castle_RaidSection = MainTab:CreateSection({
			Name = "Auto Castle Raid",
			Side = "Left"
		})

		Auto_Castle_RaidSection:AddToggle({
			Name = "Auto Castle Raid\nออโต้ตีโจรเกาะกลาง",
			Value = _G.Settings.Auto_Castle_Raid,
			Callback = function(value)
				_G.Auto_Castle_Raid = value
				_G.Settings.Auto_Castle_Raid = value
				SaveSettings()   
				StopTween(_G.Auto_Castle_Raid)
				if value == false then
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				end
			end
		})

		spawn(function()
			while wait() do
				pcall(function()
					if _G.Auto_Castle_Raid then
						if (CFrame.new(-5118.48682, 314.54129, -2958.64404, -0.387232125, 1.81507858e-08, 0.921982229, -7.54388907e-08, 1, -5.13709999e-08, -0.921982229, -8.94458196e-08, -0.387232125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1000 then
									repeat wait()
										PosMon = v.HumanoidRootPart.CFrame
										EquipWeapon(_G.Select_Weapon)
										v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
										BringMobFarm = true
										getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
										if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
											_G.FastAttack = true
										end
									until not _G.Auto_Castle_Raid or not v.Parent or v.Humanoid.Health <= 0
									BringMobFarm = false
								end
							end
						else
							if (CFrame.new(-5118.48682, 314.54129, -2958.64404, -0.387232125, 1.81507858e-08, 0.921982229, -7.54388907e-08, 1, -5.13709999e-08, -0.921982229, -8.94458196e-08, -0.387232125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
								for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1000 then
										getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
									end
								end
							end
							getgenv().ToTarget(CFrame.new(-5118.48682, 314.54129, -2958.64404, -0.387232125, 1.81507858e-08, 0.921982229, -7.54388907e-08, 1, -5.13709999e-08, -0.921982229, -8.94458196e-08, -0.387232125))
						end
					end
				end)
			end
		end)

		local ElitehunterSection = MainTab:CreateSection({
			Name = "Elite Hunter",
			Side = "Left"
		})
		
		local Elite_Hunter_Status = ElitehunterSection:AddLabelX({
			Name = "Status",
			Flag = "Status",
			Log = true
		})
		
		spawn(function()
			while wait() do
				pcall(function()
					if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
						Elite_Hunter_Status:Set("Status : 🟢")
					else
						Elite_Hunter_Status:Set("Status : 🔴")	
					end
				end)
			end
		end)
		
		local Total_Elite_Hunter = ElitehunterSection:AddLabel({
			Name = "Already Kill",
			Flag = "Already Kill",
			Log = true,
		})
		
		spawn(function()
			while wait() do
				Total_Elite_Hunter:Set("Already Kill Elite Hunter : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))
			end
		end)
		
		ElitehunterSection:AddToggle({
			Name = "Auto Elite Hunter\nออโต้ฆ่าอีลิธฮันเตอร์",
			Flag = "Auto_Elite_Hunter",
			Value = _G.Settings.Auto_Elite_Hunter,
			Callback = function(value)
				_G.Auto_Elite_Hunter = value
				_G.Settings.Auto_Elite_Hunter = value
				SaveSettings()   
				StopTween(_G.Auto_Elite_Hunter)
				if value == false then
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				end
			end
		})
		
		ElitehunterSection:AddToggle({
			Name = "Auto Elite Hunter Hop\nออโต้ฆ่าอีลิธฮันเตอร์{ย้ายเซิฟ}",
			Flag = "Auto_Elite_Hunter_Hop",
			Value = _G.Settings.Auto_Elite_Hunter_Hop,
			Callback = function(value)
				_G.Auto_Elite_Hunter_Hop = value 
				_G.Settings.Auto_Elite_Hunter_Hop = value
				SaveSettings()      
			end
		})
		local Elite_All_Mon = {
			["Mon Quest"] = {"Diablo","Deandre","Urban"},
			["Mon"] = {"Diablo","Deandre","Urban"},
			["Item"] = "God's Chalice",
		}
		spawn(function()
			while wait() do
				pcall(function()
					if _G.Auto_Elite_Hunter then
						local QuestUI = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
						for _,_l1 in next,Elite_All_Mon["Mon Quest"] do
							for _,l in next,Elite_All_Mon["Mon"] do
								if QuestUI.Visible == true then
									if game:GetService("Workspace").Enemies:FindFirstChild(_l1) or game:GetService("ReplicatedStorage"):FindFirstChild(_l1) then
										for _,_1 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if _1.Name == _l1 then
												if _1:FindFirstChild("Humanoid") and _1:FindFirstChild("HumanoidRootPart") and _1.Humanoid.Health > 0 then
													repeat wait()
														EquipWeapon(_G.Select_Weapon)
														_1.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
														getgenv().ToTarget(_1.HumanoidRootPart.CFrame * MethodFarm)
														if (_1.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
															_G.FastAttack = true
														end
													until _1.Humanoid.Health <= 0 or not _1.Parent or not game:GetService("Workspace").Enemies:FindFirstChild(l) or not game:GetService("ReplicatedStorage"):FindFirstChild(l) or not _G.Auto_Elite_Hunter
												end
											else
												if _G.Bypass_TP then
													if (game:GetService("ReplicatedStorage"):FindFirstChild(_l1).HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
														repeat wait()
															Bypass(game:GetService("ReplicatedStorage"):FindFirstChild(_l1).HumanoidRootPart.CFrame * MethodFarm)
														until not _G.Auto_Elite_Hunter
													end
												end
												if game:GetService("ReplicatedStorage"):FindFirstChild(_l1) then
													getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(_l1).HumanoidRootPart.CFrame * MethodFarm)
												end
											end
										end
									end
								else
									if game.Players.LocalPlayer.Backpack:FindFirstChild(Elite_All_Mon["Item"]) or game.Players.LocalPlayer.Character:FindFirstChild(Elite_All_Mon["Item"]) then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
										_G.Auto_Elite_Hunter = false
										return
									else
										if _G.Auto_Elite_Hunter_Hop and game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later." and not ( game:GetService("Workspace").Enemies:FindFirstChild(_l1) or game:GetService("ReplicatedStorage"):FindFirstChild(_l1) ) then
											print("Hop")
											_G.Rejoin = false
											wait(5)
											Hop()
										else
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
										end
									end
								end
							end
						end
					end
				end)
			end
		end)
		
		local CakePrinceSection = MainTab:CreateSection({
			Name = "Katakuri",
			Side = "Left"
		})
		
		local Mob_Kill_Cake_Prince = CakePrinceSection:AddLabel({
			Name = "Total",
			Flag = "Total"
		})
		
		spawn(function()
			while wait() do
				pcall(function()
					if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
						Mob_Kill_Cake_Prince:Set("Need Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41).." !!!")
					elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
						Mob_Kill_Cake_Prince:Set("Need Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40).." !!!")
					elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
						Mob_Kill_Cake_Prince:Set("Need Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39).." !!!")
					else
						Mob_Kill_Cake_Prince:Set("Boss Is Spawned!!!")
					end
				end)
			end
		end)
		
		CakePrinceSection:AddToggle({
			Name = "Auto Cake Prince\nออโต้ตีคาตาคุริ",
			Flag = "Auto_Cake_Prince",
			Value = _G.Settings.Auto_Cake_Prince,
			Callback = function(value)
				_G.Auto_Cake_Prince = value
				if _G.Bypass_TP == false and _G.HH then
					wait(0.5)
					_G.Bypass_TP = true
				else
					_G.Bypass_TP = false
				end
				_G.Settings.Auto_Cake_Prince = value
				SaveSettings()
				StopTween(_G.Auto_Cake_Prince)
				if value == false then
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				end
			end
		})
		
		spawn(function()
			game:GetService("RunService").Heartbeat:Connect(function()
				pcall(function()
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if _G.BringNormal and _G.Auto_Cake_Prince and StartCakeMagnet and (v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker") and (v.HumanoidRootPart.Position - POSCAKE.Position).magnitude <= 350 then
							v.HumanoidRootPart.CFrame = POSCAKE
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
				if _G.Auto_Cake_Prince then
					pcall(function()
						if game.ReplicatedStorage:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or  game.ReplicatedStorage:FindFirstChild("Dough King") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then   
								if _G.Settings.Bypass_TP then
								_G.Bypass_TP = false
							end
							if not game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
								for _,x in pairs(game.ReplicatedStorage:GetChildren()) do 
									if x.Name == "Cake Prince" or x.Name == "Dough King" then
										if (x.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
											_G.Bypass_TP = false
											wait(1.5)
											getgenv().ToTarget(CFrame.new(-2145.89722, 70.0088272, -12399.6016, 0.99999702, 1.58276379e-08, 0.00245277886, -1.57982978e-08, 1, -1.19813057e-08, -0.00245277886, 1.19425199e-08, 0.99999702))
											return
										end
									end
								end
							end

							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Cake Prince" then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat task.wait()
											if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
												getgenv().ToTarget(CFrame.new(-2145.89722, 70.0088272, -12399.6016, 0.99999702, 1.58276379e-08, 0.00245277886, -1.57982978e-08, 1, -1.19813057e-08, -0.00245277886, 1.19425199e-08, 0.99999702))
												return
											end
											EquipWeapon(_G.Select_Weapon)
											v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
											BringMobFarm = true
											getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
											if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
												_G.FastAttack = true
											end
											sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
										until not _G.Auto_Cake_Prince or not v.Parent or v.Humanoid.Health <= 0
									end
								else
									for _,x in pairs(game.ReplicatedStorage:GetChildren()) do 
										if x.Name == "Cake Prince" or x.Name == "Dough King" then
											if (x.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
												getgenv().ToTarget(CFrame.new(-2145.89722, 70.0088272, -12399.6016, 0.99999702, 1.58276379e-08, 0.00245277886, -1.57982978e-08, 1, -1.19813057e-08, -0.00245277886, 1.19425199e-08, 0.99999702))
												return
											end
										end
									end
								end
							end
						else 
							if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game.ReplicatedStorage:FindFirstChild("Cake Prince") then
								for _,x in pairs(game.ReplicatedStorage:GetChildren()) do 
									if x.Name == "Cake Prince" or x.Name == "Dough King" then
										if (x.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
											getgenv().ToTarget(CFrame.new(-2145.89722, 70.0088272, -12399.6016, 0.99999702, 1.58276379e-08, 0.00245277886, -1.57982978e-08, 1, -1.19813057e-08, -0.00245277886, 1.19425199e-08, 0.99999702))
											return
										end
									end
								end
							else
								if game.Workspace.Enemies:FindFirstChild("Baking Staff") or game.Workspace.Enemies:FindFirstChild("Head Baker") or game.Workspace.Enemies:FindFirstChild("Cake Guard") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter")  then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
										if (v.Name == "Baking Staff" or v.Name == "Head Baker" or v.Name == "Cake Guard" or v.Name == "Cookie Crafter") and v.Humanoid.Health > 0 then
											repeat wait()
												PosMon = v.HumanoidRootPart.CFrame
												EquipWeapon(_G.Select_Weapon)
												v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
												BringMobFarm = true
												getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
												if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
													_G.FastAttack = true
												end
											until _G.Auto_Cake_Prince == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or not v.Parent or v.Humanoid.Health <= 0
										end
									end
								else
									BringMobFarm = false
									getgenv().ToTarget(GetCake_CFrame_Mon() * MethodFarm)
									wait(0.5)
								end
							end
						end
					end)
				end
			end
		end)
			
		local FarmMaterialSection = MainTab:CreateSection({
			Name = "Material",
			Side = "Left"
		})
		
		FarmMaterialSection:AddDropdown({
			Name = "Select Material\nเลือกวัสดุ",
			Flag = "Select_Material",
			Value = SelectModeMaterial,
			List = AllMaterial,
			Callback = function(value)
				SelectModeMaterial = value
			end})
	--หะ 
	FarmMaterialSection:AddToggle({
		Name = "Auto Farm Material\nออโต้ฟาร์มวัสดุ",
		Value = AutoFarmMaterial,
		Callback = function(x)
			AutoFarmMaterial = x
			if x == false then
				toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
			end
			task.spawn(function()
				while task.wait() do
					if AutoFarmMaterial then
						xpcall(function()
							if (SelectModeMaterial ~= "") then
								CheckMaterial(SelectModeMaterial);
								if CustomFindFirstChild(MaterialMob) then
									for v0, v1 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if (AutoFarmMaterial and table.find(MaterialMob, v1.Name) and v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid") and (v1.Humanoid.Health > 0)) then
											repeat
												task.wait();
												FarmtoTarget = toTarget(v1.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1));
												if (v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid") and ((v1.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150)) then
													if FarmtoTarget then FarmtoTarget:Stop(); end
													FastAttack = true;
													EquipWeapon(_G.Select_Weapon);
													spawn(function()
														for v4, v5 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
															if (v5.Name == v1.Name) then
																spawn(function()
																	if InMyNetWork(v5.HumanoidRootPart) then
																		v5.HumanoidRootPart.CFrame = v1.HumanoidRootPart.CFrame;
																		v5.Humanoid.JumpPower = 0;
																		v5.Humanoid.WalkSpeed = 0;
																		v5.HumanoidRootPart.CanCollide = false;
																		v5.Humanoid:ChangeState(14);
																		v5.Humanoid:ChangeState(16);
																		v5.Humanoid:ChangeState(11);
																		v5.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
																	end
																end);
															end
														end
													end);
													if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150)) then
														game:service("VirtualInputManager"):SendKeyEvent(true, "V", false,game);
														game:service("VirtualInputManager"):SendKeyEvent(false, "V",false, game);
													end
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1);
												end
											until not CustomFindFirstChild(MaterialMob) or not AutoFarmMaterial or (v1.Humanoid.Health <= 0) or not v1.Parent
											FastAttack = false;
										end
									end
								else
									FastAttack = false;
									Modstween = toTarget(CFrameMon);
									if (World1 and (table.find(MaterialMob, "Fishman Commando")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000)) then
										if Modstween then Modstween:Stop(); end wait(0.5); game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
									elseif (World1 and not (table.find(MaterialMob, "Fishman Commando")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000)) then
										if Modstween then Modstween:Stop(); end wait(0.5); game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(3864.8515625, 6.6796875, -1926.7841796875));
									elseif (World1 and (table.find(MaterialMob, "God's Guard")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000)) then
										if Modstween then Modstween:Stop(); end wait(0.5); game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656));
									elseif ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150) then
										if Modstween then 
											Modstween:Stop()
											spawn(function()
												if posrandom <= 1 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(0,0,35)
													posrandom = posrandom + 0.1
												elseif posrandom >= 1 and posrandom <= 2 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
													posrandom = posrandom + 0.1
												elseif posrandom >= 2 and posrandom <= 3 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon *CFrame.new(0,0,-35)
													posrandom = posrandom + 0.1
												elseif posrandom >= 3 and posrandom <= 4  then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(-35,0,0)
													posrandom = posrandom + 0.1
											elseif posrandom >=4 and posrandom <= 5 then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
												posrandom = 0
											end
										end)
									end
									   -- game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon;
									end
								end
							end
						end, function(x)
							print("Auto Farm Material Error : " .. x)
						end)
					else
						break;
					end
				end
			end)
		end})

		local FarmBoneSection = MainTab:CreateSection({
			Name = "Farm Bone",
			Side = "Left"
		})
		
		local Bone_Check = FarmBoneSection:AddLabel({
			Name = "Total",
			Flag = "Total"
		})
		
		spawn(function()
			while wait() do
				if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 then
					Bone_Check:Set("Bone : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check"))
				else
					Bone_Check:Set("Bone : Nil")
				end
			end
		end)
		
		FarmBoneSection:AddToggle{
			Name = "Auto Farm Bone\nออโต้ฟาร์มกระดูก",
			Flag = "Auto_Farm_Bone",
			Value = _G.Settings.Auto_Farm_Bone,
			Callback  = function(value)
				_G.Auto_Farm_Bone = value
				_G.Settings.Auto_Farm_Bone = value
				SaveSettings()
				StopTween(_G.Auto_Farm_Bone)
				if value == false then
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				end
				if value == false then
					task.wait()
					getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					task.wait()
				end
			end
		}

		spawn(function()
			game:GetService("RunService").Heartbeat:Connect(function()
				pcall(function()
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if _G.BringNormal and _G.Auto_Farm_Bone and StartMagnetBoneMon and (v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy") and (v.HumanoidRootPart.Position - PosMonBone.Position).magnitude <= 1000 then
							v.HumanoidRootPart.CFrame = PosMonBone
							v.HumanoidRootPart.CanCollide = false
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
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
		
		local Number2 = 1
		local BoneTabel = {
			["Mon"] = {"Reborn Skeleton","Demonic Soul","Living Zombie","Posessed Mummy"},
			["Boss"] = {"Soul Reaper"},
			["Item"] = "Hallow Essence",
		}

		local SetCFarmeBone = 1
		function GetBone_CFrame_Mon()
			local matchingCFrames = {}

			for _, Mon in ipairs(BoneTabel["Mon"]) do
				local result = Mon:gsub("Lv. ", ""):gsub("[%[%]]", ""):gsub("%d+", ""):gsub("%s+", "")
				
				for _, v in ipairs(game.workspace.EnemySpawns:GetChildren()) do
					if v.Name == result then
						table.insert(matchingCFrames, v.CFrame)
					end
				end
			end
			
			return matchingCFrames
		end

		spawn(function()
			while wait() do
				pcall(function()
					if _G.Auto_Farm_Bone then
						for _, _Boss in ipairs(BoneTabel["Boss"]) do
							local _Item = BoneTabel["Item"]
							if game:GetService("Workspace").Enemies:FindFirstChild(_Boss) or game:GetService("ReplicatedStorage"):FindFirstChild(_Boss) then
								for _, _v1 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if string.find(_v1.Name, _Boss) then
										if _v1:FindFirstChild("Humanoid") and _v1:FindFirstChild("HumanoidRootPart") and _v1.Humanoid.Health > 0 then
											repeat wait()
												EquipWeapon(_G.Select_Weapon)
												_v1.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
												BringMobFarm = true
												getgenv().ToTarget(_v1.HumanoidRootPart.CFrame * MethodFarm)
												if (_v1.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
													_G.FastAttack = true
												end
											until not _G.Auto_Farm_Bone or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
											BringMobFarm = false
										end
									end
								end
							else
								if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(_Item) or game:GetService("Players").LocalPlayer.Character:FindFirstChild(_Item) then
									EquipWeapon(_Item)
									getgenv().ToTarget(workspace.Map["Haunted Castle"].Summoner.Detection.CFrame)
								else
									for _, _Mon in next, BoneTabel["Mon"] do
										if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
											print(_Mon)
											for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
												if string.find(v.Name, _Mon) then
													if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
														repeat wait()
															PosMon = v.HumanoidRootPart.CFrame
															EquipWeapon(_G.Select_Weapon)
															v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
															BringMobFarm = true
															getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
															if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
																_G.FastAttack = true
															end
														until not _G.Auto_Farm_Bone or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
													else
														local CFrameMon = GetBone_CFrame_Mon()[1]
														repeat wait() getgenv().ToTarget(CFrameMon) until (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 or not _G.Auto_Farm_Bone
													end
												end
											end
										else
											if _G.Auto_CFrame then
												getgenv().ToTarget(GetBone_CFrame_Mon()[SetCFarmeBone] * MethodFarm)
												if (GetBone_CFrame_Mon()[SetCFarmeBone].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
													if SetCFarmeBone == nil or SetCFarmeBone == '' then
														SetCFarmeBone = 1
													elseif SetCFarmeBone >= #GetBone_CFrame_Mon() then
														SetCFarmeBone = 1
													end
													SetCFarmeBone =  SetCFarmeBone + 1
				
													print(SetCFarmeBone)
													wait(0.5)
												end
											else
												if AttackRandomType_MonCFrame == 1 then
													getgenv().ToTarget(GetBone_CFrame_Mon()[1] * CFrame.new(0,30,20))
												elseif AttackRandomType_MonCFrame == 2 then
													getgenv().ToTarget(GetBone_CFrame_Mon()[1] * CFrame.new(0,30,-20))
												elseif AttackRandomType_MonCFrame == 3 then
													getgenv().ToTarget(GetBone_CFrame_Mon()[1] * CFrame.new(20,30,0))
												elseif AttackRandomType_MonCFrame == 4 then
													getgenv().ToTarget(GetBone_CFrame_Mon()[1] * CFrame.new(0,30,-20))
												elseif AttackRandomType_MonCFrame == 5 then
													getgenv().ToTarget(GetBone_CFrame_Mon()[1] * CFrame.new(-20,30,0))
												else
													getgenv().ToTarget(GetBone_CFrame_Mon()[1] * CFrame.new(0,30,20))
												end
											end
										end
									end
								end
							end
						end
					end
				end)
			end
		end)
	
		
		FarmBoneSection:AddToggle{
			Name = "Auto Trade Bone\nออโต้เทรดกระดูก",
			Flag = "Auto_Trade_Bone",
			Value = _G.Settings.Auto_Trade_Bone,
			Callback  = function(value)
				_G.Auto_Trade_Bone = value
				_G.Settings.Auto_Trade_Bone = value
				SaveSettings()
			end
		}
		
		spawn(function()
			while wait(.1) do
				if _G.Auto_Trade_Bone then
					local args = {
						[1] = "Bones",
						[2] = "Buy",
						[3] = 1,
						[4] = 1
					}
		
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end
		end)
	end
	local FarmObervaSection = MainTab:CreateSection({
		Name = " ObserVation ",
		Side = "Left"
	})

local ObservationRange = FarmObervaSection:AddLabel({
	Name = "..",
})
spawn(function()
	while wait() do
		ObservationRange:Set("Observation Range Level : "..math.floor(game:GetService("Players").LocalPlayer.VisionRadius.Value))
	end
end)

FarmObervaSection:AddToggle({
	Name = "Auto Farm Observation Haki\nออฟาร์มฮาคิสังเกต",
	Value = _G.Settings.AutoObservation,
	Callback = function(value)
		_G.AutoObservation = value 
		_G.Settings.AutoObservation = value
		SaveSettings()      
	end})

FarmObervaSection:AddToggle({
	Name = "Auto Farm Observation Haki\nออฟาร์มฮาคิสังเกต{ย้ายเซิฟ}",
	Value = _G.Settings.AutoObservation_Hop, 
	Callback = function(value)
		_G.AutoObservation_Hop = value 
		_G.Settings.AutoObservation_Hop = value
		SaveSettings()      
	end})
spawn(function()
        while wait() do
            pcall(function()
                    if _G.Settings.AutoObservation then
                        repeat
                            task.wait()
                            if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
								local args = {
									[1] = "Ken",
									[2] = true
								}
							
								game:GetService("ReplicatedStorage").Remotes.CommE:FireServer(unpack(args))
                            end
                        until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not _G.AutoObservation
                    end
                end)
        	end
    	end)

spawn(function()
        pcall(function()
                while wait() do
                    if _G.Settings.AutoObservation then
                        if game:GetService("Players").LocalPlayer.VisionRadius.Value >= 6000 then
							Vec("<Color=Red>You Have Max Observation<Color=/>")
                            wait(2)
                        else
                            if W2 then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate") then
                                    if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                        repeat
                                            task.wait()
											wait(1.5)
                                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
                                        until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                    else
                                        repeat
                                            task.wait()
                                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)
                                            if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
												wait(5)
                                                game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                            end
                                        until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                    end
                                else
                                    getgenv().ToTarget(CFrame.new(-5478.39209, 15.9775667, -5246.9126)) 
                                end
                            elseif W1 then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain") then
                                    if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                        repeat
                                            task.wait()
											wait(1.5)
                                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
                                        until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                    else
                                        repeat
                                            task.wait()
                                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)
                                            if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
												wait(5)
                                                game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                            end
                                        until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                    end
                                else
                                    getgenv().ToTarget(CFrame.new(5533.29785, 88.1079102, 4852.3916))
                                end
                            elseif W3 then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander") then
                                    if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                        repeat
                                            task.wait()
											wait(1.5)
                                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
                                        until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                    else
                                        repeat
                                            task.wait()
                                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)
                                            if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
												wait(5)
                                                game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                            end
                                        until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                    end
                                else
                                    getgenv().ToTarget(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
                                end
                            end
                        end
                    end
                end
            end)
        end)

	
	local SettingSection = MainTab:CreateSection({
		Name = "Setting",
		Side = "Right"
	})
	
	
	local SelectWeapon
	local Weapon = {
		"Melee",
		"Sword",
		"Fruit"
	}
	
	task.spawn(function()
		while wait() do
			pcall(function()
				if SelectWeapon == "Melee" then
					for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v.ToolTip == "Melee" then
							if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
								_G.Select_Weapon = v.Name
							end
						end
					end
				elseif SelectWeapon == "Sword" then
					for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v.ToolTip == "Sword" then
							if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
								_G.Select_Weapon = v.Name
							end
						end
					end
				elseif SelectWeapon == "Fruit" then
					for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v.ToolTip == "Blox Fruit" then
							if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
								_G.Select_Weapon = v.Name
							end
						end
					end
				else
					for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v.ToolTip == "Melee" then
							if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
								_G.Select_Weapon = v.Name
							end
						end
					end
				end
			end)
		end
	end)
	
	SettingSection:AddDropdown({
		Name = "Select Weapon เลือกอาวุธ",
		Flag = "Select_Weapon",
		Value = _G.Settings.SelectWeapon,
		List = Weapon,
		Callback = function(value)
			SelectWeapon = value
			_G.Settings.SelectWeapon = value
			SaveSettings()
		end
	})
	if _G.DistanceAutoFarm == nil then
		_G.DistanceAutoFarm = 30
	end
	if  _G.Method == nil then
		_G.Method = "Upper"
	end
	SettingSection:AddDropdown({
		Name = "Select Farm Method เลือกตำแหน่งฟาร์ม",
		Flag = "Select_Farm_Method",
		Value = _G.Settings.Method,
		List = {"Upper","Behind","Below"},
		Callback = function(value)
			_G.Method = value
			_G.Settings.Method = value
			SaveSettings()
		end
	})
	
	SettingSection:AddSlider({
		Name = "Distance\nระยะฟาร์ม",
		Flag = "Distance",
		Value = _G.Settings.DistanceAutoFarm,
		Min = 1,
		Max = 100,
		Textbox = true,
		Format = function(value)
			DistanceAutoFarm = value
			_G.Settings.DistanceAutoFarm = value
			SaveSettings()
		end
	})
	
	
    task.spawn(function()
		while task.wait(0) do
		pcall(function()
			if _G.Method == "Behind" then
				MethodFarm = CFrame.new(0, 0,  _G.DistanceAutoFarm)
			elseif _G.Method == "Below" then
				MethodFarm = CFrame.new(0, - _G.DistanceAutoFarm, 0) * CFrame.Angles(math.rad(90), 0, 0)
			elseif _G.Method == "Upper" then
				MethodFarm = CFrame.new(0,  _G.DistanceAutoFarm, 0) * CFrame.Angles(math.rad(0), 0, 0)
			else
				MethodFarm = CFrame.new(0,  _G.DistanceAutoFarm, 0)
			end
		end)
		end
		end)

	SettingSection:AddToggle{
		Name = "White Screen{Reduce lag}\nเปิดจอขาว {ลดอาการแลค}",
		Flag = "White_Screen",
		Value = false,
		Callback  = function(value)
			if value then
				game.RunService:Set3dRenderingEnabled(false)
			else
				game.RunService:Set3dRenderingEnabled(true)
			end
		end
	}

	SettingSection:AddToggle{
		Name = "Black Screen{Reduce lag}\nเปิดจอดำ {ลดอาการแลค}",
		Flag = "Black_Screen",
		Value = false,
		Callback  = function(value)
			if value then
				game.RunService:Set3dRenderingEnabled(false)
				game:GetService("Players").LocalPlayer.PlayerGui.Main.Blackscreen.Size = UDim2.new(500, 0, 500, 500)
			else
				game.RunService:Set3dRenderingEnabled(true)
				game:GetService("Players").LocalPlayer.PlayerGui.Main.Blackscreen.Size = UDim2.new(1, 0, 500, 500)
			end
		end
	}

	SettingSection:AddButton({
		Name = "Auto White Screen{Reduce lag}\nออโต้เปิดจอขาว {ลดอาการแลค}",
		Callback = function()
			game:GetService("UserInputService").WindowFocused:connect(function()
       		 game.RunService:Set3dRenderingEnabled(true)
    	end)
			game:GetService("UserInputService").WindowFocusReleased:connect(function()
        	game.RunService:Set3dRenderingEnabled(false)
    		end)
		end}) 

		SettingSection:AddButton({
			Name = "Auto Black Screen{Reduce lag}\nออโต้เปิดจอดำ {ลดอาการแลค}",
			Callback = function()
				game:GetService("UserInputService").WindowFocused:connect(function()
					game.RunService:Set3dRenderingEnabled(true)
					game:GetService("Players").LocalPlayer.PlayerGui.Main.Blackscreen.Size = UDim2.new(1, 0, 500, 500)
				end)
				game:GetService("UserInputService").WindowFocusReleased:connect(function()
					game.RunService:Set3dRenderingEnabled(false)
					game:GetService("Players").LocalPlayer.PlayerGui.Main.Blackscreen.Size = UDim2.new(500, 0, 500, 500)
				end)
			end}) 

	SettingSection:AddToggle{
		Name = "Auto Set SpawnPoint\nออโต้เซ็ตจุดเกิด",
		Flag = "Auto_Set_Spawn",
		Value = _G.Settings.Auto_Set_Spawn,
		Callback  = function(value)
			_G.Auto_Set_Spawn = value
			_G.Settings.Auto_Set_Spawn = value
			SaveSettings()
		end
	}
	
	spawn(function()
		while wait(0.1) do
			if _G.Auto_Set_Spawn then
				pcall(function()
					if game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
					end
				end)
			end
		end
	end)

	SettingSection:AddToggle{
		Name = "Fast Attack\nโจมตีเร็ว",
		Flag = "FastAttack",
		Value = true,
		Callback  = function(value)
			_G.FastAttack = value
		end
	}

coroutine.wrap(function()
	while task.wait(.1) do
		local ac = CombatFrameworkR.activeController
		if ac and ac.equipped then
			if _G.FastAttack then
				yakmefan()
				if _G.FastType == "Normal" then
					if tick() - cooldownfastattack > .9 then wait(.1) cooldownfastattack = tick() end
				elseif _G.FastType == "Fast" then
					if tick() - cooldownfastattack > 1.5 then wait(.01) cooldownfastattack = tick() end
				elseif _G.FastType == "Smoot" then
					if tick() - cooldownfastattack > .3 then wait(.7) cooldownfastattack = tick() end
				end
			elseif _G.FastAttack == false then
				if ac.hitboxMagnitude ~= 55 then
					ac.hitboxMagnitude = 55
				end
				ac:attack()
			end
		end
	end
end)()
_G.FastType = "Fast"
	SettingSection:AddToggle{
		Name = "Bring Mon\nรวมมอน",
		Flag = "Bring_Mob",
		Value = _G.Settings.Brimob,
		Callback  = function(value)
			_G.Brimob = value
			_G.Settings.Brimob = value
			SaveSettings()
		end
	}
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
	spawn(function()
		while true do wait()
			if setscriptable then
				setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
			end
			if sethiddenproperty then
				sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
			end
		end
	end)
	spawn(function()
		while task.wait() do
			pcall(function()
				if _G.Brimob then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 200 then
							if InMyNetWork(v.HumanoidRootPart) then
								v.HumanoidRootPart.CFrame = PosMon
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
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
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
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
				if _G.Brimob then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == QuestCheck()[3] and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 200 then
							v.HumanoidRootPart.CFrame = PosMon
							v.HumanoidRootPart.Size = Vector3.new(60,60,60)
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
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
						end
					end
				end
			end)
		end
	end)
	  
	SettingSection:AddToggle({
		Name = "Fast TP\nวาร์ปเร็ว",
		Flag = "Bypass_Tp",
		Value = false,
		Callback = function(value)
			_G.Bypass_TP = value
			_G.HH =  value
			_G.Settings.Bypass = value
			SaveSettings()
		end
	})

	--[[SettingSection:AddToggle({
		Name = "Auto CFrame",
		Value = _G.Settings.Auto_CFrame,
		Callback = function(value)
			_G.Auto_CFrame = value
			_G.Settings.Auto_CFrame = value
			SaveSettings()
		end
	})]]
	_G.Auto_CFrame = true
	--[[SettingSection:AddToggle{
		Name = "Auto Rejoin",
		Flag = "Auto Rejoin",
		Value = _G.Settings.Rejoin,
		Callback  = function(value)
			_G.Rejoin = value
			_G.Settings.Rejoin = value
			SaveSettings()
		end
	}]]
	_G.Rejoin = true
	spawn(function()
		while wait() do
			if _G.Rejoin then
				getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
					if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
						game:GetService("TeleportService"):Teleport(game.PlaceId) 
					end
				end)
			end
		end
	end)
	
	
	SettingSection:AddToggle{
		Name = "Auto Ken\nออโต้เปิฮาคิสังเกต",
		Flag = "Auto_Haki_Ken",
		Value = true,
		Callback  = function(value)
			_G.Auto_Haki_Ken = value
		end
	}
	
	spawn(function()
		while wait() do
			if _G.Auto_Haki_Ken then
				local args = {
					[1] = "Ken",
					[2] = true
				}
			
				game:GetService("ReplicatedStorage").Remotes.CommE:FireServer(unpack(args))
			end
		end
	end)

	SettingSection:AddToggle{
		Name = "Auto Haki\nออโต้เปิดฮาคิเกราะ",
		Flag = "AutoHaki",
		Value = true,
		Callback  = function(value)
			_G.AutoHaki = value
		end
	}

	spawn(function()
		while wait() do
			if _G.AutoHaki then
				AutoHaki()
			end
		end
	end)
	
	SettingSection:AddToggle{
		Name = "Hide Damage Counter\nซ่อนดาเมจแดงๆที่ตัวมอน",
		Value = _G.Settings.Remove_UI_DamageCounter,
		Callback  = function(value)
			_G.Settings.Remove_UI_DamageCounter = value
			if value == true then
				game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
			else
				game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
			end
			SaveSettings()
		end
	}

	SettingSection:AddToggle{
		Name = "Hide Notifications\nซ่อนการแจ้งเตือน",
		Value = _G.Settings.Notifications_Remove,
		Callback  = function(value)
			_G.Settings.Notifications_Remove = value
			if value == true then
				game:GetService("Players").LocalPlayer.PlayerGui.Notifications.Enabled = false
			else
				game:GetService("Players").LocalPlayer.PlayerGui.Notifications.Enabled = true
			end
			SaveSettings()
		end
	}

	local StatsSection = MainTab:CreateSection({
		Name = "Stats",
		Side = "Right"
	})
	
	StatsSection:AddMultiDropdown({
		Name = "Select Stats\nเลือกสแตค",
		List = {"Melee","Defense","Sword","Gun","Demon Fruit"},
		Value = _G.Settings.Select_Stats,
		Callback = function(value)
			_G.Settings.Select_Stats = value
			SaveSettings()
		end
	})
	
	StatsSection:AddToggle{
		Name = "Auto Stats\nออโต้อัพสแตค",
		Flag = "Auto_Stats",
		Value = _G.Settings.Auto_Stats,
		Callback  = function(value)
			_G.Auto_Stats = value
			_G.Settings.Auto_Stats = value
			SaveSettings()
		end
	}
	
	spawn(function()
		while wait() do
			pcall(function()
				if _G.Auto_Stats then
					for _,g in next, _G.Settings.Select_Stats do
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint",tostring(g),_G.Point)
					end
				end
			end)
		end
	end)
	
	StatsSection:AddToggle{
		Name = "Auto Stats Kaitun\nออโต้อัพสแตคแบบไก่ตัน",
		Flag = "Auto_Stats_Kaitun",
		Value = _G.Settings.Auto_Stats_Kaitun,
		Callback  = function(value)
			_G.Auto_Stats_Kaitun = value
			_G.Settings.Auto_Stats_Kaitun = value
			SaveSettings()
		end
	}
	
	spawn(function()
		while wait() do
			if _G.Auto_Stats_Kaitun then
				if game.Players.LocalPlayer.Data.Stats.Melee.Level.Value <= 2549 then
					local args = {
						[1] = "AddPoint",
						[2] = "Melee",
						[3] = 1000
					}
					
					game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
				elseif game.Players.LocalPlayer.Data.Stats.Defense.Level.Value <= 2549 then
					local args = {
						[1] = "AddPoint",
						[2] = "Defense",
						[3] = 1000
					}
					
					game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
				end
			end
		end
	end)
	
 
	
	StatsSection:AddSlider({
		Name = "Select Point\nเลือกจำนวน",
		Flag = "Select_Point",
		Value = _G.Settings.Point,
		Min = 1,
		Max = 100,
		Textbox = true,
		Format = function(value)
			_G.Point = value
			_G.Settings.Point = value
			SaveSettings()
			return "Point : " .. tostring(value)
		end
	})
	
spawn(function()
    while task.wait() do
        if _G.Auto_Farm_Level then
            function UseCode(Text)
                game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
            end
            UseCode("Sub2UncleKizaru")
            UseCode("SUB2NOOBMASTER123")
            UseCode("StrawHatMaine")
            UseCode("Sub2OfficialNoobie")
            UseCode("SUB2GAMERROBOT_EXP1")
            UseCode("SUB2GAMERROBOT_RESET1")
            UseCode("THEGREATACE")
            UseCode("BIGNEWS")
            UseCode("FUDD10")
            UseCode("fudd10_v2")
            UseCode("Bluxxy")
            UseCode("Starcodeheo")
            UseCode("JCWK")
            UseCode("Magicbus")
            UseCode("Sub2Fer999")
            UseCode("kittgaming")
            UseCode("GAMERROBOT")
            UseCode("SUBGAMERROBOT")
            UseCode("ADMINGIVEAWAY")
            UseCode("KITT_RESET")
            UseCode("SECRET_ADMIN")
            UseCode("Sub2Daigrock")
            UseCode("Axiore")
            UseCode("TantaiGaming")
			UseCode("DEVSCOOKING")
			UseCode("Sub2CaptainMaui")
			UseCode("KITT_RESET")
			UseCode("NEWTROLL")
        end
    end
end)
	local MasterySettings = MainTab:CreateSection({
		Name = "Mastery Settings\nตั้งค่าการฟาร์มมาสเตอรี่",
		Side = "Right"
	})
	
	MasterySettings:AddToggle{
		Name = "Skill Z",
		Flag = "SkillZ",
		Value = _G.Settings.SkillZ,
		Callback  = function(value)
			_G.SkillZ = value
			_G.Settings.SkillZ = value
			SaveSettings()
		end
	}
	
	MasterySettings:AddToggle{
		Name = "Skill X",
		Flag = "SkillX",
		Value = _G.Settings.SkillX,
		Callback  = function(value)
			_G.SkillX = value
			_G.Settings.SkillX = value
			SaveSettings()
		end
	}
	
	MasterySettings:AddToggle{
		Name = "Skill C",
		Flag = "SkillC",
		Value = _G.Settings.SkillC,
		Callback  = function(value)
			_G.SkillC = value
			_G.Settings.SkillC = value
			SaveSettings()
		end
	}
	
	MasterySettings:AddToggle{
		Name = "Skill V",
		Flag = "SkillV",
		Value = _G.Settings.SkillV,
		Callback  = function(value)
			_G.SkillV = value
			_G.Settings.SkillV = value
			SaveSettings()
		end
	}
	

	_G.AutoMasterySkill = true
	spawn(function()
		while task.wait() do
			pcall(function()
				if _G.UseSkill and _G.AutoMasterySkill then
					if _G.SkillZ then
						game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
						game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
					end
					if _G.SkillX then
						game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
						game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
					end
					if _G.SkillC then
						game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
						game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
					end
					if _G.SkillV then
						game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
						game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
					end
				elseif UseSkillGun then
					if _G.SkillZ then
						game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
						game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
					end
					if _G.SkillX then
						game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
						game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
					end
				end
			end)
		end
	end)
	spawn(function()
		while task.wait() do
			pcall(function()
				if _G.Auto_Farm_Mastery_Fruit then
					local On = {
						[1] = FruitPos.Position
					}
					game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(On))
				else
				   local Off = {
						[1] = nil
					}
					game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(Off)) 
				end
			end)
		end
	end)
	
	MasterySettings:AddSlider({
		Name = "Select HealthMs\nเลือกเลือดมอนตอนที่จะปล่อยสกิล",
		Flag = "HealthMs",
		Value = _G.Settings.HealthMs,
		Min = 1,
		Max = 100,
		Textbox = true,
		Format = function(value)
			_G.Settings.HealthMs = value
			SaveSettings()
		end
	})
	
	MasterySettings:AddSlider({
		Name = "Select Distance Y\nเลือกระยะแกน Y",
		Flag = "DistanceY",
		Value = _G.Settings.DistanceY,
		Min = 1,
		Max = 100,
		Textbox = true,
		Format = function(value)
			_G.Settings.DistanceY = value
			SaveSettings()
		end
	})
	
	MasterySettings:AddSlider({
		Name = "Select Distance X\nเลือกระยะแกน X",
		Flag = "DistanceX",
		Value = _G.Settings.Distance,
		Min = 1,
		Max = 100,
		Textbox = true,
		Format = function(value)
			_G.Settings.Distance = value
			SaveSettings()
		end
	})
	--HealthMs
	
	local RageBountySection = MainTab:CreateSection({
		Name = "Player",
		Side = "Right"
	})
	
	local PlayerName = {}
	for i,v in pairs(game.Players:GetChildren()) do  
		if v.Name ~= game.Players.LocalPlayer.Name then
			table.insert(PlayerName ,v.Name)
		end
	end
	local plr = game:GetService("Players").LocalPlayer;
	local getplayers = {}

	for i, v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
        if v.Name ~= plr.Name then
            table.insert(getplayers, v.Name)
        end
    end

	local PlayerDrop = RageBountySection:AddDropdown({
		Name = "Select Player เลือกเพลย์เยอร์",
		Flag = "Select_Player",
		List = PlayerName,
		Value = _G.Settings.Select_Player,
		Callback = function(value)
			_G.Settings.Select_Player = value
			SaveSettings()
		end
	})
	RageBountySection:AddButton({
		Name = "Refresh Player\nรีเฟรชเพลย์เยอร์",
		Callback = function()
			PlayerDrop:Clear()
			for i, v in next, game:GetService("Workspace").Characters:GetChildren() do
				if v.Name ~= plr.Name then
					if v:FindFirstChild("HumanoidRootPart") then
						PlayerDrop:Add(v.Name)
					end
				end
			end
		end}) 

	RageBountySection:AddToggle{
		Name = "Spectate Player\nดูเพลย์เยอร์",
		Flag = "Spectate_Player",
		Value = _G.Settings.Spectate_Player,
		Callback  = function(value)
			_G.Spectate_Player = value
			_G.Settings.Spectate_Player = value
			SaveSettings()
		end}
	
	spawn(function()
		while wait() do
			if _G.Spectate_Player then
				pcall(function()
					if game.Players:FindFirstChild(_G.Settings.Select_Player) then
						game.Workspace.Camera.CameraSubject = game.Players:FindFirstChild(_G.Settings.Select_Player).Character.Humanoid
					end
				end)
			else
				game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
			end
		end
	end)
	
	RageBountySection:AddToggle{
		Name = "Teleport to Player\nเทเลพอร์ตไปที่เพลย์เยอร์",
		Flag = "Teleport_to_Player",
		Value = _G.Settings.Teleport_to_Player,
		Callback  = function(value)
			_G.Teleport_to_Player = value
			_G.Settings.Teleport_to_Player = value
			SaveSettings()
			StopTween(_G.Teleport_to_Player)
			if value == false then
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			end
		end
	}
	
	spawn(function()
		while wait() do
			if _G.Teleport_to_Player then
				pcall(function()
					if game.Players:FindFirstChild(_G.Settings.Select_Player) then
						getgenv().ToTarget(game.Players[_G.Settings.Select_Player].Character.HumanoidRootPart.CFrame)
					end
				end)
			end
		end
	end)


	RageBountySection:AddToggle{
		Name = "Auto Kill Player{Beta}\nออโต้ฆ่าเพลย์เยอร์{ทดลอง}",
		Flag = "Auto_Kill_Player",
		Value = _G.Auto_Kill_Player,
		Callback  = function(value)
			_G.Auto_Kill_Player = value
			StopTween(_G.Auto_Kill_Player) 
			if value == false then
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			end
		end
	}
	
	spawn(function()
		while wait() do 
			pcall(function()
				if _G.Auto_Kill_Player then
					if game.Players:FindFirstChild(_G.Settings.Select_Player) then
						for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
							if v.Name == _G.Settings.Select_Player and v.Humanoid.Health > 0 then
								repeat wait()
									if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
										getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarmPlayer)
										AutoHaki()
									elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 50 then
										AutoHaki()
										FastAttack = true
										getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarmPlayer)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
											game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = v.HumanoidRootPart.Position
											if _G.UseSkillkill and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
												game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
												wait(.1)
												game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
											end
											if _G.UseSkillkill and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
												game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
												wait(.1)
												game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
											end
											if _G.UseSkillkill and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
												game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
												wait(.1)
												game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
											end
											if _G.UseSkillkill and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.V then
												game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
												wait(.1)
												game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
											if _G.UseSkillkill and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.F then
												game:service('VirtualInputManager'):SendKeyEvent(true, "F", false, game)
												wait(.1)
												game:service('VirtualInputManager'):SendKeyEvent(false, "F", false, game)
											end
										end
									end  
									end
								until game.Players:FindFirstChild(_G.Settings.Select_Player).Character.Humanoid.Health <= 0 or not _G.Auto_Kill_Player or not game.Players:FindFirstChild(_G.Settings.Select_Player)
							end
						end
					end
				end
			end)
		end
	end)
	
	spawn(function() 
		if _G.UseSkillkill then
			repeat wait()
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then -- หมัด
							EquipWeapon(v.Name)
						end
					end
				end
				wait(1)
			EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value) -- ใช้ผล
			wait(1)
			for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v.ToolTip == "Sword" then
					if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then -- ดาบ
						EquipWeapon(v.Name)
					end
				end
			end
			wait(1)
			for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v.ToolTip == "Gun" then
					if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then -- ปืน
						EquipWeapon(v.Name)
					end
				end
			end
			wait(1)
		until not _G.Auto_Kill_Player
	end
end)

	spawn(function()
		local Methodnow = 1
		while wait(1) do
			if Methodnow == 1 then
				Methodnow = 2
				MethodFarmPlayer = CFrame.new(40, 15, 0) -- เคลื่อนที่ไปทางด้านขวา
			elseif Methodnow == 2 then
				Methodnow = 3
				MethodFarmPlayer = CFrame.new(0, 15, 40) -- เคลื่อนที่ไปทางด้านหลัง
			elseif Methodnow == 3 then 
				Methodnow = 4
				MethodFarmPlayer = CFrame.new(-40, 15, 0) -- เคลื่อนที่ไปทางด้านซ้าย
			else
				Methodnow = 1
				MethodFarmPlayer = CFrame.new(0, 15, -40) -- เคลื่อนที่ไปทางด้านหน้า
			end
		end
	end)
	
		RageBountySection:AddToggle{
			Name = "Aimbot Skill\nอิมบอทสกิล",
			Flag = "Aimbot_Skill",
			Value = Skillaimbot,
			Callback  = function(value)
			Skillaimbot = value
			end
		}
		
		RageBountySection:AddToggle{
			Name = "Aimbot Gun\nอิมบอทปืน",
			Flag = "Aimbot_Gun",
			Value = Aimbot,
			Callback  = function(value)
			Aimbot = value
			end
		}
		
		local gg = getrawmetatable(game)
		local old = gg.__namecall
		setreadonly(gg, false)
		gg.__namecall = newcclosure(function(...)
		local method = getnamecallmethod()
		local args = { ... }
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
		while task.wait() do
		for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				if v:FindFirstChild("RemoteFunctionShoot") then
					SelectToolWeaponGun = v.Name
				end
			end
		end
		for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				if v:FindFirstChild("RemoteFunctionShoot") then
					SelectToolWeaponGun = v.Name
				end
			end
		end
		end
		end)
		--[aimbot skill]
		task.spawn(function()
			while task.wait() do
			if Skillaimbot then
				if game.Players:FindFirstChild(Select_Player) and game.Players:FindFirstChild(Select_Player).Character:FindFirstChild("HumanoidRootPart") and game.Players:FindFirstChild(Select_Player).Character:FindFirstChild("Humanoid") and game.Players:FindFirstChild(Select_Player).Character.Humanoid.Health > 0 then
					AimBotSkillPosition = game.Players:FindFirstChild(Select_Player).Character:FindFirstChild("HumanoidRootPart").Position
				end
			end
			end
			end)
			--[aimbot gun]
			local lp = game:GetService('Players').LocalPlayer
			local mouse = lp:GetMouse()
			mouse.Button1Down:Connect(function()
			if Aimbot and game.Players.LocalPlayer.Character:FindFirstChild(SelectToolWeaponGun) and game:GetService("Players"):FindFirstChild(Select_Player) then
			tool = game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun]
			v17 = workspace:FindPartOnRayWithIgnoreList(Ray.new(tool.Handle.CFrame.p,(game:GetService("Players"):FindFirstChild(Select_Player).Character.HumanoidRootPart.Position - tool.Handle.CFrame.p).unit * 100), { game.Players.LocalPlayer.Character, workspace._WorldOrigin });
			game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(game:GetService("Players"):FindFirstChild(Select_Player).Character.HumanoidRootPart.Position,(require(game.ReplicatedStorage.Util).Other.hrpFromPart(v17)));
			end
			end)
	
	RageBountySection:AddToggle{
		Name = "Enabled PvP\nเปิดโหมดต่อสู้",
		Flag = "EnabledPvP",
		Value = _G.Settings.EnabledPvP,
		Callback  = function(value)
			_G.EnabledPvP = value
			_G.Settings.EnabledPvP = value
			SaveSettings()
		end
	}
	
	
	spawn(function()
		pcall(function()
			while wait() do
				if _G.EnabledPvP then
					if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
					end
				end
			end
		end)
	end)
	
	
	function isnil(thing)
		return (thing == nil)
		end
		local function round(n)
		return math.floor(tonumber(n) + 0.5)
		end
		Number = math.random(1, 1000000)
		function UpdatePlayerChams()
		for i, v in pairs(game:GetService 'Players':GetChildren()) do
		pcall(function()
			if not isnil(v.Character) then
				if ESPPlayer then
					if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp' .. Number) then
						local bill = Instance.new('BillboardGui', v.Character.Head)
						bill.Name = 'NameEsp' .. Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1, 200, 1, 30)
						bill.Adornee = v.Character.Head
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel', bill)
						name.Font = "Code"
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Text = (v.Name .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude / 3) .. ' M')
						name.Size = UDim2.new(1, 0, 1, 0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						if v.Team == game.Players.LocalPlayer.Team then
							name.TextColor3 = Color3.new(255, 0, 0)
						else
							name.TextColor3 = Color3.new(0, 0, 255)
						end
					else
						v.Character.Head['NameEsp' .. Number].TextLabel.Text = (v.Name .. ' | ' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude / 3) .. ' M\nHealth : ' .. round(v.Character.Humanoid.Health * 100 / v.Character.Humanoid.MaxHealth) .. '%')
					end
				else
					if v.Character.Head:FindFirstChild('NameEsp' .. Number) then
						v.Character.Head:FindFirstChild('NameEsp' .. Number):Destroy()
					end
				end
			end
		end)
		end
		end
		function UpdateSeaBeastsESP()
		for i, v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
		pcall(function()
			if SeaBeastsESP then
				if v.Name ~= "SeaBeast" then
					if not v:FindFirstChild('NameEsp') then
						local bill = Instance.new('BillboardGui', v)
						bill.Name = 'NameEsp'
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1, 200, 1, 30)
						bill.Adornee = v
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel', bill)
						name.Font = "Code"
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1, 0, 1, 0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(80, 245, 245)
					else
						v['NameEsp'].TextLabel.Text = (v.Name .. '   \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
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
		function UpdateIslandESP()
		for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
		pcall(function()
			if IslandESP then
				if v.Name ~= "Sea" then
					if not v:FindFirstChild('NameEsp') then
						local bill = Instance.new('BillboardGui', v)
						bill.Name = 'NameEsp'
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1, 200, 1, 30)
						bill.Adornee = v
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel', bill)
						name.Font = "Code"
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1, 0, 1, 0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(67, 186, 28)
					else
						v['NameEsp'].TextLabel.Text = (v.Name .. '   \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
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
		function UpdateChestEsp()
		for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
		pcall(function()
			if string.find(v.Name, "Chest") then
				if ChestESP then
					if string.find(v.Name, "Chest") then
						if not v:FindFirstChild('NameEsp' .. Number) then
							local bill = Instance.new('BillboardGui', v)
							bill.Name = 'NameEsp' .. Number
							bill.ExtentsOffset = Vector3.new(0, 1, 0)
							bill.Size = UDim2.new(1, 200, 1, 30)
							bill.Adornee = v
							bill.AlwaysOnTop = true
							local name = Instance.new('TextLabel', bill)
							name.Font = "Code"
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Size = UDim2.new(1, 0, 1, 0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							name.TextColor3 = Color3.fromRGB(186, 186, 28)
							if v.Name == "Chest1" then
								name.Text = ("Chest 1" .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
							end
							if v.Name == "Chest2" then
								name.Text = ("Chest 2" .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
							end
							if v.Name == "Chest3" then
								name.Text = ("Chest 3" .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
							end
						else
							v['NameEsp' .. Number].TextLabel.Text = (v.Name .. '   \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
						end
					end
				else
					if v:FindFirstChild('NameEsp' .. Number) then
						v:FindFirstChild('NameEsp' .. Number):Destroy()
					end
				end
			end
		end)
		end
		end
		function UpdateBfEsp()
		for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v.Name, "Fruit") then
					if not v.Handle:FindFirstChild('NameEsp' .. Number) then
						local bill = Instance.new('BillboardGui', v.Handle)
						bill.Name = 'NameEsp' .. Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1, 200, 1, 30)
						bill.Adornee = v.Handle
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel', bill)
						name.Font = "Code"
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1, 0, 1, 0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 255, 255)
						name.Text = (v.Name .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. ' M')
					else
						v.Handle['NameEsp' .. Number].TextLabel.Text = (v.Name .. '   \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. ' M')
					end
				end
			else
				if v.Handle:FindFirstChild('NameEsp' .. Number) then
					v.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
				end
			end
		end)
		end
		end
		function UpdateFlowerEsp()
		for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
		pcall(function()
			if v.Name == "Flower2" or v.Name == "Flower1" then
				if FlowerESP then
					if not v:FindFirstChild('NameEsp' .. Number) then
						local bill = Instance.new('BillboardGui', v)
						bill.Name = 'NameEsp' .. Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1, 200, 1, 30)
						bill.Adornee = v
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel', bill)
						name.Font = "Code"
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1, 0, 1, 0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 0, 0)
						if v.Name == "Flower1" then
							name.Text = ("Blue Flower" .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
							name.TextColor3 = Color3.fromRGB(0, 0, 255)
						end
						if v.Name == "Flower2" then
							name.Text = ("Red Flower" .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
							name.TextColor3 = Color3.fromRGB(255, 0, 0)
						end
					else
						v['NameEsp' .. Number].TextLabel.Text = (v.Name .. '   \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
					end
				else
					if v:FindFirstChild('NameEsp' .. Number) then
						v:FindFirstChild('NameEsp' .. Number):Destroy()
					end
				end
			end
		end)
		end
		end
		function UpdateRealFruitChams()
		for i, v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then
				if not v.Handle:FindFirstChild('NameEsp' .. Number) then
					local bill = Instance.new('BillboardGui', v.Handle)
					bill.Name = 'NameEsp' .. Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1, 200, 1, 30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel', bill)
					name.Font = "Code"
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1, 0, 1, 0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 0, 0)
					name.Text = (v.Name .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. ' M')
				else
					v.Handle['NameEsp' .. Number].TextLabel.Text = (v.Name .. ' ' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. ' M')
				end
			else
				if v.Handle:FindFirstChild('NameEsp' .. Number) then
					v.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
				end
			end
		end
		end
		for i, v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then
				if not v.Handle:FindFirstChild('NameEsp' .. Number) then
					local bill = Instance.new('BillboardGui', v.Handle)
					bill.Name = 'NameEsp' .. Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1, 200, 1, 30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel', bill)
					name.Font = "Code"
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1, 0, 1, 0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 174, 0)
					name.Text = (v.Name .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. ' M')
				else
					v.Handle['NameEsp' .. Number].TextLabel.Text = (v.Name .. ' ' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. ' M')
				end
			else
				if v.Handle:FindFirstChild('NameEsp' .. Number) then
					v.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
				end
			end
		end
		end
		for i, v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then
				if not v.Handle:FindFirstChild('NameEsp' .. Number) then
					local bill = Instance.new('BillboardGui', v.Handle)
					bill.Name = 'NameEsp' .. Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1, 200, 1, 30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel', bill)
					name.Font = "Code"
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1, 0, 1, 0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(251, 255, 0)
					name.Text = (v.Name .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. ' M')
				else
					v.Handle['NameEsp' .. Number].TextLabel.Text = (v.Name .. ' ' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. ' M')
				end
			else
				if v.Handle:FindFirstChild('NameEsp' .. Number) then
					v.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
				end
			end
		end
		end
		end
		function UpdatePlayerChams()
		for i, v in pairs(game:GetService 'Players':GetChildren()) do
		pcall(function()
			if not isnil(v.Character) then
				if ESPPlayer then
					if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp' .. Number) then
						local bill = Instance.new('BillboardGui', v.Character.Head)
						bill.Name = 'NameEsp' .. Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1, 200, 1, 30)
						bill.Adornee = v.Character.Head
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel', bill)
						name.Font = "Code"
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Text = (v.Name .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude / 3) .. ' M')
						name.Size = UDim2.new(1, 0, 1, 0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						if v.Team == game.Players.LocalPlayer.Team then
							name.TextColor3 = Color3.new(255, 0, 0)
						else
							name.TextColor3 = Color3.new(0, 0, 255)
						end
					else
						v.Character.Head['NameEsp' .. Number].TextLabel.Text = (v.Name .. ' | ' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude / 3) .. ' M\nHealth : ' .. round(v.Character.Humanoid.Health * 100 / v.Character.Humanoid.MaxHealth) .. '%')
					end
				else
					if v.Character.Head:FindFirstChild('NameEsp' .. Number) then
						v.Character.Head:FindFirstChild('NameEsp' .. Number):Destroy()
					end
				end
			end
		end)
		end
		end
	
		RageBountySection:AddToggle{
			Name = "ESPPlayer\nมองทะลุหาเพลย์เยอร์",
			Value = false,
			Callback  = function(value)
				ESPPlayer = value
				while ESPPlayer do
					task.wait()
					UpdatePlayerChams()
				end
				end}
				spawn(function()
				while task.wait() do
					if ESPPlayer then
						UpdatePlayerChams()
					end
				end
				end)
	
		RageBountySection:AddToggle{
			Name = "ESPChest\nมองทะลุหากล่อง",
			Value = false,
			Callback  = function(value)
				ChestESP = value
		while ChestESP do
			task.wait()
			UpdateChestEsp()
		end
	end}
	RageBountySection:AddToggle{
		Name = "ESPDevilFruit\nมองทะลุหาผลไม้ปีศาจ",
		Value = false,
		Callback  = function(value)
			DevilFruitESP = value
			while DevilFruitESP do
				task.wait()
				UpdateBfEsp()
			end
		end}		
		RageBountySection:AddToggle{
			Name = "ESPFlower\nมองทะลุหาดอกไม้",
			Value = false,
			Callback  = function(value)
				FlowerESP = value
		while FlowerESP do
			task.wait()
			UpdateFlowerEsp()
		end
	end}
	RageBountySection:AddToggle{
		Name = "ESPIsland\nมองทะลุหาเกาะ",
		Value = false,
		Callback  = function(value)
			IslandESP = value
			while IslandESP do
				task.wait()
				UpdateIslandESP()
			end
		end}

	local BossSection = MainTab:CreateSection({
		Name = "Boss",
		Side = "Right"
	})
	
	local Boss = {} 
	for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
		if string.find(v.Name, "Boss") or v.Name == NameBoss then
			if not v.Name == "Ice Admiral" then
				table.insert(Boss, v.Name)
			end
		end
	end
	
	local BossName = BossSection:AddDropdown({
		Name = "Select Boss\nเลือกบอส",
		Flag = "Select_Boss",
		List = Boss,
		Value = _G.Settings.Select_Boss,
		Callback = function(value)
			_G.Settings.Select_Boss = value
			SaveSettings()
		end
	})
	
	BossSection:AddButton({
		Name = "Refresh Boss\nรีเฟรชบอส",
		Callback = function()
			BossName:Clear()
			for _, v in pairs(game.ReplicatedStorage:GetChildren()) do
				local bossNames = {
					"Cyborg", "The Gorilla King", "Wysper", "Thunder God", "Mob Leader", "Bobby", "Saber Expert",
					"Warden", "Chief Warden", "Swan", "Magma Admiral", "Fishman Lord", "Wysper", "Ice Admiral",
					"Diamond", "Jeremy", "Fajita", "Don Swan", "Smoke Admiral", "Awakened Ice Admiral",
					"Tide Keeper", "Darkbeard", "Stone", "Island Empress", "Kilo Admiral", "Captain Elephant",
					"Beautiful Pirate", "Longma", "Cake Queen", "Greybeard", "Order", "Cursed Captain", "Soul Reaper",
					"Rip indra", "Mihawk Boss", "Cake Prince", "Dough King", "Cursed Skeleton Boss"
				}
				for _, bossName in ipairs(bossNames) do
					if string.find(v.Name, bossName) then
						table.insert(Boss, v.Name)
						BossName:Add(v.Name)
						break
					end
				end
			end
		end
	})
	
	

	BossSection:AddToggle{
		Name = "Auto Farm Boss\nออโต้ฟาร์มบอส",
		Flag = "Auto_Farm_Boss",
		Value = false,
		Callback  = function(value)
			_G.Auto_Farm_Boss = value
			_G.Settings.Auto_Farm_Boss = value
			SaveSettings()
			StopTween(_G.Auto_Farm_Boss)
			if value == false then
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			end
		end
	}
	
	BossSection:AddToggle{
		Name = "Auto Quest Boss\nออโต้รับเควสบอส",
		Flag = "Auto_Quest_Boss",
		Value = _G.Settings.Auto_Quest_Boss,
		Callback  = function(value)
			_G.Auto_Quest_Boss = value
			_G.Settings.Auto_Quest_Boss = value
			SaveSettings()
		end
	}
	
	spawn(function()
		while wait() do
			if _G.Auto_Farm_Boss then
				pcall(function()
					CheckBossQuest()
					if MsBoss == "Soul Reaper" or MsBoss == "Longma" or MsBoss == "Don Swan" or MsBoss == "Cursed Captain" or MsBoss == "Order" or MsBoss == "rip_indra True Form" then
						if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == MsBoss then
									repeat wait()
										EquipWeapon(_G.Select_Weapon)
										AutoHaki()
										getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									until _G.Auto_Farm_Boss == false or not v.Parent or v.Humanoid.Health <= 0
								end
							end
						else
							getgenv().ToTarget(CFrameBoss)
						end
					else
						if _G.Auto_Quest_Boss then
							CheckBossQuest()
							if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
							end
							if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
								repeat wait() getgenv().ToTarget(CFrameQuestBoss) until (CFrameQuestBoss.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_Farm_Boss
								if (CFrameQuestBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
									wait(1.1)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, LevelQuestBoss)
								end
							elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
								if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == MsBoss then
											repeat wait()
												EquipWeapon(_G.Select_Weapon)
												AutoHaki()
												getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
												v.HumanoidRootPart.CanCollide = false
												v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))									
											until _G.Auto_Farm_Boss == false or not v.Parent or v.Humanoid.Health <= 0
										end
									end
								else
									getgenv().ToTarget(CFrameBoss)
								end
							end
						else
							if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == MsBoss then
										repeat wait()
											EquipWeapon(_G.Select_Weapon)
											AutoHaki()
											getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))										
										until _G.Auto_Farm_Boss == false or not v.Parent or v.Humanoid.Health <= 0
									end
								end
							else
								getgenv().ToTarget(CFrameBoss)
							end
						end
					end
				end)
			end
		end
	end)
	
	BossSection:AddToggle{
		Name = "Auto Farm All Boss\nออโต้ฟาร์มบอสทั้งหมด",
		Flag = "Auto_Farm_All_Boss",
		Value = false,
		Callback  = function(value)
			_G.Auto_Farm_All_Boss = value
			_G.Settings.Auto_Farm_All_Boss = value
			SaveSettings()
			StopTween(_G.Auto_Farm_All_Boss)
			if value == false then
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			end
		end
	}
	
	spawn(function()
		while wait() do
			if _G.Auto_Farm_All_Boss then
				pcall(function()
					for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
						if string.find(v.Name,"Boss") then
							repeat task.wait()
								if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
									getgenv().ToTarget(v.HumanoidRootPart.CFrame)
								elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
									AutoHaki()
									EquipWeapon(_G.Select_Weapon)
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.Head.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(80,80,80)
									getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
								end
							until v.Humanoid.Health <= 0 or _G.Auto_Farm_All_Boss == false or not v.Parent
						end
					end
				end)
			end
		end
	end)

	local ItemsTab = PepsisWorld:CreateTab({
		Name = "Items"
	}) 
	if W3 then
	local HallowSythe = ItemsTab:CreateSection({
		Name = "Auto Hallow Scythe",
		Side = "Left"
	})
	HallowSythe:AddToggle({
		Name = "Auto Hallow Scythe",
		Flag = "Auto Hallow Scythe",
		Value = _G.Settings.AutoFarmBossHallow, 
		Callback = function(value)
			_G.AutoFarmBossHallow = value
			_G.Settings.AutoFarmBossHallow = value
			SaveSettings()
			StopTween(_G.AutoFarmBossHallow)
			if value == false then
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			end
		end})
            task.spawn(function()
                while task.wait() do
                    pcall(function()
                        if _G.AutoFarmBossHallow then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if string.find(v.Name , "Soul Reaper") then
                                        repeat task.wait()
                                            StartMagnet = true
                                            FastAttack = true
                                            if _G.AutoHaki then
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                end
                                            end
                                            EquipWeapon(_G.Select_Weapon)
                                            PosMon = v.HumanoidRootPart.CFrame
                                            if not _G.FastAttack then
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end
                                            v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                            v.HumanoidRootPart.CanCollide = false
                                            getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                        until v.Humanoid.Health <= 0 or not _G.AutoFarmBossHallow
                                        StartMagnet = false
                                        FastAttack = false
                                    end
                                end
                            else
                                getgenv().ToTarget(CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813))
                            end
                        end
                    end)
                end
            end)
			local AutoBuddySwords = ItemsTab:CreateSection({
				Name = "Auto Buddy Swords",
				Side = "Left"
			})
			AutoBuddySwords:AddToggle({
				Name = "Auto Buddy Swords",
				Flag = "Auto Buddy Swords",
				Value = _G.Settings.AutoBuddySwords, 
				Callback = function(value)
					_G.AutoBuddySwords = value
					_G.Settings.AutoBuddySwords = value
					SaveSettings()
					StopTween(_G.AutoBuddySwords)
					if value == false then
						toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
						getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					end
				end})
			
				task.spawn(function()
					while task.wait() do
						pcall(function()
							if _G.AutoBuddySwords then
								if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
									for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == ("Cake Queen" or v.Name == "Cake Queen") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
											repeat
												task.wait()
												StartMagnet = true
												FastAttack = true
												if _G.AutoHaki then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Select_Weapon) then
													task.wait()
													EquipWeapon(_G.Select_Weapon)
												end
												PosMon = v.HumanoidRootPart.CFrame
												if not _G.FastAttack then
													game:GetService 'VirtualUser':CaptureController()
													game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
												v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
												v.HumanoidRootPart.CanCollide = false
												getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
											until not _G.AutoBuddySwords or v.Humanoid.Health <= 0
											StartMagnet = false
											FastAttack = false
										end
									end
								end
							end 
						end)
					end
				end)
				local AutoCavander = ItemsTab:CreateSection({
					Name = "Auto Cavander Swords",
					Side = "Left"
				})
				AutoCavander:AddToggle({
					Name = "Auto Cavander Swords",
					Flag = "Auto Cavander Swords",
					Value = _G.Settings.AutoCavander, 
					Callback = function(value)
						_G.AutoCavander = value
						_G.Settings.AutoCavander = value
						SaveSettings()
						StopTween(_G.AutoCavander)
						if value == false then
							toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
							getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
						end
					end})
				task.spawn(function()
					while task.wait() do
						pcall(function()
							if _G.AutoCavander then
								if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
									for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == ("Beautiful Pirate") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
											repeat
												task.wait()
												StartMagnet = true
												FastAttack = true
												if _G.AutoHaki then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Select_Weapon) then
													task.wait()
													EquipWeapon(_G.Select_Weapon)
												end
												PosMon = v.HumanoidRootPart.CFrame
												if not _G.FastAttack then
													game:GetService 'VirtualUser':CaptureController()
													game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
												v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
												v.HumanoidRootPart.CanCollide = false
												getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
											until not _G.AutoCavander or v.Humanoid.Health <= 0
											StartMagnet = false
											FastAttack = false
										end
									end
								else
									toTarget(CFrame.new(5283.609375, 22.56223487854, -110.78285217285))
								end
							end
						end)
					end
				end)
					
		end -- เช็คโลก3
	if not W1 and not W2 then
	local rip_indra_Section = ItemsTab:CreateSection({
		Name = "Auto Rip Indar [Boss]\nออโต้ตีอินดรา",
		Side = "Left"
	})

	local Rip_Indar_All_Mon = {
		["Mon Quest"] = {"Diablo","Deandre","Urban"},
		["Boss"] = "rip_indra True Form",
		["Mon"] = {"Diablo","Deandre","Urban"},
		["Item"] = "God's Chalice",
	}

	rip_indra_Section:AddToggle({
		Name = "Auto Rip Indar [Boss] {Fully}\nออโต้ตีอินดรา{เต็มรูปแบบ}",
		Flag = "Auto Rip Indar [Boss] (Fully)",
		Value = _G.Settings.Auto_Rip_Indar,
		Callback = function(value)
			_G.Auto_Rip_Indar = value
			_G.Settings.Auto_Rip_Indar = value
			SaveSettings()
			StopTween(_G.Auto_Rip_Indar)
			if value == false then
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			end
		end
	})

	spawn(function()
		while wait() do
			pcall(function()
				if _G.Auto_Rip_Indar then
					local QuestUI = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
					for _,_l1 in next,Rip_Indar_All_Mon["Mon Quest"] do
						for _,l in next,Rip_Indar_All_Mon["Mon"] do
							if game:GetService("Workspace").Enemies:FindFirstChild(Rip_Indar_All_Mon["Boss"]) or game:GetService("ReplicatedStorage"):FindFirstChild(Rip_Indar_All_Mon["Boss"]) then
								for _,_v3 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if _v3.Name == Rip_Indar_All_Mon["Boss"] then
										if _v3:FindFirstChild("Humanoid") and _v3:FindFirstChild("HumanoidRootPart") and _v3.Humanoid.Health > 0 then
											repeat wait()
												EquipWeapon(_G.Select_Weapon)
												_v3.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
												getgenv().ToTarget(_v3.HumanoidRootPart.CFrame * MethodFarm)
												if (_v3.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
													_G.FastAttack = true
												end
											until not _G.Auto_Rip_Indar or _v3.Humanoid.Health <= 0 or not _v3.Parent or _v3.Humanoid.Health <= 0
										end
									else
										if game:GetService("ReplicatedStorage"):FindFirstChild(Rip_Indar_All_Mon["Boss"]) then
											getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Rip_Indar_All_Mon["Boss"]).HumanoidRootPart.CFrame * MethodFarm)
										else
											EquipWeapon(Rip_Indar_All_Mon["Item"])
											getgenv().ToTarget(CFrame.new(-5561.09033, 314.179657, -2663.16919, -0.347872645, -0.00166249205, 0.937540352, -0.000768713537, 0.999998569, 0.00148801634, -0.937541485, -0.000203059797, -0.34787342))
										end
									end
								end
							else
								if game.Players.LocalPlayer.Backpack:FindFirstChild(Rip_Indar_All_Mon["Item"]) or game.Players.LocalPlayer.Character:FindFirstChild(Rip_Indar_All_Mon["Item"]) then
									for _, _v_1 in pairs(workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
										if _v_1:IsA("Part") then
											if _v_1.Color == Color3.fromRGB(187, 187, 187) then
												_v_1.Name = "W1"
											elseif _v_1.Color == Color3.fromRGB(255, 0, 0) then
												_v_1.Name = "R2"
											elseif _v_1.Color == Color3.fromRGB(255, 0, 191) then
												_v_1.Name = "P3"
											end
										end
									end
									for _, _v2 in pairs(workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
										if _v2:IsA("Part") then
											if _v2.Name == "W1" and _v2.Part.BrickColor == BrickColor.new("Dark stone grey") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Snow White")
												wait(0.5)
												repeat wait()
													getgenv().ToTarget(_v2.CFrame)
												until (_v2.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2 or not _G.Auto_Rip_Indar
												wait(0.5)
											elseif _v2.Name == "R2" and _v2.Part.BrickColor == BrickColor.new("Dark stone grey") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Pure Red")
												wait(0.5)
												repeat wait()
													getgenv().ToTarget(_v2.CFrame)
												until (_v2.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2 or not _G.Auto_Rip_Indar
												wait(0.5)
											elseif _v2.Name == "P3" and _v2.Part.BrickColor == BrickColor.new("Dark stone grey") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Winter Sky")
												wait(0.5)
												repeat wait()
													getgenv().ToTarget(_v2.CFrame)
												until (_v2.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2 or not _G.Auto_Rip_Indar
												wait(0.5)
											else
												for _, _v2 in pairs(workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
													if _v2:IsA("Part") then
														if _v2.Name == "W1" and _v2.Part.BrickColor == BrickColor.new("Dark stone grey") then
															_G.Part1 = false
														else
															_G.Part1 = true
														end
														if _v2.Name == "R2" and _v2.Part.BrickColor == BrickColor.new("Dark stone grey") then
															_G.Part2 = false
														else
															_G.Part2 = true
														end
														if _v2.Name == "P3" and _v2.Part.BrickColor == BrickColor.new("Dark stone grey") then
															_G.Part3 = false
														else
															_G.Part3 = true
														end
													end
												end
											end
										end
									end
								else
									if QuestUI.Visible == true then
										if game:GetService("Workspace").Enemies:FindFirstChild(_l1) or game:GetService("ReplicatedStorage"):FindFirstChild(_l1) then
											for _,_1 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
												if _1.Name == _l1 then
													if _1:FindFirstChild("Humanoid") and _1:FindFirstChild("HumanoidRootPart") and _1.Humanoid.Health > 0 then
														repeat wait()
															EquipWeapon(_G.Select_Weapon)
															_1.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
															getgenv().ToTarget(_1.HumanoidRootPart.CFrame * MethodFarm)
															if (_1.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
																_G.FastAttack = true
															end
														until _1.Humanoid.Health <= 0 or not _1.Parent or not game:GetService("Workspace").Enemies:FindFirstChild(l) or not game:GetService("ReplicatedStorage"):FindFirstChild(l) or not _G.Auto_Rip_Indar
													end
												else
													if _G.Bypass_TP then
														if (game:GetService("ReplicatedStorage"):FindFirstChild(_l1).HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
															repeat wait()
																Bypass(game:GetService("ReplicatedStorage"):FindFirstChild(_l1).HumanoidRootPart.CFrame * MethodFarm)
															until not _G.Auto_Rip_Indar
														end
													end
													if game:GetService("ReplicatedStorage"):FindFirstChild(_l1) then
														getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(_l1).HumanoidRootPart.CFrame * MethodFarm)
													end
												end
											end
										end
									else
										if game.Players.LocalPlayer.Backpack:FindFirstChild(Rip_Indar_All_Mon["Item"]) or game.Players.LocalPlayer.Character:FindFirstChild(Rip_Indar_All_Mon["Item"]) then
											return
										else
											if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later." and not ( game:GetService("Workspace").Enemies:FindFirstChild(_l1) or game:GetService("ReplicatedStorage"):FindFirstChild(_l1) ) then
												print("Hop")
												_G.Rejoin = false
												wait(0.5)
												Hop()
											else
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
											end
										end
									end
								end
							end
						end
					end
				end
			end)
		end
	end)
end
	

	if W1 then
		local SaberSection = ItemsTab:CreateSection({
			Name = "Saber",
			Side = "Left"
		})
		
		SaberSection:AddToggle{
			Name = "Auto Saber\nออโต้หาดาบแชงค์",
			Flag = "Auto_Saber",
			Value = _G.Settings.Auto_Saber,
			Callback  = function(value)
				_G.Auto_Saber = value
				_G.Settings.Auto_Saber = value
				SaveSettings()
				StopTween(_G.Auto_Saber)
				if value == false then
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				end
			end
		}
		
		SaberSection:AddToggle{
			Name = "Auto Saber {Hop}\nออโต้หาดาบแชงค์{ย้ายเซิฟ}",
			Flag = "Auto_Saber_Hop",
			Value = _G.Settings.Auto_Saber_Hop,
			Callback  = function(value)
				_G.Auto_Saber_Hop = value
				_G.Settings.Auto_Saber_Hop = value
				SaveSettings()
			end
		}
		
		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.Auto_Saber and game.Players.LocalPlayer.Data.Level.Value >= 200 and Check_Sword("Saber") == nil and W1 then
						_G.Auto_Farm_Level = false
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
						if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
							if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
								if (CFrame.new(-1480.06018, 47.9773636, 4.53454018, -0.386713833, 1.11673025e-07, 0.922199786, 7.96717785e-08, 1, -8.76847395e-08, -0.922199786, 3.95643944e-08, -0.386713833).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
									getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
									task.wait(1)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
									task.wait(1)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
									task.wait(1)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
									task.wait(1)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
									task.wait(1)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
									task.wait(1) 
								end
							local CFrameSaber = CFrame.new(-1480.06018, 47.9773636, 4.53454018, -0.386713833, 1.11673025e-07, 0.922199786, 7.96717785e-08, 1, -8.76847395e-08, -0.922199786, 3.95643944e-08, -0.386713833)
							if _G.Auto_Farm_Level and _G.Auto_Saber and (CFrameSaber.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1200 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
								getgenv().ToTarget(CFrameSaber)
							end
							getgenv().ToTarget(CFrameSaber)
						else
							if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
								if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
									EquipWeapon("Torch")
									getgenv().ToTarget(CFrame.new(1113.7229, 5.04679585, 4350.33691, -0.541527212, 5.27007726e-09, 0.840683222, 8.74004868e-08, 1, 5.00303372e-08, -0.840683222, 1.00568911e-07, -0.541527212))
									UnEquipWeapon("Torch")
									EquipWeapon("Torch")
									task.wait(0.5)
								else
									getgenv().ToTarget(CFrame.new(-1610.56824, 12.1773882, 162.830322, -0.907543361, -2.88120088e-08, -0.419958383, -4.66550922e-08, 1, 3.22163096e-08, 0.419958383, 4.88308949e-08, -0.907543361))                 
								end
							else
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
									task.wait(0.5)
									EquipWeapon("Cup")
									task.wait(0.5)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",game:GetService("Players").LocalPlayer.Character.Cup)
									task.wait(0)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") 
								else
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == nil then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
									elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
										if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
											for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
												if v.Name == "Mob Leader" then
													if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
														repeat task.wait()
															EquipWeapon(_G.Select_Weapon)
															v.HumanoidRootPart.CanCollide = false
															v.Humanoid.WalkSpeed = 0
															v.Head.CanCollide = false
															v.HumanoidRootPart.Size = Vector3.new(100,100,100)
															v.HumanoidRootPart.Transparency = 1
															EquipWeapon(_G.Select_Weapon)
															getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
															if not _G.FastAttack or not _G.FastAttackO or _G.FastAttack or _G.FastAttackO or _G.SuperFastAttack then game:GetService'VirtualUser':CaptureController() game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672)) end
														until v.Humanoid.Health <= 0 or _G.AutoSaber == false
													end
												end
											end
											for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
												if v.Name == "Mob Leader" then
													if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
														getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
													end
												else
													if _G.Auto_Saber_Hop then
														wait(2.5)
														Hop()
													end
												end
											end		
										end
									elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
										task.wait(0.5)
										EquipWeapon("Relic")
										task.wait(0.5)
										getgenv().ToTarget(CFrame.new(-1406.37512, 29.9773273, 4.45027685, 0.877344251, -3.82776442e-08, 0.479861468, 4.93218133e-09, 1, 7.07504668e-08, -0.479861468, -5.9705755e-08, 0.877344251))
									end
								end
							end
						end
						else
							if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Saber Expert" then
										repeat task.wait()
											EquipWeapon(_G.Select_Weapon)
											v.HumanoidRootPart.Size = Vector3.new(60,60,60)
											v.HumanoidRootPart.Transparency = 1
											getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
											if not _G.FastAttack or not _G.FastAttackO or _G.FastAttack or _G.FastAttackO or _G.SuperFastAttack then game:GetService'VirtualUser':CaptureController() game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672)) end
										until v.Humanoid.Health <= 0 or _G.AutoSaber == false
										_G.Auto_Saber = false
										if _G.Settings.Auto_Farm_Level then
											_G.Auto_Farm_Level = true
										end
										if v.Humanoid.Health <= 0 then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic")
										end
									end
								end
							else 
								if _G.Auto_Saber_Hop then
									wait(5)
									Hop()
								end
							end
						end
					end
				end)
			end
		end)
		
		local PoleSection = ItemsTab:CreateSection({
			Name = "Pole V1",
			Side = "Left"
		})
		
		PoleSection:AddToggle{
			Name = "Auto Pole V1\nออโต้หากระบองเอเนลขั้นหนึ่ง",
			Flag = "Auto_Pole_V1",
			Value = _G.Settings.Auto_Pole,
			Callback  = function(value)
				_G.Auto_Pole = value
				_G.Settings.Auto_Pole = value
				SaveSettings()
				StopTween(_G.Auto_Pole)
				if value == false then
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				end
			end
		}
		
		PoleSection:AddToggle{
			Name = "Auto Pole V1 {Hop}\nออโต้หากระบองเอเนลขั้นหนึ่ง{ย้ายเซิฟ}",
			Flag = "Auto_Pole_V1_Hop",
			Value = _G.Settings.Auto_Pole_V1_Hop,
			Callback  = function(value)
				_G.Auto_Pole_Hop = value
				_G.Settings.Auto_Pole_V1_Hop = value
				SaveSettings()
			end
		}
		
		spawn(function()
			while wait() do
				pcall(function()
					if _G.Auto_Pole and game.ReplicatedStorage:FindFirstChild("Thunder God") or game.Workspace.Enemies:FindFirstChild("Thunder God") then
						if game.Workspace.Enemies:FindFirstChild("Thunder God") then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if _G.Auto_Pole and v.Name == "Thunder God" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
									repeat wait()  
										AutoHaki()
										EquipWeapon(_G.Select_Weapon)
										getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									until not _G.Auto_Pole or v.Humanoid.Health <= 0 or not v.Parent
								end
							end
						else
							if _G.Auto_Pole_Hop then
								wait(2.5)
								Hop()
							end
							getgenv().ToTarget(CFrame.new(-7900.66406, 5606.90918, -2267.46436))
						end
					else
						if _G.Auto_Pole_Hop then
							wait(5)
							Hop()
						end
					end
				end)
			end
		end)
	end
	if W2 then
		local FactorySection = ItemsTab:CreateSection({
			Name = "Factory",
			Side = "Left"
		})
		
		FactorySection:AddToggle{
			Name = "Auto Factory Farm\nออโต้ตีโรงงาน",
			Flag = "Auto_Factory_Farm",
			Value = _G.Settings.Auto_Factory_Farm,
			Callback  = function(value)
				_G.Auto_Factory_Farm = value
				_G.Settings.Auto_Factory_Farm = value
				SaveSettings()
				StopTween(_G.Auto_Factory_Farm)
				if value == false then
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				end
			end
		}
		spawn(function()
			while wait() do
				if _G.Auto_Factory_Farm then
					pcall(function()
						if game.Workspace.Enemies:FindFirstChild("Core") then
							_G.FactoryCore = true
							_G.Auto_Farm_Level = false
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if _G.FactoryCore and v.Name == "Core" and v.Humanoid.Health > 0 then
									repeat wait()
										AutoHaki()
										EquipWeapon(_G.Select_Weapon)
										getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									until not _G.FactoryCore or v.Humanoid.Health <= 0 or _G.Auto_Factory_Farm == false
								end
							end
						elseif game.ReplicatedStorage:FindFirstChild("Core") and game.ReplicatedStorage:FindFirstChild("Core"):FindFirstChild("Humanoid") then
							getgenv().ToTarget(CFrame.new(502.7349853515625, 143.0749053955078, -379.078125))
						end
					end)
				end
			end
		end)
		
		local EctoplasmSection = ItemsTab:CreateSection({
			Name =  "Ectoplasm",
			Side = "Left"
		})
		
		EctoplasmSection:AddToggle{
			Name = "Auto Farm Ectoplasm\nออโต้ฟาร์มเอ็กโตพลาสซึม",
			Flag = "Auto_Farm_Ectoplasm",
			Value = _G.Settings.Auto_Farm_Ectoplasm,
			Callback  = function(value)
				_G.Auto_Farm_Ectoplasm = value
				_G.Settings.Auto_Farm_Ectoplasm = value
				SaveSettings()
				StopTween(_G.Auto_Farm_Ectoplasm)
				if value == false then
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				end
			end
		}
		
		spawn(function()
			game:GetService("RunService").Heartbeat:Connect(function()
				pcall(function()
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if _G.Auto_Farm_Ectoplasm and MagnetEctoplasm and string.find(v.Name, "Ship") and (v.HumanoidRootPart.Position - PosMonEctoplasm.Position).magnitude <= 350 then
							v.HumanoidRootPart.CFrame = PosMonEctoplasm
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
				if _G.Auto_Farm_Ectoplasm then
					pcall(function()
						if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if string.find(v.Name, "Ship") then
									repeat wait()
										AutoHaki()
										EquipWeapon(_G.Select_Weapon)
										PosMonEctoplasm = v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
										MagnetEctoplasm = true
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									until _G.Auto_Farm_Ectoplasm == false or not v.Parent or v.Humanoid.Health <= 0
									MagnetEctoplasm = false
								else
									MagnetEctoplasm = false
									getgenv().ToTarget(CFrame.new(904.4072265625, 181.05767822266, 33341.38671875))
								end
							end
						else 
							MagnetEctoplasm = false
							local Distance = (Vector3.new(904.4072265625, 181.05767822266, 33341.38671875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
							if Distance > 20000 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
							end
							getgenv().ToTarget(CFrame.new(904.4072265625, 181.05767822266, 33341.38671875))
						end
					end)
				end
			end
		end)
		
		if W2 then

			local SeaKingSection = ItemsTab:CreateSection({
				Name =  "Sea Beast",
				Side = "Left"
			})

			SeaKingSection:AddToggle{
				Name = "Auto Sea Beast\nออโต้ตีเจ้าทะเล",
				Value = _G.Settings.Auto_Sea_King,
				Callback  = function(value)
					_G.Auto_Sea_King = value
					_G.Settings.Auto_Sea_King = value
					SaveSettings()
					StopTween(_G.Auto_Sea_King)
					if value == false then
						toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
						getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					end
				end
			}

			local Sea_king_CFrame = {
				[1] = CFrame.new(210.99585, 12.9606171, 4158.57959, -0.917689145, 7.58163254e-11, -0.39729917, 1.20923558e-11, 1, 1.62898153e-10, 0.39729917, 1.44685583e-10, -0.917689145),
				[2] = ""
			}

			--Darkbeard [Lv. 1000] [Raid Boss]]
			--Fist of Darkness
			spawn(function()
				while wait() do
					pcall(function()
						if _G.Auto_Sea_King then
							if workspace.SeaBeasts:FindFirstChild("SeaBeast1") then
								getgenv().ToTarget(workspace.SeaBeasts:FindFirstChild("SeaBeast1").HumanoidRootPart.CFrame * CFrame.new(0,460,0))
								for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
									if v.ToolTip == "Sword" then
										if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
											EquipWeapon(v.Name)
										end
									end
								end
								game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
								game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
								wait(0.2)
								game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
								game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
								for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
									if v.ToolTip == "Blox Fruit" then
										if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
											EquipWeapon(v.Name)
										end
									end
								end
								game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
								game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
								wait(0.2)
								game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
								game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
								wait(0.2)
								game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
								game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
								wait(0.2)
								game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
								game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
								wait(0.2)
							end
						end
					end)
				end
			end)

			local DackCoatSection = ItemsTab:CreateSection({
				Name = "Dack Coat",
				Side = "Left"
			})

			DackCoatSection:AddDropdown({
				Name = "Select Mode\nเลือกโหมด",
				Flag = "Select_Mode",
				List = {"Chest","Sea Beast"},
				Value = _G.Settings.Select_Mode,
				Callback = function(value)
					_G.Select_Mode = value
					_G.Settings.Select_Mode = value
					SaveSettings()
				end
			})

			DackCoatSection:AddToggle{
				Name = "Auto Dack Coat\nออโต้หาผ้าคลุมหนวดดำ",
				Value = _G.Settings.Auto_Dack_Coat,
				Callback  = function(value)
					_G.Auto_Dack_Coat = value
					_G.Settings.Auto_Dack_Coat = value
					SaveSettings()
					StopTween(_G.Auto_Dack_Coat)
					if value == false then
						toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
						getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					end
				end
			}

			task.spawn(function()
				while task.wait() do
					pcall(function()
							if _G.Auto_Dack_Coat then
								if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard") then
									for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == ("Darkbeard" or v.Name == "Darkbeard") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart")
										 then
											repeat
												task.wait()
												StartMagnet = true
												FastAttack = true
												if _G.AutoHaki then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Select_Weapon) then
													task.wait()
													EquipWeapon(_G.Select_Weapon)
												end
												PosMon = v.HumanoidRootPart.CFrame
												if not _G.FastAttack then
													game:GetService "VirtualUser":CaptureController()
													game:GetService "VirtualUser":Button1Down(Vector2.new(1280, 672))
												end
												v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
												v.HumanoidRootPart.CanCollide = false
												toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
											until _G.Auto_Dack_Coat == false or v.Humanoid.Health <= 0
											StartMagnet = false
											FastAttack = false
										end
									end
								else
									toTarget(CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531))
								end
							end
						end)
					end
			end)
		end
		local SwanGlassesSection = ItemsTab:CreateSection({
			Name = "👓 Swan Glasses 👓",
			Side = "Left"
		})
		
		SwanGlassesSection:AddToggle{
			Name = "Auto Swan Glasses\nออหาโต้แว่นโดฟามิงโก้",
			Flag = "Auto_Swan_Glasses",
			Value = _G.Settings.Auto_Swan_Glasses,
			Callback  = function(value)
				_G.Auto_Swan_Glasses = value
				_G.Settings.Auto_Swan_Glasses = value
				SaveSettings()
				StopTween(_G.Auto_Swan_Glasses)
				if value == false then
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				end
			end
		}
		
		SwanGlassesSection:AddToggle{
			Name = "Auto Swan Glasses Hop",
			Flag = "Auto_Swan_Glasses_Hop",
			Value = _G.Settings.Auto_Swan_Glasses_Hop,
			Callback  = function(value)
				_G.Auto_Swan_Glasses_Hop = value
				_G.Settings.Auto_Swan_Glasses_Hop = value
				SaveSettings()
				StopTween(_G.Auto_Swan_Glasses_Hop)
				if value == false then
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				end
			end
		}
		
		spawn(function()
			while wait() do
				pcall(function()
					if _G.Auto_Swan_Glasses and game.ReplicatedStorage:FindFirstChild("Don Swan") or game.Workspace.Enemies:FindFirstChild("Don Swan") then
						if game.Workspace.Enemies:FindFirstChild("Don Swan") then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if _G.Auto_Swan_Glasses and v.Name == "Don Swan" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
									repeat wait()  
										EquipWeapon(_G.Select_Weapon)
										AutoHaki()
										getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									until not _G.Auto_Swan_Glasses or v.Humanoid.Health <= 0 or not v.Parent
								end
							end
						else
							getgenv().ToTarget(CFrame.new(2289.47900390625, 15.152046203613281, 739.512939453125))
						end
					else
						if _G.Auto_Swan_Glasses_Hop then
							Hop()
						end
					end
				end)
			end
		end)
		
	end
	local RainbowHakiSection = ItemsTab:CreateSection({
		Name = "Rainbow Haki",
		Side = "Left"
	})
	
	RainbowHakiSection:AddToggle{
		Name = "Auto Rainbow Haki\nออโต้หาฮาคิสีรุ้ง",
		Flag = "Auto_Rainbow_Haki",
		Value = _G.Settings.Auto_Rainbow_Haki,
		Callback  = function(value)
			_G.Auto_Rainbow_Haki = value
			_G.Settings.Auto_Rainbow_Haki = value
			SaveSettings()
			StopTween(_G.Auto_Rainbow_Haki)
			if value == false then
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			end
		end
	}
	
	RainbowHakiSection:AddToggle{
		Name = "Auto Rainbow Haki {Hop}\nออโต้หาฮาคิสีรุ้ง{ย้ายเซิฟ}",
		Flag = "Auto_Rainbow_Haki_Hop",
		Value = _G.Settings.Auto_Rainbow_Haki_Hop,
		Callback  = function(value)
			_G.Auto_Rainbow_Haki_Hop = value
			_G.Settings.Auto_Rainbow_Haki_Hop = value
			SaveSettings()
			StopTween(_G.Auto_Rainbow_Haki_Hop)
			if value == false then
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			end
		end
	}
	
	spawn(function()
		pcall(function()
			while wait() do
				if _G.Auto_Rainbow_Haki then
					if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
					elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
						if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Stone") or game.Workspace.Enemies:FindFirstChild("Stone") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Stone") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Stone" then
										OldCFrameRainbow = v.HumanoidRootPart.CFrame
										repeat wait()
											AutoHaki()
											EquipWeapon(_G.Select_Weapon)
											getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.CFrame = OldCFrameRainbow
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
										until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
									end
								end
							else
								getgenv().ToTarget(CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 2.03251839e-05, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199))
							end
						else
							if _G.Auto_Rainbow_Haki_Hop then
								wait(5)
								Hop()
							end
						end
					elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then
						if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Island Empress") or game.Workspace.Enemies:FindFirstChild("Island Empress") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Island Empress" then
										OldCFrameRainbow = v.HumanoidRootPart.CFrame
										repeat wait()
											AutoHaki()
											EquipWeapon(_G.Select_Weapon)
											getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.CFrame = OldCFrameRainbow
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
										until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
									end
								end
							else
								getgenv().ToTarget(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, -0, -0.994878292, -0, 1, -0, 0.994878292, 0, -0.101080291))
							end
						else
							if _G.Auto_Rainbow_Haki_Hop then
								wait(5)
								Hop()
							end
						end
					elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
						if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Kilo Admiral") or game.Workspace.Enemies:FindFirstChild("Kilo Admiral") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Kilo Admiral" then
										OldCFrameRainbow = v.HumanoidRootPart.CFrame
										repeat wait()
											AutoHaki()
											EquipWeapon(_G.Select_Weapon)
											getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											v.HumanoidRootPart.CFrame = OldCFrameRainbow
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
										until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
									end
								end
							else
								getgenv().ToTarget(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, -0, -0.143904909, -0, 1.00000012, -0, 0.143904924, 0, -0.989591479))
							end
						else
							if _G.Auto_Rainbow_Haki_Hop then
								wait(5)
								Hop()
							end
						end
					elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
						if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Captain Elephant") or game.Workspace.Enemies:FindFirstChild("Captain Elephant") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Captain Elephant" then
										OldCFrameRainbow = v.HumanoidRootPart.CFrame
										repeat wait()
											AutoHaki()
											EquipWeapon(_G.Select_Weapon)
											getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											v.HumanoidRootPart.CFrame = OldCFrameRainbow
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
										until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
									end
								end
							else
								getgenv().ToTarget(CFrame.new(-13485.0283, 331.709259, -8012.4873, 0.714521289, 7.98849911e-08, 0.69961375, -1.02065748e-07, 1, -9.94383065e-09, -0.69961375, -6.43015241e-08, 0.714521289))
							end
						else 
							if _G.Auto_Rainbow_Haki_Hop then
								wait(5)
								Hop()
							end
						end
					elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
						if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Beautiful Pirate") or game.Workspace.Enemies:FindFirstChild("Beautiful Pirate") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Beautiful Pirate"then 
										OldCFrameRainbow = v.HumanoidRootPart.CFrame
										repeat wait()
											AutoHaki()
											EquipWeapon(_G.Select_Weapon)
											getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											v.HumanoidRootPart.CFrame = OldCFrameRainbow
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
										until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
									end
								end
							else
								getgenv().ToTarget(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359))
							end
						else 
							if _G.Auto_Rainbow_Haki_Hop then
								wait(5)
								Hop()
							end
						end
					else
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
					end
				end
			end
		end)
	end)
	
	if not W1 then
		MisccSection = ItemsTab:CreateSection({
			Name = "Other",
			Side = "Left"
		})
	end
	
	if W2 then
	
		MisccSection:AddToggle{
			Name = "Auto Evo Race [V2]\nออโต้อีโวเผ่าขั้นสอง",
			Flag = "Auto_Evo_Race_V2",
			Value = _G.Settings.Auto_Evo_Race_V2,
			Callback  = function(value)
				_G.Auto_Evo_Race_V2 = value
				_G.Settings.Auto_Evo_Race_V2 = value
				SaveSettings()
				StopTween(_G.Auto_Evo_Race_V2)
				if value == false then
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				end
			end
		}
	
		spawn(function()
			game:GetService("RunService").Heartbeat:Connect(function()
				pcall(function()
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if _G.Auto_Evo_Race_V2 and StartEvoMagnet and v.Name == "Swan Pirate" and (v.HumanoidRootPart.Position - PosMonEvo.Position).magnitude <= 350 then
							v.HumanoidRootPart.CFrame = PosMonEvo
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
			pcall(function()
				while wait() do
					if _G.Auto_Evo_Race_V2 then
						if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
								getgenv().ToTarget(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.39014104e-08, -0.68292886, 3.59963224e-08, 1, 5.50667032e-08, 0.68292886, 1.56424669e-08, -0.730484903))
								if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
									wait(1.3)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
								end
							elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
								pcall(function()
									if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
										getgenv().ToTarget(game:GetService("Workspace").Flower1.CFrame)
									elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
										getgenv().ToTarget(game:GetService("Workspace").Flower2.CFrame)
									elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
										if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
											for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
												if v.Name == "Swan Pirate" then
													repeat wait()
														AutoHaki()
														EquipWeapon(_G.Select_Weapon)
														getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
														v.HumanoidRootPart.CanCollide = false
														v.HumanoidRootPart.Size = Vector3.new(50,50,50)
														game:GetService'VirtualUser':CaptureController()
														game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
														PosMonEvo = v.HumanoidRootPart.CFrame
														StartEvoMagnet = true
													until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_Evo_Race_V2 == false
													StartEvoMagnet = false
												end
											end
										else
											StartEvoMagnet = false
											getgenv().ToTarget(CFrame.new(980.0985107421875, 121.331298828125, 1287.2093505859375))
										end
									end
								end)
							elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
							end
						end
					end
				end
			end)
		end)
	end
	
	if W2 then
		MisccSection:AddToggle({
			Name = "Auto Bartilo Quest\nออโต้ทำเควสบาโธโลมีโอ",
			Flag = "Auto_Bartilo_Quest",
			Value = _G.Settings.Auto_Bartilo_Quest,
			Callback  = function(value)
				_G.Auto_Bartilo_Quest = value
				_G.Settings.Auto_Bartilo_Quest = value
				SaveSettings()
				StopTween(_G.Auto_Bartilo_Quest)
				if value == false then
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				end
			end
		})
	
		spawn(function()
			while true do wait()
				if setscriptable then
					setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
				end
				if sethiddenproperty then
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
				end
			end
		end)
		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.BringNormal and BringMobFarm then
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 200 then
								if InMyNetWork(v.HumanoidRootPart) then
									v.HumanoidRootPart.CFrame = PosMon
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									v.HumanoidRootPart.Transparency = 1
									v.HumanoidRootPart.CanCollide = false
									v.Head.CanCollide = false
									v.Humanoid:ChangeState(11)
									v.Humanoid:ChangeState(14)
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
								end
							end
						end
					end
				end)
			end
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
	
		spawn(function()
			while wait() do
			local MyLevel = game.Players.LocalPlayer.Data.Level.Value
			local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
				pcall(function()
					if _G.Auto_Bartilo_Quest and MyLevel >= 850 then
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
							_G.Auto_Farm_Level = false
							if QuestC.Visible == true then
								if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Swan Pirate" then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
												repeat task.wait()
													if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirate") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
													else
														PosMon = v.HumanoidRootPart.CFrame
														v.HumanoidRootPart.Size = Vector3.new(60,60,60)
														v.HumanoidRootPart.CanCollide = false
														v.Humanoid.WalkSpeed = 0
														v.Head.CanCollide = false
														BringMobFarm = true
														EquipWeapon(_G.Select_Weapon)
														v.HumanoidRootPart.Transparency = 1
														getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
		
														if not _G.FastAttack or not _G.FastAttackO or _G.FastAttack or _G.FastAttackO then
															_G.FastAttack = true
														end
													end
												until not _G.Auto_Bartilo_Quest or not v.Parent or v.Humanoid.Health <= 0 or QuestC.Visible == false or not v:FindFirstChild("HumanoidRootPart")
											end
										end
									end
								else
									BringMobFarm = false
									for i,v in pairs(workspace._WorldOrigin.EnemySpawns:GetChildren()) do
										if v.Name == "Swan Pirate" then local CFrameEnemySpawns = v.CFrame  wait(0.5)
											getgenv().ToTarget(CFrameEnemySpawns * MethodFarm)
										end
									end
								end
							else
								repeat wait() getgenv().ToTarget(CFrame.new(-461.533203, 72.3478546, 300.311096, 0.050853312, -0, -0.998706102, 0, 1, -0, 0.998706102, 0, 0.050853312)) until (CFrame.new(-461.533203, 72.3478546, 300.311096, 0.050853312, -0, -0.998706102, 0, 1, -0, 0.998706102, 0, 0.050853312).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 or not _G.Auto_Bartilo_Quest
								if (CFrame.new(-461.533203, 72.3478546, 300.311096, 0.050853312, -0, -0.998706102, 0, 1, -0, 0.998706102, 0, 0.050853312).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
									BringMobFarm = false
									game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer("StartQuest", "BartiloQuest", 1)
								end
							end
						elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
							_G.Auto_Farm_Level = false
							if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Jeremy" then
										if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
											repeat task.wait()
												PosMon = v.HumanoidRootPart.CFrame
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid.WalkSpeed = 0
												v.Head.CanCollide = false
												BringMobFarm = true
												EquipWeapon(_G.Select_Weapon)
												v.HumanoidRootPart.Transparency = 1
												getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
		
												if not _G.FastAttack or not _G.FastAttackO or _G.FastAttack or _G.FastAttackO then
													_G.FastAttack = true
												end
											until not _G.Auto_Bartilo_Quest or not v.Parent or v.Humanoid.Health <= 0 or QuestC.Visible == false or not v:FindFirstChild("HumanoidRootPart")
										end
									end
								end
							else
								getgenv().ToTarget(CFrame.new(2158.97412, 449.056244, 705.411682, -0.754199564, -4.17389057e-09, -0.656645238, -4.47752875e-08, 1, 4.50709301e-08, 0.656645238, 6.3393955e-08, -0.754199564))
							end
						elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
							repeat wait() getgenv().ToTarget(CFrame.new(-1830.83972, 10.5578213, 1680.60229, 0.979988456, -2.02152783e-08, -0.199054286, 2.20792113e-08, 1, 7.1442483e-09, 0.199054286, -1.13962431e-08, 0.979988456)) until (CFrame.new(-1830.83972, 10.5578213, 1680.60229, 0.979988456, -2.02152783e-08, -0.199054286, 2.20792113e-08, 1, 7.1442483e-09, 0.199054286, -1.13962431e-08, 0.979988456).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 or _G.Auto_Bartilo_Quest == false
							wait(0.7)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate1.CFrame
							wait(0.7)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate2.CFrame
							wait(0.7)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate3.CFrame
							wait(0.7)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate4.CFrame
							wait(0.7)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate5.CFrame
							wait(0.7)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate6.CFrame
							wait(0.7)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate7.CFrame
							wait(0.7)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate8.CFrame
							wait(2.5)
						end
					end
				end)
			end
		end)
	end
	
	if W2 then
		MisccSection:AddToggle({
			Name = "Auto Rengoku\nออโต้หาดาบเรนโกคุ",
			Flag = "Auto_Rengoku",
			Value = _G.Settings.Auto_Rengoku,
			Callback  = function(value)
				_G.Auto_Rengoku = value
				_G.Settings.Auto_Rengoku = value
				SaveSettings()
				StopTween(_G.Auto_Rengoku)
				if value == false then
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				end
			end
		})
	
		spawn(function()
			game:GetService("RunService").Heartbeat:Connect(function()
				pcall(function()
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if _G.Auto_Rengoku and StartRengokuMagnet and (v.Name == "Snow Lurker" or v.Name == "Arctic Warrior") and (v.HumanoidRootPart.Position - RengokuMon.Position).magnitude <= 350 then
							v.HumanoidRootPart.CFrame = RengokuMon
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
				if _G.Auto_Rengoku then
					pcall(function()
						if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
							EquipWeapon("Hidden Key")
							getgenv().ToTarget(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
						elseif game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v.Name == "Snow Lurker" or v.Name == "Arctic Warrior") and v.Humanoid.Health > 0 then
									repeat wait()
										AutoHaki()
										EquipWeapon(_G.Select_Weapon)
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										RengokuMon = v.HumanoidRootPart.CFrame
										getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										StartRengokuMagnet = true
									until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or _G.Auto_Rengoku == false or not v.Parent or v.Humanoid.Health <= 0
									StartRengokuMagnet = false
								end
							end
						else
							StartRengokuMagnet = false
							getgenv().ToTarget(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
						end
					end)
				end
			end
		end)
	end
	
	if W2 then
		MisccSection:AddToggle({
			Name = "Auto Buy Legendary Sword\nออโต้ซื้อดาบโซโล",
			Flag = "Auto_Buy_Legendary_Sword",
			Value = _G.Settings.Auto_Buy_Legendary_Sword,
			Callback  = function(value)
				_G.Auto_Buy_Legendary_Sword = value
				_G.Settings.Auto_Buy_Legendary_Sword = value
				SaveSettings()
				StopTween(_G.Auto_Buy_Legendary_Sword)
				if value == false then
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				end
			end
		})
	
		spawn(function()
			while wait() do
				if _G.Auto_Buy_Legendary_Sword then
					local args = {
						[1] = "LegendarySwordDealer",
						[2] = "2"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end
		end)
	
		MisccSection:AddToggle{
			Name = "Auto Buy Enchancement\nออโต้ซื้อสีฮาคิ",
			Flag = "Auto_Buy_Enchancement",
			Value = _G.Settings.Auto_Buy_Enchancement,
			Callback  = function(value)
				_G.Auto_Buy_Enchancement = value
				_G.Settings.Auto_Buy_Enchancement = value
				SaveSettings()
				StopTween(_G.Auto_Buy_Enchancement)
				if value == false then
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				end
			end
		}
	
		spawn(function()
			while wait() do
				if _G.Auto_Buy_Enchancement then
					local args = {
						[1] = "ColorsDealer",
						[2] = "2"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
			end
		end)
	end
	
	if W3 then	
		MisccSection:AddToggle({
			Name = "Auto Musketeer Hat\nออโต้หาหมวกทหารเสือ",
			Flag = "Auto_Musketeer_Hat",
			Value = _G.Settings.Auto_Musketeer_Hat,
			Callback  = function(value)
				_G.Auto_Musketeer_Hat = value
				_G.Settings.Auto_Musketeer_Hat = value
				SaveSettings()
				StopTween(_G.Auto_Musketeer_Hat)
				if value == false then
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				end
			end
		})
	
		spawn(function()
			game:GetService("RunService").Heartbeat:Connect(function()
				pcall(function()
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if _G.Auto_Musketeer_Hat and StartMagnetMusketeerhat and v.Name == "Forest Pirate" and (v.HumanoidRootPart.Position - MusketeerHatMon.Position).magnitude <= 350 then
							v.HumanoidRootPart.CFrame = MusketeerHatMon
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
			pcall(function()
				while wait() do
					if _G.Auto_Musketeer_Hat then
						if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false then
							if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
								if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Forest Pirate" then
											repeat wait()
												pcall(function()
													AutoHaki()
													EquipWeapon(_G.Select_Weapon)
													v.HumanoidRootPart.Size = Vector3.new(50,50,50)
													getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
													v.HumanoidRootPart.CanCollide = false
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
													MusketeerHatMon = v.HumanoidRootPart.CFrame
													StartMagnetMusketeerhat = true
												end)
											until _G.Auto_Musketeer_Hat == false or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
											StartMagnetMusketeerhat = false
										end
									end
								else
									StartMagnetMusketeerhat = false
									getgenv().ToTarget(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
								end
							else
								getgenv().ToTarget(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
								if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
									wait(1.5)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
								end
							end
						elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false then
							if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
								if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Captain Elephant" then
											OldCFrameElephant = v.HumanoidRootPart.CFrame
											repeat wait()
												pcall(function()
													AutoHaki()
													EquipWeapon(_G.Select_Weapon)
													v.HumanoidRootPart.CanCollide = false
													v.HumanoidRootPart.Size = Vector3.new(50,50,50)
													getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
													v.HumanoidRootPart.CanCollide = false
													v.HumanoidRootPart.CFrame = OldCFrameElephant
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
													sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
												end)
											until _G.Auto_Musketeer_Hat == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
										end
									end
								else
									getgenv().ToTarget(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
								end
							else
								getgenv().ToTarget(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
								if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
									wait(1.5)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
								end
							end
						elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 2 then
							getgenv().ToTarget(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
						end
					end
				end
			end)
		end)
	end
	
	if W3 then	
		MisccSection:AddToggle({
			Name = "Auto Holy Torch\nออโค้จุดโคมไฟ",
			Flag = "Auto_Holy_Torch",
			Value = _G.Settings.Auto_Holy_Torch,
			Callback  = function(value)
				_G.Auto_Holy_Torch = value
				_G.Settings.Auto_Holy_Torch = value
				SaveSettings()
				StopTween(_G.Auto_Holy_Torch)
				if value == false then
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				end
			end
		})
	
		spawn(function()
			while wait() do
				if _G.Auto_Holy_Torch then
					pcall(function()
						wait(1)
						repeat getgenv().ToTarget(CFrame.new(-10752, 417, -9366)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10752, 417, -9366)).Magnitude <= 10
						wait(1)
						repeat getgenv().ToTarget(CFrame.new(-11672, 334, -9474)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-11672, 334, -9474)).Magnitude <= 10
						wait(1)
						repeat getgenv().ToTarget(CFrame.new(-12132, 521, -10655)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12132, 521, -10655)).Magnitude <= 10
						wait(1)
						repeat getgenv().ToTarget(CFrame.new(-13336, 486, -6985)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13336, 486, -6985)).Magnitude <= 10
						wait(1)
						repeat getgenv().ToTarget(CFrame.new(-13489, 332, -7925)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13489, 332, -7925)).Magnitude <= 10
					end)
				end
			end
		end)
	end
	if W3 then	
		MisccSection:AddToggle({
			Name = "Auto Yama (Fully)\nออโต้หาดาบยามะ{เต็มรูปแบบ}",
			Flag = "Auto_Yama",
			Value = _G.Settings.Auto_Yama,
			Callback  = function(value)
				_G.Auto_Yama = value
				_G.Settings.Auto_Yama = value

				if value == false then
					_G.Auto_Farm_Level = false
				end

				SaveSettings()
				StopTween(_G.Auto_Yama)
				if value == false then
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				end
			end
		})
	
		local Yama_All_Mon = {
			["Mon Quest"] = {"Diablo","Deandre","Urban"},
			["Mon"] = {"Diablo","Deandre","Urban"},
			["Item"] = "God's Chalice",
		}

		spawn(function()
			while wait() do
				if _G.Auto_Yama then
					pcall(function()
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
							fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
						else
							local QuestUI = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
							for _,_l1 in ipairs(Yama_All_Mon["Mon Quest"]) do
								for _,l in ipairs(Yama_All_Mon["Mon"]) do
									if QuestUI.Visible == true and _G.Auto_Farm_Level ~= true then
										if game:GetService("Workspace").Enemies:FindFirstChild(_l1) or game:GetService("ReplicatedStorage"):FindFirstChild(_l1) then
											for _,_v1 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
												if _v1.Name == _l1 then
													if _v1:FindFirstChild("Humanoid") and _v1:FindFirstChild("HumanoidRootPart") and _v1.Humanoid.Health > 0 then
														print("Goooo")
														repeat wait()
															_v1.HumanoidRootPart.Size = Vector3.new(60,60,60)
															_v1.HumanoidRootPart.CanCollide = false
															_v1.Head.CanCollide = false
															BringMobFarm = true
															EquipWeapon(_G.Select_Weapon)
															_v1.HumanoidRootPart.Transparency = 1
															getgenv().ToTarget(_v1.HumanoidRootPart.CFrame * MethodFarm)
															AutoHaki()
															if (_v1.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
																_G.FastAttack = true
															end
														until not _G.Auto_Yama or _v1.Humanoid.Health <= 0 or not _v1.Parent
													end
												else
													if _G.Bypass_TP then
														if (game:GetService("ReplicatedStorage"):FindFirstChild(_l1).HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
															repeat wait()
																Bypass(game:GetService("ReplicatedStorage"):FindFirstChild(_l1).HumanoidRootPart.CFrame * MethodFarm)
															until not _G.Auto_Yama
														end
													end
													if game:GetService("ReplicatedStorage"):FindFirstChild(_l1) then
														getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(_l1).HumanoidRootPart.CFrame * MethodFarm)
													end
												end
											end
										end
									else
										if game.Players.LocalPlayer.Backpack:FindFirstChild(Yama_All_Mon["Item"]) or game.Players.LocalPlayer.Character:FindFirstChild(Yama_All_Mon["Item"]) then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
											_G.Auto_Yama = false
											return
										else
											if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later." and not ( game:GetService("Workspace").Enemies:FindFirstChild(_l1) or game:GetService("ReplicatedStorage"):FindFirstChild(_l1) ) then
												_G.Auto_Farm_Level = true
											else
												_G.Auto_Farm_Level = false
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
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
	end
	
	
	local FightingStyleSection = ItemsTab:CreateSection({
		Name = "FightingStyle",
		Side = "Right"
	})
	
	FightingStyleSection:AddToggle{
		Name = "Auto Superhuman",
		Flag = "Auto_Superhuman",
		Value = _G.Settings.Auto_Superhuman,
		Callback  = function(value)
			_G.Auto_Superhuman = value
			_G.Settings.Auto_Superhuman = value
			SaveSettings()
		end
	}
	
	
	spawn(function()
		while wait(.25) do
			if _G.Auto_Superhuman and game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then 
				pcall(function()
					if game:GetService("Players").LocalPlayer.Data.Beli.Value >= 500000 and (game.Players.LocalPlayer.Character:FindFirstChild("Combat") or game.Players.LocalPlayer.Backpack:FindFirstChild("Combat")) then
						_G.Select_Weapon = "Combat"
						local args = {
							[1] = "BuyElectro"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end   
					if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
						_G.Select_Weapon = "Superhuman"
					end  
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299  then
						_G.Select_Weapon = "Black Leg"
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299  then
						_G.Select_Weapon = "Electro"
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299  then
						_G.Select_Weapon = "Fishman Karate"
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299  then
						_G.Select_Weapon = "Dragon Claw"
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300  then
						local args = {
							[1] = "BuyFishmanKarate"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end
					if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300  then
						local args = {
							[1] = "BuyFishmanKarate"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end
					if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300  then
						local args = {
							[1] = "BuyBlackLeg"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300  then
						local args = {
							[1] = "BuySuperhuman"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end
					if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300  then
						local args = {
							[1] = "BuySuperhuman"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end 
				end)
			end
		end
	end)
	
	FightingStyleSection:AddToggle({
		Name = "Auto Fully Superhuman",
		Flag = "Auto_Fully_Superhuman",
		Value = _G.Settings.Auto_Fully_Superhuman,
		Callback  = function(value)
			_G.Auto_Fully_Superhuman = value
			_G.Settings.Auto_Fully_Superhuman = value
			SaveSettings()
			StopTween(_G.Auto_Fully_Superhuman)
			if value == false then
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			end
		end
	})
	
	spawn(function()
		while wait(.25) do
			if _G.Auto_Fully_Superhuman and game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then 
				pcall(function()
					if game:GetService("Players").LocalPlayer.Data.Beli.Value >= 500000 and (game.Players.LocalPlayer.Character:FindFirstChild("Combat") or game.Players.LocalPlayer.Backpack:FindFirstChild("Combat")) then
						_G.Select_Weapon = "Combat"
						local args = {
							[1] = "BuyElectro"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end   
					if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
						_G.Select_Weapon = "Superhuman"
					end  
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299  then
						_G.Select_Weapon = "Black Leg"
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299  then
						_G.Select_Weapon = "Electro"
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299  then
						_G.Select_Weapon = "Fishman Karate"
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299  then
						_G.Select_Weapon = "Dragon Claw"
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300  then
						local args = {
							[1] = "BuyFishmanKarate"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end
					if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300  then
						local args = {
							[1] = "BuyFishmanKarate"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end
					if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300  then
						local args = {
							[1] = "BuyBlackLeg"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300  then
						if game.Players.LocalPlayer.Data.Fragments.Value < 1500 then
							if game.Players.LocalPlayer.Data.Level.Value > 1100 then
								_G.Auto_Farm_Level = false
								_G.JoinD = true
								wait(1.5)
								_G.Auto_Dungeon_Superhuman = true
							end
						else
							_G.JoinD = false
							_G.Auto_Farm_Level = true
							_G.Auto_Dungeon_Superhuman = false
							local args = {
								[1] = "BlackbeardReward",
								[2] = "DragonClaw",
								[3] = "2"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
						end
					end
					if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300  then
						if game.Players.LocalPlayer.Data.Fragments.Value < 1500 then
							if game.Players.LocalPlayer.Data.Level.Value > 1100 then
								_G.Auto_Farm_Level = false
								_G.JoinD = true
								wait(1.5)
								_G.Auto_Dungeon_Superhuman = true
							end
						else
							_G.JoinD = false
							_G.Auto_Farm_Level = true
							_G.Auto_Dungeon_Superhuman = false
							local args = {
								[1] = "BlackbeardReward",
								[2] = "DragonClaw",
								[3] = "2"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
						end
					end
	
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300  then
						local args = {
							[1] = "BuySuperhuman"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end
					if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300  then
						local args = {
							[1] = "BuySuperhuman"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end 
				end)
			end
		end
	end)
	spawn(function()
		while wait() do
			if _G.Auto_Fully_Superhuman and _G.Auto_Dungeon_Superhuman then
				for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
					if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
						pcall(function()
							repeat wait()
								v.Humanoid.Health = 0
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(50,50,50)
								v.HumanoidRootPart.Transparency = 1
							until not _G.Auto_Dungeon_Superhuman or not v.Parent or v.Humanoid.Health <= 0
						end)
					end
				end
			else
			-- _G.Auto_Farm_Level = false
			end
		end
	end)
	spawn(function()
		while wait() do
			if _G.Auto_Fully_Superhuman and _G.Auto_Dungeon_Superhuman then
				for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
					if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
						pcall(function()
							repeat wait(.1)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								v.Humanoid.Health = 0
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(500,500,500)
								v.HumanoidRootPart.Transparency = 1
							until not _G.Auto_Dungeon_Superhuman or not v.Parent or v.Humanoid.Health <= 0
						end)
					end
				end
			else
			-- _G.Auto_Farm_Level = false
			end
		end
	end)
	spawn(function()
		while wait() do
			if _G.Auto_Dungeon_Superhuman then
				if not game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
					if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
						getgenv().TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame * CFrame.new(0,70,100))
					elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
						getgenv().TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame * CFrame.new(0,70,100))
					elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
						getgenv().TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame * CFrame.new(0,70,100))
					elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
						getgenv().TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame * CFrame.new(0,70,100))
					elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						getgenv().TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame * CFrame.new(0,70,100))
					end
				end
			else
			-- _G.Auto_Farm_Level = false
			end
		end
	end)
	spawn(function()
		while wait(2) do
			if _G.Auto_Fully_Superhuman and _G.Auto_Dungeon_Superhuman and _G.JoinD then
				if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
					if W2 then
						fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
					elseif W3 then
						fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
					end
				end
			end
		end
	end)
	spawn(function()
		while wait() do
			pcall(function()
				if _G.Auto_Fully_Superhuman and _G.Auto_Dungeon_Superhuman then
					if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
						local Fragment = game:GetService("Players")["Localplayer"].Data.Fragments.Value
						if Fragment >= 1499 then
							_G.Auto_Dungeon_Superhuman = false
							_G.Auto_Farm_Level = true
						else
							--_G.Auto_Farm_Level = false
						end
					end
				end
			end)
		end
	end)
	
	FightingStyleSection:AddToggle({
		Name = "Auto Death Step",
		Flag = "Auto_Death_Step",
		Value = _G.Settings.Auto_Death_Step,
		Callback  = function(value)
			_G.Auto_Death_Step = value
			_G.Settings.Auto_Death_Step = value
			SaveSettings()
			StopTween(_G.Auto_Death_Step)
			if value == false then
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			end
		end
	})
	
	spawn(function()
		while wait() do
			if _G.Auto_Death_Step then
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") then
					if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
						_G.Select_Weapon = "Death Step"
					end  
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
						_G.Select_Weapon = "Death Step"
					end  
					if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 449 then
						_G.Select_Weapon = "Black Leg"
					end 
				else 
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
				end
			end
		end
	end)
	
	FightingStyleSection:AddToggle({
		Name = "Auto Fully Death Step",
		Flag = "Auto_Fully_Death_Step",
		Value = _G.Settings.Auto_Fully_Death_Step,
		Callback  = function(value)
			_G.Auto_Fully_Death_Step = value
			_G.Settings.Auto_Fully_Death_Step = value
			SaveSettings()
			StopTween(_G.Auto_Fully_Death_Step)
			if value == false then
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			end
		end
	})
	
	spawn(function()
		while wait() do
			if _G.Auto_Fully_Death_Step then
				pcall(function()
					if not game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or not game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
					end				
					if game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor.PhoeyuDoor.Transparency == 0 then  
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key") then
							EquipWeapon("Library Key")
							repeat wait() getgenv().ToTarget(CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375)) until (CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_Fully_Death_Step
							if (CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
								wait(1.2)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
								wait(0.5)
							end
						elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then   
							if game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral") or game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral") then
								if game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral") then 	
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Awakened Ice Admiral" then    
											repeat wait()
												AutoHaki()
												EquipWeapon(_G.Select_Weapon)
												v.Head.CanCollide = false
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
											until not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_Fully_Death_Step == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key")
										end
									end
								else
									repeat wait() getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral").HumanoidRootPart.CFrame) until game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral")
								end
							else 
								Hop()
							end
						end
					else 
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
					end
				end)
			end
		end
	end)
	
	FightingStyleSection:AddToggle({
		Name = "Auto Sharkman Karate",
		Flag = "Auto_SharkMan_Karate",
		Value = _G.Settings.Auto_SharkMan_Karate,
		Callback  = function(value)
			_G.Auto_SharkMan_Karate = value
			_G.Settings.Auto_SharkMan_Karate = value
			SaveSettings()
		end
	})
	
	spawn(function()
		while wait() do
			if _G.Auto_SharkMan_Karate then
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sharkman Karate") then
					if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
						_G.Select_Weapon = "Sharkman Karate"
					end  
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
						_G.Select_Weapon = "Sharkman Karate"
					end  
					if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 400 then
						_G.Select_Weapon = "Fishman Karate"
					end 
				else 
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
				end
			end
		end
	end)
	
	FightingStyleSection:AddToggle({
		Name = "Auto Fully Sharkman Karate",
		Flag = "Auto_Fully_SharkMan_Karate",
		Value = _G.Settings.Auto_Fully_SharkMan_Karate,
		Callback  = function(value)
			_G.Auto_Fully_SharkMan_Karate = value
			_G.Settings.Auto_Fully_SharkMan_Karate = value
			SaveSettings()
			StopTween(_G.Auto_Fully_SharkMan_Karate)
			if value == false then
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			end
		end
	})
	
	spawn(function()
		while wait() do
			if _G.Auto_Fully_SharkMan_Karate then
				pcall(function()
					if not game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or not game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
					end		
					if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then  
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key") then
							repeat wait() getgenv().ToTarget(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365) until (CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_Fully_SharkMan_Karate
							if (CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
								wait(1.2)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
								wait(0.5)
							end
						elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then   
							if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper") or game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper") then
								if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper") then 	
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Tide Keeper" then    
											repeat wait()
												AutoHaki()
												EquipWeapon(_G.Select_Weapon)
												v.Head.CanCollide = false
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
											until not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_Fully_SharkMan_Karate == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key")
										end
									end
								else
									repeat wait() getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper").HumanoidRootPart.CFrame) until game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper")
								end
							else
								Hop()
							end
						end
					else 
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
					end
				end)
			end
		end
	end)
	
	FightingStyleSection:AddToggle({
		Name = "Auto Electric Claw",
		Flag = "Auto_Electric_Claw",
		Value = _G.Settings.Auto_Electric_Claw,
		Callback  = function(value)
			_G.Auto_Electric_Claw = value
			_G.Settings.Auto_Electric_Claw = value
			SaveSettings()
		end
	})
	
	spawn(function()
		while wait() do 
			if _G.Auto_Electric_Claw then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") then
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
						_G.Select_Weapon = "Electric Claw"
					end  
					if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
						_G.Select_Weapon = "Electric Claw"
					end  
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 399 then
						_G.Select_Weapon = "Electro"
					end 
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
				end
			end
		end
	end)
	
	FightingStyleSection:AddToggle({
		Name = "Auto Dragon Talon",
		Flag = "Auto_Dragon_Talon",
		Value = _G.Settings.Auto_Dragon_Talon,
		Callback  = function(value)
			_G.Auto_Dragon_Talon = value
			_G.Settings.Auto_Dragon_Talon = value
			SaveSettings()
		end
	})
	
	spawn(function()
		while wait() do
			if _G.Auto_Dragon_Talon then
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon") then
					if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
						_G.Select_Weapon = "Dragon Talon"
					end  
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
						_G.Select_Weapon = "Dragon Talon"
					end  
					if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399 then
						_G.Select_Weapon = "Dragon Claw"
					end 
				else 
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
				end
			end
		end
	end)
	
	FightingStyleSection:AddToggle{
		Name = "Auto God Human",
		Flag = "Auto_God_Human",
		Value = _G.Settings.Auto_God_Human,
		Callback  = function(value)
			_G.Auto_God_Human = value
			_G.Settings.Auto_God_Human = value
			SaveSettings()
		end
	}
	
	spawn(function()
		while task.wait() do
			if _G.Auto_God_Human then
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
								Icon = "http://www.roblox.com/asset/?id=9956697825",
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
								Icon = "http://www.roblox.com/asset/?id=9956697825",
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
								Icon = "http://www.roblox.com/asset/?id=9956697825",
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
								Icon = "http://www.roblox.com/asset/?id=9956697825",
								Duration = 2.5
							})
						end
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true) == 1 then
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon").Level.Value >= 400 then
								if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true), "Bring") then
									game.StarterGui:SetCore("SendNotification", {
										Title = "Notification", 
										Text = "Not Have Enough Material" ,
										Icon = "http://www.roblox.com/asset/?id=9956697825",
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
								Icon = "http://www.roblox.com/asset/?id=9956697825",
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
	
	local TeleportTab = PepsisWorld:CreateTab({
		Name = "Dungeon"
	})
	
	local TeleportWorldSection = TeleportTab:CreateSection({
		Name = "Teleport World",
		Side = "Left"
	})
	
	TeleportWorldSection:AddButton({
		Name = "Teleport to First World\nเทเลพอร์ตไปโลกหนึ่ง",
		Callback = function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
		end
	})
	
	TeleportWorldSection:AddButton({
		Name = "Teleport to Second World\nเทเลพอร์ตไปโลกสอง",
		Callback = function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
		end
	})
	
	TeleportWorldSection:AddButton({
		Name = "Teleport to Third World\nเทเลพอร์ตไปโลกสาม",
		Callback = function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
		end
	})
	
	if W1 then
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
	elseif W2 then  
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
			"Tiki Outpost"
		}	
	end
	TeleportWorldSection:AddLabelX({Name = "TeleportIsland"})
	
	TeleportWorldSection:AddDropdown({
		Name = "Select Island\nเลือกเกาะ",
		Flag = "Select_Island",
		List = Island,
		Value = _G.Settings.Select_Island,
		Callback = function(value)
			_G.Select_Island = value
			_G.Settings.Select_Island = value
			SaveSettings()
		end
	})
	
	TeleportWorldSection:AddToggle({
		Name = "Teleport To Island\nเทเลพอร์ตไปยังเกาะที่เลือก",
		Flag = "Start_Tween_Island",
		Value = _G.Settings.Start_Tween_Island,
		Callback = function(value)
			_G.Start_Tween_Island = value    
			_G.Settings.Start_Tween_Island = value
			if _G.Start_Tween_Island == true or _G.Settings.Start_Tween_Island then
				repeat wait()
					if _G.Select_Island == "WindMill" then
						getgenv().ToTarget(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
					elseif _G.Select_Island == "Marine" then
						getgenv().ToTarget(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
					elseif _G.Select_Island == "Middle Town" then
						getgenv().ToTarget(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
					elseif _G.Select_Island == "Jungle" then
						getgenv().ToTarget(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
					elseif _G.Select_Island == "Pirate Village" then
						getgenv().ToTarget(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
					elseif _G.Select_Island == "Desert" then
						getgenv().ToTarget(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
					elseif _G.Select_Island == "Snow Island" then
						getgenv().ToTarget(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
					elseif _G.Select_Island == "MarineFord" then
						getgenv().ToTarget(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
					elseif _G.Select_Island == "Colosseum" then
						getgenv().ToTarget( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
					elseif _G.Select_Island == "Sky Island 1" then
						getgenv().ToTarget(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
					elseif _G.Select_Island == "Sky Island 2" then  
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
					elseif _G.Select_Island == "Sky Island 3" then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
					elseif _G.Select_Island == "Prison" then
						getgenv().ToTarget( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
					elseif _G.Select_Island == "Magma Village" then
						getgenv().ToTarget(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
					elseif _G.Select_Island == "Under Water Island" then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
					elseif _G.Select_Island == "Fountain City" then
						getgenv().ToTarget(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
					elseif _G.Select_Island == "Shank Room" then
						getgenv().ToTarget(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
					elseif _G.Select_Island == "Mob Island" then
						getgenv().ToTarget(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
					elseif _G.Select_Island == "The Cafe" then
						getgenv().ToTarget(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
					elseif _G.Select_Island == "Frist Spot" then
						getgenv().ToTarget(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
					elseif _G.Select_Island == "Dark Area" then
						getgenv().ToTarget(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
					elseif _G.Select_Island == "Flamingo Mansion" then
						getgenv().ToTarget(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
					elseif _G.Select_Island == "Flamingo Room" then
						getgenv().ToTarget(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
					elseif _G.Select_Island == "Green Zone" then
						getgenv().ToTarget( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
					elseif _G.Select_Island == "Factory" then
						getgenv().ToTarget(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
					elseif _G.Select_Island == "Colossuim" then
						getgenv().ToTarget( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
					elseif _G.Select_Island == "Zombie Island" then
						getgenv().ToTarget(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
					elseif _G.Select_Island == "Two Snow Mountain" then
						getgenv().ToTarget(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
					elseif _G.Select_Island == "Punk Hazard" then
						getgenv().ToTarget(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
					elseif _G.Select_Island == "Cursed Ship" then
						getgenv().ToTarget(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
					elseif _G.Select_Island == "Ice Castle" then
						getgenv().ToTarget(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
					elseif _G.Select_Island == "Forgotten Island" then
						getgenv().ToTarget(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
					elseif _G.Select_Island == "Ussop Island" then
						getgenv().ToTarget(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
					elseif _G.Select_Island == "Mini Sky Island" then
						getgenv().ToTarget(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
					elseif _G.Select_Island == "Great Tree" then
						getgenv().ToTarget(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
					elseif _G.Select_Island == "Castle On The Sea" then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5076.60107, 314.54129, -3152.13086, 0.351963997, -4.56893581e-08, -0.93601352, 6.84364423e-08, 1, -2.30789325e-08, 0.93601352, -5.59344855e-08, 0.351963997))
					elseif _G.Select_Island == "MiniSky" then
						getgenv().ToTarget(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
					elseif _G.Select_Island == "Port Town" then
						getgenv().ToTarget(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
					elseif _G.Select_Island == "Hydra Island" then
						getgenv().ToTarget(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
					elseif _G.Select_Island == "Floating Turtle" then
						getgenv().ToTarget(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
					elseif _G.Select_Island == "Mansion" then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
					elseif _G.Select_Island == "Haunted Castle" then
						getgenv().ToTarget(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
					elseif _G.Select_Island == "Ice Cream Island" then
						getgenv().ToTarget(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
					elseif _G.Select_Island == "Peanut Island" then
						getgenv().ToTarget(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
					elseif _G.Select_Island == "Cake Island" then
						getgenv().ToTarget(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
					elseif _G.Select_Island == "Tiki Outpost" then
						getgenv().ToTarget(CFrame.new(-16753.5977, 189.528107, 451.797333, -0.777145505, 0, -0.629321039, 0, 1, 0, 0.629321039, 0, -0.777145505))
					end
				until not _G.Start_Tween_Island
			end
			SaveSettings()
			StopTween(_G.Start_Tween_Island)
		end
	})
	TeleportWorldSection:AddButton({
		Name = "Stop Teleport\nหยุดเทเลพอร์ต",
		Callback = function()
			getgenv().ToTarget(CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
			toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
			StopTween(_G.Start_Tween_Island)
			_G.StopTween = true
		end
	})
	
	local MainDungeonSection = TeleportTab:CreateSection({
		Name = "Dungeon",
		Side = "Right"
	})
	
	Dungeon = {
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
		"Bird: Phoenix"
	}
	
	MainDungeonSection:AddDropdown({
		Name = "Select Dungeon\nเลือกดันเจี้ยน",
		Flag = "Select_Dungeon",
		List = Dungeon,
		Value = _G.Settings.Select_Dungeon,
		Callback = function(value)
			_G.Select_Dungeon = value
			_G.Settings.Select_Dungeon = value
			SaveSettings()
		end
	})
	
	MainDungeonSection:AddToggle({
		Name = "Auto Buy Chip Dungeon\nออโต้ซื้อชิปดันเจี้ยน",
		Flag = "Auto_Buy_Chips_Dungeon",
		Value = _G.Settings.Auto_Buy_Chips_Dungeon,
		Callback = function(value)
			_G.Auto_Buy_Chips_Dungeon = value    
			_G.Settings.Auto_Buy_Chips_Dungeon = value
			SaveSettings()
		end
	})
	
	spawn(function()
		while wait() do
			if _G.Auto_Buy_Chips_Dungeon then
				pcall(function()
					local args = {
						[1] = "RaidsNpc",
						[2] = "Select",
						[3] = _G.Select_Dungeon
					}
	
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
			end
		end
	end)
	
	MainDungeonSection:AddToggle({
		Name = "Auto Start Dungeon\nออโต้เริ่มดันเจี้ยน",
		Flag = "Auto_Start_Dungeon",
		Value = _G.Settings.Auto_Start_Dungeon,
		Callback = function(value)
			_G.Auto_Start_Dungeon = value  
			_G.Settings.Auto_Start_Dungeon = value
			SaveSettings()  
		end
	})
	
	spawn(function()
		while wait() do
			if _G.Auto_Start_Dungeon then
				pcall(function()
					if W2 then
						if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") then 
								fireclickdetector(game.Workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
							end
						elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
							Vec("<Color=Yellow>The Dungeon Has Started<Color=/>") 
						end
					elseif W3 then
						if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") then
								fireclickdetector(game.Workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
							end
						elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
							Vec("<Color=Yellow>The Dungeon Has Started<Color=/>") 
						end
					end
				end)
			end
		end
	end)
	
	MainDungeonSection:AddToggle({
		Name = "Auto Next Island\nออโต้เกาะต่อไป",
		Flag = "Auto_Next_Island",
		Value = _G.Settings.Auto_Next_Island,
		Callback = function(value)
			_G.Auto_Next_Island = value  
			_G.Settings.Auto_Next_Island = value
			SaveSettings()  
			StopTween(_G.Auto_Next_Island)
			if value == false then
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			end
		end
	})
	
	spawn(function()
		while wait() do
			if _G.Auto_Next_Island then
				if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true and game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
					if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
						toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 5"].CFrame * CFrame.new(4, 65, 10))
					elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
						toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 4"].CFrame *  CFrame.new(4, 65, 10))
					elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
						toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 3"].CFrame * CFrame.new(4, 65, 10))
					elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
						toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 2"].CFrame * CFrame.new(4, 65, 10))
					elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 1"].CFrame * CFrame.new(4, 65, 10))
					end
				end
			end
		end
	end)
	
	MainDungeonSection:AddToggle({
		Name = "Kill Aura\nออร่าฆ่ามอน",
		Flag = "Kill_Aura",
		Value = _G.Settings.Kill_Aura,
		Callback = function(value)
			_G.Kill_Aura = value
			_G.Settings.Kill_Aura = value
			SaveSettings()      
		end
	})
	
	spawn(function()
		while wait() do
			if _G.Kill_Aura then
				for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
					if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
						pcall(function()
							repeat wait(.1)
								v.Humanoid.Health = 0
								v.HumanoidRootPart.CanCollide = false
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							until not _G.Kill_Aura  or not v.Parent or v.Humanoid.Health <= 0
						end)
					end
				end
			end
		end
	end)
	
	MainDungeonSection:AddToggle({
		Name = "Auto Awake Skill\nออโต้ซื้อสกิลตื่น",
		Flag = "Auto_Awake",
		Value = _G.Settings.Auto_Awake,
		Callback = function(value)
			_G.Auto_Awake = value 
			_G.Settings.Auto_Awake = value
			SaveSettings()        
		end
	})
	
	spawn(function()
		while wait(.1) do
			if _G.Auto_Awake then
				pcall(function()
					local args = {
						[1] = "Awakener",
						[2] = "Check"
					}
	
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					local args = {
						[1] = "Awakener",
						[2] = "Awaken"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
			end
		end
	end)
	
	if W2 then
		local LawDungeonSection = TeleportTab:CreateSection({
			Name = "Law Dungeon",
			Side = "Right"
		})
		
		LawDungeonSection:AddToggle({
			Name = "Auto Buy Law Chip\nออโต้ซื้อชิปลอว์",
			Flag = "Auto_Buy_Law_Chip",
			Value = _G.Settings.Auto_Buy_Law_Chip,
			Callback = function(value)
				_G.Auto_Buy_Law_Chip = value   
				_G.Settings.Auto_Buy_Law_Chip = value
				SaveSettings()       
			end
		})
		
		spawn(function()
			while wait() do
				if _G.Auto_Buy_Law_Chip then
					pcall(function()
						if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Workspace").Enemies:FindFirstChild("Order") or game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
		
						else
							local args = {
								[1] = "BlackbeardReward",
								[2] = "Microchip",
								[3] = "2"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
					end)
				end
			end
		end)
		
		LawDungeonSection:AddToggle({
			Name = "Auto Start Law Dungeon\nออโต้เริ่มดันเจี้ยนลอว์",
			Flag = "Auto_Start_Law_Dungeon",
			Value = _G.Settings.Auto_Start_Law_Dungeon,
			Callback = function(value)
				_G.Auto_Start_Law_Dungeon = value    
				_G.Settings.Auto_Start_Law_Dungeon = value
				SaveSettings()
			end
		})
		
		spawn(function()
			while wait() do
				if _G.Auto_Start_Law_Dungeon then
					pcall(function()
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") then
							fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
						end
					end)
				end
			end
		end)
		
		LawDungeonSection:AddToggle({
			Name = "Auto Kill Law\nออโต้ฆ่าลอว์",
			Flag = "Auto_Kill_Law",
			Value = _G.Settings.Auto_Kill_Law,
			Callback = function(value)
				_G.Auto_Kill_Law = value 
				_G.Settings.Auto_Kill_Law = value
				SaveSettings()   
			end
		})
		
		spawn(function()
			while wait() do
				if _G.Auto_Kill_Law then
					pcall(function()
						if game:GetService("ReplicatedStorage"):FindFirstChild("Order") or game:GetService("Workspace").Enemies:FindFirstChild("Order") then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if _G.Auto_Kill_Law and v.Name == "Order" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
									repeat task.wait()
										AutoHaki()
										EquipWeapon(_G.Select_Weapon)
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									until not _G.Auto_Kill_Law or v.Humanoid.Health <= 0 or not v.Parent
								end
							end
						end 
					end)
				end
			end
		end)

	end
	
	local DevilFruitShopSection = TeleportTab:CreateSection({
		Name = "Devil Fruit Shop",
		Side = "Left"
	})
	
	local Remote_GetFruits = game.ReplicatedStorage:FindFirstChild("Remotes").CommF_:InvokeServer("GetFruits");
	
	Table_DevilFruitSniper = {}
	ShopDevilSell = {}
	
	for i,v in next,Remote_GetFruits do
		table.insert(Table_DevilFruitSniper,v.Name)
		if v.OnSale then 
			table.insert(ShopDevilSell,v.Name)
		end
	end
	
	DevilFruitShopSection:AddDropdown({
		Name = "Select Devil Fruit\nเลือกผลไม้ปีศาจ",
		Flag = "Select_Devil_Fruit",
		List = Table_DevilFruitSniper,
		Value = _G.Settings.Select_Devil_Fruit,
		Callback = function(value)
			_G.Select_Devil_Fruit = value
			_G.Settings.Select_Devil_Fruit = value
			SaveSettings()  
		end
	})
	
	DevilFruitShopSection:AddToggle({
		Name = "Auto Buy Devil Fruit\nออโต้ซื้อผลปีศาจ",
		Flag = "Auto_Buy_Devil_Fruit",
		Value = _G.Settings.Auto_Buy_Devil_Fruit,
		Callback = function(value)
			_G.Auto_Buy_Devil_Fruit = value 
			_G.Settings.Auto_Buy_Devil_Fruit = value
			SaveSettings()     
		end
	})
	
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
	
	DevilFruitShopSection:AddToggle({
		Name = "Auto Random Fruit\nออโต้ส่มผลปีศาจ",
		Flag = "Auto_Random_Fruit",
		Value = _G.Settings.Auto_Random_Fruit,
		Callback = function(value)
			_G.Auto_Random_Fruit = value   
			_G.Settings.Auto_Random_Fruit = value
			SaveSettings()    
		end
	})
	
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
	
	DevilFruitShopSection:AddToggle({
		Name = "Auto Bring Fruit\nออโต้ดึงผลปีศาจ",
		Flag = "Auto_Bring_Fruit",
		Value = _G.Settings.Auto_Bring_Fruit,
		Callback = function(value)
			_G.Auto_Bring_Fruit = value
			_G.Settings.Auto_Bring_Fruit = value
			SaveSettings()      
		end
	})
	
	spawn(function()
		while wait() do
			if _G.Auto_Bring_Fruit then
				pcall(function()
					for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
						if v:IsA("Tool") and string.find(v.Name,"Fruit") then 
							if (v.Handle.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 then
								Bypass(v.Handle.CFrame * CFrame.new(0,50,0))
								repeat wait() Bypass(v.Handle.CFrame * CFrame.new(0,50,0)) until (v.Handle.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 or not _G.Auto_Bring_Fruit
								repeat wait() getgenv().ToTarget(v.Handle.CFrame) until (v.Handle.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 or not _G.Auto_Bring_Fruit
							else
								repeat wait() getgenv().ToTarget(v.Handle.CFrame) until (v.Handle.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 or not _G.Auto_Bring_Fruit
							end
						end
					end
				end)
			end
		end
	end)
	
	DevilFruitShopSection:AddToggle({
		Name = "Auto Store Fruit\nออโต้เก็บผลปีศาจเข้ากระเป๋า",
		Flag = "Auto_Store_Fruit",
		Value = _G.Settings.Auto_Store_Fruit,
		Callback = function(value)
			_G.Auto_Store_Fruit = value
			_G.Settings.Auto_Store_Fruit = value
			SaveSettings()      
		end
	})
	
	spawn(function()
		while wait() do
			if _G.Auto_Store_Fruit then
				pcall(function()
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bomb-Bomb",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spike-Spike",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Chop-Chop",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spring-Spring",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Kilo-Kilo",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Smoke-Smoke",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spin-Spin",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Flame-Flame",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Falcon",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ice-Ice",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Sand-Sand",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dark-Dark",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Revive-Revive",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Diamond-Diamond",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Light-Light",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Love-Love",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rubber-Rubber",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Barrier-Barrier",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Magma-Magma",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Door-Door",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Quake-Quake",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Human-Human: Buddha",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","String-String",game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Phoenix",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rumble-Rumble",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Paw-Paw",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Gravity-Gravity",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dough-Dough",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Shadow-Shadow",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Venom-Venom",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Control-Control",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dragon-Dragon",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Leopard-Leopard",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit"))
					end
				end)
			end
		end
	end)
	
	
	local RaceV4Tab = PepsisWorld:CreateTab({
		Name = "RaceV4"
	})

	local RaceV4Section = RaceV4Tab:CreateSection({
		Name = "RaceV4",
		Side = "Left"
	})

	
	RaceV4Section:AddButton({Name = "Teleport Cyborg Door\nเทเลพอร์ตไปที่เผ่าไซบอร์ก",Callback = function()
		getgenv().ToTarget(CFrame.new(28492.4140625, 14894.4267578125, -422.1100158691406))
		end})
		RaceV4Section:AddButton({Name = "Teleport Fish Door\nเทเลพอร์ตไปที่เผ่ามนุษย์เงือก",Callback = function()
			getgenv().ToTarget(CFrame.new(28224.056640625, 14889.4267578125, -210.5872039794922))
		end})
		RaceV4Section:AddButton({Name = "Teleport Ghoul Door\nเทเลพอร์ตไปที่เผ่ากลู",Callback = function()
			getgenv().ToTarget(CFrame.new(28672.720703125, 14889.1279296875, 454.5961608886719))
		end})
		RaceV4Section:AddButton({Name = "Teleport Human Door\nเทเลพอร์ตไปที่เผ่ามนุษย์",Callback = function()
			getgenv().ToTarget(CFrame.new(29237.294921875, 14889.4267578125, -206.94955444335938))
		end})
		RaceV4Section:AddButton({Name = "Teleport Mink Door\nเทเลพอร์ตไปที่เผ่ามิ้ง",Callback = function()
			getgenv().ToTarget(CFrame.new(29020.66015625, 14889.4267578125, -379.2682800292969))
		end})
		RaceV4Section:AddButton({Name = "Teleport Sky Door\nเทเลพอร์ตไปที่เผ่าสกายเปียร์",Callback = function()
			getgenv().ToTarget(CFrame.new(28967.408203125, 14918.0751953125, 234.31198120117188))
		end})
		RaceV4Section:AddButton({Name = "Teleport To Ancient One\nเทเลพอร์ตไปที่ Ancient One",Callback = function()
			getgenv().ToTarget(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375))
		end})
		RaceV4Section:AddButton({Name = "Teleport To Top GreatTree\nnเทเลพอร์ตไปที่ ต้นไม้ยักษ์",Callback = function()
			getgenv().ToTarget(CFrame.new(2947.556884765625, 2281.630615234375, -7213.54931640625))
		end})
	
		RaceV4Section:AddToggle({
			Name = "Auto Active RaceV3\nออโต้เปิดเผ่าวีสาม",
			Flag = "Auto_Active_RaceV3",
			Value = _G.AutoActiveRace,
			Callback = function(value)
			_G.AutoActiveRace = value
				while _G.AutoActiveRace do wait()
				game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.T,false,game)
				game:GetService("VirtualInputManager"):SendKeyEvent(false,Enum.KeyCode.T,false,game)
				end  
			end
		})
	
		RaceV4Section:AddToggle({
			Name = "Auto Active RaceV4\nออโต้เปิดเผ่าวีสี่",
			Flag = "Auto_Active_RaceV4",
			Value = _G.AutoActiveRace,
			Callback = function(value)
			_G.AutoActiveRace = value
				while _G.AutoActiveRace do wait()
				game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.Y,false,game)
				game:GetService("VirtualInputManager"):SendKeyEvent(false,Enum.KeyCode.Y,false,game)
				end  
			end
		})

RaceV4Section:AddButton({
	Name = "Auto Lever UnLock\nออโต้ดึงคันโยก",
	Callback = function()
		_G.Auto_Lever_UnLock = true
		if workspace.Map["Temple of Time"].MainDoor1.CFrame == CFrame.new(28578.1328, 14864.8184, -87.3899994, 1, 0, 0, 0, 1, 0, 0, 0, 1) then
			getgenv().ToTarget(CFrame.new(28577.1641, 14907.3477, -87.3899612, 0, 0, -1, 0, 1, 0, 1, 0, 0))
		else
			local c = game:GetService("Workspace").Map["Temple of Time"].DoNotEnter.CFrame
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = c
			wait(1.5)
			getgenv().ToTarget(workspace.Map["Temple of Time"].Lever.Prompt.CFrame)
			wait(1.5)
			game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
			wait(4.5)
			game:GetService("VirtualInputManager"):SendKeyEvent(false,"E",false,game)
			wait(1.5)
			getgenv().ToTarget(CFrame.new(28577.1641, 14907.3477, -87.3899612, 0, 0, -1, 0, 1, 0, 1, 0, 0))
		end
		_G.Auto_Lever_UnLock = false
	end
})

RaceV4Section:AddToggle({
	Name = "Auto Complete Trial\nออโต้ผ่านด่าน",
	Flag = "Auto_Complete_Trial",
	Value = _G.Settings.Auto_Complete_Trial,
	Callback = function(value)
		_G.Auto_Complete_Trial = value
		_G.Settings.Auto_Complete_Trial = value

		StopTween(_G.Auto_Complete_Trial)
		if value == false then
			toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
		end
		SaveSettings()      
	end
})

spawn(function()
	while wait() do
		if _G.Auto_Complete_Trial then
			pcall(function()
				if (game:GetService("Workspace").Map["Temple of Time"].DoNotEnter.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 then
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map["Temple of Time"].DoNotEnter.CFrame
				else
					if game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.SkyTrial.Model.FinishPart.CFrame
					elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.MinkTrial.Ceiling.CFrame * CFrame.new(0, -5, 0)
					elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 300, 0)
					elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1000 then
									repeat wait()
										v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid.WalkSpeed = 0
										v.Head.CanCollide = false
										BringMobFarm = true
										EquipWeapon(_G.Select_Weapon)
										PosMon = v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.Transparency = 1
										getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									until not _G.Auto_Complete_Trial or not v.Parent or v.Humanoid.Health <= 0
									BringMobFarm = false
								end
							end
					elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
							for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1000 then
									repeat wait()
										v.HumanoidRootPart.Size = Vector3.new(150,150,150)
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid.WalkSpeed = 0
										v.Head.CanCollide = false
										v.HumanoidRootPart.Transparency = 1
										getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
										for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
											if v.ToolTip == "Sword" then
												if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
													EquipWeapon(v.Name)
												end
											end
										end
										game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
										game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
										wait(0.2)
										game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
										game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
										for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
											if v.ToolTip == "Blox Fruit" then
												if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
													EquipWeapon(v.Name)
												end
											end
										end
										game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
										game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
										wait(0.2)
										game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
										game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
										wait(0.2)
										game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
										game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
										wait(0.2)
										game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
										game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
										wait(0.2)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									until not _G.Auto_Complete_Trial or not v.Parent or v.Humanoid.Health <= 0
									BringMobFarm = false
								end
							end
					end
				end
			end)
		end
	end
end)

RaceV4Section:AddToggle{
	Name = "Auto Awakening One Quest\nออโต้ปลุกพลังหนึ่งภารกิจ", 
	Flag = "Auto Awakening One Quest",
	Value = _G.Settings.Auto_Awakening_One_Quest,
	Callback  = function(value)
		_G.Auto_Awakening_One_Quest = value
		_G.Settings.Auto_Awakening_One_Quest = value
		if _G.Settings.Bypass_TP then
			_G.Bypass_TP = true
		end
		StopTween(_G.Auto_Awakening_One_Quest)
		if value == false then
			toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
		end
		SaveSettings()
	end
}

local Cake_CFrame_Mon = {}
local randomIndex;
local randomValue;
spawn(function()
	while wait() do
		if _G.Auto_Awakening_One_Quest then
			pcall(function()
				if game.ReplicatedStorage:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or  game.ReplicatedStorage:FindFirstChild("Dough King") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then   
					if _G.Settings.Bypass_TP then
						_G.Bypass_TP = false
					end
					if not game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
						for _,x in pairs(game.ReplicatedStorage:GetChildren()) do 
							if x.Name == "Cake Prince" or x.Name == "Dough King" then
								if (x.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
									wait(1.5)
									getgenv().ToTarget(CFrame.new(-2145.89722, 70.0088272, -12399.6016, 0.99999702, 1.58276379e-08, 0.00245277886, -1.57982978e-08, 1, -1.19813057e-08, -0.00245277886, 1.19425199e-08, 0.99999702))
									return
								end
							end
						end
					end
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Cake Prince" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat task.wait()
									if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
										getgenv().ToTarget(CFrame.new(-2145.89722, 70.0088272, -12399.6016, 0.99999702, 1.58276379e-08, 0.00245277886, -1.57982978e-08, 1, -1.19813057e-08, -0.00245277886, 1.19425199e-08, 0.99999702))
										return
									end
									EquipWeapon(_G.Select_Weapon)
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
									BringMobFarm = true
									getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
									if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
										_G.FastAttack = true
									end
									sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
								until not _G.Auto_Awakening_One_Quest or not v.Parent or v.Humanoid.Health <= 0
							end
						else
							for _,x in pairs(game.ReplicatedStorage:GetChildren()) do 
								if x.Name == "Cake Prince" or x.Name == "Dough King" then
									if (x.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
										getgenv().ToTarget(CFrame.new(-2145.89722, 70.0088272, -12399.6016, 0.99999702, 1.58276379e-08, 0.00245277886, -1.57982978e-08, 1, -1.19813057e-08, -0.00245277886, 1.19425199e-08, 0.99999702))
										return
									end
								end
							end
						end
					end
				else 
					if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game.ReplicatedStorage:FindFirstChild("Cake Prince") then
						for _,x in pairs(game.ReplicatedStorage:GetChildren()) do 
							if x.Name == "Cake Prince" or x.Name == "Dough King" then
								if (x.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
									getgenv().ToTarget(CFrame.new(-2145.89722, 70.0088272, -12399.6016, 0.99999702, 1.58276379e-08, 0.00245277886, -1.57982978e-08, 1, -1.19813057e-08, -0.00245277886, 1.19425199e-08, 0.99999702))
									return
								end
							end
						end
					else
						if game.Workspace.Enemies:FindFirstChild("Baking Staff") or game.Workspace.Enemies:FindFirstChild("Head Baker") or game.Workspace.Enemies:FindFirstChild("Cake Guard") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter")  then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
								if (v.Name == "Baking Staff" or v.Name == "Head Baker" or v.Name == "Cake Guard" or v.Name == "Cookie Crafter") and v.Humanoid.Health > 0 then
									repeat wait()
										if game.Players.LocalPlayer.Character.RaceTransformed.Value == false then
											game:GetService("Players").LocalPlayer.Backpack.Awakening.RemoteFunction:InvokeServer(true)
											game:GetService("Players").LocalPlayer.Backpack.Awakening.RemoteFunction:InvokeServer(true)
											PosMon = v.HumanoidRootPart.CFrame
											EquipWeapon(_G.Select_Weapon)
											v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
											BringMobFarm = true
											getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
											if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
												_G.FastAttack = true
											end
											game:GetService("Players").LocalPlayer.Backpack.Awakening.RemoteFunction:InvokeServer(true)
											game:GetService("Players").LocalPlayer.Backpack.Awakening.RemoteFunction:InvokeServer(true)
										else
											BringMobFarm = false
											for i,v in pairs(workspace.EnemySpawns:GetChildren()) do
												if not _G.AutoFarmFast and (v.Name == "Baking Staff" or v.Name == "Head Baker" or v.Name == "Cake Guard" or v.Name == "Cookie Crafter") or (v.Name == "Baking Staff" or v.Name == "Head Baker" or v.Name == "Cake Guard" or v.Name == "Cookie Crafter" ) then local CFrameEnemySpawns = v.CFrame  wait(0.2)
													getgenv().ToTarget(CFrameEnemySpawns * MethodFarm)
												end
											end
										end
									until _G.Auto_Awakening_One_Quest == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or not v.Parent or v.Humanoid.Health <= 0
								end
							end
						else
							BringMobFarm = false
							for i,v in pairs(workspace.EnemySpawns:GetChildren()) do
								if not _G.AutoFarmFast and (v.Name == "BakingStaff" or v.Name == "HeadBaker" or v.Name == "CakeGuard" or v.Name == "CookieCrafter" ) then local CFrameEnemySpawns = v.CFrame  wait(0.2)
									getgenv().ToTarget(CFrameEnemySpawns * MethodFarm)
								end
							end
						end
					end
				end
			end)
		end
	end
end)

local Mirage = RaceV4Tab:CreateSection({
	Name = "Mirage Island",
	Side = "Right"
})

Mirage:AddToggle{
	Name = "TP To Advanced Fruit Delar\nเทเลพอร์ตไปหาคนขายผลเกาะลับ",
	Flag = "TP_Advance_Fruit_Delar", 
	Value = _G.TPNPCDF,
	Callback  = function(value)
		TPNPCDF = value
	end
}

spawn(function()
	pcall(function()
	while wait() do
		if _G.TPNPCDF then
			if game:GetService("Workspace").NPCs:FindFirstChild("Advanced Fruit Dealer") then
				getgenv().ToTarget(CFrame.new(game:GetService("Workspace").NPCs["Advanced Fruit Dealer"].HumanoidRootPart.Position))
				end
			end
		end
	end)
end)


Mirage:AddToggle{
	Name = "TP To Mirage Island\nเทเลพอร์ตไปหาเกาะลับ",
	Flag = "TP_Mirage_Island", 
	Value = _G.Settings.Mirage,
	Callback  = function(value)
		_G.AutoMirageIsland = value 
		_G.Settings.Mirage = value 
		_G.Mirage = value
		SaveSettings()
	end
}
spawn(function()
	pcall(function()
		while task.wait() do
			if _G.AutoMirageIsland or _G.Mirage then
				if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
						toTarget(workspace.Map.MysticIsland.PrimaryPart.CFrame * CFrame.new(0, 300, 0))
				else
					if _G.Mode == "English" then
						game:GetService("StarterGui"):SetCore("SendNotification",{Title = "VectorHub",Text = "Mirage not Found!",Icon = "rbxassetid://14645512457",Duration = 1})
					else
						game:GetService("StarterGui"):SetCore("SendNotification",{Title = "VectorHub",Text = "เกาะลับยังไม่เกิด",Icon = "rbxassetid://14645512457",Duration = 1})
					end
				end
			end
		end
	end)
	end)
	local function round(n)
		return math.floor(tonumber(n) + 0.5)
		end
		
		Number = math.random(1, 1000000)
		function ESPMirageIsland()
		pcall(function()
			if _G.ESPMirageIsland then
				for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
					pcall(function()
						if v.Name == 'Center' then
							if not v:FindFirstChild('EspMirage') then
								local bill = Instance.new('BillboardGui',v)
								bill.Name = 'EspMirage'
								bill.ExtentsOffset = Vector3.new(0, 1, 0)
								bill.Size = UDim2.new(1,200,1,30)
								bill.Adornee = v
								bill.AlwaysOnTop = true
								local name = Instance.new('TextLabel',bill)
								name.Font = "GothamBold"
								name.FontSize = "Size14"
								name.TextWrapped = true
								name.Size = UDim2.new(1,0,1,0)
								name.TextYAlignment = 'Top'
								name.BackgroundTransparency = 1
								name.TextStrokeTransparency = 0.5
								name.TextColor3 = Color3.fromRGB(255, 255, 255)
								name.Text = ("Mirage Island" ..' \n'.." [ "..round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M'.." ] ")
							else
								v.EspMirage.TextLabel.Text = ("Mirage Island" ..' \n'.." [ "..round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M'.." ] ")
								v.EspMirage.TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
							end
						end
					end)
				end
			else
				for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
					if v.Name == 'Center' then
						if v:FindFirstChild('EspMirage') then
							v:FindFirstChild('EspMirage'):Destroy()
						end
					end
				end
			end
		end)
		end
		
		spawn(function()
		while wait() do 
			if _G.ESPMirageIsland then
				ESPMirageIsland()
			end
		end
		end)
		
		local function round(n)
			return math.floor(tonumber(n) + 0.5)
			end
			
			Number = math.random(1, 1000000)
			function ESPKisuneIsland()
			pcall(function()
				if _G.EspKitsuneIsland then
					for i,v in pairs(game:GetService("Workspace").Map.KitsuneIsland:GetChildren()) do
						pcall(function()
							if v.Name == 'NeonShrinePart' then 
								if not v:FindFirstChild('EspKitsune') then
									local bill = Instance.new('BillboardGui',v)
									bill.Name = 'EspKitsune'
									bill.ExtentsOffset = Vector3.new(0, 1, 0)
									bill.Size = UDim2.new(1,200,1,30)
									bill.Adornee = v
									bill.AlwaysOnTop = true
									local name = Instance.new('TextLabel',bill)
									name.Font = "GothamBold"
									name.FontSize = "Size14"
									name.TextWrapped = true
									name.Size = UDim2.new(1,0,1,0)
									name.TextYAlignment = 'Top'
									name.BackgroundTransparency = 1
									name.TextStrokeTransparency = 0.5
									name.TextColor3 = Color3.fromRGB(255, 255, 255)
									name.Text = ("Kitsune Island" ..' \n'.." [ "..round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M'.." ] ")
								else
									v.EspKitsune.TextLabel.Text = ("Kitsune Island" ..' \n'.." [ "..round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M'.." ] ")
									v.EspKitsune.TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
								end
							end
						end)
					end
				else
					for i,v in pairs(game:GetService("Workspace").Map.KitsuneIsland:GetChildren()) do
						if v.Name == 'Center' then
							if v:FindFirstChild('EspKitsune') then
								v:FindFirstChild('EspKitsune'):Destroy()
							end
						end
					end
				end
			end)
			end
			
			spawn(function()
			while wait() do 
				if _G.EspKitsuneIsland then
					EspKitsuneIsland()
				end
			end
			end)
		
			Mirage:AddToggle{
				Name = "ESP Mirage Island\nมองทะลุหเกาะลับ",
				Flag = "ESPMirageIsland", 
				Value = _G.ESPMirageIsland,
				Callback  = function(value)
					_G.ESPMirageIsland = value
					ESPMirageIsland()
				end
			}

			Mirage:AddToggle{
				Name = "Teleport To Gear\nเทเลพอร์ตไปหาเกียร์",
				Flag = "TeleportToGear", 
				Value = _G.Settings.Auto_Gear,
				Callback  = function(value)
					_G.Settings.Auto_Gear = value
					_G.Auto_Gear = value
					SaveSettings() 
					task.spawn(function()
						while task.wait(.01) do
							if _G.Auto_Gear then
								for i,v in pairs(game:GetService("Workspace").Map:FindFirstChild('MysticIsland'):GetChildren()) do
									if v.Name == "Part" then
										if v.ClassName == "MeshPart" then
											toTarget(v.CFrame)
											v.Transparency = 0
										end
									end
								end
							end
						end
					end)
				end}

		function LockMoon()
			local Lighting = game:GetService("Lighting")
			local Cam = game.Workspace.CurrentCamera
			local CFNew, CFAng = CFrame.new, CFrame.Angles
			local asin = math.asin
			
			local Camera = workspace.CurrentCamera
			local Player = game.Players.LocalPlayer
			local Character = Player.Character
			local Root = Character:WaitForChild("HumanoidRootPart")
			local Neck = Character:FindFirstChild("Neck", true)
			local YOffset = Neck.C0.Y
			game:GetService("RunService").RenderStepped:Connect(function()
			if _G.LockMoon then
				game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
			
				local pos = Vector3.new(0, 0, 0)
				local lookAt = Lighting:GetMoonDirection()
				local cameraCFrame = CFrame.new(pos, lookAt)
				workspace.CurrentCamera.CFrame = cameraCFrame
				local CameraDirection = Root.CFrame:toObjectSpace(cameraCFrame).lookVector.unit
				if Neck and Lock then
					Neck.C0 = CFNew(0, YOffset, 0) * CFAng(0, -asin(CameraDirection.x), 0) * CFAng(asin(CameraDirection.y), 0, 0)
				end
			else
				Cam.FieldOfView = 70
			end
			end)
			end
			
			Mirage:AddToggle{
				Name = "Lock Moon\nมองดวงจันทร์",
				Flag = "LockMoon",
				Value = _G.LockMoon,
				Callback  = function(value)
					_G.LockMoon = value
					LockMoon()
				end
			}
	local Event = PepsisWorld:CreateTab({
		Name = "Event"
	})
		
	local KitsuneSection = Event:CreateSection({
		Name = "Kitsune",
		Side = "Left"
	}) 


	KitsuneSection:AddToggle{
		Name = "ESP Kitsune Island\nมองทะลุหาเกาะจิ้งจอก",
		Flag = "ESPKitsuneIsland",
		Value = _G.EspKitsuneIsland,
		Callback  = function(value)
			_G.EspKitsuneIsland = value
			EspKitsuneIsland()
		end}
	
		KitsuneSection:AddToggle{
		Name = "TP To Kitsune Islandn\nเทเลพอร์ตไปหาเกาะจิ้งจอก",
		Flag = "TPKitsuneIsland", 
		Value = _G.TptoKisuneIsland,
		Callback  = function(value)
			_G.TptoKisuneIsland = value
			spawn(function()
				while task.wait() do
					if _G.TptoKisuneIsland then
						toTarget(game.Workspace.Map.KitsuneIsland.ShrineActive.NeonShrinePart.CFrame * CFrame.new(0,100,0))
					end
				end
			end)
		end}
	
		KitsuneSection:AddToggle{
		Name = "Teleport To Kitsune Shrine\nเทเลพอร์ตไปหาศาลเจ้าเกาะจิ้จอก",
		Flag = "TeleportToKitsuneShrine", 
		Value = _G.TptoKisuneshrine,
		Callback  = function(value)
			_G.TptoKisuneshrine = value
			spawn(function()
				while task.wait() do
					if _G.TptoKisuneshrine then
						toTarget(game.Workspace.Map.KitsuneIsland.ShrineActive.NeonShrinePart.CFrame * CFrame.new(0,0,10))
					end
				end
			end)
		end}
	
		KitsuneSection:AddToggle{
		Name = "Collect Azure Ember\nเก็บวิญญาณไฟ",
		Flag = "CollectAzureEmber",
		Value = _G.Ez,
		Callback  = function(value)
			_G.Ez = value
			spawn(function()
				while _G.Ez do wait()
					pcall(function()
						if game.Workspace.EmberTemplate then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.EmberTemplate.Part.CFrame
						end
					end)
				end
			end)
		end}

		local NewEvent = Event:CreateSection({
			Name = "SeaEvent",
			Side = "Right"
		}) 

		NewEvent:AddLabelX({
			Name = "Boat"
		})

AllBoat = {
	"Dinghy",
	"PirateSloop",
	"PirateBrigade",
	"PirateGrandBrigade",
	"MarineSloop",
	"MarineBrigade",
	"MarineGrandBrigade"
}

local SelectBoat = nil
NewEvent:AddDropdown({
    Name = "Select Boat เลือกเรือ",
    Flag = "Select_Boat",
    List = AllBoat,
    Value = _G.SelectBoat,
    Callback = function(value)
        SelectBoat = value
    end
})

function CheckNotifyBuy()
    for i, v in pairs(game:GetService("Players")["LocalPlayer"].PlayerGui:FindFirstChild("Notifications"):GetChildren()) do
        if v.Name == "NotificationTemplate" then
            if string.lower(v.Text):find("bought") then
                return true
            end
        end
    end
    return false
end

NewEvent:AddToggle({
    Name = "BuyBoat ซื้อเรือ",
    Flag = "BuyBoat",
    Value = _G.Bboat,
    Callback = function(value)
		_G.Bboat = value
        while _G.Bboat do wait()
            toTarget(CFrame.new(-16931.9766, 9.08636189, 444.637634, 0.247219667, 3.04388195e-08, 0.968959451, -2.25711698e-08, 1, -2.56551314e-08, -0.968959451, -1.55280944e-08, 0.247219667))
                if (Vector3.new(-16931.9766, 9.08636189, 444.637634, 0.247219667, 3.04388195e-08, 0.968959451, -2.25711698e-08, 1, -2.56551314e-08, -0.968959451, -1.55280944e-08, 0.247219667) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 and CheckNotifyBuy() == false then
                    repeat wait()
                    if SelectBoat then 
                        local args = {
                            [1] = "BuyBoat",
                            [2] = SelectBoat
                        }
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
                    end
                    until CheckNotifyBuy() == true or not _G.Bboat
                end
            end
            for i, v in pairs(game.Workspace.Boats[SelectBoat]:GetChildren()) do
                    if v:IsA("VehicleSeat") and  game.Players.LocalPlayer.Name == game.Workspace.Boats[SelectBoat].Owner.Value.Name then 
                        if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1000 then
                            repeat
                                task.wait()
                                local CFrame = v.CFrame
                                twoboat(CFrame)
                            until (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 5 or not _G.Bboat
                        end
                    end
                end
        end})

		Seatable = {"Sea1[Low]","Sea2[Medium]","Sea3[High]","Sea4[Extreme]","Sea5[Crazy]","Sea6[???]"}
		NewEvent:AddDropdown({
			Name = "Select Sea Level\nเลือกระดับทะเล",
			List = Seatable,
			Value = _G.SelectLocalTeleportSea,
			Callback = function(value)
				_G.SelectLocalTeleportSea = value
			end
		})
		
		NewEvent:AddToggle({
			Name = "Teleport to The Selected Sea\nเทเลพอร์ตไปยังทะเลที่เลือกไว้",
			Flag = "TeleporttoTheSelectedSea",
			Value = _G.TeleportSea,
			Callback  = function(value)
			_G.TeleportSea = value
			local Boat = game.Workspace.Boats[SelectBoat]
			if _G.TeleportSea then
				repeat wait()
					if _G.SelectLocalTeleportSea == "Sea1[Low]" then
						tweenModel(Boat, CFrame.new(-22526.0098, -0.3221744, 1716.89185, -0.210707203, 1.100981e-07, 0.977549195, 2.74631451e-09, 1, -1.12034698e-07, -0.977549195, -2.09218598e-08, -0.210707203))
				elseif _G.SelectLocalTeleportSea == "Sea2[Medium]" then
						tweenModel(Boat, CFrame.new(-25645.3535, -0.3221744, 2554.41016, -0.334876329, -5.05522451e-08, 0.942262113, -3.13346469e-08, 1, 4.25136619e-08, -0.942262113, -1.52886308e-08, -0.334876329))
				elseif _G.SelectLocalTeleportSea == "Sea3[High]" then
						tweenModel(Boat, CFrame.new(-29842.2227, -0.3221744, 4070.85767, -0.270609587, 3.60968606e-08, 0.962689161, -4.47193429e-08, 1, -5.00663617e-08, -0.962689161, -5.65992657e-08, -0.270609587))
				elseif _G.SelectLocalTeleportSea == "Sea4[Extreme]" then
						tweenModel(Boat, CFrame.new(-32654.7188, -0.3221744, 4788.14697, -0.183276221, 2.0033232e-08, 0.983061433, 3.66669433e-08, 1, -1.35424418e-08, -0.983061433, 3.35638504e-08, -0.183276221))
				elseif _G.SelectLocalTeleportSea == "Sea5[Crazy]" then
						tweenModel(Boat, CFrame.new(-37813.6953, -0.3221744, 6105.16895, -0.252362996, 4.13621581e-09, 0.967632651, 2.87320709e-08, 1, 3.21888249e-09, -0.967632651, 2.86144175e-08, -0.252362996))
				elseif _G.SelectLocalTeleportSea == "Sea6[???]" then
						tweenModel(Boat, CFrame.new(-42250.2227, -0.3221744, 9247.07715, -0.45916447, 6.39043236e-08, 0.888351262, -3.36711423e-08, 1, -8.93395651e-08, -0.888351262, -7.09333605e-08, -0.45916447))
					end
				until not _G.TeleportSea
		  end
	  end})
	  NewEvent:AddToggle({
		Name = "StopBoat\nหยุดเรือ",
		Flag = "StopBoat",
		Value = _G.stpboat,
		Callback = function(value)
			_G.stpboat = value
			local Boatstop = game.Workspace.Boats[SelectBoat]
			tweenModel(Boatstop, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
			while _G.stpboat do wait()
			   StopBoatF()
			end
		end})

        NewEvent:AddToggle({
            Name = "Increase Boat Speed\nเพิ่มความเร็วเรือ",
            Flag = "IncreaseBoatSpeed",
            Value = _G.increaseboatspeed,
            Callback = function(value)
                _G.increaseboatspeed = value
                local vehicleSeats = {}
                for i, v in pairs(game.Workspace.Boats:GetDescendants()) do
                    if v:IsA("VehicleSeat") then
                        table.insert(vehicleSeats, v)
                    end
                end
                if _G.increaseboatspeed then
                    for _, v in pairs(vehicleSeats) do
                        v.MaxSpeed = 350
                    end
                else
                    for _, v in pairs(vehicleSeats) do
                        v.MaxSpeed = 100
                    end
                end
            end})
            NewEvent:AddToggle({
                Name = "AutoSail\nออโต้ขับเรือ",
                Flag = "AutoSail",
                Value = _G.AutoSail,
                Callback = function(value)
                    _G.AutoSail = value
                    while _G.AutoSail do task.wait(0)
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.W,false,game)
                    end
                end})
                NewEvent:AddToggle({
                    Name = "Boat Noclip Rock\nเรือทะลุหิน",
                    Flag = "NoclipRock",
                    Value = _G.Nocliprock,
                    Callback = function(value)
                        _G.Nocliprock = value
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
                    end})
                    NewEvent:AddToggle({
                        Name = "Teleport To NearyShip\nเทเลพอร์ตไปหาเรือใกล้เคือง",
                        Flag = "TptoNearyShip",
                        Value = _G.TPTOBOAT,
                        Callback = function(value)
                            _G.TPTOBOAT = value
                            while task.wait() do
                                if _G.TPTOBOAT then
                                    for i, v in pairs(game.Workspace.Boats[SelectBoat]:GetChildren()) do
                                        if v:IsA("VehicleSeat")  then  --and  localPlayerr.Name == game.Workspace.Boats[SelectBoat].Owner.Value.Name
                                            if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1000 then
                                                repeat
                                                    task.wait()
                                                    local CFrame = v.CFrame
                                                    twoboat(CFrame)
                                                until (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 5 or not _G.TPTOBOAT
                                            end
                                        end
                                    end
                                end
                            end
                        end})
						NewEvent:AddLabelX({Name = "Event"})
                        NewEvent:AddToggle({
                            Name = "Auto Kill Mon Event{Beta}\nออโต้ฆ่ามอนอีเว้นท์ทะเล{ทดลอง}",
                            Flag = "AutoKillMonEvent",
                            Value = _G.AutoEvent,
                            Callback = function(value)
                                _G.AutoEvent = value
                                spawn(function()
                                    while wait() do 
                                        if _G.AutoEvent then 
                                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if string.find(v.Name, "Fish Crew Member") or string.find(v.Name, "Piranha") or string.find(v.Name,"Shark") or string.find(v.Name , "Terror") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then 
                                                    if v.Humanoid.Health > 0 then 
                                                        repeat
                                                            game:GetService("RunService").Heartbeat:wait()
                                                            EquipWeapon(_G.Select_Weapon)
                                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                                local args = {
                                                                    [1] = "Buso"
                                                                }
                                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                            end
                                                            PosMon = v.HumanoidRootPart.CFrame
                                                            v.Head.CanCollide = false
                                                            v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                                                            FastAttack = true
                                                            toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                            if not FastAttack then
                                                                game:GetService 'VirtualUser':CaptureController()
                                                                game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                            end
                                                            PosMon = v.HumanoidRootPart.CFrame
                                                        until not _G.AutoEvent or not v.Parent or v.Humanoid.Health == 0 or not game.Workspace.Enemies:FindFirstChild(v.Name) 
                                                    end
                                                end
                                            end
										end
                                    end
                                end)
                            end})

                            NewEvent:AddToggle({
                                Name = "Accept Quest Kill 20 Sharks{Beta}\nรับเควสฆ่าฉลาม{ทดลอง}",
                                Flag = "AcceptQuestKill20Sharks{Beta}",
                                Value = _G.QRepairBoat,
                                Callback = function(value)
                                    _G.QRepairBoat = value
                                    spawn(function()
                                        while wait() do
                                            if _G.QRepairBoat then
                                            repeat wait() toTarget(CFrame.new(-16529.4922, 75.8897476, 310.603882, -0.292773664, -7.61506485e-08, -0.956181765, -4.15630765e-08, 1, -6.69141258e-08, 0.956181765, 2.01511625e-08, -0.292773664)) until (Vector3.new(-16529.4922, 75.8897476, 310.603882, -0.292773664, -7.61506485e-08, -0.956181765, -4.15630765e-08, 1, -6.69141258e-08, 0.956181765, 2.01511625e-08, -0.292773664) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 or not _G.QRepairBoat
                                            local args = {
                                                [1] = "Shipwright"
                                            }
                                
                                            game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RF/InteractSubclassQuest"):InvokeServer(unpack(args))
                                            wait(1)
                                            local args = {
                                                [1] = "Shipwright"
                                            }
                                
                                            game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RF/StartSubclassQuest"):InvokeServer(unpack(args))
                                            wait(1)
                                            local args = {
                                                [1] = "Shipwright"
                                            }
                                
                                            game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RF/InteractSubclassQuest"):InvokeServer(unpack(args))
                                            if _G.Mode == "English" then 
                                                Vec("<Color=Red>English Version\n:Kill 20 sharks:<Color=/>")
                                            else
                                                Vec("<Color=Red>เวอร์ชั่นภาษาไทย\n:ฆ่าฉลาม 20 ตัว,<Color=/>")
                                            end
                                            wait(1)
                                            repeat wait()  toTarget(CFrame.new(-16931.9766, 9.08636189, 444.637634, 0.247219667, 3.04388195e-08, 0.968959451, -2.25711698e-08, 1, -2.56551314e-08, -0.968959451, -1.55280944e-08, 0.247219667)) until  (Vector3.new(-16931.9766, 9.08636189, 444.637634, 0.247219667, 3.04388195e-08, 0.968959451, -2.25711698e-08, 1, -2.56551314e-08, -0.968959451, -1.55280944e-08, 0.247219667) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 or not _G.QRepaiBoat
                                          
                                            end
                                        end
                                    end)
                                end})

                                NewEvent:AddToggle({
                                    Name = "Click After Kill 20 Shark{Beta}\nกดหลังจากฆ่าฉลาม20ตัว{ทดลอง}",
                                    Flag = "ClickAfterKill20Shark{Beta}",
                                    Value = _G.QRepairBoat2,
                                    Callback = function(value)
                                        _G.QRepairBoat2 = value
                                        spawn(function()
                                            while wait() do
                                                if _G.QRepairBoat2 then
                                                    repeat wait() toTarget(CFrame.new(-16529.4922, 75.8897476, 310.603882, -0.292773664, -7.61506485e-08, -0.956181765, -4.15630765e-08, 1, -6.69141258e-08, 0.956181765, 2.01511625e-08, -0.292773664)) until (Vector3.new(-16529.4922, 75.8897476, 310.603882, -0.292773664, -7.61506485e-08, -0.956181765, -4.15630765e-08, 1, -6.69141258e-08, 0.956181765, 2.01511625e-08, -0.292773664) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 or not _G.QRepairBoat2
                                                local args = {
                                                    [1] = "Shipwright"
                                                }
                                    
                                                game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RF/InteractSubclassQuest"):InvokeServer(unpack(args))
                                    
                                                local args = {
                                                    [1] = "Shipwright"
                                                }
                                    
                                                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SubclassNetwork"):WaitForChild("PurchaseSubclass"):InvokeServer(unpack(args))
                                    
                                                local args = {
                                                    [1] = "Shipwright"
                                                }
                                    
                                                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SubclassNetwork"):WaitForChild("EquipSubclass"):InvokeServer(unpack(args))
                                                end
                                            end
                                        end)
                                    end})

                                    NewEvent:AddToggle({
                                        Name = "Farm-WoodPlank{Beta}\nฟาร์มไม้{ทดลอง}",
                                        Flag = "FarmWoodPlank{Beta}",
                                        Value = _G.WoodPlank,
                                        Callback = function(value)
                                            _G.WoodPlank = value
                                        spawn(function()
                                            while wait() do
                                                if _G.WoodPlank then
                                                toTarget(CFrame.new(-16484.3125, 527.77948, 476.465302, 0.314159244, -2.17963532e-08, 0.949370325, -1.05681153e-08, 1, 2.64558757e-08, -0.949370325, -1.83444122e-08, 0.314159244) * CFrame.new(0,0,10))
                                                wait(1)
                                                toTarget(CFrame.new(-16597.0312, 527.77948, 482.512787, 0.203417599, 1.26229915e-08, 0.979092062, 1.91620697e-09, 1, -1.32906619e-08, -0.979092062, 4.57969751e-09, 0.203417599) * CFrame.new(0,0,10))
                                                wait(1)
                                                toTarget(CFrame.new(-16690.9844, 527.77948, 339.35199, -0.0264198873, 3.29540164e-08, 0.999650955, 9.8076347e-09, 1, -3.27063141e-08, -0.999650955, 8.94011354e-09, -0.0264198873) * CFrame.new(0,0,10))
                                                wait(1)
                                                toTarget(CFrame.new(-16425.9297, 527.77948, 319.027832, 0.369603723, -9.8490041e-08, 0.929189503, 7.75970719e-08, 1, 7.51298614e-08, -0.929189503, 4.43341115e-08, 0.369603723) * CFrame.new(0,0,10))
                                                wait(1)
                                                end
                                            end
                                        end)
                                    end})
                                    spawn(function()
                                        while wait() do
                                            if _G.WoodPlank then
                                                    repeat wait()
                                                        for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                                            if v.ToolTip == "Melee" then
                                                                if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                                                    EquipWeapon(v.Name)
                                                                end
                                                            end
                                                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                                                            wait(0.2)
                                                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                                                            wait(0.2)
                                                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                                                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                                                                if v.ToolTip == "Sword" then
                                                                    if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                                                        EquipWeapon(v.Name)
                                                                    end
                                                                end
                                                            end
                                                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                                                            wait(0.2)
                                                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                                                            for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                                                if v.ToolTip == "Blox Fruit" then
                                                                    if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                                                        EquipWeapon(v.Name)
                                                                    end
                                                                end
                                                            end
                                                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                                                            wait(0.2)
                                                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                                                            wait(0.2)
                                                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                                                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                                                            wait(0.2)
                                                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"F",false,game)
                                                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"F",false,game)
                                                            wait(0.2)
                                                        until not _G.WoodPlank
                                                    end
                                                end
                                            end)

											local ShopTab = PepsisWorld:CreateTab({
												Name = "Shop"
											})
										
											local Shop = ShopTab:CreateSection({
												Name = "Shop",
												Side = "Right"
											})
											Shop:AddLabelX({
												Name = "Ability Shop"
											})
											Shop:AddButton({
												Name = "Buy Geppo",
												Callback = function()
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
												end
											})
											
											Shop:AddButton({
												Name = "Buy Buso Haki",
												Callback = function()
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
												end
											})
											
											Shop:AddButton({
												Name = "Buy Soru",
												Callback = function()
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
												end
											})
											
											Shop:AddButton({
												Name = "Buy Ken Haki",
												Callback = function()
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
												end
											})
											Shop:AddLabelX({
												Name = "Fighting Style Shop"
											})
											
											Shop:AddButton({
												Name = "Buy Black Leg",
												Callback = function()
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
												end
											})
											
											Shop:AddButton({
												Name = "Buy Electro",
												Callback = function()
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
												end
											})
											
											Shop:AddButton({
												Name = "Buy Fishman Karate",
												Callback = function()
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
												end
											})
											
											Shop:AddButton({
												Name = "Buy DragonClaw",
												Callback = function()
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
												end
											})
											
											Shop:AddButton({
												Name = "Buy SuperHuman",
												Callback = function()
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
												end
											})
											
											Shop:AddButton({
												Name = "Buy Death Step",
												Callback = function()
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
												end
											})
											
											Shop:AddButton({
												Name = "Buy Sharkman Karate",
												Callback = function()
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
												end
											})
											
											Shop:AddButton({
												Name = "Buy Electric Claw",
												Callback = function()
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
												end
											})
											
											Shop:AddButton({
												Name = "Buy Dragon Talon",
												Callback = function()
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
												end
											})
											
											Shop:AddButton({
												Name = "Buy God Human",
												Callback = function()
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
												end
											})
										
											Shop:AddButton({
												Name = "Buy SanguineArt",
												Callback = function()
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt", true)
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
												end
											})
											local Shop2 = ShopTab:CreateSection({
												Name = "Shop",
												Side = "Left"
											})
											Shop2:AddLabelX({
												Name = "Race"
											})
											Shop2:AddButton({
												Name = "Buy Race Ghoul",
												Callback = function()
													local args = {
														[1] = "Ectoplasm",
														[2] = "BuyCheck",
														[3] = 4
													}
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
													local args = {
														[1] = "Ectoplasm",
														[2] = "Change",
														[3] = 4
													}
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
												end
											})
											
											Shop2:AddButton({
												Name = "Buy Cyborg",
												Callback = function()
													local args = {
														[1] = "CyborgTrainer",
														[2] = "Buy"
													}
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
												end
											})
											
											Shop2:AddButton({
												Name = "Buy Random Race",
												Callback = function()
													local args = {
														[1] = "BlackbeardReward",
														[2] = "Reroll",
														[3] = "2"
													}
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
												end
											})
											
											Shop2:AddButton({
												Name = "Buy Reset Stats",
												Callback = function()
													local args = {
														[1] = "BlackbeardReward",
														[2] = "Refund",
														[3] = "2"
													}
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
												end
											})
											Shop2:AddLabelX({
												Name = "Accessory Shop"
											})
											
											Shop2:AddButton({
												Name = "Buy Tomoe Ring",
												Callback = function()
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Tomoe Ring")
												end
											})
											
											Shop2:AddButton({
												Name = "Buy Black Cape",
												Callback = function()
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Black Cape")
												end
											})
											
											Shop2:AddButton({
												Name = "Buy Swordsman Hat",
												Callback = function()
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Swordsman Hat")
												end
											})
											
											Shop2:AddLabelX({
												Name = "Sword Shop"
											})
											
											Shop2:AddButton({
												Name = "Buy Cutlass",
												Callback = function()
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
												end
											})
											
											Shop2:AddButton({
												Name = "Buy Katana",
												Callback = function()
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
												end
											})
											
											Shop2:AddButton({
												Name = "Buy Iron Mace",
												Callback = function()
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
												end
											})
											
											Shop2:AddButton({
												Name = "Buy Duel Katana",
												Callback = function()
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
												end
											})
											
											Shop2:AddButton({
												Name = "Buy Duel Katana",
												Callback = function()
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
												end
											})
											
											Shop2:AddButton({
												Name = "Buy Triple Katana",
												Callback = function()
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
												end
											})
											
											Shop2:AddButton({
												Name = "Buy Pipe",
												Callback = function()
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
												end
											})
											
											Shop2:AddButton({
												Name = "Buy Dual-Headed Blade",
												Callback = function()
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
												end
											})
											
											Shop2:AddButton({
												Name = "Buy Bisento",
												Callback = function()
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
												end
											})
											
											Shop2:AddButton({
												Name = "Buy Soul Cane",
												Callback = function()
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
												end
											})
											Shop:AddLabelX({
												Name = "Gun Shop"
											})
											
											Shop:AddButton({
												Name = "Buy Slingshot",
												Callback = function()
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
												end
											})
											
											Shop:AddButton({
												Name = "Buy Musket",
												Callback = function()
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
												end
											})
											
											Shop:AddButton({
												Name = "Buy Flintlock",
												Callback = function()
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
												end
											})
											
											Shop:AddButton({
												Name = "Buy Refined Flintlock",
												Callback = function()
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
												end
											})
											
											Shop:AddButton({
												Name = "Buy Cannon",
												Callback = function()
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
												end
											})
											
											Shop:AddButton({
												Name = "Buy Kabucha",
												Callback = function()
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
												end
											})
											
	local Misc = PepsisWorld:CreateTab({
		Name = "Misc"
	})
	local MiscSection = Misc:CreateSection({
		Name = "Player Misc",
		Side = "Right"
	})
	
	
	MiscSection:AddButton({Name = "Function Fly\nฟังก์ชั่นบิน",Callback = function()
		Fly()
		end})

		MiscSection:AddToggle{
			Name = "Auto Click\nออโต้คลิก",
			Flag = "AutoClick",
			Value = _G.Settings.No_clip,
			Callback  = function(value)
				_G.click = value
			end}
			spawn(function()
			game:GetService("RunService").RenderStepped:Connect(function()
				if _G.click then
					 pcall(function()
						game:GetService'VirtualUser':CaptureController()
						game:GetService'VirtualUser':Button1Down(Vector2.new(0,1,0,1))
					end)
				end
			end)
		end)

		MiscSection:AddToggle{
			Name = "Remove Fog\nลบหมอก",
			Flag = "No_clip",
			Value = _G.Settings.No_clip,
			Callback  = function(value)
				_G.Remove_Fog = value
			while wait() do
				if _G.Remove_Fog then
					game:GetService("Lighting").FogEnd = 9e99
				else
					game:GetService("Lighting").FogEnd = 1500
				end
			end			
			end
		}

	MiscSection:AddToggle{
		Name = "No Clip\nตัวทะลุ",
		Flag = "No_clip",
		Value = _G.Settings.No_clip,
		Callback  = function(value)
			_G.No_clip = value
			_G.Settings.No_clip = value
			SaveSettings()
		end
	}
	
	spawn(function()
		pcall(function()
			game:GetService("RunService").Stepped:Connect(function()
				if _G.No_clip then
					for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
						if v:IsA("BasePart") then
							v.CanCollide = false    
						end
					end
				end
			end)
		end)
	end)
	
	MiscSection:AddToggle{
		Name = "Walk On Water\nเดินบนน้ำ",
		Flag = "Walk_On_Water",
		Value = _G.WalkWater,
		Callback  = function(value)
			_G.WalkWater = value
		end
	}
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

	function InfAbility()
		if _G.InfAbility then
			if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
				local inf = Instance.new("ParticleEmitter")
				inf.Acceleration = Vector3.new(0, 0, 0)
				inf.Archivable = true
				inf.Drag = 20
				inf.EmissionDirection = Enum.NormalId.Top
				inf.Enabled = true
				inf.Lifetime = NumberRange.new(0.2, 0.2)
				inf.LightInfluence = 0
				inf.LockedToPart = true
				inf.Name = "Agility"
				inf.Rate = 500
				local numberKeypoints2 = {
					NumberSequenceKeypoint.new(0, 0),
					NumberSequenceKeypoint.new(1, 4),
				}
				inf.Size = NumberSequence.new(numberKeypoints2)
				inf.RotSpeed = NumberRange.new(999, 9999)
				inf.Rotation = NumberRange.new(0, 0)
				inf.Speed = NumberRange.new(30, 30)
				inf.SpreadAngle = Vector2.new(360, 360)
				inf.Texture = "rbxassetid://243098098"
				inf.VelocityInheritance = 0
				inf.ZOffset = 2
				inf.Transparency = NumberSequence.new(0)
				inf.Color = ColorSequence.new(Color3.fromRGB(0, 255, 255), Color3.fromRGB(0, 255, 255))
				inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
			end
		else
			if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
				game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
			end
		end
		end

		MiscSection:AddToggle{
			Name = "Infinit Ability\nความสามารถไม่จำกัด",
			Flag = "Infinit_Ability",
			Value = _G.InfAbility,
			Callback  = function(value)
				_G.InfAbility = value
				InfAbility()
			end
		}

	MiscSection:AddToggle{
		Name = "Infinit Energy\nพลังงานไม่จำกัด",
		Flag = "Infinit_Energy",
		Value = _G.Settings.Infinit_Energy,
		Callback  = function(value)
			_G.Infinit_Energy = value
			_G.Settings.Infinit_Energy = value
			SaveSettings()
			InfinitEnergy()
		end
	}
	
	MiscSection:AddToggle{
		Name = "Dodge No CoolDown\nเดินชมจันทร์ไม่จำกัด",
		Flag = "Dodge_No_CoolDown",
		Value = _G.Settings.Dodge_No_CoolDown,
		Callback  = function(value)
			_G.Dodge_No_CoolDown = value
			_G.Settings.Dodge_No_CoolDown = value
			SaveSettings()
			DodgeNoCoolDown()
		end
	}
	
	
	MiscSection:AddToggle({
		Name = "Infinit Soru\nโซลไม่จำกัด",
		Callback = function(Value)
			_G.Infinit_Inf_Soru = Value
			_G.Settings.Infinit_Inf_Soru = value
			SaveSettings()
		end	
	})
	
	spawn(function()
		while wait() do
			pcall(function()
				if _G.Infinit_Inf_Soru and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil  then
					for i,v in next, getgc() do
						if game:GetService("Players").LocalPlayer.Character.Soru then
							if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Soru then
								for i2,v2 in next, getupvalues(v) do
									if typeof(v2) == "table" then
										repeat wait(.1)
											v2.LastUse = 0
										until not Value or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0
									end
								end
							end
						end
					end
				end
			end)
		end
	end)
	local MiscSection1 = Misc:CreateSection({
		Name = "Player Misc",
		Side = "Left"
	})
	MiscSection1:AddLabelX({
		Name = "Team"
	})
	MiscSection1:AddButton({
			Name = "Join Pirates Team\nเข้ามร่วมทีมโจรสลัด",
			Callback = function()
				local args = {
					[1] = "SetTeam",
					[2] = "Pirates"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
				local args = {
					[1] = "BartiloQuestProgress"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end
		})
		
		MiscSection1:AddButton({
			Name = "Join Marines Team\nเข้าร่วมทีมทหารเรือ",
			Callback = function()
				local args = {
					[1] = "SetTeam",
					[2] = "Marines"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				local args = {
					[1] = "BartiloQuestProgress"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end
		})
		MiscSection1:AddLabelX({
			Name = "Server"
		})
		MiscSection1:AddButton({
			Name = "Rejoin\nรีเซิฟเวอร์",
			Callback = function()
				local ts = game:GetService("TeleportService")
				local p = game:GetService("Players").LocalPlayer
				ts:Teleport(game.PlaceId, p)
			end
		})
		
		MiscSection1:AddButton({
			Name = "Sever Hop\nย้ายไปเซิฟคนเยอะ",
			Callback = function()
				Hop()
			end
		})
		
		MiscSection1:AddLabelX({
			Name = "GUI"
		})
		MiscSection1:AddButton({
			Name = "Devil Fruit Shop\nเปิดหน้าต่างร้านค้าผลปีศาจ",
			Callback = function()
				local args = {
					[1] = "GetFruits"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				game.Players.localPlayer.PlayerGui.Main.FruitShop.Visible = true
			end
		})
		
		MiscSection1:AddButton({
			Name = "Title Name\nเปิดหน้าต่างฉายา",
			Callback = function()
				local args = {
					[1] = "getTitles"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
			end
		})
		
		MiscSection1:AddButton({
			Name = "Color Haki\nเปิดหน้าต่างสีฮาคิ",
			Callback = function()
				game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
			end
		})

		MiscSection1:AddButton({
			Name = "Awakened Skill\nเปิดหน้าต่างสกิลตื่",
			Callback = function()
				local args = {
					[1] = "getAwakenedAbilities"
				}
				
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				game.Players.LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
			end
		})

MiscSection1:AddButton({
	Name = "FPS Boost\nบูสต์Fps",
	Callback = function()
		setfpscap(120)
		local decalsyeeted = true
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
	end
})
local TPS = game:GetService("TeleportService")
local LP = game:GetService("Players").LocalPlayer
local Job = game.JobId

MiscSection1:AddTextbox({
	Name = "Jop ID",
	Value = "",
	Callback = function(v)
		JobId_Textbox = v
	end
})

MiscSection1:AddButton({
	Name = "TP Jop ID\nเทเลพอร์ตไปที่ JobID",
	Callback = function(v)
		TPS:TeleportToPlaceInstance(game.PlaceId, JobId_Textbox, LP)
	end
})

MiscSection1:AddButton({
	Name = "Copy Jop ID\nก็อปปี้ JobID",
	Callback = function(v)
		setclipboard(Job)
	end
})


function kaituncap()
	local UserInputService = game:GetService("UserInputService")
	local TweenService = game:GetService("TweenService")
	local RunService = game:GetService("RunService")
	local LocalPlayer = game:GetService("Players").LocalPlayer
	local Mouse = LocalPlayer:GetMouse()
	
	do
		local ui = game:GetService("Lighting"):FindFirstChild("Blur")
		if ui then ui:Destroy() end
	end
	
	local Blur = Instance.new("BlurEffect")
	
	TweenService:Create(
		Blur,
		TweenInfo.new(.4, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
		{ Size = 50 }
	):Play()
	Blur.Parent = game.Lighting
	
	local UIStroke = Instance.new("UIStroke")
	local UICorner = Instance.new("UICorner")
	
	local ScreenGui = Instance.new("ScreenGui")
	local ImageButton = Instance.new("ImageButton")
	local RobloxButton = Enum.ButtonStyle.RobloxButton
	
	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	
	
	local cac = require(game:GetService("Players").LocalPlayer.PlayerGui.Main.UIController.Inventory)
	local Inventory = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")
	local Items = {}
	local RaityLevel = { "Mythical", "Legendary", "Rare", "Uncommon", "Common" }
	local RaityColor = {
		["Common"] = Color3.fromRGB(179, 179, 179),
		["Uncommon"] = Color3.fromRGB(92, 140, 211),
		["Rare"] = Color3.fromRGB(140, 82, 255),
		["Legendary"] = Color3.fromRGB(213, 43, 228),
		["Mythical"] = Color3.fromRGB(238, 47, 50)
	}
	function GetRaity(color)
		for k, v in pairs(RaityColor) do
			if v == color then return k end
		end
	end
	
	for k, v in pairs(Inventory) do
		Items[v.Name] = v
	end
	
	local total = #getupvalue(cac.UpdateRender, 4)
	local rac = {}
	local allitem = {}
	local total2 = 0
	while total2 < total do
		local i = 0
		while i < 25000 and total2 < total do
			game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.CanvasPosition =
				Vector2.new(0, i)
			for k, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.Frame:GetChildren()) do
				if v:IsA("Frame") and not rac[v.ItemName.Text] and v.ItemName.Visible == true then
					local vaihuhu = GetRaity(v.Background.BackgroundColor3)
					if vaihuhu then
						if not allitem[vaihuhu] then
							allitem[vaihuhu] = {}
						end
						table.insert(allitem[vaihuhu], v:Clone())
					end
					total2 = total2 + 1
					rac[v.ItemName.Text] = true
				end
			end
			i = i + 20
		end
		task.wait()
	end
	function GetXY(vec)
		return vec * 100
	end
	
	local tvk = Instance.new("UIListLayout")
	tvk.FillDirection = Enum.FillDirection.Vertical
	tvk.SortOrder = 2
	tvk.Padding = UDim.new(0, 10)
	
	local Left = Instance.new("Frame", game.Players.LocalPlayer.PlayerGui.BubbleChat)
	Left.BackgroundTransparency = 1
	Left.Size = UDim2.new(.5, 0, 1, 0)
	tvk.Parent = Left
	
	local Right = Instance.new("Frame", game.Players.LocalPlayer.PlayerGui.BubbleChat)
	Right.BackgroundTransparency = 1
	Right.Size = UDim2.new(.5, 0, 1, 0)
	Right.Position = UDim2.new(.6, 0, 0, 0)
	tvk:Clone().Parent = Right
	for k, v in pairs(allitem) do
		local cac = Instance.new("Frame", Left)
		cac.BackgroundTransparency = 1
		cac.Size = UDim2.new(1, 0, 0, 0)
		cac.LayoutOrder = table.find(RaityLevel, k)
	
		local cac2 = Instance.new("Frame", Right)
		cac2.BackgroundTransparency = 1
		cac2.Size = UDim2.new(1, 0, 0, 0)
		cac2.LayoutOrder = table.find(RaityLevel, k)
	
		local tvk = Instance.new("UIGridLayout", cac)
		tvk.CellPadding = UDim2.new(.005, 0, .005, 0)
		tvk.CellSize = UDim2.new(0, 70, 0, 70)
		tvk.FillDirectionMaxCells = 100
		tvk.FillDirection = Enum.FillDirection.Horizontal
	
		local ccc = tvk:Clone()
		ccc.Parent = cac2
		for k, v in pairs(v) do
			if Items[v.ItemName.Text] and Items[v.ItemName.Text].Mastery then
				if v.ItemLine2.Text ~= "Accessory" then
					local bucac                  = v.ItemName:Clone()
					bucac.BackgroundTransparency = 1
					bucac.TextSize               = 10
					bucac.TextXAlignment         = 2
					bucac.TextYAlignment         = 2
					bucac.ZIndex                 = 5
					bucac.Text                   = Items[v.ItemName.Text].Mastery
					bucac.Size                   = UDim2.new(.5, 0, .5, 0)
					bucac.Position               = UDim2.new(.5, 0, .5, 0)
					bucac.Parent                 = v
				end
				v.Parent = cac
			elseif v.ItemLine2.Text == "Blox Fruit" then
				v.Parent = cac2
			end
		end
		cac.AutomaticSize = 2
		cac2.AutomaticSize = 2
	end
	local ListHuhu = {
		["Superhuman"] = Vector2.new(3, 2),
		["DeathStep"] = Vector2.new(4, 3),
		["ElectricClaw"] = Vector2.new(2, 0),
		["SharkmanKarate"] = Vector2.new(0, 0),
		["DragonTalon"] = Vector2.new(1, 5)
	}
	local MeleeG = Instance.new("Frame", Left)
	MeleeG.BackgroundTransparency = 1
	MeleeG.Size = UDim2.new(1, 0, 0, 0)
	MeleeG.LayoutOrder = table.find(RaityLevel, k)
	MeleeG.AutomaticSize = 2
	MeleeG.LayoutOrder = 100
	local tvk = Instance.new("UIGridLayout", MeleeG)
	tvk.CellPadding = UDim2.new(.005, 0, .005, 0)
	tvk.CellSize = UDim2.new(0, 70, 0, 70)
	tvk.FillDirectionMaxCells = 100
	tvk.FillDirection = Enum.FillDirection.Horizontal
	
	local cac = { "Superhuman", "ElectricClaw", "DragonTalon", "SharkmanKarate", "DeathStep", "GodHuman" }
	for k, v in pairs(cac) do
		if ListHuhu[v] and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buy" .. v, true) == 1 then
			local huhu = Instance.new("ImageLabel", MeleeG)
			huhu.Image = "rbxassetid://9945562382"
			huhu.ImageRectSize = Vector2.new(100, 100)
			huhu.ImageRectOffset = ListHuhu[v] * 100
		end
	end
	function formatNumber(v)
		return tostring(v):reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
	end
	
	game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.AnchorPoint = Vector2.new(0.5, 0.5)
	game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.Position = UDim2.new(0, 1120, 0, 700)
	
	game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.AnchorPoint = Vector2.new(0.5, 0.5)
	game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Position = UDim2.new(0, 1150, 0, 750)
	local Name = game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone()
	Name.Name = "Name"
	Name.Parent = game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli
	Name.Position = UDim2.new(0, 0, -1.5, 0)
	Name.Size = UDim2.new(1, 0, 1, 0)
	Name.TextColor3 = Color3.fromRGB(255, 255, 255)
	Name.Text = game.Players.LocalPlayer.Name
	
	local Fragments = game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone()
	Fragments.Name = "FragmentsCheck"
	Fragments.Parent = game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli
	Fragments.Position = UDim2.new(0, 0, -0.75, 0)
	Fragments.Size = UDim2.new(1, 0, 1, 0)
	Fragments.Text = 'ƒ' .. formatNumber(game:GetService("Players").LocalPlayer.Data.Fragments.Value)
	local args = {
		[1] = "getAwakenedAbilities"
	}
	
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	game.Players.LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
	game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Position = UDim2.new(0.48, 10, 0.908, 2)
	game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Size = UDim2.new(1, 0, 0.22, 0)
	
	
	pcall(function()
		game:GetService("Players").LocalPlayer.PlayerGui.Main.MenuButton.Visible = false
	end)
	pcall(function()
		game:GetService("Players").LocalPlayer.PlayerGui.Main.RaceEnergy.Visible = false
	end)
	pcall(function()
		game:GetService("Players").LocalPlayer.PlayerGui.Main.SafeZone.Visible = false
	end)
	pcall(function()
		game:GetService("Players").LocalPlayer.PlayerGui.Main.HP.Visible = false
	end)
	pcall(function()
		game:GetService("Players").LocalPlayer.PlayerGui.Backpack.Enabled.Visible = false
	end)
	pcall(function()
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Energy.Visible = false
	end)
	for k, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main:GetChildren()) do
		if v:IsA("ImageButton") then
			v:Destroy()
		end
	end
	pcall(function()
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Compass.Visible = false
	end)
	end
MiscSection1:AddButton({
	Name = "Kaitun Cap\nถ่ายภาพไก่ตัน",
	Callback = function(v)
		kaituncap()
	end
})

Vec("<Color=Yellow>Vector Hub loaded Finished<Color=/>")
	--Vec("<Color=Yellow>:ENG:\n:If the gui doesn't load, use Fluxus in the Executor room:\n:TH:\n:ถ้าหน้าต่างโปรไม่โหลดให้ใช้ Fluxus ที่ผมแจกในห้อง Executor:<Color=/>")
else
	game.Players.LocalPlayer:Kick("..")
end