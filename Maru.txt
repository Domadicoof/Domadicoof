
wait(1)

if game.PlaceId == 2753915549 or game.PlaceId == 4442272183 or game.PlaceId == 7449423635 then
	local create = loadstring(game:HttpGet("https://raw.githubusercontent.com/cafehepho300/MaruCrack/main/Theme"))()
	
	local Window = create:Win("Maru Hub Premium Script")
	local Tap1 = Window:Taps("General")
    local Tap4 = Window:Taps("Combat")
	local Tap2 = Window:Taps("Stats")
	local Tap3 = Window:Taps("Teleport & Buy")
	local Tap5 = Window:Taps("Dungeon")
	local Tap6 = Window:Taps("Misc")
	
	local page1 = Tap1:newpage()
	local page2 = Tap1:newpage()
	local page3 = Tap2:newpage()
	local page4 = Tap2:newpage()
	local page5 = Tap3:newpage()
	local page6 = Tap3:newpage()
	local page7 = Tap5:newpage()
	local page8 = Tap5:newpage()
	local page9 = Tap4:newpage()
	local page10 = Tap4:newpage()
	local page11 = Tap6:newpage()
	local page12 = Tap6:newpage()
	

spawn(function()
	if _G.HideUi then
		game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
	end
end)

	if not _G.Marine or _G.Pirate then
		spawn(function()
			while wait() do
				if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Visible == true then
					game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Size = UDim2.new(0, 10000, 0, 10000)
					game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Position = UDim2.new(-4, 0, -5, 0)
					game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.BackgroundTransparency = 1
					wait(.5)
					game:GetService'VirtualUser':Button1Down(Vector2.new(99,99))
					game:GetService'VirtualUser':Button1Up(Vector2.new(99,99))
				end     
			end
		end)
	end

	if _G.Marine then
		spawn(function()
			while wait() do
				if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Visible == true then
					game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Size = UDim2.new(0, 10000, 0, 10000)
					game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Position = UDim2.new(-4, 0, -5, 0)
					game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.BackgroundTransparency = 1
					wait(.5)
					game:GetService'VirtualUser':Button1Down(Vector2.new(99,99))
					game:GetService'VirtualUser':Button1Up(Vector2.new(99,99))
				end
			end
		end)
	end

	if _G.Pirate then 
		spawn(function()
			while wait() do
				if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Visible == true then
					game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Size = UDim2.new(0, 10000, 0, 10000)
					game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Position = UDim2.new(-4, 0, -5, 0)
					game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.BackgroundTransparency = 1
					wait(.5)
					game:GetService'VirtualUser':Button1Down(Vector2.new(99,99))
					game:GetService'VirtualUser':Button1Up(Vector2.new(99,99))
				end
			end
		end)
	end

	if _G.FPSBoost then
		spawn(function()
			wait(3)
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
		end)
	end

	local placeId = game.PlaceId
	Magnet = true
	if placeId == 2753915549 then
		OldWorld = true
	elseif placeId == 4442272183 then
		NewWorld = true
	elseif placeId == 7449423635 then
		ThreeWorld = true
	end

	_G.FarmSwiish = true
	spawn(function()
	    while wait() do
		    pcall(function()
			_G.FarmSwiish = true
			wait(3)
			_G.FarmSwiish = false
			wait(3)
			end)
		end
	end)

    spawn(function()
    pcall(function()
        game:GetService("RunService").Heartbeat:Connect(function()
            if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or FarmBoss or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.AutoFarmCandy or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or AutoFarmChest then
                if not game:GetService("Workspace"):FindFirstChild("Sai") then
                    Paertaiteen = Instance.new("Part")
                    Paertaiteen.Name = "Sai"
                    Paertaiteen.Parent = game.Workspace
                    Paertaiteen.Anchored = true
                    Paertaiteen.Transparency = 0
                    Paertaiteen.Size = Vector3.new(30,0.5,30)
                elseif game:GetService("Workspace"):FindFirstChild("Sai") then
                    game.Workspace["Sai"].CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y - 3.30,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                end
            else
                if game:GetService("Workspace"):FindFirstChild("Sai") then
                    game:GetService("Workspace"):FindFirstChild("Sai"):Destroy()
                end
            end
        end)
    end)
    end)

	function Click()
		game:GetService'VirtualUser':CaptureController()
		game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
	end
function CheckQuest()
    local MyLevel = game.Players.LocalPlayer.Data.Level.Value
    if OldWorld then
        if MyLevel == 1 or MyLevel <= 9 then 
            Ms = "Bandit [Lv. 5]"
            NaemQuest = "BanditQuest1"
            LevelQuest = 1
            NameMon = "Bandit"
            CFrameQuest = CFrame.new(1061.66699, 16.5166187, 1544.52905)
            PosQuest = Vector3.new(1061.66699, 16.5166187, 1544.52905)
            CFrameMon = CFrame.new(1199.31287, 52.2717781, 1536.91516)
            PosMon = Vector3.new(1199.31287, 52.2717781, 1536.91516)
        elseif MyLevel == 10 or MyLevel <= 14 then 
            Ms = "Monkey [Lv. 14]"
            NaemQuest = "JungleQuest"
            LevelQuest = 1
            NameMon = "Monkey"
            CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732)
            PosQuest = Vector3.new(-1604.12012, 36.8521118, 154.23732)
            CFrameMon = CFrame.new(-1772.4093017578, 60.860641479492, 54.872589111328)
            PosMon = Vector3.new(-1772.4093017578, 60.860641479492, 54.872589111328)
        elseif MyLevel == 15 or MyLevel <= 29 then 
            Ms = "Gorilla [Lv. 20]"
            NaemQuest = "JungleQuest"
            LevelQuest = 2
            NameMon = "Gorilla"
            CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732)
            PosQuest = Vector3.new(-1604.12012, 36.8521118, 154.23732)
            CFrameMon = CFrame.new(-1223.52808, 6.27936459, -502.292664)
            PosMon = Vector3.new(-1223.52808, 6.27936459, -502.292664)
        elseif MyLevel == 30 or MyLevel <= 39 then 
            Ms = "Pirate [Lv. 35]"
            NaemQuest = "BuggyQuest1"
            LevelQuest = 1
            NameMon = "Pirate"
            CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211)
            PosQuest = Vector3.new(-1139.59717, 4.75205183, 3825.16211)
            CFrameMon = CFrame.new(-1219.32324, 4.75205183, 3915.63452)
            PosMon = Vector3.new(-1219.32324, 4.75205183, 3915.63452)
        elseif MyLevel == 40 or MyLevel <= 59 then 
            Ms = "Brute [Lv. 45]"
            NaemQuest = "BuggyQuest1"
            LevelQuest = 2
            NameMon = "Brute"
            CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.1621)
            PosQuest = Vector3.new(-1139.59717, 4.75205183, 3825.1621)
            CFrameMon = CFrame.new(-1146.49646, 96.0936813, 4312.1333)
            PosMon = Vector3.new(-1146.49646, 96.0936813, 4312.1333)
        elseif MyLevel == 60 or MyLevel <= 74 then 
            Ms = "Desert Bandit [Lv. 60]"
            NaemQuest = "DesertQuest"
            LevelQuest = 1
            NameMon = "Desert Bandit"
            CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.9716)
            PosQuest = Vector3.new(897.031128, 6.43846416, 4388.9716)
            CFrameMon = CFrame.new(932.788818, 6.4503746, 4488.24609)
            PosMon = Vector3.new(932.788818, 6.4503746, 4488.24609)
        elseif MyLevel == 75 or MyLevel <= 89 then 
            Ms = "Desert Officer [Lv. 70]"
            NaemQuest = "DesertQuest"
            LevelQuest = 2
            NameMon = "Desert Officer"
            CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.9716)
            PosQuest = Vector3.new(897.031128, 6.43846416, 4388.9716)
            CFrameMon = CFrame.new(1580.03198, 4.61375761, 4366.86426)
            PosMon = Vector3.new(1580.03198, 4.61375761, 4366.86426)
        elseif MyLevel == 90 or MyLevel <= 99 then 
            Ms = "Snow Bandit [Lv. 90]"
            NaemQuest = "SnowQuest"
            LevelQuest = 1
            NameMon = "Snow Bandits"
            CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482)
            PosQuest = Vector3.new(1384.14001, 87.272789, -1297.06482)
            CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905)
            PosMon = Vector3.new(1370.24316, 102.403511, -1411.52905)
        elseif MyLevel == 100 or MyLevel <= 119 then 
            Ms = "Snowman [Lv. 100]"
            NaemQuest = "SnowQuest"
            LevelQuest = 2
            NameMon = "Snowman"
            CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482)
            PosQuest = Vector3.new(1384.14001, 87.272789, -1297.06482)
            CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905)
            PosMon = Vector3.new(1370.24316, 102.403511, -1411.52905)
        elseif MyLevel == 120 or MyLevel <= 149 then 
            Ms = "Chief Petty Officer [Lv. 120]"
            NaemQuest = "MarineQuest2"
            LevelQuest = 1
            NameMon = "Chief Petty Officer"
            CFrameQuest = CFrame.new(-5035.0835, 28.6520386, 4325.29443)
            PosQuest = Vector3.new(-5035.0835, 28.6520386, 4325.29443)
            CFrameMon = CFrame.new(-4882.8623, 22.6520386, 4255.53516)
            PosMon = Vector3.new(-4882.8623, 22.6520386, 4255.53516)
        elseif MyLevel == 150 or MyLevel <= 174 then 
            Ms = "Sky Bandit [Lv. 150]"
            NaemQuest = "SkyQuest"
            LevelQuest = 1
            NameMon = "Sky Bandit"
            CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436)
            PosQuest = Vector3.new(-4841.83447, 717.669617, -2623.96436)
            CFrameMon = CFrame.new(-4970.74219, 294.544342, -2890.11353)
            PosMon = Vector3.new(-4970.74219, 294.544342, -2890.11353)
        elseif MyLevel == 175 or MyLevel <= 224 then 
            Ms = "Dark Master [Lv. 175]"
            NaemQuest = "SkyQuest"
            LevelQuest = 2
            NameMon = "Dark Master"
            CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436)
            PosQuest = Vector3.new(-4841.83447, 717.669617, -2623.96436)
            CFrameMon = CFrame.new(-5220.58594, 430.693298, -2278.17456)
            PosMon = Vector3.new(-5220.58594, 430.693298, -2278.17456)
        elseif MyLevel == 225 or MyLevel <= 274 then 
            Ms = "Toga Warrior [Lv. 225]"
            NaemQuest = "ColosseumQuest"
            LevelQuest = 1
            NameMon = "Toga Warrior"
            CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762)
            PosQuest = Vector3.new(-1576.11743, 7.38933945, -2983.30762)
            CFrameMon = CFrame.new(-1779.97583, 44.6077499, -2736.35474)
            PosMon = Vector3.new(-1779.97583, 44.6077499, -2736.35474)
        elseif MyLevel == 275 or MyLevel <= 299 then 
            Ms = "Gladiator [Lv. 275]"
            NaemQuest = "ColosseumQuest"
            LevelQuest = 2
            NameMon = "Gladiato"
            CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762)
            PosQuest = Vector3.new(-1576.11743, 7.38933945, -2983.30762)
            CFrameMon = CFrame.new(-1274.75903, 58.1895943, -3188.16309)
            PosMon = Vector3.new(-1274.75903, 58.1895943, -3188.16309)
        elseif MyLevel == 300 or MyLevel <= 329 then 
            Ms = "Military Soldier [Lv. 300]"
            NaemQuest = "MagmaQuest"
            LevelQuest = 1
            NameMon = "Military Soldier"
            CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998)
            PosQuest = Vector3.new(-5316.55859, 12.2370615, 8517.2998)
            CFrameMon = CFrame.new(-5363.01123, 41.5056877, 8548.47266)
            PosMon = Vector3.new(-5363.01123, 41.5056877, 8548.47266)
        elseif MyLevel == 300 or MyLevel <= 374 then 
            Ms = "Military Spy [Lv. 330]"
            NaemQuest = "MagmaQuest"
            LevelQuest = 2
            NameMon = "Military Spy"
            CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998)
            PosQuest = Vector3.new(-5316.55859, 12.2370615, 8517.2998)
            CFrameMon = CFrame.new(-5787.99023, 120.864456, 8762.25293)
            PosMon = Vector3.new(-5787.99023, 120.864456, 8762.25293)
        elseif MyLevel == 375 or MyLevel <= 399 then 
            Ms = "Fishman Warrior [Lv. 375]"
            NaemQuest = "FishmanQuest"
            LevelQuest = 1
            NameMon = "Fishman Warrior"
            CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504)
            PosQuest = Vector3.new(61122.5625, 18.4716396, 1568.16504)
            CFrameMon = CFrame.new(61163.8515625, 5.3073043823242, 1819.7841796875)
            PosMon = Vector3.new(61163.8515625, 5.3073043823242, 1819.7841796875)
        elseif MyLevel == 400 or MyLevel <= 449 then 
            Ms = "Fishman Commando [Lv. 400]"
            NaemQuest = "FishmanQuest"
            LevelQuest = 2
            NameMon = "Fishman Commando"
            CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504)
            PosQuest = Vector3.new(61122.5625, 18.4716396, 1568.16504)
            CFrameMon = CFrame.new(61163.8515625, 5.3073043823242, 1819.7841796875)
            PosMon = Vector3.new(61163.8515625, 5.3073043823242, 1819.7841796875)
        elseif MyLevel == 450 or MyLevel <= 474 then 
            Ms = "God's Guard [Lv. 450]"
            NaemQuest = "SkyExp1Quest"
            LevelQuest = 1
            NameMon = "God's Guards"
            CFrameQuest = CFrame.new(-4721.71436, 845.277161, -1954.20105)
            PosQuest = Vector3.new(-4721.71436, 845.277161, -1954.20105)
            CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.925427)
            PosMon = Vector3.new(-4716.95703, 853.089722, -1933.925427)
        elseif MyLevel == 475 or MyLevel <= 524 then 
            Ms = "Shanda [Lv. 475]"
            NaemQuest = "SkyExp1Quest"
            LevelQuest = 2
            NameMon = "Shandas"
            CFrameQuest = CFrame.new(-7863.63672, 5545.49316, -379.826324)
            PosQuest = Vector3.new(-7863.63672, 5545.49316, -379.826324)
            CFrameMon = CFrame.new(-7685.12354, 5601.05127, -443.171509)
            PosMon = Vector3.new(-7685.12354, 5601.05127, -443.171509)
        elseif MyLevel == 525 or MyLevel <= 549 then 
            Ms = "Royal Squad [Lv. 525]"
            NaemQuest = "SkyExp2Quest"
            LevelQuest = 1
            NameMon = "Royal Squad"
            CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802)
            PosQuest = Vector3.new(-7902.66895, 5635.96387, -1411.71802)
            CFrameMon = CFrame.new(-7685.02051, 5606.87842, -1442.729)
            PosMon = Vector3.new(-7685.02051, 5606.87842, -1442.729)
        elseif MyLevel == 550 or MyLevel <= 624 then 
            Ms = "Royal Soldier [Lv. 550]"
            NaemQuest = "SkyExp2Quest"
            LevelQuest = 2
            NameMon = "Royal Soldier"
            CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802)
            PosQuest = Vector3.new(-7902.66895, 5635.96387, -1411.71802)
            CFrameMon = CFrame.new(-7864.44775, 5661.94092, -1708.22351)
            PosMon = Vector3.new(-7864.44775, 5661.94092, -1708.22351)
        elseif MyLevel == 625 or MyLevel <= 649 then 
            Ms = "Galley Pirate [Lv. 625]"
            NaemQuest = "FountainQuest"
            LevelQuest = 1
            NameMon = "Galley Pirate"
            CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678)
            PosQuest = Vector3.new(5254.60156, 38.5011406, 4049.69678)
            CFrameMon = CFrame.new(5595.06982, 41.5013695, 3961.47095)
            PosMon = Vector3.new(5595.06982, 41.5013695, 3961.47095)
        elseif MyLevel >= 650 then 
            Ms = "Galley Captain [Lv. 650]"
            NaemQuest = "FountainQuest"
            LevelQuest = 2
            NameMon = "Galley Captain"
            CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678)
            PosQuest = Vector3.new(5254.60156, 38.5011406, 4049.69678)
            CFrameMon = CFrame.new(5658.5752, 38.5361786, 4928.93506)
            PosMon = Vector3.new(5658.5752, 38.5361786, 4928.93506)
        end
    end
    if NewWorld then
        if MyLevel == 700 or MyLevel <= 724 then 
            Ms = "Raider [Lv. 700]"
            NaemQuest = "Area1Quest"
            LevelQuest = 1
            NameMon = "Raider"
            CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589)
            PosQuest = Vector3.new(-424.080078, 73.0055847, 1836.91589)
            CFrameMon = CFrame.new(-737.026123, 39.1748352, 2392.57959)
            PosMon = Vector3.new(-737.026123, 39.1748352, 2392.57959)
        elseif MyLevel == 725 or MyLevel <= 774 then 
            Ms = "Mercenary [Lv. 725]"
            NaemQuest = "Area1Quest"
            LevelQuest = 2
            NameMon = "Mercenary"
            CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589)
            PosQuest = Vector3.new(-424.080078, 73.0055847, 1836.91589)
            CFrameMon = CFrame.new(-973.731995, 95.8733215, 1836.46936)
            PosMon = Vector3.new(-973.731995, 95.8733215, 1836.46936)
        elseif MyLevel == 775 or MyLevel <= 874 then 
            Ms = "Swan Pirate [Lv. 775]"
            NaemQuest = "Area2Quest"
            LevelQuest = 1
            NameMon = "Swan Pirate"
            CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321)
            PosQuest = Vector3.new(632.698608, 73.1055908, 918.666321)
            CFrameMon = CFrame.new(970.369446, 142.653198, 1217.3667)
            PosMon = Vector3.new(970.369446, 142.653198, 1217.3667)
        elseif MyLevel == 875 or MyLevel <= 899 then 
            Ms = "Marine Lieutenant [Lv. 875]"
            NaemQuest = "MarineQuest3"
            LevelQuest = 1
            NameMon = "Marine Lieutenant"
            CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523)
            PosQuest = Vector3.new(-2442.65015, 73.0511475, -3219.11523)
            CFrameMon = CFrame.new(-2913.26367, 73.0011826)
            PosMon = Vector3.new(-2913.26367, 73.0011826)
        elseif MyLevel == 900 or MyLevel <= 949 then 
            Ms = "Marine Captain [Lv. 900]"
            NaemQuest = "MarineQuest3"
            LevelQuest = 2
            NameMon = "Marine Captain"
            CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523)
            PosQuest = Vector3.new(-2442.65015, 73.0511475, -3219.11523)
            CFrameMon = CFrame.new(-1868.67688, 73.0011826, -3321.66333)
            PosMon = Vector3.new(-1868.67688, 73.0011826, -3321.66333)
        elseif MyLevel == 950 or MyLevel <= 974 then 
            Ms = "Zombie [Lv. 950]"
            NaemQuest = "ZombieQuest"
            LevelQuest = 1
            NameMon = "Zombie"
            CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571)
            PosQuest = Vector3.new(-5492.79395, 48.5151672, -793.710571)
            CFrameMon = CFrame.new(-5634.83838, 126.067039, -697.665039)
            PosMon = Vector3.new(-5634.83838, 126.067039, -697.665039)
        elseif MyLevel == 975 or MyLevel <= 999 then 
            Ms = "Vampire [Lv. 975]"
            NaemQuest = "ZombieQuest"
            LevelQuest = 2
            NameMon = "Vampire"
            CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571)
            PosQuest = Vector3.new(-5492.79395, 48.5151672, -793.710571)
            CFrameMon = CFrame.new(-6030.32031, 6.4377408, -1313.5564)
            PosMon = Vector3.new(-6030.32031, 6.4377408, -1313.5564)
        elseif MyLevel == 1000 or MyLevel <= 1049 then 
            Ms = "Snow Trooper [Lv. 1000]"
            NaemQuest = "SnowMountainQuest"
            LevelQuest = 1
            NameMon = "Snow Trooper"
            CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287)
            PosQuest = Vector3.new(604.964966, 401.457062, -5371.69287)
            CFrameMon = CFrame.new(535.893433, 401.457062, -5329.6958)
            PosMon = Vector3.new(535.893433, 401.457062, -5329.6958)
        elseif MyLevel == 1050 or MyLevel <= 1099 then 
            Ms = "Winter Warrior [Lv. 1050]"
            NaemQuest = "SnowMountainQuest"
            LevelQuest = 2
            NameMon = "Winter Warrior"
            CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287)
            PosQuest = Vector3.new(604.964966, 401.457062, -5371.69287)
            CFrameMon = CFrame.new(1223.7417, 454.575226, -5170.02148)
            PosMon = Vector3.new(1223.7417, 454.575226, -5170.02148)
        elseif MyLevel == 1100 or MyLevel <= 1124 then 
            Ms = "Lab Subordinate [Lv. 1100]"
            NaemQuest = "IceSideQuest"
            LevelQuest = 1
            NameMon = "Lab Subordinate"
            CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876)
            PosQuest = Vector3.new(-6060.10693, 15.9868021, -4904.7876)
            CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721)
            PosMon = Vector3.new(-5769.2041, 37.9288292, -4468.38721)
        elseif MyLevel == 1125 or MyLevel <= 1174 then 
            Ms = "Horned Warrior [Lv. 1125]"
            NaemQuest = "IceSideQuest"
            LevelQuest = 2
            NameMon = "Horned Warrior"
            CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876)
            PosQuest = Vector3.new(-6060.10693, 15.9868021, -4904.7876)
            CFrameMon = CFrame.new(-6400.85889, 24.7645149, -5818.63574)
            PosMon = Vector3.new(-6400.85889, 24.7645149, -5818.63574)
        elseif MyLevel == 1175 or MyLevel <= 1199 then 
            Ms = "Magma Ninja [Lv. 1175]"
            NaemQuest = "FireSideQuest"
            LevelQuest = 1
            NameMon = "Magma Ninja"
            CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223)
            PosQuest = Vector3.new(-5431.09473, 15.9868021, -5296.53223)
            CFrameMon = CFrame.new(-5496.65576, 58.6890411, -5929.76855)
            PosMon = Vector3.new(-5496.65576, 58.6890411, -5929.76855)
        elseif MyLevel == 1200 or MyLevel <= 1349 then 
            Ms = "Lava Pirate [Lv. 1200]"
            NaemQuest = "FireSideQuest"
            LevelQuest = 2
            NameMon = "Lava Pirate"
            CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223)
            PosQuest = Vector3.new(-5431.09473, 15.9868021, -5296.53223)
            CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633)
            PosMon = Vector3.new(-5169.71729, 34.1234779, -4669.73633)
        elseif MyLevel == 1350 or MyLevel <= 1374 then 
            Ms = "Arctic Warrior [Lv. 1350]"
            NaemQuest = "FrostQuest"
            LevelQuest = 1
            NameMon = "Arctic Warrior"
            CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107)
            PosQuest = Vector3.new(5669.43506, 28.2117786, -6482.60107)
            CFrameMon = CFrame.new(5995.07471, 57.3188477, -6183.47314)
            PosMon = Vector3.new(5995.07471, 57.3188477, -6183.47314)
        elseif MyLevel == 1375 or MyLevel <= 1424 then 
            Ms = "Snow Lurker [Lv. 1375]"
            NaemQuest = "FrostQuest"
            LevelQuest = 2
            NameMon = "Snow Lurker"
            CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107)
            PosQuest = Vector3.new(5669.43506, 28.2117786, -6482.60107)
            CFrameMon = CFrame.new(5518.00684, 60.5559731, -6828.80518)
            PosMon = Vector3.new(5518.00684, 60.5559731, -6828.80518)
        elseif MyLevel == 1425 or MyLevel <= 1449 then 
            Ms = "Sea Soldier [Lv. 1425]"
            NaemQuest = "ForgottenQuest"
            LevelQuest = 1
            NameMon = "Sea Soldier"
            CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943)
            PosQuest = Vector3.new(-3052.99097, 236.881363, -10148.1943)
            CFrameMon = CFrame.new(-3030.3696289063, 191.13464355469, -9859.7958984375)
            PosMon = Vector3.new(-3030.3696289063, 191.13464355469, -9859.7958984375)
        elseif MyLevel >= 1450 then 
            Ms = "Water Fighter [Lv. 1450]"
            NaemQuest = "ForgottenQuest"
            LevelQuest = 2
            NameMon = "Water Fighter"
            CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943)
            PosQuest = Vector3.new(-3052.99097, 236.881363, -10148.1943)
            CFrameMon = CFrame.new(-3436.7727050781, 290.52191162109, -10503.438476563)
            PosMon = Vector3.new(-3436.7727050781, 290.52191162109, -10503.438476563)
        end
    end
    if ThreeWorld then
        if MyLevel >= 1500 and MyLevel <= 1524 then
            Ms = "Pirate Millionaire [Lv. 1500]"
            NaemQuest = "PiratePortQuest"
            LevelQuest = 1
            NameMon = "Pirate Millionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984)
            PosQuest = Vector3.new(-290.074677, 42.9034653, 5581.58984)
            CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
            PosMon = Vector3.new(81.164993286133, 43.755737304688, 5724.7021484375)
        elseif MyLevel >= 1525 and MyLevel <= 1574 then
            Ms = "Pistol Billionaire [Lv. 1525]"
            NaemQuest = "PiratePortQuest"
            LevelQuest = 2
            NameMon = "Pistol Billionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984)
            PosQuest = Vector3.new(-290.074677, 42.9034653, 5581.58984)
            CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
            PosMon = Vector3.new(81.164993286133, 43.755737304688, 5724.7021484375)
        elseif MyLevel >= 1575 and MyLevel <= 1599 then
            Ms = "Dragon Crew Warrior [Lv. 1575]"
            NaemQuest = "AmazonQuest"
            LevelQuest = 1
            NameMon = "Dragon Crew Warrior"
            CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563)
            PosQuest = Vector3.new(5832.83594, 51.6806107, -1101.51563)
            CFrameMon = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
            PosMon = Vector3.new(6241.9951171875, 51.522083282471, -1243.9771728516)
        elseif MyLevel >= 1600 and MyLevel <= 1624 then
            Ms = "Dragon Crew Archer [Lv. 1600]"
            NaemQuest = "AmazonQuest"
            LevelQuest = 2
            NameMon = "Dragon Crew Archer"
            CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563)
            PosQuest = Vector3.new(5832.83594, 51.6806107, -1101.51563)
            CFrameMon = CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715)
            PosMon = Vector3.new(6488.9155273438, 383.38375854492, -110.66246032715)
        elseif MyLevel >= 1625 and MyLevel <= 1649 then
            Ms = "Female Islander [Lv. 1625]"
            NaemQuest = "AmazonQuest2"
            LevelQuest = 1
            NameMon = "Female Islander"
            CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676)
            PosQuest = Vector3.new(5448.86133, 601.516174, 751.130676)
            CFrameMon = CFrame.new(5825.2241210938, 682.89245605469, 704.57958984375)
            PosMon = Vector3.new(5825.2241210938, 682.89245605469, 704.57958984375)
        elseif MyLevel >= 1650 and MyLevel <= 1699 then
            Ms = "Giant Islander [Lv. 1650]"
            NaemQuest = "AmazonQuest2"
            LevelQuest = 2
            NameMon = "Giant Islander"
            CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676)
            PosQuest = Vector3.new(5448.86133, 601.516174, 751.130676)
            CFrameMon = CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789)
            PosMon = Vector3.new(4530.3540039063, 656.75695800781, -131.60952758789)
        elseif MyLevel >= 1700 and MyLevel <= 1724 then
            Ms = "Marine Commodore [Lv. 1700]"
            NaemQuest = "MarineTreeIsland"
            LevelQuest = 1
            NameMon = "Marine Commodore"
            CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498)
            PosQuest = Vector3.new(2180.54126, 27.8156815, -6741.5498)
            CFrameMon = CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688)
            PosMon = Vector3.new(2490.0844726563, 190.4232635498, -7160.0502929688)
        elseif MyLevel >= 1725 and MyLevel <= 1774 then
            Ms = "Marine Rear Admiral [Lv. 1725]"
            NaemQuest = "MarineTreeIsland"
            LevelQuest = 2
            NameMon = "Marine Rear Admiral"
            CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498)
            PosQuest = Vector3.new(2180.54126, 27.8156815, -6741.5498)
            CFrameMon = CFrame.new(3951.3903808594, 229.11549377441, -6912.81640625)
            PosMon = Vector3.new(3951.3903808594, 229.11549377441, -6912.81640625)
        elseif MyLevel >= 1775 and MyLevel <= 1799 then
            Ms = "Fishman Raider [Lv. 1775]"
            NaemQuest = "DeepForestIsland3"
            LevelQuest = 1
            NameMon = "Fishman Raider"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652)
            PosQuest = Vector3.new(-10581.6563, 330.872955, -8761.18652)
            CFrameMon = CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125)
            PosMon = Vector3.new(-10322.400390625, 390.94473266602, -8580.0908203125)
        elseif MyLevel >= 1800 and MyLevel <= 1824 then
            Ms = "Fishman Captain [Lv. 1800]"
            NaemQuest = "DeepForestIsland3"
            LevelQuest = 2
            NameMon = "Fishman Captain"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652)
            PosQuest = Vector3.new(-10581.6563, 330.872955, -8761.18652)
            CFrameMon = CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625)
            PosMon = Vector3.new(-11194.541992188, 442.02795410156, -8608.806640625)
        elseif MyLevel >= 1825 and MyLevel <= 1849 then
            Ms = "Forest Pirate [Lv. 1825]"
            NaemQuest = "DeepForestIsland"
            LevelQuest = 1
            NameMon = "Forest Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137)
            PosQuest = Vector3.new(-13234.04, 331.488495, -7625.40137)
            CFrameMon = CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188)
            PosMon = Vector3.new(-13225.809570313, 428.19387817383, -7753.1245117188)
        elseif MyLevel >= 1850 and MyLevel <= 1899 then
            Ms = "Mythological Pirate [Lv. 1850]"
            NaemQuest = "DeepForestIsland"
            LevelQuest = 2
            NameMon = "Mythological Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137)
            PosQuest = Vector3.new(-13234.04, 331.488495, -7625.40137)
            CFrameMon = CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188)
            PosMon = Vector3.new(-13869.172851563, 564.95251464844, -7084.4135742188)
        elseif MyLevel >= 1900 and MyLevel <= 1924 then
            Ms = "Jungle Pirate [Lv. 1900]"
            NaemQuest = "DeepForestIsland2"
            LevelQuest = 1
            NameMon = "Jungle Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953)
            PosQuest = Vector3.new(-12680.3818, 389.971039, -9902.01953)
            CFrameMon = CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063)
            PosMon = Vector3.new(-11982.221679688, 376.32522583008, -10451.415039063)
        elseif MyLevel >= 1925 and MyLevel <= 1974 then
            Ms = "Musketeer Pirate [Lv. 1925]"
            NaemQuest = "DeepForestIsland2"
            LevelQuest = 2
            NameMon = "Musketeer Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953)
            PosQuest = Vector3.new(-12680.3818, 389.971039, -9902.01953)
            CFrameMon = CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625)
            PosMon = Vector3.new(-13282.3046875, 496.23684692383, -9565.150390625)
        elseif MyLevel >= 1975 and MyLevel <= 1999 then
            Ms = "Reborn Skeleton [Lv. 1975]"
            NaemQuest = "HauntedQuest1"
            LevelQuest = 1
            NameMon = "Reborn Skeleton"
            CFrameQuest = CFrame.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
            PosQuest = Vector3.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
            CFrameMon = CFrame.new(-8817.880859375, 191.16761779785, 6298.6557617188)
            PosMon = Vector3.new(-8817.880859375, 191.16761779785, 6298.6557617188)
        elseif MyLevel >= 2000 and MyLevel <= 2024 then
            Ms = "Living Zombie [Lv. 2000]"
            NaemQuest = "HauntedQuest1"
            LevelQuest = 2
            NameMon = "Living Zombie"
            CFrameQuest = CFrame.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
            PosQuest = Vector3.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
            CFrameMon = CFrame.new(-10125.234375, 183.94705200195, 6242.013671875)
            PosMon = Vector3.new(-10125.234375, 183.94705200195, 6242.013671875)
        elseif MyLevel >= 2025 and MyLevel <= 2049  then
            Ms = "Demonic Soul [Lv. 2025]"
            NaemQuest = "HauntedQuest2"
            LevelQuest = 1
            NameMon = "Demonic Soul"
            CFrameQuest = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
            PosQuest = Vector3.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
            CFrameMon = CFrame.new(-9712.03125, 204.69589233398, 6193.322265625)
            PosMon = Vector3.new(-9712.03125, 204.69589233398, 6193.322265625)
        elseif MyLevel > 2050 then
            Ms = "Posessed Mummy [Lv. 2050]"
            NaemQuest = "HauntedQuest2"
            LevelQuest = 2
            NameMon = "Posessed Mummy"
            CFrameQuest = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
            PosQuest = Vector3.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
            CFrameMon = CFrame.new(-9545.7763671875, 69.619895935059, 6339.5615234375)    
            PosMon = Vector3.new(-9545.7763671875, 69.619895935059, 6339.5615234375)
        end
    end
end
	CheckQuest()
	function EquipWeapon(ToolSe)
		if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
			local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
			wait(.4)
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
		end
	end

	page1:Label("Auto Farm",0)
	page1:Toggle("Auto Farm",_G.AutoFarm,function(vu)
		_G.AutoFarm = vu
		_G.FastFarm = vu
		_G.Main = vu 
	end)

	page1:Toggle("Auto Quest",true,function(x)
		AutoQuest = x
	end)

	spawn(function()
		while wait() do
			if _G.AutoFarm then
				autofarm()
			end
		end
	end)
	game:GetService("RunService").Heartbeat:Connect(
	function()
		if _G.AutoFarm or _G.Observation or _G.AutoNew or _G.Factory or _G.GunMastery or _G.Mastery or FramBoss or FramAllBoss or _G.AutoBartilo or _G.MobAura or _G.AutoRengoku or _G.AutoSharkman or _G.Ectoplasm or _G.PoleHop or _G.SwanHop or _G.BlackBeardHop or _G.Chest or _G.Electro or rainbowhaki or Hunter or observationv2 or _G.ElitehuntHop or _G.EliteHunt or _G.Pole or _G.Tushitahop or _G.YamaHop or _G.StoreFruit or _G.HolyTorch then
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
				game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
			end
		end
	end
	)
	local LocalPlayer = game:GetService("Players").LocalPlayer
	local VirtualUser = game:GetService('VirtualUser')

function totarget(CFgo)
    local tween_s = game:service"TweenService"
    local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/300, Enum.EasingStyle.Linear)
    local tween, err = pcall(function()
        tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
        tween:Play()
    end)
    if not tween then return err end
end

function StopTween()
	pcall(function()
		tween:Cancel()
		_G.StopTween = true
		wait()
		_G.StopTween = false
	end)
end

function autofarm()
	if _G.AutoFarm then
		if AutoQuest then
			if LocalPlayer.PlayerGui.Main.Quest.Visible == false then
				StopTween()
				StatrMagnet = false
				CheckQuest()
				repeat totarget(CFrameQuest) wait() until _G.StopTween == true or not _G.AutoFarm or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 8
				wait(0.9)
				if _G.AutoFarm then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
				end
			elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
				CheckQuest()
				if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
					pcall(
						function()
							for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								CheckQuest()  
								if v.Name == Ms then
									repeat wait()
										spawn(function()
											if game:GetService("Workspace").Enemies:FindFirstChild(Ms) and v.Humanoid.Health > 0 and v:FindFirstChild("Humanoid") then
												if LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text:find(NameMon) then
													totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
													PosHee = v.HumanoidRootPart.CFrame
													EquipWeapon(_G.SelectWeapon)
													PosHee = v.HumanoidRootPart.CFrame
													v.HumanoidRootPart.CanCollide = false
													v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
													StatrMagnet = true
												else
													StopTween()
													local args = {
														[1] = "AbandonQuest"
													 }
													 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
												end  
											else
												CheckQuest() 
												StatrMagnet = false
												repeat totarget(CFrameMon) wait() until _G.StopTween == true or not _G.AutoFarm or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude <= 8
											end 
										end)
									until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoFarm == false or LocalPlayer.PlayerGui.Main.Quest.Visible == false
									CheckQuest() 
									StatrMagnet = false
								end
							end
						end
					)
				else
					CheckQuest()
					StatrMagnet = false
					repeat totarget(CFrameMon) wait() until _G.StopTween == true or not _G.AutoFarm or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude <= 8
				end 
			end
		else
			CheckQuest()
			if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
				pcall(
					function()
						for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							CheckQuest() 
							if v.Name == Ms then
								repeat wait()
									if game:GetService("Workspace").Enemies:FindFirstChild(Ms) and v.Humanoid.Health > 0 and v:FindFirstChild("Humanoid") then
										totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
										EquipWeapon(_G.SelectWeapon)
										PosHee = v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
										StatrMagnet = true
									else
										CheckQuest() 
										StatrMagnet = false
										repeat totarget(CFrameMon) wait() until _G.StopTween == true or not _G.AutoFarm or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude <= 8
									end 
								until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoFarm == false
								CheckQuest() 
								StatrMagnet = false
							end
						end
					end
				)
			else
				CheckQuest()
				StatrMagnet = false
				repeat totarget(CFrameMon) wait() until _G.StopTween == true or not _G.AutoFarm or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude <= 8
			end 
		end
	end
end
     
     spawn(function()
while wait() do
	if _G.EquipMelee then
		pcall(function()
			for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
			   if v.ToolTip == "Melee" then
			  if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
				  local ToolSe = tostring(v.Name)
				 local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
				 wait(.4)
				 game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
			  end
			   end
			end
		end)
end
end
end)

	spawn(function()
		while wait() do
			pcall(function()
        		if _G.AutoNew == true then
            		if _G.SelectWeapon == nil then
                        _G.EquipMelee  = true
            		end
		        else 
		            _G.EquipMelee = false
				end
			end)
		end
	end)

local CombatFrameworkR = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework) 

local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)

spawn(function()
	for i = 1,math.huge do
		game:GetService("RunService").Heartbeat:wait()
		if _G.FastFarm then
			pcall(function()
					CameraShakerR:Stop()
					CombatFrameworkR.activeController.attacking = false
					CombatFrameworkR.activeController.timeToNextAttack = 0
					CombatFrameworkR.activeController.increment = 3
					CombatFrameworkR.activeController.hitboxMagnitude = 50
			end)
		end
		game:GetService("RunService").Heartbeat:wait()
	end
end)

spawn(function()
	game:GetService("RunService").Heartbeat:connect(function()
		pcall(function()
			if _G.FastFarm then
					VirtualUser:CaptureController()
					VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
			end
		end)
	end)
	game:GetService("RunService").Heartbeat:connect(function()
		pcall(function()
			if _G.FastFarm then
					VirtualUser:CaptureController()
					VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
			end
		end)
	end)
end)

	-- Auto New World
	if OldWorld then
		page1:Toggle("Auto Second Sea",_G.AutoNew,function(x)
			_G.AutoNew = x
		end)
	end
	
		spawn(function()
			game:GetService("RunService").Heartbeat:connect(function()
				pcall(function()
					if _G.AutoNew then
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
							game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
						end
					end
				end)
			end)
		end)
	
		spawn(function()
			while wait(.1) do
				if _G.AutoNew then
					if OldWorld then
						local MyLevel = game.Players.localPlayer.Data.Level.Value
						if MyLevel >= 700 and OldWorld then
							_G.AutoFarm = false
							_G.SelectWeapon = "Key"
							repeat wait()
								totarget(CFrame.new(4849.29883, 5.65138149, 719.611877))
							until _G.StopTween == true or not _G.AutoNew or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(4849.29883, 5.65138149, 719.611877).Position).Magnitude <= 10
							wait(0.5)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
							wait(0.5)
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") then
								local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Key")
								wait(.4)
								game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
							end
							repeat wait()
								totarget(CFrame.new(1347.7124, 37.3751602, -1325.6488))
							until _G.StopTween == true or not _G.AutoNew or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(1347.7124, 37.3751602, -1325.6488).Position).Magnitude <= 10
							wait(0.5)
							Click()
							if game.Workspace.Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") and game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
								CheckBoss = true
								_G.SelectWeapon = _G.SelectToolWeaponOld
								EquipWeapon(_G.SelectWeapon)
								if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
								end
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if CheckBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == "Ice Admiral [Lv. 700] [Boss]" then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
										repeat wait(.1)
											pcall(function()
												v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
												v.HumanoidRootPart.BrickColor = BrickColor.new("White")
												v.HumanoidRootPart.CanCollide = false
												totarget(v.HumanoidRootPart.CFrame*CFrame.new(0, 10, 10))
												Click()
											end)
										until not CheckBoss or not v.Parent or v.Humanoid.Health <= 0
									end
								end
								CheckBoss = false
								wait(0.5)
								repeat wait()
									totarget(CFrame.new(-1166.23743, 7.65220165, 1728.36487))
								until (game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame - CFrame.new(-1166.23743, 7.65220165, 1728.36487).Position).Magnitude <= 10
								wait(0.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
							else
								if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") then
									local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Key")
									wait(.4)
									game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
								end
								totarget(CFrame.new(1347.7124, 37.3751602, -1325.6488))
							end
						end
					end
				end
			end
		end)


if NewWorld then
	page1:Toggle("Auto Open Swan+Hop",false,function (t)
_G.OpenSwan = t
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
	if v:IsA("Tool") then
		firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle,0)
	end
end
end)
millionfruit = {
	"Dragon Fruit",
	"Control Fruit",
	"Dough Fruit",
	"Gravity Fruit",
	"Paw Fruit",
	"Rumble Fruit",
	"String Fruit",
	"Quake Fruit",
	"Venom Fruit",
}
function hop()
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
                        -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
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

	spawn(function()
		while wait() do
			if _G.OpenSwan then
				for i,v in pairs(millionfruit) do
					if game.Players.LocalPlayer.Character:FindFirstChild(v) then
						repeat totarget(CFrame.new(-342.28921508789, 331.8864440918, 643.62438964844)) wait() until _G.StopTween == true or not AutoBartilo or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-342.28921508789, 331.8864440918, 643.62438964844)).Magnitude <= 10
						wait(1)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1")
					else
						hop()
					end
				end
			end        
		end
	end)
end

	if NewWorld then
		page1:Toggle("Auto Rengoku",_G.AutoRengoku,function(v)
			_G.AutoRengoku = v
		end)
			spawn(function()
				while wait() do
					if _G.AutoRengoku then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or  game.Players.LocalPlayer.Character:FindFirstChild("Hidden Key") then
							EquipWeapon("Hidden Key")
							totarget(CFrame.new(6571.81885, 296.689758, -6966.76514))
						elseif game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == "Snow Lurker [Lv. 1375]" and v.Humanoid.Health > 0 then
									repeat wait()
										if game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											EquipWeapon(_G.SelectWeapon)
											PosMonRengoku = v.HumanoidRootPart.CFrame
											totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
											game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
											VirtualUser:CaptureController()
											VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
											StatrMagnetRengoku = true
										else
											StatrMagnetRengoku = false
											totarget(CFrame.new(5518.00684, 60.5559731, -6828.80518))
										end
									until game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or _G.AutoRengoku == false or not v.Parent or v.Humanoid.Health <= 0
									StatrMagnetRengoku = false
									totarget(CFrame.new(5518.00684, 60.5559731, -6828.80518))
								end
							end
						else
							StatrMagnetRengoku = false
							totarget(CFrame.new(5518.00684, 60.5559731, -6828.80518))
						end
					end
				end
			end)
	    end

	if NewWorld then
		page1:Toggle("Auto Sea 3",false,function(value)
			local args = {
				[1] = "AbandonQuest"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			Sea3 = value
			Sea33 = value
			Check = true
			Checka = true
		end)
	end

	spawn(function()
		while wait() do
			pcall(function()
				if Sea3 and Checka then
					if NewWorld then
						local MyLevel = game.Players.localPlayer.Data.Level.Value
						if MyLevel >= 1500 then
							Sea33 = false
							if Check then
								repeat totarget(CFrame.new(-1925.56482, 12.8456564, 1737.36609)) wait() until _G.StopTween == true or not Sea3 or Sea33 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1925.56482, 12.8456564, 1737.36609)).Magnitude <= 10
							end
							Check = false
							wait(0.5)
							local args = {
								[1] = "ZQuestProgress",
								[2] = "Check"
							}

							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							local args = {
								[1] = "ZQuestProgress",
								[2] = "Begin"
							}

							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							Checka = false
						end
					end
				end
			end)
		end
	end)

	spawn(function()
		while wait() do
			pcall(function()
				if Sea3 and Checka == false then
					for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "rip_indra [Lv. 1500] [Boss]" then
							for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "rip_indra [Lv. 1500] [Boss]" then
									repeat wait()
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))										
										game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
										EquipWeapon(_G.SelectWeapon)
										Click()
										spawn(function()
											wait(1)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
										end)
									until v.Humanoid.Health <= 0 or Sea3 == false
								end
							end
							repeat totarget(CFrame.new(-26640.7559, 6.94934607, 439.43512)) wait() until _G.StopTween == true or not Sea3 or Sea33 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-26640.7559, 6.94934607, 439.43512)).Magnitude <= 10
						end
					end
				end
			end)
		end
	end)

	if NewWorld then
		page1:Toggle("Auto Factory",_G.Factory,function(vu)
			_G.Factory = vu
			while _G.Factory do wait()
				if game.Workspace.Enemies:FindFirstChild("Core") then
					_G.Core = true
					_G.AutoFarm = false
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if _G.Core and v.Name == "Core" and v.Humanoid.Health > 0 then
							repeat wait(.1)
								repeat totarget(CFrame.new(448.46756, 199.356781, -441.389252)) wait() until _G.StopTween == true or not _G.Factory or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(448.46756, 199.356781, -441.389252)).Magnitude <= 10
								EquipWeapon(_G.SelectWeapon)
								if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
									local args = {
										[1] = "Buso"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
							until not _G.Core or v.Humanoid.Health <= 0  or _G.Factory == false
						end
					end
				elseif game.ReplicatedStorage:FindFirstChild("Core") then
					_G.Core = true
					_G.AutoFarm = false
					repeat totarget(CFrame.new(448.46756, 199.356781, -441.389252)) wait() until _G.StopTween == true or not _G.Factory or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(448.46756, 199.356781, -441.389252)).Magnitude <= 10
				elseif _G.Main then
					_G.Core = false
					_G.AutoFarm = true
				end
			end
		end)
	end

	function EquipWeapon(ToolSe)
		if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
			local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
			wait(.4)
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
		end
	end

	if OldWorld then
		page1:Toggle("Auto Saber",false,function(Value)
			_G.AutoSaber = Value
		end)

	spawn(function()
		while wait(.1) do
			if _G.AutoSaber then
				local off = game:GetService("Workspace").Map.Jungle.Final:FindFirstChild("Part")
				local MyLevel = game.Players.localPlayer.Data.Level.Value
				if MyLevel >= 200 and _G.AutoFarm == true then
					repeat wait(.1)
						_G.AutoFarm = false
						function accept1()
							local string_1 = "ProQuestProgress";
							local string2 = "SickMan";
							local Target = game:GetService("ReplicatedStorage").Remotes["CommF"];
							Target:InvokeServer(string_1, string_2);
						end

						function accept2()
							local string_1 = "ProQuestProgress";
							local string2 = "RichSon";
							local Target = game:GetService("ReplicatedStorage").Remotes["CommF"];
							Target:InvokeServer(string_1, string2);
						end
						function saber()
							if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Mob Leader [Lv. 120] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
										repeat wait()
											pcall(function()
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													local args = {
														[1] = "Buso"
													}
													game:GetService("ReplicatedStorage").Remotes.CommF:InvokeServer(unpack(args))
												end
												EquipWeapon(_G.SelectWeapon)
												v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
												v.HumanoidRootPart.CanCollide = false
												totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											end)
										until v.Humanoid.Health == 0
									end
								end
							end

							function accept3()
								local string_1 = "ProQuestProgress";
								local string2 = "RichSon";
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF"];
								Target:InvokeServer(string_1, string_2);
							end

							wait(.1)
							repeat totarget(CFrame.new(-1421.87024, 55.4666862, 21.7750397)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1421.87024, 55.4666862, 21.7750397)).Magnitude <= 10
							wait(1)
							repeat totarget(CFrame.new(-1647.19556, 29.1544189, 438.299408)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1647.19556, 29.1544189, 438.299408)).Magnitude <= 10
							wait(1)
							repeat totarget(CFrame.new(-1324.10144, 31.4560413, -461.404114)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1324.10144, 31.4560413, -461.404114)).Magnitude <= 10
							wait(1)
							repeat totarget(CFrame.new(-1152.38464, 9.74718285, -700.309875)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1152.38464, 9.74718285, -700.309875)).Magnitude <= 10
							wait(1)
							repeat totarget(CFrame.new(-1180.89563, 21.0007095, 187.861374)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1180.89563, 21.0007095, 187.861374)).Magnitude <= 10
							wait(1)
							repeat totarget(CFrame.new(-1610.00757, 11.5049858, 164.001587)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1610.00757, 11.5049858, 164.001587)).Magnitude <= 10
							wait(2)
							local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Torch")
							wait(.4)
							game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
							wait(.1)
							repeat totarget(CFrame.new(1114.55762, 4.9214654, 4349.2334)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(1114.55762, 4.9214654, 4349.2334)).Magnitude <= 10
							wait(5.5)
							repeat totarget(CFrame.new(1114.26721, 4.16943789, 4366.15332)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(1114.26721, 4.16943789, 4366.15332)).Magnitude <= 10
							wait(1)
							local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Cup")
							wait(.4)
							EquipWeapon("Cup")
							wait(1)
							repeat totarget(CFrame.new(1397.0614, 37.3480072, -1321.03955)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(1397.0614, 37.3480072, -1321.03955)).Magnitude <= 10
							wait(4.5)
							repeat totarget(CFrame.new(1457.87976, 88.2521744, -1390.39575)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(1457.87976, 88.2521744, -1390.39575)).Magnitude <= 10
							wait(1.5)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan")
							wait(1)
							repeat totarget(CFrame.new(-909.106689, 13.7520342, 4077.34888)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-909.106689, 13.7520342, 4077.34888)).Magnitude <= 10
							wait(1.1)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
							wait(1)
							repeat totarget(CFrame.new(-2852.90234, 7.56227827, 5367.72412)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-2852.90234, 7.56227827, 5367.72412)).Magnitude <= 10
							wait(1.5)
							EquipWeapon(_G.SelectWeapon)
							wait(1)
							saber()
							wait(2)
							repeat totarget(CFrame.new(-909.106689, 13.7520342, 4077.34888)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-909.106689, 13.7520342, 4077.34888)).Magnitude <= 10
							wait(1.1)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
							wait(1.1)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress")
							wait(1)
							local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Relic")
							wait(.4)
							EquipWeapon("Relic")
							wait(1)
							repeat totarget(CFrame.new(-1405.84094, 29.8519993, 5.05432224)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1405.84094, 29.8519993, 5.05432224)).Magnitude <= 10
							
							wait(1)
							if off.CanCollide == false then
								_G.AutoSaber = false
								_G.AutoFarm = true
							end
						end
					until _G.AutoSaber == false or off.CanCollide == false or _G.AutoFarm == true

				elseif MyLevel >= 200 then
					repeat wait(.1)
						function accept1()
							local string_1 = "ProQuestProgress";
							local string2 = "SickMan";
							local Target = game:GetService("ReplicatedStorage").Remotes["CommF"];
							Target:InvokeServer(string_1, string_2);
						end

						function accept2()
							local string_1 = "ProQuestProgress";
							local string2 = "RichSon";
							local Target = game:GetService("ReplicatedStorage").Remotes["CommF"];
							Target:InvokeServer(string_1, string2);
						end
						function saber()
							for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Mob Leader [Lv. 120] [Boss]" then
									repeat wait()
										for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == "Mob Leader [Lv. 120] [Boss]" then
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													local args = {
														[1] = "Buso"
													}
													game:GetService("ReplicatedStorage").Remotes.CommF:InvokeServer(unpack(args))
												end
												_G.FastBoss = true
												EquipWeapon(_G.SelectWeapon)
												v.HumanoidRootPart.CanCollide = false
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
												game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
											end
										end
									until v.Humanoid.Health == 0
									_G.FastBoss = false
								end
							end
						end

						function accept3()
							local string_1 = "ProQuestProgress";
							local string2 = "RichSon";
							local Target = game:GetService("ReplicatedStorage").Remotes["CommF"];
							Target:InvokeServer(string_1, string_2);
						end

						wait(.1)
						repeat totarget(CFrame.new(-1421.87024, 55.4666862, 21.7750397)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1421.87024, 55.4666862, 21.7750397)).Magnitude <= 10
						wait(1)
						repeat totarget(CFrame.new(-1647.19556, 29.1544189, 438.299408)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1647.19556, 29.1544189, 438.299408)).Magnitude <= 10
						wait(1)
						repeat totarget(CFrame.new(-1324.10144, 31.4560413, -461.404114)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1324.10144, 31.4560413, -461.404114)).Magnitude <= 10
						wait(1)
						repeat totarget(CFrame.new(-1152.38464, 9.74718285, -700.309875)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1152.38464, 9.74718285, -700.309875)).Magnitude <= 10
						wait(1)
						repeat totarget(CFrame.new(-1180.89563, 21.0007095, 187.861374)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1180.89563, 21.0007095, 187.861374)).Magnitude <= 10
						wait(1)
						repeat totarget(CFrame.new(-1610.00757, 11.5049858, 164.001587)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1610.00757, 11.5049858, 164.001587)).Magnitude <= 10
						wait(2)
						local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Torch")
						wait(.4)
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
						wait(.1)
						repeat totarget(CFrame.new(1114.55762, 4.9214654, 4349.2334)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(1114.55762, 4.9214654, 4349.2334)).Magnitude <= 10
						wait(5.5)
						repeat totarget(CFrame.new(1114.26721, 4.16943789, 4366.15332)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(1114.26721, 4.16943789, 4366.15332)).Magnitude <= 10
						wait(1)
						local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Cup")
						wait(.4)
						EquipWeapon("Cup")
						wait(1)
						repeat totarget(CFrame.new(1397.0614, 37.3480072, -1321.03955)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(1397.0614, 37.3480072, -1321.03955)).Magnitude <= 10
						wait(4.5)
						repeat totarget(CFrame.new(1457.87976, 88.2521744, -1390.39575)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(1457.87976, 88.2521744, -1390.39575)).Magnitude <= 10
						wait(1.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan")
						wait(1)
						repeat totarget(CFrame.new(-909.106689, 13.7520342, 4077.34888)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-909.106689, 13.7520342, 4077.34888)).Magnitude <= 10
						wait(1.1)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
						wait(1)
						repeat totarget(CFrame.new(-2852.90234, 7.56227827, 5367.72412)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-2852.90234, 7.56227827, 5367.72412)).Magnitude <= 10
						wait(1.5)
						EquipWeapon(_G.SelectWeapon)
						wait(1)
						saber()
						wait(2)
						repeat totarget(CFrame.new(-909.106689, 13.7520342, 4077.34888)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-909.106689, 13.7520342, 4077.34888)).Magnitude <= 10
						wait(1.1)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
						wait(1.1)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress")
						wait(1)
						local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Relic")
						wait(.4)
						EquipWeapon("Relic")
						wait(1)
						repeat totarget(CFrame.new(-1405.84094, 29.8519993, 5.05432224)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1405.84094, 29.8519993, 5.05432224)).Magnitude <= 10
						if off.CanCollide == false then
							_G.AutoSaber = false
						end
					until G.AutoOpenSaber == false or off.CanCollide == false
					if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Saber Expert [Lv. 200] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
								repeat wait()
									pcall(function()
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											local args = {
												[1] = "Buso"
											}
											game:GetService("ReplicatedStorage").Remotes.CommF:InvokeServer(unpack(args))
										end
										EquipWeapon(_G.SelectWeapon)
										v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
										v.HumanoidRootPart.CanCollide = false
										totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
										game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
									end)
								until _G.AutoSaber == true or v.Humanoid.Health <= 0
							end
						end
					end
				end
			end
		end
	end)
end

	page1:Toggle("Auto Superhuman",_G.Superhuman,function(vu)
		_G.Superhuman = vu
	end)
	spawn(function()
		while wait() do wait()
			if _G.Superhuman then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
					local args = {
						[1] = "BuyBlackLeg"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end   
				if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
					_G.SelectWeapon = "Superhuman"
				end  
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299 then
						_G.SelectWeapon = "Black Leg"
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299 then
						_G.SelectWeapon = "Electro"
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299 then
						_G.SelectWeapon = "Fishman Karate"
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299 then
						_G.SelectWeapon = "Dragon Claw"
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 then
						local args = {
							[1] = "BuyElectro"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end
					if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 then
						local args = {
							[1] = "BuyElectro"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 then
						local args = {
							[1] = "BuyFishmanKarate"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end
					if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 then
						local args = {
							[1] = "BuyFishmanKarate"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 then
						local args = {
							[1] = "BlackbeardReward",
							[2] = "DragonClaw",
							[3] = "1"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						local args = {
							[1] = "BlackbeardReward",
							[2] = "DragonClaw",
							[3] = "2"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
					end
					if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 then
						local args = {
							[1] = "BlackbeardReward",
							[2] = "DragonClaw",
							[3] = "1"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						local args = {
							[1] = "BlackbeardReward",
							[2] = "DragonClaw",
							[3] = "2"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 then
						local args = {
							[1] = "BuySuperhuman"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end
					if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 then
						local args = {
							[1] = "BuySuperhuman"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end 
				end
			end
		end
	end)

         --	spawn(function()
         --		pcall(function()
         --		while wait(.1) do
         --			if _G.Superhuman then
         --				local args = {
         --					[1] = "BuySuperhuman"
         --				}
         --				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         --				-----------------
         --				local MyLevel = game.Players.LocalPlayer.Data.Level.Value
         --				if MyLevel >= 1100 then
         --					if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
         --				_G.autoraid = false
         --					else
		 --						_G.AutoFarm = false
         --						_G.CHIP = "Flame"
		 --						_G.autoraid = true
         --							local args = {
         --								[1] = "BlackbeardReward",
         --								[2] = "DragonClaw",
         --								[3] = "1"
         --							}
         --						
         --							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         --							local args = {
         --								[1] = "BlackbeardReward",
         --								[2] = "DragonClaw",
         --								[3] = "2"
         --							}
         --						
         --							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         --					end
         --				end
       --  			end
    --     		end
  --       	end)
 --       end) 

page1:Toggle("Auto Death Step",_G.DeathStep,function(vu)
		_G.DeathStep = vu
	end)
	spawn(function()
		while wait() do wait()
			if _G.DeathStep then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") or game.Players.LocalPlayer.Character:FindFirstChild("Death Step") then
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 then
						local args = {
							[1] = "BuyDeathStep"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						_G.SelectWeapon = "Death Step"
					end  
					if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then
						local args = {
							[1] = "BuyDeathStep"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

						_G.SelectWeapon = "Death Step"
					end  
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 449 then
						_G.SelectWeapon = "Black Leg"
					end 
				else 
					local args = {
						[1] = "BuyBlackLeg"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end
		end
	end)

	page1:Toggle("Auto Electric Claw V2",false,function(x)
		_G.AutoElectricClawV2 = x
	end)

	spawn(function()
		while wait() do wait()
			if _G.AutoElectricClawV2 then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") then
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
						_G.SelectWeapon = "Electric Claw"
					end  
					if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")

						_G.SelectWeapon = "Electric Claw"
					end  
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 399 then
						_G.SelectWeapon = "Electro"
					end 
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
				end
			end
		end
	end)

	spawn(function()
		while wait() do
			pcall(function()
				if _G.AutoElectricClawV2 then
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
							if _G.AutoFarm == false then
								repeat wait()
									totarget(CFrame.new(-10371.4717, 330.764496, -10131.4199))
								until _G.StopTween == true or not _G.AutoElectricClawV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
								wait(2)
								repeat wait()
									totarget(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
								until _G.StopTween == true or not _G.AutoElectricClawV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10
								wait(1)
								repeat wait()
									totarget(CFrame.new(-10371.4717, 330.764496, -10131.4199))
								until _G.StopTween == true or not _G.AutoElectricClawV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
								wait(1)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
							elseif _G.AutoFarm == true then
								_G.AutoFarm = false
								wait(1)
								repeat wait()
									totarget(CFrame.new(-10371.4717, 330.764496, -10131.4199))
								until _G.StopTween == true or not _G.AutoElectricClawV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
								wait(2)
								repeat wait()
									totarget(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
								until _G.StopTween == true or not _G.AutoElectricClawV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10
								wait(1)
								repeat wait()
									totarget(CFrame.new(-10371.4717, 330.764496, -10131.4199))
								until _G.StopTween == true or not _G.AutoElectricClawV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
								wait(1)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
								_G.SelectWeapon = "Electric Claw"
								wait(.1)
								_G.AutoFarm = true
							end
						end
					end
				end
			end)
		end
	end)

	if ThreeWorld then
		page2:Toggle("Auto Elite Hunter",_G.EliteHunt,function (t)
			_G.EliteHunt = t
		end)
		spawn(function()
			while wait() do
				if  _G.EliteHunt then
					if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					    repeat totarget(CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5418.892578125, 313.74130249023, -2826.2260742188)).Magnitude <= 10
						wait(.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
					else
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Diablo (0/1)" then
							if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Diablo [Lv. 1750]" then
										repeat wait()
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											EquipWeapon(_G.SelectWeapon)
											totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
											if setsimulationradius then
												sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
											end
											v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											v.Humanoid:ChangeState(11)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										until _G.EliteHunt == false or v.Humanoid.Health <= 0
									end
								end
							else
								spawn(function()
								    totarget(game:GetService("ReplicatedStorage")["Diablo [Lv. 1750]"].HumanoidRootPart.CFrame *CFrame.new(0,0,15))
								end)
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Deandre (0/1)" then
							if game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Deandre [Lv. 1750]" then
										repeat wait()
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											EquipWeapon(_G.SelectWeapon)
											totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
											if setsimulationradius then
												sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
											end
											v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											v.Humanoid:ChangeState(11)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										until _G.EliteHunt == false or v.Humanoid.Health <= 0
									end
								end
							else
								spawn(function()
								    totarget(game:GetService("ReplicatedStorage")["Deandre [Lv. 1750]"].HumanoidRootPart.CFrame *CFrame.new(0,0,15))
								end)
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Urban (0/1)" then
							if game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Urban [Lv. 1750]" then
										repeat wait()
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											EquipWeapon(_G.SelectWeapon)
											totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
											if setsimulationradius then
												sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
											end
											v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											v.Humanoid:ChangeState(11)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										until _G.EliteHunt == false or v.Humanoid.Health <= 0
									end
								end
							else
								spawn(function()
								    totarget(game:GetService("ReplicatedStorage")["Urban [Lv. 1750]"].HumanoidRootPart.CFrame *CFrame.new(0,0,15))
								end)
							end
						end
					end
				end
			end
		end)
	end
	if ThreeWorld then
		page2:Toggle("Auto Elite Hunter + Hop",_G.ElitehuntHop,function (t)
			_G.ElitehuntHop = t
		end)
		spawn(function()
			while wait() do
				if  _G.ElitehuntHop then
					if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					    repeat totarget(CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5418.892578125, 313.74130249023, -2826.2260742188)).Magnitude <= 10
						wait(.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
					else
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Diablo (0/1)" then
							if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Diablo [Lv. 1750]" then
										repeat wait()
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											EquipWeapon(_G.SelectWeapon)
											totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
											if setsimulationradius then
												sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
											end
											v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											v.Humanoid:ChangeState(11)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										until _G.ElitehuntHop == false or v.Humanoid.Health <= 0
									end
								end
							else
								spawn(function()
								    totarget(game:GetService("ReplicatedStorage")["Diablo [Lv. 1750]"].HumanoidRootPart.CFrame *CFrame.new(0,0,15))
								end)
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Deandre (0/1)" then
							if game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Deandre [Lv. 1750]" then
										repeat wait()
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											EquipWeapon(_G.SelectWeapon)
											totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
											if setsimulationradius then
												sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
											end
											v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											v.Humanoid:ChangeState(11)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										until _G.ElitehuntHop == false or v.Humanoid.Health <= 0
									end
								end
							else
								spawn(function()
								    totarget(game:GetService("ReplicatedStorage")["Deandre [Lv. 1750]"].HumanoidRootPart.CFrame *CFrame.new(0,0,15))
								end)
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Urban (0/1)" then
							if game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Urban [Lv. 1750]" then
										repeat wait()
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											EquipWeapon(_G.SelectWeapon)
											totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
											if setsimulationradius then
												sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
											end
											v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											v.Humanoid:ChangeState(11)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										until _G.ElitehuntHop == false or v.Humanoid.Health <= 0
									end
								end
							else
								spawn(function()
								    totarget(game:GetService("ReplicatedStorage")["Urban [Lv. 1750]"].HumanoidRootPart.CFrame *CFrame.new(0,0,15))
								end)
							end
						end
					end
				end
			end
		end)
	end

	spawn(function()
		while wait() do
			if _G.ElitehuntHop then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
					else
						wait(12)
						if not game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
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
												-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
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
					end
				end) 
			end
		end
	end)
	if ThreeWorld then
		page2:Toggle("Auto RainbowHaki",false,function(t)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
			rainbowhaki = t
		end)
		spawn(function()
			while wait() do
				if rainbowhaki then
					if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
						repeat wait()
							totarget(CFrame.new(-11891.202148438, 930.57678222656, -8760.0498046875))
						until _G.StopTween == true or not rainbowhaki or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-11891.202148438, 930.57678222656, -8760.0498046875).Position).Magnitude <= 10
						wait(.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
					else
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Stone (0/1)" then
							if game:GetService("Workspace").Enemies:FindFirstChild("Stone [Lv. 1550] [Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Stone [Lv. 1550] [Boss]" then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											local args = {
												[1] = "Buso"
											}
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										end
										EquipWeapon(_G.SelectWeapon)
										totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end
								end
							else
							    totarget(CFrame.new(-1109.6944580078, 40.006885528564, 6730.9833984375))
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Island Empress (0/1)" then
							if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Island Empress [Lv. 1675] [Boss]" then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											local args = {
												[1] = "Buso"
											}
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										end
										EquipWeapon(_G.SelectWeapon)
										totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end
								end
							else
							    totarget(CFrame.new(5702.2724609375, 601.94860839844, 201.07873535156))
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Kilo Admiral (0/1)" then
							if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											local args = {
												[1] = "Buso"
											}
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										end
										EquipWeapon(_G.SelectWeapon)
										totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end
								end
							else
							    totarget(CFrame.new(2861.53515625, 423.58441162109, -7254.0751953125))
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Captain Elephant (0/1)" then
							if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											local args = {
												[1] = "Buso"
											}
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										end
										EquipWeapon(_G.SelectWeapon)
										totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end
								end
							else
							    totarget(CFrame.new(-13493.12890625, 318.89553833008, -8373.7919921875))
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Beautiful Pirate (0/1)" then
							if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											local args = {
												[1] = "Buso"
											}
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										end
										EquipWeapon(_G.SelectWeapon)
										
										totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end
								end
							else
							    totarget(CFrame.new(5378.6337890625, 22.56223487854, -26.053804397583))
							end
						end
					end
				end
			end
		end)
	end
	
	page1:Toggle("Auto Observation Haki V2",_G.AutoObservationHakiV2,function(x)
		_G.AutoObservationHakiV2 = x
	end)

	spawn(function()
		while wait() do
			if _G.AutoObservationHakiV2 then
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					repeat 
						totarget(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)) 
						wait() 
					until _G.StopTween == true or not _G.AutoObservationHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
					wait(.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
					wait(1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
				else
					if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Defeat 50 Forest Pirates") then
						if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Forest Pirate [Lv. 1825]" then
									repeat wait()
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
										EquipWeapon(_G.SelectWeapon)
										totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
										PosHee =  v.HumanoidRootPart.CFrame
										if sethiddenproperty then
											sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
										end
										v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										StatrMagnet = true
									until _G.AutoObservationHakiV2 == false or v.Humanoid.Health <= 0
									StatrMagnet = false
								end
							end
						else
							repeat 
								totarget(CFrame.new(-13277.568359375, 370.34185791016, -7821.1572265625)) 
								wait() 
							until _G.StopTween == true or not _G.AutoObservationHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13277.568359375, 370.34185791016, -7821.1572265625)).Magnitude <= 10
						end
					elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text ==  "Defeat  Captain Elephant (0/1)" then 
						if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
									repeat wait()
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
										EquipWeapon(_G.SelectWeapon)
										totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))										
										if sethiddenproperty then
											sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
										end
										v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									until _G.AutoObservationHakiV2 == false or v.Humanoid.Health <= 0
								end
							end
						else
							repeat 
								totarget(CFrame.new(-13493.12890625, 318.89553833008, -8373.7919921875)) 
								wait() 
							until _G.StopTween == true or not _G.AutoObservationHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13493.12890625, 318.89553833008, -8373.7919921875)).Magnitude <= 10
						end        
					end
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Banana") and  game.Players.LocalPlayer.Backpack:FindFirstChild("Apple") and game.Players.LocalPlayer.Backpack:FindFirstChild("Pineapple") then
					repeat 
						totarget(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)) 
						wait() 
					until _G.StopTween == true or not _G.AutoObservationHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
					wait(.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
				elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or game.Players.LocalPlayer.Character:FindFirstChild("Fruit Bowl") then
					repeat 
						totarget(CFrame.new(-10920.125, 624.20275878906, -10266.995117188)) 
						wait() 
					until _G.StopTween == true or not _G.AutoObservationHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10920.125, 624.20275878906, -10266.995117188)).Magnitude <= 10
					wait(.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Start")
					wait(1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Buy")
				else
					for i,v in pairs(game.Workspace:GetDescendants()) do
						if v.Name == "Apple" or v.Name == "Banana" or v.Name == "Pineapple" then
							v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,10)
							wait()
							firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle,0)    
							wait()
						end
					end   
				end
			end
		end
	end)

	spawn(function()
		while wait() do
			pcall(function()
				if _G.AutoObservationHakiV2 then
					if sethiddenproperty then
						sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
					end
				end
			end)
			game:GetService("RunService").Heartbeat:Wait()
		end
	end)

	spawn(function()
		game:GetService("RunService").Heartbeat:connect(function()
			pcall(function()
				if _G.AutoObservationHakiV2 then
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
						game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
					end
				end
			end)
		end)
	end)

	spawn(function()
		pcall(function()
			game:GetService("RunService").Heartbeat:Connect(function()
				game:GetService("RunService").Heartbeat:Wait()
				if _G.AutoObservationHakiV2 and StatrMagnet then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == "Forest Pirate [Lv. 1825]" and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							if v.Name == "Forest Pirate [Lv. 1825]" then
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
								v.HumanoidRootPart.CFrame = PosHee
							end
						end
					end
				end
			end)
		end)
	end)

	spawn(function()
		game:GetService("RunService").Heartbeat:connect(function()
			game:GetService("RunService").Heartbeat:Wait()
			pcall(function()
				if _G.AutoObservationHakiV2 and StatrMagnet then
					CheckQuest()
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == Ms then
							v.Humanoid:ChangeState(11)
						end
					end
				end
			end)
			game:GetService("RunService").Heartbeat:Wait()
		end)
	end)

	spawn(function()
		while wait() do
			pcall(function()
				if _G.AutoObservationHakiV2 and StatrMagnet then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == Ms and v:FindFirstChild("HumanoidRootPart") then
							if not v.HumanoidRootPart:FindFirstChild("BringEE") then
								local bv = Instance.new("BodyVelocity")
								bv.Parent = v.HumanoidRootPart
								bv.Name = "BringEE"
								bv.MaxForce = Vector3.new(100000,100000,100000)
								bv.Velocity = Vector3.new(0,0,0)
							end
						end
					end
				end
			end)
			wait()
		end
	end)


	if ThreeWorld then
		page2:Toggle("Auto Yama + Hop",_G.YamaHop,function(t)
			_G.YamaHop = t
		end)
	end

	spawn(function()
		while wait() do
			pcall(function()
				if _G.YamaHop then
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
						fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
					else
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
							repeat totarget(CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188)) wait() until _G.StopTween == true or not _G.YamaHop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5418.892578125, 313.74130249023, -2826.2260742188)).Magnitude <= 10
							wait(.9)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
						else
							if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Diablo (0/1)" then
								if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Diablo [Lv. 1750]" then
											repeat wait()
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
												end
												EquipWeapon(_G.SelectWeapon)
												totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
												sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
												v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
												v.HumanoidRootPart.CanCollide = false
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												v.Humanoid:ChangeState(11)
												_G.FastBoss = true
											until _G.YamaHop == false or v.Humanoid.Health <= 0
											_G.FastBoss = false
										end
									end
								else
									spawn(function()
									    totarget(game:GetService("ReplicatedStorage")["Diablo [Lv. 1750]"].HumanoidRootPart.CFrame *CFrame.new(0,0,15))
									end)
								end
							elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Deandre (0/1)" then
								if game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Deandre [Lv. 1750]" then
											repeat wait()
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
												end
												EquipWeapon(_G.SelectWeapon)
                                                totarget(v.HumanoidRootPart.Position + Vector3.new(1,20,1) , v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))												
                                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
												v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
												v.HumanoidRootPart.CanCollide = false
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												v.Humanoid:ChangeState(11)
												_G.FastBoss = true
											until _G.YamaHop == false or v.Humanoid.Health <= 0
											_G.FastBoss = false
										end
									end
								else
									spawn(function()
									    totarget(game:GetService("ReplicatedStorage")["Deandre [Lv. 1750]"].HumanoidRootPart.CFrame *CFrame.new(0,0,15))
									end)
								end
							elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Urban (0/1)" then
								if game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Urban [Lv. 1750]" then
											repeat wait()
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
												end
												EquipWeapon(_G.SelectWeapon)
                                                totarget(v.HumanoidRootPart.Position + Vector3.new(1,20,1) , v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))												
                                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
												v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
												v.HumanoidRootPart.CanCollide = false
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												v.Humanoid:ChangeState(11)
												_G.FastBoss = true
											until _G.YamaHop == false or v.Humanoid.Health <= 0
											_G.FastBoss = false
										end
									end
								else
									spawn(function()
									    totarget(game:GetService("ReplicatedStorage")["Urban [Lv. 1750]"].HumanoidRootPart.CFrame *CFrame.new(0,0,15))
									end)
								end
							end
						end
					end
				end
			end)
		end
	end)

	spawn(function()
		while wait() do
			if _G.YamaHop then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
					else
						wait(12)
						if not game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
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
												-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
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
					end
				end) 
			end
		end
	end)

	if ThreeWorld then
		page2:Toggle("Auto Tushita + Hop",_G.Tushitahop,function(t)
			_G.Tushitahop = t
		end)
	end

	spawn(function()
		while wait(.1) do
			if _G.Tushitahop then
				autoTushita()
			end
		end
	end)


	function enemyrip()
	    totarget(CFrame.new(-5332.30371, 423.985413, -2673.48218))
		wait()
		if game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
			local mobs = game.Workspace.Enemies:GetChildren()
			for i,v in pairs(mobs) do
				if v.Name == "rip_indra True Form [Lv. 5000] [Raid Boss]" and v:IsA("Model") and v:FindFirstChild("Humanoid") and
					v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
					return v
				end
			end
		end
		return game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")
	end
	function enemyEliteBoss()
		if game.Workspace.Enemies:FindFirstChild("Deandre [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Urban [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Diablo [Lv. 1750]") then
			local mobs = game.Workspace.Enemies:GetChildren()
			for i,v in pairs(mobs) do
				if v.Name == "Deandre [Lv. 1750]" or v.Name == "Diablo [Lv. 1750]" or v.Name == "Urban [Lv. 1750]"  and v:IsA("Model") and v:FindFirstChild("Humanoid") and
					v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
					return v
				end
			end
		end
		return game.ReplicatedStorage:FindFirstChild("Deandre [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Urban [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Diablo [Lv. 1750]")
	end

	function enemylongma()
	    totarget(CFrame.new(-10171.7051, 406.981995, -9552.31738))
		if game.Workspace.Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") then
			local mobs = game.Workspace.Enemies:GetChildren()
			for i,v in pairs(mobs) do
				if v.Name == "Longma [Lv. 2000] [Boss]" and v:IsA("Model") and v:FindFirstChild("Humanoid") and
					v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
					return v
				end
			end
		end
		return game.ReplicatedStorage:FindFirstChild("Longma [Lv. 2000] [Boss]")
	end

	_G.checkup = true
	function autoTushita()
		if _G.checkup and not game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") and not game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
			if game.Workspace.Enemies:FindFirstChild("Deandre [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Urban [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Diablo [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Deandre [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Urban [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Diablo [Lv. 1750]") then
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					_G.FastBoss = false
					repeat totarget(CFrame.new(5420.49219, 314.446045, -2823.07373)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
					wait(1)
					repeat totarget(CFrame.new(5420.49219, 314.446045, -2823.07373)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
					wait(1.1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
					wait(1)
				elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					CheckQuest()
					pcall(function()
						EquipWeapon(_G.SelectWeapon)
						pcall(function()
							local v = enemyEliteBoss()
							v.HumanoidRootPart.CanCollide = false
							v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
							totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
							_G.FastBoss = true
						end)
					end)
				end
			elseif _G.ServerHop then
				_G.FastBoss = false
				totarget(CFrame.new(-12554.9443, 337.194092, -7501.44727))
				wait(1)
				Hopey()
			end
		elseif game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
			_G.checkup = false
			_G.FastBoss = false
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Winter Sky")
			wait(0.5)
			repeat totarget(CFrame.new(-5420.16602, 1084.9657, -2666.8208)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5420.16602, 1084.9657, -2666.8208)).Magnitude <= 10
			wait(0.5)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Pure Red")
			wait(0.5)
			repeat totarget(CFrame.new(-5414.41357, 309.865753, -2212.45776)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5414.41357, 309.865753, -2212.45776)).Magnitude <= 10
			wait(0.5)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Snow White")
			wait(0.5)
			repeat totarget(CFrame.new(-4971.47559, 331.565765, -3720.02954)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-4971.47559, 331.565765, -3720.02954)).Magnitude <= 10
			wait(0.5)
			EquipWeapon("God's Chalice")
			wait(0.5)
			repeat totarget(CFrame.new(-5560.27295, 313.915466, -2663.89795)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5560.27295, 313.915466, -2663.89795)).Magnitude <= 10
			wait(0.5)
			repeat totarget(CFrame.new(-5561.37451, 313.342529, -2663.4948)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
			wait(1)
			repeat totarget(CFrame.new(5154.17676, 141.786423, 911.046326)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
			wait(0.2)
			repeat totarget(CFrame.new(5148.03613, 162.352493, 910.548218)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
			wait(1)
			EquipWeapon("Holy Torch")
			wait(1)
			wait(0.4)
			repeat totarget(CFrame.new(-10752.7695, 412.229523, -9366.36328)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
			wait(0.4)
			repeat totarget(CFrame.new(-11673.4111, 331.749023, -9474.34668)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
			wait(0.4)
			repeat totarget(CFrame.new(-12133.3389, 519.47522, -10653.1904)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
			wait(0.4)
			repeat totarget(CFrame.new(-13336.5, 485.280396, -6983.35254)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
			wait(0.4)
			repeat totarget(CFrame.new(-13487.4131, 334.84845, -7926.34863)) wait() until _G.StopTween == true or not _G.Tushitahop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
			wait(1)
		elseif game.Workspace.Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") or game.ReplicatedStorage:FindFirstChild("Longma [Lv. 2000] [Boss]") then
			pcall(function()
				EquipWeapon(_G.SelectWeapon)
				pcall(function()
					local v = enemylongma()
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
					totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
					_G.FastBoss = true
				end)
			end)
		elseif game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")  or game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
			pcall(function()
				EquipWeapon(_G.SelectWeapon)
				pcall(function()
					local v = enemyrip()
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
					totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
					_G.FastBoss = true
				end)
			end)
		elseif _G.ServerHop then
			_G.FastBoss = false
			totarget(CFrame.new(-12554.9443, 337.194092, -7501.44727))
			wait(1)
			Hopey()  
		end
	end

	if ThreeWorld then
		page1:Toggle("Auto Beautiful Pirate",_G.Cave,function(vu)
		    totarget(CFrame.new(5310.80957, 22.5622349, 129.390533))
			_G.Cave = vu
		end)
		spawn(function()
			while wait() do
				if _G.Cave then
					if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
								repeat wait()
									pcall(function()
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											local args = {
												[1] = "Buso"
											}
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										end
										EquipWeapon(_G.SelectWeapon)
										v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
										v.HumanoidRootPart.CanCollide = false
										totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end)
								until _G.Cave == false or v.Humanoid.Health <= 0
							end
						end
					end
				end
			end
		end)
	end

	page2:Toggle("Auto Player Hunter",_G.AutoPlayerHunter,function(x)
		_G.AutoPlayerHunter = x
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
		while wait() do
			if _G.AutoPlayerHunter then
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					repeat 
						totarget(CFrame.new(-5560.00390625, 313.74130249023, -2838.4792480469)) 
						wait() 
					until _G.StopTween == true or not _G.AutoPlayerHunter or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5560.00390625, 313.74130249023, -2838.4792480469)).Magnitude <= 10
					wait(.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
				else
					for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
						if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.Name) then
							repeat wait()
								if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
									local args = {
										[1] = "Buso"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
								EquipWeapon(_G.SelectWeapon)
								totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,10,1))								
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
							until _G.AutoPlayerHunter == false or v.Humanoid.Health <= 0
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
						end
					end
				end
			end
		end
	end)

page2:Line()
		page2:Toggle("Fast Attack",_G.FastAttk,function(value)
			_G.FastAttk = value
		end)
	
local CombatFrameworkR = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework) 

local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)

spawn(function()
	for i = 1,math.huge do
		game:GetService("RunService").Heartbeat:wait()
		if _G.FastAttk then
			pcall(function()
					CameraShakerR:Stop()
					CombatFrameworkR.activeController.attacking = false
					CombatFrameworkR.activeController.timeToNextAttack = 0
					CombatFrameworkR.activeController.increment = 3
					CombatFrameworkR.activeController.hitboxMagnitude = 50
			end)
		end
		game:GetService("RunService").Heartbeat:wait()
	end
end)

spawn(function()
	game:GetService("RunService").Heartbeat:connect(function()
		pcall(function()
			if _G.FastAttk then
					VirtualUser:CaptureController()
					VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
			end
		end)
	end)
	game:GetService("RunService").Heartbeat:connect(function()
		pcall(function()
			if _G.FastAttk then
					VirtualUser:CaptureController()
					VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
			end
		end)
	end)
end)
		
		page2:Line()

	if ThreeWorld then
		page1:Toggle("Auto Torch",false,function(vu)
			_G.HolyTorch = vu
		end)
		spawn(function()
			while wait() do
				if _G.HolyTorch then
					wait(1)
					repeat totarget(CFrame.new(-10752, 417, -9366)) wait() until _G.StopTween == true or not _G.HolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10752, 417, -9366)).Magnitude <= 10
					wait(1)
					repeat totarget(CFrame.new(-11672, 334, -9474)) wait() until _G.StopTween == true or not _G.HolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-11672, 334, -9474)).Magnitude <= 10
					wait(1)
					repeat totarget(CFrame.new(-12132, 521, -10655)) wait() until _G.StopTween == true or not _G.HolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12132, 521, -10655)).Magnitude <= 10
					wait(1)
					repeat totarget(CFrame.new(-13336, 486, -6985)) wait() until _G.StopTween == true or not _G.HolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13336, 486, -6985)).Magnitude <= 10
					wait(1)
					repeat totarget(CFrame.new(-13489, 332, -7925)) wait() until _G.StopTween == true or not _G.HolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13489, 332, -7925)).Magnitude <= 10
				end
			end
		end)
	end
	
		page1:Toggle("Auto Randim Bone",false,function(e)
			_G.RandomBone = e
		end)
		
		spawn(function()
		    while wait() do
		        if _G.RandomBone then
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

		page2:Toggle("Auto Pole",_G.Pole,function(vu)
		    totarget(Vector3.new(-7911.14453, 5613.89795, -2272.67822),CFrame.new(-7911.14453, 5613.89795, -2272.67822))
			_G.Pole = vu
		end)
		spawn(function()
			while wait() do
				if _G.Pole then
					if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Thunder God [Lv. 575] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
								repeat wait()
									pcall(function()
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											local args = {
												[1] = "Buso"
											}
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										end
										EquipWeapon(_G.SelectWeapon)
										v.Humanoid:ChangeState(11)
										v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
										v.HumanoidRootPart.CanCollide = false
										totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end)
								until _G.Pole == false or v.Humanoid.Health <= 0
							end
						end
					end
				end
			end
		end)

		spawn(function()
			while wait() do
				if _G.Pole then
					EquipWeapon(_G.SelectWeapon)
				end
			end
		end)

		page2:Toggle("Auto Pole+Hop",_G.PoleHop,function(eiei)
			wait(1)
			_G.PoleHop = eiei
		end)
		spawn(function()
			while wait() do
				if _G.PoleHop then
					pcall(function()
						if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Thunder God [Lv. 575] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
									repeat wait()
										pcall(function()
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											EquipWeapon(_G.SelectWeapon)
											v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
											v.HumanoidRootPart.CanCollide = false
											totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										end)
									until _G.PoleHop == false or v.Humanoid.Health <= 0
								end
							end
						else
						    repeat totarget(CFrame.new(-7747.6977539063, 5606.9404296875, -2420.6140136719)) wait() until _G.StopTween == true or not _G.PoleHop or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-7747.6977539063, 5606.9404296875, -2420.6140136719)).Magnitude <= 10
							wait(1)
							if not game:GetService("Workspace").Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God [Lv. 575] [Boss]") then
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
													-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
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
						end
					end) 
				end
			end
		end)
		
		page2:Toggle("Auto SwanGlasses",_G.SwanGlasses,function(vu)
		    totarget(Vector3.new(2191.1674804688, 15.177842140198, 694.69873046875),CFrame.new(2191.1674804688, 15.177842140198, 694.69873046875))
			_G.SwanGlasses = vu
		end)
		spawn(function()
			while wait() do
				if _G.SwanGlasses then
					if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Don Swan [Lv. 1000] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
								repeat wait()
									pcall(function()
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											local args = {
												[1] = "Buso"
											}
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										end
										EquipWeapon(_G.SelectWeapon)
										v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
										v.HumanoidRootPart.CanCollide = false
										totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end)
								until _G.SwanGlasses == false or v.Humanoid.Health <= 0
							end
						end
					end
				end
			end
		end)

		spawn(function()
			while wait() do
				if _G.SwanGlasses then
					EquipWeapon(_G.SelectWeapon)
				end
			end
		end)

	if NewWorld then
		page2:Toggle("Auto Swan+Hop",_G.SwanHop,function(eiei)
			_G.SwanHop = eiei
		end)
	end
		spawn(function()
			while wait() do
				if _G.SwanHop then
					pcall(function()
						if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Don Swan [Lv. 1000] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
									repeat wait()
										pcall(function()
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											EquipWeapon(_G.SelectWeapon)
											v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
											v.HumanoidRootPart.CanCollide = false
											totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										end)
									until _G.SwanHop == false or v.Humanoid.Health <= 0
								end
							end
						else
							repeat totarget(CFrame.new(2191.1674804688, 15.177842140198, 694.69873046875)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2191.1674804688, 15.177842140198, 694.69873046875)).Magnitude <= 10
							wait(1)
							if not game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
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
													-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
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
						end
					end) 
				end
			end
		end)

	if NewWorld then
		page1:Toggle("Auto Dark Coat+Hop",_G.BlackBeardHop,function(eiei)
			_G.BlackBeardHop = eiei
		end)
	end
		spawn(function()
			while wait() do
				if _G.BlackBeardHop then
					pcall(function()
						if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Darkbeard [Lv. 1000] [Raid Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
									repeat wait()
										pcall(function()
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											EquipWeapon(_G.SelectWeapon)
											v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
											v.HumanoidRootPart.CanCollide = false
											totarget(v.HumanoidRootPart.Position + Vector3.new(1,20,1) , v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										end)
									until _G.BlackBeardHop == false or v.Humanoid.Health <= 0
								end
							end
						else
							repeat totarget(CFrame.new(3798.4575195313, 13.826690673828, -3399.806640625)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(3798.4575195313, 13.826690673828, -3399.806640625)).Magnitude <= 10
							wait(1)
							if not game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") then
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
													-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
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
						end
					end) 
				end
			end
		end)


	if NewWorld then
		page1:Toggle("Auto Buy Buso Color",_G.BuyEn,function(Value)
			_G.BuyEn = Value 
		end)   
	end
		spawn(function()
			while _G.BuyEn do wait()
				if _G.BuyEn then
					local args = {
						[1] = "ColorsDealer",
						[2] = "2"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
			end
		end)

	if NewWorld then
		page1:Toggle("Auto Buy Haki+Hop",_G.HakiColorHop,function(Value)
			_G.HakiColorHop = Value
		end)
	end
		spawn(function()
			while _G.HakiColorHop do wait()
				if _G.HakiColorHop then
					local args = {
						[1] = "ColorsDealer",
						[2] = "2"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
			end
		end)

	if NewWorld then
		page1:Toggle("Auto Buy Legendary Sword",_G.BuySword,function(Value)
			_G.BuySword = Value
		end)
		spawn(function()
			while _G.BuySword do wait()
				if _G.BuySword then
					local args = {
						[1] = "LegendarySwordDealer",
						[2] = "2"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
			end
		end)
	end

	if NewWorld then
		page1:Toggle("Auto Buy Legendary Sword+Hop",_G.AutoBuySwordHop,function(Value)
			_G.AutoBuySwordHop = Value
		end)
		spawn(function()
			while _G.AutoBuySwordHop do wait()
				if _G.AutoBuySwordHop then
					local args = {
						[1] = "LegendarySwordDealer",
						[2] = "2"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
			end
		end)
	end

	spawn(function()
		while wait(7) do
			if _G.AutoBuySwordHop or _G.HakiColorHop then
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
									-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
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
		end
	end)

	page2:Toggle("Mob Aura",_G.MobAura,function(v)
		_G.MobAura = v 
		spawn(function()
			while _G.MobAura do wait()
				if _G.MobAura then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if _G.MobAura and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= DistanceNear then
							repeat wait()
								if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
									local args = {
										[1] = "Buso"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
								EquipWeapon(_G.SelectWeapon)
								game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
								VirtualUser:CaptureController()
								VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
								if HideHitBlox then
									v.HumanoidRootPart.Transparency = 1
								else
									v.HumanoidRootPart.Transparency = 0.75
								end
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
								if Magnet then
									if setsimulationradius then 
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
									end
								end
                            totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))						
                            until _G.MobAura == false or not v.Parent or v.Humanoid.Health <= 0
						end
					end
				end
			end
		end)
	end)
	DistanceNear = 1000000

	Wapon = {}
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
		if v:IsA("Tool") then
			table.insert(Wapon ,v.Name)
		end
	end
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
		if v:IsA("Tool") then
			table.insert(Wapon, v.Name)
		end
	end
	local SelectWeapona = page1:Drop("Select Weapon",false,Wapon,function(Value)
		_G.SelectWeapon = Value
		_G.SelectToolWeaponOld = Value
	end)
	page1:Button("Refresh Weapon",function()
		SelectWeapona:Clear()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
			if v:IsA("Tool") then
				SelectWeapona:Add(v.Name)
			end
		end
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
			if v:IsA("Tool") then
				SelectWeapona:Add(v.Name)
			end
		end
	end) 

	function equip()
		pcall(function()
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v.Name == _G.SelectWeapon then
					game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
				end
			end
		end)
	end

	page2:Label("Auto Accessories")
	WaponAccessories = {} 
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
		if v:IsA("Tool") then 
			if v.ToolTip == "Wear" then    
				table.insert(WaponAccessories, v.Name)
			end
		end
	end
	SelectTooAccessories = ""
	page2:Toggle("Auto Accessories",false,function(Value)
		AutoAccessories = Value 
	end)
	spawn(function()
		while wait() do
			if AutoAccessories then
				CheckAccessories = game.Players.LocalPlayer.Character 
				if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0 then
					if CheckAccessories:FindFirstChild("CoolShades") or CheckAccessories:FindFirstChild("BlackSpikeyCape") or CheckAccessories:FindFirstChild("BlueSpikeyCape") or CheckAccessories:FindFirstChild("RedSpikeyCape") or CheckAccessories:FindFirstChild("Chopper") or CheckAccessories:FindFirstChild("MarineCape") or CheckAccessories:FindFirstChild("GhoulMask") or CheckAccessories:FindFirstChild("MarineCap") or CheckAccessories:FindFirstChild("PinkCape") or CheckAccessories:FindFirstChild("SaboTopHat") or CheckAccessories:FindFirstChild("SwanGlasses") or CheckAccessories:FindFirstChild("UsoapHat") or CheckAccessories:FindFirstChild("Corrida") or CheckAccessories:FindFirstChild("ZebraCap") or CheckAccessories:FindFirstChild("TomoeRing") or CheckAccessories:FindFirstChild("BlackCape") or CheckAccessories:FindFirstChild("SwordsmanHat") or CheckAccessories:FindFirstChild("SantaHat") or CheckAccessories:FindFirstChild("ElfHat") or CheckAccessories:FindFirstChild("DarkCoat") or CheckAccessories:FindFirstChild("Valkyrie Helm") then
					else
						EquipWeapon(SelectTooAccessories)
						wait(0.1)
						game:GetService'VirtualUser':CaptureController()
						game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
						wait(0.1)
						if game.Players.LocalPlayer.Character:FindFirstChild(SelectTooAccessories) then
							game.Players.LocalPlayer.Character:FindFirstChild(SelectTooAccessories).Parent = game.Players.LocalPlayer:FindFirstChild("Backpack")
						end
						wait(1)
					end
				end
			end
		end
	end)

	local SelectAccessories = page2:Drop("Select Accessories",false,WaponAccessories,function(Value)
		SelectTooAccessories = Value
	end)
	page2:Button("Refresh Accessories",function()
		SelectAccessories:Clear()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then 
				if v.ToolTip == "Wear" then    
					SelectAccessories:Add(v.Name)
				end
			end
		end
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then 
				if v.ToolTip == "Wear" then    
					SelectAccessories:Add(v.Name)
				end
			end
		end
	end)

	page2:Line()
	--Mastery--
	page2:Label("Auto Farm Mastery")
	game:GetService("RunService").Heartbeat:Connect(
	function()
		if _G.Mastery then
			game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
		end
		if _G.GunMastery then
			game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
		end
	end
	)
	_G.WeponMatary = ""
	--page2:Toggle("Auto Farm Mastery Devil Fruit",_G.Mastery,function(v)
	--	CheckQuest()
	--	local args = {
	--		[1] = "AbandonQuest"
	--	}
	--	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	--	_G.Mastery = v
	--end)
	LocalPlayer = game:GetService("Players").LocalPlayer
	spawn(function()
		while wait() do
			pcall(function()
				if _G.Mastery then
					if LocalPlayer.PlayerGui.Main.Quest.Visible == false then
						StatrMagnetDevilFruitMastery = false
						CheckQuest()
						totarget(CFrameQuest)
						repeat wait() until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-CFrameQuest.Position).Magnitude <= 10
						wait(1.1)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
					elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						CheckQuest()
						totarget(CFrameMon)
						if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
							pcall(
								function()
									for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										CheckQuest()  
										if v.Name == Ms then
											if setsimulationradius then 
												sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
											end
											repeat wait() CheckQuest()  
												if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
													if string.find(LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															local args = {
																[1] = "Buso"
															}
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
														end
														HealthMin = v.Humanoid.MaxHealth*Persen/100
														PosHee = v.HumanoidRootPart.CFrame
														if v.Humanoid.Health <= HealthMin then
															UseDF = true
															EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
															v.HumanoidRootPart.CanCollide = false
															v.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
															v.HumanoidRootPart.Transparency = 0.75
															totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
															if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then
																if SkillZ and v.Humanoid.Health <= HealthMin then
																	local args = {
																		[1] = v.HumanoidRootPart.Position
																	}
																	game:GetService("Players").LocalPlayer.Character["Dragon-Dragon"].RemoteEvent:FireServer(unpack(args))
																	local args = {
																		[1] = "Z",
																		[2] = Vector3.new(0,0,0)
																	}
																	game:GetService("Players").LocalPlayer.Character["Dragon-Dragon"].RemoteFunction:InvokeServer(unpack(args))
																end
																if SkillX and v.Humanoid.Health <= HealthMin then
																	local args = {
																		[1] = v.HumanoidRootPart.Position
																	}
																	game:GetService("Players").LocalPlayer.Character["Dragon-Dragon"].RemoteEvent:FireServer(unpack(args))
																	local args = {
																		[1] = "X"
																	}
																	game:GetService("Players").LocalPlayer.Character["Dragon-Dragon"].RemoteFunction:InvokeServer(unpack(args))
																end   
															elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
																if SkillZ and v.Humanoid.Health <= HealthMin then
																	local args = {
																		[1] = v.HumanoidRootPart.Position
																	}
																	game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
																	local args = {
																		[1] = "Z",
																		[2] = Vector3.new(0,0,0)
																	}
																	game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteFunction:InvokeServer(unpack(args))
																end
																if SkillX and v.Humanoid.Health <= HealthMin then
																	local args = {
																		[1] = v.HumanoidRootPart.Position
																	}
																	game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
																	local args = {
																		[1] = "X",
																		[2] = Vector3.new(0,0,0)
																	}

																	game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteFunction:InvokeServer(unpack(args))
																end
																if SkillC and v.Humanoid.Health <= HealthMin then
																	local args = {
																		[1] = v.HumanoidRootPart.Position
																	}
																	game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
																	local args = {
																		[1] = "C",
																		[2] = Vector3.new(0,0,0)
																	}
																	game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteFunction:InvokeServer(unpack(args))
																end
																if SkillV and v.Humanoid.Health <= HealthMin then
																	local args = {
																		[1] = v.HumanoidRootPart.Position
																	}
																	game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
																	local args = {
																		[1] = "V",
																		[2] = Vector3.new(0,0,0)
																	}
																	game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteFunction:InvokeServer(unpack(args))
																end
															end   
														else
															UseDF = false
															if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																local args = {
																	[1] = "Buso"
																}
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
															end
															EquipWeapon(_G.WeponMatary)
															if HideHitBlox then
																v.HumanoidRootPart.Transparency = 0.75
															else
																v.HumanoidRootPart.Transparency = 1
															end
															v.HumanoidRootPart.CanCollide = false
															v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
															totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
															game:GetService'VirtualUser':CaptureController()
															game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))  
														end
														StatrMagnetDevilFruitMastery = true 
													else
														StatrMagnet = false
														CheckQuest()
														print()
														totarget(CFrameQuest)
														wait(1.5)
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
													end  
												else
													CheckQuest() 
													totarget(CFrameMon)
													repeat wait() until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-CFrameQuest.Position).Magnitude <= 10
												end 
											until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoFarm == false or LocalPlayer.PlayerGui.Main.Quest.Visible == false
											StatrMagnetDevilFruitMastery = false
											CheckQuest() 
											totarget(CFrameMon)
										end
									end
								end
							)
						else
							CheckQuest()
							totarget(CFrameMon)
						end 
					end 
				end
			end) 
		end
	end)

	---Gun---
	spawn(function()
		while wait() do
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
				if v:IsA("Tool") then
					if v:FindFirstChild("RemoteFunctionShoot") then 
						_G.SelectToolWeaponGun = v.Name
					end
				end
			end
		end
	end)
	spawn(function()
		while wait() do
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
				if v:IsA("Tool") then
					if v:FindFirstChild("RemoteFunctionShoot") then 
						_G.SelectToolWeaponGun = v.Name
					end
				end
			end
		end
	end)
	page2:Toggle("Auto Farm Gun Mastery",_G.GunMastery,function(v)
		CheckQuest()
		local args = {
			[1] = "AbandonQuest"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		_G.GunMastery = v
		Ms = ""
	end)
	spawn(function()
		while wait() do
			pcall(function()
				if _G.GunMastery then
					if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then  
						CheckQuest()
						totarget(CFrameQuest)
						repeat wait() until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-CFrameQuest.Position).Magnitude <= 10
						wait(1.1)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
						wait(0.5)
						totarget(CFrameMon)
					elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then  
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							CheckQuest()
							pcall(function()
								if game.Workspace.Enemies:FindFirstChild(Ms) then
									if _G.GunMastery and v.Name == Ms then
										if setsimulationradius then 
											sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
										end
										repeat wait()
											pcall(function()
												if game.Workspace.Enemies:FindFirstChild(Ms) then
													if string.find(LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
														HealthMin = v.Humanoid.MaxHealth*Persen/100
														PosHee = v.HumanoidRootPart.CFrame
														if v.Humanoid.Health <= HealthMin then
															EquipWeapon(_G.SelectToolWeaponGun)
															v.HumanoidRootPart.CanCollide = false
															v.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
															v.HumanoidRootPart.Transparency = 0.75
															totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
															local args = {
																[1] = v.HumanoidRootPart.Position,
																[2] = v.HumanoidRootPart
															}
															game:GetService("Players").LocalPlayer.Character[_G.SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
														else
															if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																local args = {
																	[1] = "Buso"
																}
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
															end
															EquipWeapon(_G.WeponMatary)
															if HideHitBlox then
																v.HumanoidRootPart.Transparency = 0.75
															else
																v.HumanoidRootPart.Transparency = 1
															end
															v.HumanoidRootPart.CanCollide = false
															v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
															totarget(v.HumanoidRootPart.CFrame * CFrame.new(20,1,1))
															game:GetService'VirtualUser':CaptureController()
															game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
														end 
														StatrMagnet = true
													else
														CheckQuest()
														totarget(CFrameQuest)
						                                repeat wait() until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-CFrameQuest.Position).Magnitude <= 10
														wait(1.1)
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
														wait(0.5)
														totarget(CFrameMon)
													end
												else
													CheckQuest()
													totarget(CFrameMon)
												end
											end)
										until game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or _G.GunMastery == false or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
									end
								else
									CheckQuest()
									totarget(CFrameMon)
								end
							end)
						end
					end 
				end
			end) 
		end
	end)

	page2:Label("Auto Skill")
	page2:Toggle("Skill Z",true,function(a)
		SkillZ = a
	end)
	page2:Toggle("Skill X",true,function(a)
		SkillX = a
	end)
	page2:Toggle("Skill C",true,function(a)
		SkillC = a
	end)
	page2:Toggle("Skill V",true,function(a)
		SkillV = a
	end)
	Persen = 30
	page2:Slider("Health",false,false,0,100,Persen,1,false,Persen,function(v)
        Persen = v["s"]
    end)
	local AMonster = page2:Drop("Select Weapon",false,Wapon,function(v)
		_G.WeponMatary = v
	end)
	page2:Button("Refresh Weapon",function()
		AMonster:Clear()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
			if v:IsA("Tool") then
				AMonster:Add(v.Name)
			end
		end
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
			if v:IsA("Tool") then
				AMonster:Add(v.Name)
			end
		end
	end)

	-- Fram Boss Tab
	page1:Label("Auto Farm Boss")
	function CheckQuestBoss()
		if SelectBoss == "Diamond [Lv. 750] [Boss]" then
			MsBoss = "Diamond [Lv. 750] [Boss]"
			NaemQuestBoss = "Area1Quest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
			CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
		elseif SelectBoss == "Jeremy [Lv. 850] [Boss]" then
			MsBoss = "Jeremy [Lv. 850] [Boss]"
			NaemQuestBoss = "Area2Quest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
			CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
		elseif SelectBoss == "Fajita [Lv. 925] [Boss]" then
			MsBoss = "Fajita [Lv. 925] [Boss]"
			NaemQuestBoss = "MarineQuest3"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
			CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
		elseif SelectBoss == "Don Swan [Lv. 1000] [Boss]" then
			MsBoss = "Don Swan [Lv. 1000] [Boss]"
			CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
		elseif SelectBoss == "Smoke Admiral [Lv. 1150] [Boss]" then
			MsBoss = "Smoke Admiral [Lv. 1150] [Boss]"
			NaemQuestBoss = "IceSideQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
			CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
		elseif SelectBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" then
			MsBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
			CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
		elseif SelectBoss == "Darkbeard [Lv. 1000] [Raid Boss]" then
			MsBoss = "Darkbeard [Lv. 1000] [Raid Boss]"
			CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
		elseif SelectBoss == "Order [Lv. 1250] [Raid Boss]" then
			MsBoss = "Order [Lv. 1250] [Raid Boss]"
			CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
		elseif SelectBoss == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
			MsBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
			NaemQuestBoss = "FrostQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
			CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
		elseif SelectBoss == "Tide Keeper [Lv. 1475] [Boss]" then
			MsBoss = "Tide Keeper [Lv. 1475] [Boss]"
			NaemQuestBoss = "ForgottenQuest"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
			CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
			-- Old World
		elseif SelectBoss == "Saber Expert [Lv. 200] [Boss]" then
			MsBoss = "Saber Expert [Lv. 200] [Boss]"
			CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
		elseif SelectBoss == "The Saw [Lv. 100] [Boss]" then
			MsBoss = "The Saw [Lv. 100] [Boss]"
			CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
		elseif SelectBoss == "The Gorilla King [Lv. 25] [Boss]" then
			MsBoss = "The Gorilla King [Lv. 25] [Boss]"
			NaemQuestBoss = "JungleQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
			CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
		elseif SelectBoss == "Bobby [Lv. 55] [Boss]" then
			MsBoss = "Bobby [Lv. 55] [Boss]"
			NaemQuestBoss = "BuggyQuest1"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
			CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
		elseif SelectBoss == "Yeti [Lv. 110] [Boss]" then
			MsBoss = "Yeti [Lv. 110] [Boss]"
			NaemQuestBoss = "SnowQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
			CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
		elseif SelectBoss == "Mob Leader [Lv. 120] [Boss]" then
			MsBoss = "Mob Leader [Lv. 120] [Boss]"
			CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.928248107)
			--The Gorilla King [Lv. 25] [Boss]
		elseif SelectBoss == "Vice Admiral [Lv. 130] [Boss]" then
			MsBoss = "Vice Admiral [Lv. 130] [Boss]"
			NaemQuestBoss = "MarineQuest2"
			LevelQuestBoss = 2
			CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
			CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
		elseif SelectBoss == "Warden [Lv. 175] [Boss]" then
			MsBoss = "Warden [Lv. 175] [Boss]"
			NaemQuestBoss = "ImpelQuest"
			LevelQuestBoss = 1
			CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
			CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
		elseif SelectBoss == "Chief Warden [Lv. 200] [Boss]" then
			MsBoss = "Chief Warden [Lv. 200] [Boss]"
			NaemQuestBoss = "ImpelQuest"
			LevelQuestBoss = 2
			CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
			CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
		elseif SelectBoss == "Swan [Lv. 225] [Boss]" then
			MsBoss = "Swan [Lv. 225] [Boss]"
			NaemQuestBoss = "ImpelQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
			CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
		elseif SelectBoss == "Magma Admiral [Lv. 350] [Boss]" then
			MsBoss = "Magma Admiral [Lv. 350] [Boss]"
			NaemQuestBoss = "MagmaQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
			CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
		elseif SelectBoss == "Fishman Lord [Lv. 425] [Boss]" then
			MsBoss = "Fishman Lord [Lv. 425] [Boss]"
			NaemQuestBoss = "FishmanQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
			CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
		elseif SelectBoss == "Wysper [Lv. 500] [Boss]" then
			MsBoss = "Wysper [Lv. 500] [Boss]"
			NaemQuestBoss = "SkyExp1Quest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
			CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
		elseif SelectBoss == "Thunder God [Lv. 575] [Boss]" then
			MsBoss = "Thunder God [Lv. 575] [Boss]"
			NaemQuestBoss = "SkyExp2Quest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
			CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
		elseif SelectBoss == "Cyborg [Lv. 675] [Boss]" then
			MsBoss = "Cyborg [Lv. 675] [Boss]"
			NaemQuestBoss = "FountainQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
			CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
			--Three World
		elseif SelectBoss == "Kilo Admiral [Lv. 1750] [Boss]" then
			MsBoss = "Kilo Admiral [Lv. 1750] [Boss]"
			NaemQuestBoss = "MarineTreeIsland"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
			CFrameBoss = CFrame.new(2955.1189, 423.584412, -7240.22217, -0.761679471, 7.01648872e-08, 0.647953987, 8.75833539e-09, 1, -9.79912755e-08, -0.647953987, -6.89629474e-08, -0.761679471)
		elseif SelectBoss == "Captain Elephant [Lv. 1875] [Boss]" then
			MsBoss = "Captain Elephant [Lv. 1875] [Boss]"
			NaemQuestBoss = "DeepForestIsland"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
			CFrameBoss = CFrame.new(-13592.9053, 332.23584, -8134.08643, -0.866908491, -1.7684858e-08, 0.498467356, -3.95491107e-08, 1, -3.33032872e-08, -0.498467356, -4.85848446e-08, -0.866908491)
		elseif SelectBoss == "Beautiful Pirate [Lv. 1950] [Boss]" then
			MsBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
			NaemQuestBoss = "DeepForestIsland2"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
			CFrameBoss = CFrame.new(5310.80957, 22.5622349, 129.390533, 1, -2.47274325e-08, 1.41872977e-13, 2.47274325e-08, 1, -4.55364528e-08, -1.40746979e-13, 4.55364528e-08, 1)
		elseif SelectBoss == "Longma [Lv. 2000] [Boss]" then
			MsBoss = "Longma [Lv. 2000] [Boss]"
			CFrameBoss = CFrame.new(-10293.208, 332.791351, -9450.625, 0.132661447, -0.213521436, -0.96788919, -0.0110089043, 0.976142585, -0.21685116, 0.991100252, 0.0394231752, 0.127145842)
		elseif SelectBoss == "Stone [Lv. 1550] [Boss]" then
			MsBoss = "Stone [Lv. 1550] [Boss]"
			NaemQuestBoss = "PiratePortQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
			CFrameBoss = CFrame.new(-970.778564, 40.0068855, 6795.5249, -0.179641441, -2.87076816e-08, 0.983732164, -4.4126935e-08, 1, 2.11243023e-08, -0.983732164, -3.96142852e-08, -0.179641441)
		elseif SelectBoss == "Island Empress [Lv. 1675] [Boss]" then
			MsBoss = "Island Empress [Lv. 1675] [Boss]"
			NaemQuestBoss = "AmazonQuest2"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			CFrameBoss = CFrame.new(5813.94140625, 661.14862060547, 202.04710388184)
		end
	end
	local Boss = {}
	for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
		if string.find(v.Name, "Boss") then
			if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
			else
				table.insert(Boss, v.Name)
			end
		end
	end
	for i, v in pairs(game.workspace.Enemies:GetChildren()) do
		if string.find(v.Name, "Boss") then
			if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
			else
				table.insert(Boss, v.Name)
			end
		end
	end
	local BossName = page1:Drop("Select Boss",false,Boss,function(Value)
		SelectBoss = Value
		Don = false
	end)
	TOOLS = {}
	 for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
	   if v:IsA("Tool") then
		  table.insert(TOOLS,v.Name)
	   end
	 end
	local SelectWeaponBoss = "" 
	local SelectWeaponKillBoss = page1:Drop("Select Weapon Kill Boss",false,Wapon,function(Value)
		_G.SelectWeaponBoss = Value
	end)
	page1:Button("Refresh Weapon Boss",function()
		SelectWeaponKillBoss:Clear()
		for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				SelectWeaponKillBoss:Add(v.Name)
			end
		end
		for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				SelectWeaponKillBoss:Add(v.Name)
			end
		end
	end)
	page1:Button("Refresh Boss",function()
		BossName:Clear()
		for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
			if string.find(v.Name, "Boss") then
				if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
				else
					BossName:Add(v.Name)
				end
			end
		end
		for i, v in pairs(game.workspace.Enemies:GetChildren()) do
			if string.find(v.Name, "Boss") then
				if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
				else
					BossName:Add(v.Name)
				end
			end
		end
	end)
	function AutoFramBoss()
		CheckQuestBoss()
		if SelectBoss == "Don Swan [Lv. 1000] [Boss]" or SelectBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" or SelectBoss == "Saber Expert [Lv. 200] [Boss]" or SelectBoss == "Mob Leader [Lv. 120] [Boss]" or SelectBoss == "Darkbeard [Lv. 1000] [Raid Boss]" or SelectBoss == "Longma [Lv. 2000] [Boss]" then
			if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if FramBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
						repeat
							pcall(function() wait() 
								if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
									local args = {
										[1] = "Buso"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
								EquipWeapon(_G.SelectWeaponBoss)
								if HideHitBlox then
									v.HumanoidRootPart.Transparency = 0.75
								else
									v.HumanoidRootPart.Transparency = 1
								end
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
								totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
								game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
								VirtualUser:CaptureController()
								VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
							end)
						until not FramBoss or not v.Parent or v.Humanoid.Health <= 0
					end
				end
			else
			    totarget(CFrameBoss)
			end
		elseif SelectBoss == "Order [Lv. 1250] [Raid Boss]" then
			if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if FramBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
						repeat 
							pcall(function() wait() 
								if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
									local args = {
										[1] = "Buso"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
								EquipWeapon(_G.SelectWeaponBoss)
								if HideHitBlox then
									v.HumanoidRootPart.Transparency = 0.75
								else
									v.HumanoidRootPart.Transparency = 1
								end
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
								totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
								game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
								VirtualUser:CaptureController()
								VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
							end)
						until not FramBoss or not v.Parent or v.Humanoid.Health <= 0
					end
				end
			else
			    totarget(CFrameBoss)
			end
		else
			if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) or game:GetService("ReplicatedStorage"):FindFirstChild(SelectBoss) then
				if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					print()
					CheckQuestBoss()
					totarget(CFrameQuestBoss)
					repeat wait() until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-CFrameQuestBoss.Position).Magnitude <= 10
					wait(1.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuestBoss, LevelQuestBoss)
					wait(1)
					totarget(CFrameBoss)
				elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if FramBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
							repeat
								pcall(function() wait() 
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										local args = {
											[1] = "Buso"
										}
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									end
									EquipWeapon(_G.SelectWeaponBoss)
									v.HumanoidRootPart.Transparency = 1
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
									game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
									VirtualUser:CaptureController()
									VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
								end)
							until not FramBoss or not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
						end
					end
					totarget(CFrameBoss)
				end
			end
		end
	end
	page1:Toggle("Auto Farm Boss",false,function(Value)
		local args = {
			[1] = "AbandonQuest"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		FramBoss = Value
		MsBoss = ""
		while FramBoss do wait()
			AutoFramBoss()
		end
	end)
	KillBossuse = true
	function AutoFramAllBoss()
		for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
			if KillBossuse then
				if v.Name == "Diamond [Lv. 750] [Boss]" then
					SelectBoss = "Diamond [Lv. 750] [Boss]"
				elseif v.Name == "Jeremy [Lv. 850] [Boss]" then
					SelectBoss = "Jeremy [Lv. 850] [Boss]"
				elseif v.Name == "Fajita [Lv. 925] [Boss]" then
					SelectBoss = "Fajita [Lv. 925] [Boss]"
				elseif v.Name == "Don Swan [Lv. 1000] [Boss]" and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
					SelectBoss = "Don Swan [Lv. 1000] [Boss]" 
				elseif v.Name == "Smoke Admiral [Lv. 1150] [Boss]"  then
					SelectBoss = "Smoke Admiral [Lv. 1150] [Boss]"
				elseif v.Name == "Cursed Captain [Lv. 1325] [Raid Boss]"  then
					SelectBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
				elseif v.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
					SelectBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
				elseif v.Name == "Tide Keeper [Lv. 1475] [Boss]" then
					SelectBoss = "Tide Keeper [Lv. 1475] [Boss]"
				elseif v.Name == "Saber Expert [Lv. 200] [Boss]" then
					SelectBoss = "Saber Expert [Lv. 200] [Boss]"
				elseif v.Name == "The Gorilla King [Lv. 25] [Boss]"  then
					SelectBoss = "The Gorilla King [Lv. 25] [Boss]"
				elseif v.Name == "Bobby [Lv. 55] [Boss]" then
					SelectBoss = "Bobby [Lv. 55] [Boss]" 
				elseif v.Name == "Yeti [Lv. 110] [Boss]"  then
					SelectBoss = "Yeti [Lv. 110] [Boss]"
				elseif v.Name == "Mob Leader [Lv. 120] [Boss]" then
					SelectBoss = "Mob Leader [Lv. 120] [Boss]"
				elseif v.Name == "Vice Admiral [Lv. 130] [Boss]" then
					SelectBoss = "Vice Admiral [Lv. 130] [Boss]"
				elseif v.Name == "Warden [Lv. 175] [Boss]" then
					SelectBoss = "Warden [Lv. 175] [Boss]"
				elseif v.Name == "Chief Warden [Lv. 200] [Boss]"then
					SelectBoss = "Chief Warden [Lv. 200] [Boss]"
				elseif v.Name == "Swan [Lv. 225] [Boss]" then
					SelectBoss = "Swan [Lv. 225] [Boss]"
				elseif v.Name == "Magma Admiral [Lv. 350] [Boss]" then
					SelectBoss = "Magma Admiral [Lv. 350] [Boss]"
				elseif v.Name == "Fishman Lord [Lv. 425] [Boss]" then
					SelectBoss = "Fishman Lord [Lv. 425] [Boss]"
				elseif v.Name == "Wysper [Lv. 500] [Boss]" then
					SelectBoss = "Wysper [Lv. 500] [Boss]"
				elseif v.Name == "Thunder God [Lv. 575] [Boss]" then
					SelectBoss = "Thunder God [Lv. 575] [Boss]"
				elseif v.Name == "Cyborg [Lv. 675] [Boss]" then
					SelectBoss = "Cyborg [Lv. 675] [Boss]"
				elseif v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
					SelectBoss = "Kilo Admiral [Lv. 1750] [Boss]"
				elseif v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
					SelectBoss = "Captain Elephant [Lv. 1875] [Boss]"
				elseif v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
					SelectBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
				elseif v.Name == "Longma [Lv. 2000] [Boss]" then
					SelectBoss = "Longma [Lv. 2000] [Boss]"
				elseif v.Name == "Stone [Lv. 1550] [Boss]" then
					SelectBoss = "Stone [Lv. 1550] [Boss]"
				elseif v.Name == "Island Empress [Lv. 1675] [Boss]" then
					SelectBoss = "Island Empress [Lv. 1675] [Boss]"
				end
			end   
		end
		for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
			if KillBossuse then
				if v.Name == "Diamond [Lv. 750] [Boss]" then
					SelectBoss = "Diamond [Lv. 750] [Boss]"
				elseif v.Name == "Jeremy [Lv. 850] [Boss]"then
					SelectBoss = "Jeremy [Lv. 850] [Boss]"
				elseif v.Name == "Fajita [Lv. 925] [Boss]"  then
					SelectBoss = "Fajita [Lv. 925] [Boss]"
				elseif v.Name == "Don Swan [Lv. 1000] [Boss]" and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
					SelectBoss = "Don Swan [Lv. 1000] [Boss]" 
				elseif v.Name == "Smoke Admiral [Lv. 1150] [Boss]"  then
					SelectBoss = "Smoke Admiral [Lv. 1150] [Boss]"
				elseif v.Name == "Cursed Captain [Lv. 1325] [Raid Boss]"  then
					SelectBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
				elseif v.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]"  then
					SelectBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
				elseif v.Name == "Tide Keeper [Lv. 1475] [Boss]"  then
					SelectBoss = "Tide Keeper [Lv. 1475] [Boss]"
				elseif v.Name == "Saber Expert [Lv. 200] [Boss]"then
					SelectBoss = "Saber Expert [Lv. 200] [Boss]"
				elseif v.Name == "The Gorilla King [Lv. 25] [Boss]" then
					SelectBoss = "The Gorilla King [Lv. 25] [Boss]"
				elseif v.Name == "Bobby [Lv. 55] [Boss]"  then
					SelectBoss = "Bobby [Lv. 55] [Boss]" 
				elseif v.Name == "Yeti [Lv. 110] [Boss]"   then
					SelectBoss = "Yeti [Lv. 110] [Boss]"
				elseif v.Name == "Mob Leader [Lv. 120] [Boss]" then
					SelectBoss = "Mob Leader [Lv. 120] [Boss]"
				elseif v.Name == "Vice Admiral [Lv. 130] [Boss]"  then
					SelectBoss = "Vice Admiral [Lv. 130] [Boss]"
				elseif v.Name == "Warden [Lv. 175] [Boss]" then
					SelectBoss = "Warden [Lv. 175] [Boss]"
				elseif v.Name == "Chief Warden [Lv. 200] [Boss]"  then
					SelectBoss = "Chief Warden [Lv. 200] [Boss]"
				elseif v.Name == "Swan [Lv. 225] [Boss]"  then
					SelectBoss = "Swan [Lv. 225] [Boss]"
				elseif v.Name == "Magma Admiral [Lv. 350] [Boss]"  then
					SelectBoss = "Magma Admiral [Lv. 350] [Boss]"
				elseif v.Name == "Fishman Lord [Lv. 425] [Boss]"  then
					SelectBoss = "Fishman Lord [Lv. 425] [Boss]"
				elseif v.Name == "Wysper [Lv. 500] [Boss]"   then
					SelectBoss = "Wysper [Lv. 500] [Boss]"
				elseif v.Name == "Thunder God [Lv. 575] [Boss]"   then
					SelectBoss = "Thunder God [Lv. 575] [Boss]"
				elseif v.Name == "Cyborg [Lv. 675] [Boss]" then
					SelectBoss = "Cyborg [Lv. 675] [Boss]"
				elseif v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
					SelectBoss = "Kilo Admiral [Lv. 1750] [Boss]"
				elseif v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
					SelectBoss = "Captain Elephant [Lv. 1875] [Boss]"
				elseif v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
					SelectBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
				elseif v.Name == "Longma [Lv. 2000] [Boss]" then
					SelectBoss = "Longma [Lv. 2000] [Boss]"
				elseif v.Name == "Stone [Lv. 1550] [Boss]" then
					SelectBoss = "Stone [Lv. 1550] [Boss]"
				elseif v.Name == "Island Empress [Lv. 1675] [Boss]" then
					SelectBoss = "Island Empress [Lv. 1675] [Boss]"
				end
			end   
		end
		KillBossuse = false
		if SelectBoss == "Don Swan [Lv. 1000] [Boss]" or SelectBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" or SelectBoss == "Saber Expert [Lv. 200] [Boss]" or SelectBoss == "Mob Leader [Lv. 120] [Boss]" or SelectBoss == "Darkbeard [Lv. 1000] [Raid Boss]" then
			if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if FramAllBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
						CheckQuestBoss()
						totarget(CFrameBoss)
						wait(1)
						repeat
							pcall(function() wait() 
								if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
									local args = {
										[1] = "Buso"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
								EquipWeapon(_G.SelectWeaponBoss)
								if HideHitBlox then
									v.HumanoidRootPart.Transparency = 0.75
								else
									v.HumanoidRootPart.Transparency = 1
								end
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
								totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
								game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
								VirtualUser:CaptureController()
								VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
							end)
						until not FramAllBoss or not v.Parent or v.Humanoid.Health <= 0
						KillBossuse = true
					end
				end
			else
				CheckQuestBoss()
				totarget(CFrameBoss)
			end
		else
			if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if FramAllBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
						CheckQuestBoss()
						totarget(CFrameBoss)
						wait(1)
						repeat
							pcall(function() wait() 
								if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
									local args = {
										[1] = "Buso"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
								EquipWeapon(_G.SelectWeaponBoss)
								if HideHitBlox then
									v.HumanoidRootPart.Transparency = 0.75
								else
									v.HumanoidRootPart.Transparency = 1
								end
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
								totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
								game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
								VirtualUser:CaptureController()
								VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
							end)
						until not FramAllBoss or not v.Parent or v.Humanoid.Health <= 0
						KillBossuse = true
					end
				end
			else
				CheckQuestBoss()
				totarget(CFrameBoss)
			end
		end
		KillBossuse = true
	end

	function AutoFramAllBoss2()
		for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
			if KillBossuse then
				if v.Name == "Diamond [Lv. 750] [Boss]" then
					SelectBoss = "Diamond [Lv. 750] [Boss]"
				elseif v.Name == "Jeremy [Lv. 850] [Boss]" then
					SelectBoss = "Jeremy [Lv. 850] [Boss]"
				elseif v.Name == "Fajita [Lv. 925] [Boss]" then
					SelectBoss = "Fajita [Lv. 925] [Boss]"
				elseif v.Name == "Don Swan [Lv. 1000] [Boss]" and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
					SelectBoss = "Don Swan [Lv. 1000] [Boss]" 
				elseif v.Name == "Smoke Admiral [Lv. 1150] [Boss]"  then
					SelectBoss = "Smoke Admiral [Lv. 1150] [Boss]"
				elseif v.Name == "Cursed Captain [Lv. 1325] [Raid Boss]"  then
					SelectBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
				elseif v.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
					SelectBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
				elseif v.Name == "Tide Keeper [Lv. 1475] [Boss]" then
					SelectBoss = "Tide Keeper [Lv. 1475] [Boss]"
				elseif v.Name == "Saber Expert [Lv. 200] [Boss]" then
					SelectBoss = "Saber Expert [Lv. 200] [Boss]"
				elseif v.Name == "The Gorilla King [Lv. 25] [Boss]"  then
					SelectBoss = "The Gorilla King [Lv. 25] [Boss]"
				elseif v.Name == "Bobby [Lv. 55] [Boss]" then
					SelectBoss = "Bobby [Lv. 55] [Boss]" 
				elseif v.Name == "Yeti [Lv. 110] [Boss]"  then
					SelectBoss = "Yeti [Lv. 110] [Boss]"
				elseif v.Name == "Mob Leader [Lv. 120] [Boss]" then
					SelectBoss = "Mob Leader [Lv. 120] [Boss]"
				elseif v.Name == "Vice Admiral [Lv. 130] [Boss]" then
					SelectBoss = "Vice Admiral [Lv. 130] [Boss]"
				elseif v.Name == "Warden [Lv. 175] [Boss]" then
					SelectBoss = "Warden [Lv. 175] [Boss]"
				elseif v.Name == "Chief Warden [Lv. 200] [Boss]"then
					SelectBoss = "Chief Warden [Lv. 200] [Boss]"
				elseif v.Name == "Swan [Lv. 225] [Boss]" then
					SelectBoss = "Swan [Lv. 225] [Boss]"
				elseif v.Name == "Magma Admiral [Lv. 350] [Boss]" then
					SelectBoss = "Magma Admiral [Lv. 350] [Boss]"
				elseif v.Name == "Fishman Lord [Lv. 425] [Boss]" then
					SelectBoss = "Fishman Lord [Lv. 425] [Boss]"
				elseif v.Name == "Wysper [Lv. 500] [Boss]" then
					SelectBoss = "Wysper [Lv. 500] [Boss]"
				elseif v.Name == "Thunder God [Lv. 575] [Boss]" then
					SelectBoss = "Thunder God [Lv. 575] [Boss]"
				elseif v.Name == "Cyborg [Lv. 675] [Boss]" then
					SelectBoss = "Cyborg [Lv. 675] [Boss]"
				elseif v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
					SelectBoss = "Kilo Admiral [Lv. 1750] [Boss]"
				elseif v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
					SelectBoss = "Captain Elephant [Lv. 1875] [Boss]"
				elseif v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
					SelectBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
				elseif v.Name == "Longma [Lv. 2000] [Boss]" then
					SelectBoss = "Longma [Lv. 2000] [Boss]"
				elseif v.Name == "Stone [Lv. 1550] [Boss]" then
					SelectBoss = "Stone [Lv. 1550] [Boss]"
				elseif v.Name == "Island Empress [Lv. 1675] [Boss]" then
					SelectBoss = "Island Empress [Lv. 1675] [Boss]"
				end
			end   
		end
		for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
			if KillBossuse then
				if v.Name == "Diamond [Lv. 750] [Boss]" then
					SelectBoss = "Diamond [Lv. 750] [Boss]"
				elseif v.Name == "Jeremy [Lv. 850] [Boss]"then
					SelectBoss = "Jeremy [Lv. 850] [Boss]"
				elseif v.Name == "Fajita [Lv. 925] [Boss]"  then
					SelectBoss = "Fajita [Lv. 925] [Boss]"
				elseif v.Name == "Don Swan [Lv. 1000] [Boss]" and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
					SelectBoss = "Don Swan [Lv. 1000] [Boss]" 
				elseif v.Name == "Smoke Admiral [Lv. 1150] [Boss]"  then
					SelectBoss = "Smoke Admiral [Lv. 1150] [Boss]"
				elseif v.Name == "Cursed Captain [Lv. 1325] [Raid Boss]"  then
					SelectBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
				elseif v.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]"  then
					SelectBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
				elseif v.Name == "Tide Keeper [Lv. 1475] [Boss]"  then
					SelectBoss = "Tide Keeper [Lv. 1475] [Boss]"
				elseif v.Name == "Saber Expert [Lv. 200] [Boss]"then
					SelectBoss = "Saber Expert [Lv. 200] [Boss]"
				elseif v.Name == "The Gorilla King [Lv. 25] [Boss]" then
					SelectBoss = "The Gorilla King [Lv. 25] [Boss]"
				elseif v.Name == "Bobby [Lv. 55] [Boss]"  then
					SelectBoss = "Bobby [Lv. 55] [Boss]" 
				elseif v.Name == "Yeti [Lv. 110] [Boss]"   then
					SelectBoss = "Yeti [Lv. 110] [Boss]"
				elseif v.Name == "Mob Leader [Lv. 120] [Boss]" then
					SelectBoss = "Mob Leader [Lv. 120] [Boss]"
				elseif v.Name == "Vice Admiral [Lv. 130] [Boss]"  then
					SelectBoss = "Vice Admiral [Lv. 130] [Boss]"
				elseif v.Name == "Warden [Lv. 175] [Boss]" then
					SelectBoss = "Warden [Lv. 175] [Boss]"
				elseif v.Name == "Chief Warden [Lv. 200] [Boss]"  then
					SelectBoss = "Chief Warden [Lv. 200] [Boss]"
				elseif v.Name == "Swan [Lv. 225] [Boss]"  then
					SelectBoss = "Swan [Lv. 225] [Boss]"
				elseif v.Name == "Magma Admiral [Lv. 350] [Boss]"  then
					SelectBoss = "Magma Admiral [Lv. 350] [Boss]"
				elseif v.Name == "Fishman Lord [Lv. 425] [Boss]"  then
					SelectBoss = "Fishman Lord [Lv. 425] [Boss]"
				elseif v.Name == "Wysper [Lv. 500] [Boss]"   then
					SelectBoss = "Wysper [Lv. 500] [Boss]"
				elseif v.Name == "Thunder God [Lv. 575] [Boss]"   then
					SelectBoss = "Thunder God [Lv. 575] [Boss]"
				elseif v.Name == "Cyborg [Lv. 675] [Boss]" then
					SelectBoss = "Cyborg [Lv. 675] [Boss]"
				elseif v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
					SelectBoss = "Kilo Admiral [Lv. 1750] [Boss]"
				elseif v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
					SelectBoss = "Captain Elephant [Lv. 1875] [Boss]"
				elseif v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
					SelectBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
				elseif v.Name == "Longma [Lv. 2000] [Boss]" then
					SelectBoss = "Longma [Lv. 2000] [Boss]"
				elseif v.Name == "Stone [Lv. 1550] [Boss]" then
					SelectBoss = "Stone [Lv. 1550] [Boss]"
				elseif v.Name == "Island Empress [Lv. 1675] [Boss]" then
					SelectBoss = "Island Empress [Lv. 1675] [Boss]"
				end
			end   
		end
		KillBossuse = false
		if SelectBoss == "Don Swan [Lv. 1000] [Boss]" or SelectBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" or SelectBoss == "Saber Expert [Lv. 200] [Boss]" or SelectBoss == "Mob Leader [Lv. 120] [Boss]" or SelectBoss == "Darkbeard [Lv. 1000] [Raid Boss]" then
			if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if _G.AllBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
						CheckQuestBoss()
						totarget(CFrameBoss)
						wait(1)
						repeat
							pcall(function() wait() 
								if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
									local args = {
										[1] = "Buso"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
								EquipWeapon(_G.SelectWeaponBoss)
								v.HumanoidRootPart.Transparency = 1
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
								totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
								game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
								VirtualUser:CaptureController()
								VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
							end)
						until not _G.AllBoss or not v.Parent or v.Humanoid.Health <= 0
						KillBossuse = true
					end
				end
			else
				CheckQuestBoss()
				totarget(CFrameBoss)
			end
		else
			if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if _G.AllBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
						CheckQuestBoss()
						totarget(CFrameBoss)
						wait(1)
						repeat
							pcall(function() wait() 
								if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
									local args = {
										[1] = "Buso"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
								EquipWeapon(_G.SelectWeaponBoss)
								v.HumanoidRootPart.Transparency = 1
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
								totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
								game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
								VirtualUser:CaptureController()
								VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
							end)
						until not _G.AllBoss or not v.Parent or v.Humanoid.Health <= 0
						KillBossuse = true
					end
				end
			else
				CheckQuestBoss()
				totarget(CFrameBoss)
			end
		end
		KillBossuse = true
	end

	game:GetService("RunService").Heartbeat:Connect(
	function()
		if _G.AllBossNoHop or _G.AllBossHop then
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
				game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
			end
		end
	end
	)

	page1:Toggle("Auto Farm All Boss",_G.AllBossNoHop,function(Value)
		_G.AllBossNoHop = Value
	end)

	page1:Toggle("Auto Farm All Boss+Hop",_G.AllBossHop,function(Value)
		_G.AllBossHop = Value
	end)

	---------------------------------
local CombatFrameworkR = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework) 

local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)

spawn(function()
	for i = 1,math.huge do
		game:GetService("RunService").Heartbeat:wait()
		if _G.FastBoss then
			pcall(function()
					CameraShakerR:Stop()
					CombatFrameworkR.activeController.attacking = false
					CombatFrameworkR.activeController.timeToNextAttack = 0
					CombatFrameworkR.activeController.increment = 3
					CombatFrameworkR.activeController.hitboxMagnitude = 50
			end)
		end
		game:GetService("RunService").Heartbeat:wait()
	end
end)

spawn(function()
	game:GetService("RunService").Heartbeat:connect(function()
		pcall(function()
			if _G.FastBoss then
					VirtualUser:CaptureController()
					VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
			end
		end)
	end)
	game:GetService("RunService").Heartbeat:connect(function()
		pcall(function()
			if _G.FastBoss then
					VirtualUser:CaptureController()
					VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
			end
		end)
	end)
end)

	---------------------------------

	function Autoallbossnope()
		for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
			if string.find(v.Name, "Boss") then
				if v.Name == "rip_indra True Form [Lv. 5000] [Raid Boss]" or v.Name == "Ice Admiral [Lv. 700] [Boss]" or v.Name == "Don Swan [Lv. 1000] [Boss]" or v.Name == "Longma [Lv. 2000] [Boss]" then
				else
					SelectBoss = v.Name
					CheckQuestBoss()
					totarget(CFrameBoss)
					if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) or
						game:GetService("ReplicatedStorage"):FindFirstChild(SelectBoss) then
						CheckQuestBoss()
						if _G.AllBossNoHop and v:IsA("Model") and v:FindFirstChild("Humanoid") and
							v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
							repeat
								pcall(function()
									wait()
									game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										local args = {
											[1] = "Buso"
										}
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									end
									EquipWeapon(_G.SelectWeaponBoss)
									_G.FastBoss = true
									v.HumanoidRootPart.Transparency = 1
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
								end)
							until not _G.AllBossNoHop or not v.Parent or v.Humanoid.Health <= 0 
							_G.FastBoss = false
						end
					else
						CheckQuestBoss()
						totarget(CFrameBoss)
					end
					CheckQuestBoss()
					totarget(CFrameBoss)

				end

			end
		end
	end

	function AutoallbossHope()
		for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
			if string.find(v.Name, "Boss") then
				if v.Name == "rip_indra True Form [Lv. 5000] [Raid Boss]" or v.Name == "Ice Admiral [Lv. 700] [Boss]" or v.Name == "Don Swan [Lv. 1000] [Boss]" or v.Name == "Longma [Lv. 2000] [Boss]" then
				else
					SelectBoss = v.Name
					CheckQuestBoss()
					totarget(CFrameBoss)
					if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) or
						game:GetService("ReplicatedStorage"):FindFirstChild(SelectBoss) then
						CheckQuestBoss()
						if _G.AllBossHop and v:IsA("Model") and v:FindFirstChild("Humanoid") and
							v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
							repeat
								pcall(function()
									wait()
									game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										local args = {
											[1] = "Buso"
										}
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									end
									EquipWeapon(_G.SelectWeaponBoss)
									v.HumanoidRootPart.Transparency = 1
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
									_G.FastBoss = true
									game:GetService 'VirtualUser':CaptureController()
									game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))                                   
								end)
							until not _G.AllBossHop or not v.Parent or v.Humanoid.Health <= 0 
							_G.FastBoss = false
						end
					else
						CheckQuestBoss()
						totarget(CFrameBoss)
					end
					CheckQuestBoss()
					totarget(CFrameBoss)

				end

			end
		end
		if _G.AllBossHop and not game.ReplicatedStorage:FindFirstChild("Diamond [Lv. 750] [Boss]") and 
			not game.ReplicatedStorage:FindFirstChild("Jeremy [Lv. 850] [Boss]") and 
			not game.ReplicatedStorage:FindFirstChild("Fajita [Lv. 925] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Smoke Admiral [Lv. 1150] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Cursed Captain [Lv. 1325] [Raid Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Saber Expert [Lv. 200] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Bobby [Lv. 55] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Yeti [Lv. 110] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Mob Leader [Lv. 120] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Vice Admiral [Lv. 130] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Warden [Lv. 175] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Chief Warden [Lv. 200] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Swan [Lv. 225] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Magma Admiral [Lv. 350] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Fishman Lord [Lv. 425] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Wysper [Lv. 500] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Thunder God [Lv. 575] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Cyborg [Lv. 675] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") and
			not game.ReplicatedStorage:FindFirstChild("Stone [Lv. 1550] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Diamond [Lv. 750] [Boss]") and 
			not game:GetService("Workspace").Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") and 
			not game:GetService("Workspace").Enemies:FindFirstChild("Fajita [Lv. 925] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Smoke Admiral [Lv. 1150] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Cursed Captain [Lv. 1325] [Raid Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Bobby [Lv. 55] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Yeti [Lv. 110] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Vice Admiral [Lv. 130] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Warden [Lv. 175] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Chief Warden [Lv. 200] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Swan [Lv. 225] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Magma Admiral [Lv. 350] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Fishman Lord [Lv. 425] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Wysper [Lv. 500] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Cyborg [Lv. 675] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") and
			not game:GetService("Workspace").Enemies:FindFirstChild("Stone [Lv. 1550] [Boss]") then
			_G.FastBoss = false
			Hopey()
		end
	end

	function Hopey()
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
							-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
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

	spawn(function()
		while wait() do 
			if _G.AllBossNoHop then
				Autoallbossnope()
			end
		end
	end)

	spawn(function()
		while wait() do 
			if _G.AllBossHop then
				AutoallbossHope()
			end
		end
	end)

	page1:Line()
	-- Auto QuestBartilo
	if NewWorld then
		page1:Label("Auto Quest Bartolomeo")
		BareWeapon = ""
		local args = {
			[1] = "getInventoryWeapons"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		game:GetService("RunService").Heartbeat:Connect(
		function()
			if _G.AutoBartilo then
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			end
		end
		)
		page1:Toggle("Auto Quest Bartolomeo ",_G.AutoBartilo,function(v)
			_G.AutoBartilo = v
		end)
			spawn(function()
				while wait() do
					if _G.AutoBartilo then
						if game.Players.LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
							if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then 
								if game.Workspace.Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
									Ms = "Swan Pirate [Lv. 775]"
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == Ms then
											pcall(function()
												repeat wait()
													if setsimulationradius then 
														sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
													end
													EquipWeapon(BareWeapon)
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														local args = {
															[1] = "Buso"
														}
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
													end
													if HideHitBlox then
														v.HumanoidRootPart.Transparency = 1
													else
														v.HumanoidRootPart.Transparency = 70
													end
													v.HumanoidRootPart.CanCollide = false
													v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                    totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))													
                                                    PosMonBarto =  v.HumanoidRootPart.CFrame
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
													AutoBartiloBring = true
												until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
												AutoBartiloBring = false
											end)
										end
									end
								else
									repeat totarget(CFrame.new(1057.92761, 137.614319, 1242.08069)) wait() until _G.StopTween == true or not _G.AutoBartilo or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(1057.92761, 137.614319, 1242.08069)).Magnitude <= 10
								end
							else
							    repeat totarget(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until _G.StopTween == true or not _G.AutoBartilo or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
								wait(1.1)
								local args = {
									[1] = "StartQuest",
									[2] = "BartiloQuest",
									[3] = 1
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end 
						elseif game.Players.LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
							if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
								Ms = "Jeremy [Lv. 850] [Boss]"
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if v.Name == Ms then
										repeat wait()
											if setsimulationradius then 
												sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
											end
											EquipWeapon(BareWeapon)
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											if HideHitBlox then
												v.HumanoidRootPart.Transparency = 1
											else
												v.HumanoidRootPart.Transparency = 70
											end
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
											totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false
									end
								end
							elseif game.ReplicatedStorage:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
							    repeat totarget(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until _G.StopTween == true or not _G.AutoBartilo or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
								wait(1.1)
								local args = {
									[1] = "BartiloQuestProgress",
									[2] = "Bartilo"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								wait(1)
								repeat totarget(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until _G.StopTween == true or not _G.AutoBartilo or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
								wait(2)
							else
							    repeat totarget(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until _G.StopTween == true or not _G.AutoBartilo or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
							end
						elseif game.Players.LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
						    repeat totarget(CFrame.new(-1850.49329, 13.1789551, 1750.89685)) wait() until _G.StopTween == true or not _G.AutoBartilo or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10
							wait(1)
							repeat totarget(CFrame.new(-1858.87305, 19.3777466, 1712.01807)) wait() until _G.StopTween == true or not _G.AutoBartilo or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10
							wait(1)
							repeat totarget(CFrame.new(-5560.00390625, 313.74130249023, -2838.4792480469)) wait() until _G.StopTween == true or not _G.AutoBartilo or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10
							wait(1)
							repeat totarget(CFrame.new(-1858.55835, 16.8604317, 1724.79541)) wait() until _G.StopTween == true or not _G.AutoBartilo or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10
							wait(1)
							repeat totarget(CFrame.new(-1869.54224, 15.987854, 1681.00659)) wait() until _G.StopTween == true or not _G.AutoBartilo or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10
							wait(1)
							repeat totarget(CFrame.new(-1800.0979, 16.4978027, 1684.52368)) wait() until _G.StopTween == true or not _G.AutoBartilo or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10
							wait(1)
							repeat totarget(CFrame.new(-1819.26343, 14.795166, 1717.90625)) wait() until _G.StopTween == true or not _G.AutoBartilo or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10
							wait(1)
							repeat totarget(CFrame.new(-1813.51843, 14.8604736, 1724.79541)) wait() until _G.StopTween == true or not _G.AutoBartilo or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10
						end
					end 
				end
		end)
		local BareWeapon = page1:Drop("Select Weapon",false,Wapon,function(A)
			BareWeapon = A
		end) 
		page1:Button("Refresh Weapon",function()
			BareWeapon:Clear()
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v:IsA("Tool") then
					BareWeapon:Add(v.Name)
				end
			end
			for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if v:IsA("Tool") then
					BareWeapon:Add(v.Name)
				end
			end
		end)
	end
	spawn(function()
		while wait() do
			if _G.AutoBartilo then
				bring2()
			end
		end
	end)

	-- Auto Rengoku
	if NewWorld then

		spawn(function()
			while wait() do
				if _G.AutoRengoku then
					bring2()
				end
			end
		end)

		page1:Line()
	end


	-- Auto Farm Observation

	-- Magnet

	function bring2()
		local plr = game.Players.LocalPlayer
		pcall(function()
			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
		end)
	end
	spawn(function()
		while wait(.1) do
			if _G.AutoFarm then
				bring2()
			end
		end
	end)

	-- Auto Fram Observation
	page2:Label("Auto Farm Observation")
local ObservationVirtualUser = game:GetService('VirtualUser')
page2:Toggle("Auto Farm Observation Haki (Ken Haki) [ Hop ]",_G.AutoFarmKenHaki,function(x)
	ObservationVirtualUser:CaptureController()
	ObservationVirtualUser:SetKeyDown('0x65')
	wait(2)
	ObservationVirtualUser:SetKeyUp('0x65')
	_G.AutoFarmKenHaki = x
end)
spawn(function()
	if _G.AutoFarmKenHaki then
		ObservationVirtualUser:CaptureController()
		ObservationVirtualUser:SetKeyDown('0x65')
		wait(2)
		ObservationVirtualUser:SetKeyUp('0x65')
	end
end)

spawn(function()
	while wait() do wait(40)
		pcall(function()
			if _G.AutoFarmKenHaki and not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
				ObservationVirtualUser:CaptureController()
				ObservationVirtualUser:SetKeyDown('0x65')
				wait(2)
				ObservationVirtualUser:SetKeyUp('0x65')
			end
		end)
	end
end)

spawn(function()
	game:GetService("RunService").Heartbeat:connect(function()
		pcall(function()
			if _G.AutoFarmKenHaki then
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
					game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
				end
			end
		end)
	end)
end)

spawn(function()
	pcall(function()
		while wait(1) do
			if _G.AutoFarmKenHaki then
				pcall(function()
					if ThreeWorld then
						if game.Workspace.Enemies:FindFirstChild("Marine Commodore [Lv. 1700]") then
							if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
								repeat wait()
									totarget(game.Workspace.Enemies:FindFirstChild("Marine Commodore [Lv. 1700]").HumanoidRootPart.CFrame * CFrame.new(3,0,0))
								until _G.AutoFarmKenHaki == false or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
							else
								repeat wait()
									totarget(game.Workspace.Enemies:FindFirstChild("Marine Commodore [Lv. 1700]").HumanoidRootPart.CFrame * CFrame.new(10,35,0))
									if _G.HopFunction then
										local ts = game:GetService("TeleportService")
										local p = game:GetService("Players").LocalPlayer
										ts:Teleport(game.PlaceId, p)
									end
								until _G.AutoFarmKenHaki == false or game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
							end
						else
							totarget(CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688))
						end
					end
					if NewWorld then
						if game.Workspace.Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") then
							if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
								repeat wait()
									totarget(game.Workspace.Enemies:FindFirstChild("Ship Engineer [Lv. 1275]").HumanoidRootPart.CFrame * CFrame.new(3,0,0))
								until _G.AutoFarmKenHaki == false or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
							else
								repeat wait()
									totarget(game.Workspace.Enemies:FindFirstChild("Ship Engineer [Lv. 1275]").HumanoidRootPart.CFrame * CFrame.new(10,15,0))
									if _G.HopFunction then
										local ts = game:GetService("TeleportService")
										local p = game:GetService("Players").LocalPlayer
										ts:Teleport(game.PlaceId, p)
									end
								until _G.AutoFarmKenHaki == false or game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
							end
						else
							totarget(CFrame.new(918.558777, 40.0827065, 32766.498))
						end
					end
					if OldWorld then
						if game.Workspace.Enemies:FindFirstChild("Galley Captain [Lv. 650]") then
							if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
								repeat wait()
									totarget(game.Workspace.Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0))
								until _G.AutoFarmKenHaki == false or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
							else
								repeat wait()
									totarget(game.Workspace.Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(10,15,0))
									if _G.HopFunction then
										local ts = game:GetService("TeleportService")
										local p = game:GetService("Players").LocalPlayer
										ts:Teleport(game.PlaceId, p)
									end
								until _G.AutoFarmKenHaki == false or game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
							end
						else
							totarget(CFrame.new(5533.29785, 88.1079102, 4852.3916))
						end
					end
				end)
			end
		end
	end)
end)
	page2:Button("Check Observation Haki level",function()
		RadientPaid:Notification(game.Players.LocalPlayer.VisionRadius.Value,"Observation Haki level","ok")
	end)
	
	page2:Line()
	
	page2:Button("Stop All Tween",function()
    	StopTween()
    end)

	spawn(function()
		while true do
			pcall(function()
				if _G.AutoFarm and StatrMagnet then
					CheckQuest()
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == Ms and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							if syn then
								if isnetworkowner(v.HumanoidRootPart) then
									if v.Name == "Factory Staff [Lv. 800]" or v.Name == "Dragon Crew Warrior [Lv. 1575]" or v.Name == "Dragon Crew Archer [Lv. 1600]" and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 200 then
										if HideHitBlox then
											v.HumanoidRootPart.Transparency = 1
										else
											v.HumanoidRootPart.Transparency = 70
										end
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
										v.HumanoidRootPart.CFrame = PosHee
									elseif v.Name == Ms and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 400 then
										if HideHitBlox then
											v.HumanoidRootPart.Transparency = 1
										else
											v.HumanoidRootPart.Transparency = 70
										end
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
										v.HumanoidRootPart.CFrame = PosHee
									end
								end
							else
								if v.Name == "Factory Staff [Lv. 800]" or v.Name == "Dragon Crew Warrior [Lv. 1575]" or v.Name == "Dragon Crew Archer [Lv. 1600]" and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 200 then
									if HideHitBlox then
										v.HumanoidRootPart.Transparency = 1
									else
										v.HumanoidRootPart.Transparency = 70
									end
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									v.HumanoidRootPart.CFrame = PosHee
								elseif v.Name == Ms and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 400 then
									if HideHitBlox then
										v.HumanoidRootPart.Transparency = 1
									else
										v.HumanoidRootPart.Transparency = 70
									end
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									v.HumanoidRootPart.CFrame = PosHee
								end
							end
						end
					end
				end 
			end)
			wait()
		end
	end)

	-- Magnet
	spawn(function()
		while wait() do
			if _G.Mastery and StatrMagnetDevilFruitMastery and Magnet then
				for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					CheckQuest()
					if v.Name == Ms and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
						if v.Name == "Factory Staff [Lv. 800]" or v.Name == "Dragon Crew Warrior [Lv. 1575]" or v.Name == "Dragon Crew Archer [Lv. 1600]" and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 200 then
							wait()
							v.Humanoid:ChangeState(13)
							v.HumanoidRootPart.CanCollide = false
							if HideHitBlox then
								v.HumanoidRootPart.Transparency = 1
							else
								v.HumanoidRootPart.Transparency = 70
							end
							if UseDF then
								v.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
							elseif UseDF == false then
								v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
							end   
							v.HumanoidRootPart.CFrame = PosMon
						elseif v.Name == Ms and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
							wait()
							v.Humanoid:ChangeState(13)
							v.HumanoidRootPart.CanCollide = false
							if HideHitBlox then
								v.HumanoidRootPart.Transparency = 1
							else
								v.HumanoidRootPart.Transparency = 70
							end
							if UseDF then
								v.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
							elseif UseDF == false then
								v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
							end   
							v.HumanoidRootPart.CFrame = PosMon
						end
					end
				end
			end
			if _G.AutoBartilo and AutoBartiloBring and Magnet then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if v.Name == "Swan Pirate [Lv. 775]" and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
						if v.Name == "Swan Pirate [Lv. 775]" then
							if HideHitBlox then
								v.HumanoidRootPart.Transparency = 1
							else
								v.HumanoidRootPart.Transparency = 70
							end
							v.Humanoid:ChangeState(13)
							v.HumanoidRootPart.CanCollide = false
							v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
							v.HumanoidRootPart.CFrame = PosMonBarto
						end
					end
				end
			end
			if _G.AutoRengoku and StatrMagnetRengoku and Magnet then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if v.Name ==  "Snow Lurker [Lv. 1375]" and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
						if v.Name == "Snow Lurker [Lv. 1375]" then
							if HideHitBlox then
								v.HumanoidRootPart.Transparency = 1
							else
								v.HumanoidRootPart.Transparency = 70
							end
							v.Humanoid:ChangeState(13)
							v.HumanoidRootPart.CanCollide = false
							v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
							v.HumanoidRootPart.CFrame = PosMonRengoku
						end
					end
				end
			end
			if _G.Ectoplasm and StatrMagnetEctoplasm and Magnet then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if string.find(v.Name, "Ship") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
						if (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
							if HideHitBlox then
								v.HumanoidRootPart.Transparency = 1
							else
								v.HumanoidRootPart.Transparency = 70
							end
							v.Humanoid:ChangeState(13)
							v.HumanoidRootPart.CanCollide = false
							v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
							v.HumanoidRootPart.CFrame = PosMonEctoplasm
						end
					end
				end
			end
		end
	end)



	
    page3:Label("Auto Stats")

     page3:Toggle("Stats Kaitun",_G.Kaitun,function(t)
    _G.Kaitun = t
    end)
    PointStatsd = 3
	 page3:Slider("Point",false,false,0,100,3,1,PointStatsd,function(e)
		PointStatsd = e
	end)

     page3:Line()
    _G.Melee = false
     page3:Toggle("Melee",_G.Melee,function(Value)
		_G.Melee = Value    
     end)
    _G.Defense = false
    page3:Toggle("Defense",_G.Defense,function(value)
		_G.Defense = value
    end)

    _G.Sword = false
	page3:Toggle("Sword",_G.Sword,function(value)
		_G.Sword = value
	end)
	_G.Gun = false
	 page3:Toggle("Gun",_G.Gun,function(value)
		_G.Gun = value
	 end)
    _G.Fruit = false
	 page3:Toggle("Devil Fruit",_G.Fruit,function(value)
		_G.Fruit = value
	end)
	PointStats = 1
	 page3:Slider("Point",false,false,1,100,1,1,PointStats,function(t)
		PointStats = t
	end)
	spawn(function()
		while wait() do
			if game.Players.localPlayer.Data.Points.Value >= PointStats then
				if _G.Melee then
					local args = {
						[1] = "AddPoint",
						[2] = "Melee",
						[3] = PointStats
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
				if _G.Defense then
					local args = {
						[1] = "AddPoint",
						[2] = "Defense",
						[3] = PointStats
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
				if _G.Sword then
					local args = {
						[1] = "AddPoint",
						[2] = "Sword",
						[3] = PointStats
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
				if _G.Gun then
					local args = {
						[1] = "AddPoint",
						[2] = "Gun",
						[3] = PointStats
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
				if _G.Fruit then
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

    spawn(function()
		while wait() do
			if game.Players.localPlayer.Data.Points.Value >= PointStatsd then
				if _G.Kaitun then
					local args = {
						[1] = "AddPoint",
						[2] = "Melee",
						[3] = PointStatsd
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
			end
		end
	end)

     page6:Label("Teleport")
	 page6:Toggle("Ctrl + Click = TP",false,function(vu)
		CTRL = vu
	end)
	local Plr = game:GetService("Players").LocalPlayer
	local Mouse = Plr:GetMouse()
	Mouse.Button1Down:connect(
		function()
			if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then
				return
			end
			if not Mouse.Target then
				return
			end
			if CTRL then
				Plr.Character:MoveTo(Mouse.Hit.p)
			end
		end
	)
	if NewWorld then
		page6:Button("Teleport To Old World",function()
			local args = {
				[1] = "TravelMain" -- OLD WORLD to NEW WORLD
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end)
	end
	if OldWorld or ThreeWorld then
		page6:Button("Teleport To NewWorld",function()
			local args = {
				[1] = "TravelDressrosa" -- NEW WORLD to OLD WORLD
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end)
	end
	if NewWorld or OldWorld then
		page6:Button("Teleport To Sea3",function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
		end)
	end
	if NewWorld or ThreeWorld then
		page6:Button("Teleport to SeaBeasts",function()
			for i,v in pairs(game.Workspace.SeaBeasts:GetChildren()) do
				if v:FindFirstChild("HumanoidRootPart") then
				    totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,100,1))
				end
			end
		end)
	end
	page6:Label("Teleport Island")
	if NewWorld then
		page6:Button("Dock",function()
		    totarget(CFrame.new(82.9490662, 18.0710983, 2834.98779))
		end)
		page6:Button("Kingdom of Rose",function()
		    totarget(CFrame.new(-394.983521, 118.503128, 1245.8446))
		end)
		page6:Button("Mansion",function()
		    totarget(CFrame.new(-390.096313, 331.886475, 673.464966))
		end)
		page6:Button("Flamingo Room",function()
		    totarget(CFrame.new(2302.19019, 15.1778421, 663.811035))
		end)
		page6:Button("Green Zone",function()
		    totarget(CFrame.new(-2372.14697, 72.9919434, -3166.51416))
		end)
		page6:Button("Cafe",function()
		    totarget(CFrame.new(-385.250916, 73.0458984, 297.388397))
		end)
		page6:Button("Factroy",function()
		    totarget(CFrame.new(430.42569, 210.019623, -432.504791))
		end)
		page6:Button("Colosseum",function()
		    totarget(CFrame.new(-1836.58191, 44.5890656, 1360.30652))
		end)
		page6:Button("GraveIsland",function()
		    totarget(CFrame.new(-5411.47607, 48.8234024, -721.272522))
		end)
		page6:Button("Snow Mountain",function()
		    totarget(CFrame.new(511.825226, 401.765198, -5380.396))
		end)
		page6:Button("Cold Island",function()
		    totarget(CFrame.new(-6026.96484, 14.7461271, -5071.96338))
		end)
		page6:Button("Hot Island",function()
		    totarget(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
		end)
		page6:Button("Cursed Ship",function()
		    totarget(CFrame.new(902.059143, 124.752518, 33071.8125))
		end)
		page6:Button("IceCastle",function()
		    totarget(CFrame.new(5400.40381, 28.21698, -6236.99219))
		end)
		page6:Button("Forgotten Island",function()
		    totarget(CFrame.new(-3043.31543, 238.881271, -10191.5791))
		end)
		page6:Button("Usoapp Island",function()
		    totarget(CFrame.new(4748.78857, 8.35370827, 2849.57959))
		end)
		page6:Button("Minisky Island",function()
		    totarget(CFrame.new(-260.358917, 49325.7031, -35259.3008))
		end)
	end
	if OldWorld then
		page6:Button("Start Island",function()
		    totarget(CFrame.new(1071.2832, 16.3085976, 1426.86792))
		end)
		page6:Button("Marine Start",function()
		    totarget(CFrame.new(-2573.3374, 6.88881969, 2046.99817))
		end)
		page6:Button("Middle Town",function()
		    totarget(CFrame.new(-655.824158, 7.88708115, 1436.67908))
		end)
		page6:Button("Jungle",function()
		    totarget(CFrame.new(-1249.77222, 11.8870859, 341.356476))
		end)
		page6:Button("Pirate Village",function()
		    totarget(CFrame.new(-1122.34998, 4.78708982, 3855.91992))
		end)
		page6:Button("Desert",function()
		    totarget(CFrame.new(1094.14587, 6.47350502, 4192.88721))
		end)
		page6:Button("Frozen Village",function()
		    totarget(CFrame.new(1198.00928, 27.0074959, -1211.73376))
		end)
		page6:Button("MarineFord",function()
		    totarget(CFrame.new(-4505.375, 20.687294, 4260.55908))
		end)
		page6:Button("Colosseum",function()
		    totarget(CFrame.new(-1428.35474, 7.38933945, -3014.37305))
		end)
		page6:Button("Sky island 1 ",function()
		    totarget(CFrame.new(-4970.21875, 717.707275, -2622.35449))
		end)
		page6:Button("Sky island 2 ",function()
		    totarget(CFrame.new(-4813.0249, 903.708557, -1912.69055))
		end)
		page6:Button("Sky island 3 ",function()
		    totarget(CFrame.new(-7952.31006, 5545.52832, -320.704956))
		end)
		page6:Button("Sky island 4 ",function()
		    totarget(CFrame.new(-7793.43896, 5607.22168, -2016.58362))
		end)
		page6:Button("Prison",function()
		    totarget(CFrame.new(4854.16455, 5.68742752, 740.194641))
		end)
		page6:Button("Magma Village",function()
		    totarget(CFrame.new(-5231.75879, 8.61593437, 8467.87695))
		end)
		page6:Button("UndeyWater City",function()
		    totarget(CFrame.new(61163.8516, 11.7796879, 1819.78418))
		end)
		page6:Button("Fountain City",function()
		    totarget(CFrame.new(5132.7124, 4.53632832, 4037.8562))
		end)
		page6:Button("House Cyborg's",function()
		    totarget(CFrame.new(6262.72559, 71.3003616, 3998.23047))
		end)
		page6:Button("Shank's Room",function()
		    totarget(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
		end)
		page6:Button("Mob Island",function()
		    totarget(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
		end)
	end   
	if ThreeWorld then
		page6:Button("Port Towen",function()
		    totarget(CFrame.new(-610.309692, 57.8323097, 6436.33594))
		end)
		page6:Button("Hydra Island",function()
		    totarget(CFrame.new(5229.99561, 603.916565, 345.154022))
		end)
		page6:Button("Great Tree",function()
		    totarget(CFrame.new(2174.94873, 28.7312393, -6728.83154))
		end)
		page6:Button("Castle on the Sea",function()
		    totarget(CFrame.new(-5477.62842, 313.794739, -2808.4585))
		end)
		page6:Button("Floating Turtle",function()
		    totarget(CFrame.new(-10919.2998, 331.788452, -8637.57227))
		end)
		page6:Button("Mansion",function()
		    totarget(CFrame.new(-12553.8125, 332.403961, -7621.91748))
		end)
		page6:Button("Secret Temple",function()
		    totarget(CFrame.new(5217.35693, 6.56511116, 1100.88159))
		end)
		page6:Button("Friendly Arena",function()
		    totarget(CFrame.new(5220.28955, 72.8193436, -1450.86304))
		end)
		page6:Button("Beautiful Pirate Domain",function()
		    totarget(CFrame.new(5310.8095703125, 21.594484329224, 129.39053344727))
		end)
		page6:Button("Teler Park",function()
		    totarget(CFrame.new(-9512.3623046875, 142.13258361816, 5548.845703125))
		end)
	end

	page5:Label("Auto BuyIime")
	page5:Toggle("Auto Buy Random Devil Fruit",false,function(v)
		DevilAutoBuy = v
	end)
	spawn(function()
		while wait() do
			if DevilAutoBuy then wait()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
			end
		end
	end)
	
	
	
	page5:Button("Geppo ",function()
		local args = {
			[1] = "BuyHaki",
			[2] = "Geppo"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	page5:Button("Buso Haki",function()
		local args = {
			[1] = "BuyHaki",
			[2] = "Buso"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	page5:Button("Ken Haki",function()
		local args = {
			[1] = "KenTalk",
			[2] = "Buy"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	page5:Button("Soru",function()
		local args = {
			[1] = "BuyHaki",
			[2] = "Soru"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)

	page5:Line()
	page5:Label("Fighting Style")

	page5:Button("Black Leg",function()
		local args = {
			[1] = "BuyBlackLeg"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	page5:Button("Electro",function()
		local args = {
			[1] = "BuyElectro"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	page5:Button("Fishman Karate",function()
		local args = {
			[1] = "BuyFishmanKarate"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	page5:Button("Dragon Claw",function()
		local args = {
			[1] = "BlackbeardReward",
			[2] = "DragonClaw",
			[3] = "1"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		local args = {
			[1] = "BlackbeardReward",
			[2] = "DragonClaw",
			[3] = "2"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	page5:Button("Superhuman",function()
		local args = {
			[1] = "BuySuperhuman"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	page5:Button("Death Step",function()
		local args = {
			[1] = "BuyDeathStep"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	page5:Button("Sharkman Karate",function()
		local args = {
			[1] = "BuySharkmanKarate",
			[2] = true
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		local args = {
			[1] = "BuySharkmanKarate"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	page5:Button("Electric Claw",function()
		local args = {
			[1] = "BuyElectricClaw"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	page5:Line()
	page5:Label(" Sword ")

	page5:Button("Bisento",function()

		local args = {
			[1] = "BuyItem",
			[2] = "Bisento"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)

	page5:Button("Dual-Headed Blade",function()
		local args = {
			[1] = "BuyItem",
			[2] = "Dual-Headed Blade"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)

	page5:Button("Soul Cane",function()

		local args = {
			[1] = "BuyItem",
			[2] = "Soul Cane"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)

	page5:Button("Triple Katana",function()

		local args = {
			[1] = "BuyItem",
			[2] = "Triple Katana"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)

	page5:Button("Pipe",function()

		local args = {
			[1] = "BuyItem",
			[2] = "Pipe"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)

	page5:Button("Dual Katana",function()

		local args = {
			[1] = "BuyItem",
			[2] = "Dual Katana"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	page5:Button("Iron Mace",function()
		-- Script generated by SimpleSpy - credits to exx#9394

		local args = {
			[1] = "BuyItem",
			[2] = "Iron Mace"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)

	page5:Line()
	page5:Label(" Accessories ")

	page5:Button("Black Cape",function()

		local args = {
			[1] = "BuyItem",
			[2] = "Black Cape"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)

	page5:Button("Swordsman Hat",function()

		local args = {
			[1] = "BuyItem",
			[2] = "Swordsman Hat"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)

	page5:Button("Tomoe Ring",function()

		local args = {
			[1] = "BuyItem",
			[2] = "Tomoe Ring"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)

	page5:Line()
	page5:Label(" Ectoplasm ")

	page5:Button("Race Ghoul",function()
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
	end)
	page5:Button("Race Cyborg",function()
		local args = {
			[1] = "CyborgTrainer",
			[2] = "Buy"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	page5:Line()
	page5:Label(" Fragment ")
	page5:Button("Random Race",function()
		local args = {
			[1] = "BlackbeardReward",
			[2] = "Reroll",
			[3] = "2"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	page5:Button("Reset Stats",function()
		local args = {
			[1] = "BlackbeardReward",
			[2] = "Refund",
			[3] = "2"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)



	page5:Button("Microchip [ Raw ]",function()
		local args = {
			[1] = "BlackbeardReward",
			[2] = "Microchip",
			[3] = "2"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	page5:Line()
	page5:Label(" Gun ")

	page5:Button("Slingshot",function()
		local args = {
			[1] = "BuyItem",
			[2] = "Slingshot"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)

	page5:Button("Musket",function()
		local args = {
			[1] = "BuyItem",
			[2] = "Musket"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	page5:Button("Refined Slingshot",function()

		local args = {
			[1] = "BuyItem",
			[2] = "Refined Slingshot"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)


	page5:Button("Cannon",function()
		local args = {
			[1] = "BuyItem",
			[2] = "Cannon"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)


	page5:Button("Bizarre Rifle",function()
		local args = {
			[1] = "Ectoplasm",
			[2] = "Buy",
			[3] = 1
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)

	page9:Label("Combat")
	PlayerName = {}
	for i,v in pairs(game.Players:GetChildren()) do  
		table.insert(PlayerName ,v.Name)
	end
	SelectedKillPlayer = ""
	local Player = page9:Drop("Selected Player",false,PlayerName,function(plys) --true/false, replaces the current title "Dropdown" with the option that t
		SelectedKillPlayer = plys
		SelectedPly:Refresh("Selected Player : "..SelectedKillPlayer)
	end)
	page9:Button("Refrsh Player",function()
		PlayerName = {}
		Player:Clear()
		for i,v in pairs(game.Players:GetChildren()) do  
			Player:Add(v.Name)
		end
	end)
	game:GetService("RunService").Heartbeat:Connect(
	function()
		if KillPlayer then
			game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
		end
	end
	)

	page9:Toggle("Kill Player ( Gun )",false,function(bool)
		KillPlayer = bool
		KillPlayer = bool
		local args = {
			[1] = "EnablePvp"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
			local args = {
				[1] = "Buso"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
		EquipWeapon(_G.SelectWeaponPlayer)				   
		if KillPlayer == false then
			game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
		end
		while KillPlayer do wait()
		    totarget(game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
			game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Size = Vector3.new(60,60,60)
			game:GetService'VirtualUser':CaptureController()
			game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
		end
	end)

	------ Kill no spawn
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
    
  

	--page10:Toggle("Kill Player + Hop",false,function(value)
	--	_G.Bounty1 = value
	--end)
    if game.CoreGui:FindFirstChild("Ui Bounty") then
        game.CoreGui:FindFirstChild("Ui Bounty"):Destroy()
    end
    local ScreenGuiEz = Instance.new("ScreenGui")
    local TextLabelsss = Instance.new("TextLabel")
    local UIGradientsssss = Instance.new("UIGradient")
    
    ScreenGuiEz.Parent = game.CoreGui
    ScreenGuiEz.Name = "Ui Bounty"
    ScreenGuiEz.Enabled = true
    ScreenGuiEz.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    TextLabelsss.Parent = ScreenGuiEz
    TextLabelsss.Active = true
    TextLabelsss.BackgroundColor3 = Color3.fromRGB(10, 224, 153)
    TextLabelsss.BackgroundTransparency = 1.000
    TextLabelsss.BorderColor3 = Color3.fromRGB(10, 224, 153)
    TextLabelsss.Position = UDim2.new(0.424812019, 0, 0.1, 0) -- 
    TextLabelsss.Size = UDim2.new(0, 200, 0, 50)
    TextLabelsss.Font = Enum.Font.GothamBold
    TextLabelsss.Text = ""
    TextLabelsss.TextColor3 = Color3.fromRGB(10, 224, 153)
    TextLabelsss.TextSize = 25.000
    TextLabelsss.TextTransparency = 1
    TextLabelsss.TextStrokeTransparency = 300.000
    
    
    spawn(function()
        while wait() do
            if game.Players.LocalPlayer.Team ~= nil then
                _G.OldBounty = game:GetService("Players")["LocalPlayer"].leaderstats:FindFirstChild("Bounty/Honor").Value
                break
            end
        end
    end)
    
    local function YeeHeeTime()
        local GetBounty = game:GetService("Players")["LocalPlayer"].leaderstats:FindFirstChild("Bounty/Honor").Value - tonumber(_G.OldBounty)
        TextLabelsss.Text = ("Now You Get Bounty : "..GetBounty)
    end
    
    spawn(function()
        while true do
            pcall(function()
                if _G.Bounty1 then
                    YeeHeeTime()
                    TextLabelsss.TextTransparency = 0
                end
            end)
            wait()
        end
    end)

	spawn(function()
		while wait() do
			if _G.Bounty1 then
				_G.GodModeOn = true
				break
			end
		end
	end)

    spawn(function()
        while wait() do
            if _G.Bounty1 then
				pcall(function()
                	game.Players.LocalPlayer.Character.HumanoidRootPart.CrewBBG:Destroy()
				end)
            end
        end
    end)

	_G.Hop = false
	spawn(function()
		while wait() do
			if _G.Bounty1 then
				pcall(function()
					wait(300)
					print("Hop : on")
					_G.Hop = true
				end)
			end
		end
	end)


	spawn(function()
		while wait(10) do
			pcall(function()
				if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.InCombat.Visible == false then
					wait(2)
					if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.InCombat.Visible == false then
						_G.Change1 = true
					end
				end
			end)
		end
	end)

	spawn(function()
		while wait(10) do
			pcall(function()
				if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.SafeZone.Visible == true then
					wait(2)
					if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.SafeZone.Visible == true then
						_G.Change1 = true
					end
				end
			end)
		end
	end)

	spawn(function()
		while wait(.1) do
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
				if v:IsA("Tool") then
					if v:FindFirstChild("RemoteFunctionShoot") then 
						_G.SelectToolWeaponGun = v.Name
					end
				end
			end
		end
	end)

	spawn(function()
		while wait() do
			pcall(function()
				if _G.Bounty1 then
					if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.PvpDisabled.Visible == true then
						local args = {
							[1] = "EnablePvp"
						}

						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end
				end
			end)
		end
	end)

	spawn(function()
		while wait() do
			if _G.Hop == true then
				pcall(function()
					_G.Bounty1 = false
					if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.InCombat.Visible == false then
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
											-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
											wait()
											game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
										end)
										wait(2)
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
				end)
			end
		end
	end)
	_G.Chennge1 = false

	spawn(function ()
		while wait() do
			pcall(function()
				if _G.Bounty1 then
					if game:GetService("Players").localPlayer.PlayerGui.Notifications.NotificationTemplate then
						if game:GetService("Players").localPlayer.PlayerGui.Notifications.NotificationTemplate.Text:find("Cannot") or game:GetService("Players").localPlayer.PlayerGui.Notifications.NotificationTemplate.Text:find("can't") then
							_G.Change1 = true
							for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
								v:Destroy()
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
				if _G.Bounty1 then
					if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
						local args = {
							[1] = "Buso"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end
				end
			end)
		end
	end)

	spawn(function()
		while wait() do
			pcall(function()
				if _G.Bounty1 then
				game:GetService'VirtualUser':CaptureController()
				game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
				end
			end)
		end
	end)

	spawn(function()
		while wait() do
			pcall(function()
				if _G.Bounty1 then
					for i, v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
						if game:GetService("Players")[v.Name].Data.Level.Value >= 1200 and v.Name ~= game.Players.LocalPlayer.Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then
							if game.Players.LocalPlayer.Character.Humanoid.Health > game.Players.LocalPlayer.Character.Humanoid.MaxHealth*35/100 then
							    if game.Players.LocalPlayer.Backpack:FindFirstChild(_G.SelectToolWeaponGun) or game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectToolWeaponGun) then
									repeat wait()
											EquipWeapon(_G.SelectToolWeaponGun)
											NameRandom = v.Name
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,65,1))
									until _G.Bounty1 == false or v.Humanoid.Health == 0 or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or not v.Parent or _G.Change1 == true or game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl)
									_G.Change1 = false
								
								end
							else
								repeat wait()
									totarget(CFrame.new(-390.096313, 331.886475, 673.464966))
								until _G.Bounty1 == false or game.Players.LocalPlayer.Character.Humanoid.Health >= game.Players.LocalPlayer.Character.Humanoid.MaxHealth
							end
						end
					end
				elseif _G.Hop == true then
					repeat wait()
						totarget(CFrame.new(-390.096313, 331.886475, 673.464966))
					until _G.Bounty1 == false or _G.Hop == false
				end
			end)
		end
	end)

	spawn(function ()
		while wait(30) do
			pcall(function()
				if _G.Bounty1 then
					for i, v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
						if v.Name == NameRandom and v.Humanoid.Health == v.Humanoid.MaxHealth then
							_G.Change1 = true
						end
					end
				end
			end)	
		end
	end)

    local mousee = game:GetService('Players').LocalPlayer:GetMouse()
    mousee.Button1Down:Connect(function()
	if _G.Bounty1 and game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectToolWeaponGun).RemoteFunctionShoot then
		local args = {
			[1] = game:GetService("Players"):FindFirstChild(NameRandom).Character.HumanoidRootPart.Position,
			[2] = game:GetService("Players"):FindFirstChild(NameRandom).Character.HumanoidRootPart
		}
        game:GetService("Players").LocalPlayer.Character[_G.SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
	end 
end)

	spawn(function()
		game:GetService('RunService').Stepped:connect(function()
			if _G.Bounty1 == true or _G.Hop == true then
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			end
		end)
	end)
	-----
	spawn(function()
		while wait(.1) do
			if _G.KillHop then
				CombatPlayerall()
			end
		end
	end)

	spawn(function()
		while wait(.1) do
			if _G.KillHopGun then
				CombatPlayerGun()
			end
		end
	end)

	Next = ""
	function CombatPlayerall()
		pcall(function()
			for i, v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
				if game:GetService("Players")[v.Name].Data.Level.Value >= 1200 and v.Name ~=
					game.Players.LocalPlayer.Name and v:FindFirstChild("HumanoidRootPart") and
					v:FindFirstChild("Humanoid") then
					hpmun = v.Humanoid.Health
					repeat
						game:GetService("RunService").RenderStepped:Wait()

						cope = v.Name
						--  sakill1 = true
						EquipWeapon(_G.SelectWeaponPlayer)
						if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
							local args = {
								[1] = "Buso"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
						game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,-17, 12)
						--   sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius", math.huge)
						v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
						Px = v.HumanoidRootPart.CFrame.X
						Py = v.HumanoidRootPart.CFrame.Y
						Pz = v.HumanoidRootPart.CFrame.Z
						if _G.FightingMode == nil then
							local VirtualUser = game:GetService('VirtualUser')
							local RUOK = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)

							VirtualUser:CaptureController()
							VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
							game:GetService("RunService").Heartbeat:Wait()
							pcall(function()
								RUOK.activeController.timeToNextAttack = 0
							end)
						else
							local VirtualUser = game:GetService('VirtualUser')
							local RUOK = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)

							VirtualUser:CaptureController()
							VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
							game:GetService("RunService").Heartbeat:Wait()
							pcall(function()
								RUOK.activeController.timeToNextAttack = 0
							end)

						end
						_G.onNext = true
						if _G.ServerHop and game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftAlt) then
							if NewWorld then

								game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(266.227783,1.39509034, 1857.00732)
								Hopey()
							elseif ThreeWorld then

								game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12554.9443, 337.194092, -7501.44727, 0.906377554, 4.23948272e-08, -0.422468632, -1.89128269e-08, 1, 5.97740595e-08, 0.422468632, -4.61877896e-08, 0.906377554)
								Hopey()
							end
						end

					until not v.Parent or Next == "true" or v.Humanoid.Health <= 0 or _G.KillHop == false or
						game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl)
					Next = "d"
					sakill1 = false
					--  pk = false
					v.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
				end
			end
		end)
	end

	Next = ""
	function CombatPlayerGun()
		pcall(function()
			for i, v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
				if game:GetService("Players")[v.Name].Data.Level.Value >= 1200 and v.Name ~=
					game.Players.LocalPlayer.Name and v:FindFirstChild("HumanoidRootPart") and
					v:FindFirstChild("Humanoid") then
					hpmun = v.Humanoid.Health
					repeat
						game:GetService("RunService").RenderStepped:Wait()

						cope = v.Name
						--  sakill1 = true
						EquipWeapon(_G.SelectToolWeaponGun)
						if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
							local args = {
								[1] = "Buso"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
						game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,50,0)
						--   sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius", math.huge)
						v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
						Px = v.HumanoidRootPart.CFrame.X
						Py = v.HumanoidRootPart.CFrame.Y
						Pz = v.HumanoidRootPart.CFrame.Z
						if _G.FightingMode == nil then
							game:GetService'VirtualUser':CaptureController()
							game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
						else
							game:GetService'VirtualUser':CaptureController()
							game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
						end
						_G.onNext = true
						if _G.ServerHop and game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftAlt) then
							if NewWorld then

								game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(266.227783,1.39509034, 1857.00732)
								Hopey()
							elseif ThreeWorld then

								game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12554.9443, 337.194092, -7501.44727, 0.906377554, 4.23948272e-08, -0.422468632, -1.89128269e-08, 1, 5.97740595e-08, 0.422468632, -4.61877896e-08, 0.906377554)
								Hopey()
							end
						end

					until not v.Parent or Next == "true" or v.Humanoid.Health <= 0 or _G.KillHopGun == false or
						game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl)
					Next = "d"
					sakill1 = false
					--  pk = false
					v.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
				end
			end
		end)
	end

	local lp = game:GetService('Players').LocalPlayer
	local mouse = lp:GetMouse()
	mouse.Button1Down:Connect(function()
		if _G.KillHopGun and game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectToolWeaponGun) then
			local args = {
				[1] = game:GetService("Players"):FindFirstChild(cope).Character.HumanoidRootPart.Position,
				[2] = game:GetService("Players"):FindFirstChild(cope).Character.HumanoidRootPart
			}
			game:GetService("Players").LocalPlayer.Character[_G.SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
		end 
	end)

	function Hopey()
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
							-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
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

	spawn(function()
		while wait(6) do
			if _G.onNext then
				pcall(function()
					for i, v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
						if v.Name == cope and v.Humanoid.Health == v.Humanoid.MaxHealth or v.Humanoid.Health > hpmun and
							v.Name == cope then

							Next = "true"
						end
					end
				end)
			end
		end
	end)

	spawn(function()
		while wait() do
			if _G.KillHop then
				pcall(function()
					wait(45)
					repeat wait()
						_G.KillHop = false
						wait(.5)
						if NewWorld then  
							game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(266.227783,1.39509034, 1857.00732)
						elseif ThreeWorld then
							game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12554.9443, 337.194092, -7501.44727, 0.906377554, 4.23948272e-08, -0.422468632, -1.89128269e-08, 1, 5.97740595e-08, 0.422468632, -4.61877896e-08, 0.906377554)
						end
						if game:GetService("Players").localPlayer.PlayerGui.Main.InCombat.Visible == false then
							Hopey()
						end
					until nil
				end)
			end
		end
	end)

	spawn(function()
		while wait() do
			if _G.KillHopGun then
				pcall(function()
					wait(45)
					repeat wait()
						_G.KillHop = false
						wait(.5)
						if NewWorld then  
							game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(266.227783,1.39509034, 1857.00732)
						elseif ThreeWorld then
							game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12554.9443, 337.194092, -7501.44727, 0.906377554, 4.23948272e-08, -0.422468632, -1.89128269e-08, 1, 5.97740595e-08, 0.422468632, -4.61877896e-08, 0.906377554)
						end
						if game:GetService("Players").localPlayer.PlayerGui.Main.InCombat.Visible == false then
							Hopey()
						end
					until nil
				end)
			end
		end
	end)


	page9:Toggle("Aimbot Gun",false,function(bool)
		Aimbot = bool
	end)
	local lp = game:GetService('Players').LocalPlayer
	local mouse = lp:GetMouse()
	mouse.Button1Down:Connect(function()
		if Aimbot and game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeaponPlayer) then
			local args = {
				[1] = game:GetService("Players"):FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Position,
				[2] = game:GetService("Players"):FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart
			}
			game:GetService("Players").LocalPlayer.Character[_G.SelectWeaponPlayer].RemoteFunctionShoot:InvokeServer(unpack(args))
		end 
	end)

	page9:Toggle("Spectate Player",false,function(bool)
		Sp = bool
		local plr1 = game.Players.LocalPlayer.Character.Humanoid
		local plr2 = game.Players:FindFirstChild(SelectedKillPlayer)
		repeat wait(.1)
			game.Workspace.Camera.CameraSubject = plr2.Character.Humanoid
		until Sp == false 
		game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
	end)
	page9:Button("Teleport Player",function()
		local plr1 = game.Players.LocalPlayer.Character
		local plr2 = game.Players:FindFirstChild(SelectedKillPlayer)
		plr1.HumanoidRootPart.CFrame = plr2.Character.HumanoidRootPart.CFrame
	end)

	page9:Button("Copy Pant and Shirt", function()
		local plr1 = game.Players.LocalPlayer.Character
		local plr2 = game.Players:FindFirstChild(SelectedKillPlayer)
		plr1.Shirt.ShirtTemplate = plr2.Character.Shirt.ShirtTemplate
		plr1.Pants.PantsTemplate = plr2.Character.Pants.PantsTemplate
	end)

	page9:Label("Use With Kill Player")
	local SelectWeapona = page9:Drop("Select Weapon",false,Wapon,function(Value)
		_G.SelectWeaponPlayer = Value
	end)
	page9:Button("Refresh Weapon",function()
		SelectWeapona:Clear()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
			if v:IsA("Tool") then
				SelectWeapona:Add(v.Name)
			end
		end

		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
			if v:IsA("Tool") then
				SelectWeapona:Add(v.Name)
			end
		end
	end) 

	page7:Label("Use in Dungeon Only")

	page7:Drop("Select Microchip",false,{"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha"},function(t)
		_G.CHIP = t
	end)

	page7:Toggle("Auto Raid",_G.autoraid,function(t)
		_G.autoraid = t
	end)
	game:GetService("RunService").RenderStepped:Connect(function()
		if _G.autoraid then
			game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
		end
	end)

	if NewWorld then
		spawn(function()
			while wait(.1) do
				if _G.autoraid then
					for i,v in pairs(game.Workspace:GetChildren()) do
						if string.find(v.Name, "Fruit") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
						end
					end

					if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
						if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1")  then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.CHIP)
						end
						if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or  game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip")  then
							fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
						end
					end
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if _G.autoraid and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then
							pcall(function()
								repeat wait(.1)
									if setsimulationradius then
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
									end
									v.HumanoidRootPart.Transparency = 70
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
									v.HumanoidRootPart.CanCollide = false
									if v.Humanoid.Health > 0 then
										v.Humanoid.Health = 0 
									elseif v.Humanoid.Health == 0 then
										v.Humanoid.Health = v.Humanoid.MaxHealth
									else
										v.Humanoid.Health = 0 
									end
								until not _G.autoraid or not v.Parent or v.Humanoid.Health <= 0
							end)
						end
					end
					spawn(function()
						while wait() do
							pcall(function()
								if _G.autoraid then
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								end
							end) 
						end
					end)
					if game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland5") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland4") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland3") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland2") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland1") then
						if game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland5") then
								
							totarget(game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland5"):FindFirstChildWhichIsA("Part").CFrame*CFrame.new(0,20,0))
						
						elseif game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland4") then
							
							totarget(game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland4"):FindFirstChildWhichIsA("Part").CFrame*CFrame.new(0,20,0))
						
						elseif game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland3") then

							totarget(game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland3"):FindFirstChildWhichIsA("Part").CFrame*CFrame.new(0,20,0))
														
						elseif game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland2") then
							
							totarget(game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland2"):FindFirstChildWhichIsA("Part").CFrame*CFrame.new(0,20,0))
						
						elseif game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland1") then
						
						
						
						end
					end
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
				end
			end
		end)
	end

	if ThreeWorld then
		spawn(function()
			while wait(.1) do
				if _G.autoraid then
					for i,v in pairs(game.Workspace:GetChildren()) do
						if string.find(v.Name, "Fruit") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
						end
					end
					if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
						if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1")  then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.CHIP)
						end
						if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or  game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip")  then
							fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
						end
					end
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if _G.autoraid and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then
							pcall(function()
								repeat wait(.1)
									if setsimulationradius then
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
									end
									v.HumanoidRootPart.Transparency = 70
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
									v.HumanoidRootPart.CanCollide = false
									if v.Humanoid.Health > 0 then
										v.Humanoid.Health = 0 
									elseif v.Humanoid.Health == 0 then
										v.Humanoid.Health = v.Humanoid.MaxHealth
									else
										v.Humanoid.Health = 0 
									end
								until not _G.autoraid or not v.Parent or v.Humanoid.Health <= 0
							end)
						end
					end
					spawn(function()
						while wait() do
							pcall(function()
								if _G.autoraid then
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								end
							end) 
						end
					end)
					if game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland5") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland4") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland3") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland2") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland1") then
						if game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland5") then
								
							totarget(game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland5"):FindFirstChildWhichIsA("Part").CFrame*CFrame.new(0,20,0))
						
						elseif game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland4") then
							
							totarget(game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland4"):FindFirstChildWhichIsA("Part").CFrame*CFrame.new(0,20,0))
						
						elseif game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland3") then

							totarget(game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland3"):FindFirstChildWhichIsA("Part").CFrame*CFrame.new(0,20,0))
														
						elseif game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland2") then
							
							totarget(game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland2"):FindFirstChildWhichIsA("Part").CFrame*CFrame.new(0,20,0))
						
						elseif game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland1") then
							

						
						end
					end
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
				end
			end
		end)
	end

	page7:Toggle("Auto Raid+Hop",_G.autoraidhop,function(t)
		_G.autoraidhop = t
	end)
	game:GetService("RunService").RenderStepped:Connect(function()
		if _G.autoraidhop then
			game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
		end
	end)

	if NewWorld then
		spawn(function()
			while wait(.1) do
				if _G.autoraidhop then
					for i,v in pairs(game.Workspace:GetChildren()) do
						if string.find(v.Name, "Fruit") then
							v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
						end
					end
					if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
						if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1")  then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.CHIP)
						end
						wait(1)
						if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or  game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip")  then
							fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
						end
					end
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if _G.autoraidhop and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then
							pcall(function()
								repeat wait(.1)
									if setsimulationradius then
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
									end
									v.HumanoidRootPart.Transparency = 70
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
									v.HumanoidRootPart.CanCollide = false
									if v.Humanoid.Health > 0 then
										v.Humanoid.Health = 0 
									elseif v.Humanoid.Health == 0 then
										v.Humanoid.Health = v.Humanoid.MaxHealth
									else
										v.Humanoid.Health = 0 
									end
								until not _G.autoraidhop or not v.Parent or v.Humanoid.Health <= 0
							end)
						end
					end
					spawn(function()
						while wait() do
							pcall(function()
								if _G.autoraidhop then
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								end
							end) 
						end
					end)
					if game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland5") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland4") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland3") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland2") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland1") then
						if game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland5") then
								
							totarget(game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland5"):FindFirstChildWhichIsA("Part").CFrame*CFrame.new(0,20,0))
						
						elseif game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland4") then
							
							totarget(game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland4"):FindFirstChildWhichIsA("Part").CFrame*CFrame.new(0,20,0))
						
						elseif game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland3") then

							totarget(game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland3"):FindFirstChildWhichIsA("Part").CFrame*CFrame.new(0,20,0))
														
						elseif game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland2") then
							
							totarget(game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland2"):FindFirstChildWhichIsA("Part").CFrame*CFrame.new(0,20,0))
						
						elseif game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland1") then
							
							
						
						end
					end
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
				end
			end
		end)
	end

	if ThreeWorld then
		spawn(function()
			while wait(.1) do
				if _G.autoraidhop then
					for i,v in pairs(game.Workspace:GetChildren()) do
						if string.find(v.Name, "Fruit") then
							v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
						end
					end
					if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
						if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1")  then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.CHIP)
						end
						wait(1)
						if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or  game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip")  then
							fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
						end
					end
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if _G.autoraidhop and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then
							pcall(function()
								repeat wait(.1)
									if setsimulationradius then
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
									end
									v.HumanoidRootPart.Transparency = 70
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
									v.HumanoidRootPart.CanCollide = false
									if v.Humanoid.Health > 0 then
										v.Humanoid.Health = 0 
									elseif v.Humanoid.Health == 0 then
										v.Humanoid.Health = v.Humanoid.MaxHealth
									else
										v.Humanoid.Health = 0 
									end
								until not _G.autoraidhop or not v.Parent or v.Humanoid.Health <= 0
							end)
						end
					end
					spawn(function()
						while wait() do
							pcall(function()
								if _G.autoraidhop then
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								end
							end) 
						end
					end)
					if game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland5") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland4") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland3") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland2") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland1") then
						if game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland5") then
								
							totarget(game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland5"):FindFirstChildWhichIsA("Part").CFrame*CFrame.new(0,20,0))
						
						elseif game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland4") then
							
							totarget(game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland4"):FindFirstChildWhichIsA("Part").CFrame*CFrame.new(0,20,0))
						
						elseif game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland3") then

							totarget(game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland3"):FindFirstChildWhichIsA("Part").CFrame*CFrame.new(0,20,0))
														
						elseif game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland2") then
							
							totarget(game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland2"):FindFirstChildWhichIsA("Part").CFrame*CFrame.new(0,20,0))
						
						elseif game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland1") then
							


						end
					end
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
				end
			end
		end)
	end


	spawn(function()
		while wait(35) do
			if _G.autoraidhop then
				if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
					local PlaceID = game.PlaceId
					local AllIDs = {}
					local foundAnything = ""
					local actualHour = os.date("!*t").hour
					local Deleted = false
          --[[
          local File = pcall(function()
             AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
          end)
          if not File then
             table.insert(AllIDs, actualHour)
             writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
          end
          ]]
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
										-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
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
			end
		end
	end)

	Distance = 1000

	page7:Toggle("Kill Aura",false,function(value)
		RaidsArua = value
	end)
	page7:Toggle("Auto Next Island",false,function(value)
		NextIsland = value
	end)
	page7:Toggle("Auto Awake",false,function(value)
		Awakener = value
	end)
	if NewWorld then
		page7:Button("Teleport to Lab",function()
		    totarget(CFrame.new(-6438.73535, 250.645355, -4501.50684))
		end)
	end
	if ThreeWorld then
		page7:Button("Teleport to Lab",function()
		    totarget(CFrame.new(-5017.40869, 314.844055, -2823.0127))
		end)
	end
	page7:Button("Awakening Room",function()
	    totarget(CFrame.new(266.227783, 1.39509034, 1857.00732))
	end)
	spawn(function()
		while wait(.1) do
			if Awakener then
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
			end
		end
	end)

	game:GetService("RunService").RenderStepped:Connect(function()
		if NextIsland then
			game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
		end
	end)

	spawn(function()
		while wait(.1) do
			pcall(function()
				if AutoNextIsland then
					if game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland5") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland4") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland3") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland2") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland1") then
						if game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland5") then
								
							totarget(game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland5"):FindFirstChildWhichIsA("Part").CFrame*CFrame.new(0,20,0))
						
						elseif game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland4") then
							
							totarget(game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland4"):FindFirstChildWhichIsA("Part").CFrame*CFrame.new(0,20,0))
						
						elseif game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland3") then

							totarget(game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland3"):FindFirstChildWhichIsA("Part").CFrame*CFrame.new(0,20,0))
														
						elseif game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland2") then
							
							totarget(game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland2"):FindFirstChildWhichIsA("Part").CFrame*CFrame.new(0,20,0))
						
						elseif game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland1") then
							


						end
					else
						if NewWorld then
							totarget(CFrame.new(-6438.73535, 250.645355, -4501.50684))
						elseif ThreeWorld then
							totarget(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818))
						end
					end
				end
			end)
		end
	end)
    
	spawn(function()
		while wait(.1) do
			if RaidsArua then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if RaidsArua and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then
						pcall(function()
							repeat wait(.1)
								if setsimulationradius then
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								end
								v.HumanoidRootPart.Transparency = 1
								v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
								v.HumanoidRootPart.CanCollide = false
								if v.Humanoid.Health > 0 then
									v.Humanoid.Health = 0 
								elseif v.Humanoid.Health == 0 then
									v.Humanoid.Health = v.Humanoid.MaxHealth
								else
									v.Humanoid.Health = 0 
								end
							until not RaidsArua or not v.Parent or v.Humanoid.Health <= 0
						end)
					end
				end
			end
		end
	end)


	page11:TextBox("You Web Hook","In This",function(x)
		_G.WebHookKaiTung = x
	end)

	page11:Toggle("Send Webhook to discord",false,function(a)
_G.Kaitun = a
end)
	game:GetService("Players").LocalPlayer.Data.Level.Changed:connect(function()
		if _G.Kaitun then
			local url = tostring(_G.WebHookKaiTung)
			RigC = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
			
				
			local data = {
				["content"] = "<@!"..tostring(_G.discordId)..">",
				["embeds"] = {
					{
						["title"] = "**KaiTungWebhook!**",
						["description"] = "Username : ||".. game.Players.LocalPlayer.Name.."|| \n Level :"..game:GetService("Players").LocalPlayer.Data.Level.Value.."\n Weapon : ".. tostring(RigC.activeController.currentWeaponModel),
						["type"] = "rich",
						["color"] = tonumber(0x899314),
					}
				}
			} 
			local newdata = game:GetService("HttpService"):JSONEncode(data)
			
			local headers = {
				["content-type"] = "application/json"
			}
			request = http_request or request or HttpPost or syn.request
			local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
			request(abcdef)
		end
	end)

	local LocalPlayer = game:GetService'Players'.LocalPlayer
	local originalstam = LocalPlayer.Character.Energy.Value
	function infinitestam()
		LocalPlayer.Character.Energy.Changed:connect(function()
			if InfinitsEnergy then
				LocalPlayer.Character.Energy.Value = originalstam
			end 
		end)
	end
	spawn(function()
		while wait(.1) do
			if InfinitsEnergy then
				wait(0.3)
				originalstam = LocalPlayer.Character.Energy.Value
				infinitestam()
			end
		end
	end)

	nododgecool = false
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
	page11:Button("Join Pirates Team",function()
		local args = {
			[1] = "SetTeam",
			[2] = "Pirates"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
		local args = {
			[1] = "BartiloQuestProgress"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		local args = {
			[1] = "Buso"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	page11:Button("Join Marines Team",function()
		local args = {
			[1] = "SetTeam",
			[2] = "Marines"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		local args = {
			[1] = "BartiloQuestProgress"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		local args = {
			[1] = "Buso"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	page11:Button("Open Devil Shop",function()
		local args = {
			[1] = "GetFruits"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		game.Players.localPlayer.PlayerGui.Main.FruitShop.Visible = true
	end)
	page11:Button("Open Inventory",function()
		local args = {
			[1] = "getInventoryWeapons"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		wait(1)
		game.Players.localPlayer.PlayerGui.Main.Inventory.Visible = true
	end)

	page11:Line()

	local ScreenGui = Instance.new("ScreenGui")
	local TextLabel = Instance.new("TextLabel")
	local UIGradient = Instance.new("UIGradient")

	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	TextLabel.Parent = ScreenGui
	TextLabel.Active = true
	TextLabel.BackgroundColor3 = Color3.fromRGB(10, 224, 153)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(10, 224, 153)
	TextLabel.Position = UDim2.new(0.424812019, 0, 0, 0)
	TextLabel.Size = UDim2.new(0, 200, 0, 50)
	TextLabel.Font = Enum.Font.GothamBold
	TextLabel.Text = "Server Time"
	TextLabel.TextColor3 = Color3.fromRGB(10, 224, 153)
	TextLabel.TextSize = 25.000
	TextLabel.TextTransparency = 1
	TextLabel.TextStrokeTransparency = 300.000

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(10, 224, 153)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(10, 224, 153)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(10, 224, 153))}
	UIGradient.Parent = TextLabel

	local function UpdateTime()
		local GameTime = math.floor(workspace.DistributedGameTime+0.5)
		local Hour = math.floor(GameTime/(60^2))%24
		local Minute = math.floor(GameTime/(60^1))%60
		local Second = math.floor(GameTime/(60^0))%60
		TextLabel.Text = ("Hour : "..Hour.." Minute : "..Minute.." Second : "..Second)
	end

	spawn(function()
		while true do
			UpdateTime()
			game:GetService("RunService").RenderStepped:Wait()
		end
	end)


	page11:Toggle("Server Time",false,function(value)
		ServerTime = value
		if ServerTime == true then
			TextLabel.TextTransparency = 0
		elseif ServerTime == false then
			TextLabel.TextTransparency = 1
		end
	end)

	page11:Toggle("Dodge No Cooldown",false,function(Value)
		nododgecool = Value
		NoDodgeCool()
	end)
	page11:Toggle("Infinits Energy",false,function(value)
		InfinitsEnergy = value
		originalstam = LocalPlayer.Character.Energy.Value
	end)

	page11:Toggle("Bring All Fruit",false,function(t)
		TPF = t
		while wait() do
			if TPF then
				for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
					if v:IsA ("Tool") then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
					end
				end
			end
		end
	end)



	page12:Toggle("Tween Chest (Ban Risk)",false,function(t)
		_G.Chest = t
	end)

	spawn(function()
		while wait() do
			if _G.Chest == true then
				pcall(function()
					for i,v in pairs(game.Workspace:GetDescendants()) do
						if v.Name == "Chest2" or v.Name == "Chest1" or v.Name == "Chest3" then
							tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(2,Enum.EasingStyle.Quad)
							tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = v.CFrame})
							tween:Play()
							v.CanCollide = false
						end
					end
				end)
			end
			wait(3)
		end
	end)

	

	--page12:Toggle("Invisible Mob",false,function(Value)
	--	Invisible = Value
	--end)

	page11:Toggle("Auto Haki",true,function(Value)
		_G.AutoHaki = Value  
	end)

	page12:Toggle("Auto Agility",false,function(Value)
		_G.Agility = Value
	end)

	page12:Toggle("Walk on Water",false,function(Value)
		_G.WalkWater = Value
		if _G.WalkWater == true then
			game.Players.LocalPlayer.Data.DevilFruit.Value = ("Ice-Ice")
		elseif _G.WalkWater == false then
			game.Players.LocalPlayer.Data.DevilFruit.Value = ("")
		end
	end)

	Fly = false  
	function activatefly()
		local mouse=game.Players.LocalPlayer:GetMouse''
		localplayer=game.Players.LocalPlayer
		game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
		local torso = game.Players.LocalPlayer.Character.HumanoidRootPart
		local speedSET=25
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
					gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*90),0,0)
				elseif keys.s then
					gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*90),0,0)
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
	page12:Toggle("Fly",false,function(Value)
		Fly = Value
		activatefly()
	end)
	page11:Toggle("No Clip",false,function(value)
		NoClip = value
	end)
	game:GetService("RunService").Heartbeat:Connect(
	function()
		if NoClip or _G.Observation then
			game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
		end
	end
	)

	page11:Line()

	page11:Label("Sever")
	page11:Button("Rejoin",function()
		local ts = game:GetService("TeleportService")
		local p = game:GetService("Players").LocalPlayer
		ts:Teleport(game.PlaceId, p)
	end)
	local function HttpGet(url)
		return game:GetService("HttpService"):JSONDecode(htgetf(url))
	end
	page11:Button("Server Hop",function()
		local PlaceID = game.PlaceId
		local AllIDs = {}
		local foundAnything = ""
		local actualHour = os.date("!*t").hour
		local Deleted = false
 --[[
 local File = pcall(function()
    AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
 end)
 if not File then
    table.insert(AllIDs, actualHour)
    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
 end
 ]]
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
							-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
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
	end)

	page11:Button("Teleport To Lower Server",function()
		local maxplayers, gamelink, goodserver, data_table = math.huge, "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
		if not _G.FailedServerID then _G.FailedServerID = {} end

		local function serversearch()
			data_table = game:GetService"HttpService":JSONDecode(game:HttpGetAsync(gamelink))
			for _, v in pairs(data_table.data) do
				pcall(function()
					if type(v) == "table" and v.id and v.playing and tonumber(maxplayers) > tonumber(v.playing) and not table.find(_G.FailedServerID, v.id) then
						maxplayers = v.playing
						goodserver = v.id
					end
				end)
			end
		end

		function getservers()
			pcall(serversearch)
			for i, v in pairs(data_table) do
				if i == "nextPageCursor" then
					if gamelink:find"&cursor=" then
						local a = gamelink:find"&cursor="
						local b = gamelink:sub(a)
						gamelink = gamelink:gsub(b, "")
					end
					gamelink = gamelink .. "&cursor=" .. v
					pcall(getservers)
				end
			end
		end

		pcall(getservers)
		wait()
		if goodserver == game.JobId or maxplayers == #game:GetService"Players":GetChildren() - 1 then
		end
		table.insert(_G.FailedServerID, goodserver)
		game:GetService"TeleportService":TeleportToPlaceInstance(game.PlaceId, goodserver)
	end)

	if NewWorld then
		page11:Line()
		page11:Button("Remove Lava",function()
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

		page11:Button("TP Flower Red",function()
			for i,v in pairs(game.Workspace:GetDescendants()) do
				if v.Name == "Flower2" then
				    totarget(v.CFrame)
				end
			end
		end)

		page11:Button("TP Flower Blue",function()
			for i,v in pairs(game.Workspace:GetDescendants()) do
				if v.Name == "Flower1" then
					totarget(v.CFrame)
				end
			end
		end)
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
							name.Font = "GothamBold"
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
							v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
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
								name.Font = "GothamBold"
								name.FontSize = "Size14"
								name.TextWrapped = true
								name.Size = UDim2.new(1,0,1,0)
								name.TextYAlignment = 'Top'
								name.BackgroundTransparency = 1
								name.TextStrokeTransparency = 0.5
								if v.Name == "Chest1" then
									name.TextColor3 = Color3.fromRGB(10, 224, 153)
									name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
								end
								if v.Name == "Chest2" then
									name.TextColor3 = Color3.fromRGB(10, 224, 153)
									name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
								end
								if v.Name == "Chest3" then
									name.TextColor3 = Color3.fromRGB(10, 224, 153)
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
							name.Font = "GothamBold"
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							name.TextColor3 = Color3.fromRGB(10, 224, 153)
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
							name.Font = "GothamBold"
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							name.TextColor3 = Color3.fromRGB(10, 224, 153)
							if v.Name == "Flower1" then 
								name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
								name.TextColor3 = Color3.fromRGB(10, 224, 153)
							end
							if v.Name == "Flower2" then
								name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
								name.TextColor3 = Color3.fromRGB(10, 224, 153)
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
	page12:Toggle("ESP Player",false,function(a)
		ESPPlayer = a
		while ESPPlayer do wait()
			UpdatePlayerChams()
		end
	end)
	page12:Toggle("ESP Chest",false,function(a)
		ChestESP = a
		while ChestESP do wait()
			UpdateChestChams() 
		end
	end)
	page12:Toggle("ESP Devil Fruit",false,function(a)
		DevilFruitESP = a
		while DevilFruitESP do wait()
			UpdateDevilChams() 
		end
	end)
	page12:Toggle("ESP Flower",false,function(a)
		FlowerESP = a
		while FlowerESP do wait()
			UpdateFlowerChams() 
		end
	end)

	page11:Line()
	page11:Button("Redeem All Code", function()

		local string_1 = "UPD15";
		local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
		Target:InvokeServer(string_1);

		local string_1 = "FUDD10";
		local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
		Target:InvokeServer(string_1);

		local string_1 = "BIGNEWS";
		local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
		Target:InvokeServer(string_1);

		local string_1 = "THEGREATACE ";
		local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
		Target:InvokeServer(string_1);

		local string_1 = "SUB2GAMERROBOT_RESET1 ";
		local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
		Target:InvokeServer(string_1);

		local string_1 = "StrawHatMaine";
		local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
		Target:InvokeServer(string_1);

		local string_1 = "Sub2OfficialNoobie";
		local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
		Target:InvokeServer(string_1);

		local string_1 = "SUB2NOOBMASTER123";
		local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
		Target:InvokeServer(string_1);

		local string_1 = "Sub2UncleKizaru";
		local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
		Target:InvokeServer(string_1);

		local string_1 = "Axiore";
		local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
		Target:InvokeServer(string_1);

		local string_1 = "TantaiGaming ";
		local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
		Target:InvokeServer(string_1);
		
		local string_1 = "STRAWHATMAINE ";
		local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
		Target:InvokeServer(string_1);
		
		local string_1 = "THIRDSEA";
		local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
		Target:InvokeServer(string_1);
		
		local string_1 = "2BILLION";
		local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
		Target:InvokeServer(string_1);
		
		local string_1 = "1MLIKES_RESET";
		local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
		Target:InvokeServer(string_1);
		
		local string_1 = "UPD16";
		local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
		Target:InvokeServer(string_1);

	end)
	page11:Button("Redeem Stat Refund Code", function()

		local string_1 = "Sub2UncleKizaru";
		local Target = game:GetService("ReplicatedStorage").Remotes.Redeem;
		Target:InvokeServer(string_1);

		Misc:Line()
	end)
	page11:Button("FPS Boost",function(t)
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
	end)
	page12:Label("Auto Farm Level Lock")
	_G.LockLevelValue = 2000
	OldLevel = game.Players.localPlayer.Data.Level.Value
	page12:Slider("Select Level Lock",false,false,0,2100,1,1,false,_G.LockLevelValue,_G.LockLevelValue,function(value)
		_G.LockLevelValue = value
	end)
	page12:Toggle("Lock Level",false,function(value)
		_G.LockLevel = value
	end)
	spawn(function()
		while wait(.1) do
			if _G.LockLevel then
				if game.Players.localPlayer.Data.Level.Value >= _G.LockLevelValue then
					game.Players.localPlayer:Kick("การฟามเสร็จสิ้นแล้ว")
				end
			end
		end
	end)

	page12:Toggle("Lock Level Stop Farm",false,function(value)
		_G.LockLevelStopFarm = value
	end)
	spawn(function()
		while wait(.1) do
			if _G.LockLevelStopFarm then
				if game.Players.localPlayer.Data.Level.Value >= _G.LockLevelValue then
					_G.AutoFarm = false
					if _G.LockLevelStopFarm == false then
						return
					end
				end
			end
		end
	end)
	
	page12:Toggle("Auto Rejoin",true,function(value)
		_G.AutoRejoin = value
	end)
	spawn(function()
	    while wait() do
	        if _G.AutoRejoin then
	                getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
                        if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
                            game:GetService("TeleportService"):Teleport(game.PlaceId)
                        end
                    end)
	            end
	        end
	    end)


	local vu = game:GetService("VirtualUser")
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)

	spawn(function()
		while wait(.1) do
			if _G.AutoHaki then 
				if game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then

				else
					local args = {
						[1] = "Buso"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end
		end
	end)

	spawn(function()
		while wait(.1) do
			if _G.Agility then
				game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
			end
		end
	end)
end

if game.PlaceId == 4520749081 or game.PlaceId == 6381829480 or game.PlaceId == 5931540094 then

	local create = loadstring(game:HttpGet("https://raw.githubusercontent.com/sky-lord1231/Ui/main/Ui.lua"))()
	
	local Window = create:Win("R E L A X H U B")
	local Tap1 = Window:Taps("Auto Farm")
	local Tap2 = Window:Taps("Teleports")
	local Tap3 = Window:Taps("Combat")
	local Tap4 = Window:Taps("Dungeon")
	local Tap6 = Window:Taps("Misc")
	local Tap7 = Window:Taps("Setting")
	
	local page1 = Tap1:newpage()
	local page2 = Tap1:newpage()
	local page3 = Tap2:newpage()
	local page4 = Tap2:newpage()
	local page5 = Tap3:newpage()
	local page6 = Tap3:newpage()
	local page7 = Tap4:newpage()
	local page8 = Tap4:newpage()
	local page9 = Tap6:newpage()
	local page10 = Tap6:newpage()
	local page11 = Tap7:newpage()
	local page12 = Tap7:newpage()
	
	page1:Label("Auto Farm",0)
	
	page1:Line()
	
	page1:Toggle("Auto Farm Level",false,function(e)
	   pcall(function()
		  CheckQuest()
		  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
		  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 32
		  _G.AutoFarm = e
		  wait()
		  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 32
		end)
	end)
	 page1:Toggle("Haki",true,function(t)
	   _G.Haki = t
	 end)
	 
	 spawn(function()
	   while wait(1) do
		  if _G.Haki then
			pcall(function()
			  if game.Players.LocalPlayer.Character.Haki.Value == 0 then
				game.Players.LocalPlayer.Character.Haki.Value = 1
				game:GetService("Players").LocalPlayer.Character.Services.Client.Armament:FireServer()
			  end
			end)
		  end
	   end
	 end)
	 
	 page1:Toggle("Ken-Haki",true,function(t)
	   _G.KenHaki = t
	 end)
	 
	 spawn(function()
	   while wait(1) do
		  if _G.KenHaki then
			pcall(function()
			  if game.Players.LocalPlayer.Character.KenHaki.Value == 0 then
				local args = {
				   [1] = true
				}
				game:GetService("Players").LocalPlayer.Character.Services.Client.KenEvent:InvokeServer(unpack(args))
			  end
			end)
		  end
	   end
	 end)
	
	if _G.useid == nil then
	   game.Players.LocalPlayer.UserId = 991117111
	   game:GetService("CoreGui").PlayerList.Enabled = false
	   _G.useid = false
	end
 
     local RunService = game:GetService("RunService")
    function antiSit()
    if game.Players.LocalPlayer.Character.Humanoid:GetState() == Enum.HumanoidStateType.Seated then 
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
    end
    end
    RunService:BindToRenderStep("tempBinding", 1000, antiSit)
    
	 
	 local placeId = game.PlaceId
	 if placeId == 4520749081 then
	   OldWorld = true
	 elseif placeId == 6381829480 then
	   newworld = true
	 end
	 function CheckQuest()
	   local MyLevel = game.Players.LocalPlayer.PlayerStats.lvl.Value
	   if OldWorld then
		  if MyLevel == 1 or MyLevel <= 9 then
			CFrameQuest = CFrame.new(2277.1884765625, 48.143299102783, -1648.5339355469)
			CFrameMon = CFrame.new(2388.6013183594, 350.19408416748, -1578.6862792969)
			NameMon = "Soldier"
			Ms = "Soldier [Lv. 1]"
			levelquest = 1
		  elseif MyLevel == 10 or MyLevel <= 19 then
			CFrameQuest = CFrame.new(2496.5114746094, 48.135684967041, -1771.6900634766)
			CFrameMon = CFrame.new(2388.6013183594, 350.19408416748, -1578.6862792969)
			NameMon = "Clown Pirate"
			Ms = "Clown Pirate [Lv. 10]"
			levelquest = 10
		  elseif MyLevel == 20 or MyLevel <= 29 then
			CFrameQuest = CFrame.new(2231.0498046875, 48.153293609619, -1779.0476074219)
			CFrameMon = CFrame.new(2293.3962402344, 350.193294525146, -1802.6019287109)
			NameMon = "Smoky"
			Ms = "Smoky [Lv. 20]"
			levelquest = 20
		  elseif MyLevel == 30 or MyLevel <= 49 then
			CFrameQuest = CFrame.new(2011.1265869141, 48.143299102783, -1810.4008789063)
			CFrameMon = CFrame.new(2091.3608398438, 350.193294525146, -1928.6489257813)
			NameMon = "Tashi"
			Ms = "Tashi [Lv. 30]"
			levelquest = 30
		  elseif MyLevel == 50 or MyLevel <= 74 then
			CFrameQuest = CFrame.new(4021.25781, 37.8887329, 268.103943, 0.529884458, -0, -0.848069847, 0, 1, -0, 0.848069847, 0, 0.529884458)
			CFrameMon = CFrame.new(3965.912109375, 395.80511474609, 119.3405380249)
			NameMon = "Clown Pirate"
			Ms = "Clown Pirate [Lv. 50]"
			levelquest = 50
		  elseif MyLevel == 75 or MyLevel <= 144 then
			CFrameQuest = CFrame.new(4260.06592, 69.0870895, 249.896057, 0.529884458, -0, -0.848069847, 0, 1, -0, 0.848069847, 0, 0.529884458)
			CFrameMon = CFrame.new(4279.83838, 350.8366318, 53.9889946)
			NameMon = "The Clown"
			Ms = "The Clown [Lv. 75]"
			levelquest = 75
		  elseif MyLevel == 145 or MyLevel <= 179 then
			CFrameQuest = CFrame.new(1607.07849, 68.6067047, 1359.05444)
			CFrameMon = CFrame.new(1708.06006, 350.6267929, 1412.47498)
			NameMon = "Axe-Hand"
			Ms = "Axe-Hand [Lv. 145]"
			levelquest = 145
		  elseif MyLevel == 180 or MyLevel <= 229 then
			CFrameQuest = CFrame.new(3873.9126, 10.4919758, 3251.1311)
			CFrameMon = CFrame.new(3460.4594726563, 487.71597290039, 1550.8977050781)
			NameMon = "Fishman"
			Ms = "Fishman [Lv. 180]"
			levelquest = 180
		  elseif MyLevel == 230 or MyLevel <= 249 then
			CFrameQuest = CFrame.new(4291.13379, 10.4919758, 3250.18872)
			CFrameMon = CFrame.new(3813.0610351563, 326.03552246094, 1452.6848144531)
			NameMon = "SharkMan"
			Ms = "SharkMan [Lv. 230]"
			levelquest = 230
		  elseif MyLevel == 250 or MyLevel <= 299 then
			CFrameQuest = CFrame.new(-51.7463303, 49.7374306, -87.7024078)
			CFrameMon = CFrame.new(-51.7463303, 350.7374306, -87.7024078)
			NameMon = "Trainer Chef"
			Ms = "Trainer Chef [Lv. 250]"
			levelquest = 250
		  elseif MyLevel == 300 or MyLevel <= 349 then
			CFrameQuest = CFrame.new(39.4004707, 99.5126801, -47.8512077)
			CFrameMon = CFrame.new(96.1493149, 350.94034, -143.488434)
			NameMon = "Dark Leg"
			Ms = "Dark Leg [Lv. 300]"
			levelquest = 300
		  elseif MyLevel == 350 or MyLevel <= 399 then
			CFrameQuest = CFrame.new(-44.2784309, 49.7609177, 115.918266)
			CFrameMon = CFrame.new(-103.605598, 350.94034, 233.536148)
			NameMon = "Weapon Man"
			Ms = "Weapon Man [Lv. 350]"
			levelquest = 350
		  elseif MyLevel == 400 or MyLevel <= 449 then
			CFrameQuest = CFrame.new(-2851.466796875, 18.111785888672, 1420.4886474609)
			CFrameMon = CFrame.new(-2818.3337402344, 350.12328338623, 1470.3162841797)
			NameMon = "Snow Soldier"
			Ms = "Snow Soldier [Lv. 400]"
			levelquest = 400
		  elseif MyLevel == 450 or MyLevel <= 524 then
			CFrameQuest = CFrame.new(-2838.9370117188, 18.091789245605, 1319.8012695313)
			CFrameMon = CFrame.new(-2860.3764648438, 350.121784210205, 1293.3358154297)
			NameMon = "King Snow"
			Ms = "King Snow [Lv. 450]"
			levelquest = 450
		  elseif MyLevel == 525 or MyLevel <= 624 then
			CFrameQuest = CFrame.new(1731.5385742188, 12.902250289917, 3644.4453125)
			CFrameMon = CFrame.new(1761.9046630859, 350.971120834351, 3610.41015625)
			NameMon = "Candle Man"
			Ms = "Candle Man [Lv. 525]"
			levelquest = 525
		  elseif MyLevel == 625 or MyLevel <= 724 then
			CFrameQuest = CFrame.new(1520.1804199219, 12.902250289917, 3431.5466308594)
			CFrameMon = CFrame.new(1538.6333007813, 350.902250289917, 3397.02734375)
			NameMon = "Bomb Man"
			Ms = "Bomb Man [Lv. 625]"
			levelquest = 625
		  elseif MyLevel == 725 or MyLevel <= 799 then
			CFrameQuest = CFrame.new(1511.4117431641, 43.04167175293, 3541.400390625)
			CFrameMon = CFrame.new(1478.7867431641, 350.56248474121, 3638.8305664063)
			NameMon = "King of Sand"
			Ms = "King of Sand [Lv. 725]"
			levelquest = 725
		  elseif MyLevel == 800 or MyLevel <= 849 then
			CFrameQuest = CFrame.new(-1251.8015136719, 200.67266845703, 4581.4990234375)
			CFrameMon = CFrame.new(-1294.9228515625, 500.30653381348, 4678.55859375)
			NameMon = "Sky Soldier"
			Ms = "Sky Soldier [Lv. 800]"
			levelquest = 800
		  elseif MyLevel == 850 or MyLevel <= 899 then
			CFrameQuest = CFrame.new(-818.76123046875, 386.42059326172, 4745.69921875)
			CFrameMon = CFrame.new(-790.27984619141, 500.47073364258, 4807.623046875)
			NameMon = "Ball Man"
			Ms = "Ball Man [Lv. 850]"
			levelquest = 850
		  elseif MyLevel == 900 or MyLevel <= 999 then
			CFrameQuest = CFrame.new(-861.33489990234, 386.42074584961, 4879.1186523438)
			CFrameMon = CFrame.new(-895.37359619141, 500.42074584961, 4946.294921875)
			NameMon = "Rumble Man"
			Ms = "Rumble Man [Lv. 900]"
			levelquest = 900
		  elseif MyLevel == 1000 or MyLevel <= 1099 then
			CFrameQuest = CFrame.new(8271.4833984375, 11.896879196167, 5437.4653320313)
			CFrameMon = CFrame.new(8333.201171875, 350.846879959106, 5465.994140625)
			NameMon = "Soldier"
			Ms = "Soldier [Lv. 1000]"
			levelquest = 1000
		  elseif MyLevel == 1100 or MyLevel <= 1149 then
			CFrameQuest = CFrame.new(8176.1176757813, 11.846877098083, 5287.4770507813)
			CFrameMon = CFrame.new(6152.1225585938, 73.269500732422, 3514.0356445313)
			NameMon = "Leader"
			Ms = "Leader [Lv. 1100]"
			levelquest = 1100
		  elseif MyLevel == 1150 or MyLevel <= 1249 then
			CFrameQuest = CFrame.new(7993.27393, 11.8711519, 5765.53076, -0.278351784, 5.68772371e-08, -0.960479379, 9.40473655e-08, 1, 3.19621591e-08, 0.960479379, -8.14338179e-08, -0.278351784)
			CFrameMon = CFrame.new(5622.912109375, 174.02874755859, 4060.2351074219)
			NameMon = "Pasta"
			Ms = "Pasta [Lv. 1150]"
			levelquest = 1150
		  elseif MyLevel == 1250 or MyLevel <= 1324 then
			CFrameQuest = CFrame.new(4210.1782226563, 13.030811309814, 6768.8955078125)
			CFrameMon = CFrame.new(4166.5815429688, 500.090654373169, 6898.6127929688)
			NameMon = "Wolf"
			Ms = "Wolf [Lv. 1250]"
			levelquest = 1250
		  elseif MyLevel == 1325 or MyLevel <= 1399 then
			CFrameQuest = CFrame.new(4311.3798828125, 13.042789459229, 6978.6538085938)
			CFrameMon = CFrame.new(4379.4565429688, 500.090654373169, 6949.353515625)
			NameMon = "Giraffe"
			Ms = "Giraffe [Lv. 1325]"
			levelquest = 1325
		  elseif MyLevel == 1400 or MyLevel <= 1499 then
			CFrameQuest = CFrame.new(4312.81640625, 13.059648513794, 7417.8813476563)
			CFrameMon = CFrame.new(4391.2377929688, 500.961982727051, 7569.0166015625)
			NameMon = "Leo"
			Ms = "Leo [Lv. 1400]"
			levelquest = 1400
		  elseif MyLevel == 1500 or MyLevel <= 1599 then
			CFrameQuest = CFrame.new(-776.28472900391, 47.856597900391, 8478.431640625)
			CFrameMon = CFrame.new(-778.30328369141, 500.856491088867, 8537.9267578125)
			NameMon = "Zombie"
			Ms = "Zombie [Lv. 1500]"
			levelquest = 1500
		  elseif MyLevel == 1600 or MyLevel <= 1749 then
			CFrameQuest = CFrame.new(-793.65240478516, 47.857288360596, 8329.0654296875)
			CFrameMon = CFrame.new(-793.65240478516, 500.857288360596, 8329.0654296875)
			NameMon = "Shadow Master"
			Ms = "Shadow Master [Lv. 1600]"
			levelquest = 1600
		  elseif MyLevel == 1750 or MyLevel <= 1799 then
			CFrameQuest = CFrame.new(8601.7705078125, 49.582111358643, 1731.2292480469)
			CFrameMon = CFrame.new(8601.7705078125, 500.582111358643, 1731.2292480469)
			NameMon = "New World Pirate"
			Ms = "New World Pirate [Lv. 1750]"
			levelquest = 1750
		  elseif MyLevel == 1800 or MyLevel <= 1924 then
			CFrameQuest = CFrame.new(8580.9599609375, 49.578090667725, 1347.4166259766)
			CFrameMon = CFrame.new(8580.9599609375, 500.578090667725, 1347.4166259766)
			NameMon = "Rear Admiral"
			Ms = "Rear Admiral [Lv. 1800]"
			levelquest = 1800
		  elseif MyLevel == 1925 or MyLevel <= 1849 then
			CFrameQuest = CFrame.new(8242.3994140625, 49.60005569458, 1392.0007324219)
			CFrameMon = CFrame.new(8242.3994140625, 500.60005569458, 1392.0007324219)
			NameMon = "Quake Woman"
			Ms = "Quake Woman [Lv. 1925]"
			levelquest = 1925
		  elseif MyLevel == 1850 or MyLevel <= 1999 then
			CFrameQuest = CFrame.new(8555.9892578125, 49.57417678833, 1460.2507324219)
			CFrameMon = CFrame.new(8555.9892578125, 500.57417678833, 1460.2507324219)
			NameMon = "True Karate Fishman"
			Ms = "True Karate Fishman [Lv. 1850]"
			levelquest = 1850
		  elseif MyLevel == 2000 or MyLevel <= 2049 then
			CFrameQuest = CFrame.new(2970.7785644531, 40.2607421875, 13349.877929688)
			CFrameMon = CFrame.new(2970.7785644531, 500.2607421875, 13349.877929688)
			NameMon = "Fishman"
			Ms = "Fishman [Lv. 2000]"
			levelquest = 2000
		  elseif MyLevel == 2050 or MyLevel <= 2099 then
			CFrameQuest = CFrame.new(2783.875, 40.24825668335, 13617.719726563)
			CFrameMon = CFrame.new(2783.875, 500.24825668335, 13617.719726563)
			NameMon = "Combat Fishman"
			Ms = "Combat Fishman [Lv. 2050]"
			levelquest = 2050
		  elseif MyLevel == 2100 or MyLevel <= 2149 then
			CFrameQuest = CFrame.new(3297.2663574219, 40.275020599365, 13793.421875)
			CFrameMon = CFrame.new(3297.2663574219, 500.275020599365, 13793.421875)
			NameMon = "Sword Fishman"
			Ms = "Sword Fishman [Lv. 2100]"
			levelquest = 2100
		  elseif MyLevel == 2150 or MyLevel <= 2199 then
			CFrameQuest = CFrame.new(3019.2189941406, 40.270706176758, 13883.921875)
			CFrameMon = CFrame.new(3019.2189941406, 350.270706176758, 13883.921875)
			NameMon = "Fishman Soldier"
			Ms = "Fishman Soldier [Lv. 2150]"
			levelquest = 2150
		  elseif MyLevel >= 2200 then
			CFrameQuest = CFrame.new(2785.8464355469, 40.275859832764, 13820.041992188)
			CFrameMon = CFrame.new(2785.8464355469, 350.275859832764, 13820.041992188)
			NameMon = "Seasoned Fishman"
			Ms = "Seasoned Fishman [Lv. 2200]"
			levelquest = 2200
		  end
	   end
	   if newworld then
		  if MyLevel >= 2250 and MyLevel <= 2299 then
			Ms = "Beast Pirate [Lv. 2250]"
			CFrameQuest = CFrame.new(558.123962, 75.4188766, -2156.09204, -1, 0, 0, 0, 1, 0, 0, 0, -1)
			NameMon = "Beast Pirate"
			CFrameMon = CFrame.new(3302.8967285156, 367.02523803711, 91.186454772949)
			levelquest = 2250
		  elseif MyLevel >= 2300 and MyLevel <= 2349 then
			Ms = "Beast Pirate [Lv. 2300]"
			CFrameQuest = CFrame.new(416.176941, 75.386673, -5425.97754, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07)
			NameMon = "Beast Pirate"
			CFrameMon = CFrame.new(3341.6398925781, 363.15054321289, -270.224609375)
			levelquest = 2300
		  elseif MyLevel >= 2350 and MyLevel <= 2399 then
			Ms = "Snake Man [Lv. 2350]"
			CFrameQuest = CFrame.new(88.140152, 75.3936996, -5321.16357, -0.023422122, 0, -0.99972564, 0, 1, 0, 0.99972564, 0, -0.023422122)
			NameMon = "Snake Man"
			CFrameMon = CFrame.new(2821.0869140625, 228.20420837402, 397.10614013672)
			levelquest = 2350
		  elseif MyLevel >= 2400 and MyLevel <= 2449 then
			Ms = "Bandit Beast Pirate [Lv. 2400]"
			CFrameQuest = CFrame.new(-2120.31909, 74.9218903, -4906.35107, -1, 0, 0, 0, 1, 0, 0, 0, -1)
			NameMon = "Bandit Beast Pirate"
			CFrameMon = CFrame.new(2700.8044433594, 262.39566040039, -1133.3333740234)
			levelquest = 2400
		  elseif MyLevel >= 2450 and MyLevel <= 2499 then
			Ms = "Powerful Beast Pirate [Lv. 2450]"
			CFrameQuest = CFrame.new(-2754.46362, 75.4548111, -5289.625, 0.57264179, 0, 0.819805682, 0, 1, 0, -0.819805682, 0, 0.57264179)
			NameMon = "Powerful Beast Pirate"
			CFrameMon = CFrame.new(2446.5532226563, 497.23837280273, -650.99859619141)
			levelquest = 2450
		  elseif MyLevel >= 2500 and MyLevel <= 2549 then
			Ms = "Violet Samurai [Lv. 2500]"
			CFrameQuest = CFrame.new(-3022.99292, 75.7534866, -4925.86426, 0.901796937, 0, 0.43216005, 0, 1, 0, -0.43216005, 0, 0.901796937)
			NameMon = "Violet Samurai"
			CFrameMon = CFrame.new(2125.0998535156, 193.43463134766, -1028.8310546875)
			levelquest = 2500
		  elseif MyLevel >= 2550 and MyLevel <= 2599 then
			Ms = "Rabbit Man [Lv. 2550]"
			CFrameQuest = CFrame.new(-1037.83777, 75.6733093, -1947.10742, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			NameMon = "Rabbit Man"
			CFrameMon = CFrame.new(1638.6165771484, 238.3356628418, -140.75988769531)
			levelquest = 2550
		  elseif MyLevel >= 2600 and MyLevel <= 2649 then
			Ms = "Bat Man [Lv. 2600]"
			CFrameQuest = CFrame.new(-2710.16284, 75.4078979, -1561.74146, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			NameMon = "Bat Man"
			CFrameMon = CFrame.new(2427.9096679688, 214.50489807129, -285.6096496582)
			levelquest = 2600
		  elseif MyLevel >= 2650 and MyLevel <= 2699 then
			Ms = "Kitsune Samurai [Lv. 2650]"
			CFrameQuest = CFrame.new(-2917.12598, 75.457901, -1452.71692, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			NameMon = "Kitsune Samurai"
			CFrameMon = CFrame.new(1694.7454833984, 279.47674560547, 132.89778137207)
			levelquest = 2650
		  elseif MyLevel >= 2700 and MyLevel <= 2749 then
			Ms = "Elite Beast Pirate [Lv. 2700]"
			CFrameQuest = CFrame.new(-1042.13416, 75.4581985, 172.622971, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
			NameMon = "Elite Beast Pirate"
			CFrameMon = CFrame.new(2813.0407714844, 137.29498291016, 1433.4289550781)
			levelquest = 2700
		  elseif MyLevel >= 2750 and MyLevel <= 2799 then
			Ms = "Elite Beast Pirate [Lv. 2750]"
			CFrameQuest = CFrame.new(-1051.44336, 75.4359818, -113.772148, -1.1920929e-07, -0, -1.00000012, 0, 1, -0, 1.00000012, 0, -1.1920929e-07)
			NameMon = "Elite Beast Pirate"
			CFrameMon = CFrame.new(2901.4145507813, 189.0565032959, 737.08685302734)
			levelquest = 2750
		  elseif MyLevel >= 2800 and MyLevel <= 2849 then
			Ms = "Bear Man [Lv. 2800]"
			CFrameQuest = CFrame.new(-387.776123, 75.4327545, 280.899261, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			NameMon = "Bear Man"
			CFrameMon = CFrame.new(3222.7277832031, 137.29498291016, 1384.826171875)
			levelquest = 2800 
		  elseif MyLevel >= 2850 and MyLevel <= 2899 then
			Ms = "Magician [Lv. 2850]"
			CFrameQuest = CFrame.new(-3519.60156, 75.506752, 1201.35449, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			NameMon = "Magician"
			CFrameMon = CFrame.new(1887.2744140625, 145.23045349121, 1004.4313964844)
			levelquest = 2850
		  elseif MyLevel >= 2900 and MyLevel <= 2949 then
			Ms = "Pachy Woman [Lv. 2900]"
			CFrameQuest = CFrame.new(-4334.17969, 75.456749, 1914.44507, 0.480083644, -0, -0.877222717, 0, 1, -0, 0.877222717, 0, 0.480083644)
			NameMon = "Pachy Woman"
			CFrameMon = CFrame.new(1615.6518554688, 185.53813171387, 1583.0139160156)
			levelquest = 2900
		  elseif MyLevel >= 2950 and MyLevel <= 2999 then
			Ms = "Kappa [Lv. 2950]"
			CFrameQuest = CFrame.new(-1426.53455, 74.8297577, 4112.34961, 0.0880642533, -0, -0.996114731, 0, 1, -0, 0.996114731, 0, 0.0880642533)
			NameMon = "Kappa"
			CFrameMon = CFrame.new(2399.1376953125, 188.26124572754, 2357.2336425781)
			levelquest = 2950
		  elseif MyLevel >= 3000 and MyLevel <= 3024 then
			Ms = "Mammoth Man [Lv. 3000]"
			CFrameQuest = CFrame.new(-4276.69336, 74.254776, 4561.5752, 0.996116102, 0, 0.0880491585, 0, 1, 0, -0.0880491585, 0, 0.996116102)
			NameMon = "Mammoth Man"
			CFrameMon = CFrame.new(1988.3930664063, 211.38674926758, 2425.3681640625)
			levelquest = 3000
		  elseif MyLevel >= 3025 and MyLevel <= 3074 then
			Ms = "Skull Pirate [Lv. 3050]"
			CFrameQuest = CFrame.new(-3816.54614, 51.3296509, 9891.29688, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07)
			NameMon = "Skull Pirate"
			CFrameMon = CFrame.new(957.65319824219, 175.79154968262, 7112.705078125)
			levelquest = 3025
		  elseif MyLevel >= 3075 and MyLevel <= 3099 then
			Ms = "Elite Skeleton [Lv. 3100]"
			CFrameQuest = CFrame.new(-3032.25317, 51.5443535, 9854.83691, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07)
			NameMon = "Elite Skeleton"
			CFrameMon = CFrame.new(1378.60546875, 139.00987243652, 7331.2514648438)
			levelquest = 3075
		  elseif MyLevel >= 3100 and MyLevel <= 3124 then
			Ms = "Desert Thief [Lv.3125]"
			CFrameQuest = CFrame.new(8847.94238, 14.4670143, 1400.72119, -0.322491169, 0, 0.946572542, 0, 1, 0, -0.946572542, 0, -0.322491169)
			NameMon = "Desert Thief"
			CFrameMon = CFrame.new(8331.119140625, 266.55130004883, 1398.7974853516)
			levelquest = 3100
		  elseif MyLevel >= 3125 and MyLevel <= 3149 then
			Ms = "Anubis [Lv.3150]"
			CFrameQuest = CFrame.new(9141.8457, 14.469614, 1055.01233, -0.894592047, 0, 0.446883589, 0, 1, 0, -0.446883589, 0, -0.894592047)
			NameMon = "Anubis"
			CFrameMon = CFrame.new(9568.6044921875, 86.315910339355, 1232.5357666016)
			levelquest = 3125
		  elseif MyLevel >= 3150  and MyLevel <= 3174 then
			Ms = "Pharaoh [Lv.3175]"
			CFrameQuest = CFrame.new(9554.38672, 14.4762154, 1545.59363, 0.31220305, 0, 0.950015426, 0, 1, 0, -0.950015426, 0, 0.31220305)
			NameMon = "Pharaoh"
			CFrameMon = CFrame.new(9116.03125, 47.920093536377, 1914.4226074219)
			levelquest = 3150
		  elseif MyLevel >= 3175 and MyLevel <= 3199 then
			Ms = "Flame User [Lv.3200]"
			CFrameQuest = CFrame.new(9857.44727, 14.7451639, 1684.2052, -0.0956259966, 0, 0.995417356, 0, 1, 0, -0.995417356, 0, -0.0956259966)
			NameMon = "Flame User"
			CFrameMon = CFrame.new(9780.2236328125, 316.51937866211, 1732.7475585938)
			levelquest = 3175
		  elseif MyLevel >= 3200 and MyLevel <= 3224 then
			Ms = "Chess Soldier [Lv. 3200]"
			CFrameQuest = CFrame.new(6875, 28.9374027, 7951.53223, -0.992770553, 0, -0.12002904, 0, 1, 0, 0.12002904, 0, -0.992770553)
			NameMon = "Chess Soldier"
			CFrameMon = CFrame.new(6842.9458, 113.897461, 8166.92139, -0.978180647, 0, -0.207756639, 0, 1, 0, 0.207756639, 0, -0.978180647)
			levelquest = 3200
		  elseif MyLevel >= 3225 and MyLevel <= 3249 then
			Ms = "Sunken Vessel [Lv.3225]"
			CFrameQuest = CFrame.new(6430.80225, 28.7034626, 7979.43799, -0.896995902, 0, -0.442038745, 0, 1, 0, 0.442038745, 0, -0.896995902)
			NameMon = "Sunken Vessel"
			CFrameMon = CFrame.new(6260.2124, 23.7355881, 8518.10645, -0.135348797, 0, -0.990798056, 0, 1, 0, 0.990798056, 0, -0.135348797)
			levelquest = 3225
		  elseif MyLevel >= 3250 then
			Ms = "Biscuit Man [Lv.3250]"
			CFrameQuest = CFrame.new(5789.9624, 202.36792, 9032.56641, 0.256339848, -0, -0.966586709, 0, 1, -0, 0.966586709, 0, 0.256339848)
			NameMon = "Biscuit Man"
			CFrameMon = CFrame.new(6250.66699, 335.045502, 9107.34668, 0.196545959, -0, -0.980494618, 0, 1, -0, 0.980494618, 0, 0.196545959)
			levelquest = 3250
		  end
	   end
	 end
	 CheckQuest()
	
	 
	 local LocalPlayer = game:GetService("Players").LocalPlayer
	 local VirtualUser = game:GetService('VirtualUser')
	 function autofarm()
	   if game:GetService("Players").LocalPlayer.PlayerGui.Quest.QuestBoard.Visible == false then
		  pcall(function()
			CheckQuest()
			if not game:GetService("Workspace").AntiTPNPC:FindFirstChild("QuestLvl"..levelquest) then
			  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("ReplicatedStorage").MAP["QuestLvl"..levelquest].HumanoidRootPart.CFrame
			else 
			  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").AntiTPNPC["QuestLvl"..levelquest].HumanoidRootPart.CFrame
			end
			
	 
			game:GetService'VirtualUser':Button1Down(Vector2.new(9999,9999))
			game:GetService'VirtualUser':Button1Up(Vector2.new(9999,9999))
			wait()
			for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
			  if v.Name == "Dialogue" then
				v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
				v.Accept.Position = UDim2.new(-2, 0, -5, 0)
				v.Accept.ImageTransparency = 1
			  end
			end
		  end)
	   elseif game:GetService("Players").LocalPlayer.PlayerGui.Quest.QuestBoard.Visible == true then
		  CheckQuest()
		  if game:GetService("Workspace").Monster:GetDescendants(Ms) then
			pcall(function()
			  equip()
			  for i, v in pairs(game:GetService("Workspace").Monster:GetDescendants()) do
				CheckQuest()
				if v.Name == Ms then
				   repeat wait()
					 if v.Humanoid.Health > 0 then
					   VirtualUser:CaptureController()
					   VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
						 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,DistanceMob)
				 end
				   until v.Humanoid.Health <= 0 or _G.AutoFarm == false or not v.Parent 
				end
			  end
			end
			)
		  else
		  end
	   end
	 end
	 spawn(function()
	   game:GetService('RunService').Stepped:connect(function()
		  if Bisento or Anubis or AdventureKnife or _G.Kaido then
			pcall(function ()
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			end)
		  end
	   end)
	 end)
	 spawn(function()
	   while wait() do
		  if _G.AutoFarm == true then
			 autofarm()
		  end
	   end
	 end)
	 spawn(function()
	   while wait(.1) do
		  if _G.AutoFarm or Bisento or Anubis or AdventureKnife or _G.Kaido or _G.Jackolanternhop then
			 pcall(function()
			 autoskillheehee()
			 wait(.1)
			 equip()
			end)
		  end
	   end
	 end)
	 
	 function attack()
	   game:GetService('VirtualUser'):CaptureController()
	   game:GetService('VirtualUser'):Button1Down(Vector2.new(9999, 9999))
	 end
	
	 DistanceMob = 3
	 page1:Slider("Distance Mob",false,false,0,100,7,1,false,function(dis)
	   DistanceMob = dis
	 end)
	 
	 function attack()
	   game:GetService('VirtualUser'):CaptureController()
	   game:GetService('VirtualUser'):Button1Down(Vector2.new(9999, 9999))
	 end
	 TOOLS = {}
	 for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
	   if v:IsA("Tool") then
		  table.insert(TOOLS,v.Name)
	   end
	 end
	 
	 local rdropdwon = page1:Drop("SelectWeapon",false,TOOLS,function(t)
	   _G.SelectWeapon = t
	 end)
	 ---------------------------------------------------------------------------------------------------------
	 
	 page1:Button("Refresh Weapon",function()
	   rdropdwon:Clear()
	   TOOLS = {}
	   for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		  if v:IsA("Tool") then
			rdropdwon:Add(v.Name)
		  end
	   end
	 end)
	 function equip()
	   pcall(function()
		  for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.Name == _G.SelectWeapon  then
			  game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
			end
		  end
	   end)
	 end
	 page2:Label("Auto Skill",0)
	
	 page2:Toggle("Z",_G.z,function(t)
	   _G.z = t
	 end)
	 page2:Toggle("X",_G.x,function(t)
	   _G.x = t
	 end)
	 page2:Toggle("C",_G.c,function(t)
	   _G.c = t
	 end)
	 page2:Toggle("V",_G.v,function(t)
	   _G.v = t
	 end)
	 function autoskillheehee()
	   if  _G.z == true then
		  game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
		  game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
	   end
	   if  _G.x == true then
		  game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
		  game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
	   end
	   if  _G.c == true then
		  game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
		  game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
	   end
	   if  _G.v == true then
		  game:GetService("VirtualInputManager"):SendKeyEvent(true,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
		  game:GetService("VirtualInputManager"):SendKeyEvent(false,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
	   end
	 end
	 function Click()
	   game:GetService'VirtualUser':CaptureController()
	   game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
	 end
	 function EquipWeapon(ToolSe)
	   if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
		  local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
		  wait(.1)
		  game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
	   end
	 end
	
	 page2:Label("Auto Stats",0)
	
	 page2:Toggle("Defense Stats",_G.Defense,function(vu)
	   _G.Defense = vu
	 end)
	 
	 page2:Toggle("Melee Stats",_G.Melle,function(vu)
	   _G.Melle = vu
	 end)
	 
	 page2:Toggle("Sword Stats",_G.Sword,function(vu)
	   _G.Sword = vu
	 end)
	 
	 page2:Toggle("Power Fruit Stats",_G.PowerFruit,function(vu)
	   _G.PowerFruit = vu
	 end)
	 
	 PointStats = 1
	 page2:Slider("Set Point",false,false,0,100,1,1,false,function()
	   PointStats = 1
	 end)
	 
	 spawn(function()
	   while game:GetService("RunService").RenderStepped:wait() do
		  if _G.Defense then
			pcall(function()
			  local args = {
				[1] = "Defense",
				[2] = PointStats
			  }
			  game:GetService("Players").LocalPlayer.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer(unpack(args))
			end)
		  end
		  if _G.Melle then
			pcall(function()
			 local args = {
				 [1] = "Melee",
				 [2] = PointStats
			 }
			 
			 game:GetService("Players").LocalPlayer.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer(unpack(args))
			 
			end)
		  end
		  if _G.Sword then
			pcall(function()
			  local args = {
				[1] = "Sword",
				[2] = PointStats
			  }
			  game:GetService("Players").LocalPlayer.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer(unpack(args))
			end)
		  end
		  if _G.PowerFruit then
			pcall(function()
			  local args = {
				[1] = "Devil Fruit",
				[2] = PointStats
			  }
			  game:GetService("Players").LocalPlayer.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer(unpack(args))
			end)
		  end
	   end
	 end)
	 page3:Label("Teleports To Iiem",0)
	 
	 if game.PlaceId == 4520749081 then
	   page3:Button("BusoShop",function()
		  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5854.84424, 12.3194122, 3610.99585, 0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, 0.374604106)
	   end)
	   page3:Button("KenShop",function()
		  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(81.0302734, 387.351685, 4037.99609, -0.930661798, 0, 0.365880936, 0, 1, 0, -0.365880936, 0, -0.930661798)
	   end)
	   page3:Button("DarkLegShop",function()
		  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6452.85352, 168.681778, -2371.36523, 0.552294254, -0, -0.833649278, 0, 1, -0, 0.833649278, 0, 0.552294254)
	   end)
	   page3:Button("CyborgShop",function()
		  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3937.80396, 123.202278, 1486.78528, -0.479026794, 0, -0.877800286, 0, 1, 0, 0.877800286, 0, -0.479026794)
	   end)
	   page3:Button("SwordShop",function()
		  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6727.07275, 310.193512, 1295.02942, 0.86898458, 0, 0.494839221, 0, 1, 0, -0.494839221, 0, 0.86898458)
	   end)
	   page3:Button("WaterStyleShop",function()
		  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2348.47363, 40.5055351, 9684.56445, -0.125672936, 0, -0.992071748, 0, 1, 0, 0.992071748, 0, -0.125672936)
	   end)
	   page3:Button("Mini Mcae",function()
		  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6731.1850585938, 310.11947631836, 1291.1402587891)
	   end)
	 end
	 if game.PlaceId == 6381829480 then
	   page3:Button("ElectroShop",function()
		  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2458.68604, 173.271606, -1107.83252, -0.935120225, 0, -0.354330838, 0, 1, 0, 0.354330838, 0, -0.935120225)
	   end)
	   page3:Button("DragonClawShop",function()
		  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2718.39063, 430.889709, 728.691528, 0.99658066, -0, -0.0826257691, 0, 1, -0, 0.0826257691, 0, 0.99658066)
	   end)
	   page3:Button("WaterStyleShop",function()
		  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2405.96143, 57.54142, 254.155121, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	   end)
	   page3:Button("DarkLegShop",function()
		  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2379.35303, 57.5062447, 128.700226, -1, 0, 0, 0, 1, 0, 0, 0, -1)
	   end)
	   page3:Button("CyborgShop",function()
		  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2320.12891, 56.8765411, 236.112518, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07)
	   end)
	   page3:Button("ResetStatsShop",function()
		  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2433.93115, 57.4331322, 137.138245, -1, 0, 0, 0, 1, 0, 0, 0, -1)
	   end)
	 end
	  if game.PlaceId == 4520749081 then
	
	   page4:Button("Teleport To New Word",function()
	   local ts = game:GetService("TeleportService")
	   local p = game:GetService("Players").LocalPlayer
	   ts:Teleport(6381829480, p)
	 end)
	
	 page4:Line()
	
	 page4:Button("Stone Rain Sea",function()
	   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6215.9287109375, 424.83047485352, -2068.7109375)
	 end)
	 page4:Button("Town",function()
	   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2034.8345947266, 48.167205810547, -1700.8475341797)
	 end)
	 page4:Button("Shark Island","",function()
	   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3186.3107910156, 10.1405210495, 1423.6528320313)
	 end)
	 page4:Button("Snow Island",function()
	   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1106.1993408203, 44.459392547607, 1718.8492431641)
	 end)
	 page4:Button("Skyland",function()
	   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(238.40699768066, 402.76065063477, 4078.0029296875)
	 end)
	 page4:Button("Pirate Island",function()
	   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3955.0932617188, 78.229362487793, -610.56951904297)
	 end)
	 page4:Button("Zombie Island",function()
	   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(497.46853637695, 226.77265930176, 6345.2255859375)
	 end)
	 page4:Button("Bubbleland",function()
	   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5637.09375, 11.105633735657, 3491.439453125)
	 end)
	 page4:Button("War Island",function()
	   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6480.3989257813, 49.628967285156, 1107.9337158203)
	 end)
	 page4:Button("Stone Arena",function()
	   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9529.345703125, 37.819095611572, -3857.7934570313)
	 end)
	 page4:Button("Desert Island",function()
	   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1522.4660644531, 12.909970283508, 2000.4206542969)
	 end)
	 page4:Button("Fishland",function()
	   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2868.650390625, 40.266338348389, 9136.1875)
	 end)
	 page4:Button("Soldier Town",function()
	   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2033.8972167969, 39.360450744629, 206.95614624023)
	 end)
	 page4:Button("Lobby Island",function()
	   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2914.1423339844, 13.044984817505, 4247.37890625)
	 end)
	 page4:Button("Chef Ship",function()
	   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-100.2366027832, 49.805450439453, 86.103416442871)
	 end)
	end
	if game.PlaceId == 6381829480 then
	page4:Button("Dock",function()
	   game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3707.8854980469, 56.696941375732, 219.93495178223)
	 end)
	 page4:Button("Viridans",function()
	   game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2243.5974121094, 58.433891296387, 2271.3725585938)
	 end)
	 page4:Button("Skull Island",function()
	   game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(122.43953704834, 261.84866333008, 7684.0473632813)
	 end)
	 page4:Button("Dead Tundra",function()
	   game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9244.3212890625, 106.59592437744, 1467.6929931641)
	 end)
	 page4:Button("Torrefacio",function()
	   game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1730.4539794922, 56.374805450439, 1269.7200927734)
	 end)
	 page4:Button("Skull Island",function()
	   game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1211.4458007813, 229.15634155273, 6133.8676757813)
	 end)
	 page4:Button("Hibernus Land",function()
	   game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2464.9543457031, 134.92204284668, -951.77880859375)
	 end)
	 page4:Button("Skull Island",function()
	   game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1211.4450683594, 50.551124572754, 7684.0463867188)
	 end)
	 page4:Button("Carcer",function()
	   game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3126.4921875, 213.45323181152, 1269.3514404297)
	 end)
	 page4:Button("Skull isLand",function()
	   game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3453.7497558594, 51.437110900879, 10329.479492188)
	 end)
	 page4:Button("Skull isLand",function()
	   game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(109.29490661621, 232.21307373047, 6164.7646484375)
	 end)
	 page4:Button("Loaf Island",function()
	   game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5510.9887695313, 266.36245727539, 8698.9052734375)
	 end)		
	end
	 page5:Label("Teleports To Iiem",0)
	
	 
	  page5:Toggle("Kill Player",false,function(bool)
	   KillPlayer = bool
	 end)
	 spawn(function()
	   while wait() do
		  if KillPlayer then
			pcall(function()
			  equip5()
			  if KillPlayer == false then
				game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
			  end
			  while KillPlayer do wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.CFrame * CFrame.new(0,0,7)
				autoskillheehee()
				wait(2)
				attack5()
				game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Size = Vector3.new(5,5,5)
				game:GetService'VirtualUser':CaptureController()
				game:GetService'VirtualUser':B1Down(Vector2.new(1280, 672))
			  end
			end)
		  end
	   end
	 end)
	
	  page5:Toggle("Auto Farm Bounty OP ",_G.Bounty,function(value)
	   _G.Bounty = value
	end)
	_G.Hoppppee = false
	spawn(function()
	   while wait() do
		  if _G.Bounty then
			 wait(60)
			 _G.Hoppppee = true
		  end
	   end
	end)
	
	spawn(function()
	   while wait() do
		  if _G.Hoppppee == true then
			 wait(1)
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
					  -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
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
	   end
	end)
	
	
	   spawn(function()
		  while wait() do
			 pcall(function()
			 if _G.Bounty then
				eiei = game.Players.LocalPlayer
				for i, v in pairs(game.Players:GetChildren()) do
				   if v.Name ~= eiei.Name then
						 repeat wait()
							NameRandom = v.Name
							equip5()
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,5)
							autoskillheehee()
							wait()
							v.Character.HumanoidRootPart.Size = Vector3.new(5,5,5)
							game:GetService'VirtualUser':CaptureController()
							game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
						 until setting["Bounty"] == false or _G.Change1 == true or not v.Parent or v.Character.Humanoid.Health == 0 or not v.Character
						 v.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
						 _G.Change1 = false
				   end
				end
			 end
		  end)
	   end
	end)
	spawn(function()
	   game:GetService('RunService').Stepped:connect(function()
		  if _G.Bounty == true then
			 game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
		  end
	   end)
	end)
	
	spawn(function ()
	   while wait(6) do
		  pcall(function()
			 if _G.Bounty then
				for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
				   if v.Name == NameRandom and v.Humanoid.Health == v.Humanoid.MaxHealth then
					  _G.Change1 = true
				   end
				end
			 end
		  end)	
	   end
	end)
	 
	 
	 function attack5()
	   game:GetService('VirtualUser'):CaptureController()
	   game:GetService('VirtualUser'):Button1Down(Vector2.new(9999, 9999))
	 end
	 local TOOLS = {}
	 for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
	   if v:IsA("Tool") then
		  table.insert(TOOLS,v.Name)
	   end
	 end
	 
	 local rdropdwon = page5:Drop("SelectWeapon",false,TOOLS,function(t)
	   _G.SelectWeapon5 = t
	 end)
	 
	 page5:Button("Refresh Weapon",function()
	   rdropdwond:Clear()
	   TOOLS = {}
	   for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		  if v:IsA("Tool") then
			rdropdwond:Add(v.Name)
		  end
	   end
	 end)
	 
	 function equip5()
	   pcall(function()
		  for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.Name == _G.SelectWeapon5 then
			  game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
			end
		  end
	   end)
	 end
	 
	 game:GetService("RunService").Heartbeat:Connect(
	 function()
	   if KillPlayer then
		  game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
	   end
	 end
	 )
	 
	 function isnil(thing)
	   return (thing == nil)
	 end
	 local function round(n)
	   return math.floor(tonumber(n) + 0.5)
	 end
	 Number = math.random(1, 1000000)
	 function UpdatePlayerChaMonster()
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
				   name.Font = "GothamBold"
				   name.FontSize = "Size14"
				   name.TextWrapped = true
				   name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
				   name.Size = UDim2.new(1,0,1,0)
				   name.TextYAlignment = 'Top'
				   name.BackgroundTransparency = 1
				   name.TextStrokeTransparency = 0.5
				   if v.Team == game.Players.LocalPlayer.Team then
					 name.TextColor3 = Color3.new(255,0,0)
				   else
					 name.TextColor3 = Color3.new(0,0,255)
				   end
				else
				   v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
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
	 function UpdateDevilChaMonster() 
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
				   name.Font = "GothamBold"
				   name.FontSize = "Size14"
				   name.TextWrapped = true
				   name.Size = UDim2.new(1,0,1,0)
				   name.TextYAlignment = 'Top'
				   name.BackgroundTransparency = 1
				   name.TextStrokeTransparency = 0.5
				   name.TextColor3 = Color3.fromRGB(10, 224, 153)
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
	 
	 page5:Toggle("ESP Player",false,function(a)
	   ESPPlayer = a
	   while ESPPlayer do wait()
		  UpdatePlayerChaMonster()
	   end
	 end)
	 
	 PlayerName = {}
	 for i,v in pairs(game.Players:GetChildren()) do  
	   table.insert(PlayerName ,v.Name)
	 end
	 
	 
	 
	 SelectedKillPlayer = ""
	 page5:Drop("Selected Player",false,PlayerName,function(plys) --true/false, replaces the current title "D" with the option that t
	   SelectedKillPlayer = plys
	   SelectedPly:Refresh("Selected Player : "..SelectedKillPlayer)
	 end)
	 
	 page5:Toggle("Spectate Player",false,function(bool)
	   Sp = bool
	   local plr1 = game.Players.LocalPlayer.Character.Humanoid
	   local plr2 = game.Players:FindFirstChild(SelectedKillPlayer)
	   repeat wait(.1)
		  game.Workspace.Camera.CameraSubject = plr2.Character.Humanoid
	   until Sp == false 
	   game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
	 end)
	 
	 page5:Button("Refrsh Player",function()
	   PlayerName = {}
	   rdropdwonddd:Clear()
	   for i,v in pairs(game.Players:GetChildren()) do  
		  rdropdwonddd:Add(v.Name)
	   end
	 end)
	 game:GetService("RunService").Heartbeat:Connect(
	 function()
	   if KillPlayer then
		  game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
	   end
	 end
	 )
	 
	 page5:Button("Teleport Player",function()
	   local plr1 = game.Players.LocalPlayer.Character
	   local plr2 = game.Players:FindFirstChild(SelectedKillPlayer)
	   plr1.HumanoidRootPart.CFrame = plr2.Character.HumanoidRootPart.CFrame
	 end)
	 page6:Label("Auto Farm item",0)
	
	page7:Label("Auto Dungeon",0)
	
	function CheckBisento()
	   if Bisento then
		  Ms1 = "Quake Woman [Lv. 1925]"
		  CFrameMon1 = CFrame.new(6446.09375, 257.23422241211, 936.24401855469)
	   end
	end
	CheckBisento()
	if game.PlaceId == 4520749081 then
	page6:Toggle("Auto Bisento",false,function(value)
	   Bisento = value
	   CheckBisento()
	   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon1
	   game:GetService("VirtualInputManager"):SendKeyEvent(false,119,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
	   wait()
	   game:GetService("VirtualInputManager"):SendKeyEvent(false,119,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
	   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 32
	   wait()
	   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 32
	end)
	end
	function autobisento()
	   if Bisento then
		  pcall(function()
			 CheckBisento()
			 if game:GetService("Workspace").Monster.Mon:FindFirstChild(Ms1) or game:GetService("Workspace").Monster.Boss:FindFirstChild(Ms1) then
				pcall(function()
				   for i, v in pairs(game:GetService("Workspace").Monster:GetDescendants()) do
					  CheckBisento()
					  if v.Name == Ms1 then
						 repeat wait()
							if v.Humanoid.Health > 0 then
							   game:GetService("VirtualInputManager"):SendKeyEvent(true,119,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							   VirtualUser:CaptureController()
							   VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
							   if Typeing == 2 then
								  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,DistanceMob,0)
							   elseif Typeing == 3 then
								  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,DistanceMob)
							   elseif Typeing == 1 then
								  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,DistanceMob)
							   end
							   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 1
							else
							   game:GetService("VirtualInputManager"):SendKeyEvent(false,119,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							   CheckQuest()
							   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon1
							end
						 until v.Humanoid.Health <= 0 or Bisento == false
						 game:GetService("VirtualInputManager"):SendKeyEvent(false,119,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
					  end
				   end
				end)
			 else
				game:GetService("VirtualInputManager"):SendKeyEvent(false,119,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
				CheckQuest()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
			 end
		  end)
	   end
	end
	
	spawn(function()
	   while wait() do
		  if Bisento then
			 autobisento()
		  end
	   end
	end)
	if newworld then
	function CheckAnubis()
	   if Anubis then
		  Ms2 = "Anubis [Lv.3150]"
		  CFrameMon2 = CFrame.new(9534.728515625, 132.2279510498, 1017.6542358398)
	   end
	end
	CheckAnubis()
	
	page6:Toggle("Auto Anubis Axe",false,function(value)
	   Anubis = value
	   game:GetService("VirtualInputManager"):SendKeyEvent(false,119,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
	   wait()
	   game:GetService("VirtualInputManager"):SendKeyEvent(false,119,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
	   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 32
	   wait()
	   if Anubis == false then
		  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 32
	   end
	end)
	
	function CheckKnife()
	   if AdventureKnife then
		  Ms3 = "Flame User [Lv.3200]"
		  CFrameMon3 = CFrame.new(9959.751953125, 211.72598266602, 1910.8186035156)
	   end
	end
	
	page6:Toggle("Auto Adventure Knife",false,function(value)
	   AdventureKnife = value
	   game:GetService("VirtualInputManager"):SendKeyEvent(false,119,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
	   wait()
	   game:GetService("VirtualInputManager"):SendKeyEvent(false,119,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
	   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 32
	   wait()
	   if AdventureKnife == false then
		  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 32
	   end
	end)
	
	function autoanubisaxe()
	   if Anubis then
		  pcall(function()
			 CheckAnubis()
			 if game:GetService("Workspace").Monster.Mon:FindFirstChild(Ms2) or game:GetService("Workspace").Monster.Boss:FindFirstChild(Ms2) then
				pcall(function()
				   for i, v in pairs(game:GetService("Workspace").Monster:GetDescendants()) do
					  CheckAnubis()
					  if v.Name == Ms2 then
						 repeat wait()
							if v.Humanoid.Health > 0 then
							   game:GetService("VirtualInputManager"):SendKeyEvent(true,119,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							   VirtualUser:CaptureController()
							   VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
							   if Typeing == 2 then
								  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,DistanceMob,0)
							   elseif Typeing == 3 then
								  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,DistanceMob)
							   elseif Typeing == 1 then
								  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,DistanceMob)
							   end
							   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 1
							else
							   game:GetService("VirtualInputManager"):SendKeyEvent(false,119,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							   CheckQuest()
							   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon2
							end
						 until v.Humanoid.Health <= 0 or Anubis == false
						 game:GetService("VirtualInputManager"):SendKeyEvent(false,119,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
					  end
				   end
				end)
			 else
				game:GetService("VirtualInputManager"):SendKeyEvent(false,119,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
				CheckQuest()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
			 end
		  end)
	   end
	end
	
	spawn(function()
	   while wait() do
		  if Anubis then
			 autoanubisaxe()
		  end
	   end
	end)
	
	
	function autoknife()
	   if AdventureKnife then
		  pcall(function()
			 CheckKnife()
			 if game:GetService("Workspace").Monster.Mon:FindFirstChild(Ms3) or game:GetService("Workspace").Monster.Boss:FindFirstChild(Ms3) then
				pcall(function()
				   for i, v in pairs(game:GetService("Workspace").Monster:GetDescendants()) do
					  CheckKnife()
					  if v.Name == Ms3 then
						 repeat wait()
							if v.Humanoid.Health > 0 then
							   game:GetService("VirtualInputManager"):SendKeyEvent(true,119,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							   VirtualUser:CaptureController()
							   VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
							   if Typeing == 2 then
								  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,DistanceMob,0)
							   elseif Typeing == 3 then
								  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,DistanceMob)
							   elseif Typeing == 1 then
								  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,DistanceMob)
							   end
							   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 1
							else
							   game:GetService("VirtualInputManager"):SendKeyEvent(false,119,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							   CheckQuest()
							   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon3
							end
						 until v.Humanoid.Health <= 0 or AdventureKnife == false
						 game:GetService("VirtualInputManager"):SendKeyEvent(false,119,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
					  end
				   end
				end)
			 else
				game:GetService("VirtualInputManager"):SendKeyEvent(false,119,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
				CheckQuest()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
			 end
		  end)
	   end
	end
	
	spawn(function()
	   while wait() do
		  if AdventureKnife then
			 autoknife()
		  end
	   end
	end)
	end
	
	
	 if newworld then
	   page6:Toggle("Auto-Enma+Hop",_G.Enmahop,function(t)
		  _G.Enmahop = t
	   end)
	 
	   spawn(function()
		  while wait() do 
			if _G.Enmahop  then 
			  pcall(function()
				for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
				   if v.Name == "King Samurai [Lv. 3500]" then
					 if not v:FindFirstChild("Humanoid") or v.Humanoid.Health == 0 then
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
								  -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
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
				   end
				end
			  end)
			end
		  end
	   end)
	 
	   spawn(function()
		  while wait() do 
			if _G.Enmahop  then 
			  pcall(function()
				if game:GetService("Workspace").Monster.Boss:FindFirstChild("King Samurai [Lv. 3500]") then
				   for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
					 if v.Name == "King Samurai [Lv. 3500]" then
					   if v.Humanoid.Health ~= 0 or v:FindFirstChild("Humanoid") then
						 repeat wait()
							pcall(function()
							  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,dis,0) * CFrame.Angles(math.rad(-90), 0, 0)
							  EquipWeapon()
							  autoskillheehee()
							  wait(.1)
							  attack()
							end)
						 until _G.Enmahop  == false or v.Humanoid.Health <= 0 or not v:FindFirstChild("Humanoid")
					   else
						 game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1655.3447265625, 394.88348388672, 169.515823364262)
						 wait(1)
						 if not game:GetService("Workspace").Monster.Boss:FindFirstChild("King Samurai [Lv. 3500]") or not v:FindFirstChild("Humanoid") then
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
									   -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
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
					   end
					 end
				   end
				else
				   game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1655.3447265625, 394.88348388672, 169.51582336426)
				   wait(1)
				   if not game:GetService("Workspace").Monster.Boss:FindFirstChild("Expert Swordman [Lv. 3000]") then
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
								-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
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
				end
			  end)
			end
		  end
	   end)
	   game:GetService("RunService").RenderStepped:Connect(function()
		  if _G.Enmahop then
			game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
		  end
	   end)

	   if newworld then
		page6:Toggle("Jackolanternhop",_G.Jackolanternhop,function(t)
			_G.Jackolanternhop = t
		end)
	  
		spawn(function()
		   while wait() do 
			 if _G.Jackolanternhop  then 
			   pcall(function()
				 for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
					if v.Name == "Jack o lantern [Lv. 10000]" then
					  if not v:FindFirstChild("Humanoid") or v.Humanoid.Health == 0 then
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
								   -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
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
					end
				 end
			   end)
			 end
		   end
		end)
	  
		spawn(function()
		   while wait() do 
			 if _G.Jackolanternhop then 
			   pcall(function()
				 if game:GetService("Workspace").Monster.Boss:FindFirstChild("Jack o lantern [Lv. 10000]") then
					for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
					  if v.Name == "Jack o lantern [Lv. 10000]" then
						if v.Humanoid.Health ~= 0 or v:FindFirstChild("Humanoid") then
						  repeat wait()
							 pcall(function()
							   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,11,0) * CFrame.Angles(math.rad(-90), 0, 0)
							   EquipWeapon()
							   autoskillheehee()
							   wait(.1)
							   attack()
							 end)
						  until _G.Jackolanternhop  == false or v.Humanoid.Health <= 0 or not v:FindFirstChild("Humanoid")
						else
						  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(11638.2432, 263.204742, 6170.23145, -0.406715393, 0, -0.913554907, 0, 1, 0, 0.913554907, 0, -0.406715393)
						  wait(1)
						  if not game:GetService("Workspace").Monster.Boss:FindFirstChild("Jack o lantern [Lv. 10000]") or not v:FindFirstChild("Humanoid") then
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
										-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
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
						end
					  end
					end
				 else
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(11638.2432, 263.204742, 6170.23145, -0.406715393, 0, -0.913554907, 0, 1, 0, 0.913554907, 0, -0.406715393)
					wait(1)
					if not game:GetService("Workspace").Monster.Boss:FindFirstChild("Jack o lantern [Lv. 10000]") then
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
								 -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
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
				 end
			   end)
			 end
		   end
		end)
		game:GetService("RunService").RenderStepped:Connect(function()
		   if _G.Jackolanternhop then
			 game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
		   end
		end)
	end	
	 
	   page6:Toggle("Auto Kaido",_G.Kaido,function (t)
		  _G.Kaido = t 
	   end)
	   spawn(function()
		  while wait() do
			 if _G.Kaido then
				pcall(function()
				   equip()
				   if game.Players.LocalPlayer.Backpack:FindFirstChild("DragonGem") or game.Players.LocalPlayer.Character:FindFirstChild("DragonGem") then
					  farmkaido = false
					  EquipWeapon("DragonGem")
					  game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1294.99878, 462.692261, 7367.66113, 0.981259882, 8.6877499e-08, 0.192690104, -8.79254216e-08, 1, -3.11276405e-09, -0.192690104, -1.38879104e-08, 0.981259882)
					elseif game:GetService("Workspace").Monster.Boss:FindFirstChild("Dragon [Lv. 5000]") then
					  farmkaido = false
					  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(64.137672424316, 365.87872314453, 7062.8930664063)
					  for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
						 if v.Name == "Dragon [Lv. 5000]" and v.Humanoid.Health > 0 then
							repeat wait()
							   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,8,0) * CFrame.Angles(math.rad(-90), 0, 0)
							   game:GetService('VirtualUser'):CaptureController()
							   game:GetService('VirtualUser'):Button1Down(Vector2.new(9999, 9999))
							until _G.Kaido == false or v.Humanoid.Health <= 0
						 end
					  end
				   elseif game:GetService("Workspace").Monster.Boss:FindFirstChild("Elite Skeleton [Lv. 3100]") then
					  farmkaido = true
				   else
					  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1378.60546875, 139.00987243652, 7331.2514648438)
				   end
				end)    
			 end
		  end
	   end)
	   
	   
	   spawn(function()
		  while wait() do
			 if farmkaido and _G.Kaido then
				pcall(function()
				   equip()
				   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1378.60546875, 139.00987243652, 7331.2514648438)
				   for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
					  if v.Name == "Elite Skeleton [Lv. 3100]" and v.Humanoid.Health > 0 then
						 repeat wait()
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,DistanceMob)
							game:GetService('VirtualUser'):CaptureController()
							game:GetService('VirtualUser'):Button1Down(Vector2.new(9999, 9999))
						 until _G.Kaido == false or v.Humanoid.Health <= 0
					  end
				   end
				end)
			 end
		  end
	   end)
	end
	 
	 
	 if game.PlaceId == 4520749081 then
	 
	   page6:Toggle("Auto-Saber",_G.Saber,function(t)
		  _G.Saber = t
	   end)
	   spawn(function()
		  while wait() do
			if _G.Saber then
			  pcall(function()
				if game:GetService("Workspace").Monster.Boss:FindFirstChild("Expert Swordman [Lv. 3000]") or game:GetService("ReplicatedStorage").MOB:FindFirstChild("Expert Swordman [Lv. 3000]") then
				   for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
					 if v.Name == "Expert Swordman [Lv. 3000]" and v.Humanoid.Health > 0 then
					   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,8,0)
					 end
				   end
				end
			  end)
			end
		  end
	   end)
	 
	   page6:Toggle("Auto-Saber+Hop",_G.Saberhop,function(t)
		  _G.Saberhop = t
	   end)
	 
	   spawn(function()
		  while wait() do 
			if _G.Saberhop then 
			  pcall(function()
				for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
				   if v.Name == "Expert Swordman [Lv. 3000]" then
					 if not v:FindFirstChild("Humanoid") or v.Humanoid.Health == 0 then
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
								  -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
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
				   end
				end
			  end)
			end
		  end
	   end)
	 
	   spawn(function()
		  while wait() do 
			if _G.Saberhop then 
			  pcall(function()
				if game:GetService("Workspace").Monster.Boss:FindFirstChild("Expert Swordman [Lv. 3000]") then
				   for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
					 if v.Name == "Expert Swordman [Lv. 3000]" then
					   if v.Humanoid.Health ~= 0 or v:FindFirstChild("Humanoid") then
						 repeat wait()
							pcall(function()
							  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,8,0) * CFrame.Angles(math.rad(-90), 0, 0)
							  equip()
							  autoskillheehee()
							  wait(.1)
							  attack()
							end)
						 until _G.Saberhop == false or v.Humanoid.Health <= 0 or not v:FindFirstChild("Humanoid")
					   else
						 game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9725.2412109375, 36.836204528809, -3905.3288574219)
						 wait(1)
						 if not game:GetService("Workspace").Monster.Boss:FindFirstChild("Expert Swordman [Lv. 3000]") or not v:FindFirstChild("Humanoid") then
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
									   -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
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
					   end
					 end
				   end
				else
				   game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9725.2412109375, 36.836204528809, -3905.3288574219)
				   wait(1)
				   if not game:GetService("Workspace").Monster.Boss:FindFirstChild("Expert Swordman [Lv. 3000]") then
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
								-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
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
				end
			  end)
			end
		  end
	   end)
	   game:GetService("RunService").RenderStepped:Connect(function()
		  if _G.Saberhop then
			game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
		  end
	   end)
	   
	 
	   page6:Toggle("Auto BigMom",_G.BigMom,function (t)
		  _G.BigMom = t 
	   end)
	   spawn(function()
		  while wait() do
			if _G.BigMom then
			  pcall(function()
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Gem") or game.Players.LocalPlayer.Character:FindFirstChild("Gem") then
				   farmshadow = false
				   EquipWeapon("Gem")
				   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Island["K - Zombie Island"].SummonAltar.Handle.CFrame * CFrame.new(0,-1,1)
				elseif game:GetService("Workspace").Monster.Boss:FindFirstChild("Monster [Lv. 2500]") then
				   farmshadow = false
				   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(388.6223449707, 225.86317443848, 6532.1547851563)
				   for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
					 if v.Name == "Monster [Lv. 2500]" and v.Humanoid.Health > 0 then
					   repeat wait()
						 equip()
						 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,11,0) * CFrame.Angles(math.rad(-90), 0, 0)
						 autoskillheehee()
						 wait(.1)
						 attack()
					   until setting["BigMom"] == false or v.Humanoid.Health <= 0
					 end
				   end
				elseif game:GetService("Workspace").Monster.Boss:FindFirstChild("Shadow Master [Lv. 1600]") then
				   farmshadow = true
				else
				   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(388.6223449707, 225.86317443848, 6532.1547851563)
				end
			  end)
			end
		  end
	   end)
	   game:GetService("RunService").RenderStepped:Connect(function()
		  if _G.BigMom then
			game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
		  end
	   end)
	 
	   spawn(function()
		  while wait() do
			if farmshadow and _G.BigMom then
			  pcall(function ()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(388.6223449707, 225.86317443848, 6532.1547851563)
				for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
				   if v.Name == "Shadow Master [Lv. 1600]" and v.Humanoid.Health > 0 then
					 repeat wait()
					   equip()
					   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,7,0) * CFrame.Angles(math.rad(-90), 0, 0)
					   autoskillheehee()
					   wait(.2)
					   attack()
					 until _G.BigMom == false or v.Humanoid.Health <= 0
				   end
				end
			  end)
			end
		  end
	   end)
	 end
	 if newworld then
	 page6:Toggle("SeaKing",_G.SeaKing,function(t)
	 _G.SeaKing = t
	 end)
	 
	   spawn(function()
		  while wait() do
			if  _G.SeaKing then
			  pcall(function()
				equip()
				for i,v in pairs(game:GetService("Workspace").SeaMonster:GetDescendants()) do
				   if game:GetService("Workspace").SeaMonster:FindFirstChild("SeaKing") then
					 if v.Name == "SeaKing" then
					   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,25,0)
					   autoskillheehee()
					   wait(.1)  
					   attack()
					   if v.Humanoid.Health <= 0 then
						 if game:GetService("Workspace").Island:FindFirstChild("Legacy Island1") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Island:FindFirstChild("Legacy Island1").ChestSpawner.CFrame
						 elseif game:GetService("Workspace").Island:FindFirstChild("Legacy Island2") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Island:FindFirstChild("Legacy Island2").ChestSpawner.CFrame
						 elseif game:GetService("Workspace").Island:FindFirstChild("Legacy Island3") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Island:FindFirstChild("Legacy Island3").ChestSpawner.CFrame
						 elseif game:GetService("Workspace").Island:FindFirstChild("Legacy Island4") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Island:FindFirstChild("Legacy Island4").ChestSpawner.CFrame
						 end
					   end
					 end
				   end
				end
			  end)
			end
		  end
	   end)
	 
	   game:GetService("RunService").RenderStepped:Connect(function()
		  if _G.SeaKing then
			game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
		  end
	   end)
	 
	   page6:Toggle("ServerHop-SeaKing",_G.SeaKinghop,function(t)
		 _G.SeaKinghop = t
	   end)
	 
	   spawn(function()
		  while wait() do
			if _G.SeaKinghop then
			  if not game:GetService("Workspace").SeaMonster:FindFirstChild("SeaKing") then
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
							-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
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
			end
		  end
	   end)
	end
	
	
	if game.PlaceId == 4520749081 then
	 page7:Toggle("Teleport To Dungeon",_G.Dungeon,function(t)
		_G.Dungeon = t
	 end)
	 
	   spawn(function()
		  while wait() do
			 if _G.Dungeon then
				pcall(function()
				   game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6716.5322265625, 102.78722381592, 956.6162109375)
				end)
			 end
		  end
	   end)
	end
	 if newworld then
	 page7:Toggle("Teleport To Dungeon",_G.Dungeon1,function(t)
	   _G.Dungeon1 = t
	end)
	
	   spawn(function()
		  while wait() do
			 if _G.Dungeon1 then
				pcall(function()
				   game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2689.0751953125, 224.96995544434, 0.3046640753746)
				end)
			 end
		  end
	   end)
	end
	if game.PlaceId == 5931540094 then
	 page7:Toggle("Auto Raid",_G.Raid,function(a)
	   _G.Raid = a
	end)
	
	cybrog = false
	skill = false
	spawn(function()
	   pcall(function()
		  while wait() do
			 if _G.Raid then
				pcall(function()
				   if _G.Raid then
	-- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = "Easy"
}

game:GetService("ReplicatedStorage").ChooseMapRemote:FireServer(unpack(args))
	
					  if game:GetService("Players").LocalPlayer.PlayerGui["GoldenArena GUI"].StartButton.Visible == true then
                      game:GetService("ReplicatedStorage").GoldenArenaEvents.StartEvent:FireServer()
					  elseif game:GetService("Players").LocalPlayer.PlayerGui["GoldenArena GUI"].StartButton.Visible == false then
						 for i, v in pairs(game:GetService("Workspace").MOB:GetChildren()) do
							repeat wait()
							   local persen = game.Players.LocalPlayer.Character.Humanoid.MaxHealth*35/100
							   local persenkill = game.Players.LocalPlayer.Character.Humanoid.MaxHealth*90/100
							   if game.Players.LocalPlayer.Character.Humanoid.Health >= persen then
								  spawn(function()
									 pcall(function()
										cybrog = false
										game:GetService('VirtualUser'):CaptureController()
										game:GetService('VirtualUser'):Button1Down(Vector2.new(9999, 9999))
										if v.Humanoid.Health > 0 then
										   if v.Name == "Giant Fighter  [Lv. 3450]" then
											  skill = true
											  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9.3886852264404, 100.456901550293, 20.220664978027) * CFrame.Angles(math.rad(-90), 0, 0)
										   else
											  if (v.HumanoidRootPart.Position-Vector3.new(-9.3886852264404, 19.456901550293, 20.220664978027)).magnitude <= 10 then
												 skill = true
												 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9.3886852264404, 30.456901550293, 20.220664978027) * CFrame.Angles(math.rad(-90), 0, 0)
											  else
												 skill = false
												 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9.3886852264404, 239.456901550293, 20.220664978027)
											  end
										   end
										else
										   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9.3886852264404, 239.456901550293, 20.220664978027)
										end
									 end)
								  end)
							   else
								  repeat wait()
									 pcall(function()
										cybrog = true
										skill = false
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9.3886852264404, 259.456901550293, 20.220664978027)
										wait(.5)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9.3886852264404, 299.456901550293, 20.220664978027)
										wait(.5)
									 end)
								  until _G.Raid == false or game.Players.LocalPlayer.Character.Humanoid.Health >= persenkill
							   end
							until not v.Parent or v.Humanoid.Health <= 0 or _G.Raid == false
						 end
					  end
				   end
				end)
			 end
		  end
	   end)
	end)
	spawn(function()
	   pcall(function()
		  while wait(1) do
			 if _G.Raid then
				if game.PlaceId == 5931540094 then
				   if game:GetService("Players").LocalPlayer.Live.Value == 0 then
					  local ts = game:GetService("TeleportService")
					  local p = game:GetService("Players").LocalPlayer
					  ts:Teleport(4520749081, p)
				   end
				end
			 end
		  end
	   end)
	end)
	
	spawn(function()
	   while wait() do
		  pcall(function()
			 if _G.Raid and game.PlaceId == 5931540094 then
				if cybrog == false or cybrog == nil then
				   pcall(function()
					  EquipWeapon(game:GetService("Players").LocalPlayer.PlayerStats.DFName.Value)
					  wait(.1)
					  EquipWeapon(game:GetService("Players").LocalPlayer.PlayerStats.FightingStyle.Value)
					  wait(.1)
					  EquipWeapon(game:GetService("Players").LocalPlayer.PlayerStats.SwordName.Value)
					  wait(.1)
				   end)
				elseif cybrog == true then
				   pcall(function()
					  if game:GetService("Players").LocalPlayer.PlayerStats.FightingStyle.Value == "Cyborg" then
						 skill = false
						 wait(.1)
						 EquipWeapon(game:GetService("Players").LocalPlayer.PlayerStats.FightingStyle.Value)
						 wait(.1)
						 game:GetService("VirtualInputManager"):SendKeyEvent(true,101,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
						 wait(7)
						 game:GetService("VirtualInputManager"):SendKeyEvent(false,101,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
					  end
				   end)
				end
			 end
		  end)
	   end
	end)
	spawn(function()
	   while wait() do
		  if skill == true and _G.Raid then
			 pcall(function()
				game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
				game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
				wait()
				game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
				game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
				wait()
				game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
				game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
				wait()
				game:GetService("VirtualInputManager"):SendKeyEvent(true,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
				game:GetService("VirtualInputManager"):SendKeyEvent(false,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
			 end)
		  end
	   end
	end)
	
	spawn(function()
	   game:GetService('RunService').Stepped:connect(function()
		  if _G.Raid then
			 game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
		  end
	   end)
	end)
end
	page9:Label("Misc",0)
	
	
	page9:Toggle("Bring All Fruit",false,function(t)
	   TPF = t
	   while wait() do
		  if TPF then
			for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
			  if v:IsA ("Tool") then
				firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle,0)    
			  end
			end
		  end
	   end
	 end)
	 page9:Toggle("Noclip",false, function(t)
	   _G.Noclip = t
	   local RunService = game:GetService("RunService")
	 
	   while RunService.RenderStepped:wait() do
		  if _G.Noclip then
			game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
		  end
	   end
	 end)
	 page9:Toggle("Inf Geppo",false,function(value)
	 
	   if value == true then
		  game.Players.LocalPlayer.Backpack.GeppoNew.cds.Value = 1000000000000000000
	   elseif value == false then
		  game.Players.LocalPlayer.Backpack.GeppoNew.cds.Value = 6
	   end
	 
	 end)
	 page9:Toggle("Ctrl + Click = TP",false,function(vu)
	   CTRL = vu
	 end)
	 local Plr = game:GetService("Players").LocalPlayer
	 local Mouse = Plr:GetMouse()
	 Mouse.Button1Down:connect(
	   function()
		  if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then
			return
		  end
		  if not Mouse.Target then
			return
		  end
		  if CTRL then
			Plr.Character:MoveTo(Mouse.Hit.p)
		  end
	   end
	 )
	 
	 Fly = false  
	 function activatefly()
	   local mouse=game.Players.LocalPlayer:GetMouse''
	   localplayer=game.Players.LocalPlayer
	   game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
	   local torso = game.Players.LocalPlayer.Character.HumanoidRootPart
	   local speedSET=25
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
	 page9:Toggle("Fly",false,function(Value)
	   Fly = Value
	   activatefly()
	 end)
	 
	 page9:Slider("Walkspeed",false,false,0,1000,16,1,false,function(value)
	   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
	 end)
	 page9:Slider("JumpPower",false,false,0,1000,16,1,false,function(value)
	   game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
	 end) 
	page9:Toggle("ESP Devil Fruit",false,function(a)
	   DevilFruitESP = a
	   while DevilFruitESP do wait()
		  UpdateDevilChaMonster() 
	   end
	 end)
	 
	 page9:Toggle("Invisible",false,function(t)
	   _G.Invisible = t
	 end)
	 
	 spawn(function()
	   while wait(1) do
		  if _G.Invisible then
			pcall(function()
			  game.Players.LocalPlayer.Character.LowerTorso:Destroy()
			end)
		  end
	   end
	 end)
	 
	 page9:Toggle("Water No Damage",false,function(l)
	   _G.a = l
	   while _G.a  do
		  wait(2)
		  local a = nil
		  a = hookfunction(getrawmetatable(game).__namecall,newcclosure(function(self,...)
			local args = {...}
			if self.Name == "RemoteEvent" and args[1] == "in" then
			  return nil
			end
			return a(self,...)
		  end))
	   end
	 end)
	 
	 
	 page9:Line()
	 
	page9:Button("spawn Coffin Boat",function(value)
	   local args = {
		  [1] = "CoffinBoat",
		  [2] = "ShipA"
	   }
	 
	   game:GetService("ReplicatedStorage").Remotes.Events.Ship:FireServer(unpack(args))
	 end)
	 
	page9:Button("No Geppo Cooldown ",function()
	 
	   local a;
	 
	   a = hookfunc(getrenv().wait, function(x)
		  if tostring(getfenv(2).script) == "GeppoNew" then
			return game:GetService("RunService").RenderStepped:wait()
		  end
		  return a(x)
	   end)
	 
	 end)
	 
	page9:Button("No Dodge Cooldown ",function()
	 
	   local a;
	 
	   a = hookfunc(getrenv().wait, function(x)
		  if tostring(getfenv(2).script) == "Dash" then
			return game:GetService("RunService").RenderStepped:wait()
		  end
		  return a(x)
	   end)
	 
	 end)
	 
	 
	 
	 --------------FPS Boost--------------
	page9:Button("FPS Boost",function()
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
	 end)
	 -------------------- dddddddddddd -----------------
	page9:Button("Teleport To Lower Sever",function ()
		  local maxplayers, gamelink, goodserver, data_table = math.huge, "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
		  if not _G.FailedServerID then _G.FailedServerID = {} end
	
		  local function serversearch()
			  data_table = game:GetService"HttpService":JSONDecode(game:HttpGetAsync(gamelink))
			  for _, v in pairs(data_table.data) do
				  pcall(function()
					  if type(v) == "table" and v.id and v.playing and tonumber(maxplayers) > tonumber(v.playing) and not table.find(_G.FailedServerID, v.id) then
						  maxplayers = v.playing
						  goodserver = v.id
					  end
				  end)
			  end
		  end
	
		  function getservers()
			  pcall(serversearch)
			  for i, v in pairs(data_table) do
				  if i == "nextPageCursor" then
					  if gamelink:find"&cursor=" then
						  local a = gamelink:find"&cursor="
						  local b = gamelink:sub(a)
						  gamelink = gamelink:gsub(b, "")
					  end
					  gamelink = gamelink .. "&cursor=" .. v
					  pcall(getservers)
				  end
			  end
		  end
	
		  pcall(getservers)
		  wait()
		  if goodserver == game.JobId or maxplayers == #game:GetService"Players":GetChildren() - 1 then
		  end
		  table.insert(_G.FailedServerID, goodserver)
		  game:GetService"TeleportService":TeleportToPlaceInstance(game.PlaceId, goodserver)
	 end)
	 
	 --------------Redeem ALL Code--------------
	 page9:Button("Redeem ALL Code",function ()
	   -- Script generated by TurtleSpy, made by Intrer#0421
	 
	   game:GetService("ReplicatedStorage").Remotes.Functions.redeemcode:InvokeServer("1MFAV")
	   game:GetService("ReplicatedStorage").Remotes.Functions.redeemcode:InvokeServer("Update2_5")
	   game:GetService("ReplicatedStorage").Remotes.Functions.redeemcode:InvokeServer("DinoxLive")
	   game:GetService("ReplicatedStorage").Remotes.Functions.redeemcode:InvokeServer("Peodiz")
	 end)
	 page11:Label("Setting",0)
	 
	page11:Button("Rejoin",function()
	   local ts = game:GetService("TeleportService")
	   local p = game:GetService("Players").LocalPlayer
	   ts:Teleport(game.PlaceId, p)
	end)
	page11:Button("Server Hop",function()
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
					  -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
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
		end)
	end
