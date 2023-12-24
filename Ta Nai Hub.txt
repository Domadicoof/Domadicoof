if game.PlaceId == 2753915549 then
    World1 = true
elseif game.PlaceId == 4442272183 then
    World2 = true
elseif game.PlaceId == 7449423635 then
    World3 = true
else
    game:GetService("Players").LocalPlayer:Kick("Do not Support, Please wait...")
end

function CheckQuest()
    MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
    if World1 then
        if MyLevel == 1 or MyLevel <= 9 then
            Mon = "Bandit"
            LevelQuest = 1
            NameQuest = "BanditQuest1"
            NameMon = "Bandit"
            CFrameQuest =
                CFrame.new(
                1059.37195,
                15.4495068,
                1550.4231,
                0.939700544,
                -0,
                -0.341998369,
                0,
                1,
                -0,
                0.341998369,
                0,
                0.939700544
            )
            CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
        elseif MyLevel == 10 or MyLevel <= 14 then
            Mon = "Monkey"
            LevelQuest = 1
            NameQuest = "JungleQuest"
            NameMon = "Monkey"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)
        elseif MyLevel == 15 or MyLevel <= 29 then
            Mon = "Gorilla"
            LevelQuest = 2
            NameQuest = "JungleQuest"
            NameMon = "Gorilla"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)
        elseif MyLevel == 30 or MyLevel <= 39 then
            Mon = "Pirate"
            LevelQuest = 1
            NameQuest = "BuggyQuest1"
            NameMon = "Pirate"
            CFrameQuest =
                CFrame.new(
                -1141.07483,
                4.10001802,
                3831.5498,
                0.965929627,
                -0,
                -0.258804798,
                0,
                1,
                -0,
                0.258804798,
                0,
                0.965929627
            )
            CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)
        elseif MyLevel == 40 or MyLevel <= 59 then
            Mon = "Brute"
            LevelQuest = 2
            NameQuest = "BuggyQuest1"
            NameMon = "Brute"
            CFrameQuest =
                CFrame.new(
                -1141.07483,
                4.10001802,
                3831.5498,
                0.965929627,
                -0,
                -0.258804798,
                0,
                1,
                -0,
                0.258804798,
                0,
                0.965929627
            )
            CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)
        elseif MyLevel == 60 or MyLevel <= 74 then
            Mon = "Desert Bandit"
            LevelQuest = 1
            NameQuest = "DesertQuest"
            NameMon = "Desert Bandit"
            CFrameQuest =
                CFrame.new(
                894.488647,
                5.14000702,
                4392.43359,
                0.819155693,
                -0,
                -0.573571265,
                0,
                1,
                -0,
                0.573571265,
                0,
                0.819155693
            )
            CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
        elseif MyLevel == 75 or MyLevel <= 89 then
            Mon = "Desert Officer"
            LevelQuest = 2
            NameQuest = "DesertQuest"
            NameMon = "Desert Officer"
            CFrameQuest =
                CFrame.new(
                894.488647,
                5.14000702,
                4392.43359,
                0.819155693,
                -0,
                -0.573571265,
                0,
                1,
                -0,
                0.573571265,
                0,
                0.819155693
            )
            CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)
        elseif MyLevel == 90 or MyLevel <= 99 then
            Mon = "Snow Bandit"
            LevelQuest = 1
            NameQuest = "SnowQuest"
            NameMon = "Snow Bandit"
            CFrameQuest =
                CFrame.new(
                1389.74451,
                88.1519318,
                -1298.90796,
                -0.342042685,
                0,
                0.939684391,
                0,
                1,
                0,
                -0.939684391,
                0,
                -0.342042685
            )
            CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125)
        elseif MyLevel == 100 or MyLevel <= 119 then
            Mon = "Snowman"
            LevelQuest = 2
            NameQuest = "SnowQuest"
            NameMon = "Snowman"
            CFrameQuest =
                CFrame.new(
                1389.74451,
                88.1519318,
                -1298.90796,
                -0.342042685,
                0,
                0.939684391,
                0,
                1,
                0,
                -0.939684391,
                0,
                -0.342042685
            )
            CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
        elseif MyLevel == 120 or MyLevel <= 149 then
            Mon = "Chief Petty Officer"
            LevelQuest = 1
            NameQuest = "MarineQuest2"
            NameMon = "Chief Petty Officer"
            CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
        elseif MyLevel == 150 or MyLevel <= 174 then
            Mon = "Sky Bandit"
            LevelQuest = 1
            NameQuest = "SkyQuest"
            NameMon = "Sky Bandit"
            CFrameQuest =
                CFrame.new(
                -4839.53027,
                716.368591,
                -2619.44165,
                0.866007268,
                0,
                0.500031412,
                0,
                1,
                0,
                -0.500031412,
                0,
                0.866007268
            )
            CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)
        elseif MyLevel == 175 or MyLevel <= 189 then
            Mon = "Dark Master"
            LevelQuest = 2
            NameQuest = "SkyQuest"
            NameMon = "Dark Master"
            CFrameQuest =
                CFrame.new(
                -4839.53027,
                716.368591,
                -2619.44165,
                0.866007268,
                0,
                0.500031412,
                0,
                1,
                0,
                -0.500031412,
                0,
                0.866007268
            )
            CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
        elseif MyLevel == 190 or MyLevel <= 209 then
            Mon = "Prisoner"
            LevelQuest = 1
            NameQuest = "PrisonerQuest"
            NameMon = "Prisoner"
            CFrameQuest =
                CFrame.new(
                5308.93115,
                1.65517521,
                475.120514,
                -0.0894274712,
                -5.00292918e-09,
                -0.995993316,
                1.60817859e-09,
                1,
                -5.16744869e-09,
                0.995993316,
                -2.06384709e-09,
                -0.0894274712
            )
            CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
        elseif MyLevel == 210 or MyLevel <= 249 then
            Mon = "Dangerous Prisoner"
            LevelQuest = 2
            NameQuest = "PrisonerQuest"
            NameMon = "Dangerous Prisoner"
            CFrameQuest =
                CFrame.new(
                5308.93115,
                1.65517521,
                475.120514,
                -0.0894274712,
                -5.00292918e-09,
                -0.995993316,
                1.60817859e-09,
                1,
                -5.16744869e-09,
                0.995993316,
                -2.06384709e-09,
                -0.0894274712
            )
            CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
        elseif MyLevel == 250 or MyLevel <= 274 then
            Mon = "Toga Warrior"
            LevelQuest = 1
            NameQuest = "ColosseumQuest"
            NameMon = "Toga Warrior"
            CFrameQuest =
                CFrame.new(
                -1580.04663,
                6.35000277,
                -2986.47534,
                -0.515037298,
                0,
                -0.857167721,
                0,
                1,
                0,
                0.857167721,
                0,
                -0.515037298
            )
            CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
        elseif MyLevel == 275 or MyLevel <= 299 then
            Mon = "Gladiator"
            LevelQuest = 2
            NameQuest = "ColosseumQuest"
            NameMon = "Gladiator"
            CFrameQuest =
                CFrame.new(
                -1580.04663,
                6.35000277,
                -2986.47534,
                -0.515037298,
                0,
                -0.857167721,
                0,
                1,
                0,
                0.857167721,
                0,
                -0.515037298
            )
            CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
        elseif MyLevel == 300 or MyLevel <= 324 then
            Mon = "Military Soldier"
            LevelQuest = 1
            NameQuest = "MagmaQuest"
            NameMon = "Military Soldier"
            CFrameQuest =
                CFrame.new(
                -5313.37012,
                10.9500084,
                8515.29395,
                -0.499959469,
                0,
                0.866048813,
                0,
                1,
                0,
                -0.866048813,
                0,
                -0.499959469
            )
            CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
        elseif MyLevel == 325 or MyLevel <= 374 then
            Mon = "Military Spy"
            LevelQuest = 2
            NameQuest = "MagmaQuest"
            NameMon = "Military Spy"
            CFrameQuest =
                CFrame.new(
                -5313.37012,
                10.9500084,
                8515.29395,
                -0.499959469,
                0,
                0.866048813,
                0,
                1,
                0,
                -0.866048813,
                0,
                -0.499959469
            )
            CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
        elseif MyLevel == 375 or MyLevel <= 399 then
            Mon = "Fishman Warrior"
            LevelQuest = 1
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Warrior"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
            if
                _G.AutoFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        10000
             then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance",
                    Vector3.new(61163.8515625, 11.6796875, 1819.7841796875)
                )
            end
        elseif MyLevel == 400 or MyLevel <= 449 then
            Mon = "Fishman Commando"
            LevelQuest = 2
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Commando"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
            if
                _G.AutoFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        10000
             then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance",
                    Vector3.new(61163.8515625, 11.6796875, 1819.7841796875)
                )
            end
        elseif MyLevel == 450 or MyLevel <= 474 then
            Mon = "God's Guard"
            LevelQuest = 1
            NameQuest = "SkyExp1Quest"
            NameMon = "God's Guard"
            CFrameQuest =
                CFrame.new(
                -4721.88867,
                843.874695,
                -1949.96643,
                0.996191859,
                -0,
                -0.0871884301,
                0,
                1,
                -0,
                0.0871884301,
                0,
                0.996191859
            )
            CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
            if
                _G.AutoFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        10000
             then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance",
                    Vector3.new(-4607.82275, 872.54248, -1667.55688)
                )
            end
        elseif MyLevel == 475 or MyLevel <= 524 then
            Mon = "Shanda"
            LevelQuest = 2
            NameQuest = "SkyExp1Quest"
            NameMon = "Shanda"
            CFrameQuest =
                CFrame.new(
                -7859.09814,
                5544.19043,
                -381.476196,
                -0.422592998,
                0,
                0.906319618,
                0,
                1,
                0,
                -0.906319618,
                0,
                -0.422592998
            )
            CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
            if
                _G.AutoFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        10000
             then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance",
                    Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047)
                )
            end
        elseif MyLevel == 525 or MyLevel <= 549 then
            Mon = "Royal Squad"
            LevelQuest = 1
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Squad"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
        elseif MyLevel == 550 or MyLevel <= 624 then
            Mon = "Royal Soldier"
            LevelQuest = 2
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Soldier"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
        elseif MyLevel == 625 or MyLevel <= 649 then
            Mon = "Galley Pirate"
            LevelQuest = 1
            NameQuest = "FountainQuest"
            NameMon = "Galley Pirate"
            CFrameQuest =
                CFrame.new(
                5259.81982,
                37.3500175,
                4050.0293,
                0.087131381,
                0,
                0.996196866,
                0,
                1,
                0,
                -0.996196866,
                0,
                0.087131381
            )
            CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
        elseif MyLevel >= 650 then
            Mon = "Galley Captain"
            LevelQuest = 2
            NameQuest = "FountainQuest"
            NameMon = "Galley Captain"
            CFrameQuest =
                CFrame.new(
                5259.81982,
                37.3500175,
                4050.0293,
                0.087131381,
                0,
                0.996196866,
                0,
                1,
                0,
                -0.996196866,
                0,
                0.087131381
            )
            CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
        end
    elseif World2 then
        if MyLevel == 700 or MyLevel <= 724 then
            Mon = "Raider"
            LevelQuest = 1
            NameQuest = "Area1Quest"
            NameMon = "Raider"
            CFrameQuest =
                CFrame.new(
                -429.543518,
                71.7699966,
                1836.18188,
                -0.22495985,
                0,
                -0.974368095,
                0,
                1,
                0,
                0.974368095,
                0,
                -0.22495985
            )
            CFrameMon = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125)
        elseif MyLevel == 725 or MyLevel <= 774 then
            Mon = "Mercenary"
            LevelQuest = 2
            NameQuest = "Area1Quest"
            NameMon = "Mercenary"
            CFrameQuest =
                CFrame.new(
                -429.543518,
                71.7699966,
                1836.18188,
                -0.22495985,
                0,
                -0.974368095,
                0,
                1,
                0,
                0.974368095,
                0,
                -0.22495985
            )
            CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
        elseif MyLevel == 775 or MyLevel <= 799 then
            Mon = "Swan Pirate"
            LevelQuest = 1
            NameQuest = "Area2Quest"
            NameMon = "Swan Pirate"
            CFrameQuest =
                CFrame.new(
                638.43811,
                71.769989,
                918.282898,
                0.139203906,
                0,
                0.99026376,
                0,
                1,
                0,
                -0.99026376,
                0,
                0.139203906
            )
            CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)
        elseif MyLevel == 800 or MyLevel <= 874 then
            Mon = "Factory Staff"
            NameQuest = "Area2Quest"
            LevelQuest = 2
            NameMon = "Factory Staff"
            CFrameQuest =
                CFrame.new(
                632.698608,
                73.1055908,
                918.666321,
                -0.0319722369,
                8.96074881e-10,
                -0.999488771,
                1.36326533e-10,
                1,
                8.92172336e-10,
                0.999488771,
                -1.07732087e-10,
                -0.0319722369
            )
            CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
        elseif MyLevel == 875 or MyLevel <= 899 then
            Mon = "Marine Lieutenant"
            LevelQuest = 1
            NameQuest = "MarineQuest3"
            NameMon = "Marine Lieutenant"
            CFrameQuest =
                CFrame.new(
                -2440.79639,
                71.7140732,
                -3216.06812,
                0.866007268,
                0,
                0.500031412,
                0,
                1,
                0,
                -0.500031412,
                0,
                0.866007268
            )
            CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125)
        elseif MyLevel == 900 or MyLevel <= 949 then
            Mon = "Marine Captain"
            LevelQuest = 2
            NameQuest = "MarineQuest3"
            NameMon = "Marine Captain"
            CFrameQuest =
                CFrame.new(
                -2440.79639,
                71.7140732,
                -3216.06812,
                0.866007268,
                0,
                0.500031412,
                0,
                1,
                0,
                -0.500031412,
                0,
                0.866007268
            )
            CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
        elseif MyLevel == 950 or MyLevel <= 974 then
            Mon = "Zombie"
            LevelQuest = 1
            NameQuest = "ZombieQuest"
            NameMon = "Zombie"
            CFrameQuest =
                CFrame.new(
                -5497.06152,
                47.5923004,
                -795.237061,
                -0.29242146,
                0,
                -0.95628953,
                0,
                1,
                0,
                0.95628953,
                0,
                -0.29242146
            )
            CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
        elseif MyLevel == 975 or MyLevel <= 999 then
            Mon = "Vampire"
            LevelQuest = 2
            NameQuest = "ZombieQuest"
            NameMon = "Vampire"
            CFrameQuest =
                CFrame.new(
                -5497.06152,
                47.5923004,
                -795.237061,
                -0.29242146,
                0,
                -0.95628953,
                0,
                1,
                0,
                0.95628953,
                0,
                -0.29242146
            )
            CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
        elseif MyLevel == 1000 or MyLevel <= 1049 then
            Mon = "Snow Trooper"
            LevelQuest = 1
            NameQuest = "SnowMountainQuest"
            NameMon = "Snow Trooper"
            CFrameQuest =
                CFrame.new(
                609.858826,
                400.119904,
                -5372.25928,
                -0.374604106,
                0,
                0.92718488,
                0,
                1,
                0,
                -0.92718488,
                0,
                -0.374604106
            )
            CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
        elseif MyLevel == 1050 or MyLevel <= 1099 then
            Mon = "Winter Warrior"
            LevelQuest = 2
            NameQuest = "SnowMountainQuest"
            NameMon = "Winter Warrior"
            CFrameQuest =
                CFrame.new(
                609.858826,
                400.119904,
                -5372.25928,
                -0.374604106,
                0,
                0.92718488,
                0,
                1,
                0,
                -0.92718488,
                0,
                -0.374604106
            )
            CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
        elseif MyLevel == 1100 or MyLevel <= 1124 then
            Mon = "Lab Subordinate"
            LevelQuest = 1
            NameQuest = "IceSideQuest"
            NameMon = "Lab Subordinate"
            CFrameQuest =
                CFrame.new(
                -6064.06885,
                15.2422857,
                -4902.97852,
                0.453972578,
                -0,
                -0.891015649,
                0,
                1,
                -0,
                0.891015649,
                0,
                0.453972578
            )
            CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
        elseif MyLevel == 1125 or MyLevel <= 1174 then
            Mon = "Horned Warrior"
            LevelQuest = 2
            NameQuest = "IceSideQuest"
            NameMon = "Horned Warrior"
            CFrameQuest =
                CFrame.new(
                -6064.06885,
                15.2422857,
                -4902.97852,
                0.453972578,
                -0,
                -0.891015649,
                0,
                1,
                -0,
                0.891015649,
                0,
                0.453972578
            )
            CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
        elseif MyLevel == 1175 or MyLevel <= 1199 then
            Mon = "Magma Ninja"
            LevelQuest = 1
            NameQuest = "FireSideQuest"
            NameMon = "Magma Ninja"
            CFrameQuest =
                CFrame.new(
                -5428.03174,
                15.0622921,
                -5299.43457,
                -0.882952213,
                0,
                0.469463557,
                0,
                1,
                0,
                -0.469463557,
                0,
                -0.882952213
            )
            CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
        elseif MyLevel == 1200 or MyLevel <= 1249 then
            Mon = "Lava Pirate"
            LevelQuest = 2
            NameQuest = "FireSideQuest"
            NameMon = "Lava Pirate"
            CFrameQuest =
                CFrame.new(
                -5428.03174,
                15.0622921,
                -5299.43457,
                -0.882952213,
                0,
                0.469463557,
                0,
                1,
                0,
                -0.469463557,
                0,
                -0.882952213
            )
            CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
        elseif MyLevel == 1250 or MyLevel <= 1274 then
            Mon = "Ship Deckhand"
            LevelQuest = 1
            NameQuest = "ShipQuest1"
            NameMon = "Ship Deckhand"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)
            CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)
            if
                _G.AutoFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        10000
             then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance",
                    Vector3.new(923.21252441406, 126.9760055542, 32852.83203125)
                )
            end
        elseif MyLevel == 1275 or MyLevel <= 1299 then
            Mon = "Ship Engineer"
            LevelQuest = 2
            NameQuest = "ShipQuest1"
            NameMon = "Ship Engineer"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)
            CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)
            if
                _G.AutoFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        10000
             then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance",
                    Vector3.new(923.21252441406, 126.9760055542, 32852.83203125)
                )
            end
        elseif MyLevel == 1300 or MyLevel <= 1324 then
            Mon = "Ship Steward"
            LevelQuest = 1
            NameQuest = "ShipQuest2"
            NameMon = "Ship Steward"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
            CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625)
            if
                _G.AutoFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        10000
             then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance",
                    Vector3.new(923.21252441406, 126.9760055542, 32852.83203125)
                )
            end
        elseif MyLevel == 1325 or MyLevel <= 1349 then
            Mon = "Ship Officer"
            LevelQuest = 2
            NameQuest = "ShipQuest2"
            NameMon = "Ship Officer"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
            CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)
            if
                _G.AutoFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        10000
             then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance",
                    Vector3.new(923.21252441406, 126.9760055542, 32852.83203125)
                )
            end
        elseif MyLevel == 1350 or MyLevel <= 1374 then
            Mon = "Arctic Warrior"
            LevelQuest = 1
            NameQuest = "FrostQuest"
            NameMon = "Arctic Warrior"
            CFrameQuest =
                CFrame.new(
                5667.6582,
                26.7997818,
                -6486.08984,
                -0.933587909,
                0,
                -0.358349502,
                0,
                1,
                0,
                0.358349502,
                0,
                -0.933587909
            )
            CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)
            if
                _G.AutoFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        10000
             then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance",
                    Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422)
                )
            end
        elseif MyLevel == 1375 or MyLevel <= 1424 then
            Mon = "Snow Lurker"
            LevelQuest = 2
            NameQuest = "FrostQuest"
            NameMon = "Snow Lurker"
            CFrameQuest =
                CFrame.new(
                5667.6582,
                26.7997818,
                -6486.08984,
                -0.933587909,
                0,
                -0.358349502,
                0,
                1,
                0,
                0.358349502,
                0,
                -0.933587909
            )
            CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
        elseif MyLevel == 1425 or MyLevel <= 1449 then
            Mon = "Sea Soldier"
            LevelQuest = 1
            NameQuest = "ForgottenQuest"
            NameMon = "Sea Soldier"
            CFrameQuest =
                CFrame.new(
                -3054.44458,
                235.544281,
                -10142.8193,
                0.990270376,
                -0,
                -0.13915664,
                0,
                1,
                -0,
                0.13915664,
                0,
                0.990270376
            )
            CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
        elseif MyLevel >= 1450 then
            Mon = "Water Fighter"
            LevelQuest = 2
            NameQuest = "ForgottenQuest"
            NameMon = "Water Fighter"
            CFrameQuest =
                CFrame.new(
                -3054.44458,
                235.544281,
                -10142.8193,
                0.990270376,
                -0,
                -0.13915664,
                0,
                1,
                -0,
                0.13915664,
                0,
                0.990270376
            )
            CFrameMon = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)
        end
    elseif World3 then
        if MyLevel == 1500 or MyLevel <= 1524 then
            Mon = "Pirate Millionaire"
            LevelQuest = 1
            NameQuest = "PiratePortQuest"
            NameMon = "Pirate Millionaire"
            CFrameQuest =
                CFrame.new(
                -290.074677,
                42.9034653,
                5581.58984,
                0.965929627,
                -0,
                -0.258804798,
                0,
                1,
                -0,
                0.258804798,
                0,
                0.965929627
            )
            CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
        elseif MyLevel == 1525 or MyLevel <= 1574 then
            Mon = "Pistol Billionaire"
            LevelQuest = 2
            NameQuest = "PiratePortQuest"
            NameMon = "Pistol Billionaire"
            CFrameQuest =
                CFrame.new(
                -290.074677,
                42.9034653,
                5581.58984,
                0.965929627,
                -0,
                -0.258804798,
                0,
                1,
                -0,
                0.258804798,
                0,
                0.965929627
            )
            CFrameMon = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875)
        elseif MyLevel == 1575 or MyLevel <= 1599 then
            Mon = "Dragon Crew Warrior"
            LevelQuest = 1
            NameQuest = "AmazonQuest"
            NameMon = "Dragon Crew Warrior"
            CFrameQuest =
                CFrame.new(
                5832.83594,
                51.6806107,
                -1101.51563,
                0.898790359,
                -0,
                -0.438378751,
                0,
                1,
                -0,
                0.438378751,
                0,
                0.898790359
            )
            CFrameMon = CFrame.new(6141.140625, 51.35136413574219, -1340.738525390625)
        elseif MyLevel == 1600 or MyLevel <= 1624 then
            Mon = "Dragon Crew Archer"
            NameQuest = "AmazonQuest"
            LevelQuest = 2
            NameMon = "Dragon Crew Archer"
            CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
            CFrameMon = CFrame.new(6616.41748046875, 441.7670593261719, 446.0469970703125)
        elseif MyLevel == 1625 or MyLevel <= 1649 then
            Mon = "Female Islander"
            NameQuest = "AmazonQuest2"
            LevelQuest = 1
            NameMon = "Female Islander"
            CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon = CFrame.new(4685.25830078125, 735.8078002929688, 815.3425903320312)
        elseif MyLevel == 1650 or MyLevel <= 1699 then
            Mon = "Giant Islander"
            NameQuest = "AmazonQuest2"
            LevelQuest = 2
            NameMon = "Giant Islander"
            CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon = CFrame.new(4729.09423828125, 590.436767578125, -36.97627639770508)
        elseif MyLevel == 1700 or MyLevel <= 1724 then
            Mon = "Marine Commodore"
            LevelQuest = 1
            NameQuest = "MarineTreeIsland"
            NameMon = "Marine Commodore"
            CFrameQuest =
                CFrame.new(
                2180.54126,
                27.8156815,
                -6741.5498,
                -0.965929747,
                0,
                0.258804798,
                0,
                1,
                0,
                -0.258804798,
                0,
                -0.965929747
            )
            CFrameMon = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125)
        elseif MyLevel == 1725 or MyLevel <= 1774 then
            Mon = "Marine Rear Admiral"
            NameMon = "Marine Rear Admiral"
            NameQuest = "MarineTreeIsland"
            LevelQuest = 2
            CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
            CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125)
        elseif MyLevel == 1775 or MyLevel <= 1799 then
            Mon = "Fishman Raider"
            LevelQuest = 1
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Raider"
            CFrameQuest =
                CFrame.new(
                -10581.6563,
                330.872955,
                -8761.18652,
                -0.882952213,
                0,
                0.469463557,
                0,
                1,
                0,
                -0.469463557,
                0,
                -0.882952213
            )
            CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
        elseif MyLevel == 1800 or MyLevel <= 1824 then
            Mon = "Fishman Captain"
            LevelQuest = 2
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Captain"
            CFrameQuest =
                CFrame.new(
                -10581.6563,
                330.872955,
                -8761.18652,
                -0.882952213,
                0,
                0.469463557,
                0,
                1,
                0,
                -0.469463557,
                0,
                -0.882952213
            )
            CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625)
        elseif MyLevel == 1825 or MyLevel <= 1849 then
            Mon = "Forest Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland"
            NameMon = "Forest Pirate"
            CFrameQuest =
                CFrame.new(
                -13234.04,
                331.488495,
                -7625.40137,
                0.707134247,
                -0,
                -0.707079291,
                0,
                1,
                -0,
                0.707079291,
                0,
                0.707134247
            )
            CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
        elseif MyLevel == 1850 or MyLevel <= 1899 then
            Mon = "Mythological Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland"
            NameMon = "Mythological Pirate"
            CFrameQuest =
                CFrame.new(
                -13234.04,
                331.488495,
                -7625.40137,
                0.707134247,
                -0,
                -0.707079291,
                0,
                1,
                -0,
                0.707079291,
                0,
                0.707134247
            )
            CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
        elseif MyLevel == 1900 or MyLevel <= 1924 then
            Mon = "Jungle Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland2"
            NameMon = "Jungle Pirate"
            CFrameQuest =
                CFrame.new(
                -12680.3818,
                389.971039,
                -9902.01953,
                -0.0871315002,
                0,
                0.996196866,
                0,
                1,
                0,
                -0.996196866,
                0,
                -0.0871315002
            )
            CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
        elseif MyLevel == 1925 or MyLevel <= 1974 then
            Mon = "Musketeer Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland2"
            NameMon = "Musketeer Pirate"
            CFrameQuest =
                CFrame.new(
                -12680.3818,
                389.971039,
                -9902.01953,
                -0.0871315002,
                0,
                0.996196866,
                0,
                1,
                0,
                -0.996196866,
                0,
                -0.0871315002
            )
            CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
        elseif MyLevel == 1975 or MyLevel <= 1999 then
            Mon = "Reborn Skeleton"
            LevelQuest = 1
            NameQuest = "HauntedQuest1"
            NameMon = "Reborn Skeleton"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
        elseif MyLevel == 2000 or MyLevel <= 2024 then
            Mon = "Living Zombie"
            LevelQuest = 2
            NameQuest = "HauntedQuest1"
            NameMon = "Living Zombie"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
        elseif MyLevel == 2025 or MyLevel <= 2049 then
            Mon = "Demonic Soul"
            LevelQuest = 1
            NameQuest = "HauntedQuest2"
            NameMon = "Demonic Soul"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
        elseif MyLevel == 2050 or MyLevel <= 2074 then
            Mon = "Posessed Mummy"
            LevelQuest = 2
            NameQuest = "HauntedQuest2"
            NameMon = "Posessed Mummy"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
        elseif MyLevel == 2075 or MyLevel <= 2099 then
            Mon = "Peanut Scout"
            LevelQuest = 1
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut Scout"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
        elseif MyLevel == 2100 or MyLevel <= 2124 then
            Mon = "Peanut President"
            LevelQuest = 2
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut President"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
        elseif MyLevel == 2125 or MyLevel <= 2149 then
            Mon = "Ice Cream Chef"
            LevelQuest = 1
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Chef"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
        elseif MyLevel == 2150 or MyLevel <= 2199 then
            Mon = "Ice Cream Commander"
            LevelQuest = 2
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Commander"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
        elseif MyLevel == 2200 or MyLevel <= 2224 then
            Mon = "Cookie Crafter"
            LevelQuest = 1
            NameQuest = "CakeQuest1"
            NameMon = "Cookie Crafter"
            CFrameQuest =
                CFrame.new(
                -2021.32007,
                37.7982254,
                -12028.7295,
                0.957576931,
                -8.80302053e-08,
                0.288177818,
                6.9301187e-08,
                1,
                7.51931211e-08,
                -0.288177818,
                -5.2032135e-08,
                0.957576931
            )
            CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
        elseif MyLevel == 2225 or MyLevel <= 2249 then
            Mon = "Cake Guard"
            LevelQuest = 2
            NameQuest = "CakeQuest1"
            NameMon = "Cake Guard"
            CFrameQuest =
                CFrame.new(
                -2021.32007,
                37.7982254,
                -12028.7295,
                0.957576931,
                -8.80302053e-08,
                0.288177818,
                6.9301187e-08,
                1,
                7.51931211e-08,
                -0.288177818,
                -5.2032135e-08,
                0.957576931
            )
            CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
        elseif MyLevel == 2250 or MyLevel <= 2274 then
            Mon = "Baking Staff"
            LevelQuest = 1
            NameQuest = "CakeQuest2"
            NameMon = "Baking Staff"
            CFrameQuest =
                CFrame.new(
                -1927.91602,
                37.7981339,
                -12842.5391,
                -0.96804446,
                4.22142143e-08,
                0.250778586,
                4.74911062e-08,
                1,
                1.49904711e-08,
                -0.250778586,
                2.64211941e-08,
                -0.96804446
            )
            CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
        elseif MyLevel == 2275 or MyLevel <= 2299 then
            Mon = "Head Baker"
            LevelQuest = 2
            NameQuest = "CakeQuest2"
            NameMon = "Head Baker"
            CFrameQuest =
                CFrame.new(
                -1927.91602,
                37.7981339,
                -12842.5391,
                -0.96804446,
                4.22142143e-08,
                0.250778586,
                4.74911062e-08,
                1,
                1.49904711e-08,
                -0.250778586,
                2.64211941e-08,
                -0.96804446
            )
            CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
        elseif MyLevel == 2300 or MyLevel <= 2324 then
            Mon = "Cocoa Warrior"
            LevelQuest = 1
            NameQuest = "ChocQuest1"
            NameMon = "Cocoa Warrior"
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
        elseif MyLevel == 2325 or MyLevel <= 2349 then
            Mon = "Chocolate Bar Battler"
            LevelQuest = 2
            NameQuest = "ChocQuest1"
            NameMon = "Chocolate Bar Battler"
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
        elseif MyLevel == 2350 or MyLevel <= 2374 then
            Mon = "Sweet Thief"
            LevelQuest = 1
            NameQuest = "ChocQuest2"
            NameMon = "Sweet Thief"
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
        elseif MyLevel == 2375 or MyLevel <= 2399 then
            Mon = "Candy Rebel"
            LevelQuest = 2
            NameQuest = "ChocQuest2"
            NameMon = "Candy Rebel"
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)
        elseif MyLevel == 2400 or MyLevel <= 2424 then
            Mon = "Candy Pirate"
            LevelQuest = 1
            NameQuest = "CandyQuest1"
            NameMon = "Candy Pirate"
            CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
            CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
        elseif MyLevel == 2425 or MyLevel <= 2449 then
            Mon = "Snow Demon"
            LevelQuest = 2
            NameQuest = "CandyQuest1"
            NameMon = "Snow Demon"
            CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
            CFrameMon = CFrame.new(-880.2006225585938, 71.24776458740234, -14538.609375)
        elseif MyLevel == 2450 or MyLevel <= 2474 then
            Mon = "Isle Outlaw"
            LevelQuest = 1
            NameQuest = "TikiQuest1"
            NameMon = "Isle Outlaw"
            CFrameQuest = CFrame.new(-16545.9355, 55.6863556, -173.230499)
            CFrameMon = CFrame.new(-16120.6035, 116.520554, -103.038849)
        elseif MyLevel == 2475 or MyLevel <= 2499 then
            Mon = "Island Boy"
            LevelQuest = 2
            NameQuest = "TikiQuest1"
            NameMon = "Island Boy"
            CFrameQuest = CFrame.new(-16545.9355, 55.6863556, -173.230499)
            CFrameMon = CFrame.new(-16751.3125, 121.226219, -264.015015)
        elseif MyLevel == 2500 or MyLevel <= 2524 then
            Mon = "Sun-kissed Warrio"
            LevelQuest = 1
            NameQuest = "TikiQuest2"
            NameMon = "Sun-kissed Warrio"
            CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
            CFrameMon = CFrame.new(-16294.6748, 32.7874393, 1062.4856)
        elseif MyLevel >= 2525 then
            Mon = "Isle Champion"
            LevelQuest = 2
            NameQuest = "TikiQuest2"
            NameMon = "Isle Champion"
            CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
            CFrameMon = CFrame.new(-16933.2129, 93.3503036, 999.450989)
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
        local Site
        if foundAnything == "" then
            Site =
                game.HttpService:JSONDecode(
                game:HttpGet(
                    "https://games.roblox.com/v1/games/" .. PlaceID .. "/servers/Public?sortOrder=Asc&limit=100"
                )
            )
        else
            Site =
                game.HttpService:JSONDecode(
                game:HttpGet(
                    "https://games.roblox.com/v1/games/" ..
                        PlaceID .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. foundAnything
                )
            )
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0
        for i, v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _, Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile =
                                pcall(
                                function()
                                    AllIDs = {}
                                    table.insert(AllIDs, actualHour)
                                end
                            )
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(
                        function()
                            wait()
                            game:GetService("TeleportService"):TeleportToPlaceInstance(
                                PlaceID,
                                ID,
                                game.Players.LocalPlayer
                            )
                        end
                    )
                    wait(4)
                end
            end
        end
    end
    function Teleport()
        while wait() do
            pcall(
                function()
                    TPReturner()
                    if foundAnything ~= "" then
                        TPReturner()
                    end
                end
            )
        end
    end
    Teleport()
end

function UpdateIslandESP()
    for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(
            function()
                if IslandESP then
                    if v.Name ~= "Sea" then
                        if not v:FindFirstChild("NameEsp") then
                            local bill = Instance.new("BillboardGui", v)
                            bill.Name = "NameEsp"
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new("TextLabel", bill)
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.TextYAlignment = "Top"
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(7, 236, 240)
                        else
                            v["NameEsp"].TextLabel.Text =
                                (v.Name ..
                                "   \n" ..
                                    round(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                            3
                                    ) ..
                                        " Distance")
                        end
                    end
                else
                    if v:FindFirstChild("NameEsp") then
                        v:FindFirstChild("NameEsp"):Destroy()
                    end
                end
            end
        )
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
    for i, v in pairs(game:GetService "Players":GetChildren()) do
        pcall(
            function()
                if not isnil(v.Character) then
                    if ESPPlayer then
                        if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild("NameEsp" .. Number) then
                            local bill = Instance.new("BillboardGui", v.Character.Head)
                            bill.Name = "NameEsp" .. Number
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v.Character.Head
                            bill.AlwaysOnTop = true
                            local name = Instance.new("TextLabel", bill)
                            name.Font = Enum.Font.GothamSemibold
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Text =
                                (v.Name ..
                                " \n" ..
                                    round(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                            v.Character.Head.Position).Magnitude / 3
                                    ) ..
                                        " Distance")
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.TextYAlignment = "Top"
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            if v.Team == game.Players.LocalPlayer.Team then
                                name.TextColor3 = Color3.new(0, 255, 0)
                            else
                                name.TextColor3 = Color3.new(255, 0, 0)
                            end
                        else
                            v.Character.Head["NameEsp" .. Number].TextLabel.Text =
                                (v.Name ..
                                " | " ..
                                    round(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                            v.Character.Head.Position).Magnitude / 3
                                    ) ..
                                        " Distance\nHealth : " ..
                                            round(v.Character.Humanoid.Health * 100 / v.Character.Humanoid.MaxHealth) ..
                                                "%")
                        end
                    else
                        if v.Character.Head:FindFirstChild("NameEsp" .. Number) then
                            v.Character.Head:FindFirstChild("NameEsp" .. Number):Destroy()
                        end
                    end
                end
            end
        )
    end
end
function UpdateChestChams()
    for i, v in pairs(game.Workspace:GetChildren()) do
        pcall(
            function()
                if string.find(v.Name, "Chest") then
                    if ChestESP then
                        if string.find(v.Name, "Chest") then
                            if not v:FindFirstChild("NameEsp" .. Number) then
                                local bill = Instance.new("BillboardGui", v)
                                bill.Name = "NameEsp" .. Number
                                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                                bill.Size = UDim2.new(1, 200, 1, 30)
                                bill.Adornee = v
                                bill.AlwaysOnTop = true
                                local name = Instance.new("TextLabel", bill)
                                name.Font = Enum.Font.GothamSemibold
                                name.FontSize = "Size14"
                                name.TextWrapped = true
                                name.Size = UDim2.new(1, 0, 1, 0)
                                name.TextYAlignment = "Top"
                                name.BackgroundTransparency = 1
                                name.TextStrokeTransparency = 0.5
                                if v.Name == "Chest1" then
                                    name.TextColor3 = Color3.fromRGB(109, 109, 109)
                                    name.Text =
                                        ("Chest 1" ..
                                        " \n" ..
                                            round(
                                                (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                                    v.Position).Magnitude / 3
                                            ) ..
                                                " Distance")
                                end
                                if v.Name == "Chest2" then
                                    name.TextColor3 = Color3.fromRGB(173, 158, 21)
                                    name.Text =
                                        ("Chest 2" ..
                                        " \n" ..
                                            round(
                                                (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                                    v.Position).Magnitude / 3
                                            ) ..
                                                " Distance")
                                end
                                if v.Name == "Chest3" then
                                    name.TextColor3 = Color3.fromRGB(85, 255, 255)
                                    name.Text =
                                        ("Chest 3" ..
                                        " \n" ..
                                            round(
                                                (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                                    v.Position).Magnitude / 3
                                            ) ..
                                                " Distance")
                                end
                            else
                                v["NameEsp" .. Number].TextLabel.Text =
                                    (v.Name ..
                                    "   \n" ..
                                        round(
                                            (game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                                3
                                        ) ..
                                            " Distance")
                            end
                        end
                    else
                        if v:FindFirstChild("NameEsp" .. Number) then
                            v:FindFirstChild("NameEsp" .. Number):Destroy()
                        end
                    end
                end
            end
        )
    end
end
function UpdateDevilChams()
    for i, v in pairs(game.Workspace:GetChildren()) do
        pcall(
            function()
                if DevilFruitESP then
                    if string.find(v.Name, "Fruit") then
                        if not v.Handle:FindFirstChild("NameEsp" .. Number) then
                            local bill = Instance.new("BillboardGui", v.Handle)
                            bill.Name = "NameEsp" .. Number
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v.Handle
                            bill.AlwaysOnTop = true
                            local name = Instance.new("TextLabel", bill)
                            name.Font = Enum.Font.GothamSemibold
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.TextYAlignment = "Top"
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(255, 255, 255)
                            name.Text =
                                (v.Name ..
                                " \n" ..
                                    round(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                            v.Handle.Position).Magnitude / 3
                                    ) ..
                                        " Distance")
                        else
                            v.Handle["NameEsp" .. Number].TextLabel.Text =
                                (v.Name ..
                                "   \n" ..
                                    round(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                            v.Handle.Position).Magnitude / 3
                                    ) ..
                                        " Distance")
                        end
                    end
                else
                    if v.Handle:FindFirstChild("NameEsp" .. Number) then
                        v.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
                    end
                end
            end
        )
    end
end
function UpdateFlowerChams()
    for i, v in pairs(game.Workspace:GetChildren()) do
        pcall(
            function()
                if v.Name == "Flower2" or v.Name == "Flower1" then
                    if FlowerESP then
                        if not v:FindFirstChild("NameEsp" .. Number) then
                            local bill = Instance.new("BillboardGui", v)
                            bill.Name = "NameEsp" .. Number
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new("TextLabel", bill)
                            name.Font = Enum.Font.GothamSemibold
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.TextYAlignment = "Top"
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(255, 0, 0)
                            if v.Name == "Flower1" then
                                name.Text =
                                    ("Blue Flower" ..
                                    " \n" ..
                                        round(
                                            (game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                                3
                                        ) ..
                                            " Distance")
                                name.TextColor3 = Color3.fromRGB(0, 0, 255)
                            end
                            if v.Name == "Flower2" then
                                name.Text =
                                    ("Red Flower" ..
                                    " \n" ..
                                        round(
                                            (game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                                3
                                        ) ..
                                            " Distance")
                                name.TextColor3 = Color3.fromRGB(255, 0, 0)
                            end
                        else
                            v["NameEsp" .. Number].TextLabel.Text =
                                (v.Name ..
                                "   \n" ..
                                    round(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                            3
                                    ) ..
                                        " Distance")
                        end
                    else
                        if v:FindFirstChild("NameEsp" .. Number) then
                            v:FindFirstChild("NameEsp" .. Number):Destroy()
                        end
                    end
                end
            end
        )
    end
end
function UpdateRealFruitChams()
    for i, v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
        if v:IsA("Tool") then
            if RealFruitESP then
                if not v.Handle:FindFirstChild("NameEsp" .. Number) then
                    local bill = Instance.new("BillboardGui", v.Handle)
                    bill.Name = "NameEsp" .. Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1, 200, 1, 30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new("TextLabel", bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1, 0, 1, 0)
                    name.TextYAlignment = "Top"
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    name.Text =
                        (v.Name ..
                        " \n" ..
                            round(
                                (game:GetService("Players").LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude /
                                    3
                            ) ..
                                " Distance")
                else
                    v.Handle["NameEsp" .. Number].TextLabel.Text =
                        (v.Name ..
                        " " ..
                            round(
                                (game:GetService("Players").LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude /
                                    3
                            ) ..
                                " Distance")
                end
            else
                if v.Handle:FindFirstChild("NameEsp" .. Number) then
                    v.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
                end
            end
        end
    end
    for i, v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
        if v:IsA("Tool") then
            if RealFruitESP then
                if not v.Handle:FindFirstChild("NameEsp" .. Number) then
                    local bill = Instance.new("BillboardGui", v.Handle)
                    bill.Name = "NameEsp" .. Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1, 200, 1, 30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new("TextLabel", bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1, 0, 1, 0)
                    name.TextYAlignment = "Top"
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 174, 0)
                    name.Text =
                        (v.Name ..
                        " \n" ..
                            round(
                                (game:GetService("Players").LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude /
                                    3
                            ) ..
                                " Distance")
                else
                    v.Handle["NameEsp" .. Number].TextLabel.Text =
                        (v.Name ..
                        " " ..
                            round(
                                (game:GetService("Players").LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude /
                                    3
                            ) ..
                                " Distance")
                end
            else
                if v.Handle:FindFirstChild("NameEsp" .. Number) then
                    v.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
                end
            end
        end
    end
    for i, v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
        if v:IsA("Tool") then
            if RealFruitESP then
                if not v.Handle:FindFirstChild("NameEsp" .. Number) then
                    local bill = Instance.new("BillboardGui", v.Handle)
                    bill.Name = "NameEsp" .. Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1, 200, 1, 30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new("TextLabel", bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1, 0, 1, 0)
                    name.TextYAlignment = "Top"
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(251, 255, 0)
                    name.Text =
                        (v.Name ..
                        " \n" ..
                            round(
                                (game:GetService("Players").LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude /
                                    3
                            ) ..
                                " Distance")
                else
                    v.Handle["NameEsp" .. Number].TextLabel.Text =
                        (v.Name ..
                        " " ..
                            round(
                                (game:GetService("Players").LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude /
                                    3
                            ) ..
                                " Distance")
                end
            else
                if v.Handle:FindFirstChild("NameEsp" .. Number) then
                    v.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
                end
            end
        end
    end
end

function UpdateIslandESP()
    for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(
            function()
                if IslandESP then
                    if v.Name ~= "Sea" then
                        if not v:FindFirstChild("NameEsp") then
                            local bill = Instance.new("BillboardGui", v)
                            bill.Name = "NameEsp"
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new("TextLabel", bill)
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.TextYAlignment = "Top"
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(7, 236, 240)
                        else
                            v["NameEsp"].TextLabel.Text =
                                (v.Name ..
                                "   \n" ..
                                    round(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                            3
                                    ) ..
                                        " Distance")
                        end
                    end
                else
                    if v:FindFirstChild("NameEsp") then
                        v:FindFirstChild("NameEsp"):Destroy()
                    end
                end
            end
        )
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
    for i, v in pairs(game:GetService "Players":GetChildren()) do
        pcall(
            function()
                if not isnil(v.Character) then
                    if ESPPlayer then
                        if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild("NameEsp" .. Number) then
                            local bill = Instance.new("BillboardGui", v.Character.Head)
                            bill.Name = "NameEsp" .. Number
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v.Character.Head
                            bill.AlwaysOnTop = true
                            local name = Instance.new("TextLabel", bill)
                            name.Font = Enum.Font.GothamSemibold
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Text =
                                (v.Name ..
                                " \n" ..
                                    round(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                            v.Character.Head.Position).Magnitude / 3
                                    ) ..
                                        " Distance")
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.TextYAlignment = "Top"
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            if v.Team == game.Players.LocalPlayer.Team then
                                name.TextColor3 = Color3.new(0, 255, 0)
                            else
                                name.TextColor3 = Color3.new(255, 0, 0)
                            end
                        else
                            v.Character.Head["NameEsp" .. Number].TextLabel.Text =
                                (v.Name ..
                                " | " ..
                                    round(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                            v.Character.Head.Position).Magnitude / 3
                                    ) ..
                                        " Distance\nHealth : " ..
                                            round(v.Character.Humanoid.Health * 100 / v.Character.Humanoid.MaxHealth) ..
                                                "%")
                        end
                    else
                        if v.Character.Head:FindFirstChild("NameEsp" .. Number) then
                            v.Character.Head:FindFirstChild("NameEsp" .. Number):Destroy()
                        end
                    end
                end
            end
        )
    end
end
function UpdateChestChams()
    for i, v in pairs(game.Workspace:GetChildren()) do
        pcall(
            function()
                if string.find(v.Name, "Chest") then
                    if ChestESP then
                        if string.find(v.Name, "Chest") then
                            if not v:FindFirstChild("NameEsp" .. Number) then
                                local bill = Instance.new("BillboardGui", v)
                                bill.Name = "NameEsp" .. Number
                                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                                bill.Size = UDim2.new(1, 200, 1, 30)
                                bill.Adornee = v
                                bill.AlwaysOnTop = true
                                local name = Instance.new("TextLabel", bill)
                                name.Font = Enum.Font.GothamSemibold
                                name.FontSize = "Size14"
                                name.TextWrapped = true
                                name.Size = UDim2.new(1, 0, 1, 0)
                                name.TextYAlignment = "Top"
                                name.BackgroundTransparency = 1
                                name.TextStrokeTransparency = 0.5
                                if v.Name == "Chest1" then
                                    name.TextColor3 = Color3.fromRGB(109, 109, 109)
                                    name.Text =
                                        ("Chest 1" ..
                                        " \n" ..
                                            round(
                                                (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                                    v.Position).Magnitude / 3
                                            ) ..
                                                " Distance")
                                end
                                if v.Name == "Chest2" then
                                    name.TextColor3 = Color3.fromRGB(173, 158, 21)
                                    name.Text =
                                        ("Chest 2" ..
                                        " \n" ..
                                            round(
                                                (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                                    v.Position).Magnitude / 3
                                            ) ..
                                                " Distance")
                                end
                                if v.Name == "Chest3" then
                                    name.TextColor3 = Color3.fromRGB(85, 255, 255)
                                    name.Text =
                                        ("Chest 3" ..
                                        " \n" ..
                                            round(
                                                (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                                    v.Position).Magnitude / 3
                                            ) ..
                                                " Distance")
                                end
                            else
                                v["NameEsp" .. Number].TextLabel.Text =
                                    (v.Name ..
                                    "   \n" ..
                                        round(
                                            (game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                                3
                                        ) ..
                                            " Distance")
                            end
                        end
                    else
                        if v:FindFirstChild("NameEsp" .. Number) then
                            v:FindFirstChild("NameEsp" .. Number):Destroy()
                        end
                    end
                end
            end
        )
    end
end
function UpdateDevilChams()
    for i, v in pairs(game.Workspace:GetChildren()) do
        pcall(
            function()
                if DevilFruitESP then
                    if string.find(v.Name, "Fruit") then
                        if not v.Handle:FindFirstChild("NameEsp" .. Number) then
                            local bill = Instance.new("BillboardGui", v.Handle)
                            bill.Name = "NameEsp" .. Number
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v.Handle
                            bill.AlwaysOnTop = true
                            local name = Instance.new("TextLabel", bill)
                            name.Font = Enum.Font.GothamSemibold
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.TextYAlignment = "Top"
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(255, 255, 255)
                            name.Text =
                                (v.Name ..
                                " \n" ..
                                    round(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                            v.Handle.Position).Magnitude / 3
                                    ) ..
                                        " Distance")
                        else
                            v.Handle["NameEsp" .. Number].TextLabel.Text =
                                (v.Name ..
                                "   \n" ..
                                    round(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                            v.Handle.Position).Magnitude / 3
                                    ) ..
                                        " Distance")
                        end
                    end
                else
                    if v.Handle:FindFirstChild("NameEsp" .. Number) then
                        v.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
                    end
                end
            end
        )
    end
end
function UpdateFlowerChams()
    for i, v in pairs(game.Workspace:GetChildren()) do
        pcall(
            function()
                if v.Name == "Flower2" or v.Name == "Flower1" then
                    if FlowerESP then
                        if not v:FindFirstChild("NameEsp" .. Number) then
                            local bill = Instance.new("BillboardGui", v)
                            bill.Name = "NameEsp" .. Number
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new("TextLabel", bill)
                            name.Font = Enum.Font.GothamSemibold
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.TextYAlignment = "Top"
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(255, 0, 0)
                            if v.Name == "Flower1" then
                                name.Text =
                                    ("Blue Flower" ..
                                    " \n" ..
                                        round(
                                            (game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                                3
                                        ) ..
                                            " Distance")
                                name.TextColor3 = Color3.fromRGB(0, 0, 255)
                            end
                            if v.Name == "Flower2" then
                                name.Text =
                                    ("Red Flower" ..
                                    " \n" ..
                                        round(
                                            (game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                                3
                                        ) ..
                                            " Distance")
                                name.TextColor3 = Color3.fromRGB(255, 0, 0)
                            end
                        else
                            v["NameEsp" .. Number].TextLabel.Text =
                                (v.Name ..
                                "   \n" ..
                                    round(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                            3
                                    ) ..
                                        " Distance")
                        end
                    else
                        if v:FindFirstChild("NameEsp" .. Number) then
                            v:FindFirstChild("NameEsp" .. Number):Destroy()
                        end
                    end
                end
            end
        )
    end
end
function UpdateRealFruitChams()
    for i, v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
        if v:IsA("Tool") then
            if RealFruitESP then
                if not v.Handle:FindFirstChild("NameEsp" .. Number) then
                    local bill = Instance.new("BillboardGui", v.Handle)
                    bill.Name = "NameEsp" .. Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1, 200, 1, 30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new("TextLabel", bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1, 0, 1, 0)
                    name.TextYAlignment = "Top"
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    name.Text =
                        (v.Name ..
                        " \n" ..
                            round(
                                (game:GetService("Players").LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude /
                                    3
                            ) ..
                                " Distance")
                else
                    v.Handle["NameEsp" .. Number].TextLabel.Text =
                        (v.Name ..
                        " " ..
                            round(
                                (game:GetService("Players").LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude /
                                    3
                            ) ..
                                " Distance")
                end
            else
                if v.Handle:FindFirstChild("NameEsp" .. Number) then
                    v.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
                end
            end
        end
    end
    for i, v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
        if v:IsA("Tool") then
            if RealFruitESP then
                if not v.Handle:FindFirstChild("NameEsp" .. Number) then
                    local bill = Instance.new("BillboardGui", v.Handle)
                    bill.Name = "NameEsp" .. Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1, 200, 1, 30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new("TextLabel", bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1, 0, 1, 0)
                    name.TextYAlignment = "Top"
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 174, 0)
                    name.Text =
                        (v.Name ..
                        " \n" ..
                            round(
                                (game:GetService("Players").LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude /
                                    3
                            ) ..
                                " Distance")
                else
                    v.Handle["NameEsp" .. Number].TextLabel.Text =
                        (v.Name ..
                        " " ..
                            round(
                                (game:GetService("Players").LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude /
                                    3
                            ) ..
                                " Distance")
                end
            else
                if v.Handle:FindFirstChild("NameEsp" .. Number) then
                    v.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
                end
            end
        end
    end
    for i, v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
        if v:IsA("Tool") then
            if RealFruitESP then
                if not v.Handle:FindFirstChild("NameEsp" .. Number) then
                    local bill = Instance.new("BillboardGui", v.Handle)
                    bill.Name = "NameEsp" .. Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1, 200, 1, 30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new("TextLabel", bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1, 0, 1, 0)
                    name.TextYAlignment = "Top"
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(251, 255, 0)
                    name.Text =
                        (v.Name ..
                        " \n" ..
                            round(
                                (game:GetService("Players").LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude /
                                    3
                            ) ..
                                " Distance")
                else
                    v.Handle["NameEsp" .. Number].TextLabel.Text =
                        (v.Name ..
                        " " ..
                            round(
                                (game:GetService("Players").LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude /
                                    3
                            ) ..
                                " Distance")
                end
            else
                if v.Handle:FindFirstChild("NameEsp" .. Number) then
                    v.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
                end
            end
        end
    end
end

spawn(
    function()
        while wait() do
            pcall(
                function()
                    if MobESP then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") then
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
                                local Dis =
                                    math.floor(
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                        v.HumanoidRootPart.Position).Magnitude
                                )
                                v.MobEap.TextLabel.Text = v.Name .. " - " .. Dis .. " Distance"
                            end
                        end
                    else
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("MobEap") then
                                v.MobEap:Destroy()
                            end
                        end
                    end
                end
            )
        end
    end
)

spawn(
    function()
        while wait() do
            pcall(
                function()
                    if SeaESP then
                        for i, v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") then
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
                                local Dis =
                                    math.floor(
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                        v.HumanoidRootPart.Position).Magnitude
                                )
                                v.Seaesps.TextLabel.Text = v.Name .. " - " .. Dis .. " Distance"
                            end
                        end
                    else
                        for i, v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                            if v:FindFirstChild("Seaesps") then
                                v.Seaesps:Destroy()
                            end
                        end
                    end
                end
            )
        end
    end
)

spawn(
    function()
        while wait() do
            pcall(
                function()
                    if NpcESP then
                        for i, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") then
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
                                local Dis =
                                    math.floor(
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                        v.HumanoidRootPart.Position).Magnitude
                                )
                                v.NpcEspes.TextLabel.Text = v.Name .. " - " .. Dis .. " Distance"
                            end
                        end
                    else
                        for i, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                            if v:FindFirstChild("NpcEspes") then
                                v.NpcEspes:Destroy()
                            end
                        end
                    end
                end
            )
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

function UpdateIslandMirageESP()
    for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(
            function()
                if MirageIslandESP then
                    if v.Name == "Mirage Island" then
                        if not v:FindFirstChild("NameEsp") then
                            local bill = Instance.new("BillboardGui", v)
                            bill.Name = "NameEsp"
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new("TextLabel", bill)
                            name.Font = "Code"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.TextYAlignment = "Top"
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(80, 245, 245)
                        else
                            v["NameEsp"].TextLabel.Text =
                                (v.Name ..
                                "   \n" ..
                                    round(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                            3
                                    ) ..
                                        " M")
                        end
                    end
                else
                    if v:FindFirstChild("NameEsp") then
                        v:FindFirstChild("NameEsp"):Destroy()
                    end
                end
            end
        )
    end
end

function isnil(thing)
    return (thing == nil)
end
local function round(n)
    return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)

function UpdateAfdESP()
    for i, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
        pcall(
            function()
                if AfdESP then
                    if v.Name == "Advanced Fruit Dealer" then
                        if not v:FindFirstChild("NameEsp") then
                            local bill = Instance.new("BillboardGui", v)
                            bill.Name = "NameEsp"
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new("TextLabel", bill)
                            name.Font = "Code"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.TextYAlignment = "Top"
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(80, 245, 245)
                        else
                            v["NameEsp"].TextLabel.Text =
                                (v.Name ..
                                "   \n" ..
                                    round(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                            3
                                    ) ..
                                        " M")
                        end
                    end
                else
                    if v:FindFirstChild("NameEsp") then
                        v:FindFirstChild("NameEsp"):Destroy()
                    end
                end
            end
        )
    end
end

function InfAb()
    if InfAbility then
        if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
            local inf = Instance.new("ParticleEmitter")
            inf.Acceleration = Vector3.new(0, 0, 0)
            inf.Archivable = true
            inf.Drag = 20
            inf.EmissionDirection = Enum.NormalId.Top
            inf.Enabled = true
            inf.Lifetime = NumberRange.new(0, 0)
            inf.LightInfluence = 0
            inf.LockedToPart = true
            inf.Name = "Agility"
            inf.Rate = 500
            local numberKeypoints2 = {
                NumberSequenceKeypoint.new(0, 0),
                NumberSequenceKeypoint.new(1, 4)
            }
            inf.Size = NumberSequence.new(numberKeypoints2)
            inf.RotSpeed = NumberRange.new(9999, 99999)
            inf.Rotation = NumberRange.new(0, 0)
            inf.Speed = NumberRange.new(30, 30)
            inf.SpreadAngle = Vector2.new(0, 0, 0, 0)
            inf.Texture = ""
            inf.VelocityInheritance = 0
            inf.ZOffset = 2
            inf.Transparency = NumberSequence.new(0)
            inf.Color = ColorSequence.new(Color3.fromRGB(0, 0, 0), Color3.fromRGB(0, 0, 0))
            inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        end
    else
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
        end
    end
end

local LocalPlayer = game:GetService "Players".LocalPlayer
local originalstam = LocalPlayer.Character.Energy.Value
function infinitestam()
    LocalPlayer.Character.Energy.Changed:connect(
        function()
            if InfiniteEnergy then
                LocalPlayer.Character.Energy.Value = originalstam
            end
        end
    )
end

spawn(
    function()
        pcall(
            function()
                while wait(.1) do
                    if InfiniteEnergy then
                        wait(0.1)
                        originalstam = LocalPlayer.Character.Energy.Value
                        infinitestam()
                    end
                end
            end
        )
    end
)

function NoDodgeCool()
    if nododgecool then
        for i, v in next, getgc() do
            if game:GetService("Players").LocalPlayer.Character.Dodge then
                if
                    typeof(v) == "function" and
                        getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Dodge
                 then
                    for i2, v2 in next, getupvalues(v) do
                        if tostring(v2) == "0.1" then
                            repeat
                                wait(.1)
                                setupvalue(v, i2, 0)
                            until not nododgecool
                        end
                    end
                end
            end
        end
    end
end

function fly()
    local mouse = game:GetService("Players").LocalPlayer:GetMouse ""
    localplayer = game:GetService("Players").LocalPlayer
    game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    local torso = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    local speedSET = 25
    local keys = {a = false, d = false, w = false, s = false}
    local e1
    local e2
    local function start()
        local pos = Instance.new("BodyPosition", torso)
        local gyro = Instance.new("BodyGyro", torso)
        pos.Name = "EPIXPOS"
        pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        pos.position = torso.Position
        gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
        gyro.CFrame = torso.CFrame
        repeat
            wait()
            localplayer.Character.Humanoid.PlatformStand = true
            local new = gyro.CFrame - gyro.CFrame.p + pos.position
            if not keys.w and not keys.s and not keys.a and not keys.d then
                speed = 1
            end
            if keys.w then
                new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                speed = speed + speedSET
            end
            if keys.s then
                new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                speed = speed + speedSET
            end
            if keys.d then
                new = new * CFrame.new(speed, 0, 0)
                speed = speed + speedSET
            end
            if keys.a then
                new = new * CFrame.new(-speed, 0, 0)
                speed = speed + speedSET
            end
            if speed > speedSET then
                speed = speedSET
            end
            pos.position = new.p
            if keys.w then
                gyro.CFrame = workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad(speed * 15), 0, 0)
            elseif keys.s then
                gyro.CFrame = workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(math.rad(speed * 15), 0, 0)
            else
                gyro.CFrame = workspace.CurrentCamera.CoordinateFrame
            end
        until not Fly
        if gyro then
            gyro:Destroy()
        end
        if pos then
            pos:Destroy()
        end
        flying = false
        localplayer.Character.Humanoid.PlatformStand = false
        speed = 0
    end
    e1 =
        mouse.KeyDown:connect(
        function(key)
            if not torso or not torso.Parent then
                flying = false
                e1:disconnect()
                e2:disconnect()
                return
            end
            if key == "w" then
                keys.w = true
            elseif key == "s" then
                keys.s = true
            elseif key == "a" then
                keys.a = true
            elseif key == "d" then
                keys.d = true
            end
        end
    )
    e2 =
        mouse.KeyUp:connect(
        function(key)
            if key == "w" then
                keys.w = false
            elseif key == "s" then
                keys.s = false
            elseif key == "a" then
                keys.a = false
            elseif key == "d" then
                keys.d = false
            end
        end
    )
    start()
end

function Click()
    wait(.1)
    game:GetService "VirtualUser":CaptureController()
    game:GetService "VirtualUser":Button1Down(Vector2.new(1280, 672))
end

function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
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

spawn(
    function()
        while wait() do
            for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"]:GetChildren()) do
                pcall(
                    function()
                        if
                            v.Name == ("CurvedRing") or v.Name == ("SlashHit") or v.Name == ("SwordSlash") or
                                v.Name == ("SlashTail") or
                                v.Name == ("Sounds")
                         then
                            v:Destroy()
                        end
                    end
                )
            end
        end
    end
)

function Check_Sword(Sword_Name)
    for i, v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")) do
        if (v.Type == "Sword") then
            if v.Name == Sword_Name then
                return true
            end
        end
    end
end

function GetDistance(target)
    return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
end

function BTP(P)
    repeat
        wait(1)
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
        task.wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
    until (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500
end

function TelePPlayer(P)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
end

function TP(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 25 then
        Speed = 10000
    elseif Distance < 50 then
        Speed = 2000
    elseif Distance < 150 then
        Speed = 800
    elseif Distance < 250 then
        Speed = 600
    elseif Distance < 500 then
        Speed = 400
    elseif Distance < 750 then
        Speed = 250
    elseif Distance >= 1000 then
        Speed = 200
    end
    game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),
        {CFrame = Pos}
    ):Play()
end

function TP1(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 25 then
        Speed = 5000
    elseif Distance < 50 then
        Speed = 2000
    elseif Distance < 150 then
        Speed = 800
    elseif Distance < 250 then
        Speed = 600
    elseif Distance < 500 then
        Speed = 300
    elseif Distance < 750 then
        Speed = 250
    elseif Distance >= 1000 then
        Speed = 200
    end
    game:GetService("TweenService"):Create(
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),
        {CFrame = Pos}
    ):Play()
end

function topos(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 25 then
        Speed = 5000
    elseif Distance < 50 then
        Speed = 2000
    elseif Distance < 150 then
        Speed = 800
    elseif Distance < 250 then
        Speed = 600
    elseif Distance < 500 then
        Speed = 300
    elseif Distance < 750 then
        Speed = 250
    elseif Distance >= 1000 then
        Speed = 200
    end
    game:GetService("TweenService"):Create(
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),
        {CFrame = Pos}
    ):Play()
end

function TPB(CFgo)
    local tween_s = game:service "TweenService"
    local info =
        TweenInfo.new(
        (game:GetService("Workspace").Boats.MarineBrigade.VehicleSeat.CFrame.Position - CFgo.Position).Magnitude / 300,
        Enum.EasingStyle.Linear
    )
    tween = tween_s:Create(game:GetService("Workspace").Boats.MarineBrigade.VehicleSeat, info, {CFrame = CFgo})
    tween:Play()

    local tweenfunc = {}

    function tweenfunc:Stop()
        tween:Cancel()
    end

    return tweenfunc
end

function TPP(CFgo)
    if
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or
            not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid")
     then
        tween:Cancel()
        repeat
            wait()
        until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and
            game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
        wait(7)
        return
    end
    local tween_s = game:service "TweenService"
    local info =
        TweenInfo.new(
        (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude / 325,
        Enum.EasingStyle.Linear
    )
    tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
    tween:Play()

    local tweenfunc = {}

    function tweenfunc:Stop()
        tween:Cancel()
    end

    return tweenfunc
end

getgenv().ToTargets = function(p)
    task.spawn(
        function()
            pcall(
                function()
                    if game:GetService("Players").LocalPlayer:DistanceFromCharacter(p.Position) <= 250 then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = p
                    elseif not game.Players.LocalPlayer.Character:FindFirstChild("Root") then
                        local K = Instance.new("Part", game.Players.LocalPlayer.Character)
                        K.Size = Vector3.new(1, 0.5, 1)
                        K.Name = "Root"
                        K.Anchored = true
                        K.Transparency = 1
                        K.CanCollide = false
                        K.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0)
                    end
                    local U = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - p.Position).Magnitude
                    local z = game:service("TweenService")
                    local B =
                        TweenInfo.new(
                        (p.Position - game.Players.LocalPlayer.Character.Root.Position).Magnitude / 300,
                        Enum.EasingStyle.Linear
                    )
                    local S, g =
                        pcall(
                        function()
                            local q = z:Create(game.Players.LocalPlayer.Character.Root, B, {CFrame = p})
                            q:Play()
                        end
                    )
                    if not S then
                        return g
                    end
                    game.Players.LocalPlayer.Character.Root.CFrame =
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    if S and game.Players.LocalPlayer.Character:FindFirstChild("Root") then
                        pcall(
                            function()
                                if
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - p.Position).Magnitude >=
                                        20
                                 then
                                    spawn(
                                        function()
                                            pcall(
                                                function()
                                                    if
                                                        (game.Players.LocalPlayer.Character.Root.Position -
                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                                                            150
                                                     then
                                                        game.Players.LocalPlayer.Character.Root.CFrame =
                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                                                    else
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                            game.Players.LocalPlayer.Character.Root.CFrame
                                                    end
                                                end
                                            )
                                        end
                                    )
                                elseif
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - p.Position).Magnitude >=
                                        10 and
                                        (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - p.Position).Magnitude <
                                            20
                                 then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                                elseif
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - p.Position).Magnitude <
                                        10
                                 then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                                end
                            end
                        )
                    end
                end
            )
        end
    )
end

Type = 1
spawn(
    function()
        while wait(.1) do
            if Type == 1 then
                Pos = CFrame.new(0, PosY, 0)
            elseif Type == 2 then
                Pos = CFrame.new(0, PosY, -30)
            elseif Type == 3 then
                Pos = CFrame.new(30, PosY, 0)
            elseif Type == 4 then
                Pos = CFrame.new(0, PosY, 30)
            elseif Type == 5 then
                Pos = CFrame.new(-30, PosY, 0)
            elseif Type == 6 then
                Pos = CFrame.new(0, 35, 0)
            end
        end
    end
)

spawn(
    function()
        while wait(.1) do
            Type = 1
            wait(0.5)
            Type = 2
            wait(0.5)
            Type = 3
            wait(0.5)
            Type = 4
            wait(0.5)
            Type = 5
            wait(0.5)
        end
    end
)

task.spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    if _G.AutoFarmNearest and AutoFarmNearestMagnet or SelectMag and _G.BringMonster then
                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if
                                not string.find(v.Name, "Boss") and
                                    (v.HumanoidRootPart.Position -
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        _G.BringMode
                             then
                                if InMyNetWork(v.HumanoidRootPart) then
                                    v.HumanoidRootPart.CFrame = PosMon
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
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
                end
            )
        end
    end
)

spawn(
    function()
        game:GetService("RunService").Heartbeat:Connect(
            function()
                if
                    _G.AutoVampire or AutoFarmChest or _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or
                        _G.Auto_DungeonMobAura or
                        _G.AutoFarmChest or
                        _G.AutoFactory or
                        _G.AutoFarmBossHallow or
                        _G.AutoFarmSwanGlasses or
                        _G.AutoLongSword or
                        _G.AutoBlackSpikeycoat or
                        _G.AutoElectricClaw or
                        _G.AutoFarmGunMastery or
                        _G.AutoHolyTorch or
                        _G.AutoLawRaid or
                        _G.AutoFarmBoss or
                        _G.AutoTwinHooks or
                        _G.AutoOpenSwanDoor or
                        _G.AutoDragon_Trident or
                        _G.AutoSaber or
                        _G.NOCLIP or
                        _G.AutoFarmFruitMastery or
                        _G.AutoFarmGunMastery or
                        _G.TeleportIsland or
                        _G.Auto_EvoRace or
                        _G.AutoFarmAllMsBypassType or
                        _G.AutoObservationv2 or
                        _G.AutoMusketeerHat or
                        _G.AutoEctoplasm or
                        _G.AutoRengoku or
                        _G.Auto_Rainbow_Haki or
                        _G.AutoObservation or
                        _G.AutoDarkDagger or
                        _G.Safe_Mode or
                        _G.MasteryFruit or
                        _G.AutoBudySword or
                        _G.AutoOderSword or
                        _G.AutoBounty or
                        _G.AutoAllBoss or
                        _G.Auto_Bounty or
                        _G.AutoSharkman or
                        _G.Auto_Mastery_Fruit or
                        _G.Auto_Mastery_Gun or
                        _G.Auto_Dungeon or
                        _G.Auto_Cavender or
                        _G.Auto_Pole or
                        _G.Auto_Kill_Ply or
                        _G.Auto_Factory or
                        _G.AutoSecondSea or
                        _G.TeleportPly or
                        _G.AutoBartilo or
                        _G.Auto_DarkBoss or
                        _G.GrabChest or
                        _G.AutoFarmBounty or
                        _G.Holy_Torch or
                        _G.AutoFarm or
                        _G.Clip or
                        _G.AutoElitehunter or
                        _G.AutoThirdSea or
                        _G.Auto_Bone or
                        _G.Autoheart or
                        _G.Autodoughking or
                        _G.AutoFarmMaterial or
                        _G.AutoNevaSoulGuitar or
                        _G.Auto_Dragon_Trident or
                        _G.Autotushita or
                        _G.d or
                        _G.Autowaden or
                        _G.Autogay or
                        _G.Autopole or
                        _G.Autosaw or
                        _G.AutoObservationHakiV2 or
                        _G.AutoFarmNearest or
                        AutoFarmChest or
                        _G.AutoCarvender or
                        _G.AutoTwinHook or
                        AutoMobAura or
                        _G.Tweenfruit or
                        _G.AutoKai or
                        _G.TeleportNPC or
                        _G.Leather or
                        _G.Auto_Wing or
                        _G.Umm or
                        _G.Makori_gay or
                        Radioactive or
                        Fish or
                        Gunpowder or
                        Dragon_Scale or
                        Cocoafarm or
                        Scrap or
                        MiniHee or
                        _G.AutoFarmSeabaest or
                        Auto_Cursed_Dual_Katana or
                        _G.AutoFarmMob or
                        _G.AutoMysticIsland or
                        _G.AutoFarmDungeon or
                        _G.AutoRaidPirate or
                        _G.AutoQuestRace or
                        _G.TweenMGear or
                        getgenv().AutoFarm or
                        _G.AutoPlayerHunter or
                        _G.AutoFactory or
                        Grab_Chest or
                        _G.Namfon or
                        _G.AutoSwordMastery or
                        _G.AutoSeaBest or
                        _G.AutoKillTial or
                        _G.Auto_Saber or
                        _G.Position_Spawn or
                        _G.Farmfast or
                        _G.AutoRace or
                        _G.RaidPirate
                 then
                    if not game:GetService("Workspace"):FindFirstChild("LOL") then
                        local LOL = Instance.new("Part")
                        LOL.Name = "LOL"
                        LOL.Parent = game.Workspace
                        LOL.Anchored = true
                        LOL.Transparency = 1
                        LOL.Size = Vector3.new(30, -0.5, 30)
                    elseif game:GetService("Workspace"):FindFirstChild("LOL") then
                        game.Workspace["LOL"].CFrame =
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -3.6, 0)
                    end
                else
                    if game:GetService("Workspace"):FindFirstChild("LOL") then
                        game:GetService("Workspace"):FindFirstChild("LOL"):Destroy()
                    end
                end
            end
        )
    end
)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if
                        _G.AutoVampire or AutoFarmChest or _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or
                            _G.Auto_DungeonMobAura or
                            _G.AutoFarmChest or
                            _G.AutoFactory or
                            _G.AutoFarmBossHallow or
                            _G.AutoFarmSwanGlasses or
                            _G.AutoLongSword or
                            _G.AutoBlackSpikeycoat or
                            _G.AutoElectricClaw or
                            _G.AutoFarmGunMastery or
                            _G.AutoHolyTorch or
                            _G.AutoLawRaid or
                            _G.AutoFarmBoss or
                            _G.AutoTwinHooks or
                            _G.AutoOpenSwanDoor or
                            _G.AutoDragon_Trident or
                            _G.AutoSaber or
                            _G.AutoFarmFruitMastery or
                            _G.AutoFarmGunMastery or
                            _G.TeleportIsland or
                            _G.Auto_EvoRace or
                            _G.AutoFarmAllMsBypassType or
                            _G.AutoObservationv2 or
                            _G.AutoMusketeerHat or
                            _G.AutoEctoplasm or
                            _G.AutoRengoku or
                            _G.Auto_Rainbow_Haki or
                            _G.AutoObservation or
                            _G.AutoDarkDagger or
                            _G.Safe_Mode or
                            _G.MasteryFruit or
                            _G.AutoBudySword or
                            _G.AutoOderSword or
                            _G.AutoBounty or
                            _G.AutoAllBoss or
                            _G.Auto_Bounty or
                            _G.AutoSharkman or
                            _G.Auto_Mastery_Fruit or
                            _G.Auto_Mastery_Gun or
                            _G.Auto_Dungeon or
                            _G.Auto_Cavender or
                            _G.Auto_Pole or
                            _G.Auto_Kill_Ply or
                            _G.Auto_Factory or
                            _G.AutoSecondSea or
                            _G.TeleportPly or
                            _G.AutoBartilo or
                            _G.Auto_DarkBoss or
                            _G.GrabChest or
                            _G.AutoFarmBounty or
                            _G.Holy_Torch or
                            _G.AutoFarm or
                            _G.Clip or
                            FarmBoss or
                            _G.AutoElitehunter or
                            _G.AutoThirdSea or
                            _G.Auto_Bone or
                            _G.Autoheart or
                            _G.Autodoughking or
                            _G.AutoFarmMaterial or
                            _G.AutoNevaSoulGuitar or
                            _G.Auto_Dragon_Trident or
                            _G.Autotushita or
                            _G.d or
                            _G.Autowaden or
                            _G.Autogay or
                            _G.Autopole or
                            _G.Autosaw or
                            _G.AutoObservationHakiV2 or
                            _G.AutoFarmNearest or
                            AutoFarmChest or
                            _G.AutoCarvender or
                            _G.AutoTwinHook or
                            AutoMobAura or
                            _G.Tweenfruit or
                            _G.TeleportNPC or
                            _G.Leather or
                            _G.Auto_Wing or
                            _G.Umm or
                            _G.Makori_gay or
                            Radioactive or
                            Fish or
                            Gunpowder or
                            Dragon_Scale or
                            Cocoafarm or
                            Scrap or
                            MiniHee or
                            _G.AutoFarmSeabaest or
                            Auto_Cursed_Dual_Katana or
                            _G.AutoFarmMob or
                            _G.AutoMysticIsland or
                            _G.AutoFarmDungeon or
                            _G.AutoRaidPirate or
                            _G.AutoQuestRace or
                            _G.TweenMGear or
                            getgenv().AutoFarm or
                            _G.AutoPlayerHunter or
                            _G.AutoFactory or
                            Grab_Chest or
                            _G.Namfon or
                            _G.AutoSwordMastery or
                            _G.Auto_Seabest or
                            _G.AutoSeaBest or
                            _G.AutoKillTial or
                            _G.Auto_Saber or
                            _G.Position_Spawn or
                            _G.Farmfast or
                            _G.AutoRace or
                            _G.RaidPirate == true
                     then
                        if
                            not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild(
                                "BodyClip"
                            )
                         then
                            local Noclip = Instance.new("BodyVelocity")
                            Noclip.Name = "BodyClip"
                            Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                            Noclip.MaxForce = Vector3.new(100000, 100000, 100000)
                            Noclip.Velocity = Vector3.new(0, 0, 0)
                        end
                    end
                end
            end
        )
    end
)

spawn(
    function()
        pcall(
            function()
                game:GetService("RunService").Stepped:Connect(
                    function()
                        if
                            _G.AutoVampire or AutoFarmChest or _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or
                                _G.Auto_DungeonMobAura or
                                _G.AutoFarmChest or
                                _G.AutoFactory or
                                _G.AutoFarmBossHallow or
                                _G.AutoFarmSwanGlasses or
                                _G.AutoLongSword or
                                _G.AutoBlackSpikeycoat or
                                _G.AutoElectricClaw or
                                _G.AutoFarmGunMastery or
                                _G.AutoHolyTorch or
                                _G.AutoLawRaid or
                                _G.AutoFarmBoss or
                                _G.AutoTwinHooks or
                                _G.AutoOpenSwanDoor or
                                _G.AutoDragon_Trident or
                                _G.AutoSaber or
                                _G.NOCLIP or
                                _G.AutoFarmFruitMastery or
                                _G.AutoFarmGunMastery or
                                _G.TeleportIsland or
                                _G.Auto_EvoRace or
                                _G.AutoFarmAllMsBypassType or
                                _G.AutoObservationv2 or
                                _G.AutoMusketeerHat or
                                _G.AutoEctoplasm or
                                _G.AutoRengoku or
                                _G.Auto_Rainbow_Haki or
                                _G.AutoObservation or
                                _G.AutoDarkDagger or
                                _G.Safe_Mode or
                                _G.MasteryFruit or
                                _G.AutoBudySword or
                                _G.AutoOderSword or
                                _G.AutoBounty or
                                _G.AutoAllBoss or
                                _G.Auto_Bounty or
                                _G.AutoSharkman or
                                _G.Auto_Mastery_Fruit or
                                _G.Auto_Mastery_Gun or
                                _G.Auto_Dungeon or
                                _G.Auto_Cavender or
                                _G.Auto_Pole or
                                _G.Auto_Kill_Ply or
                                _G.Auto_Factory or
                                _G.AutoSecondSea or
                                _G.TeleportPly or
                                _G.AutoBartilo or
                                _G.Auto_DarkBoss or
                                _G.GrabChest or
                                _G.AutoFarmBounty or
                                _G.Holy_Torch or
                                _G.AutoFarm or
                                _G.Clip or
                                _G.AutoElitehunter or
                                _G.AutoThirdSea or
                                _G.Auto_Bone or
                                _G.Autoheart or
                                _G.Autodoughking or
                                _G.AutoFarmMaterial or
                                _G.AutoNevaSoulGuitar or
                                _G.Auto_Dragon_Trident or
                                _G.Autotushita or
                                _G.Autowaden or
                                _G.Autogay or
                                _G.Autopole or
                                _G.Autosaw or
                                _G.AutoObservationHakiV2 or
                                _G.AutoFarmNearest or
                                _G.AutoCarvender or
                                _G.AutoTwinHook or
                                AutoMobAura or
                                _G.Tweenfruit or
                                _G.TeleportNPC or
                                _G.AutoKai or
                                _G.Leather or
                                _G.Auto_Wing or
                                _G.Umm or
                                _G.Makori_gay or
                                Radioactive or
                                Fish or
                                Gunpowder or
                                Dragon_Scale or
                                Cocoafarm or
                                Scrap or
                                MiniHee or
                                _G.AutoFarmSeabaest or
                                Auto_Cursed_Dual_Katana or
                                _G.AutoFarmMob or
                                _G.AutoMysticIsland or
                                _G.AutoFarmDungeon or
                                _G.AutoRaidPirate or
                                _G.AutoQuestRace or
                                _G.TweenMGear or
                                getgenv().AutoFarm or
                                _G.AutoPlayerHunter or
                                _G.AutoFactory or
                                _G.Namfon or
                                _G.AutoSwordMastery or
                                _G.Auto_Seabest or
                                _G.AutoSeaBest or
                                _G.AutoKillTial or
                                _G.Auto_Saber or
                                _G.Position_Spawn or
                                _G.TPB or
                                _G.Farmfast or
                                _G.AutoRace or
                                _G.RaidPirate == true
                         then
                            for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                                if v:IsA("BasePart") then
                                    v.CanCollide = false
                                end
                            end
                        end
                    end
                )
            end
        )
    end
)

function InstancePos(pos)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end

function TP3(pos)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end

spawn(
    function()
        while wait() do
            if
                _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or
                    _G.AutoFactory or
                    _G.AutoFarmSwanGlasses or
                    _G.AutoLongSword or
                    _G.AutoBlackSpikeycoat or
                    _G.AutoElectricClaw or
                    _G.AutoFarmGunMastery or
                    _G.AutoHolyTorch or
                    _G.AutoLawRaid or
                    _G.AutoFarmBoss or
                    _G.AutoTwinHooks or
                    _G.AutoOpenSwanDoor or
                    _G.AutoDragon_Trident or
                    _G.AutoSaber or
                    _G.NOCLIP or
                    _G.AutoFarmFruitMastery or
                    _G.AutoFarmGunMastery or
                    _G.TeleportIsland or
                    _G.Auto_EvoRace or
                    _G.AutoFarmAllMsBypassType or
                    _G.AutoObservationv2 or
                    _G.AutoMusketeerHat or
                    _G.AutoEctoplasm or
                    _G.AutoRengoku or
                    _G.Auto_Rainbow_Haki or
                    _G.AutoObservation or
                    _G.AutoDarkDagger or
                    _G.Safe_Mode or
                    _G.MasteryFruit or
                    _G.AutoBudySword or
                    _G.AutoOderSword or
                    _G.AutoAllBoss or
                    _G.Auto_Bounty or
                    _G.AutoSharkman or
                    _G.Auto_Mastery_Fruit or
                    _G.Auto_Mastery_Gun or
                    _G.Auto_Dungeon or
                    _G.Auto_Cavender or
                    _G.Auto_Pole or
                    _G.Auto_Kill_Ply or
                    _G.Auto_Factory or
                    _G.AutoSecondSea or
                    _G.TeleportPly or
                    _G.AutoBartilo or
                    _G.Auto_DarkBoss or
                    _G.AutoFarm or
                    _G.Clip or
                    _G.AutoElitehunter or
                    _G.AutoThirdSea or
                    _G.Auto_Bone or
                    _G.Autoheart or
                    _G.Autodoughking or
                    _G.d or
                    _G.Autowaden or
                    _G.Autogay or
                    _G.AutoObservationHakiV2 or
                    _G.AutoFarmMaterial or
                    _G.AutoFarmNearest or
                    _G.AutoCarvender or
                    _G.AutoTwinHook or
                    AutoMobAura or
                    _G.Leather or
                    _G.Auto_Wing or
                    _G.Umm or
                    _G.Makori_gay or
                    Radioactive or
                    Fish or
                    Gunpowder or
                    Dragon_Scale or
                    Cocoafarm or
                    Scrap or
                    MiniHee or
                    _G.AutoFarmSeabaest or
                    Auto_Cursed_Dual_Katana or
                    _G.AutoFarmMob or
                    _G.AutoRaidPirate or
                    getgenv().AutoFarm or
                    _G.AutoPlayerHunter or
                    _G.AutoFactory or
                    _G.AttackDummy or
                    _G.AutoSwordMastery or
                    _G.Auto_Seabest or
                    _G.AutoSeaBest or
                    _G.AutoKillTial or
                    _G.Auto_Saber or
                    _G.Farmfast or
                    _G.RaidPirate == true
             then
                pcall(
                    function()
                        game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken", true)
                    end
                )
            end
        end
    end
)

spawn(
    function()
        game:GetService("RunService").RenderStepped:Connect(
            function()
                if _G.AutoClick or Fastattack then
                    pcall(
                        function()
                            game:GetService "VirtualUser":CaptureController()
                            game:GetService "VirtualUser":Button1Down(Vector2.new(0, 1, 0, 1))
                        end
                    )
                end
            end
        )
    end
)

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

spawn(
    function()
        pcall(
            function()
                while wait() do
                    for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                        if v:IsA("Tool") then
                            if v:FindFirstChild("RemoteFunctionShoot") then
                                SelectWeaponGun = v.Name
                            end
                        end
                    end
                end
            end
        )
    end
)

game:GetService("Players").LocalPlayer.Idled:connect(
    function()
        game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        wait(1)
        game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end
)

function CheckItem(ah)
    for k, v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")) do
        if v.Name == ah then
            return v
        end
    end
end

function CheckSea(e)
    if game.PlaceId == 2753915549 then
        if e == 1 then
            return true
        end
    elseif game.PlaceId == 4442272183 then
        if e == 2 then
            return true
        end
    elseif game.PlaceId == 7449423635 then
        if e == 3 then
            return true
        end
    end
    return false
end
w = task.wait
t = task

TempleOfTimeCFrame =
    CFrame.new(
    28734.3945,
    14888.2324,
    -109.071777,
    -0.650207579,
    4.1780531e-08,
    -0.759756625,
    1.97876595e-08,
    1,
    3.80575109e-08,
    0.759756625,
    9.71147784e-09,
    -0.650207579
)

spawn(
    function()
        while task.wait() do
            if _G.AutoDooHee then
                MoveCamtoMoon()
            end
        end
    end
)
Memayto = false
DaGatCan = false
if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CheckTempleDoor") then
    DaGatCan = true
end
function PullLever()
    local bn =
        CFrame.new(
        28576.4688,
        14939.2832,
        76.5164413,
        -1,
        0,
        0,
        0,
        0.707134247,
        -0.707079291,
        -0,
        -0.707079291,
        -0.707134247
    )
    local bo =
        CFrame.new(
        28576.4688,
        14935.9512,
        75.469101,
        -1,
        -4.22219593e-08,
        1.13133396e-08,
        0,
        -0.258819044,
        -0.965925813,
        4.37113883e-08,
        -0.965925813,
        0.258819044
    )
    local bp = 0.2
    if
        game:GetService("Workspace").Map["Temple of Time"].Lever.Lever.CFrame.Z > bo.Z + bp or
            game:GetService("Workspace").Map["Temple of Time"].Lever.Lever.CFrame.Z < bo.Z - bp
     then
        CheckAndTweenTemple()
        topos(game:GetService("Workspace").Map["Temple of Time"].Lever.Part.CFrame)
        for r, v in pairs(game:GetService("Workspace").Map["Temple of Time"].Lever:GetDescendants()) do
            if v.Name == "ProximityPrompt" then
                fireproximityprompt(v)
            end
        end
    end
end
function IsMirageIsland2()
    if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
        return true
    else
        return false
    end
end
function TweenTemple()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
        "requestEntrance",
        Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586)
    )
end
function TweenTempleLegit()
    AllNPCS = getnilinstances()
    for r, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
        table.insert(AllNPCS, v)
    end
    for r, v in pairs(AllNPCS) do
        if v.Name == "Mysterious Force" then
            TempleMysteriousNPC1 = v
        end
        if v.Name == "Mysterious Force3" then
            TempleMysteriousNPC2 = v
        end
    end
    topos(TempleMysteriousNPC2.HumanoidRootPart.CFrame)
    wait(0.5)
    if
        (TempleMysteriousNPC2.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <
            15
     then
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaceV4Progress", "TeleportBack")
    end
    if
        (TempleMysteriousNPC1.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <
            15
     then
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaceV4Progress", "Teleport")
    end
end
function CheckAndTweenTemple()
    if (TempleOfTimeCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1200 then
        TweenTemple()
    end
    if (TempleOfTimeCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1200 then
        TweenTemple()
    end
end
function MoonTextureId()
    if Sea1 then
        return game:GetService("Lighting").FantasySky.MoonTextureId
    elseif Sea2 then
        return game:GetService("Lighting").FantasySky.MoonTextureId
    elseif Sea3 then
        return game:GetService("Lighting").Sky.MoonTextureId
    end
end
function CheckMoon()
    moon8 = "http://www.roblox.com/asset/?id=9709150401"
    moon7 = "http://www.roblox.com/asset/?id=9709150086"
    moon6 = "http://www.roblox.com/asset/?id=9709149680"
    moon5 = "http://www.roblox.com/asset/?id=9709149431"
    moon4 = "http://www.roblox.com/asset/?id=9709149052"
    moon3 = "http://www.roblox.com/asset/?id=9709143733"
    moon2 = "http://www.roblox.com/asset/?id=9709139597"
    moon1 = "http://www.roblox.com/asset/?id=9709135895"
    moonreal = MoonTextureId()
    cofullmoonkothangbeo = "Bad Moon"
    if moonreal == moon5 or moonreal == moon4 then
        if moonreal == moon5 then
            cofullmoonkothangbeo = "Full Moon"
        elseif moonreal == moon4 then
            cofullmoonkothangbeo = "Next Night"
        end
    end
    return cofullmoonkothangbeo
end
function getBlueGear()
    if game.workspace.Map:FindFirstChild("MysticIsland") then
        for r, v in pairs(game.workspace.Map.MysticIsland:GetChildren()) do
            if v:IsA("MeshPart") and v.MeshId == "rbxassetid://10153114969" then
                return v
            end
        end
    end
end
function getHighestPoint()
    if not game.workspace.Map:FindFirstChild("MysticIsland") then
        return nil
    end
    for r, v in pairs(game:GetService("Workspace").Map.MysticIsland:GetDescendants()) do
        if v:IsA("MeshPart") then
            if v.MeshId == "rbxassetid://6745037796" then
                return v
            end
        end
    end
end
spawn(
    function()
        if TwenetoHighestPoint then
            HighestPoint = getHighestPoint()
            if HighestPoint then
                topos(HighestPoint.CFrame * CFrame.new(0, 211.88, 0))
            end
        end
    end
)
function MoveCamtoMoon()
    workspace.CurrentCamera.CFrame =
        CFrame.new(
        workspace.CurrentCamera.CFrame.Position,
        game:GetService("Lighting"):GetMoonDirection() + workspace.CurrentCamera.CFrame.Position
    )
end

spawn(
    function()
        if TweentoBlueGear then
            BlueGear = getBlueGear()
            if BlueGear then
                topos(BlueGear.CFrame)
            end
        end
    end
)

local Client = game.Players.LocalPlayer
local STOP = require(Client.PlayerScripts.CombatFramework.Particle)
local STOPRL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    if not shared.orl then
                        shared.orl = STOPRL.wrapAttackAnimationAsync
                    end
                    if not shared.cpc then
                        shared.cpc = STOP.play
                    end
                    STOPRL.wrapAttackAnimationAsync = function(a, b, c, d, func)
                        local Hits = STOPRL.getBladeHits(b, c, d)
                        if Hits then
                            if _G.FastAttack then
                                STOP.play = function()
                                end
                                a:Play(0.01, 0.01, 0.01)
                                func(Hits)
                                STOP.play = shared.cpc
                                wait(a.length * 0.5)
                                a:Stop()
                            else
                                a:Play()
                            end
                        end
                    end
                end
            )
        end
    end
)

function GetBladeHit()
    local CombatFrameworkLib =
        debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
    local CmrFwLib = CombatFrameworkLib[2]
    local p13 = CmrFwLib.activeController
    local weapon = p13.blades[1]
    if not weapon then
        return weapon
    end
    while weapon.Parent ~= game.Players.LocalPlayer.Character do
        weapon = weapon.Parent
    end
    return weapon
end
function AttackHit()
    local CombatFrameworkLib =
        debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
    local CmrFwLib = CombatFrameworkLib[2]
    local plr = game.Players.LocalPlayer
    for i = 1, 1 do
        local bladehit =
            require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
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
            pcall(
                function()
                    CmrFwLib.activeController.timeToNextAttack = 1
                    CmrFwLib.activeController.attacking = false
                    CmrFwLib.activeController.blocking = false
                    CmrFwLib.activeController.timeToNextBlock = 0
                    CmrFwLib.activeController.increment = 3
                    CmrFwLib.activeController.hitboxMagnitude = 120
                    CmrFwLib.activeController.focusStart = 0
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer(
                        "weaponChange",
                        tostring(GetBladeHit())
                    )
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")
                end
            )
        end
    end
end
spawn(
    function()
        while wait(.1) do
            if _G.FastAttack then
                pcall(
                    function()
                        repeat
                            task.wait(_G.FastAttackDelay)
                            AttackHit()
                        until not _G.FastAttack
                    end
                )
            end
        end
    end
)

local CamShake = require(game.ReplicatedStorage.Util.CameraShaker)
CamShake:Stop()

HttpService = game:GetService("HttpService")
local i = "Edward Newgate Hub"
local j = "-BloxFruit.json"
local l = game.Players.LocalPlayer.Name .. j
if Adel then
    HttpService = game:GetService("HttpService")
    local i = "Edward Newgate Hub"
    local j = "-BloxFruit.json"
    local l = game.Players.LocalPlayer.Name .. j
end
function SaveSettings(m, n)
    if m ~= nil then
        h[m] = n
    end
    HttpService = game:GetService("HttpService")
    if not isfolder(i) then
        makefolder(i)
    end
    writefile(i .. "/" .. l, HttpService:JSONEncode(h))
end
function ReadSetting()
    local s, o =
        pcall(
        function()
            HttpService = game:GetService("HttpService")
            if not isfolder(i) then
                makefolder(i)
            end
            return HttpService:JSONDecode(readfile(i .. "/" .. l))
        end
    )
    if s then
        return o
    else
        SaveSettings()
        return ReadSetting()
    end
end

function MoonTextureId()
    if Sea1 then
        return game:GetService("Lighting").FantasySky.MoonTextureId
    elseif Sea2 then
        return game:GetService("Lighting").FantasySky.MoonTextureId
    elseif Sea3 then
        return game:GetService("Lighting").Sky.MoonTextureId
    end
end

function CheckMoon()
    moon8 = "http://www.roblox.com/asset/?id=9709150401"
    moon7 = "http://www.roblox.com/asset/?id=9709150086"
    moon6 = "http://www.roblox.com/asset/?id=9709149680"
    moon5 = "http://www.roblox.com/asset/?id=9709149431"
    moon4 = "http://www.roblox.com/asset/?id=9709149052"
    moon3 = "http://www.roblox.com/asset/?id=9709143733"
    moon2 = "http://www.roblox.com/asset/?id=9709139597"
    moon1 = "http://www.roblox.com/asset/?id=9709135895"
    moonreal = MoonTextureId()
    cofullmoonkothangbeo = "Bad Moon"
    if moonreal == moon5 or moonreal == moon4 then
        if moonreal == moon5 then
            cofullmoonkothangbeo = "Full Moon"
        elseif moonreal == moon4 then
            cofullmoonkothangbeo = "Next Night"
        end
    end
    return cofullmoonkothangbeo
end

function function7()
    GameTime = "Error"
    local c = game.Lighting
    local ao = c.ClockTime
    if ao >= 18 or ao < 5 then
        GameTime = "Night"
    else
        GameTime = "Day"
    end
    return GameTime
end
function function6()
    return math.floor(game.Lighting.ClockTime)
end
function getServerTime()
    RealTime = tostring(math.floor(game.Lighting.ClockTime * 100) / 100)
    RealTime = tostring(game.Lighting.ClockTime)
    RealTimeTable = RealTime:split(".")
    Minute, Second = RealTimeTable[1], tonumber(0 + tonumber(RealTimeTable[2] / 100)) * 60
    return Minute, Second
end
function function8()
    local c = game.Lighting
    local ao = c.ClockTime
    if CheckMoon() == "Full Moon" and ao <= 5 then
        return tostring(function6()) .. " ( Will End Moon In " .. math.floor(5 - ao) .. " Minutes )"
    elseif CheckMoon() == "Full Moon" and (ao > 5 and ao < 12) then
        return tostring(function6()) .. " ( Fake Moon )"
    elseif CheckMoon() == "Full Moon" and (ao > 12 and ao < 18) then
        return tostring(function6()) .. " ( Will Full Moon In " .. math.floor(18 - ao) .. " Minutes )"
    elseif CheckMoon() == "Full Moon" and (ao > 18 and ao <= 24) then
        return tostring(function6()) .. " ( Will End Moon In " .. math.floor(24 + 6 - ao) .. " Minutes )"
    end
    if CheckMoon() == "Next Night" and ao < 12 then
        return tostring(function6()) .. " ( Will Full Moon In " .. math.floor(18 - ao) .. " Minutes )"
    elseif CheckMoon() == "Next Night" and ao > 12 then
        return tostring(function6()) .. " ( Will Full Moon In " .. math.floor(18 + 12 - ao) .. " Minutes )"
    end
    return tostring(function6())
end

function CheckAcientOneStatus()
    if not game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
        return "You have yet to achieve greatness"
    end
    local v227 = nil
    local v228 = nil
    local v229 = nil
    v229, v228, v227 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Check")
    if v229 == 1 then
        return "Required Train More"
    elseif v229 == 2 or v229 == 4 or v229 == 7 then
        return "Can Buy Gear With " .. v227 .. " Fragments"
    elseif v229 == 3 then
        return "Required Train More"
    elseif v229 == 5 then
        return "You Are Done Your Race."
    elseif v229 == 6 then
        return "Upgrades completed: " .. v228 - 2 .. "/3, Need Trains More"
    end
    if v229 ~= 8 then
        if v229 == 0 then
            return "Ready For Trial"
        else
            return "You have yet to achieve greatness"
        end
    end
    return "Remaining " .. 10 - v228 .. " training sessions."
end

spawn(
    function()
        repeat
            task.wait()
        until game:IsLoaded()
        repeat
            task.wait()
        until game.Players
        repeat
            task.wait()
        until game.Players.LocalPlayer and game.Players.LocalPlayer.Team ~= nil
        wait(1.5)
        require(game.ReplicatedStorage.Notification).new("<Color=Red>.<Color=/>"):Display()
        wait(.5)
        require(game.ReplicatedStorage.Notification).new("<Color=Red>Edward Newgate Hub<Color=/>"):Display()
        wait(.14)
        require(game.ReplicatedStorage.Notification).new("<Color=Yellow>Flusex<Color=/>"):Display()
        wait(.24)
        require(game.ReplicatedStorage.Notification).new("<Color=Yellow>hi<Color=/>"):Display()
        wait(.29)
        require(game.ReplicatedStorage.Notification).new("<Color=Yellow>trash<Color=/>"):Display()
        wait(.36)
    end
)

local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/1st-Mars/Misc/main/O")))()

local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
ScreenGui.Name = ""
ScreenGui.Parent = game.CoreGui or game.Players.LocalPlayer.PlayerGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
ImageButton.Size = UDim2.new(0, 50, 0, 50)
ImageButton.Draggable = true
ImageButton.Image = "https://www.roblox.com/asset/?id=15446676864"
UICorner.Parent = ImageButton
ImageButton.MouseButton1Down:connect(function()
       game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
       game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
end)

local Window =
    OrionLib:MakeWindow(
    {
        Name = "Edward Newgate Hub",
        HidePremium = false,
        IntroText = "EdwardNewgateHub Library",
        SaveConfig = true,
        ConfigFolder = "Edward Newgate Hub"
    }
)

OrionLib:MakeNotification(
    {
        Name = "Edward Newgate Hub",
        Content = "Choose Teams",
        Time = 7
    }
)

OrionLib:MakeNotification(
    {
        Name = "Edward Newgate Hub",
        Content = "Please Wait loading script,do not enable any function",
        Time = 5
    }
)

-------------Tab-----------------------

local W =
    Window:MakeTab(
    {
        Name = " Info",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)

local M =
    Window:MakeTab(
    {
        Name = " Main",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)

local ST =
    Window:MakeTab(
    {
        Name = " Setting",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)

local IQ =
    Window:MakeTab(
    {
        Name = " Item & Quest",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)

local S =
    Window:MakeTab(
    {
        Name = " Stats",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)

local E =
    Window:MakeTab(
    {
        Name = " ESP",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)

local RA =
    Window:MakeTab(
    {
        Name = " Raid",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)

local LC =
    Window:MakeTab(
    {
        Name = " Local Players",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)

local Wld =
    Window:MakeTab(
    {
        Name = " World Teleport",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)

local SV =
    Window:MakeTab(
    {
        Name = " Status Sever",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)

local D =
    Window:MakeTab(
    {
        Name = " Devil Fruit",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)

local R =
    Window:MakeTab(
    {
        Name = " Race V4",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)

local SH =
    Window:MakeTab(
    {
        Name = " Shop",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)

local C =
    Window:MakeTab(
    {
        Name = " Misc",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)

-----Label--------------------
local Section =
    W:AddSection(
    {
        Name = "Credit"
    }
)

W:AddLabel("Script By Edward Newgate")

local Section =
    W:AddSection(
    {
        Name = "Update"
    }
)

W:AddLabel("[+] Edward Newgate Hub (Beta)")
W:AddLabel("[+] Code By Mars")
W:AddLabel("[+] Load Script Faster")

local Section =
    W:AddSection(
    {
        Name = "Status"
    }
)

local locallv = W:AddLabel("Level")

spawn(
    function()
        while wait() do
            pcall(
                function()
                    locallv:Set("Level :" .. " " .. game:GetService("Players").LocalPlayer.Data.Level.Value)
                end
            )
        end
    end
)

local localrace = W:AddLabel("Race")

spawn(
    function()
        while wait() do
            pcall(
                function()
                    localrace:Set("Race :" .. " " .. game:GetService("Players").LocalPlayer.Data.Race.Value)
                end
            )
        end
    end
)

local localbeli = W:AddLabel("Beli")

spawn(
    function()
        while wait() do
            pcall(
                function()
                    localbeli:Set("Beli :" .. " " .. game:GetService("Players").LocalPlayer.Data.Beli.Value)
                end
            )
        end
    end
)

local localfrag = W:AddLabel("Fragment")

spawn(
    function()
        while wait() do
            pcall(
                function()
                    localfrag:Set("Fragments :" .. " " .. game:GetService("Players").LocalPlayer.Data.Fragments.Value)
                end
            )
        end
    end
)

local localexp = W:AddLabel("ExP")

spawn(
    function()
        while wait() do
            pcall(
                function()
                    localexp:Set("ExP Points :" .. " " .. game:GetService("Players").LocalPlayer.Data.Exp.Value)
                end
            )
        end
    end
)

local localstat = W:AddLabel("Stats Points")

spawn(
    function()
        while wait() do
            pcall(
                function()
                    localstat:Set("Stats Points :" .. " " .. game:GetService("Players").LocalPlayer.Data.Points.Value)
                end
            )
        end
    end
)

local localbountyhornor = W:AddLabel("Bounty")

spawn(
    function()
        while wait() do
            pcall(
                function()
                    localbountyhornor:Set(
                        "Bounty / Honor :" ..
                            " " .. game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value
                    )
                end
            )
        end
    end
)

local localDevil = W:AddLabel("Devil Fruit")

spawn(
    function()
        while wait() do
            pcall(
                function()
                    if
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                            game:GetService("Players").LocalPlayer.Data.DevilFruit.Value
                        ) or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                game:GetService("Players").LocalPlayer.Data.DevilFruit.Value
                            )
                     then
                        localDevil:Set(
                            "Devil Fruit :" .. " " .. game:GetService("Players").LocalPlayer.Data.DevilFruit.Value
                        )
                    else
                        localDevil:Set("Not Have Devil Fruit")
                    end
                end
            )
        end
    end
)

local Section =
    W:AddSection(
    {
        Name = "Status Hack"
    }
)

local LevelFarmFarm
W:AddLabel("Kaitun : Soon")
W:AddLabel("Config Save : Comming Son...")
local Farmfast = W:AddLabel("Farm Fast : ❌")
local Bypass = W:AddLabel("Bypass ❌")
local Section =
    W:AddSection(
    {
        Name = "World"
    }
)
local WolrdSet3 = W:AddLabel("World 1 ❌ ")
local WolrdSet = W:AddLabel("Wolrd : 2 ❌")
local WolrdSet1 = W:AddLabel("Wolrd : 3 ❌")
local Section =
    W:AddSection(
    {
        Name = "Stats Point"
    }
)
local StastMelee = W:AddLabel("")
local StastDefense = W:AddLabel("")
local StastSword = W:AddLabel("")
local StastGun = W:AddLabel("")
local StastDevilFruit = W:AddLabel("")
local PointsStast = W:AddLabel("")
local Section =
    W:AddSection(
    {
        Name = "Melee Check"
    }
)
local Superhuman = W:AddLabel("❌ : Superhuman")
local DeathStep = W:AddLabel("❌ : Sharkman Karate")
local ElectricClaw = W:AddLabel("❌ : Electric Claw")
local DragonTalon = W:AddLabel("❌ : Dragon Talon")
local GodHuman = W:AddLabel("❌ : God Human")
local Section =
    W:AddSection(
    {
        Name = "Sword Legend Check"
    }
)
local Shisui = W:AddLabel("❌ : Shisui")
local Saddi = W:AddLabel("❌ : Saddi")
local Wando = W:AddLabel("❌ : Wando")
local TrueTripleKatana
W:AddLabel("❌ : True Triple Katana")
local Section =
    W:AddSection(
    {
        Name = "World 1 Weapon"
    }
)
local Saber = W:AddLabel("❌ : Saber")
local Section =
    W:AddSection(
    {
        Name = "World 2 Weapon"
    }
)
local Rengoku = W:AddLabel("❌ : Rengoku")
local MidnightBlade = W:AddLabel("❌ : Midnight Blade")
local DragonTrident = W:AddLabel("❌ : DragonTrident")
local Section =
    W:AddSection(
    {
        Name = "World 3 Weapon"
    }
)
local Yama = W:AddLabel("❌ : Yama")
local BuddySword = W:AddLabel("❌ : Buddy Sword")
local Canvander = W:AddLabel("❌ : Canvander")
local TwinHooks = W:AddLabel("❌ : Twin Hooks")
local SpikeyTrident = W:AddLabel("❌ : Spikey Trident")
local HallowScythe = W:AddLabel("❌ : Hallow Scythe")
local DarkDagger = W:AddLabel("❌ : Dark Dagger")
local Tushita
W:AddLabel("❌ : Tushita")
local Section =
    W:AddSection(
    {
        Name = "Gun"
    }
)
local Kabucha = W:AddLabel("❌ : Kabucha")
local AcidumRifle = W:AddLabel("❌ : Acidum Rifle")
local BizarreRifle = W:AddLabel("❌ : Bizarre Rifle")
local Section =
    W:AddSection(
    {
        Name = "Quest"
    }
)
local BartiloQuest = W:AddLabel("❌ : Bartilo Quest")
local DonSwanQuest = W:AddLabel("❌ : Don Swan Quest")
local KillDonSwan = W:AddLabel("❌ : Kill Don Swan")

local Section =
    W:AddSection(
    {
        Name = "Acessory"
    }
)

local Dark_Coat = W:AddLabel("❌: Dark Coat")
local Ghoul_Mask = W:AddLabel("❌: Ghoul Mask")
local Swan_Glass = W:AddLabel("❌: Swan Glass")
local Pale_Scarf = W:AddLabel("❌: Pale Scarf")
local Valkyrie_Helm = W:AddLabel("❌: Valkyrie Helm")

spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    for i, v in pairs(
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")
                    ) do
                        if v.Name == "Saber" then
                            Dark_Coat:Set("✅: Dark Coat")
                        end
                        if v.Name == "Ghoul Mask" then
                            Ghoul_Mask:Set("✅: Ghoul Mask")
                        end
                        if v.Name == "Swan Glasses" then
                            Swan_Glass:Set("✅: Swan Glass")
                        end
                        if v.Name == "Pale Scarf" then
                            Pale_Scarf:Set("✅: Pale Scarf")
                        end
                        if v.Name == "Valkyrie Helmet" then
                            Valkyrie_Helm:Set("✅: Valkyrie Helmet")
                        end
                    end
                end
            )
        end
    end
)

local Section =
    M:AddSection(
    {
        Name = "Select Weapon"
    }
)

M:AddParagraph("Select Weapon", "Please Select Weapon")

local WeaponList = {"Melee", "Sword", "Fruit", "Gun"}
_G.SelectWeapon = "Melee"
M:AddDropdown(
    {
        Name = "Select Weapon",
        Default = "",
        Options = WeaponList,
        Flag = "Select Weapon",
        Save = true,
        Callback = function(Value)
            _G.SelectWeapon = Value
        end
    }
)
task.spawn(
    function()
        while wait() do
            pcall(
                function()
                    if _G.SelectWeapon == "Melee" then
                        for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v.ToolTip == "Melee" then
                                if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                    _G.SelectWeapon = v.Name
                                end
                            end
                        end
                    elseif _G.SelectWeapon == "Sword" then
                        for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v.ToolTip == "Sword" then
                                if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                    _G.SelectWeapon = v.Name
                                end
                            end
                        end
                    elseif _G.SelectWeapon == "Gun" then
                        for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v.ToolTip == "Gun" then
                                if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                    _G.SelectWeapon = v.Name
                                end
                            end
                        end
                    elseif _G.SelectWeapon == "Fruit" then
                        for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v.ToolTip == "Blox Fruit" then
                                if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                    _G.SelectWeapon = v.Name
                                end
                            end
                        end
                    end
                end
            )
        end
    end
)

if World2 and World1 then
    local Section =
        M:AddSection(
        {
            Name = "BOOTS"
        }
    )

    M:AddButton(
        {
            Name = "BOOST FPS",
            Callback = function()
                pcall(
                    function()
                        game:GetService("Lighting").FantasySky:Destroy()
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
                            elseif v:IsA("Decal") or v:IsA("Texture") then
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
                            if
                                e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or
                                    e:IsA("BloomEffect") or
                                    e:IsA("DepthOfFieldEffect")
                             then
                                e.Enabled = false
                            end
                        end
                        for i, v in pairs(game:GetService("Workspace").Camera:GetDescendants()) do
                            if v.Name == ("Water;") then
                                v.Transparency = 1
                                v.Material = "Plastic"
                            end
                        end
                    end
                )
            end
        }
    )
end

local Section =
    M:AddSection(
    {
        Name = "Other Farm"
    }
)

M:AddParagraph("Redeem Code", "Click to Button to Reddem All Code In Blox Fruits.")

local x2Code = {
    "JULYUPDATE_RESET",
    "staffbattle",
    "Sub2CaptainMaui",
    "SUB2GAMERROBOT_RESET1",
    "KittGaming",
    "Sub2Fer999",
    "Enyu_is_Pro",
    "Magicbus",
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

M:AddButton(
    {
        Name = "Redeem all code",
        Callback = function()
            function RedeemCode(value)
                game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
            end
            for i, v in pairs(x2Code) do
                RedeemCode(v)
            end
        end
    }
)

local Section =
    M:AddSection(
    {
        Name = "Auto Farm Level"
    }
)

M:AddParagraph("Main Farm", "Click to Box to Farm, I ready update new mob farm!.")

ToggleFarm =
    M:AddToggle(
    {
        Name = "Auto Farm",
        Default = false,
        Flag = "LevelFarm",
        Save = true,
        Callback = function(Value)
            _G.AutoFarm = Value
            StopTween(_G.AutoFarm)
        end
    }
)

local Section =
    M:AddSection(
    {
        Name = "Mastery Menu"
    }
)

M:AddParagraph("Mastery Menu", "Click To Box to Start Farm Mastery")

M:AddToggle(
    {
        Name = "Auto Farm BF Mastery",
        Default = false,
        Flag = "Mastery",
        Save = true,
        Callback = function(Value)
            _G.AutoFarmFruitMastery = Value
            StopTween(_G.AutoFarmFruitMastery)
            if _G.AutoFarmFruitMastery == false then
                UseSkill = false
            end
        end
    }
)

M:AddToggle(
    {
        Name = "Auto Farm Gun Mastery",
        Default = false,
        Flag = "Gun Mastery",
        Save = true,
        Callback = function(Value)
            _G.AutoFarmGunMastery = Value
            StopTween(_G.AutoFarmGunMastery)
        end
    }
)

M:AddSlider(
    {
        Name = "Health Mob",
        Min = 0,
        Max = 100,
        Default = 25,
        Color = Color3.fromRGB(255, 255, 255),
        Increment = 1,
        ValueName = "Health",
        Flag = "Health Mob",
        Save = true,
        Callback = function(Value)
            _G.Kill_At = Value
        end
    }
)

M:AddToggle(
    {
        Name = "Skill Z",
        Default = false,
        Flag = "Skill Z",
        Save = true,
        Callback = function(Value)
            _G.SkillZ = Value
        end
    }
)

M:AddToggle(
    {
        Name = "Skill! X",
        Default = false,
        Default = false,
        Flag = "Skill X",
        Save = true,
        Callback = function(Value)
            _G.SkillX = Value
        end
    }
)

M:AddToggle(
    {
        Name = "Skill C",
        Default = false,
        Default = false,
        Flag = "Skill C",
        Save = true,
        Callback = function(Value)
            _G.SkillC = Value
        end
    }
)

M:AddToggle(
    {
        Name = "Skill V",
        Default = false,
        Default = false,
        Flag = "Skill V",
        Save = true,
        Callback = function(Value)
            _G.SkillV = Value
        end
    }
)

M:AddToggle(
    {
        Name = "Skill F",
        Default = false,
        Default = false,
        Flag = "Skill F",
        Save = true,
        Callback = function(Value)
            _G.SkillF = Value
        end
    }
)

local Section =
    M:AddSection(
    {
        Name = "Bring Mob"
    }
)

M:AddToggle(
    {
        Name = "Bring Mobs[Fix]",
        Default = true,
        Flag = "Bring Mobs",
        Save = false,
        Callback = function(Value)
            _G.BringMonster = Value
        end
    }
)
local Bring = {"Low", "Normal", "Super Bring"}
_G.BringMode = "Normal"
M:AddDropdown(
    {
        Name = "Bring Mode",
        Default = "Normal",
        Options = Bring,
        Default = false,
        Flag = "Bring Mode",
        Save = true,
        Callback = function(Value)
            _G.BringMode = Value
        end
    }
)
spawn(
    function()
        while wait(.1) do
            if _G.BringMode then
                pcall(
                    function()
                        if _G.BringMode == "Low" then
                            _G.BringMode = 300
                        elseif _G.BringMode == "Normal" then
                            _G.BringMode = 375
                        elseif _G.BringMode == "Super Bring" then
                            _G.BringMode = 450
                        end
                    end
                )
            end
        end
    end
)

local Section =
    M:AddSection(
    {
        Name = "FastAttack :"
    }
)

M:AddToggle(
    {
        Name = "FastAttack",
        Default = true,
        Flag = "FastAttack",
        Save = false,
        Callback = function(Value)
            _G.FastAttack = Value
        end
    }
)
local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
CombatFrameworkR = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
y = debug.getupvalues(CombatFrameworkR)[2]
spawn(
    function()
        game:GetService("RunService").RenderStepped:Connect(
            function()
                if _G.FastAttack then
                    if typeof(y) == "table" then
                        pcall(
                            function()
                                CameraShaker:Stop()
                                y.activeController.timeToNextAttack = (math.huge ^ math.huge ^ math.huge)
                                y.activeController.timeToNextAttack = 0
                                y.activeController.hitboxMagnitude = 60
                                y.activeController.active = false
                                y.activeController.timeToNextBlock = 0
                                y.activeController.focusStart = 1655503339.0980349
                                y.activeController.increment = 1
                                y.activeController.blocking = false
                                y.activeController.attacking = false
                                y.activeController.humanoid.AutoRotate = true
                            end
                        )
                    end
                end
            end
        )
    end
)
spawn(
    function()
        game:GetService("RunService").RenderStepped:Connect(
            function()
                if _G.FastAttack == true then
                    game.Players.LocalPlayer.Character.Stun.Value = 0
                    game.Players.LocalPlayer.Character.Busy.Value = false
                end
            end
        )
    end
)

local AttackList = {
    "0",
    "0.1",
    "0.175",
    "0.2",
    "0.25",
    "0.3",
    "0.35",
    "0.4",
    "0.45",
    "0.5",
    "0.55",
    "0.6",
    "0.65",
    "0.7",
    "0.75",
    "0.8",
    "0.85",
    "0.9",
    "0.95",
    "0.1"
}
M:AddDropdown(
    {
        Name = "FastAttack Delay",
        Default = "0.5",
        Options = AttackList,
        Flag = "FastAttack Delay",
        Save = true,
        Callback = function(Value)
            _G.FastAttackDelay = Value
        end
    }
)
spawn(
    function()
        while wait(.1) do
            if _G.FastAttackDelay then
                pcall(
                    function()
                        if _G.FastAttackDelay == "0" then
                            _G.FastAttackDelay = 0
                        elseif _G.FastAttackDelay == "0.1" then
                            _G.FastAttackDelay = 0.1
                        elseif _G.FastAttackDelay == "0.175" then
                            _G.FastAttackDelay = 0.175
                        elseif _G.FastAttackDelay == "0.2" then
                            _G.FastAttackDelay = 0.2
                        elseif _G.FastAttackDelay == "0.25" then
                            _G.FastAttackDelay = 0.25
                        elseif _G.FastAttackDelay == "0.3" then
                            _G.FastAttackDelay = 0.3
                        elseif _G.FastAttackDelay == "0.35" then
                            _G.FastAttackDelay = 0.35
                        elseif _G.FastAttackDelay == "0.4" then
                            _G.FastAttackDelay = 0.5
                        elseif _G.FastAttackDelay == "0.45" then
                            _G.FastAttackDelay = 0.45
                        elseif _G.FastAttackDelay == "0.5" then
                            _G.FastAttackDelay = 0.5
                        elseif _G.FastAttackDelay == "0.55" then
                            _G.FastAttackDelay = 0.55
                        elseif _G.FastAttackDelay == "0.6" then
                            _G.FastAttackDelay = 0.6
                        elseif _G.FastAttackDelay == "0.65" then
                            _G.FastAttackDelay = 0.65
                        elseif _G.FastAttackDelay == "0.7" then
                            _G.FastAttackDelay = 0.7
                        elseif _G.FastAttackDelay == "0.75" then
                            _G.FastAttackDelay = 0.75
                        elseif _G.FastAttackDelay == "0.8" then
                            _G.FastAttackDelay = 0.8
                        elseif _G.FastAttackDelay == "0.85" then
                            _G.FastAttackDelay = 0.85
                        elseif _G.FastAttackDelay == "0.9" then
                            _G.FastAttackDelay = 0.9
                        elseif _G.FastAttackDelay == "0.95" then
                            _G.FastAttackDelay = 0.95
                        elseif _G.FastAttackDelay == "1" then
                            _G.FastAttackDelay = 1
                        end
                    end
                )
            end
        end
    end
)

local Section =
    M:AddSection(
    {
        Name = "Bypass Teleport"
    }
)

M:AddToggle(
    {
        Name = "Bypass TP[BETA]",
        Default = false,
        Flag = "Bypass TP",
        Save = true,
        Callback = function(Value)
            BypassTP = true
        end
    }
)

local Section =
    M:AddSection(
    {
        Name = "Distance Mobs"
    }
)

PosY = 30
M:AddSlider(
    {
        Name = "Distance Mob",
        Min = 0,
        Max = 65,
        Default = PosY,
        Color = Color3.fromRGB(255, 255, 255),
        Increment = 1,
        ValueName = "Distance",
        Default = false,
        Flag = "Distance",
        Save = true,
        Callback = function(Value)
            PosY = Value
        end
    }
)

local Section =
    M:AddSection(
    {
        Name = "Farm Fast : Lv 10 => 120"
    }
)

Farmfasttoggle =
    M:AddToggle(
    {
        Name = "Auto Farm Fast",
        Default = false,
        Flag = "Farm Fast",
        Save = true,
        Callback = function(Value)
            _G.Farmfast = Value
            StopTween(_G.Farmfast)
        end
    }
)

local Section =
    M:AddSection(
    {
        Name = "Kaitun"
    }
)

M:AddParagraph("Kaitun")

M:AddToggle(
    {
        Name = "Kaitun",
        Default = false,
        Flag = "Kaitun",
        Save = true,
        Callback = function(Value)
            _G.RedeemCode = Value
            _G.AutoFarm = Value
            _G.Farmfast = Value
            _G.SelectWeapon = "Combat"
            _G.AutoPlayerHunter = Value
            _G.Auto_Stats_Kaitun = Value
            _G.Auto_Saber = Value
            _G.AutoSuperhuman = Value
            _G.AutoBartilo = Value
            _G.AutoBuyLegendarySword = Value
            _G.BuyAllAib = Value
            StopTween(_G.AutoFarm)
            StopTween(_G.Hunter)
            StopTween(_G.Farmfast)
            StopTween(_G.Auto_Saber)
        end
    }
)

M:AddToggle(
    {
        Name = "Auto Click[Kick]",
        Default = false,
        Flag = "Auto Click",
        Save = true,
        Callback = function(Value)
            _G.AutoClick = Value
        end
    }
)

spawn(
    function()
        game:GetService("RunService").RenderStepped:Connect(
            function()
                if _G.AutoClick or Fastattack then
                    pcall(
                        function()
                            game:GetService "VirtualUser":CaptureController()
                            game:GetService "VirtualUser":Button1Down(Vector2.new(0, 1, 0, 1))
                        end
                    )
                end
            end
        )
    end
)

spawn(
    function()
        while wait() do
            if _G.RedeemCode then
                if MyLevel >= 10 then
                    function RedeemCode(value)
                        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
                    end
                    for i, v in pairs(x2Code) do
                        RedeemCode(v)
                    end
                end
            end
        end
    end
)

local Section =
    M:AddSection(
    {
        Name = "Mob & Boss Farm"
    }
)

if World1 then
    M:AddDropdown(
        {
            Name = "Select Mobs",
            Default = "",
            Options = {
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
                "Prisoner",
                "Dangerous Prisoner",
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
                "Galley Pirate ",
                "Galley Captain"
            },
            Callback = function(Value)
                SelectMonster = Value
            end
        }
    )
end

if World2 then
    M:AddDropdown(
        {
            Name = "Select Mobs",
            Default = "",
            Options = {
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
            },
            Callback = function(Value)
                SelectMonster = Value
            end
        }
    )
end

if World3 then
    M:AddDropdown(
        {
            Name = "Select Mobs",
            Default = "",
            Options = {
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
                "Snow Demon"
            },
            Callback = function(Value)
                SelectMonster = Value
            end
        }
    )
end

M:AddToggle(
    {
        Name = "Farm Mob",
        Default = false,
        Callback = function(Value)
            _G.AutoFarmSelectMonster = Value
        end
    }
)

local Section =
    M:AddSection(
    {
        Name = "Nearest Farm"
    }
)

M:AddToggle(
    {
        Name = "Auto Farm Nearest",
        Default = false,
        Flag = "Auto Farm Nearest",
        Save = true,
        Callback = function(Value)
            _G.AutoFarmNearest = Value
            StopTween(_G.AutoFarmNearest)
        end
    }
)

local Section =
    M:AddSection(
    {
        Name = "Chest Farm"
    }
)

TweenChest =
    M:AddToggle(
    {
        Name = "Auto Chest [MUP]",
        Default = false,
        Flag = "Auto Chest",
        Save = true,
        Callback = function(Value)
            AutoFarmChest = Value
            StopTween(AutoFarmChest)
        end
    }
)

M:AddToggle(
    {
        Name = "Auto Chest[Bypass]",
        Default = false,
        Flag = "Auto Chest[Bypass]",
        Save = true,
        Callback = function(Value)
            _G.ChestBypass = Value
        end
    }
)

M:AddToggle(
    {
        Name = "Stop Only Dark Key or God's Chalice",
        Default = false,
        Flag = "Stop Only Dark Key or God's Chalice",
        Save = true,
        Callback = function(Value)
            _G.StopChest = Value
        end
    }
)
spawn(
    function()
        while wait() do
            if _G.StopChest then
                if
                    game.Players.LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") or
                        game.Players.LocalPlayer.Character:FindFirstChild("Fist of Darkness") or
                        game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or
                        game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice")
                 then
                    AutoFarmChest = false
                    StopTween(AutoFarmChest)
                    TweenChest:Set(false)
                end
            end
        end
    end
)

local Section =
    M:AddSection(
    {
        Name = "Bone Menu"
    }
)

local Bone = M:AddLabel("Bone : ")

spawn(
    function()
        while wait() do
            pcall(
                function()
                    Bone:Set(
                        "Bone You Have : " ..
                            (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Check"))
                    )
                end
            )
        end
    end
)

ToggleBone =
    M:AddToggle(
    {
        Name = "Auto Farm Bone",
        Default = false,
        Flag = "Auto Farm Bone",
        Save = true,
        Callback = function(Value)
            _G.Auto_Bone = Value
            StopTween(_G.Auto_Bone)
        end
    }
)

ToggleRandom =
    M:AddToggle(
    {
        Name = "Auto Random Bone",
        Default = false,
        Flag = "Auto Random Bone",
        Save = true,
        Callback = function(Value)
            _G.Auto_Random_Bone = Value
        end
    }
)
spawn(
    function()
        pcall(
            function()
                while wait(.1) do
                    if _G.Auto_Random_Bone then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
                    end
                end
            end
        )
    end
)

local Section =
    M:AddSection(
    {
        Name = "Other Menu"
    }
)

local EliteProgress = M:AddLabel("")

spawn(
    function()
        pcall(
            function()
                while wait() do
                    EliteProgress:Set(
                        "Elite Progress : " ..
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress")
                    )
                end
            end
        )
    end
)

M:AddToggle(
    {
        Name = "Auto Elite",
        Default = false,
        Flag = "Auto Elite",
        Save = true,
        Callback = function(Value)
            _G.AutoElitehunter = Value
            StopTween(_G.AutoElitehunter)
        end
    }
)

M:AddToggle(
    {
        Name = "Auto Factory",
        Default = false,
        Flag = "Auto Factory",
        Save = true,
        Callback = function(Value)
            _G.AutoFactory = Value
            StopTween(_G.AutoFactory)
        end
    }
)

M:AddToggle(
    {
        Name = "Raid Castle",
        Default = false,
        Flag = "Auto Castle",
        Save = true,
        Callback = function(Value)
            _G.RaidPirate = Value
            StopTween(_G.RaidPirate)
        end
    }
)
local Section =
    M:AddSection(
    {
        Name = "Dough King Menu"
    }
)

M:AddToggle(
    {
        Name = "Auto Katakuri",
        Default = false,
        Flag = "Auto Katakuri",
        Save = true,
        Callback = function(Value)
            _G.AutoDoughtBoss = Value
            StopTween(_G.AutoDoughtBoss)
        end
    }
)

M:AddToggle(
    {
        Name = "Auto Spawn Katakuri",
        Default = true,
        Callback = function(Value)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner", Value)
        end
    }
)

M:AddToggle(
    {
        Name = "Auto Katakuri v2",
        Default = false,
        Flag = "Auto Katakuri v2",
        Save = true,
        Callback = function(Value)
            _G.Autodoughking = Value
            StopTween(_G.Autodoughking)
        end
    }
)

M:AddToggle(
    {
        Name = "Auto Katakuri v2[HOP]",
        Default = false,
        Flag = "Auto Katakuri v2[HOP]",
        Save = true,
        Callback = function(Value)
            _G.Hop = Value
        end
    }
)

local Section =
    M:AddSection(
    {
        Name = "Boss"
    }
)

M:AddParagraph("Auto Farm Boss :", "Chờ Update thôi ae!!!")

local Section =
    M:AddSection(
    {
        Name = "Observation Haki"
    }
)

M:AddToggle(
    {
        Name = "Auto Farm Observation Haki",
        Default = false,
        Flag = "Auto Farm Observation Haki",
        Save = true,
        Callback = function(Value)
            _G.AutoObservation = Value
            StopTween(_G.AutoObservation)
        end
    }
)

M:AddToggle(
    {
        Name = "Auto Farm Observation Haki[HOP]",
        Default = false,
        Flag = "Auto Farm Observation Haki[HOP]",
        Save = true,
        Callback = function(Value)
            _G.AutoObservation_Hop = Value
        end
    }
)

local Section =
    M:AddSection(
    {
        Name = "Melee v2"
    }
)

M:AddToggle(
    {
        Name = "Auto Death Step",
        Default = false,
        Flag = "Auto Death Step",
        Save = true,
        Callback = function(Value)
            _G.AutoDeathStep = Value
        end
    }
)

M:AddToggle(
    {
        Name = "Auto SharkMan Karate",
        Default = false,
        Flag = "Auto SharkMan",
        Save = true,
        Callback = function(Value)
            _G.AutoSharkman = Value
            StopTween(_G.AutoSharkman)
        end
    }
)

M:AddToggle(
    {
        Name = "Auto Electric Claw",
        Default = false,
        Flag = "Auto Electric Claw",
        Save = true,
        Callback = function(Value)
            _G.AutoElectricClaw = Value
            StopTween(_G.AutoElectricClaw)
        end
    }
)

M:AddToggle(
    {
        Name = "Auto Dragon Talon",
        Default = false,
        Flag = "Auto Dragon Talon",
        Save = true,
        Callback = function(Value)
            _G.AutoDragonTalon = Value
        end
    }
)

M:AddToggle(
    {
        Name = "Auto GodHuman",
        Default = false,
        Flag = "Auto GodHuman",
        Save = true,
        Callback = function(Value)
            _G.Auto_God_Human = Value
        end
    }
)

ST:AddToggle(
    {
        Name = "Auto Haki",
        Default = true,
        Callback = function(Value)
            _G.AUTOHAKI = Value
        end
    }
)
spawn(
    function()
        while wait(.1) do
            if _G.AUTOHAKI then
                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                    local args = {
                        [1] = "Buso"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
            end
        end
    end
)

ST:AddToggle(
    {
        Name = "Anti Afk",
        Default = true,
        Callback = function(Value)
            local vu = game:GetService("VirtualUser")
            repeat
                wait()
            until game:IsLoaded()
            game:GetService("Players").LocalPlayer.Idled:connect(
                function()
                    game:GetService("VirtualUser"):ClickButton2(Vector2.new())
                    vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
                    wait(1)
                    vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
                end
            )
        end
    }
)

ST:AddToggle(
    {
        Name = "White screen",
        Default = false,
        Flag = "White screen",
        Save = true,
        Callback = function(Value)
            _G.WhiteScreen = Value
            if _G.WhiteScreen == true then
                game:GetService("RunService"):Set3dRenderingEnabled(false)
            elseif _G.WhiteScreen == false then
                game:GetService("RunService"):Set3dRenderingEnabled(true)
            end
        end
    }
)

function CheckAntiCheatBypass()
    for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
        if v:IsA("LocalScript") then
            if
                v.Name == "General" or v.Name == "Shiftlock" or v.Name == "FallDamage" or v.Name == "4444" or
                    v.Name == "CamBob" or
                    v.Name == "JumpCD" or
                    v.Name == "Looking" or
                    v.Name == "Run"
             then
                v:Destroy()
            end
        end
    end
    for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetDescendants()) do
        if v:IsA("LocalScript") then
            if
                v.Name == "RobloxMotor6DBugFix" or v.Name == "Clans" or v.Name == "Codes" or
                    v.Name == "CustomForceField" or
                    v.Name == "MenuBloodSp" or
                    v.Name == "PlayerList"
             then
                v:Destroy()
            end
        end
    end
end

CheckAntiCheatBypass()

ST:AddToggle(
    {
        Name = "Antiban",
        Default = true,
        Callback = function(Value)
            _G.AntiCheat = Value
            CheckAntiCheatBypass()
        end
    }
)

local Section =
    IQ:AddSection(
    {
        Name = "Saber Menu"
    }
)

local SaberBoss = IQ:AddLabel("Boss Saber : ")
spawn(
    function()
        while wait() do
            pcall(
                function()
                    if
                        game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") or
                            game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") or
                            game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") or
                            game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or
                            game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or
                            game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert")
                     then
                        SaberBoss:Set("Boss Saber : ✅ Spawn")
                    else
                        SaberBoss:Set("Boss Saber : ❌ Not Spawn")
                    end
                end
            )
        end
    end
)

IQ:AddToggle(
    {
        Name = "Auto Saber",
        Default = false,
        Flag = "Auto Saber",
        Save = true,
        Callback = function(Value)
            _G.Auto_Saber = Value
            StopTween(_G.Auto_Saber)
        end
    }
)

IQ:AddToggle(
    {
        Name = "Auto Saber[HOP]",
        Default = false,
        Flag = "Auto Saber[HOP]",
        Save = true,
        Callback = function(Value)
            _G.Hop = Value
        end
    }
)

local Section =
    IQ:AddSection(
    {
        Name = "Pole V.1"
    }
)

local PoleBoss = IQ:AddLabel("Boss Thunder God : ")
spawn(
    function()
        while wait() do
            pcall(
                function()
                    if
                        game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God") or
                            game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God") or
                            game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God") or
                            game:GetService("Workspace").Enemies:FindFirstChild("Thunder God") or
                            game:GetService("Workspace").Enemies:FindFirstChild("Thunder God") or
                            game:GetService("Workspace").Enemies:FindFirstChild("Thunder God")
                     then
                        PoleBoss:Set("Boss Thunder : ✅ Spawn")
                    else
                        PoleBoss:Set("Boss Thunder : ❌ Not Spawn")
                    end
                end
            )
        end
    end
)

TogglePolev1 =
    IQ:AddToggle(
    {
        Name = "Auto Pole V.1",
        Default = false,
        Flag = "Auto Pole",
        Save = true,
        Callback = function(Value)
            _G.Autopole = Value
            StopTween(_G.AutoPole)
        end
    }
)

TogglePolev1Hop =
    IQ:AddToggle(
    {
        Name = "Auto Pole V.1[HOP]",
        Default = false,
        Flag = "Auto Pole[HOP]",
        Save = true,
        Callback = function(Value)
            _G.AutopoleHop = Value
        end
    }
)

local Section =
    IQ:AddSection(
    {
        Name = "Second Sea"
    }
)

IQ:AddToggle(
    {
        Name = "Auto Second Sea",
        Default = false,
        Flag = "Auto Second",
        Save = true,
        Callback = function(Value)
            _G.AutoSecondSea = Value
            StopTween(_G.AutoSecondSea)
        end
    }
)

local Section =
    IQ:AddSection(
    {
        Name = "Vampire"
    }
)
IQ:AddToggle(
    {
        Name = "Auto Vampire",
        Default = false,
        Flag = "Auto Vampire",
        Save = true,
        Callback = function(Value)
            _G.AutoVampire = Value
            StopTween(_G.AutoVampire)
        end
    }
)

local Section =
    IQ:AddSection(
    {
        Name = "SuperHuman"
    }
)

IQ:AddToggle(
    {
        Name = "Auto SuperHuman",
        Default = false,
        Flag = "Auto SuperHuman",
        Save = true,
        Callback = function(Value)
            _G.AutoSuperhuman = Value
            StopTween(_G.AutoSuperhuman)
        end
    }
)

local Section =
    IQ:AddSection(
    {
        Name = "Bartilo"
    }
)

BartiloToggle =
    IQ:AddToggle(
    {
        Name = "Auto Bartilo Quest",
        Default = false,
        Flag = "Auto Bartilo",
        Save = true,
        Callback = function(Value)
            _G.AutoBartilo = Value
            StopTween(_G.AutoBartilo)
            StopTween(_G.AutoFarm)
        end
    }
)

local Section =
    IQ:AddSection(
    {
        Name = "Next Sea Third"
    }
)

IQ:AddToggle(
    {
        Name = "Auto Third Sea",
        Default = false,
        Flag = "Auto Third",
        Save = true,
        Callback = function(Value)
            _G.AutoThirdSea = Value
            StopTween(_G.AutoThirdSea)
        end
    }
)

IQ:AddToggle(
    {
        Name = "Auto Buy Legend Sword",
        Default = false,
        Flag = "Auto Legend",
        Save = true,
        Callback = function(Value)
            _G.AutoBuyLegendarySword = Value
        end
    }
)

local Section =
    IQ:AddSection(
    {
        Name = "Buddy Sword"
    }
)

IQ:AddToggle(
    {
        Name = "Auto Buddy Sword",
        Default = false,
        Flag = "Auto Buddy",
        Save = true,
        Callback = function(Value)
            _G.AutoBudySword = Value
            StopTween(_G.AutoBudySword)
        end
    }
)

IQ:AddToggle(
    {
        Name = "Auto Buddy Sword[HOP]",
        Default = false,
        Flag = "Auto Buddy[HOP]",
        Save = true,
        Callback = function(Value)
            _G.Hop = Value
        end
    }
)

local Section =
    IQ:AddSection(
    {
        Name = "Soul Guita"
    }
)

IQ:AddToggle(
    {
        Name = "Auto Soul Guita",
        Default = false,
        Flag = "Auto Soul",
        Save = true,
        Callback = function(Value)
            _G.AutoNevaSoulGuitar = Value
            StopTween(_G.AutoNevaSoulGuitar)
        end
    }
)

IQ:AddToggle(
    {
        Name = "Auto Soul Guita[HOP]",
        Default = false,
        Flag = "Auto Soul[HOP]",
        Save = true,
        Callback = function(Value)
            _G.Hop = Value
        end
    }
)

IQ:AddToggle(
    {
        Name = "Auto Auto Observation V2",
        Default = false,
        Flag = "Auto ObservationV2",
        Save = true,
        Callback = function(Value)
            _G.AutoObservationHakiV2 = Value
            StopTween(_G.AutoObservationHakiV2)
        end
    }
)

local Section =
    IQ:AddSection(
    {
        Name = "Auto Dual Curset Katana[Not Work]"
    }
)

IQ:AddToggle(
    {
        Name = "Auto Dual Curset Katana",
        Default = false,
        Flag = "Auto DualCursetKatana",
        Save = true,
        Callback = function(Value)
            Auto_Cursed_Dual_Katana = Value
            StopTween(Auto_Cursed_Dual_Katana)
        end
    }
)

local Section =
    IQ:AddSection(
    {
        Name = "Tushita"
    }
)

IQ:AddToggle(
    {
        Name = "Auto Tushita",
        Default = false,
        Flag = "Auto Tushita",
        Save = true,
        Callback = function(Value)
            _G.Autotushita = Value
            StopTween(_G.Autotushita)
        end
    }
)

IQ:AddToggle(
    {
        Name = "Auto Tushita[HOP]",
        Default = false,
        Flag = "Auto Tushita[HOP]",
        Save = true,
        Callback = function(Value)
            _G.Hop = Value
        end
    }
)

local Section =
    IQ:AddSection(
    {
        Name = "Cavander"
    }
)

IQ:AddToggle(
    {
        Name = "Auto Cavander",
        Default = false,
        Flag = "Auto Cavander",
        Save = true,
        Callback = function(Value)
            _G.AutoCarvender = Value
            StopTween(_G.AutoCarvender)
        end
    }
)

IQ:AddToggle(
    {
        Name = "Auto Cavander[HOP]",
        Default = false,
        Flag = "Auto Cavander[HOP]",
        Save = true,
        Callback = function(Value)
            _G.Hop = Value
        end
    }
)

local Section =
    IQ:AddSection(
    {
        Name = "Twin Hook"
    }
)

IQ:AddToggle(
    {
        Name = "Auto Twin Hook",
        Default = false,
        Flag = "Auto Twin",
        Save = true,
        Callback = function(Value)
            _G.AutoTwinHook = Value
            StopTween(_G.AutoTwinHook)
        end
    }
)

IQ:AddToggle(
    {
        Name = "Auto Twin Hook[HOP]",
        Default = false,
        Flag = "Auto Twin[HOP]",
        Save = true,
        Callback = function(Value)
            _G.Hop = Value
        end
    }
)

local Section =
    IQ:AddSection(
    {
        Name = "ArenaTrainer"
    }
)

IQ:AddLabel("Cho thằng nào đell hiểu thì đây là tự động đánh hình nộm")

IQ:AddToggle(
    {
        Name = "Automatically hit the dummy",
        Default = false,
        Flag = "Auto dummy",
        Save = true,
        Callback = function(Value)
            _G.Namfon = Value
            StopTween(_G.Namfon)
        end
    }
)

IQ:AddToggle(
    {
        Name = "Automatically hit the dummy[HOP]",
        Default = false,
        Flag = "Auto dummy[HOP]",
        Save = true,
        Callback = function(Value)
            _G.Hop = Value
        end
    }
)

local Section =
    IQ:AddSection(
    {
        Name = "Seperator Hallow Scythe"
    }
)

IQ:AddToggle(
    {
        Name = "Auto Hallow Scythe",
        Default = false,
        Flag = "Auto Hallow",
        Save = true,
        Callback = function(Value)
            _G.AutoFarmBossHallow = Value
            StopTween(_G.AutoFarmBossHallow)
        end
    }
)

ToggleHallow =
    IQ:AddToggle(
    {
        Name = "Auto Hallow Scythe[HOP]",
        Default = false,
        Flag = "Auto Hallow[HOP]",
        Save = true,
        Callback = function(Value)
            _G.Hop = Value
        end
    }
)

local Section =
    IQ:AddSection(
    {
        Name = "Dark Dragger"
    }
)

IQ:AddToggle(
    {
        Name = "Auto Dark Dragger",
        Default = false,
        Flag = "Auto Dark",
        Save = true,
        Callback = function(Value)
            _G.AutoDarkDagger = Value
            StopTween(_G.AutoDarkDagger)
        end
    }
)

IQ:AddToggle(
    {
        Name = "Auto Dark Dragger[HOP]",
        Default = false,
        Flag = "Auto Dark[HOP]",
        Save = true,
        Callback = function(Value)
            _G.Hop = Value
        end
    }
)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if
                        (_G.AutoDarkDagger_Hop and _G.AutoDarkDagger) and World3 and
                            not game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form") and
                            not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form")
                     then
                        Hop()
                    end
                end
            end
        )
    end
)

function EquipAllWeapon()
    pcall(
        function()
            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if
                    v:IsA("Tool") and
                        not (v.Name == "Summon Sea Beast" or v.Name == "Water Body" or v.Name == "Awakening")
                 then
                    local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name)
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid)
                    wait(1)
                end
            end
        end
    )
end

local Section =
    IQ:AddSection(
    {
        Name = "SeaBeast"
    }
)

IQ:AddToggle(
    {
        Name = "Auto Seabeast",
        Default = false,
        Flag = "Auto Seabeast",
        Save = true,
        Callback = function(Value)
            _G.AutoSeaBest = Value
            StopTween(_G.AutoSeaBest)
        end
    }
)

IQ:AddToggle(
    {
        Name = "Auto Seabeast[HOP]",
        Default = false,
        Flag = "Auto Seabeast[HOP]",
        Save = true,
        Callback = function(Value)
            _G.Hop = Value
        end
    }
)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.Hop == true then
                        Hop()
                    elseif _G.Hop == false then
                    end
                end
            end
        )
    end
)

local Section =
    IQ:AddSection(
    {
        Name = "Mirrage Menu"
    }
)

IQ:AddToggle(
    {
        Name = "Auto Summon and Find Mirrage Island",
        Default = false,
        Flag = "Auto Mirrage",
        Save = true,
        Callback = function(Value)
            _G.dao = Value
            if Value then
                _G.dao = true
            else
                _G.dao = false
            end

            if _G.dao then
                local args = {
                    [1] = "requestEntrance",
                    [2] = Vector3.new(-12463.6025390625, 378.3270568847656, -7566.0830078125)
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    -5411.22021,
                    778.609863,
                    -2682.27759,
                    0.927179396,
                    0,
                    0.374617696,
                    0,
                    1,
                    0,
                    -0.374617696,
                    0,
                    0.927179396
                )
                wait(0)
                -- Script generated by SimpleSpy - credits to exx#9394

                local args = {
                    [1] = "BuyBoat",
                    [2] = "PirateBrigade"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

                function two(gotoCFrame) --- Tween
                    pcall(
                        function()
                            game.Players.LocalPlayer.Character.Humanoid.Sit = false
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                        end
                    )
                    if
                        (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position -
                            gotoCFrame.Position).Magnitude <= 200
                     then
                        pcall(
                            function()
                                tweenz:Cancel()
                            end
                        )
                        game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = gotoCFrame
                    else
                        local tween_s = game:service "TweenService"
                        local info =
                            TweenInfo.new(
                            (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position -
                                gotoCFrame.Position).Magnitude / 325,
                            Enum.EasingStyle.Linear
                        )
                        tween, err =
                            pcall(
                            function()
                                tweenz =
                                    tween_s:Create(
                                    game.Players.LocalPlayer.Character["HumanoidRootPart"],
                                    info,
                                    {CFrame = gotoCFrame}
                                )
                                tweenz:Play()
                            end
                        )
                        if not tween then
                            return err
                        end
                    end
                    function _TweenCanCle()
                        tweenz:Cancel()
                    end
                end
                two(
                    CFrame.new(
                        -5100.7085,
                        29.968586,
                        -6792.45459,
                        -0.33648631,
                        -0.0396691673,
                        0.940852463,
                        -6.40461678e-07,
                        0.999112308,
                        0.0421253517,
                        -0.941688359,
                        0.0141740013,
                        -0.336187631
                    )
                )

                wait(13)
                for _, v in next, workspace.Boats.PirateBrigade:GetDescendants() do
                    if v.Name:find("VehicleSeat") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                        if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                            topos(
                                game:GetService("Workspace").Map:FindFirstChild("MysticIsland").HumanoidRootPart.CFrame *
                                    CFrame.new(0, 500, -100)
                            )
                        end
                    end
                end
            end
        end
    }
)

IQ:AddToggle(
    {
        Name = "Find Mirrage[HOP]",
        Default = false,
        Flag = "Auto Mirrage2",
        Save = true,
        Callback = function(Value)
            _G.Hop = Value
        end
    }
)

local Section =
    S:AddSection(
    {
        Name = "Stats Select"
    }
)

spawn(
    function()
        while wait() do
            local count10 = 0
            local count = 0
            for i, v in pairs(game.workspace:GetChildren()) do
                if string.find(v.Name, "Chest") and v:IsA("Part") then
                    count10 = count10 + 1
                end
            end
            for i, v in pairs(game.Workspace:GetChildren()) do
                if v.Name == "Blox Fruit Dealer" then
                else
                    if string.find(v.Name, "Fruit") and v:IsA("Tool") then
                        count = count + 1
                    end
                    if string.find(v.Name, "Fruit") and v:IsA("Model") then
                        count = count + 1
                    end
                end
            end
            Fruit:Set("Fruit : " .. count)
            Chest:Set("Chest : " .. count10)
            wait(5)
        end
    end
)

Chest = S:AddLabel("Chest")

Fruit = S:AddLabel("Fruit")

local Pointstat = S:AddLabel("Stat Points")

spawn(
    function()
        while wait() do
            pcall(
                function()
                    Pointstat:Set(
                        "Stat Points : " .. tostring(game:GetService("Players")["LocalPlayer"].Data.Points.Value)
                    )
                end
            )
        end
    end
)

local Melee = S:AddLabel("Melee : ")
local Defense = S:AddLabel("Defense : ")
local Sword = S:AddLabel("Sword : ")
local Gun = S:AddLabel("Gun : ")
local Fruit = S:AddLabel("Fruit : ")

spawn(
    function()
        while wait() do
            pcall(
                function()
                    Melee:Set("Melee : " .. game.Players.localPlayer.Data.Stats.Melee.Level.Value)
                end
            )
        end
    end
)

spawn(
    function()
        while wait() do
            pcall(
                function()
                    Defense:Set("Defense : " .. game.Players.localPlayer.Data.Stats.Defense.Level.Value)
                end
            )
        end
    end
)

spawn(
    function()
        while wait() do
            pcall(
                function()
                    Sword:Set("Sword : " .. game.Players.localPlayer.Data.Stats.Sword.Level.Value)
                end
            )
        end
    end
)

spawn(
    function()
        while wait() do
            pcall(
                function()
                    Gun:Set("Gun : " .. game.Players.localPlayer.Data.Stats.Gun.Level.Value)
                end
            )
        end
    end
)

spawn(
    function()
        while wait() do
            pcall(
                function()
                    Fruit:Set("Fruit : " .. game.Players.localPlayer.Data.Stats["Demon Fruit"].Level.Value)
                end
            )
        end
    end
)

S:AddToggle(
    {
        Name = "Auto Stats Kaitun",
        Default = false,
        Flag = "Auto Kaitun",
        Save = true,
        Callback = function(Value)
            _G.Auto_Stats_Kaitun = Value
        end
    }
)

S:AddToggle(
    {
        Name = "Melee",
        Default = false,
        Flag = "Auto Melee",
        Save = true,
        Callback = function(Value)
            melee = Value
        end
    }
)

S:AddToggle(
    {
        Name = "Defense",
        Default = false,
        Flag = "Auto Defense",
        Save = true,
        Callback = function(Value)
            defense = Value
        end
    }
)

S:AddToggle(
    {
        Name = "Sword",
        Default = false,
        Flag = "Auto Sword",
        Save = true,
        Callback = function(Value)
            sword = Value
        end
    }
)

S:AddToggle(
    {
        Name = "Gun",
        Default = false,
        Flag = "Auto Gun",
        Save = true,
        Callback = function(Value)
            gun = Value
        end
    }
)

S:AddToggle(
    {
        Name = "Devil Fruit",
        Default = false,
        Flag = "Auto Fruit",
        Save = true,
        Callback = function(Value)
            demonfruit = Value
        end
    }
)

PointStats = 1
S:AddSlider(
    {
        Name = "Point",
        Min = 1,
        Max = 2450,
        Default = 1,
        Color = Color3.fromRGB(255, 255, 255),
        Increment = 1,
        ValueName = "Point",
        Flag = "Auto Point",
        Save = true,
        Callback = function(Value)
            PointStats = Value
        end
    }
)

local Section =
    E:AddSection(
    {
        Name = "ESP MENU"
    }
)

E:AddToggle(
    {
        Name = "ESP Players",
        Default = false,
        Flag = "ESP Players",
        Save = true,
        Callback = function(a)
            ESPPlayer = a
            UpdatePlayerChams()
        end
    }
)
function isnil(thing)
    return (thing == nil)
end
local function round(n)
    return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
    for i, v in pairs(game:GetService "Players":GetChildren()) do
        pcall(
            function()
                if not isnil(v.Character) then
                    if ESPPlayer then
                        if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild("NameEsp" .. Number) then
                            local bill = Instance.new("BillboardGui", v.Character.Head)
                            bill.Name = "NameEsp" .. Number
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v.Character.Head
                            bill.AlwaysOnTop = true
                            local name = Instance.new("TextLabel", bill)
                            name.Font = Enum.Font.GothamSemibold
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Text =
                                (v.Name ..
                                " \n" ..
                                    round(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                            v.Character.Head.Position).Magnitude / 3
                                    ) ..
                                        " Distance")
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.TextYAlignment = "Top"
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            if v.Team == game.Players.LocalPlayer.Team then
                                name.TextColor3 = Color3.new(0, 255, 0)
                            else
                                name.TextColor3 = Color3.new(255, 0, 0)
                            end
                        else
                            v.Character.Head["NameEsp" .. Number].TextLabel.Text =
                                (v.Name ..
                                " | " ..
                                    round(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                            v.Character.Head.Position).Magnitude / 3
                                    ) ..
                                        " Distance\nHealth : " ..
                                            round(v.Character.Humanoid.Health * 100 / v.Character.Humanoid.MaxHealth) ..
                                                "%")
                        end
                    else
                        if v.Character.Head:FindFirstChild("NameEsp" .. Number) then
                            v.Character.Head:FindFirstChild("NameEsp" .. Number):Destroy()
                        end
                    end
                end
            end
        )
    end
end

E:AddToggle(
    {
        Name = "ESP Fruits",
        Default = false,
        Flag = "ESP Fruits",
        Save = true,
        Callback = function(b)
            DevilFruitESP = b
            while DevilFruitESP do
                wait()
                UpdateDevilChams()
            end
        end
    }
)
function UpdateDevilChams()
    for i, v in pairs(game.Workspace:GetChildren()) do
        pcall(
            function()
                if DevilFruitESP then
                    if string.find(v.Name, "Fruit") then
                        if not v.Handle:FindFirstChild("NameEsp" .. Number) then
                            local bill = Instance.new("BillboardGui", v.Handle)
                            bill.Name = "NameEsp" .. Number
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v.Handle
                            bill.AlwaysOnTop = true
                            local name = Instance.new("TextLabel", bill)
                            name.Font = Enum.Font.GothamSemibold
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.TextYAlignment = "Top"
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(255, 255, 255)
                            name.Text =
                                (v.Name ..
                                " \n" ..
                                    round(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                            v.Handle.Position).Magnitude / 3
                                    ) ..
                                        " Distance")
                        else
                            v.Handle["NameEsp" .. Number].TextLabel.Text =
                                (v.Name ..
                                "   \n" ..
                                    round(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                            v.Handle.Position).Magnitude / 3
                                    ) ..
                                        " Distance")
                        end
                    end
                else
                    if v.Handle:FindFirstChild("NameEsp" .. Number) then
                        v.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
                    end
                end
            end
        )
    end
end

spawn(
    function()
        while wait(2) do
            if FlowerESP then
                UpdateFlowerChams()
            end
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
        end
    end
)

E:AddToggle(
    {
        Name = "ESP Island",
        Default = false,
        Flag = "ESP Island",
        Save = true,
        Callback = function(Value)
            IslandESP = Value
            while IslandESP do
                wait()
                UpdateIslandESP()
            end
        end
    }
)
function UpdateIslandESP()
    for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(
            function()
                if IslandESP then
                    if v.Name ~= "Sea" then
                        if not v:FindFirstChild("NameEsp") then
                            local bill = Instance.new("BillboardGui", v)
                            bill.Name = "NameEsp"
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new("TextLabel", bill)
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.TextYAlignment = "Top"
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(7, 236, 240)
                        else
                            v["NameEsp"].TextLabel.Text =
                                (v.Name ..
                                "   \n" ..
                                    round(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                            3
                                    ) ..
                                        " Distance")
                        end
                    end
                else
                    if v:FindFirstChild("NameEsp") then
                        v:FindFirstChild("NameEsp"):Destroy()
                    end
                end
            end
        )
    end
end

E:AddToggle(
    {
        Name = "ESP Flower",
        Default = false,
        Flag = "ESP Flower",
        Save = true,
        Callback = function(Value)
            FlowerESP = Value
            UpdateFlowerChams()
        end
    }
)
function UpdateFlowerChams()
    for i, v in pairs(game.Workspace:GetChildren()) do
        pcall(
            function()
                if v.Name == "Flower2" or v.Name == "Flower1" then
                    if FlowerESP then
                        if not v:FindFirstChild("NameEsp" .. Number) then
                            local bill = Instance.new("BillboardGui", v)
                            bill.Name = "NameEsp" .. Number
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new("TextLabel", bill)
                            name.Font = Enum.Font.GothamSemibold
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.TextYAlignment = "Top"
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(255, 0, 0)
                            if v.Name == "Flower1" then
                                name.Text =
                                    ("Blue Flower" ..
                                    " \n" ..
                                        round(
                                            (game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                                3
                                        ) ..
                                            " Distance")
                                name.TextColor3 = Color3.fromRGB(0, 0, 255)
                            end
                            if v.Name == "Flower2" then
                                name.Text =
                                    ("Red Flower" ..
                                    " \n" ..
                                        round(
                                            (game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                                3
                                        ) ..
                                            " Distance")
                                name.TextColor3 = Color3.fromRGB(255, 0, 0)
                            end
                        else
                            v["NameEsp" .. Number].TextLabel.Text =
                                (v.Name ..
                                "   \n" ..
                                    round(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                            3
                                    ) ..
                                        " Distance")
                        end
                    else
                        if v:FindFirstChild("NameEsp" .. Number) then
                            v:FindFirstChild("NameEsp" .. Number):Destroy()
                        end
                    end
                end
            end
        )
    end
end

local TimeRaid = RA:AddLabel("Wait For Dungeon")

local checkisland = RA:AddLabel("Island : Not Raid")

_G.SelectChip = selectraids or ""
Raidslist = {}
RaidsModule = require(game.ReplicatedStorage.Raids)
for i, v in pairs(RaidsModule.raids) do
    table.insert(Raidslist, v)
end
for i, v in pairs(RaidsModule.advancedRaids) do
    table.insert(Raidslist, v)
end

RA:AddDropdown(
    {
        Name = "Select Chips",
        Default = "",
        Options = Raidslist,
        Flag = "Select Chips",
        Save = true,
        Callback = function(Value)
            _G.SelectChip = Value
        end
    }
)

RA:AddButton(
    {
        Name = "Buy Chip",
        Callback = function()
            _G.AutoBuyChip = value
        end
    }
)

RA:AddButton(
    {
        Name = "Buy Chips Select",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip)
        end
    }
)

RA:AddToggle(
    {
        Name = "Auto Start Raid",
        Default = false,
        Flag = "Auto Start",
        Save = true,
        Callback = function(Value)
            _G.Auto_StartRaid = Value
        end
    }
)

local Section =
    RA:AddSection(
    {
        Name = "Raid Menu"
    }
)

RA:AddToggle(
    {
        Name = "KillAura",
        Default = false,
        Flag = "Auto KillAura",
        Save = true,
        Callback = function(Value)
            _G.Kill_Aura = Value
        end
    }
)

RA:AddToggle(
    {
        Name = "Next Island",
        Default = false,
        Flag = "Auto NextIsland",
        Save = true,
        Callback = function(Value)
            _G.Auto_Dungeon = Value
            StopTween(_G.Auto_Dungeon)
        end
    }
)

RA:AddToggle(
    {
        Name = "Auto Awakener",
        Default = false,
        Flag = "Auto Awakener",
        Save = true,
        Callback = function(Value)
            _G.Auto_Awakener = Value
        end
    }
)

local Section =
    RA:AddSection(
    {
        Name = "Raid Law Menu"
    }
)

RA:AddToggle(
    {
        Name = "Auto Buy Chips Law[Raid]",
        Default = false,
        Flag = "Auto Chips Law",
        Save = true,
        Callback = function(Value)
            _G.Auto_Buy_Law_Chip = Value
        end
    }
)

RA:AddToggle(
    {
        Name = "Start Raid Law",
        Default = false,
        Flag = "Auto Start Raid Law",
        Save = true,
        Callback = function(Value)
            _G.Auto_Start_Law_Dungeon = Value
        end
    }
)

RA:AddToggle(
    {
        Name = "Auto Kill Law",
        Default = false,
        Flag = "Auto Kill Law",
        Save = true,
        Callback = function(Value)
            _G.Auto_Kill_Law = Value
            StopTween(_G.Auto_Kill_Law)
        end
    }
)

local Section =
    LC:AddSection(
    {
        Name = "Teleport Island"
    }
)

if World1 then
    LC:AddDropdown(
        {
            Name = "Select Island",
            Default = "",
            Options = {
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
            },
            Flag = "Select Island",
            Save = true,
            Callback = function(Value)
                _G.SelectIsland = Value
            end
        }
    )
end

if World2 then
    LC:AddDropdown(
        {
            Name = "Select Island",
            Default = "",
            Options = {
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
            },
            Flag = "Select Island",
            Save = true,
            Callback = function(Value)
                _G.SelectIsland = Value
            end
        }
    )
end

if World3 then
    LC:AddDropdown(
        {
            Name = "Select Island",
            Default = "",
            Options = {
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
                "Tiki Outpost New",
                "Candy Island New⛄"
            },
            Flag = "Select Island",
            Save = true,
            Callback = function(Value)
                _G.SelectIsland = Value
            end
        }
    )
end

LC:AddToggle(
    {
        Name = "Teleport To Island",
        Default = false,
        Callback = function(Value)
            _G.TeleportIsland = Value
            if _G.TeleportIsland == true then
                repeat
                    wait()
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
                        topos(CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
                    elseif _G.SelectIsland == "Sky Island 1" then
                        topos(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
                    elseif _G.SelectIsland == "Sky Island 2" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "requestEntrance",
                            Vector3.new(-4607.82275, 872.54248, -1667.55688)
                        )
                    elseif _G.SelectIsland == "Sky Island 3" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "requestEntrance",
                            Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047)
                        )
                    elseif _G.SelectIsland == "Prison" then
                        topos(CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
                    elseif _G.SelectIsland == "Magma Village" then
                        topos(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
                    elseif _G.SelectIsland == "Under Water Island" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "requestEntrance",
                            Vector3.new(61163.8515625, 11.6796875, 1819.7841796875)
                        )
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
                        topos(CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
                    elseif _G.SelectIsland == "Factory" then
                        topos(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                    elseif _G.SelectIsland == "Colossuim" then
                        topos(CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
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
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "requestEntrance",
                            Vector3.new(
                                -5071.82324,
                                314.858734,
                                -3150.69922,
                                -0.392243683,
                                -1.68831065e-08,
                                -0.919861317,
                                2.14809548e-09,
                                1,
                                -1.9269951e-08,
                                0.919861317,
                                -9.53446655e-09,
                                -0.392243683
                            )
                        )
                    elseif _G.SelectIsland == "MiniSky" then
                        topos(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
                    elseif _G.SelectIsland == "Port Town" then
                        topos(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
                    elseif _G.SelectIsland == "Hydra Island" then
                        topos(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
                    elseif _G.SelectIsland == "Floating Turtle" then
                        topos(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
                    elseif _G.SelectIsland == "Mansion" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "requestEntrance",
                            Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375)
                        )
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
                    elseif _G.SelectIsland == "Candy Island New⛄" then
                        topos(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
                    elseif _G.SelectIsland == "Tiki Outpost New" then
                        topos(
                            CFrame.new(
                                -16101.1885,
                                12.8422165,
                                380.942291,
                                0.194113985,
                                1.39194061e-08,
                                -0.980978966,
                                -9.82904691e-09,
                                1,
                                1.22443504e-08,
                                0.980978966,
                                7.26528837e-09,
                                0.194113985
                            )
                        )
                    else
                        _G.TeleportIsland = false
                        StopTween(_G.TeleportIsland)
                    end
                until not _G.TeleportIsland
            end
            StopTween(_G.TeleportIsland)
        end
    }
)

local Section =
    LC:AddSection(
    {
        Name = "Teleport NPC"
    }
)

NPC1 = {
    "Random Devil Fruit",
    "Blox Fruits Dealer",
    "Remove Devil Fruit",
    "Ability Teacher",
    "Dark Step",
    "Electro",
    "Fishman Karate"
}

NPC2 = {
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
}

NPC3 = {
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
    "Uzoth",
    "Spy",
    "Beast Hunter",
    "Shafi"
}

if World1 then
    LC:AddDropdown(
        {
            Name = "Select NPC",
            Default = "",
            Options = NPC1,
            Flag = "Select NPC",
            Save = true,
            Callback = function(Value)
                _G.SelectNPC = Value
            end
        }
    )
end
if World2 then
    LC:AddDropdown(
        {
            Name = "Select NPC",
            Default = "",
            Options = NPC2,
            Flag = "Select NPC",
            Save = true,
            Callback = function(Value)
                _G.SelectNPC = Value
            end
        }
    )
end
if World3 then
    LC:AddDropdown(
        {
            Name = "Select NPC",
            Default = "",
            Options = NPC3,
            Flag = "Select NPC",
            Save = true,
            Callback = function(Value)
                _G.SelectNPC = Value
            end
        }
    )
end

LC:AddToggle(
    {
        Name = "Teleport To NPC",
        Default = false,
        Callback = function(Value)
            _G.TeleportNPC = Value
            if _G.TeleportNPC == true then
                repeat
                    wait()
                    if _G.SelectNPC == "Dargon Berath" then
                        topos(CFrame.new(703.372986, 186.985519, 654.522034, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                    elseif _G.SelectNPC == "Mtsterious Man" then
                        topos(
                            CFrame.new(
                                -2574.43335,
                                1627.92371,
                                -3739.35767,
                                0.378697902,
                                -9.06400288e-09,
                                0.92552036,
                                -8.95582009e-09,
                                1,
                                1.34578926e-08,
                                -0.92552036,
                                -1.33852689e-08,
                                0.378697902
                            )
                        )
                    elseif _G.SelectNPC == "Mysterious Scientist" then
                        topos(
                            CFrame.new(
                                -6437.87793,
                                250.645355,
                                -4498.92773,
                                0.502376854,
                                -1.01223634e-08,
                                -0.864648759,
                                2.34106086e-08,
                                1,
                                1.89508653e-09,
                                0.864648759,
                                -2.11940012e-08,
                                0.502376854
                            )
                        )
                    elseif _G.SelectNPC == "Awakening Expert" then
                        topos(
                            CFrame.new(
                                -408.098846,
                                16.0459061,
                                247.432846,
                                0.028394036,
                                6.17599138e-10,
                                0.999596894,
                                -5.57905944e-09,
                                1,
                                -4.59372484e-10,
                                -0.999596894,
                                -5.56376767e-09,
                                0.028394036
                            )
                        )
                    elseif _G.SelectNPC == "Nerd" then
                        topos(CFrame.new(-401.783722, 73.0859299, 262.306702, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                    elseif _G.SelectNPC == "Bar Manager" then
                        topos(CFrame.new(-385.84726, 73.0458984, 316.088806, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                    elseif _G.SelectNPC == "Blox Fruits Dealer" then
                        topos(
                            CFrame.new(
                                -450.725464,
                                73.0458984,
                                355.636902,
                                -0.780352175,
                                -2.7266168e-08,
                                0.625340283,
                                9.78516468e-09,
                                1,
                                5.58128797e-08,
                                -0.625340283,
                                4.96727601e-08,
                                -0.780352175
                            )
                        )
                    elseif _G.SelectNPC == "Trevor" then
                        topos(CFrame.new(-341.498322, 331.886444, 643.024963, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                    elseif _G.SelectNPC == "Plokster" then
                        topos(
                            CFrame.new(
                                -1885.16016,
                                88.3838196,
                                -1912.28723,
                                -0.513468027,
                                0,
                                0.858108759,
                                0,
                                1,
                                0,
                                -0.858108759,
                                0,
                                -0.513468027
                            )
                        )
                    elseif _G.SelectNPC == "Enhancement Editor" then
                        topos(CFrame.new(-346.820221, 72.9856339, 1194.36218, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                    elseif _G.SelectNPC == "Pirate Recruiter" then
                        topos(CFrame.new(-428.072998, 72.9495239, 1445.32422, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                    elseif _G.SelectNPC == "Marines Recruiter" then
                        topos(
                            CFrame.new(
                                -1349.77295,
                                72.9853363,
                                -1045.12964,
                                0.866493046,
                                0,
                                -0.499189168,
                                0,
                                1,
                                0,
                                0.499189168,
                                0,
                                0.866493046
                            )
                        )
                    elseif _G.SelectNPC == "Chemist" then
                        topos(CFrame.new(-2777.45288, 72.9919434, -3572.25732, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                    elseif _G.SelectNPC == "Ghoul Mark" then
                        topos(CFrame.new(635.172546, 125.976357, 33219.832, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                    elseif _G.SelectNPC == "Cyborg" then
                        topos(CFrame.new(629.146851, 312.307373, -531.624146, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                    elseif _G.SelectNPC == "Guashiem" then
                        topos(
                            CFrame.new(
                                937.953003,
                                181.083359,
                                33277.9297,
                                1,
                                -8.60126406e-08,
                                3.81773896e-17,
                                8.60126406e-08,
                                1,
                                -1.89969598e-16,
                                -3.8177373e-17,
                                1.89969598e-16,
                                1
                            )
                        )
                    elseif _G.SelectNPC == "El Admin" then
                        topos(
                            CFrame.new(
                                1322.80835,
                                126.345039,
                                33135.8789,
                                0.988783717,
                                -8.69797603e-08,
                                -0.149354503,
                                8.62223786e-08,
                                1,
                                -1.15461916e-08,
                                0.149354503,
                                -1.46101409e-09,
                                0.988783717
                            )
                        )
                    elseif _G.SelectNPC == "El Rodolfo" then
                        topos(
                            CFrame.new(
                                941.228699,
                                40.4686775,
                                32778.9922,
                                -0.818029106,
                                -1.19524382e-08,
                                0.575176775,
                                -1.28741648e-08,
                                1,
                                2.47053866e-09,
                                -0.575176775,
                                -5.38394795e-09,
                                -0.818029106
                            )
                        )
                    elseif _G.SelectNPC == "Arowe" then
                        topos(
                            CFrame.new(
                                -1994.51038,
                                125.519142,
                                -72.2622986,
                                -0.16715166,
                                -6.55417338e-08,
                                -0.985931218,
                                -7.13315558e-08,
                                1,
                                -5.43836585e-08,
                                0.985931218,
                                6.12376851e-08,
                                -0.16715166
                            )
                        )
                    elseif _G.SelectNPC == "Random Devil Fruit" then
                        topos(
                            CFrame.new(
                                -1436.19727,
                                61.8777695,
                                4.75247526,
                                -0.557794094,
                                2.74216543e-08,
                                0.829979479,
                                5.83273234e-08,
                                1,
                                6.16037932e-09,
                                -0.829979479,
                                5.18467118e-08,
                                -0.557794094
                            )
                        )
                    elseif _G.SelectNPC == "Blox Fruits Dealer" then
                        topos(CFrame.new(-923.255066, 7.67800522, 1608.61011, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                    elseif _G.SelectNPC == "Remove Devil Fruit" then
                        topos(CFrame.new(5664.80469, 64.677681, 867.85907, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                    elseif _G.SelectNPC == "Ability Teacher" then
                        topos(
                            CFrame.new(
                                -1057.67822,
                                9.65220833,
                                1799.49146,
                                -0.865874112,
                                -9.26330159e-08,
                                0.500262439,
                                -7.33759435e-08,
                                1,
                                5.816689e-08,
                                -0.500262439,
                                1.36579752e-08,
                                -0.865874112
                            )
                        )
                    elseif _G.SelectNPC == "Dark Step" then
                        topos(CFrame.new(-987.873047, 13.7778397, 3989.4978, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                    elseif _G.SelectNPC == "Electro" then
                        topos(CFrame.new(-5389.49561, 13.283, -2149.80151, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                    elseif _G.SelectNPC == "Fishman Karate" then
                        topos(CFrame.new(61581.8047, 18.8965912, 987.832703, 1, 0, 0, 0, 1, 0, 0, 0, 1))
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
                    elseif _G.SelectNPC == "Spy" then
                        topos(
                            CFrame.new(
                                -16467.9727,
                                527.77948,
                                537.789185,
                                -0.0820864514,
                                -8.05455471e-08,
                                0.996625185,
                                7.25887404e-08,
                                1,
                                8.67970158e-08,
                                -0.996625185,
                                7.94686343e-08,
                                -0.0820864514
                            )
                        )
                    elseif _G.SelectNPC == "Beast Hunter" then
                        topos(
                            CFrame.new(
                                -16283.6279,
                                72.7846222,
                                261.499695,
                                0.997676075,
                                8.0908265e-08,
                                0.0681359023,
                                -7.95997366e-08,
                                1,
                                -2.19196554e-08,
                                -0.0681359023,
                                1.64451155e-08,
                                0.997676075
                            )
                        )
                    elseif _G.SelectNPC == "Shafi" then
                        topos(
                            CFrame.new(
                                -16516.3965,
                                23.1659603,
                                -190.191513,
                                -0.978645384,
                                2.56767185e-09,
                                -0.205555975,
                                8.21029023e-10,
                                1,
                                8.58245919e-09,
                                0.205555975,
                                8.23041635e-09,
                                -0.978645384
                            )
                        )
                    end
                until not _G.TeleportNPC
            end
            StopTween(_G.TeleportNPC)
        end
    }
)

local Section =
    LC:AddSection(
    {
        Name = "Teleport SeSeabeast"
    }
)

LC:AddToggle(
    {
        Name = "Teleport to Seabeast",
        Default = false,
        Flag = "Teleport to Seabeast",
        Save = true,
        Callback = function(Value)
            for i, v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                if v:FindFirstChild("HumanoidRootPart") then
                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 100, 0))
                end
            end
        end
    }
)

local Section =
    LC:AddSection(
    {
        Name = "Teleport Mirrage"
    }
)

LC:AddButton(
    {
        Name = "Revome Frog",
        Callback = function()
            game:GetService("Lighting").LightingLayers:Destroy()
            game:GetService("Lighting").Sky:Destroy()
        end
    }
)

LC:AddToggle(
    {
        Name = "Teleport To Mirage Island",
        Default = false,
        Flag = "Teleport to Mirage",
        Save = true,
        Callback = function(Value)
            _G.AutoMysticIsland = Value
            StopTween(_G.AutoMysticIsland)
        end
    }
)

local Section =
    LC:AddSection(
    {
        Name = "Players"
    }
)

spawn(
    function()
        while wait() do
            pcall(
                function()
                    for i, v in pairs(game:GetService("Players"):GetPlayers()) do
                        if i == 12 then
                            plyserv:Set("Players :" .. " " .. i .. " " .. "/" .. " " .. "12" .. " " .. "(Max)")
                        elseif i == 1 then
                            plyserv:Set("Player :" .. " " .. i .. " " .. "/" .. " " .. "12")
                        else
                            plyserv:Set("Players :" .. " " .. i .. " " .. "/" .. " " .. "12")
                        end
                    end
                end
            )
        end
    end
)

Playerslist = {}

for i, v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Playerslist, v.Name)
end

local SelectedPly =
    LC:AddDropdown(
    {
        Name = "Select Players",
        Default = "",
        Options = Playerslist,
        Callback = function(Value)
            _G.SelectPly = Value
        end
    }
)

LC:AddButton(
    {
        Name = "Refresh Players",
        Callback = function()
            NewPlayerList = {}
            for i, v in pairs(game.Players:GetChildren()) do
                table.insert(Playerslist, v.Name)
            end
            SelectedPly:Refresh(NewPlayerList)
        end
    }
)

LC:AddToggle(
    {
        Name = "Teleport To Players",
        Default = false,
        Callback = function(Value)
            _G.TeleportPly = Value
            pcall(
                function()
                    if _G.TeleportPly then
                        repeat
                            topos(game:GetService("Players")[_G.SelectPly].Character.HumanoidRootPart.CFrame)
                            wait()
                        until _G.TeleportPly == false
                    end
                    StopTween(_G.TeleportPly)
                end
            )
        end
    }
)

LC:AddToggle(
    {
        Name = "Auto Kill Players",
        Default = false,
        Callback = function(Value)
            _G.Auto_Kill_Ply = Value
            StopTween(_G.Auto_Kill_Ply)
        end
    }
)

local Section =
    LC:AddSection(
    {
        Name = "AimBot"
    }
)

LC:AddToggle(
    {
        Name = "AimBot",
        Default = false,
        Callback = function(Value)
            _G.Aimbot_Gun = Value
            _G.Aimbot_Skill = Value
        end
    }
)

LC:AddToggle(
    {
        Name = "Aimbot Skill Nearest",
        Default = false,
        Flag = "Aimbot Skill Nearest",
        Save = true,
        Callback = function(Value)
            AimSkillNearest = Value
        end
    }
)

local Section =
    Wld:AddSection(
    {
        Name = "World Menu"
    }
)

Wld:AddButton(
    {
        Name = "Old World",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
        end
    }
)

Wld:AddButton(
    {
        Name = "Second World",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
        end
    }
)

Wld:AddButton(
    {
        Name = "Third World",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
        end
    }
)

local Section =
    SV:AddSection(
    {
        Name = "FullMoon Check"
    }
)

local FM = SV:AddLabel("Server Time : " .. function8() .. " | " .. CheckMoon() .. " | " .. function7())

spawn(
    function()
        while wait() do
            SV:Set("Server Time : " .. function8() .. " | " .. CheckMoon() .. " | " .. function7())
        end
    end
)

local Section =
    SV:AddSection(
    {
        Name = "Anclient One Check"
    }
)

local bL = SV:AddLabel("Anclient One Status : " .. tostring(CheckAcientOneStatus()))

local Section =
    SV:AddSection(
    {
        Name = "Elite Check"
    }
)

local Elite_Hunter_Status = SV:AddLabel("Only Third Sea")

spawn(
    function()
        while wait() do
            pcall(
                function()
                    if
                        game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or
                            game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or
                            game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or
                            game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or
                            game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or
                            game:GetService("Workspace").Enemies:FindFirstChild("Urban")
                     then
                        Elite_Hunter_Status:Set("Elite : ✅ Spawn")
                    else
                        Elite_Hunter_Status:Set("Elite : ❌ not Spawn")
                    end
                end
            )
        end
    end
)

local Section =
    SV:AddSection(
    {
        Name = "Elite Hunter"
    }
)

local EliteProgress = SV:AddLabel("")

spawn(
    function()
        pcall(
            function()
                while wait() do
                    EliteProgress:Set(
                        "Elite Progress : " ..
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress")
                    )
                end
            end
        )
    end
)

local Section =
    SV:AddSection(
    {
        Name = "Mirage Check"
    }
)

if World3 then
    spawn(
        function()
            pcall(
                function()
                    while wait() do
                        if game.Workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island") then
                            Mirragecheck:Set("Mirrage: ✅")
                        else
                            Mirragecheck:Set("Mirrage: ❌ ")
                        end
                    end
                end
            )
        end
    )
end

Mirragecheck = SV:AddLabel("Only Third Sea")

local Section =
    SV:AddSection(
    {
        Name = "Dough King Check"
    }
)

local MobKilled = SV:AddLabel("Only Third Sea")

spawn(
    function()
        while wait() do
            pcall(
                function()
                    if
                        string.len(
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                        ) == 88
                     then
                        MobKilled:Set(
                            "Defeat : " ..
                                string.sub(
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "CakePrinceSpawner"
                                    ),
                                    39,
                                    41
                                )
                        )
                    elseif
                        string.len(
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                        ) == 87
                     then
                        MobKilled:Set(
                            "Defeat : " ..
                                string.sub(
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "CakePrinceSpawner"
                                    ),
                                    39,
                                    40
                                )
                        )
                    elseif
                        string.len(
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                        ) == 86
                     then
                        MobKilled:Set(
                            "Defeat : " ..
                                string.sub(
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "CakePrinceSpawner"
                                    ),
                                    39,
                                    39
                                )
                        )
                    else
                        MobKilled:Set("Dough King V1 : ✅")
                    end
                end
            )
        end
    end
)

local Section =
    SV:AddSection(
    {
        Name = "Hop Find"
    }
)

SV:AddToggle(
    {
        Name = "Hop Find Moon 3/4 or 4/4",
        Default = false,
        Flag = "FindFM",
        Save = true,
        Callback = function(Value)
            _G.Hopfindmoon = Value
        end
    }
)

SV:AddToggle(
    {
        Name = "Hop Find Mirrage",
        Default = false,
        Flag = "FindMrg",
        Save = true,
        Callback = function(Value)
            _G.Hopfinddao = Value
        end
    }
)

local Section =
    SV:AddSection(
    {
        Name = "Misc Sever"
    }
)

SV:AddTextbox(
    {
        Name = "Job Id Placed",
        Default = "",
        TextDisappear = true,
        Callback = function(Value)
            _G.Job = Value
        end
    }
)

SV:AddButton(
    {
        Name = "Join Id",
        Callback = function()
            _G.AutoRejoin = false
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId, _G.Job, game.Players.LocalPlayer)
        end
    }
)

SV:AddButton(
    {
        Name = "Copy Job Id",
        Callback = function()
            setclipboard(tostring(game.JobId))
        end
    }
)

SV:AddButton(
    {
        Name = "Hop Sever",
        Callback = function()
            _G.AutoRejoin = false
            Hop()
        end
    }
)

SV:AddButton(
    {
        Name = "Rejoin Sever",
        Callback = function()
            game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
        end
    }
)

SV:AddButton(
    {
        Name = "Hop Sever Low Players",
        Callback = function()
            _G.AutoRejoin = false
            getgenv().AutoTeleport = true
            getgenv().DontTeleportTheSameNumber = true
            getgenv().CopytoClipboard = false
            if not game:IsLoaded() then
                print("Game is loading waiting...")
            end
            local maxplayers = math.huge
            local serversmaxplayer
            local goodserver
            local gamelink =
                "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
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
                for i, v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink))) do
                    if i == "nextPageCursor" then
                        if gamelink:find("&cursor=") then
                            local a = gamelink:find("&cursor=")
                            local b = gamelink:sub(a)
                            gamelink = gamelink:gsub(b, "")
                        end
                        gamelink = gamelink .. "&cursor=" .. v
                        getservers()
                    end
                end
            end
            getservers()
            if AutoTeleport then
                if DontTeleportTheSameNumber then
                    if #game:GetService("Players"):GetPlayers() - 4 == maxplayers then
                        return warn("It has same number of players (except you)")
                    elseif goodserver == game.JobId then
                        return warn("Your current server is the most empty server atm")
                    end
                end
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, goodserver)
            end
        end
    }
)

D:AddButton(
    {
        Name = "Random Fruits",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
        end
    }
)

D:AddToggle(
    {
        Name = "Auto Random Fruits",
        Default = false,
        Flag = "Auto Random Fruits",
        Save = true,
        Callback = function(Value)
            _G.Random_Auto = Value
        end
    }
)

spawn(
    function()
        pcall(
            function()
                while wait(.1) do
                    if _G.Random_Auto then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
                    end
                end
            end
        )
    end
)

FruitList = {
    "Rocket-Rocket",
    "Spike-Spike",
    "Chop-Chop",
    "Spring-Spring",
    "Kilo-Kilo",
    "Spin-Spin",
    "Bird: Falcon",
    "Smoke-Smoke",
    "Flame-Flame",
    "Ice-Ice",
    "Sand-Sand",
    "Dark-Dark",
    "Revive-Revive",
    "Diamond-Diamond",
    "Light-Light",
    "Rubber-Rubber",
    "Barrier-Barrier",
    "Magma-Magma",
    "Quake-Quake",
    "Human-Human: Buddha",
    "Love-Love",
    "String-String",
    "Bird-Bird: Phoenix",
    "Soul-Soul",
    "Potal-Potal",
    "Rumble-Rumble",
    "Pain-Pain",
    "Gravity-Gravity",
    "Dough-Dough",
    "Venom-Venom",
    "Shadow-Shadow",
    "Control-Control",
    "Spirit-Spirit",
    "Dragon-Dragon",
    "Leopard-Leopard"
}

D:AddToggle(
    {
        Name = "Auto Store Fruits",
        Default = false,
        Flag = "Auto Store Fruits",
        Save = true,
        Callback = function(Value)
            _G.AutoStoreFruit = Value
        end
    }
)
function DropFruit()
    pcall(
        function()
            game.Players.LocalPlayer.PlayerGui.Main.FruitInventory.Position = UDim2.new(10.100, 0, 0.100, 0) -- HideUi
            game.Players.LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true -- เปิดไว้ถึงจะเช็คได้
            local invenfruit =
                game.Players.LocalPlayer.PlayerGui.Main.FruitInventory.Container.Stored.ScrollingFrame.Frame
            wait(.3)
            for i, v in pairs(invenfruit:GetChildren()) do
                if string.find(v.Name, "-") then
                    for _, Backpack in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                        FruitStoreF = string.split(Backpack.Name, " ")[1]
                        FruitStoreR = FruitStoreF .. "-" .. FruitStoreF
                        if v.Name == FruitStoreR then
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Backpack.Name):Destroy()
                        end
                    end
                end
            end
            for i, v in pairs(invenfruit:GetChildren()) do
                if string.find(v.Name, "-") then
                    for _, Character in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
                        FruitStoreF = string.split(Character.Name, " ")[1]
                        FruitStoreR = FruitStoreF .. "-" .. FruitStoreF
                        if v.Name == FruitStoreR then
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(Character.Name):Destroy()
                        end
                    end
                end
            end
        end
    )
end
D:AddToggle(
    {
        Name = "Teleport To Fruit Spawn",
        Default = false,
        Flag = "Teleport To Fruit Spawn",
        Save = true,
        Callback = function(Value)
            _G.Tweenfruit = Value
            StopTween(_G.Tweenfruit)
        end
    }
)
spawn(
    function()
        while wait(.1) do
            if _G.Tweenfruit then
                for i, v in pairs(game.Workspace:GetChildren()) do
                    if string.find(v.Name, "Fruit") then
                        topos(v.Handle.CFrame)
                    end
                end
            end
        end
    end
)

D:AddToggle(
    {
        Name = "Auto Drop Fruit",
        Default = false,
        Flag = "Auto Drop Fruit",
        Save = true,
        Callback = function(Value)
            _G.DropFruit = Value
        end
    }
)
spawn(
    function()
        while wait() do
            if _G.DropFruit then
                pcall(
                    function()
                        for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                            if string.find(v.Name, "Fruit") then
                                EquipWeapon(v.Name)
                                wait(.1)
                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible == true then
                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible = false
                                end
                                EquipWeapon(v.Name)
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectFruit).EatRemote:InvokeServer(
                                    "Drop"
                                )
                            end
                        end
                        for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
                            if string.find(v.Name, "Fruit") then
                                EquipWeapon(v.Name)
                                wait(.1)
                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible == true then
                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible = false
                                end
                                EquipWeapon(v.Name)
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectFruit).EatRemote:InvokeServer(
                                    "Drop"
                                )
                            end
                        end
                    end
                )
            end
        end
    end
)

D:AddToggle(
    {
        Name = "Bring All Fruit[75% Kick]",
        Default = false,
        Flag = "Bring All Fruit[75% Kick]",
        Save = true,
        Callback = function(Value)
            _G.BringFruitBF = Value
        end
    }
)
spawn(
    function()
        while wait() do
            if _G.BringFruitBF then
                pcall(
                    function()
                        for i, v in pairs(game.Workspace:GetChildren()) do
                            if v:IsA("Tool") then
                                v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                            end
                        end
                    end
                )
            end
        end
    end
)

local Section =
    R:AddSection(
    {
        Name = "Race v2"
    }
)

R:AddToggle(
    {
        Name = "Auto Race(V1 - V2 - V3)",
        Default = false,
        Flag = "Auto Race",
        Save = true,
        Callback = function(Value)
            print("co con ckc")
        end
    }
)

local Section =
    R:AddSection(
    {
        Name = "Pull Lever"
    }
)

AutoPullLever =
    R:AddToggle(
    {
        Name = "Auto Pull Lever",
        Default = false,
        Flag = "Auto Pull Lever",
        Save = true,
        Callback = function(Value)
            _G.AutoPullLever = Value
            StopTween("AutoPullLever")
        end
    }
)

R:AddToggle(
    {
        Name = "Auto Turn On Race v3",
        Default = false,
        Flag = "Auto Turn On Race v3",
        Save = true,
        Callback = function(Value)
            _G.V3 = Value
        end
    }
)
spawn(
    function()
        while wait() do
            pcall(
                function()
                    if _G.V3 then
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "T", false, game)
                        wait(0.1)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, "T", false, game)
                    end
                end
            )
        end
    end
)
R:AddToggle(
    {
        Name = "Auto Turn On Race v4",
        Default = false,
        Flag = "Auto Turn On Race v4",
        Save = true,
        Callback = function(Value)
            _G.V4 = Value
        end
    }
)
spawn(
    function()
        while wait() do
            pcall(
                function()
                    if _G.V4 then
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "Y", false, game)
                        wait(0.1)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, "Y", false, game)
                    end
                end
            )
        end
    end
)

MoveCamTooMoonToggle =
    R:AddToggle(
    {
        Name = "Move Cam to Moon",
        Default = false,
        Flag = "Move Cam to Moon",
        Save = true,
        Callback = function(Value)
            _G.AutoDooHee = Value
        end
    }
)
spawn(
    function()
        while wait() do
            pcall(
                function()
                    if _G.AutoDooHee then
                        local moonDir = game.Lighting:GetMoonDirection()
                        local lookAtPos = game.Workspace.CurrentCamera.CFrame.p + moonDir * 100
                        game.Workspace.CurrentCamera.CFrame =
                            CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, lookAtPos)
                    end
                end
            )
        end
    end
)

R:AddButton(
    {
        Name = "Teleport to Gear",
        Callback = function()
            _G.TweenMGear = Value
            StopTween(_G.TweenMGear)
        end
    }
)

local Section =
    R:AddSection(
    {
        Name = "Race v4"
    }
)

R:AddToggle(
    {
        Name = "Auto Buy Gear",
        Default = false,
        Flag = "Auto Buy Gear",
        Save = true,
        Callback = function(Value)
            _G.Auto_Farm_Bone4 = Value
            StopTween(_G.Auto_Farm_Bone4)
        end
    }
)
spawn(
    function()
        pcall(
            function()
                while wait(0.1) do
                    if _G.Auto_Farm_Bone4 then
                        local args = {
                            [1] = true
                        }

                        local args = {
                            [1] = "UpgradeRace",
                            [2] = "Buy"
                        }

                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(
                            unpack(args)
                        )
                    end
                end
            end
        )
    end
)

R:AddToggle(
    {
        Name = "Auto Train Race",
        Default = false,
        Flag = "Auto Train Race",
        Save = true,
        Callback = function(Value)
            _G.AutoRace = Value
            StardFarm = Value
            StopTween(StardFarm)
            StopTween(_G.AutoRace)
        end
    }
)

local Section =
    R:AddSection(
    {
        Name = "Temple Of Time"
    }
)

R:AddButton(
    {
        Name = "Teleport to Top On Great Tree",
        Callback = function()
            TweenTempleLegit()
        end
    }
)

R:AddButton(
    {
        Name = "Teleport to Temple of Time",
        Callback = function()
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
        end
    }
)

R:AddButton(
    {
        Name = "Teleport to Lever Pull",
        Callback = function()
            PullLever()
        end
    }
)

R:AddButton(
    {
        Name = "Teleport to Anclient One",
        Callback = function()
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
            wait(.1)
            topos(
                CFrame.new(
                    28973.0879,
                    14889.9756,
                    -120.298691,
                    -0.85230273,
                    -9.83552173e-09,
                    -0.523048818,
                    -7.0291172e-08,
                    1,
                    9.5734535e-08,
                    0.523048818,
                    1.18360518e-07,
                    -0.85230273
                )
            )
        end
    }
)

R:AddButton(
    {
        Name = "Teleport to Clock",
        Callback = function()
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
            wait(.1)
            topos(
                CFrame.new(
                    29551.9941,
                    15069.002,
                    -85.5179291,
                    0.603725016,
                    4.74354529e-08,
                    -0.797192633,
                    -3.64676893e-08,
                    1,
                    3.18856408e-08,
                    0.797192633,
                    9.82161463e-09,
                    0.603725016
                )
            )
        end
    }
)

R:AddButton(
    {
        Name = "Teleport to Trials Doors",
        Callback = function()
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
            wait(.1)
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
            wait(.1)
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
            wait(.1)
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
            wait(.1)
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
            wait(.1)
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
            wait(.1)
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
            wait(.1)
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
            if game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
                wait(1)
                topos(CFrame.new(28224.056640625, 14889.4267578125, -210.5872039794922))
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
                wait(1)
                topos(CFrame.new(29237.294921875, 14889.4267578125, -206.94955444335938))
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
                wait(1)
                topos(CFrame.new(28492.4140625, 14894.4267578125, -422.1100158691406))
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
                wait(1)
                topos(CFrame.new(28967.408203125, 14918.0751953125, 234.31198120117188))
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
                wait(1)
                topos(CFrame.new(28672.720703125, 14889.1279296875, 454.5961608886719))
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
                wait(1)
                topos(CFrame.new(29020.66015625, 14889.4267578125, -379.2682800292969))
            end
        end
    }
)

local Section =
    R:AddSection(
    {
        Name = "Other Trials"
    }
)

R:AddToggle(
    {
        Name = "Auto Complete Trials",
        Default = false,
        Flag = "Auto Complete Trials",
        Save = true,
        Callback = function(Value)
            _G.AutoQuestRace = Value
            StopTween(_G.AutoQuestRace)
        end
    }
)

R:AddToggle(
    {
        Name = "Auto Kill Players After Trials",
        Default = false,
        Flag = "KillTrials",
        Save = true,
        Callback = function(Value)
            KillPlayer = Value
            StopTween(KillPlayer)
            _G.TurnKen = Value
        end
    }
)

local Section =
    SH:AddSection(
    {
        Name = "Melee"
    }
)

SH:AddButton(
    {
        Name = "Black Leg",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
        end
    }
)

SH:AddButton(
    {
        Name = "Electrol",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
        end
    }
)

SH:AddButton(
    {
        Name = "FishMan Karate",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
        end
    }
)

SH:AddButton(
    {
        Name = "Dragon Claw",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
        end
    }
)

SH:AddButton(
    {
        Name = "SuperHuman",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
        end
    }
)

SH:AddButton(
    {
        Name = "Death Step",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
        end
    }
)

SH:AddButton(
    {
        Name = "Electric Claw",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
        end
    }
)

SH:AddButton(
    {
        Name = "SharkMan Karate",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
        end
    }
)

SH:AddButton(
    {
        Name = "Dragon Talon",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
        end
    }
)

SH:AddButton(
    {
        Name = "Godhuman",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
        end
    }
)

local Section =
    SH:AddSection(
    {
        Name = "Haki :"
    }
)

SH:AddButton(
    {
        Name = "Buy Buso Haki",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
        end
    }
)

SH:AddButton(
    {
        Name = "Buy Geppo Haki",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")
        end
    }
)

SH:AddButton(
    {
        Name = "Buy Flash Step(Soru)",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru")
        end
    }
)

SH:AddButton(
    {
        Name = "Buy Observation(Ken) Haki",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy")
        end
    }
)

local Section =
    SH:AddSection(
    {
        Name = "Race :"
    }
)

SH:AddButton(
    {
        Name = "Buy Ghoul Race :",
        Callback = function()
            local a = {
                [1] = "Ectoplasm",
                [2] = "BuyCheck",
                [3] = 4
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(a))
            local a = {
                [1] = "Ectoplasm",
                [2] = "Change",
                [3] = 4
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(a))
        end
    }
)

SH:AddButton(
    {
        Name = "Buy Ghoul Race :",
        Callback = function()
            local a = {
                [1] = "CyborgTrainer",
                [2] = "Buy"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(a))
        end
    }
)

local Section =
    SH:AddSection(
    {
        Name = "Other"
    }
)

SH:AddButton(
    {
        Name = "Cutlass Katana",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cutlass")
        end
    }
)

SH:AddButton(
    {
        Name = "Katana",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Katana")
        end
    }
)

SH:AddButton(
    {
        Name = "Iron Mace",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace")
        end
    }
)

SH:AddButton(
    {
        Name = "Dual Katana",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Duel Katana")
        end
    }
)

SH:AddButton(
    {
        Name = "Triple Katana",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana")
        end
    }
)

SH:AddButton(
    {
        Name = "Pipe",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Pipe")
        end
    }
)

SH:AddButton(
    {
        Name = "Dual-Headed Blade ",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade")
        end
    }
)

SH:AddButton(
    {
        Name = "Bisento",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Bisento")
        end
    }
)

SH:AddButton(
    {
        Name = "Soul Cane",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane")
        end
    }
)

SH:AddButton(
    {
        Name = "Pole v.2 [ 5,000 Fragments ]",
        Callback = function()
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ThunderGodTalk")
        end
    }
)

local Section =
    SH:AddSection(
    {
        Name = "Gun"
    }
)

SH:AddButton(
    {
        Name = "Slingshot",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Slingshot")
        end
    }
)

SH:AddButton(
    {
        Name = "Musket",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Musket")
        end
    }
)

SH:AddButton(
    {
        Name = "Flintlock",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Flintlock")
        end
    }
)

SH:AddButton(
    {
        Name = "Refined Slingshot",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Refined Flintlock")
        end
    }
)

SH:AddButton(
    {
        Name = "Refined Flintlock",
        Callback = function()
            local args = {
                [1] = "BuyItem",
                [2] = "Refined Flintlock"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    }
)

SH:AddButton(
    {
        Name = "Cannon",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cannon")
        end
    }
)

SH:AddButton(
    {
        Name = "Kabucha [ 1,500 Fragments]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "1")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "2")
        end
    }
)

SH:AddButton(
    {
        Name = "Bizarre Rifle [ 250 Ectoplasm ]",
        Callback = function()
            local A_1 = "Ectoplasm"
            local A_2 = "Buy"
            local A_3 = 1
            local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
            Event:InvokeServer(A_1, A_2, A_3)
            local A_1 = "Ectoplasm"
            local A_2 = "Buy"
            local A_3 = 1
            local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
            Event:InvokeServer(A_1, A_2, A_3)
        end
    }
)

SH:AddButton(
    {
        Name = "Refund Stats[2,500 fragment]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "1")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2")
        end
    }
)

SH:AddButton(
    {
        Name = "Race Random[3,000 fragment]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "1")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2")
        end
    }
)

local Section =
    C:AddSection(
    {
        Name = "Open Tab"
    }
)

C:AddButton(
    {
        Name = "Open Devil Fruit Shop",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
            game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
        end
    }
)

C:AddButton(
    {
        Name = "Open Inventory[Old]",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")
            wait(1)
            game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = true
        end
    }
)

C:AddButton(
    {
        Name = "Title Tab",
        Callback = function()
            local args = {
                [1] = "getTitles"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
        end
    }
)

local Section =
    C:AddSection(
    {
        Name = "Color Haki"
    }
)

C:AddButton(
    {
        Name = "Color Haki",
        Callback = function()
            game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
        end
    }
)

C:AddToggle(
    {
        Name = "Buy Haki Color(Random)",
        Default = false,
        Callback = function(Value)
            _G.AutoBuyEnchancementColour = Value
        end
    }
)
spawn(
    function()
        while wait() do
            if _G.AutoBuyEnchancementColour then
                local args = {
                    [1] = "ColorsDealer",
                    [2] = "2"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                if _G.AutoBuyEnchancementColour_Hop and _G.AutoBuyEnchancementColour and not World1 then
                    wait(10)
                    Hop()
                end
            end
        end
    end
)

local Section =
    C:AddSection(
    {
        Name = "Level Lock"
    }
)

C:AddToggle(
    {
        Name = "Lock Level",
        Default = false,
        Flag = "Lock Level",
        Save = true,
        Callback = function(Value)
            LockLevel = Value
        end
    }
)

LockLevelValue = 2450
OldLevel = game.Players.localPlayer.Data.Level.Value
C:AddSlider(
    {
        Name = "Level To Lock",
        Min = 1,
        Max = 2550,
        Default = 2550,
        Color = Color3.fromRGB(255, 255, 255),
        Increment = 1,
        ValueName = "Level",
        Flag = "Level To Lock",
        Save = true,
        Callback = function(Value)
            LockLevelValue = Value
        end
    }
)
spawn(
    function()
        while wait(.1) do
            if LockLevel then
                if game.Players.localPlayer.Data.Level.Value >= LockLevelValue then
                    game.Players.localPlayer:Kick("Lock Level : Done[Đúng Level mày nói rồi!]")
                end
            end
        end
    end
)

_G.Remove_Effect = true

spawn(
    function()
        game:GetService("RunService").Stepped:Connect(
            function()
                if _G.Remove_Effect then
                    for i, v in pairs(game:GetService("ReplicatedStorage").Effect.Container:GetChildren()) do
                        if v.Name == "Death" then
                            v:Destroy()
                        end
                    end
                end
            end
        )
    end
)

local Section =
    C:AddSection(
    {
        Name = "Rejoin"
    }
)

C:AddToggle(
    {
        Name = "Auto Rejoin",
        Default = false,
        Callback = function(Value)
            _G.AutoRejoin = Value
        end
    }
)
spawn(
    function()
        while wait() do
            if _G.AutoRejoin then
                getgenv().rejoin =
                    game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(
                    function(child)
                        if
                            child.Name == "ErrorPrompt" and child:FindFirstChild("MessageArea") and
                                child.MessageArea:FindFirstChild("ErrorFrame")
                         then
                            game:GetService("TeleportService"):Teleport(game.PlaceId)
                        end
                    end
                )
            end
        end
    end
)

local Section =
    C:AddSection(
    {
        Name = "Players"
    }
)

C:AddToggle(
    {
        Name = "Walk On Water",
        Default = true,
        Callback = function(Value)
            _G.WalkWater = Value
        end
    }
)
spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    if _G.WalkWater then
                        game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 112, 1000)
                    else
                        game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 80, 1000)
                    end
                end
            )
        end
    end
)

local Section =
    C:AddSection(
    {
        Name = "Misc Players"
    }
)

C:AddToggle(
    {
        Name = "Infinity Soru",
        Default = false,
        Callback = function(Value)
            getgenv().InfSoru = Value
        end
    }
)
spawn(
    function()
        while wait() do
            pcall(
                function()
                    if
                        getgenv().InfSoru and
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil
                     then
                        for i, v in next, getgc() do
                            if game:GetService("Players").LocalPlayer.Character.Soru then
                                if
                                    typeof(v) == "function" and
                                        getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Soru
                                 then
                                    for i2, v2 in next, getupvalues(v) do
                                        if typeof(v2) == "table" then
                                            repeat
                                                wait(0.1)
                                                v2.LastUse = 0
                                            until not getgenv().InfSoru or
                                                game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            )
        end
    end
)

C:AddToggle(
    {
        Name = "No Clip",
        Default = false,
        Callback = function(Value)
            _G.NOCLIP = Value
        end
    }
)
spawn(
    function()
        while wait() do
            if sethiddenproperty then
                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", 100)
            end
            if setscriptable then
                setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
                game.Players.LocalPlayer.SimulationRadius =
                    math.huge * math.huge,
                    math.huge * math.huge * 0 / 0 * 0 / 0 * 0 / 0 * 0 / 0 * 0 / 0
            end
        end
    end
)

C:AddButton(
    {
        Name = "Remove Lava",
        Callback = function()
            for i, v in pairs(game.Workspace:GetDescendants()) do
                if v.Name == "Lava" then
                    v:Destroy()
                end
            end
            for i, v in pairs(game.ReplicatedStorage:GetDescendants()) do
                if v.Name == "Lava" then
                    v:Destroy()
                end
            end
        end
    }
)

C:AddToggle(
    {
        Name = "Infinity Geppo",
        Default = false,
        Callback = function(Value)
            getgenv().InfGeppo = Value
        end
    }
)
spawn(
    function()
        while wait() do
            pcall(
                function()
                    if getgenv().InfGeppo then
                        for i, v in next, getgc() do
                            if game:GetService("Players").LocalPlayer.Character.Geppo then
                                if
                                    typeof(v) == "function" and
                                        getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Geppo
                                 then
                                    for i2, v2 in next, getupvalues(v) do
                                        if tostring(i2) == "9" then
                                            repeat
                                                wait(.1)
                                                setupvalue(v, i2, 0)
                                            until not getgenv().InfGeppo or
                                                game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            )
        end
    end
)

spawn(
    function()
        while wait() do
            if _G.AutoFarm then
                pcall(
                    function()
                        local QuestTitle =
                            game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                        if not string.find(QuestTitle, NameMon) then
                            StartMagnet = false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            StartMagnet = false
                            CheckQuest()
                            if BypassTP then
                                if
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude >
                                        1500
                                 then
                                    BTP(CFrameQuest)
                                elseif
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <
                                        1500
                                 then
                                    topos(CFrameQuest)
                                end
                            else
                                topos(CFrameQuest)
                            end
                            if
                                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <=
                                    20
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StartQuest",
                                    NameQuest,
                                    LevelQuest
                                )
                            end
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            CheckQuest()
                            if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if
                                        v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                            v.Humanoid.Health > 0
                                     then
                                        if v.Name == Mon then
                                            if
                                                string.find(
                                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                                    NameMon
                                                )
                                             then
                                                repeat
                                                    task.wait()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    AutoHaki()
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    TP1(v.HumanoidRootPart.CFrame * Pos)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(100, 100, 100)
                                                    StartMagnet = true
                                                    game:GetService "VirtualUser":CaptureController()
                                                    game:GetService "VirtualUser":Button1Down(Vector2.new(1280, 672))
                                                until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or
                                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible ==
                                                        false
                                            else
                                                StartMagnet = false
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "AbandonQuest"
                                                )
                                            end
                                        end
                                    end
                                end
                            else
                                TP1(CFrameMon)
                                StartMagnet = false
                                if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                                    TP1(
                                        game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame *
                                            CFrame.new(0, 10, 0)
                                    )
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)

spawn(
    function()
        game:GetService("RunService").RenderStepped:Connect(
            function()
                pcall(
                    function()
                        if _G.AutoFarm then
                            CheckQuest()
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                local a = {
                                    [1] = "StartQuest",
                                    [2] = NameQuest,
                                    [3] = LevelQuest
                                }

                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(a))
                            end
                        end
                    end
                )
            end
        )
    end
)

spawn(
    function()
        while wait() do
            if _G.AutoFarmFruitMastery then
                pcall(
                    function()
                        local QuestTitle =
                            game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                        if not string.find(QuestTitle, NameMon) then
                            Magnet = false
                            UseSkill = false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            StartMasteryFruitMagnet = false
                            UseSkill = false
                            CheckQuest()
                            repeat
                                wait()
                                TP1(CFrameQuest)
                            until (CFrameQuest.Position -
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                3 or not _G.AutoFarmFruitMastery
                            if
                                (CFrameQuest.Position -
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                    5
                             then
                                wait(0.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StartQuest",
                                    NameQuest,
                                    LevelQuest
                                )
                                wait(0.1)
                            end
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            CheckQuest()
                            if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if
                                        v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                            v.Humanoid.Health > 0
                                     then
                                        if v.Name == Mon then
                                            if
                                                string.find(
                                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                                    NameMon
                                                )
                                             then
                                                HealthMs = v.Humanoid.MaxHealth * _G.Kill_At / 100
                                                repeat
                                                    task.wait()
                                                    if v.Humanoid.Health <= HealthMs then
                                                        AutoHaki()
                                                        EquipWeapon(
                                                            game:GetService("Players").LocalPlayer.Data.DevilFruit.Value
                                                        )
                                                        TP1(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                                                        v.HumanoidRootPart.CanCollide = false
                                                        PosMonMasteryFruit = v.HumanoidRootPart.CFrame
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.Head.CanCollide = false
                                                        UseSkill = true
                                                    else
                                                        UseSkill = false
                                                        AutoHaki()
                                                        EquipWeapon(_G.SelectWeapon)
                                                        TP1(v.HumanoidRootPart.CFrame * Pos)
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.HumanoidRootPart.Size = Vector3.new(100, 100, 100)
                                                        PosMonMasteryFruit = v.HumanoidRootPart.CFrame
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.Head.CanCollide = false
                                                    end
                                                    StartMasteryFruitMagnet = true
                                                    game:GetService "VirtualUser":CaptureController()
                                                    game:GetService "VirtualUser":Button1Down(Vector2.new(1280, 672))
                                                until not _G.AutoFarmFruitMastery or v.Humanoid.Health <= 0 or
                                                    not v.Parent or
                                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible ==
                                                        false
                                            else
                                                UseSkill = false
                                                StartMasteryFruitMagnet = false
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "AbandonQuest"
                                                )
                                            end
                                        end
                                    end
                                end
                            else
                                TP1(CFrameMon)
                                StartMasteryFruitMagnet = false
                                UseSkill = false
                                local Mob = game:GetService("ReplicatedStorage"):FindFirstChild(Mon)
                                if Mob then
                                    TP1(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 0, 10))
                                else
                                    if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                                        game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
                                        task.wait()
                                        game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false
                                    end
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)

spawn(
    function()
        while wait() do
            if UseSkill then
                pcall(
                    function()
                        CheckQuest()
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                    game:GetService("Players").LocalPlayer.Data.DevilFruit.Value
                                )
                             then
                                MasBF =
                                    game:GetService("Players").LocalPlayer.Character[
                                    game:GetService("Players").LocalPlayer.Data.DevilFruit.Value
                                ].Level.Value
                            elseif
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    game:GetService("Players").LocalPlayer.Data.DevilFruit.Value
                                )
                             then
                                MasBF =
                                    game:GetService("Players").LocalPlayer.Backpack[
                                    game:GetService("Players").LocalPlayer.Data.DevilFruit.Value
                                ].Level.Value
                            end
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then
                                if _G.SkillZ then
                                    local args = {
                                        [1] = PosMonMasteryFruit.Position
                                    }
                                    game:GetService("Players").LocalPlayer.Character[
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
                                    ].RemoteEvent:FireServer(unpack(args))
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game)
                                end
                                if _G.SkillX then
                                    local args = {
                                        [1] = PosMonMasteryFruit.Position
                                    }
                                    game:GetService("Players").LocalPlayer.Character[
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
                                    ].RemoteEvent:FireServer(unpack(args))
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game)
                                end
                                if _G.SkillC then
                                    local args = {
                                        [1] = PosMonMasteryFruit.Position
                                    }
                                    game:GetService("Players").LocalPlayer.Character[
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
                                    ].RemoteEvent:FireServer(unpack(args))
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game)
                                    wait(2)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game)
                                end
                            elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom-Venom") then
                                if _G.SkillZ then
                                    local args = {
                                        [1] = PosMonMasteryFruit.Position
                                    }
                                    game:GetService("Players").LocalPlayer.Character[
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
                                    ].RemoteEvent:FireServer(unpack(args))
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game)
                                end
                                if _G.SkillX then
                                    local args = {
                                        [1] = PosMonMasteryFruit.Position
                                    }
                                    game:GetService("Players").LocalPlayer.Character[
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
                                    ].RemoteEvent:FireServer(unpack(args))
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game)
                                end
                                if _G.SkillC then
                                    local args = {
                                        [1] = PosMonMasteryFruit.Position
                                    }
                                    game:GetService("Players").LocalPlayer.Character[
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
                                    ].RemoteEvent:FireServer(unpack(args))
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game)
                                    wait(2)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game)
                                end
                            elseif
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha")
                             then
                                if
                                    _G.SkillZ and
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Size ==
                                            Vector3.new(2, 2.0199999809265, 1)
                                 then
                                    local args = {
                                        [1] = PosMonMasteryFruit.Position
                                    }
                                    game:GetService("Players").LocalPlayer.Character[
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
                                    ].RemoteEvent:FireServer(unpack(args))
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game)
                                end
                                if _G.SkillX then
                                    local args = {
                                        [1] = PosMonMasteryFruit.Position
                                    }
                                    game:GetService("Players").LocalPlayer.Character[
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
                                    ].RemoteEvent:FireServer(unpack(args))
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game)
                                end
                                if _G.SkillC then
                                    local args = {
                                        [1] = PosMonMasteryFruit.Position
                                    }
                                    game:GetService("Players").LocalPlayer.Character[
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
                                    ].RemoteEvent:FireServer(unpack(args))
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game)
                                end
                                if _G.SkillV then
                                    local args = {
                                        [1] = PosMonMasteryFruit.Position
                                    }
                                    game:GetService("Players").LocalPlayer.Character[
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
                                    ].RemoteEvent:FireServer(unpack(args))
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "V", false, game)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(false, "V", false, game)
                                end
                                if _G.SkillF then
                                    local args = {
                                        [1] = PosMonMasteryFruit.Position
                                    }
                                    game:GetService("Players").LocalPlayer.Character[
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
                                    ].RemoteEvent:FireServer(unpack(args))
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "F", false, game)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(false, "F", false, game)
                                end
                            elseif
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                    game:GetService("Players").LocalPlayer.Data.DevilFruit.Value
                                )
                             then
                                if _G.SkillZ then
                                    local args = {
                                        [1] = PosMonMasteryFruit.Position
                                    }
                                    game:GetService("Players").LocalPlayer.Character[
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
                                    ].RemoteEvent:FireServer(unpack(args))
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game)
                                end
                                if _G.SkillX then
                                    local args = {
                                        [1] = PosMonMasteryFruit.Position
                                    }
                                    game:GetService("Players").LocalPlayer.Character[
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
                                    ].RemoteEvent:FireServer(unpack(args))
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game)
                                end
                                if _G.SkillC then
                                    local args = {
                                        [1] = PosMonMasteryFruit.Position
                                    }
                                    game:GetService("Players").LocalPlayer.Character[
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
                                    ].RemoteEvent:FireServer(unpack(args))
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game)
                                end
                                if _G.SkillV then
                                    local args = {
                                        [1] = PosMonMasteryFruit.Position
                                    }
                                    game:GetService("Players").LocalPlayer.Character[
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
                                    ].RemoteEvent:FireServer(unpack(args))
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "V", false, game)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(false, "V", false, game)
                                    if _G.SkillF then
                                        local args = {
                                            [1] = PosMonMasteryFruit.Position
                                        }
                                        game:GetService("Players").LocalPlayer.Character[
                                            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass(
                                                "Tool"
                                            ).Name
                                        ].RemoteEvent:FireServer(unpack(args))
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "F", false, game)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false, "F", false, game)
                                    end
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)

spawn(
    function()
        game:GetService("RunService").RenderStepped:Connect(
            function()
                pcall(
                    function()
                        if UseSkill then
                            for i, v in pairs(
                                game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()
                            ) do
                                if v.Name == "NotificationTemplate" then
                                    if string.find(v.Text, "Skill locked!") then
                                        v:Destroy()
                                    end
                                end
                            end
                        end
                    end
                )
            end
        )
    end
)

spawn(
    function()
        pcall(
            function()
                game:GetService("RunService").RenderStepped:Connect(
                    function()
                        if UseSkill then
                            local args = {
                                [1] = PosMonMasteryFruit.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[
                                game:GetService("Players").LocalPlayer.Data.DevilFruit.Value
                            ].RemoteEvent:FireServer(unpack(args))
                        end
                    end
                )
            end
        )
    end
)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.AutoFarmGunMastery then
                        local QuestTitle =
                            game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                        if not string.find(QuestTitle, NameMon) then
                            Magnet = false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            StartMasteryGunMagnet = false
                            CheckQuest()
                            TP1(CFrameQuest)
                            if
                                (CFrameQuest.Position -
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                    10
                             then
                                wait(0.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StartQuest",
                                    NameQuest,
                                    LevelQuest
                                )
                            end
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            CheckQuest()
                            if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                                pcall(
                                    function()
                                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == Mon then
                                                repeat
                                                    task.wait()
                                                    if
                                                        string.find(
                                                            game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                                            NameMon
                                                        )
                                                     then
                                                        HealthMin = v.Humanoid.MaxHealth * _G.Kill_At / 100
                                                        if v.Humanoid.Health <= HealthMin then
                                                            EquipWeapon(SelectWeaponGun)
                                                            TP1(v.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0))
                                                            v.Humanoid.WalkSpeed = 0
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                                                            v.Head.CanCollide = false
                                                            local args = {
                                                                [1] = v.HumanoidRootPart.Position,
                                                                [2] = v.HumanoidRootPart
                                                            }
                                                            game:GetService("Players").LocalPlayer.Character[
                                                                SelectWeaponGun
                                                            ].RemoteFunctionShoot:InvokeServer(unpack(args))
                                                        else
                                                            AutoHaki()
                                                            EquipWeapon(_G.SelectWeapon)
                                                            v.Humanoid.WalkSpeed = 0
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.Head.CanCollide = false
                                                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                            TP1(v.HumanoidRootPart.CFrame * Pos)
                                                            game:GetService "VirtualUser":CaptureController()
                                                            game:GetService "VirtualUser":Button1Down(
                                                                Vector2.new(1280, 672)
                                                            )
                                                        end
                                                        StartMasteryGunMagnet = true
                                                        PosMonMasteryGun = v.HumanoidRootPart.CFrame
                                                    else
                                                        StartMasteryGunMagnet = false
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                            "AbandonQuest"
                                                        )
                                                    end
                                                until v.Humanoid.Health <= 0 or _G.AutoFarmGunMastery == false or
                                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible ==
                                                        false
                                                StartMasteryGunMagnet = false
                                            end
                                        end
                                    end
                                )
                            else
                                TP1(CFrameMon)
                                AutoFarmNearestMagnet = false
                                local Mob = game:GetService("ReplicatedStorage"):FindFirstChild(Mon)
                                if Mob then
                                    TP1(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 0, 10))
                                else
                                    if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                                        game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
                                        task.wait()
                                        game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false
                                    end
                                end
                            end
                        end
                    end
                end
            end
        )
    end
)

spawn(
    function()
        while wait() do
            if _G.BuyAllSword then
                pcall(
                    function()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cutlass")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Katana")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Duel Katana")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Pipe")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Bisento")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane")
                        if _G.BuyHop then
                            wait(10)
                            Hop()
                        end
                    end
                )
            end
        end
    end
)

spawn(
    function()
        while wait() do
            if _G.BuyAllAib then
                pcall(
                    function()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru")
                        if _G.HopBuy then
                            wait(10)
                            Hop()
                        end
                    end
                )
            end
        end
    end
)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.AutoSuperhuman then
                        if
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or
                                game.Players.LocalPlayer.Character:FindFirstChild("Combat") and
                                    game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 150000
                         then
                            UnEquipWeapon("Combat")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                        end
                        if
                            game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman")
                         then
                            _G.SelectWeapon = "Superhuman"
                        end
                        if
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or
                                game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or
                                game.Players.LocalPlayer.Character:FindFirstChild("Electro") or
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or
                                game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or
                                game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw")
                         then
                            if
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and
                                    game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299
                             then
                                _G.SelectWeapon = "Black Leg"
                            end
                            if
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and
                                    game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299
                             then
                                _G.SelectWeapon = "Electro"
                            end
                            if
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and
                                    game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <=
                                        299
                             then
                                _G.SelectWeapon = "Fishman Karate"
                            end
                            if
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and
                                    game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299
                             then
                                _G.SelectWeapon = "Dragon Claw"
                            end
                            if
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and
                                    game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 and
                                    game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000
                             then
                                UnEquipWeapon("Black Leg")
                                wait(.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                            end
                            if
                                game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and
                                    game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 and
                                    game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000
                             then
                                UnEquipWeapon("Black Leg")
                                wait(.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                            end
                            if
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and
                                    game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 and
                                    game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000
                             then
                                UnEquipWeapon("Electro")
                                wait(.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                            end
                            if
                                game.Players.LocalPlayer.Character:FindFirstChild("Electro") and
                                    game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 and
                                    game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000
                             then
                                UnEquipWeapon("Electro")
                                wait(.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                            end
                            if
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and
                                    game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >=
                                        300 and
                                    game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500
                             then
                                UnEquipWeapon("Fishman Karate")
                                wait(.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "BlackbeardReward",
                                    "DragonClaw",
                                    "1"
                                )
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "BlackbeardReward",
                                    "DragonClaw",
                                    "2"
                                )
                            end
                            if
                                game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and
                                    game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >=
                                        300 and
                                    game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500
                             then
                                UnEquipWeapon("Fishman Karate")
                                wait(.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "BlackbeardReward",
                                    "DragonClaw",
                                    "1"
                                )
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "BlackbeardReward",
                                    "DragonClaw",
                                    "2"
                                )
                            end
                            if
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and
                                    game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 and
                                    game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000
                             then
                                UnEquipWeapon("Dragon Claw")
                                wait(.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                            end
                            if
                                game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and
                                    game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 and
                                    game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000
                             then
                                UnEquipWeapon("Dragon Claw")
                                wait(.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                            end
                        end
                    end
                end
            end
        )
    end
)

spawn(
    function()
        while wait() do
            if _G.AutoSecondSea then
                pcall(
                    function()
                        if game.Players.LocalPlayer.Data.Level.Value >= 700 and World1 then
                            _G.AutoFarm = false
                            if
                                game.Workspace.Map.Ice.Door.CanCollide == true and
                                    game.Workspace.Map.Ice.Door.Transparency == 0
                             then
                                repeat
                                    wait()
                                    topos(CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563))
                                until (CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563).Position -
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                    3 or not _G.AutoSecondSea
                                wait(1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "DressrosaQuestProgress",
                                    "Detective"
                                )
                                EquipWeapon("Key")
                                local pos2 = CFrame.new(1347.7124, 37.3751602, -1325.6488)
                                repeat
                                    wait()
                                    topos(pos2)
                                until (pos2.Position -
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                    3 or not _G.AutoSecondSea
                                wait(3)
                            elseif
                                game.Workspace.Map.Ice.Door.CanCollide == false and
                                    game.Workspace.Map.Ice.Door.Transparency == 1
                             then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then
                                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Ice Admiral" and v.Humanoid.Health > 0 then
                                            repeat
                                                wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                v.HumanoidRootPart.Transparency = 1
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(
                                                    Vector2.new(1280, 870),
                                                    workspace.CurrentCamera.CFrame
                                                )
                                            until v.Humanoid.Health <= 0 or not v.Parent or not _G.AutoSecondSea
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                "TravelDressrosa"
                                            )
                                        end
                                    end
                                else
                                    topos(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                                end
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                            end
                        end
                    end
                )
            end
        end
    end
)

spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    if _G.BringMonster then
                        CheckQuest()
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if
                                _G.AutoFarm and StartMagnet and v.Name == Mon and
                                    (Mon == "Factory Staff" or Mon == "Monkey" or Mon == "Dragon Crew Warrior" or
                                        Mon == "Dragon Crew Archer") and
                                    v:FindFirstChild("Humanoid") and
                                    v:FindFirstChild("HumanoidRootPart") and
                                    v.Humanoid.Health > 0 and
                                    (v.HumanoidRootPart.Position -
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        220
                             then
                                v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                v.HumanoidRootPart.CFrame = PosMon
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            elseif
                                _G.AutoFarm and StartMagnet and v.Name == Mon and v:FindFirstChild("Humanoid") and
                                    v:FindFirstChild("HumanoidRootPart") and
                                    v.Humanoid.Health > 0 and
                                    (v.HumanoidRootPart.Position -
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        _G.BringMode
                             then
                                v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                v.HumanoidRootPart.CFrame = PosMon
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                    end
                end
            )
        end
    end
)

spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    if _G.BringMonster then
                        CheckQuest()
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if
                                _G.AutoFarm and StartMagnet and v.Name == Mon and
                                    (Mon == "Factory Staff" or Mon == "Monkey" or Mon == "Dragon Crew Warrior" or
                                        Mon == "Dragon Crew Archer") and
                                    v:FindFirstChild("Humanoid") and
                                    v:FindFirstChild("HumanoidRootPart") and
                                    v.Humanoid.Health > 0 and
                                    (v.HumanoidRootPart.Position -
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        250
                             then
                                v.HumanoidRootPart.Size = Vector3.new(150, 150, 150)
                                v.HumanoidRootPart.CFrame = PosMon
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            elseif
                                _G.AutoFarm and StartMagnet and v.Name == Mon and v:FindFirstChild("Humanoid") and
                                    v:FindFirstChild("HumanoidRootPart") and
                                    v.Humanoid.Health > 0 and
                                    (v.HumanoidRootPart.Position -
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        _G.BringMode
                             then
                                v.HumanoidRootPart.Size = Vector3.new(150, 150, 150)
                                v.HumanoidRootPart.CFrame = PosMon
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                            if _G.Farmfast and StardMag then
                                if
                                    (v.Name == "Shanda") and
                                        (v.HumanoidRootPart.Position - FastMon.Position).Magnitude <= 250 and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    v.HumanoidRootPart.CFrame = FastMon
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                                if _G.AutoVampire and YouSkidder then
                                    if
                                        (v.Name == "Vampire") and
                                            (v.HumanoidRootPart.Position - PosVui.Position).Magnitude <= 500 and
                                            v:FindFirstChild("Humanoid") and
                                            v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0
                                     then
                                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        v.HumanoidRootPart.CFrame = PosVui
                                        v.Humanoid:ChangeState(14)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(
                                            game:GetService("Players").LocalPlayer,
                                            "SimulationRadius",
                                            math.huge
                                        )
                                    end
                                    if _G.AutoEctoplasm and StartEctoplasmMagnet then
                                        if
                                            string.find(v.Name, "Ship") and v:FindFirstChild("Humanoid") and
                                                v:FindFirstChild("HumanoidRootPart") and
                                                v.Humanoid.Health > 0 and
                                                (v.HumanoidRootPart.Position - EctoplasmMon.Position).Magnitude <=
                                                    _G.BringMode
                                         then
                                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            v.HumanoidRootPart.CFrame = EctoplasmMon
                                            v.Humanoid:ChangeState(14)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            if v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                            sethiddenproperty(
                                                game:GetService("Players").LocalPlayer,
                                                "SimulationRadius",
                                                math.huge
                                            )
                                        end
                                    end
                                    if _G.AutoRengoku and StartRengokuMagnet then
                                        if
                                            (v.Name == "Snow Lurker" or v.Name == "Arctic Warrior") and
                                                (v.HumanoidRootPart.Position - RengokuMon.Position).Magnitude <=
                                                    _G.BringMode and
                                                v:FindFirstChild("Humanoid") and
                                                v:FindFirstChild("HumanoidRootPart") and
                                                v.Humanoid.Health > 0
                                         then
                                            v.HumanoidRootPart.Size = Vector3.new(1500, 1500, 1500)
                                            v.Humanoid:ChangeState(14)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.CFrame = RengokuMon
                                            if v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                            sethiddenproperty(
                                                game:GetService("Players").LocalPlayer,
                                                "SimulationRadius",
                                                math.huge
                                            )
                                        end
                                    end
                                    if _G.AutoMusketeerHat and StartMagnetMusketeerhat then
                                        if
                                            v.Name == "Forest Pirate" and
                                                (v.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <=
                                                    _G.BringMode and
                                                v:FindFirstChild("Humanoid") and
                                                v:FindFirstChild("HumanoidRootPart") and
                                                v.Humanoid.Health > 0
                                         then
                                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            v.Humanoid:ChangeState(14)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.CFrame = MusketeerHatMon
                                            if v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                            sethiddenproperty(
                                                game:GetService("Players").LocalPlayer,
                                                "SimulationRadius",
                                                math.huge
                                            )
                                        end
                                    end
                                    if _G.AutoObservationHakiV2 and Mangnetcitzenmon then
                                        if
                                            v.Name == "Forest Pirate" and
                                                (v.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <=
                                                    _G.BringMode and
                                                v:FindFirstChild("Humanoid") and
                                                v:FindFirstChild("HumanoidRootPart") and
                                                v.Humanoid.Health > 0
                                         then
                                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            v.Humanoid:ChangeState(14)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.CFrame = PosHee
                                            if v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                            sethiddenproperty(
                                                game:GetService("Players").LocalPlayer,
                                                "SimulationRadius",
                                                math.huge
                                            )
                                        end
                                    end
                                    if _G.Auto_EvoRace and StartEvoMagnet then
                                        if
                                            v.Name == "Zombie" and
                                                (v.HumanoidRootPart.Position - PosMonEvo.Position).Magnitude <=
                                                    _G.BringMode and
                                                v:FindFirstChild("Humanoid") and
                                                v:FindFirstChild("HumanoidRootPart") and
                                                v.Humanoid.Health > 0
                                         then
                                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            v.Humanoid:ChangeState(14)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.CFrame = PosMonEvo
                                            if v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                            sethiddenproperty(
                                                game:GetService("Players").LocalPlayer,
                                                "SimulationRadius",
                                                math.huge
                                            )
                                        end
                                    end
                                    if _G.AutoBartilo and AutoBartiloBring then
                                        if
                                            v.Name == "Swan Pirate" and
                                                (v.HumanoidRootPart.Position - PosMonBarto.Position).Magnitude <=
                                                    _G.BringMode and
                                                v:FindFirstChild("Humanoid") and
                                                v:FindFirstChild("HumanoidRootPart") and
                                                v.Humanoid.Health > 0
                                         then
                                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            v.Humanoid:ChangeState(14)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.CFrame = PosMonBarto
                                            if v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                            sethiddenproperty(
                                                game:GetService("Players").LocalPlayer,
                                                "SimulationRadius",
                                                math.huge
                                            )
                                        end
                                    end
                                    if _G.AutoFarmFruitMastery and StartMasteryFruitMagnet then
                                        if v.Name == "Monkey" then
                                            if
                                                (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <=
                                                    _G.BringMode and
                                                    v:FindFirstChild("Humanoid") and
                                                    v:FindFirstChild("HumanoidRootPart") and
                                                    v.Humanoid.Health > 0
                                             then
                                                v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                v.Humanoid:ChangeState(14)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                                if v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                                sethiddenproperty(
                                                    game:GetService("Players").LocalPlayer,
                                                    "SimulationRadius",
                                                    math.huge
                                                )
                                            end
                                        elseif v.Name == "Factory Staff" then
                                            if
                                                (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <=
                                                    _G.BringMode and
                                                    v:FindFirstChild("Humanoid") and
                                                    v:FindFirstChild("HumanoidRootPart") and
                                                    v.Humanoid.Health > 0
                                             then
                                                v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                v.Humanoid:ChangeState(14)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                                if v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                                sethiddenproperty(
                                                    game:GetService("Players").LocalPlayer,
                                                    "SimulationRadius",
                                                    math.huge
                                                )
                                            end
                                        elseif v.Name == Mon then
                                            if
                                                (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <=
                                                    _G.BringMode and
                                                    v:FindFirstChild("Humanoid") and
                                                    v:FindFirstChild("HumanoidRootPart") and
                                                    v.Humanoid.Health > 0
                                             then
                                                v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                v.Humanoid:ChangeState(14)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                                if v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                                sethiddenproperty(
                                                    game:GetService("Players").LocalPlayer,
                                                    "SimulationRadius",
                                                    math.huge
                                                )
                                            end
                                        end
                                    end
                                    if _G.AutoFarmGunMastery and StartMasteryGunMagnet then
                                        if v.Name == "Monkey" then
                                            if
                                                (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <=
                                                    _G.BringMode and
                                                    v:FindFirstChild("Humanoid") and
                                                    v:FindFirstChild("HumanoidRootPart") and
                                                    v.Humanoid.Health > 0
                                             then
                                                v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                v.Humanoid:ChangeState(14)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                                if v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                                sethiddenproperty(
                                                    game:GetService("Players").LocalPlayer,
                                                    "SimulationRadius",
                                                    math.huge
                                                )
                                            end
                                        elseif v.Name == "Factory Staff" then
                                            if
                                                (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <=
                                                    _G.BringMode and
                                                    v:FindFirstChild("Humanoid") and
                                                    v:FindFirstChild("HumanoidRootPart") and
                                                    v.Humanoid.Health > 0
                                             then
                                                v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                v.Humanoid:ChangeState(14)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                                if v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                                sethiddenproperty(
                                                    game:GetService("Players").LocalPlayer,
                                                    "SimulationRadius",
                                                    math.huge
                                                )
                                            end
                                        elseif v.Name == Mon then
                                            if
                                                (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <=
                                                    _G.BringMode and
                                                    v:FindFirstChild("Humanoid") and
                                                    v:FindFirstChild("HumanoidRootPart") and
                                                    v.Humanoid.Health > 0
                                             then
                                                v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                v.Humanoid:ChangeState(14)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                                if v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                                sethiddenproperty(
                                                    game:GetService("Players").LocalPlayer,
                                                    "SimulationRadius",
                                                    math.huge
                                                )
                                            end
                                        end
                                    end
                                    if _G.Auto_Bone and StartMagnetBoneMon then
                                        if
                                            (v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or
                                                v.Name == "Demonic Soul" or
                                                v.Name == "Posessed Mummy") and
                                                (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <=
                                                    _G.BringMode and
                                                v:FindFirstChild("Humanoid") and
                                                v:FindFirstChild("HumanoidRootPart") and
                                                v.Humanoid.Health > 0
                                         then
                                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            v.Humanoid:ChangeState(14)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.CFrame = PosMonBone
                                            if v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                            sethiddenproperty(
                                                game:GetService("Players").LocalPlayer,
                                                "SimulationRadius",
                                                math.huge
                                            )
                                        end
                                    end
                                    if _G.Auto_Bone2 and StartMagnetBoneMon2 then
                                        if
                                            (v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or
                                                v.Name == "Demonic Soul" or
                                                v.Name == "Posessed Mummy") and
                                                (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <=
                                                    _G.BringMode and
                                                v:FindFirstChild("Humanoid") and
                                                v:FindFirstChild("HumanoidRootPart") and
                                                v.Humanoid.Health > 0
                                         then
                                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            v.Humanoid:ChangeState(14)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.CFrame = PosMonBone
                                            if v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                            sethiddenproperty(
                                                game:GetService("Players").LocalPlayer,
                                                "SimulationRadius",
                                                math.huge
                                            )
                                        end
                                    end
                                    if _G.AutoFarmCandy and StartCandyMagnet then
                                        if
                                            (v.Name == "Ice Cream Chef" or v.Name == "Ice Cream Commander") and
                                                (v.HumanoidRootPart.Position - CandyMon.Position).Magnitude <=
                                                    _G.BringMode and
                                                v:FindFirstChild("Humanoid") and
                                                v:FindFirstChild("HumanoidRootPart") and
                                                v.Humanoid.Health > 0
                                         then
                                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            v.Humanoid:ChangeState(14)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.CFrame = CandyMon
                                            if v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                            sethiddenproperty(
                                                game:GetService("Players").LocalPlayer,
                                                "SimulationRadius",
                                                math.huge
                                            )
                                        end
                                    end
                                    if _G.AutoDoughtBoss and MagnetDought then
                                        if
                                            (v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or
                                                v.Name == "Baking Staff" or
                                                v.Name == "Head Baker") and
                                                (v.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude <=
                                                    _G.BringMode and
                                                v:FindFirstChild("Humanoid") and
                                                v:FindFirstChild("HumanoidRootPart") and
                                                v.Humanoid.Health > 0
                                         then
                                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            v.Humanoid:ChangeState(14)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.CFrame = PosMonDoughtOpenDoor
                                            if v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                            sethiddenproperty(
                                                game:GetService("Players").LocalPlayer,
                                                "SimulationRadius",
                                                math.huge
                                            )
                                        end
                                        if StardFarm and FarmMag then
                                            if
                                                (v.Name == "Sweet Thief" or v.Name == "Candy Rebel" or
                                                    v.Name == "Cocoa Warrior" or
                                                    v.Name == "Chocolate Bar Battler") and
                                                    (v.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude <=
                                                        _G.BringMode and
                                                    v:FindFirstChild("Humanoid") and
                                                    v:FindFirstChild("HumanoidRootPart") and
                                                    v.Humanoid.Health > 0
                                             then
                                                v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                v.Humanoid:ChangeState(14)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.CFrame = PosGG
                                                if v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                                sethiddenproperty(
                                                    game:GetService("Players").LocalPlayer,
                                                    "SimulationRadius",
                                                    math.huge
                                                )
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            )
        end
    end
)

function GetBladeHit()
    local CombatFrameworkLib =
        debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
    local CmrFwLib = CombatFrameworkLib[2]
    local p13 = CmrFwLib.activeController
    local weapon = p13.blades[1]
    if not weapon then
        return weapon
    end
    while weapon.Parent ~= game.Players.LocalPlayer.Character do
        weapon = weapon.Parent
    end
    return weapon
end
function AttackHit()
    local CombatFrameworkLib =
        debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
    local CmrFwLib = CombatFrameworkLib[2]
    local plr = game.Players.LocalPlayer
    for i = 1, 1 do
        local bladehit =
            require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
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
            pcall(
                function()
                    CmrFwLib.activeController.timeToNextAttack = 1
                    CmrFwLib.activeController.attacking = false
                    CmrFwLib.activeController.blocking = false
                    CmrFwLib.activeController.timeToNextBlock = 0
                    CmrFwLib.activeController.increment = 3
                    CmrFwLib.activeController.hitboxMagnitude = 120
                    CmrFwLib.activeController.focusStart = 0
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer(
                        "weaponChange",
                        tostring(GetBladeHit())
                    )
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")
                end
            )
        end
    end
end
spawn(
    function()
        while wait(.1) do
            if _G.FastAttack then
                pcall(
                    function()
                        repeat
                            task.wait(_G.FastAttackDelay)
                            AttackHit()
                        until not _G.FastAttack
                    end
                )
            end
        end
    end
)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.Farmfast and World1 then
                        if game.Players.LocalPlayer.Data.Level.Value >= 10 then
                            ToggleFarm:Set(false)
                            _G.Farmfast = true
                        end
                    end
                end
            end
        )
    end
)

spawn(
    function()
        while wait() do
            if _G.Farmfast and World1 then
                pcall(
                    function()
                        if game.Players.LocalPlayer.Data.Level.Value >= 10 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "requestEntrance",
                                Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047)
                            )
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Shanda" then
                                    if
                                        v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0
                                     then
                                        repeat
                                            task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            StardMag = true
                                            FastMon = v.HumanoidRootPart.CFrame
                                            v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                            TP1(v.HumanoidRootPart.CFrame * Pos)
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                        until not _G.Farmfast or not v.Parent or v.Humanoid.Health <= 0
                                        StardMag = false
                                        TP1(CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531))
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Shanda") then
                                TP1(
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Shanda").HumanoidRootPart.CFrame *
                                        CFrame.new(5, 10, 2)
                                )
                            end
                        end
                    end
                )
            end
        end
    end
)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.Farmfast and World1 then
                        if game.Players.LocalPlayer.Data.Level.Value >= 50 then
                            Farmfasttoggle:Set(false)
                            _G.AutoPlayerHunter = true
                        end
                    end
                end
            end
        )
    end
)

spawn(
    function()
        while wait(.1) do
            if _G.AutoFarmSelectMonster then
                pcall(
                    function()
                        CheckQuest(SelectMonster)
                        if game:GetService("Workspace").Enemies:FindFirstChild(SelectMonster) then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == SelectMonster then
                                    if v:FindFirstChild("Humanoid") then
                                        if v.Humanoid.Health > 0 then
                                            repeat
                                                game:GetService("RunService").Heartbeat:wait()
                                                EquipWeapon(_G.SelectWeapon)
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    local args = {
                                                        [1] = "Buso"
                                                    }
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                        unpack(args)
                                                    )
                                                end
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(
                                                    Vector2.new(1280, 672),
                                                    game.Workspace.CurrentCamera.CFrame
                                                )
                                                PosMonSelectMonster = v.HumanoidRootPart.CFrame
                                                SelectMonsterMagnet = true
                                            until not _G.AutoFarmSelectMonster or not v.Parent or v.Humanoid.Health == 0 or
                                                not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
                                        end
                                    end
                                end
                            end
                        else
                            CheckQuest(SelectMonster)

                            SelectMonsterMagnet = false

                            topos(CFrameMon)
                        end
                    end
                )
            end
        end
    end
)

spawn(
    function()
        while wait() do
            if _G.AutoFarmNearest then
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v.Name and v:FindFirstChild("Humanoid") then
                        if v.Humanoid.Health > 0 then
                            repeat
                                wait()
                                EquipWeapon(_G.SelectWeapon)
                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    local args = {
                                        [1] = "Buso"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end
                                topos(v.HumanoidRootPart.CFrame * Pos)
                                v.HumanoidRootPart.CanCollide = false
                                Fastattack = true
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                game:GetService("VirtualUser"):CaptureController()
                                game:GetService("VirtualUser"):Button1Down(
                                    Vector2.new(1280, 672),
                                    game.Workspace.CurrentCamera.CFrame
                                )
                                AutoFarmNearestMagnet = true
                                PosMon = v.HumanoidRootPart.CFrame
                            until not _G.AutoFarmNearest or not v.Parent or v.Humanoid.Health <= 0
                            AutoFarmNearestMagnet = false
                            Fastattack = false
                        end
                    end
                end
            end
        end
    end
)

_G.MagnitudeAdd = 0
spawn(
    function()
        while wait() do
            if AutoFarmChest then
                for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
                    if v.Name:find("Chest") then
                        if game:GetService("Workspace"):FindFirstChild(v.Name) then
                            if
                                (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                    5000 + _G.MagnitudeAdd
                             then
                                repeat
                                    wait()
                                    if game:GetService("Workspace"):FindFirstChild(v.Name) then
                                        topos(v.CFrame)
                                    end
                                until AutoFarmChest == false or not v.Parent
                                topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                                _G.MagnitudeAdd = _G.MagnitudeAdd + 1500
                                break
                            end
                        end
                    end
                end
            end
        end
    end
)

spawn(
    function()
        while wait() do
            if _G.ChestBypass then
                pcall(
                    function()
                        for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
                            if string.find(v.Name, "Chest") then
                                print(v.Name)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                                wait(.15)
                            end
                        end
                        game.Players.LocalPlayer.Character.Head:Destroy()
                        for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
                            if string.find(v.Name, "Chest") and v:IsA("TouchTransmitter") then
                                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
                                wait()
                                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
                            end
                        end
                    end
                )
            end
        end
    end
)

spawn(
    function()
        while task.wait() do
            if _G.ChestBypass then
                local ohString1 = "SetTeam"
                local ohString2 = "Pirates"
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(ohString1, ohString2)
            end
        end
    end
)

spawn(
    function()
        while wait() do
            pcall(
                function()
                    if _G.AutoFactory and World2 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Core" and v.Humanoid.Health > 0 then
                                    repeat
                                        task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(CFrame.new(448.46756, 199.356781, -441.389252))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                    until v.Humanoid.Health <= 0 or _G.AutoFactory == false
                                end
                            end
                        else
                            topos(CFrame.new(448.46756, 199.356781, -441.389252))
                        end
                    end
                end
            )
        end
    end
)

spawn(
    function()
        while wait() do
            if _G.RaidPirate then
                pcall(
                    function()
                        local CFrameBoss =
                            CFrame.new(
                            -5496.17432,
                            313.768921,
                            -2841.53027,
                            0.924894512,
                            7.37058015e-09,
                            0.380223751,
                            3.5881019e-08,
                            1,
                            -1.06665446e-07,
                            -0.380223751,
                            1.12297109e-07,
                            0.924894512
                        )
                        if
                            (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position -
                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500
                         then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if
                                    _G.RaidPirate and v:FindFirstChild("HumanoidRootPart") and
                                        v:FindFirstChild("Humanoid") and
                                        v.Humanoid.Health > 0
                                 then
                                    if
                                        (v.HumanoidRootPart.Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <
                                            2000
                                     then
                                        repeat
                                            wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            Click()
                                        until v.Humanoid.Health <= 0 or not v.Parent or not _G.RaidPirate
                                    end
                                end
                            end
                        else
                            if BypassTP then
                                if
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameBoss.Position).Magnitude >
                                        1500
                                 then
                                    BTP(CFrameBoss)
                                elseif
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameBoss.Position).Magnitude <
                                        1500
                                 then
                                    topos(CFrameBoss)
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)

spawn(
    function()
        while wait() do
            if _G.AutoBuyLegendarySword then
                pcall(
                    function()
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
                        if _G.AutoBuyLegendarySword_Hop and _G.AutoBuyLegendarySword and World2 then
                            wait(10)
                            Hop()
                        end
                    end
                )
            end
        end
    end
)

spawn(
    function()
        while wait() do
            pcall(
                function()
                    if _G.Auto_Stats_Kaitun then
                        if World1 then
                            local args = {
                                [1] = "AddPoint",
                                [2] = "Melee",
                                [3] = _G.Point
                            }

                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        elseif World2 then
                            local args = {
                                [1] = "AddPoint",
                                [2] = "Melee",
                                [3] = _G.Point
                            }

                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            local args = {
                                [1] = "AddPoint",
                                [2] = "Defense",
                                [3] = _G.Point
                            }

                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
                    end
                end
            )
        end
    end
)

spawn(
    function()
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
                        [2] = "Blox Fruit",
                        [3] = PointStats
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
            end
        end
    end
)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if game.Workspace._WorldOrigin.Locations:FindFirstChild("Island 1") then
                        checkisland:Set(" Island : 1")
                    end
                end
            end
        )
    end
)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if game.Workspace._WorldOrigin.Locations:FindFirstChild("Island 2") then
                        checkisland:Set("Island : 2")
                    end
                end
            end
        )
    end
)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if game.Workspace._WorldOrigin.Locations:FindFirstChild("Island 3") then
                        checkisland:Set("Island : 3")
                    end
                end
            end
        )
    end
)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if game.Workspace._WorldOrigin.Locations:FindFirstChild("Island 4") then
                        checkisland:Set("Island : 4")
                    end
                end
            end
        )
    end
)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if game.Workspace._WorldOrigin.Locations:FindFirstChild("Island 5") then
                        checkisland:Set("Island : 5")
                    end
                end
            end
        )
    end
)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                        TimeRaid:Set(game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Text)
                    else
                        TimeRaid:Set("Wait For Dungeon")
                    end
                end
            end
        )
    end
)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.AutoBuyChip then
                        if
                            not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or
                                not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip")
                         then
                            if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "RaidsNpc",
                                    "Select",
                                    _G.SelectChip
                                )
                            end
                        end
                    end
                end
            end
        )
    end
)

spawn(
    function()
        while wait(.1) do
            pcall(
                function()
                    if _G.Auto_StartRaid then
                        if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                            if
                                not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip")
                             then
                                if World2 then
                                    fireclickdetector(
                                        game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector
                                    )
                                elseif World3 then
                                    fireclickdetector(
                                        game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector
                                    )
                                end
                            end
                        end
                    end
                end
            )
        end
    end
)

spawn(
    function()
        while wait() do
            if _G.Kill_Aura then
                for i, v in pairs(game.Workspace.Enemies:GetDescendants()) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        pcall(
                            function()
                                repeat
                                    wait(.1)
                                    v.Humanoid.Health = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                until not _G.Kill_Aura or not v.Parent or v.Humanoid.Health <= 0
                            end
                        )
                    end
                end
            end
        end
    end
)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.Auto_Dungeon then
                        if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                            if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                                topos(
                                    game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame *
                                        RaidPos
                                )
                            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                                topos(
                                    game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame *
                                        RaidPos
                                )
                            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                                topos(
                                    game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame *
                                        RaidPos
                                )
                            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                                topos(
                                    game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame *
                                        RaidPos
                                )
                            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                                topos(
                                    game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame *
                                        RaidPos
                                )
                            end
                        end
                    end
                end
            end
        )
    end
)

Type = 1
spawn(
    function()
        while wait(.1) do
            if Type == 1 then
                RaidPos = CFrame.new(0, 25, 0)
            elseif Type == 2 then
                RaidPos = CFrame.new(0, 25, -40)
            elseif Type == 3 then
                RaidPos = CFrame.new(40, 25, 0)
            elseif Type == 4 then
                RaidPos = CFrame.new(0, 25, 40)
            elseif Type == 5 then
                RaidPos = CFrame.new(-40, 25, 0)
            elseif Type == 6 then
                RaidPos = CFrame.new(0, 25, 0)
            end
        end
    end
)

spawn(
    function()
        while wait(.1) do
            Type = 1
            wait(0.9)
            Type = 2
            wait(0.9)
            Type = 3
            wait(0.9)
            Type = 4
            wait(0.9)
            Type = 5
            wait(0.9)
        end
    end
)

spawn(
    function()
        pcall(
            function()
                while wait(.1) do
                    if _G.Auto_Awakener then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Check")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Awaken")
                    end
                end
            end
        )
    end
)

spawn(
    function()
        while wait() do
            if _G.Auto_Buy_Law_Chip then
                pcall(
                    function()
                        if
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") or
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Order") or
                                game:GetService("ReplicatedStorage"):FindFirstChild("Order")
                         then
                        else
                            local args = {
                                [1] = "BlackbeardReward",
                                [2] = "Microchip",
                                [3] = "2"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
                    end
                )
            end
        end
    end
)

spawn(
    function()
        while wait() do
            if _G.Auto_Start_Law_Dungeon then
                pcall(
                    function()
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip")
                         then
                            fireclickdetector(
                                game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector
                            )
                        end
                    end
                )
            end
        end
    end
)

spawn(
    function()
        while wait() do
            if _G.Auto_Kill_Law then
                pcall(
                    function()
                        if
                            game:GetService("ReplicatedStorage"):FindFirstChild("Order") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Order")
                         then
                            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if
                                    _G.Auto_Kill_Law and v.Name == "Order" and v:FindFirstChild("HumanoidRootPart") and
                                        v:FindFirstChild("Humanoid") and
                                        v.Humanoid.Health > 0
                                 then
                                    repeat
                                        task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                        game:GetService "VirtualUser":CaptureController()
                                        game:GetService "VirtualUser":Button1Down(Vector2.new(1280, 672))
                                    until not _G.Auto_Kill_Law or v.Humanoid.Health <= 0 or not v.Parent
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.AutoMysticIsland then
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
                end
            end
        )
    end
)

spawn(
    function()
        pcall(
            function()
                while wait(.1) do
                    if _G.AutoStoreFruit then
                        for i, v in pairs(FruitList) do
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Store", v)
                        end
                    end
                end
            end
        )
    end
)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.TweenMGear then
                        if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                            for i, v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
                                if v:IsA("MeshPart") then
                                    if v.Material == Enum.Material.Neon then
                                        topos(v.CFrame)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        )
    end
)

spawn(
    function()
        while wait() do
            local boneframe = CFrame.new(-9508.5673828125, 142.1398468017578, 5737.3603515625)
            if _G.Auto_Bone and World3 then
                pcall(
                    function()
                        if BypassTP then
                            if
                                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - boneframe.Position).Magnitude >
                                    2000
                             then
                                BTP(boneframe)
                                wait(.1)
                                game.Players.localPlayer.Character.HumanoidRootPart.CFrame =
                                    CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                                wait(.1)
                                game.Players.localPlayer.Character.HumanoidRootPart.CFrame =
                                    CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                                wait(.1)
                                game.Players.localPlayer.Character.HumanoidRootPart.CFrame =
                                    CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562)
                                wait(.1)
                                game.Players.localPlayer.Character.HumanoidRootPart.CFrame =
                                    CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562)
                                wait(3)
                            elseif
                                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - boneframe.Position).Magnitude <
                                    2000
                             then
                                TP1(boneframe)
                            end
                        else
                            TP1(boneframe)
                        end
                        if
                            game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy")
                         then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if
                                    v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or
                                        v.Name == "Posessed Mummy"
                                 then
                                    if
                                        v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0
                                     then
                                        repeat
                                            task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            StartMagnetBoneMon = true
                                            PosMonBone = v.HumanoidRootPart.CFrame
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX, PosY, PosZ))
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                        until not _G.Auto_Bone or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        else
                            StartMagnetBoneMon = false
                            topos(CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375))
                            for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                                if v.Name == "Reborn Skeleton" then
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                elseif v.Name == "Living Zombie" then
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                elseif v.Name == "Demonic Soul" then
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                elseif v.Name == "Posessed Mummy" then
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)

spawn(
    function()
        while wait() do
            if _G.AutoElitehunter and World3 then
                pcall(
                    function()
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if
                                string.find(
                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                    "Diablo"
                                ) or
                                    string.find(
                                        game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                        "Deandre"
                                    ) or
                                    string.find(
                                        game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                        "Urban"
                                    )
                             then
                                if
                                    game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or
                                        game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or
                                        game:GetService("Workspace").Enemies:FindFirstChild("Urban")
                                 then
                                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
                                            if
                                                v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                                    v.Humanoid.Health > 0
                                             then
                                                repeat
                                                    wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX, PosY, PosZ))
                                                    game:GetService("VirtualUser"):CaptureController()
                                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                                    sethiddenproperty(
                                                        game:GetService("Players").LocalPlayer,
                                                        "SimulationRadius",
                                                        math.huge
                                                    )
                                                until _G.AutoElitehunter == false or v.Humanoid.Health <= 0 or
                                                    not v.Parent
                                            end
                                        end
                                    end
                                else
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
                                        topos(
                                            game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame *
                                                CFrame.new(2, 20, 2)
                                        )
                                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
                                        topos(
                                            game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame *
                                                CFrame.new(2, 20, 2)
                                        )
                                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
                                        topos(
                                            game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame *
                                                CFrame.new(2, 20, 2)
                                        )
                                    end
                                end
                            end
                        else
                            if
                                _G.AutoEliteHunterHop and
                                    game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") ==
                                        "I don't have anything for you right now. Come back later."
                             then
                                hop()
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                            end
                        end
                    end
                )
            end
        end
    end
)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.AutoEliteHunter then
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            OrionLib:MakeNotification(
                                {
                                    Name = "Edward Newgate Hub",
                                    Content = "[EN] : Please cancel the farrm level quest",
                                    Image = "rbxassetid://4483345998",
                                    Time = 9
                                }
                            )
                            OrionLib:MakeNotification(
                                {
                                    Name = "Edward Newgate Hub",
                                    Content = "[VN] : Làm ơn hủy nhiệm vụ farrm level",
                                    Image = "rbxassetid://4483345998",
                                    Time = 9
                                }
                            )
                        end
                    end
                end
            end
        )
    end
)

spawn(
    function()
        while wait() do
            pcall(
                function()
                    if
                        string.len(
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                        ) == 88
                     then
                        KillMob =
                            (tonumber(
                            string.sub(
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),
                                39,
                                41
                            )
                        ) - 500)
                    elseif
                        string.len(
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                        ) == 87
                     then
                        KillMob =
                            (tonumber(
                            string.sub(
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),
                                40,
                                41
                            )
                        ) - 500)
                    elseif
                        string.len(
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                        ) == 86
                     then
                        KillMob =
                            (tonumber(
                            string.sub(
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),
                                41,
                                41
                            )
                        ) - 500)
                    end
                end
            )
        end
    end
)

spawn(
    function()
        while wait() do
            if _G.AutoDoughtBoss then
                pcall(
                    function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cake Prince" then
                                    if
                                        v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0
                                     then
                                        repeat
                                            task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX, PosY, PosZ))
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        until not _G.AutoDoughtBoss or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
                                topos(
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince").HumanoidRootPart.CFrame *
                                        CFrame.new(2, 20, 2)
                                )
                            else
                                if KillMob == 0 then
                                end
                                if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1 then
                                    if
                                        game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or
                                            game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or
                                            game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or
                                            game:GetService("Workspace").Enemies:FindFirstChild("Head Baker")
                                     then
                                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if
                                                v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or
                                                    v.Name == "Baking Staff" or
                                                    v.Name == "Head Baker"
                                             then
                                                if
                                                    v:FindFirstChild("Humanoid") and
                                                        v:FindFirstChild("HumanoidRootPart") and
                                                        v.Humanoid.Health > 0
                                                 then
                                                    repeat
                                                        task.wait()
                                                        AutoHaki()
                                                        EquipWeapon(_G.SelectWeapon)
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.Head.CanCollide = false
                                                        v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                                        MagnetDought = true
                                                        PosMonDoughtOpenDoor = v.HumanoidRootPart.CFrame
                                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                                        game:GetService("VirtualUser"):CaptureController()
                                                        game:GetService("VirtualUser"):Button1Down(
                                                            Vector2.new(1280, 672)
                                                        )
                                                    until not _G.AutoDoughtBoss or not v.Parent or
                                                        v.Humanoid.Health <= 0 or
                                                        game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency ==
                                                            0 or
                                                        game:GetService("ReplicatedStorage"):FindFirstChild(
                                                            "Cake Prince"
                                                        ) or
                                                        game:GetService("Workspace").Enemies:FindFirstChild(
                                                            "Cake Prince"
                                                        ) or
                                                        KillMob == 0
                                                end
                                            end
                                        end
                                    else
                                        MagnetDought = false
                                        topos(CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375))
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter") then
                                            topos(
                                                game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter").HumanoidRootPart.CFrame *
                                                    CFrame.new(2, 20, 2)
                                            )
                                        else
                                            if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard") then
                                                topos(
                                                    game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard").HumanoidRootPart.CFrame *
                                                        CFrame.new(2, 20, 2)
                                                )
                                            else
                                                if game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff") then
                                                    topos(
                                                        game:GetService("ReplicatedStorage"):FindFirstChild(
                                                            "Baking Staff"
                                                        ).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2)
                                                    )
                                                else
                                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker") then
                                                        topos(
                                                            game:GetService("ReplicatedStorage"):FindFirstChild(
                                                                "Head Baker"
                                                            ).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2)
                                                        )
                                                    end
                                                end
                                            end
                                        end
                                    end
                                else
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                                        topos(
                                            game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince").HumanoidRootPart.CFrame *
                                                CFrame.new(2, 20, 2)
                                        )
                                    else
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
                                            topos(
                                                game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince").HumanoidRootPart.CFrame *
                                                    CFrame.new(2, 20, 2)
                                            )
                                        end
                                    end
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)

spawn(
    function()
        while wait() do
            if _G.Autodoughking and World3 then
                pcall(
                    function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Dough King" then
                                    if
                                        v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0
                                     then
                                        repeat
                                            task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        until not _G.Autodoughking or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        else
                            topos(CFrame.new(-2662.818603515625, 1062.3480224609375, -11853.6953125))
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") then
                                topos(
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Dough King").HumanoidRootPart.CFrame *
                                        CFrame.new(2, 20, 2)
                                )
                            else
                                if _G.AutodoughkingHop then
                                    Hop()
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)

spawn(
    function()
        while wait() do
            pcall(
                function()
                    if _G.AutoObservation then
                        repeat
                            task.wait()
                            if
                                not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                    "ImageLabel"
                                )
                             then
                                game:GetService("VirtualUser"):CaptureController()
                                game:GetService("VirtualUser"):SetKeyDown("0x65")
                                wait(2)
                                game:GetService("VirtualUser"):SetKeyUp("0x65")
                            end
                        until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or
                            not _G.AutoObservation
                    end
                end
            )
        end
    end
)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.AutoObservation then
                        if game:GetService("Players").LocalPlayer.VisionRadius.Value >= 3000 then
                            OrionLib:MakeNotification(
                                {
                                    Name = "Edward Newgate Hub",
                                    Content = "!!You Are Max Point!!",
                                    Image = "rbxassetid://4483345998",
                                    Time = 5
                                }
                            )

                            wait(2)
                        else
                            if World2 then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate") then
                                    if
                                        game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                            "ImageLabel"
                                        )
                                     then
                                        repeat
                                            task.wait()
                                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame *
                                                CFrame.new(3, 0, 0)
                                        until _G.AutoObservation == false or
                                            not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                                "ImageLabel"
                                            )
                                    else
                                        repeat
                                            task.wait()
                                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame *
                                                CFrame.new(0, 50, 0) +
                                                wait(1)
                                            if
                                                not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                                    "ImageLabel"
                                                ) and _G.AutoObservation_Hop == true
                                             then
                                                game:GetService("TeleportService"):Teleport(
                                                    game.PlaceId,
                                                    game:GetService("Players").LocalPlayer
                                                )
                                            end
                                        until _G.AutoObservation == false or
                                            game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                                "ImageLabel"
                                            )
                                    end
                                else
                                    topos(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
                                end
                            elseif World1 then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain") then
                                    if
                                        game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                            "ImageLabel"
                                        )
                                     then
                                        repeat
                                            task.wait()
                                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame *
                                                CFrame.new(3, 0, 0)
                                        until _G.AutoObservation == false or
                                            not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                                "ImageLabel"
                                            )
                                    else
                                        repeat
                                            task.wait()
                                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame *
                                                CFrame.new(0, 50, 0)
                                            wait(1)
                                            if
                                                not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                                    "ImageLabel"
                                                ) and _G.AutoObservation_Hop == true
                                             then
                                                game:GetService("TeleportService"):Teleport(
                                                    game.PlaceId,
                                                    game:GetService("Players").LocalPlayer
                                                )
                                            end
                                        until _G.AutoObservation == false or
                                            game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                                "ImageLabel"
                                            )
                                    end
                                else
                                    topos(CFrame.new(5533.29785, 88.1079102, 4852.3916))
                                end
                            elseif World3 then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander") then
                                    if
                                        game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                            "ImageLabel"
                                        )
                                     then
                                        repeat
                                            task.wait()
                                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame *
                                                CFrame.new(3, 0, 0)
                                        until _G.AutoObservation == false or
                                            not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                                "ImageLabel"
                                            )
                                    else
                                        repeat
                                            task.wait()
                                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame *
                                                CFrame.new(0, 50, 0)
                                            wait(1)
                                            if
                                                not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                                    "ImageLabel"
                                                ) and _G.AutoObservation_Hop == true
                                             then
                                                game:GetService("TeleportService"):Teleport(
                                                    game.PlaceId,
                                                    game:GetService("Players").LocalPlayer
                                                )
                                            end
                                        until _G.AutoObservation == false or
                                            game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                                "ImageLabel"
                                            )
                                    end
                                else
                                    topos(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
                                end
                            end
                        end
                    end
                end
            end
        )
    end
)

local PosVampire = CFrame.new(-6064.45459, 6.42848825, -1292.71606)
spawn(
    function()
        while wait() do
            if _G.AutoVampire and World2 then
                pcall(
                    function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Vampire") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Vampire" then
                                    if
                                        v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0
                                     then
                                        repeat
                                            task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                            v.Head.CanCollide = false
                                            YouSkidder = true
                                            PosVui = v.HumanoidRootPart.CFrame
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                        until not _G.AutoVampire or not v.Parent or v.Humanoid.Health <= 0
                                        YouSkidder = false
                                    end
                                end
                            end
                        else
                            if BypassTP then
                                if
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - PosVampire.Position).Magnitude >
                                        1500
                                 then
                                    BTP(PosVampire)
                                elseif
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - PosVampire.Position).Magnitude <
                                        1500
                                 then
                                    topos(PosVampire)
                                end
                            else
                                topos(PosVampire)
                            end
                            topos(CFrame.new(-6064.45459, 6.42848825, -1292.71606))
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Vampire") then
                                topos(
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Vampire").HumanoidRootPart.CFrame *
                                        CFrame.new(0, 20, 0)
                                )
                            else
                                if _G.Vampire then
                                    Hop()
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)

spawn(
    function()
        while wait() do
            wait()
            if _G.AutoDeathStep then
                if
                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step")
                 then
                    if
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >=
                                450
                     then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                        _G.SelectWeapon = "Death Step"
                    end
                    if
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") and
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >=
                                450
                     then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                        _G.SelectWeapon = "Death Step"
                    end
                    if
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <=
                                449
                     then
                        _G.SelectWeapon = "Black Leg"
                    end
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                end
            end
        end
    end
)

local MyFragment = game.Players.LocalPlayer.Data.Fragments.Value
local Mybeli = game.Players.LocalPlayer.Data.Beli.Value
spawn(
    function()
        while wait() do
            if _G.AutoSharkman then
                if Mybeli <= 2500000 or MyFragment <= 5000 then
                    wait(2.0)
                    OrionLib:MakeNotification(
                        {
                            Name = "Edward Newgate Hub",
                            Content = "You not have beli or fragment!",
                            Time = 5
                        }
                    )
                end
            end
        end
    end
)

spawn(
    function()
        while wait() do
            if _G.AutoSharkman then
                pcall(
                    function()
                        if
                            not game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or
                                not game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                        end
                        if
                            string.find(
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"),
                                "keys"
                            )
                         then
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key")
                             then
                                repeat
                                    wait()
                                    getgenv().ToTarget(
                                        -2604.6958,
                                        239.432526,
                                        -10315.1982,
                                        0.0425701365,
                                        0,
                                        -0.999093413,
                                        0,
                                        1,
                                        0,
                                        0.999093413,
                                        0,
                                        0.0425701365
                                    )
                                until (CFrame.new(
                                    -2604.6958,
                                    239.432526,
                                    -10315.1982,
                                    0.0425701365,
                                    0,
                                    -0.999093413,
                                    0,
                                    1,
                                    0,
                                    0.999093413,
                                    0,
                                    0.0425701365
                                ).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                    3 or not _G.Auto_Fully_SharkMan_Karate
                                if
                                    (CFrame.new(
                                        -2604.6958,
                                        239.432526,
                                        -10315.1982,
                                        0.0425701365,
                                        0,
                                        -0.999093413,
                                        0,
                                        1,
                                        0,
                                        0.999093413,
                                        0,
                                        0.0425701365
                                    ).Position -
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        3
                                 then
                                    wait(1.2)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "BuySharkmanKarate",
                                        true
                                    )
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "BuySharkmanKarate"
                                    )
                                    wait(0.5)
                                end
                            elseif
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and
                                    game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >=
                                        400 or
                                    game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and
                                        game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >=
                                            400
                             then
                                if
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper") or
                                        game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper")
                                 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper") then
                                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Tide Keeper" then
                                                repeat
                                                    wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    v.Head.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                                    game:GetService "VirtualUser":CaptureController()
                                                    game:GetService "VirtualUser":Button1Down(Vector2.new(1280, 672))
                                                    sethiddenproperty(
                                                        game:GetService("Players").LocalPlayer,
                                                        "SimulationRadius",
                                                        math.huge
                                                    )
                                                until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoSharkman == false or
                                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                                        "Water Key"
                                                    ) or
                                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                                        "Water Key"
                                                    )
                                            end
                                        end
                                    else
                                        repeat
                                            wait()
                                            getgenv().ToTarget(
                                                game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper").HumanoidRootPart.CFrame
                                            )
                                        until game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper")
                                    end
                                else
                                    Hop()
                                end
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                        end
                    end
                )
            end
        end
    end
)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.AutoElectricClaw then
                        if
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electric Claw") or
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electric Claw")
                         then
                            if
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >=
                                        400
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                                _G.SelectWeapon = "Electric Claw"
                            end
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >=
                                        400
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                                _G.SelectWeapon = "Electric Claw"
                            end
                            if
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <=
                                        399
                             then
                                _G.SelectWeapon = "Electro"
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                        end
                    end
                    if _G.AutoElectricClaw then
                        if
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro")
                         then
                            if
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and
                                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >=
                                            400 or
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >=
                                        400
                             then
                                if _G.AutoFarm == false then
                                    repeat
                                        task.wait()
                                        topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                    until not _G.AutoElectricClaw or
                                        (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                            CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "BuyElectricClaw",
                                        "Start"
                                    )
                                    wait(2)
                                    repeat
                                        task.wait()
                                        topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
                                    until not _G.AutoElectricClaw or
                                        (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                            CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <=
                                            10
                                    wait(1)
                                    repeat
                                        task.wait()
                                        topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                    until not _G.AutoElectricClaw or
                                        (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                            CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                                    wait(1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                                elseif _G.AutoFarm == true then
                                    _G.AutoFarm = false
                                    wait(1)
                                    repeat
                                        task.wait()
                                        topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                    until not _G.AutoElectricClaw or
                                        (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                            CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "BuyElectricClaw",
                                        "Start"
                                    )
                                    wait(2)
                                    repeat
                                        task.wait()
                                        topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
                                    until not _G.AutoElectricClaw or
                                        (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                            CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <=
                                            10
                                    wait(1)
                                    repeat
                                        task.wait()
                                        topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                    until not _G.AutoElectricClaw or
                                        (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                            CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                                    wait(1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                                    _G.SelectWeapon = "Electric Claw"
                                    wait(.1)
                                    _G.AutoFarm = true
                                end
                            end
                        end
                    end
                end
            end
        )
    end
)

spawn(
    function()
        while wait() do
            if _G.AutoDragonTalon then
                if
                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon")
                 then
                    if
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >=
                                400
                     then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                        _G.SelectWeapon = "Dragon Talon"
                    end
                    if
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") and
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >=
                                400
                     then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                        _G.SelectWeapon = "Dragon Talon"
                    end
                    if
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <=
                                399
                     then
                        _G.SelectWeapon = "Dragon Claw"
                    end
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "BlackbeardReward",
                        "DragonClaw",
                        "2"
                    )
                end
            end
        end
    end
)

spawn(
    function()
        while task.wait() do
            if _G.Auto_God_Human then
                pcall(
                    function()
                        if
                            game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sharkman Karate") or
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or
                                game.Players.LocalPlayer.Character:FindFirstChild("Electro") or
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or
                                game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon") or
                                game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman")
                         then
                            if
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman", true) ==
                                    1
                             then
                                if
                                    game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and
                                        game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman").Level.Value >=
                                            400 or
                                        game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") and
                                            game.Players.LocalPlayer.Character:FindFirstChild("Superhuman").Level.Value >=
                                                400
                                 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                                end
                            else
                                OrionLib:MakeNotification(
                                    {
                                        Name = "Edward Newgate Hub",
                                        Content = "Not Have Superhuman",
                                        Time = 5
                                    }
                                )
                            end
                            if
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep", true) ==
                                    1
                             then
                                if
                                    game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and
                                        game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value >=
                                            400 or
                                        game.Players.LocalPlayer.Character:FindFirstChild("Death Step") and
                                            game.Players.LocalPlayer.Character:FindFirstChild("Death Step").Level.Value >=
                                                400
                                 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "BuySharkmanKarate"
                                    )
                                end
                            else
                                OrionLib:MakeNotification(
                                    {
                                        Name = "Edward Newgate Hub",
                                        Content = "Not Have Death Step",
                                        Time = 5
                                    }
                                )
                            end
                            if
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "BuySharkmanKarate",
                                    true
                                ) == 1
                             then
                                if
                                    game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and
                                        game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value >=
                                            400 or
                                        game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") and
                                            game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate").Level.Value >=
                                                400
                                 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                                end
                            else
                                OrionLib:MakeNotification(
                                    {
                                        Name = "Edward Newgate Hub",
                                        Content = "Not Have SharkMan Karate",
                                        Time = 5
                                    }
                                )
                            end
                            if
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "BuyElectricClaw",
                                    true
                                ) == 1
                             then
                                if
                                    game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and
                                        game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value >=
                                            400 or
                                        game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and
                                            game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw").Level.Value >=
                                                400
                                 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                                end
                            else
                                gOrionLib:MakeNotification(
                                    {
                                        Name = "Edward Newgate Hub",
                                        Content = "Not Have Electric Claw",
                                        Time = 5
                                    }
                                )
                            end
                            if
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) ==
                                    1
                             then
                                if
                                    game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and
                                        game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value >=
                                            400 or
                                        game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") and
                                            game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon").Level.Value >=
                                                400
                                 then
                                    if
                                        string.find(
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                "BuyGodhuman",
                                                true
                                            ),
                                            "Bring"
                                        )
                                     then
                                        OrionLib:MakeNotification(
                                            {
                                                Name = "Edward Newgate Hub",
                                                Content = "Not Have Enough Material",
                                                Time = 5
                                            }
                                        )
                                    else
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
                                    end
                                end
                            else
                                OrionLib:MakeNotification(
                                    {
                                        Name = "Edward Newgate Hub",
                                        Content = "You Not Have Dragon Talon! ",
                                        Time = 5
                                    }
                                )
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                        end
                    end
                )
            end
        end
    end
)

spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    if
                        _G.Auto_Saber and game.Players.LocalPlayer.Data.Level.Value >= 200 and not Check_Sword("Saber") and
                            World1
                     then
                        ToggleFarm:Set(false)
                        _G.Auto_Saber = true
                    end
                end
            )
        end
    end
)

spawn(
    function()
        while task.wait() do
            if
                _G.Auto_Saber and game.Players.LocalPlayer.Data.Level.Value >= 200 and not Check_Sword("Saber") and
                    World1
             then
                pcall(
                    function()
                        ToggleFarm:Set(false)
                        if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
                            if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
                                if
                                    (CFrame.new(
                                        -1612.55884,
                                        36.9774132,
                                        148.719543,
                                        0.37091279,
                                        3.0717151e-09,
                                        -0.928667724,
                                        3.97099491e-08,
                                        1,
                                        1.91679348e-08,
                                        0.928667724,
                                        -4.39869794e-08,
                                        0.37091279
                                    ).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        100
                                 then
                                    topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                                    wait(1)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
                                    wait(1)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
                                    wait(1)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
                                    wait(1)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
                                    wait(1)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
                                    wait(1)
                                else
                                    topos(
                                        CFrame.new(
                                            -1612.55884,
                                            36.9774132,
                                            148.719543,
                                            0.37091279,
                                            3.0717151e-09,
                                            -0.928667724,
                                            3.97099491e-08,
                                            1,
                                            1.91679348e-08,
                                            0.928667724,
                                            -4.39869794e-08,
                                            0.37091279
                                        )
                                    )
                                end
                            else
                                if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
                                    if
                                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or
                                            game.Players.LocalPlayer.Character:FindFirstChild("Torch")
                                     then
                                        EquipWeapon("Torch")
                                        topos(
                                            CFrame.new(
                                                1114.61475,
                                                5.04679728,
                                                4350.22803,
                                                -0.648466587,
                                                -1.28799094e-09,
                                                0.761243105,
                                                -5.70652914e-10,
                                                1,
                                                1.20584542e-09,
                                                -0.761243105,
                                                3.47544882e-10,
                                                -0.648466587
                                            )
                                        )
                                    else
                                        topos(
                                            CFrame.new(
                                                -1610.00757,
                                                11.5049858,
                                                164.001587,
                                                0.984807551,
                                                -0.167722285,
                                                -0.0449818149,
                                                0.17364943,
                                                0.951244235,
                                                0.254912198,
                                                3.42372805e-05,
                                                -0.258850515,
                                                0.965917408
                                            )
                                        )
                                    end
                                else
                                    if
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "ProQuestProgress",
                                            "SickMan"
                                        ) ~= 0
                                     then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "ProQuestProgress",
                                            "GetCup"
                                        )
                                        wait(0.5)
                                        EquipWeapon("Cup")
                                        wait(0.5)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "ProQuestProgress",
                                            "FillCup",
                                            game:GetService("Players").LocalPlayer.Character.Cup
                                        )
                                        wait(0)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "ProQuestProgress",
                                            "SickMan"
                                        )
                                    else
                                        if
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                "ProQuestProgress",
                                                "RichSon"
                                            ) == nil
                                         then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                "ProQuestProgress",
                                                "RichSon"
                                            )
                                        elseif
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                "ProQuestProgress",
                                                "RichSon"
                                            ) == 0
                                         then
                                            if
                                                game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or
                                                    game:GetService("ReplicatedStorage"):FindFirstChild(
                                                        "Mob Leader [Lv. 120] [Boss]"
                                                    )
                                             then
                                                topos(
                                                    CFrame.new(
                                                        -2967.59521,
                                                        -4.91089821,
                                                        5328.70703,
                                                        0.342208564,
                                                        -0.0227849055,
                                                        0.939347804,
                                                        0.0251603816,
                                                        0.999569714,
                                                        0.0150796166,
                                                        -0.939287126,
                                                        0.0184739735,
                                                        0.342634559
                                                    )
                                                )
                                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                    if v.Name == "Mob Leader" then
                                                        if
                                                            game:GetService("Workspace").Enemies:FindFirstChild(
                                                                "Mob Leader"
                                                            )
                                                         then
                                                            if
                                                                v:FindFirstChild("Humanoid") and
                                                                    v:FindFirstChild("HumanoidRootPart") and
                                                                    v.Humanoid.Health > 0
                                                             then
                                                                repeat
                                                                    task.wait()
                                                                    AutoHaki()
                                                                    EquipWeapon(_G.SelectWeapon)
                                                                    v.HumanoidRootPart.CanCollide = false
                                                                    v.Humanoid.WalkSpeed = 0
                                                                    v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                                                    game:GetService("VirtualUser"):CaptureController()
                                                                    game:GetService("VirtualUser"):Button1Down(
                                                                        Vector2.new(1280, 672)
                                                                    )
                                                                    sethiddenproperty(
                                                                        game:GetService("Players").LocalPlayer,
                                                                        "SimulationRadius",
                                                                        math.huge
                                                                    )
                                                                until v.Humanoid.Health <= 0 or not _G.Auto_Saber
                                                            end
                                                        end
                                                        if
                                                            game:GetService("ReplicatedStorage"):FindFirstChild(
                                                                "Mob Leader"
                                                            )
                                                         then
                                                            topos(
                                                                game:GetService("ReplicatedStorage"):FindFirstChild(
                                                                    "Mob Leader"
                                                                ).HumanoidRootPart.CFrame * Farm_Mode
                                                            )
                                                        end
                                                    end
                                                end
                                            end
                                        elseif
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                "ProQuestProgress",
                                                "RichSon"
                                            ) == 1
                                         then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                "ProQuestProgress",
                                                "RichSon"
                                            )
                                            wait(0.5)
                                            EquipWeapon("Relic")
                                            wait(0.5)
                                            topos(
                                                CFrame.new(
                                                    -1404.91504,
                                                    29.9773273,
                                                    3.80598116,
                                                    0.876514494,
                                                    5.66906877e-09,
                                                    0.481375456,
                                                    2.53851997e-08,
                                                    1,
                                                    -5.79995607e-08,
                                                    -0.481375456,
                                                    6.30572643e-08,
                                                    0.876514494
                                                )
                                            )
                                        end
                                    end
                                end
                            end
                        else
                            if
                                game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert")
                             then
                                topos(CFrame.new(-1401.85046, 29.9773273, 8.81916237))
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if
                                        v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0
                                     then
                                        if v.Name == "Saber Expert" then
                                            repeat
                                                task.wait()
                                                EquipWeapon(_G.SelectWeapon)
                                                topos(v.HumanoidRootPart.CFrame * Pos)
                                                v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                                v.HumanoidRootPart.Transparency = 1
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                --v.Humanoid:ChangeState(11)
                                                --v.Humanoid:ChangeState(14)
                                                FarmPos = v.HumanoidRootPart.CFrame
                                                MonFarm = v.Name
                                                game:GetService "VirtualUser":CaptureController()
                                                game:GetService "VirtualUser":Button1Down(
                                                    Vector2.new(1280, 672),
                                                    workspace.CurrentCamera.CFrame
                                                )
                                            until v.Humanoid.Health <= 0 or not _G.Auto_Saber
                                            if v.Humanoid.Health <= 0 then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "ProQuestProgress",
                                                    "PlaceRelic"
                                                )
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)

local PolePos = CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625)
spawn(
    function()
        while wait() do
            if _G.Autopole and World1 then
                pcall(
                    function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "requestEntrance",
                                Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047)
                            )
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Thunder God" then
                                    if
                                        v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0
                                     then
                                        repeat
                                            task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        until not _G.Autopole or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        else
                            if BypassTP then
                                if
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - PolePos.Position).Magnitude >
                                        1500
                                 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "requestEntrance",
                                        Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047)
                                    )
                                elseif
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - PolePos.Position).Magnitude <
                                        1500
                                 then
                                    topos(PolePos)
                                end
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "requestEntrance",
                                    Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047)
                                )
                            end
                            topos(CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625))
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God") then
                                topos(
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God").HumanoidRootPart.CFrame *
                                        CFrame.new(2, -9, 2)
                                )
                            else
                                if
                                    not game:GetService("Workspace").Enemies:FindFirstChild("Thunder God") and
                                        _G.Autopolehop
                                 then
                                    Hop()
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)

spawn(
    function()
        while wait() do
            if _G.Autopolehop and _G.Autopole then
                if not string.find(game:GetService("Workspace").Enemies:FindFirstChild("Thunder God")) then
                    Hop()
                end
            end
        end
    end
)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.AutoBartilo then
                        if game.Players.LocalPlayer.Data.Level.Value >= 800 then
                            _G.AutoBartilo = true
                            ToggleFarm:Set(false)
                        end
                    end
                end
            end
        )
    end
)

spawn(
    function()
        pcall(
            function()
                while wait(.1) do
                    if _G.AutoBartilo then
                        if
                            game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "BartiloQuestProgress",
                                    "Bartilo"
                                ) == 0
                         then
                            if
                                string.find(
                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                    "Swan Pirates"
                                ) and
                                    string.find(
                                        game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                        "50"
                                    ) and
                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true
                             then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
                                    Ms = "Swan Pirate"
                                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == Ms then
                                            pcall(
                                                function()
                                                    repeat
                                                        task.wait()
                                                        sethiddenproperty(
                                                            game:GetService("Players").LocalPlayer,
                                                            "SimulationRadius",
                                                            math.huge
                                                        )
                                                        EquipWeapon(_G.SelectWeapon)
                                                        AutoHaki()
                                                        v.HumanoidRootPart.Transparency = 1
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX, PosY, PosZ))
                                                        PosMonBarto = v.HumanoidRootPart.CFrame
                                                        game:GetService "VirtualUser":CaptureController()
                                                        game:GetService "VirtualUser":Button1Down(
                                                            Vector2.new(1280, 672)
                                                        )
                                                        AutoBartiloBring = true
                                                    until not v.Parent or v.Humanoid.Health <= 0 or
                                                        _G.AutoBartilo == false or
                                                        game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible ==
                                                            false
                                                    AutoBartiloBring = false
                                                end
                                            )
                                        end
                                    end
                                else
                                    repeat
                                        topos(
                                            CFrame.new(
                                                932.624451,
                                                156.106079,
                                                1180.27466,
                                                -0.973085582,
                                                4.55137119e-08,
                                                -0.230443969,
                                                2.67024713e-08,
                                                1,
                                                8.47491108e-08,
                                                0.230443969,
                                                7.63147128e-08,
                                                -0.973085582
                                            )
                                        )
                                        wait()
                                    until not _G.AutoBartilo or
                                        (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                            Vector3.new(
                                                932.624451,
                                                156.106079,
                                                1180.27466,
                                                -0.973085582,
                                                4.55137119e-08,
                                                -0.230443969,
                                                2.67024713e-08,
                                                1,
                                                8.47491108e-08,
                                                0.230443969,
                                                7.63147128e-08,
                                                -0.973085582
                                            )).Magnitude <= 10
                                end
                            else
                                repeat
                                    topos(CFrame.new(-456.28952, 73.0200958, 299.895966))
                                    wait()
                                until not _G.AutoBartilo or
                                    (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                        Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                                wait(1.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StartQuest",
                                    "BartiloQuest",
                                    1
                                )
                            end
                        elseif
                            game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "BartiloQuestProgress",
                                    "Bartilo"
                                ) == 1
                         then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
                                Ms = "Jeremy"
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == Ms then
                                        OldCFrameBartlio = v.HumanoidRootPart.CFrame
                                        repeat
                                            task.wait()
                                            sethiddenproperty(
                                                game:GetService("Players").LocalPlayer,
                                                "SimulationRadius",
                                                math.huge
                                            )
                                            EquipWeapon(_G.SelectWeapon)
                                            AutoHaki()
                                            v.HumanoidRootPart.Transparency = 1
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            v.HumanoidRootPart.CFrame = OldCFrameBartlio
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX, PosY, PosZ))
                                            game:GetService "VirtualUser":CaptureController()
                                            game:GetService "VirtualUser":Button1Down(Vector2.new(1280, 672))
                                            sethiddenproperty(
                                                game:GetService("Players").LocalPlayer,
                                                "SimulationRadius",
                                                math.huge
                                            )
                                        until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false
                                    end
                                end
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy") then
                                repeat
                                    topos(CFrame.new(-456.28952, 73.0200958, 299.895966))
                                    wait()
                                until not _G.AutoBartilo or
                                    (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                        Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                                wait(1.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "BartiloQuestProgress",
                                    "Bartilo"
                                )
                                wait(1)
                                repeat
                                    topos(CFrame.new(2099.88159, 448.931, 648.997375))
                                    wait()
                                until not _G.AutoBartilo or
                                    (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                        Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                                wait(2)
                            else
                                repeat
                                    topos(CFrame.new(2099.88159, 448.931, 648.997375))
                                    wait()
                                until not _G.AutoBartilo or
                                    (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                        Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                            end
                        elseif
                            game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "BartiloQuestProgress",
                                    "Bartilo"
                                ) == 2
                         then
                            repeat
                                topos(CFrame.new(-1850.49329, 13.1789551, 1750.89685))
                                wait()
                            until not _G.AutoBartilo or
                                (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                    Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10
                            wait(1)
                            repeat
                                topos(CFrame.new(-1858.87305, 19.3777466, 1712.01807))
                                wait()
                            until not _G.AutoBartilo or
                                (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                    Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10
                            wait(1)
                            repeat
                                topos(CFrame.new(-1803.94324, 16.5789185, 1750.89685))
                                wait()
                            until not _G.AutoBartilo or
                                (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                    Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10
                            wait(1)
                            repeat
                                topos(CFrame.new(-1858.55835, 16.8604317, 1724.79541))
                                wait()
                            until not _G.AutoBartilo or
                                (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                    Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10
                            wait(1)
                            repeat
                                topos(CFrame.new(-1869.54224, 15.987854, 1681.00659))
                                wait()
                            until not _G.AutoBartilo or
                                (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                    Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10
                            wait(1)
                            repeat
                                topos(CFrame.new(-1800.0979, 16.4978027, 1684.52368))
                                wait()
                            until not _G.AutoBartilo or
                                (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                    Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10
                            wait(1)
                            repeat
                                topos(CFrame.new(-1819.26343, 14.795166, 1717.90625))
                                wait()
                            until not _G.AutoBartilo or
                                (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                    Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10
                            wait(1)
                            repeat
                                topos(CFrame.new(-1813.51843, 14.8604736, 1724.79541))
                                wait()
                            until not _G.AutoBartilo or
                                (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                    Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10
                        end
                    end
                end
            end
        )
    end
)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.AutoBartilo then
                        if
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "BartiloQuestProgress",
                                "Bartilo"
                            ) == 3
                         then
                            BartiloToggle:Set(false)
                            ToggleFarm:Set(true)
                        end
                    end
                end
            end
        )
    end
)

spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    if _G.BringMonster then
                        CheckQuest()
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if
                                _G.AutoFarm and StartMagnet and v.Name == Mon and
                                    (Mon == "Factory Staff" or Mon == "Monkey" or Mon == "Dragon Crew Warrior" or
                                        Mon == "Dragon Crew Archer") and
                                    v:FindFirstChild("Humanoid") and
                                    v:FindFirstChild("HumanoidRootPart") and
                                    v.Humanoid.Health > 0 and
                                    (v.HumanoidRootPart.Position -
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        250
                             then
                                v.HumanoidRootPart.Size = Vector3.new(150, 150, 150)
                                v.HumanoidRootPart.CFrame = PosMon
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            elseif
                                _G.AutoFarm and StartMagnet and v.Name == Mon and v:FindFirstChild("Humanoid") and
                                    v:FindFirstChild("HumanoidRootPart") and
                                    v.Humanoid.Health > 0 and
                                    (v.HumanoidRootPart.Position -
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        _G.BringMode
                             then
                                v.HumanoidRootPart.Size = Vector3.new(150, 150, 150)
                                v.HumanoidRootPart.CFrame = PosMon
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                            if _G.AutoEctoplasm and StartEctoplasmMagnet then
                                if
                                    string.find(v.Name, "Ship") and v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0 and
                                        (v.HumanoidRootPart.Position - EctoplasmMon.Position).Magnitude <= _G.BringMode
                                 then
                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    v.HumanoidRootPart.CFrame = EctoplasmMon
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.AutoRengoku and StartRengokuMagnet then
                                if
                                    (v.Name == "Snow Lurker" or v.Name == "Arctic Warrior") and
                                        (v.HumanoidRootPart.Position - RengokuMon.Position).Magnitude <= _G.BringMode and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.HumanoidRootPart.Size = Vector3.new(1500, 1500, 1500)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = RengokuMon
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.AutoMusketeerHat and StartMagnetMusketeerhat then
                                if
                                    v.Name == "Forest Pirate" and
                                        (v.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <=
                                            _G.BringMode and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = MusketeerHatMon
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.AutoObservationHakiV2 and Mangnetcitzenmon then
                                if
                                    v.Name == "Forest Pirate" and
                                        (v.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <=
                                            _G.BringMode and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosHee
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.Auto_EvoRace and StartEvoMagnet then
                                if
                                    v.Name == "Zombie" and
                                        (v.HumanoidRootPart.Position - PosMonEvo.Position).Magnitude <= _G.BringMode and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonEvo
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.AutoBartilo and AutoBartiloBring then
                                if
                                    v.Name == "Swan Pirate" and
                                        (v.HumanoidRootPart.Position - PosMonBarto.Position).Magnitude <= _G.BringMode and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonBarto
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.AutoFarmFruitMastery and StartMasteryFruitMagnet then
                                if v.Name == "Monkey" then
                                    if
                                        (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <=
                                            _G.BringMode and
                                            v:FindFirstChild("Humanoid") and
                                            v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0
                                     then
                                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        v.Humanoid:ChangeState(14)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(
                                            game:GetService("Players").LocalPlayer,
                                            "SimulationRadius",
                                            math.huge
                                        )
                                    end
                                elseif v.Name == "Factory Staff" then
                                    if
                                        (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <=
                                            _G.BringMode and
                                            v:FindFirstChild("Humanoid") and
                                            v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0
                                     then
                                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        v.Humanoid:ChangeState(14)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(
                                            game:GetService("Players").LocalPlayer,
                                            "SimulationRadius",
                                            math.huge
                                        )
                                    end
                                elseif v.Name == Mon then
                                    if
                                        (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <=
                                            _G.BringMode and
                                            v:FindFirstChild("Humanoid") and
                                            v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0
                                     then
                                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        v.Humanoid:ChangeState(14)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(
                                            game:GetService("Players").LocalPlayer,
                                            "SimulationRadius",
                                            math.huge
                                        )
                                    end
                                end
                            end
                            if _G.AutoFarmGunMastery and StartMasteryGunMagnet then
                                if v.Name == "Monkey" then
                                    if
                                        (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <=
                                            _G.BringMode and
                                            v:FindFirstChild("Humanoid") and
                                            v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0
                                     then
                                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        v.Humanoid:ChangeState(14)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(
                                            game:GetService("Players").LocalPlayer,
                                            "SimulationRadius",
                                            math.huge
                                        )
                                    end
                                elseif v.Name == "Factory Staff" then
                                    if
                                        (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <=
                                            _G.BringMode and
                                            v:FindFirstChild("Humanoid") and
                                            v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0
                                     then
                                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        v.Humanoid:ChangeState(14)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(
                                            game:GetService("Players").LocalPlayer,
                                            "SimulationRadius",
                                            math.huge
                                        )
                                    end
                                elseif v.Name == Mon then
                                    if
                                        (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <=
                                            _G.BringMode and
                                            v:FindFirstChild("Humanoid") and
                                            v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0
                                     then
                                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        v.Humanoid:ChangeState(14)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(
                                            game:GetService("Players").LocalPlayer,
                                            "SimulationRadius",
                                            math.huge
                                        )
                                    end
                                end
                            end
                            if _G.Auto_Bone and StartMagnetBoneMon then
                                if
                                    (v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or
                                        v.Name == "Demonic Soul" or
                                        v.Name == "Posessed Mummy") and
                                        (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= _G.BringMode and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonBone
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.AutoFarmCandy and StartCandyMagnet then
                                if
                                    (v.Name == "Ice Cream Chef" or v.Name == "Ice Cream Commander") and
                                        (v.HumanoidRootPart.Position - CandyMon.Position).Magnitude <= _G.BringMode and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = CandyMon
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.AutoDoughtBoss and MagnetDought then
                                if
                                    (v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or
                                        v.Name == "Head Baker") and
                                        (v.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude <=
                                            _G.BringMode and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonDoughtOpenDoor
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                        end
                    end
                end
            )
        end
    end
)

if World2 then
    spawn(
        function()
            while wait() do
                if _G.AutoThirdSea then
                    pcall(
                        function()
                            if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 and World2 then
                                _G.AutoFarm = false
                                if
                                    game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(
                                        "ZQuestProgress",
                                        "General"
                                    ) == 0
                                 then
                                    topos(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
                                    if
                                        (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position -
                                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                            10
                                     then
                                        wait(1.5)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "ZQuestProgress",
                                            "Begin"
                                        )
                                    end
                                    wait(1.8)
                                    if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
                                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "rip_indra" then
                                                OldCFrameThird = v.HumanoidRootPart.CFrame
                                                repeat
                                                    task.wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX, PosY, PosZ))
                                                    v.HumanoidRootPart.CFrame = OldCFrameThird
                                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    game:GetService "VirtualUser":CaptureController()
                                                    game:GetService "VirtualUser":Button1Down(Vector2.new(1280, 672))
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                        "TravelZou"
                                                    )
                                                    sethiddenproperty(
                                                        game:GetService("Players").LocalPlayer,
                                                        "SimulationRadius",
                                                        math.huge
                                                    )
                                                until _G.AutoThirdSea == false or v.Humanoid.Health <= 0 or not v.Parent
                                            end
                                        end
                                    elseif
                                        not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") and
                                            (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position -
                                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                1000
                                     then
                                        topos(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                                    end
                                end
                            end
                        end
                    )
                end
            end
        end
    )
end

local BigMomPos = CFrame.new(-731.2034301757812, 381.5658874511719, -11198.4951171875)
spawn(
    function()
        while wait() do
            if _G.AutoBudySword and World3 then
                pcall(
                    function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cake Queen" then
                                    if
                                        v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0
                                     then
                                        repeat
                                            task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        until not _G.AutoBudySword or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        else
                            if BypassTP then
                                if
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BigMomPos.Position).Magnitude >
                                        1500
                                 then
                                    BTP(BigMomPos)
                                elseif
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BigMomPos.Position).Magnitude <
                                        1500
                                 then
                                    topos(BigMomPos)
                                end
                            else
                                topos(BigMomPos)
                            end
                            topos(CFrame.new(-731.2034301757812, 381.5658874511719, -11198.4951171875))
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen") then
                                topos(
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen").HumanoidRootPart.CFrame *
                                        CFrame.new(2, 20, 2)
                                )
                            else
                                if _G.AutoBudySwordHop then
                                    Hop()
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)

spawn(
    function()
        while wait() do
            pcall(
                function()
                    if _G.AutoNevaSoulGuitar then
                        if GetWeaponInventory("Soul Guitar") == false then
                            if
                                (CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125).Position -
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                    5000
                             then
                                if game:GetService("Workspace").NPCs:FindFirstChild("Skeleton Machine") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "soulGuitarBuy",
                                        true
                                    )
                                else
                                    if game:GetService("Workspace").Map["Haunted Castle"].Candle1.Transparency == 0 then
                                        if
                                            game:GetService("Workspace").Map["Haunted Castle"].Placard1.Left.Part.Transparency ==
                                                0
                                         then
                                            Quest2 = true
                                            repeat
                                                wait()
                                                topos(CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875))
                                            until (CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875).Position -
                                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                3 or not _G.AutoNevaSoulGuitar
                                            wait(1)
                                            fireclickdetector(
                                                game:GetService("Workspace").Map["Haunted Castle"].Placard7.Left.ClickDetector
                                            )
                                            wait(1)
                                            fireclickdetector(
                                                game:GetService("Workspace").Map["Haunted Castle"].Placard6.Left.ClickDetector
                                            )
                                            wait(1)
                                            fireclickdetector(
                                                game:GetService("Workspace").Map["Haunted Castle"].Placard5.Left.ClickDetector
                                            )
                                            wait(1)
                                            fireclickdetector(
                                                game:GetService("Workspace").Map["Haunted Castle"].Placard4.Right.ClickDetector
                                            )
                                            wait(1)
                                            fireclickdetector(
                                                game:GetService("Workspace").Map["Haunted Castle"].Placard3.Left.ClickDetector
                                            )
                                            wait(1)
                                            fireclickdetector(
                                                game:GetService("Workspace").Map["Haunted Castle"].Placard2.Right.ClickDetector
                                            )
                                            wait(1)
                                            fireclickdetector(
                                                game:GetService("Workspace").Map["Haunted Castle"].Placard1.Right.ClickDetector
                                            )
                                            wait(1)
                                        elseif
                                            game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1:FindFirstChild(
                                                "ClickDetector"
                                            )
                                         then
                                            if
                                                game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1:FindFirstChild(
                                                    "ClickDetector"
                                                )
                                             then
                                                Quest4 = true
                                                repeat
                                                    wait()
                                                    topos(
                                                        CFrame.new(
                                                            -9553.5986328125,
                                                            65.62338256835938,
                                                            6041.58837890625
                                                        )
                                                    )
                                                until (CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625).Position -
                                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                    3 or not _G.AutoNevaSoulGuitar
                                                wait(1)
                                                topos(
                                                    game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.CFrame
                                                )
                                                wait(1)
                                                fireclickdetector(
                                                    game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.ClickDetector
                                                )
                                                wait(1)
                                                topos(
                                                    game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.CFrame
                                                )
                                                wait(1)
                                                fireclickdetector(
                                                    game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector
                                                )
                                                wait(1)
                                                fireclickdetector(
                                                    game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector
                                                )
                                                wait(1)
                                                fireclickdetector(
                                                    game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector
                                                )
                                                wait(1)
                                                topos(
                                                    game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.CFrame
                                                )
                                                wait(1)
                                                fireclickdetector(
                                                    game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector
                                                )
                                                wait(1)
                                                fireclickdetector(
                                                    game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector
                                                )
                                                wait(1)
                                                topos(
                                                    game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.CFrame
                                                )
                                                wait(1)
                                                fireclickdetector(
                                                    game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.ClickDetector
                                                )
                                                wait(1)
                                                topos(
                                                    game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.CFrame
                                                )
                                                wait(1)
                                                fireclickdetector(
                                                    game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector
                                                )
                                                wait(1)
                                                fireclickdetector(
                                                    game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector
                                                )
                                                wait(1)
                                                fireclickdetector(
                                                    game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector
                                                )
                                            else
                                                --Not Work Yet
                                                Quest3 = true
                                            end
                                        else
                                            if game:GetService("Workspace").NPCs:FindFirstChild("Ghost") then
                                                local args = {
                                                    [1] = "GuitarPuzzleProgress",
                                                    [2] = "Ghost"
                                                }

                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    unpack(args)
                                                )
                                            end
                                            if game.Workspace.Enemies:FindFirstChild("Living Zombie") then
                                                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                                    if
                                                        v:FindFirstChild("HumanoidRootPart") and
                                                            v:FindFirstChild("Humanoid") and
                                                            v.Humanoid.Health > 0
                                                     then
                                                        if v.Name == "Living Zombie" then
                                                            EquipWeapon(_G.SelectWeapon)
                                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                            v.HumanoidRootPart.Transparency = 1
                                                            v.Humanoid.JumpPower = 0
                                                            v.Humanoid.WalkSpeed = 0
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.HumanoidRootPart.CFrame =
                                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame *
                                                                CFrame.new(0, 20, 0)
                                                            topos(
                                                                CFrame.new(
                                                                    -10160.787109375,
                                                                    138.6616973876953,
                                                                    5955.03076171875
                                                                )
                                                            )
                                                            game:GetService "VirtualUser":CaptureController()
                                                            game:GetService "VirtualUser":Button1Down(
                                                                Vector2.new(1280, 672)
                                                            )
                                                        end
                                                    end
                                                end
                                            else
                                                topos(CFrame.new(-10160.787109375, 138.6616973876953, 5955.03076171875))
                                            end
                                        end
                                    else
                                        if
                                            string.find(
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "gravestoneEvent",
                                                    2
                                                ),
                                                "Error"
                                            )
                                         then
                                            print("Go to Grave")
                                            topos(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125))
                                        elseif
                                            string.find(
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "gravestoneEvent",
                                                    2
                                                ),
                                                "Nothing"
                                            )
                                         then
                                            print("Wait Next Night")
                                        else
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                "gravestoneEvent",
                                                2,
                                                true
                                            )
                                        end
                                    end
                                end
                            else
                                topos(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125))
                            end
                        else
                            if _G.soulGuitarhop then
                                hop()
                            end
                        end
                    end
                end
            )
        end
    end
)

spawn(
    function()
        while wait() do
            if _G.AutoObservationHakiV2 then
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    repeat
                        topos(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625))
                        wait()
                    until _G.StopTween == true or not _G.AutoObservationHakiV2 or
                        (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                            Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
                    wait(.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen")
                    wait(1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "CitizenQuest", 1)
                else
                    if
                        string.find(
                            game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                            "Defeat 50 Forest Pirates"
                        )
                     then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Forest Pirate" then
                                    repeat
                                        wait()
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        PosHee = v.HumanoidRootPart.CFrame
                                        v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        game:GetService "VirtualUser":CaptureController()
                                        game:GetService "VirtualUser":Button1Down(Vector2.new(1280, 672))
                                        Mangnetcitzenmon = true
                                    until _G.AutoObservationHakiV2 == false or v.Humanoid.Health <= 0
                                    Mangnetcitzenmon = false
                                end
                            end
                        else
                            repeat
                                topos(CFrame.new(-13277.568359375, 370.34185791016, -7821.1572265625))
                                wait()
                            until _G.StopTween == true or not _G.AutoObservationHakiV2 or
                                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                    Vector3.new(-13277.568359375, 370.34185791016, -7821.1572265625)).Magnitude <= 10
                        end
                    elseif
                        game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text ==
                            "Defeat  Captain Elephant (0/1)"
                     then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Captain Elephant" then
                                    repeat
                                        wait()
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        if sethiddenproperty then
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        end
                                        v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        game:GetService "VirtualUser":CaptureController()
                                        game:GetService "VirtualUser":Button1Down(Vector2.new(1280, 672))
                                    until _G.AutoObservationHakiV2 == false or v.Humanoid.Health <= 0
                                end
                            end
                        else
                            repeat
                                topos(CFrame.new(-13493.12890625, 318.89553833008, -8373.7919921875))
                                wait()
                            until _G.StopTween == true or not _G.AutoObservationHakiV2 or
                                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                    Vector3.new(-13493.12890625, 318.89553833008, -8373.7919921875)).Magnitude <= 10
                        end
                    end
                end
                if
                    game.Players.LocalPlayer.Backpack:FindFirstChild("Banana") and
                        game.Players.LocalPlayer.Backpack:FindFirstChild("Apple") and
                        game.Players.LocalPlayer.Backpack:FindFirstChild("Pineapple")
                 then
                    repeat
                        topos(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625))
                        wait()
                    until _G.StopTween == true or not _G.AutoObservationHakiV2 or
                        (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                            Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
                    wait(.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen")
                elseif
                    game.Players.LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or
                        game.Players.LocalPlayer.Character:FindFirstChild("Fruit Bowl")
                 then
                    repeat
                        topos(CFrame.new(-10920.125, 624.20275878906, -10266.995117188))
                        wait()
                    until _G.StopTween == true or not _G.AutoObservationHakiV2 or
                        (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                            Vector3.new(-10920.125, 624.20275878906, -10266.995117188)).Magnitude <= 10
                    wait(.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2", "Start")
                    wait(1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2", "Buy")
                else
                    for i, v in pairs(game.Workspace:GetDescendants()) do
                        if v.Name == "Apple" or v.Name == "Banana" or v.Name == "Pineapple" then
                            v.Handle.CFrame =
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10)
                            wait()
                            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Handle, 0)
                            wait()
                        end
                    end
                end
            end
        end
    end
)

spawn(
    function()
        while wait() do
            pcall(
                function()
                    if _G.AutoObservationHakiV2 then
                        if sethiddenproperty then
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                end
            )
            game:GetService("RunService").Heartbeat:Wait()
        end
    end
)

spawn(
    function()
        game:GetService("RunService").Heartbeat:connect(
            function()
                pcall(
                    function()
                        if _G.AutoObservationHakiV2 then
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
                                game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                            end
                        end
                    end
                )
            end
        )
    end
)

spawn(
    function()
        pcall(
            function()
                game:GetService("RunService").Heartbeat:Connect(
                    function()
                        game:GetService("RunService").Heartbeat:Wait()
                        if _G.AutoObservationHakiV2 and StatrMagnet then
                            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Name == "Forest Pirate" and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    if v.Name == "Forest Pirate" then
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        v.HumanoidRootPart.CFrame = PosHee
                                    end
                                end
                            end
                        end
                    end
                )
            end
        )
    end
)

spawn(
    function()
        game:GetService("RunService").Heartbeat:connect(
            function()
                game:GetService("RunService").Heartbeat:Wait()
                pcall(
                    function()
                        if _G.AutoObservationHakiV2 and StatrMagnet then
                            CheckQuest()
                            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Name == Ms then
                                    v.Humanoid:ChangeState(11)
                                end
                            end
                        end
                    end
                )
                game:GetService("RunService").Heartbeat:Wait()
            end
        )
    end
)

spawn(
    function()
        while wait() do
            pcall(
                function()
                    if Auto_Cursed_Dual_Katana then
                        if
                            game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") or
                                game.Players.LocalPlayer.Character:FindFirstChild("Yama") or
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Yama")
                         then
                            if
                                game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or
                                    game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita")
                             then
                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                                    EquipWeapon("Tushita")
                                end
                            elseif
                                game.Players.LocalPlayer.Character:FindFirstChild("Yama") or
                                    game.Players.LocalPlayer.Backpack:FindFirstChild("Yama")
                             then
                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                                    EquipWeapon("Yama")
                                end
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem", "Tushita")
                        end
                    end
                end
            )
        end
    end
)
spawn(
    function()
        while wait() do
            pcall(
                function()
                    if Auto_Cursed_Dual_Katana then
                        if GetMaterial("Alucard Fragment") == 0 then
                            Auto_Quest_Yama_1 = true
                            Auto_Quest_Yama_2 = false
                            Auto_Quest_Yama_3 = false
                            Auto_Quest_Tushita_1 = false
                            Auto_Quest_Tushita_2 = false
                            Auto_Quest_Tushita_3 = false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "CDKQuest",
                                "Progress",
                                "Evil"
                            )
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "CDKQuest",
                                "StartTrial",
                                "Evil"
                            )
                        elseif GetMaterial("Alucard Fragment") == 1 then
                            Auto_Quest_Yama_1 = false
                            Auto_Quest_Yama_2 = true
                            Auto_Quest_Yama_3 = false
                            Auto_Quest_Tushita_1 = false
                            Auto_Quest_Tushita_2 = false
                            Auto_Quest_Tushita_3 = false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "CDKQuest",
                                "Progress",
                                "Evil"
                            )
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "CDKQuest",
                                "StartTrial",
                                "Evil"
                            )
                        elseif GetMaterial("Alucard Fragment") == 2 then
                            Auto_Quest_Yama_1 = false
                            Auto_Quest_Yama_2 = false
                            Auto_Quest_Yama_3 = true
                            Auto_Quest_Tushita_1 = false
                            Auto_Quest_Tushita_2 = false
                            Auto_Quest_Tushita_3 = false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "CDKQuest",
                                "Progress",
                                "Evil"
                            )
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "CDKQuest",
                                "StartTrial",
                                "Evil"
                            )
                        elseif GetMaterial("Alucard Fragment") == 3 then
                            Auto_Quest_Yama_1 = false
                            Auto_Quest_Yama_2 = false
                            Auto_Quest_Yama_3 = false
                            Auto_Quest_Tushita_1 = true
                            Auto_Quest_Tushita_2 = false
                            Auto_Quest_Tushita_3 = false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "CDKQuest",
                                "Progress",
                                "Good"
                            )
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "CDKQuest",
                                "StartTrial",
                                "Good"
                            )
                        elseif GetMaterial("Alucard Fragment") == 4 then
                            Auto_Quest_Yama_1 = false
                            Auto_Quest_Yama_2 = false
                            Auto_Quest_Yama_3 = false
                            Auto_Quest_Tushita_1 = false
                            Auto_Quest_Tushita_2 = true
                            Auto_Quest_Tushita_3 = false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "CDKQuest",
                                "Progress",
                                "Good"
                            )
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "CDKQuest",
                                "StartTrial",
                                "Good"
                            )
                        elseif GetMaterial("Alucard Fragment") == 5 then
                            Auto_Quest_Yama_1 = false
                            Auto_Quest_Yama_2 = false
                            Auto_Quest_Yama_3 = false
                            Auto_Quest_Tushita_1 = false
                            Auto_Quest_Tushita_2 = false
                            Auto_Quest_Tushita_3 = true
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "CDKQuest",
                                "Progress",
                                "Good"
                            )
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "CDKQuest",
                                "StartTrial",
                                "Good"
                            )
                        elseif GetMaterial("Alucard Fragment") == 6 then
                            if
                                game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss") or
                                    game:GetService("Workspace").ReplicatedStorage:FindFirstChild(
                                        "Cursed Skeleton Boss"
                                    )
                             then
                                Auto_Quest_Yama_1 = false
                                Auto_Quest_Yama_2 = false
                                Auto_Quest_Yama_3 = false
                                Auto_Quest_Tushita_1 = false
                                Auto_Quest_Tushita_2 = false
                                Auto_Quest_Tushita_3 = false
                                if
                                    game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss") or
                                        game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton")
                                 then
                                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Cursed Skeleton Boss" or v.Name == "Cursed Skeleton" then
                                            if v.Humanoid.Health > 0 then
                                                EquipWeapon(Sword)
                                                topos(v.HumanoidRootPart.CFrame * Pos)
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                v.HumanoidRootPart.Transparency = 1
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                --v.Humanoid:ChangeState(11)
                                                --v.Humanoid:ChangeState(14)
                                                PosMon = v.HumanoidRootPart.CFrame
                                                MonFarm = v.Name
                                                Click()
                                            end
                                        end
                                    end
                                end
                            else
                                if
                                    (CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875).Position -
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100
                                 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "CDKQuest",
                                        "Progress",
                                        "Good"
                                    )
                                    wait(1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "CDKQuest",
                                        "Progress",
                                        "Evil"
                                    )
                                    wait(1)
                                    topos(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
                                    wait(1.5)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                    wait(1.5)
                                    topos(CFrame.new(-12253.5419921875, 598.8999633789062, -6546.8388671875))
                                else
                                    topos(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
                                end
                            end
                        end
                    end
                end
            )
        end
    end
)

spawn(
    function()
        while wait() do
            if Auto_Quest_Yama_1 then
                pcall(
                    function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Mythological Pirate" then
                                    repeat
                                        wait()
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 0, -2))
                                    until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_1 == false
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "CDKQuest",
                                        "StartTrial",
                                        "Evil"
                                    )
                                end
                            end
                        else
                            topos(CFrame.new(-13451.46484375, 543.712890625, -6961.0029296875))
                        end
                    end
                )
            end
        end
    end
)

spawn(
    function()
        while wait() do
            pcall(
                function()
                    if Auto_Quest_Yama_2 then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HazeESP") then
                                v.HazeESP.Size = UDim2.new(50, 50, 50, 50)
                                v.HazeESP.MaxDistance = "inf"
                            end
                        end
                        for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                            if v:FindFirstChild("HazeESP") then
                                v.HazeESP.Size = UDim2.new(50, 50, 50, 50)
                                v.HazeESP.MaxDistance = "inf"
                            end
                        end
                    end
                end
            )
        end
    end
)

spawn(
    function()
        while wait() do
            pcall(
                function()
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if
                            Auto_Quest_Yama_2 and v:FindFirstChild("HazeESP") and
                                (v.HumanoidRootPart.Position - PosMonsEsp.Position).magnitude <= 300
                         then
                            v.HumanoidRootPart.CFrame = PosMonsEsp
                            v.HumanoidRootPart.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                            if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                                local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
                                vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
                                vc.Velocity = Vector3.new(0, 0, 0)
                            end
                        end
                    end
                end
            )
        end
    end
)

spawn(
    function()
        while wait() do
            if Auto_Quest_Yama_2 then
                pcall(
                    function()
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HazeESP") then
                                repeat
                                    wait()
                                    if
                                        (v.HumanoidRootPart.Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                                            2000
                                     then
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                    else
                                        EquipWeapon(Sword)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        --v.Humanoid:ChangeState(11)
                                        --v.Humanoid:ChangeState(14)
                                        PosMon = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        Click()
                                        if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                    end
                                until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_2 == false or not v.Parent or
                                    v.Humanoid.Health <= 0 or
                                    not v:FindFirstChild("HazeESP")
                            else
                                for x, y in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                                    if y:FindFirstChild("HazeESP") then
                                        if
                                            (y.HumanoidRootPart.Position -
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                                                2000
                                         then
                                            topos(y.HumanoidRootPart.CFrameMon * Farm_Mode)
                                        else
                                            topos(y.HumanoidRootPart.CFrame * Farm_Mode)
                                        end
                                    end
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)

spawn(
    function()
        while wait() do
            if Auto_Quest_Yama_3 then
                pcall(
                    function()
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then
                            topos(game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame)
                        elseif game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
                            repeat
                                wait()
                                if
                                    game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or
                                        game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or
                                        game:GetService("Workspace").Enemies:FindFirstChild("Hell's Messenger")
                                 then
                                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if
                                            v.Name == "Cursed Skeleton" or v.Name == "Cursed Skeleton" or
                                                v.Name == "Hell's Messenger]"
                                         then
                                            if v.Humanoid.Health > 0 then
                                                repeat
                                                    wait()
                                                    EquipWeapon(Sword)
                                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                    v.HumanoidRootPart.Transparency = 1
                                                    v.Humanoid.JumpPower = 0
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                    --v.Humanoid:ChangeState(11)
                                                    --v.Humanoid:ChangeState(14)
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    MonFarm = v.Name
                                                    Click()
                                                    if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                                        v.Humanoid.Animator:Destroy()
                                                    end
                                                until v.Humanoid.Health <= 0 or not v.Parent or
                                                    Auto_Quest_Yama_3 == false
                                            end
                                        end
                                    end
                                else
                                    wait(5)
                                    topos(game:GetService("Workspace").Map.HellDimension.Torch1.CFrame)
                                    wait(1.5)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                    wait(1.5)
                                    topos(game:GetService("Workspace").Map.HellDimension.Torch2.CFrame)
                                    wait(1.5)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                    wait(1.5)
                                    topos(game:GetService("Workspace").Map.HellDimension.Torch3.CFrame)
                                    wait(1.5)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                    wait(1.5)
                                    topos(game:GetService("Workspace").Map.HellDimension.Exit.CFrame)
                                end
                            until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or
                                GetMaterial("Alucard Fragment") == 3
                        else
                            if
                                game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") or
                                    game.ReplicatedStorage:FindFirstChild("Soul Reaper")
                             then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Soul Reaper" then
                                            if v.Humanoid.Health > 0 then
                                                repeat
                                                    wait()
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX, PosY, PosZ))
                                                until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or
                                                    game:GetService("Workspace").Map:FindFirstChild("HellDimension")
                                            end
                                        end
                                    end
                                else
                                    topos(CFrame.new(-9570.033203125, 315.9346923828125, 6726.89306640625))
                                end
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
                            end
                        end
                    end
                )
            end
        end
    end
)
spawn(
    function()
        while wait() do
            if Auto_Quest_Tushita_1 then
                topos(CFrame.new(-9546.990234375, 21.139892578125, 4686.1142578125))
                wait(5)
                topos(CFrame.new(-6120.0576171875, 16.455780029296875, -2250.697265625))
                wait(5)
                topos(CFrame.new(-9533.2392578125, 7.254445552825928, -8372.69921875))
            end
        end
    end
)
spawn(
    function()
        while wait() do
            if Auto_Quest_Tushita_2 then
                pcall(
                    function()
                        if
                            (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position -
                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500
                         then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if
                                    Auto_Quest_Tushita_2 and v:FindFirstChild("HumanoidRootPart") and
                                        v:FindFirstChild("Humanoid") and
                                        v.Humanoid.Health > 0
                                 then
                                    if
                                        (v.HumanoidRootPart.Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <
                                            2000
                                     then
                                        repeat
                                            wait()
                                            EquipWeapon(Sword)
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            --v.Humanoid:ChangeState(11)
                                            --v.Humanoid:ChangeState(14)
                                            PosMon = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            Click()
                                            if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                        until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_2 == false
                                    end
                                end
                            end
                        else
                            topos(CFrame.new(-5545.1240234375, 313.800537109375, -2976.616455078125))
                        end
                    end
                )
            end
        end
    end
)
spawn(
    function()
        while wait() do
            if Auto_Quest_Tushita_3 then
                pcall(
                    function()
                        if
                            game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") or
                                game.ReplicatedStorage:FindFirstChild("Cake Queen")
                         then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cake Queen" then
                                        if v.Humanoid.Health > 0 then
                                            repeat
                                                wait()
                                                EquipWeapon(Sword)
                                                topos(v.HumanoidRootPart.CFrame * Pos)
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                v.HumanoidRootPart.Transparency = 1
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                --v.Humanoid:ChangeState(11)
                                                --v.Humanoid:ChangeState(14)
                                                PosMon = v.HumanoidRootPart.CFrame
                                                MonFarm = v.Name
                                                Click()
                                                if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                            until Auto_Cursed_Dual_Katana == false or Auto_Quest_Tushita_3 == false or
                                                game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension")
                                        end
                                    end
                                end
                            else
                                topos(CFrame.new(-709.3132934570312, 381.6005859375, -11011.396484375))
                            end
                        elseif game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") then
                            repeat
                                wait()
                                if
                                    game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or
                                        game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or
                                        game:GetService("Workspace").Enemies:FindFirstChild("Heaven's Guardian")
                                 then
                                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if
                                            v.Name == "Cursed Skeleton" or v.Name == "Cursed Skeleton" or
                                                v.Name == "Heaven's Guardian"
                                         then
                                            if v.Humanoid.Health > 0 then
                                                repeat
                                                    wait()
                                                    EquipWeapon(Sword)
                                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                    v.HumanoidRootPart.Transparency = 1
                                                    v.Humanoid.JumpPower = 0
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                    --v.Humanoid:ChangeState(11)
                                                    --v.Humanoid:ChangeState(14)
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    MonFarm = v.Name
                                                    Click()
                                                    if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                                        v.Humanoid.Animator:Destroy()
                                                    end
                                                until v.Humanoid.Health <= 0 or not v.Parent or
                                                    Auto_Quest_Tushita_3 == false
                                            end
                                        end
                                    end
                                else
                                    wait(5)
                                    topos(game:GetService("Workspace").Map.HeavenlyDimension.Torch1.CFrame)
                                    wait(1.5)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                    wait(1.5)
                                    topos(game:GetService("Workspace").Map.HeavenlyDimension.Torch2.CFrame)
                                    wait(1.5)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                    wait(1.5)
                                    topos(game:GetService("Workspace").Map.HeavenlyDimension.Torch3.CFrame)
                                    wait(1.5)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                    wait(1.5)
                                    topos(game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame)
                                end
                            until not Auto_Cursed_Dual_Katana or not Auto_Quest_Tushita_3 or
                                GetMaterial("Alucard Fragment") == 6
                        end
                    end
                )
            end
        end
    end
)

local TushitaPos = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)
spawn(
    function()
        while wait() do
            if _G.Autotushita and World3 then
                pcall(
                    function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Longma") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Longma" then
                                    if
                                        v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0
                                     then
                                        repeat
                                            task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        until not _G.Autotushita or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        else
                            if BypassTP then
                                if
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TushitaPos.Position).Magnitude >
                                        1500
                                 then
                                    BTP(TushitaPos)
                                elseif
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TushitaPos.Position).Magnitude <
                                        1500
                                 then
                                    topos(TushitaPos)
                                end
                            else
                                topos(TushitaPos)
                            end
                            topos(CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125))
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Longma") then
                                topos(
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Longma").HumanoidRootPart.CFrame *
                                        CFrame.new(2, 20, 2)
                                )
                            else
                                if _G.Autotushitahop then
                                    Hop()
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)

local CavandisPos =
    CFrame.new(
    5314.58203,
    22.8796749,
    -125.942276,
    1,
    1.69639192e-10,
    1.5617945e-15,
    -1.69639192e-10,
    1,
    5.38001999e-08,
    -1.55266783e-15,
    -5.38001999e-08,
    1
)
spawn(
    function()
        while wait() do
            if _G.AutoCarvender and World3 then
                pcall(
                    function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Beautiful Pirate" then
                                    if
                                        v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0
                                     then
                                        repeat
                                            task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        until not _G.AutoCarvender or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        else
                            if BypassTP then
                                if
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CavandisPos.Position).Magnitude >
                                        1500
                                 then
                                    BTP(CavandisPos)
                                elseif
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CavandisPos.Position).Magnitude <
                                        1500
                                 then
                                    topos(CavandisPos)
                                end
                            else
                                topos(CavandisPos)
                            end
                            topos(CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875))
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate") then
                                topos(
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate").HumanoidRootPart.CFrame *
                                        CFrame.new(2, 20, 2)
                                )
                            else
                                if _G.AutoCavanderhop then
                                    Hop()
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)

local ElephantPos = CFrame.new(-13348.0654296875, 405.8904113769531, -8570.62890625)
spawn(
    function()
        while wait() do
            if _G.AutoTwinHook and World3 then
                pcall(
                    function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Captain Elephant" then
                                    if
                                        v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0
                                     then
                                        repeat
                                            task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        until not _G.AutoTwinHook or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        else
                            if BypassTP then
                                if
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - ElephantPos.Position).Magnitude >
                                        1500
                                 then
                                    BTP(ElephantPos)
                                elseif
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - ElephantPos.Position).Magnitude <
                                        1500
                                 then
                                    topos(ElephantPos)
                                end
                            else
                                topos(ElephantPos)
                            end
                            topos(CFrame.new(-13348.0654296875, 405.8904113769531, -8570.62890625))
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant") then
                                topos(
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant").HumanoidRootPart.CFrame *
                                        CFrame.new(2, 20, 2)
                                )
                            else
                                if _G.AutoTwinHook_Hop then
                                    Hop()
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)

local GGPos = CFrame.new(3757.732421875, 91.99540710449219, 253.65066528320312)
spawn(
    function()
        while wait() do
            if _G.Namfon and World3 then
                pcall(
                    function()
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if
                                string.find(
                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                    "Training Dummy"
                                ) or
                                    string.find(
                                        game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                        "Training Dummy"
                                    ) or
                                    string.find(
                                        game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                        "Training Dummy"
                                    )
                             then
                                if
                                    game:GetService("Workspace").Enemies:FindFirstChild("Training Dummy") or
                                        game:GetService("Workspace").Enemies:FindFirstChild("Training Dummy") or
                                        game:GetService("Workspace").Enemies:FindFirstChild("Training Dummy")
                                 then
                                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if
                                            v.Name == "Training Dummy" or v.Name == "Training Dummy" or
                                                v.Name == "Training Dummy"
                                         then
                                            if
                                                v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                                    v.Humanoid.Health > 0
                                             then
                                                repeat
                                                    wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    Fastattack = true
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                                    game:GetService("VirtualUser"):CaptureController()
                                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                                until _G.Namfon == false or v.Humanoid.Health <= 0 or not v.Parent
                                                Fastattack = false
                                            end
                                        end
                                    end
                                else
                                    if BypassTP then
                                        if
                                            (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                                GGPos.Position).Magnitude > 1500
                                         then
                                            BTP(GGPos)
                                        elseif
                                            (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                                GGPos.Position).Magnitude < 1500
                                         then
                                            topos(GGPos)
                                        end
                                    else
                                        topos(GGPos)
                                    end
                                    topos(CFrame.new(3757.732421875, 91.99540710449219, 253.65066528320312))
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
                                        topos(
                                            game:GetService("ReplicatedStorage"):FindFirstChild("Training Dummy").HumanoidRootPart.CFrame *
                                                MethodFarm
                                        )
                                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Training Dummy") then
                                        topos(
                                            game:GetService("ReplicatedStorage"):FindFirstChild("Training Dummy").HumanoidRootPart.CFrame *
                                                MethodFarm
                                        )
                                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Training Dummy") then
                                        topos(
                                            game:GetService("ReplicatedStorage"):FindFirstChild("Training Dummy").HumanoidRootPart.CFrame *
                                                MethodFarm
                                        )
                                    end
                                end
                            end
                        else
                            if
                                _G.AutoArenaTrainerHop and
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ArenaTrainer") ==
                                        "I don't have anything for you right now. Come back later."
                             then
                                hop()
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ArenaTrainer")
                            end
                        end
                    end
                )
            end
        end
    end
)

spawn(
    function()
        while wait() do
            local boneframe = CFrame.new(-9508.5673828125, 142.1398468017578, 5737.3603515625)
            if _G.Auto_Bone2 and World3 then
                pcall(
                    function()
                        if BypassTP then
                            if
                                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - boneframe.Position).Magnitude >
                                    2000
                             then
                                BTP(boneframe)
                                wait(.1)
                                game.Players.localPlayer.Character.HumanoidRootPart.CFrame =
                                    CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                                wait(.1)
                                game.Players.localPlayer.Character.HumanoidRootPart.CFrame =
                                    CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                                wait(.1)
                                game.Players.localPlayer.Character.HumanoidRootPart.CFrame =
                                    CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562)
                                wait(.1)
                                game.Players.localPlayer.Character.HumanoidRootPart.CFrame =
                                    CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562)
                                wait(3)
                            elseif
                                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - boneframe.Position).Magnitude <
                                    2000
                             then
                                TP1(boneframe)
                            end
                        else
                            TP1(boneframe)
                        end
                        if
                            game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy")
                         then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if
                                    v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or
                                        v.Name == "Posessed Mummy"
                                 then
                                    if
                                        v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0
                                     then
                                        repeat
                                            task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            StartMagnetBoneMon2 = true
                                            PosMonBone = v.HumanoidRootPart.CFrame
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX, PosY, PosZ))
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                        until not _G.Auto_Bone2 or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        else
                            StartMagnetBoneMon = false
                            topos(CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375))
                            for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                                if v.Name == "Reborn Skeleton" then
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                elseif v.Name == "Living Zombie" then
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                elseif v.Name == "Demonic Soul" then
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                elseif v.Name == "Posessed Mummy" then
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)
spawn(
    function()
        pcall(
            function()
                while wait(.1) do
                    if _G.Auto_Random_Bone2 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
                    end
                end
            end
        )
    end
)
spawn(
    function()
        while wait() do
            if _G.AutoFarmBossHallow == true then
                _G.Auto_Bone2 = true
                _G.Auto_Random_Bone2 = true
            end
        end
    end
)
spawn(
    function()
        while wait() do
            if _G.AutoFarmBossHallow == false then
                _G.Auto_Bone2 = false
                _G.Auto_Random_Bone2 = false
            end
        end
    end
)
spawn(
    function()
        while wait() do
            if _G.AutoFarmBossHallow then
                pcall(
                    function()
                        if
                            not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence")
                         then
                            _G.Auto_Bone2 = true
                            _G.Auto_Random_Bone2 = true
                        elseif game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if string.find(v.Name, "Soul Reaper") then
                                    repeat
                                        task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        AutoHaki()
                                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
                                        v.HumanoidRootPart.Transparency = 1
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    until v.Humanoid.Health <= 0 or _G.AutoFarmBossHallow == false
                                end
                            end
                        elseif
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence")
                         then
                            _G.Auto_Bone2 = false
                            StopTween(_G.Auto_Bone2)
                            _G.Auto_Random_Bone2 = false
                            repeat
                                topos(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
                                wait()
                            until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position -
                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8
                            EquipWeapon("Hallow Essence")
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
                                topos(
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame *
                                        CFrame.new(2, 20, 2)
                                )
                            else
                                if CheckItem("Hallow Scythe") then
                                    ToggleHallow:Set(false)
                                    _G.Auto_Bone2 = false
                                    StopTween(_G.Auto_Bone)
                                    _G.Auto_Random_Bone2 = false
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)

local AdminPos = CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781)
spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.AutoDarkDagger then
                        if
                            game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form") or
                                game:GetService("Workspace").Enemies:FindFirstChild("rip_indra")
                         then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if
                                    v.Name == ("rip_indra True Form" or v.Name == "rip_indra") and v.Humanoid.Health > 0 and
                                        v:IsA("Model") and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart")
                                 then
                                    repeat
                                        task.wait()
                                        pcall(
                                            function()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                topos(v.HumanoidRootPart.CFrame * Pos)
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(
                                                    Vector2.new(1280, 670),
                                                    workspace.CurrentCamera.CFrame
                                                )
                                            end
                                        )
                                    until _G.AutoDarkDagger == false or v.Humanoid.Health <= 0
                                end
                            end
                        else
                            if BypassTP then
                                if
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - AdminPos.Position).Magnitude >
                                        1500
                                 then
                                    BTP(AdminPos)
                                elseif
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - AdminPos.Position).Magnitude <
                                        1500
                                 then
                                    topos(AdminPos)
                                end
                            else
                                topos(AdminPos)
                            end
                            topos(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781))
                        end
                    end
                end
            end
        )
    end
)

spawn(
    function()
        while wait() do
            if _G.AutoSeaBest then
                pcall(
                    function()
                        for i, v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") then
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)
                                TP1(v.HumanoidRootPart.CFrame * CFrame.new(0, 300, 0))
                                game:GetService("VirtualUser"):CaptureController()
                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                            else
                                if _G.AutoSeaBestHop then
                                    Hop()
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)

local gg = getrawmetatable(game)
local old = gg.__namecall
setreadonly(gg, false)
gg.__namecall =
    newcclosure(
    function(...)
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
    end
)

Skillz = true
Skillx = true
Skillc = true
Skillv = true

spawn(
    function()
        while wait() do
            pcall(
                function()
                    if AutoSkill then
                        if Skillz then
                            game:service("VirtualInputManager"):SendKeyEvent(true, "Z", false, game)
                            wait(.1)
                            game:service("VirtualInputManager"):SendKeyEvent(false, "Z", false, game)
                        end
                        if Skillx then
                            game:service("VirtualInputManager"):SendKeyEvent(true, "X", false, game)
                            wait(.1)
                            game:service("VirtualInputManager"):SendKeyEvent(false, "X", false, game)
                        end
                        if Skillc then
                            game:service("VirtualInputManager"):SendKeyEvent(true, "C", false, game)
                            wait(.1)
                            game:service("VirtualInputManager"):SendKeyEvent(false, "C", false, game)
                        end
                        if Skillv then
                            game:service("VirtualInputManager"):SendKeyEvent(true, "V", false, game)
                            wait(.1)
                            game:service("VirtualInputManager"):SendKeyEvent(false, "V", false, game)
                        end
                    end
                end
            )
        end
    end
)

task.spawn(
    function()
        while wait() do
            pcall(
                function()
                    if _G.Auto_Seabest then
                        if not game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") then
                            if not game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
                                if not game:GetService("Workspace").Boats:FindFirstChild("PirateBasic") then
                                    if not game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
                                        buyb = TPP(CFrame.new(-11.78054428100586, 10.302456855773926, 2927.2255859375))
                                        if
                                            (CFrame.new(-11.78054428100586, 10.302456855773926, 2927.2255859375).Position -
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                10
                                         then
                                            if buyb then
                                                buyb:Stop()
                                            end
                                            local args = {
                                                [1] = "BuyBoat",
                                                [2] = "PirateBrigade"
                                            }

                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                unpack(args)
                                            )
                                        end
                                    elseif game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
                                        if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false then
                                            TPP(
                                                game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame *
                                                    CFrame.new(0, 1, 0)
                                            )
                                        elseif game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
                                            repeat
                                                wait()
                                                if
                                                    (game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame.Position -
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                        10
                                                 then
                                                    TPB(
                                                        CFrame.new(
                                                            35.04552459716797,
                                                            17.750778198242188,
                                                            4819.267578125
                                                        )
                                                    )
                                                end
                                            until game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") or
                                                _G.Auto_Seabest == false
                                        end
                                    end
                                elseif game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
                                    for is, vs in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                                        if vs.Name == "PirateBrigade" then
                                            if v:FindFirstChild("VehicleSeat") then
                                                repeat
                                                    wait()
                                                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit =
                                                        false
                                                    TPP(vs.VehicleSeat.CFrame * CFrame.new(0, 30, 0))
                                                    EquipAllWeapon()
                                                    AutoSkill = true
                                                    AimBotSkillPosition = vs.VehicleSeat
                                                    Skillaimbot = true
                                                until not game:GetService("Workspace").Boats:FindFirstChild(
                                                    "PirateBrigade"
                                                ) or _G.Auto_Seabest == false
                                                AutoSkill = false
                                                Skillaimbot = false
                                            end
                                        end
                                    end
                                end
                            elseif game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
                                for iss, vss in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                                    if vss.Name == "PirateBrigade" then
                                        if v:FindFirstChild("VehicleSeat") then
                                            repeat
                                                wait()
                                                game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                                                TPP(vss.VehicleSeat.CFrame * CFrame.new(0, 30, 0))
                                                EquipAllWeapon()
                                                AutoSkill = true
                                                AimBotSkillPosition = vss.VehicleSeat
                                                Skillaimbot = true
                                            until not game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") or
                                                _G.Auto_Seabest == false
                                            AutoSkill = false
                                            Skillaimbot = false
                                        end
                                    end
                                end
                            end
                        elseif game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") then
                            for i, v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                                if v:FindFirstChild("HumanoidRootPart") then
                                    repeat
                                        wait()
                                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                                        TPP(v.HumanoidRootPart.CFrame * CFrame.new(0, 500, 0))
                                        EquipAllWeapon()
                                        AutoSkill = true
                                        AimBotSkillPosition = v.HumanoidRootPart
                                        Skillaimbot = true
                                    until not v:FindFirstChild("HumanoidRootPart") or _G.Auto_Seabest == false
                                    AutoSkill = false
                                    Skillaimbot = false
                                end
                            end
                        end
                    end
                end
            )
        end
    end
)

spawn(
    function()
        while wait() do
            if _G.Auto_Kill_Ply then
                pcall(
                    function()
                        if _G.SelectPly ~= nil then
                            if game.Players:FindFirstChild(_G.SelectPly) then
                                if game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid.Health > 0 then
                                    repeat
                                        task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        AutoHaki()
                                        game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CanCollide =
                                            false
                                        topos(
                                            game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CFrame *
                                                CFrame.new(0, 5, 0)
                                        )
                                        spawn(
                                            function()
                                                pcall(
                                                    function()
                                                        if _G.SelectWeapon == SelectWeaponGun then
                                                            local args = {
                                                                [1] = game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.Position,
                                                                [2] = game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart
                                                            }
                                                            game:GetService("Players").LocalPlayer.Character[
                                                                SelectWeaponGun
                                                            ].RemoteFunctionShoot:InvokeServer(unpack(args))
                                                        else
                                                            game:GetService("VirtualUser"):CaptureController()
                                                            game:GetService("VirtualUser"):Button1Down(
                                                                Vector2.new(1280, 672)
                                                            )
                                                        end
                                                    end
                                                )
                                            end
                                        )
                                    until game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid.Health <= 0 or
                                        not game.Players:FindFirstChild(_G.SelectPly) or
                                        not _G.Auto_Kill_Ply
                                else
                                    if game.Players.LocalPlayer.Character.Humanoid.Health <= 3000 then
                                        topos(
                                            game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CFrame *
                                                CFrame.new(0, 30, 0)
                                        )
                                    end
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)

spawn(
    function()
        while wait() do
            pcall(
                function()
                    local MaxDistance = math.huge
                    for i, v in pairs(game:GetService("Players"):GetPlayers()) do
                        if v.Name ~= game:GetService("Players").LocalPlayer.Name then
                            local Distance =
                                v:DistanceFromCharacter(
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
                            )
                            if Distance < MaxDistance then
                                MaxDistance = Distance
                                PlayerSelectAimbot = v.Name
                            end
                        end
                    end
                end
            )
        end
    end
)

spawn(
    function()
        while task.wait() do
            if _G.Aimbot_Gun and game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectWeaponGun) then
                pcall(
                    function()
                        game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].Cooldown.Value = 0
                        local args = {
                            [1] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart.Position,
                            [2] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart
                        }
                        game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(
                            unpack(args)
                        )
                        game:GetService "VirtualUser":CaptureController()
                        game:GetService "VirtualUser":Button1Down(Vector2.new(1280, 672))
                    end
                )
            end
        end
    end
)
spawn(
    function()
        pcall(
            function()
                while task.wait() do
                    if
                        _G.Aimbot_Skill and PlayerSelectAimbot ~= nil and
                            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and
                            game.Players.LocalPlayer.Character[
                                game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
                            ]:FindFirstChild("MousePos")
                     then
                        local args = {
                            [1] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart.Position
                        }

                        game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
                        ).RemoteEvent:FireServer(unpack(args))
                    end
                end
            end
        )
    end
)

spawn(
    function()
        while wait(.1) do
            pcall(
                function()
                    local MaxDistance = math.huge
                    for i, v in pairs(game:GetService("Players"):GetPlayers()) do
                        if v.Name ~= game.Players.LocalPlayer.Name then
                            local Distance =
                                v:DistanceFromCharacter(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
                            if Distance < MaxDistance then
                                MaxDistance = Distance
                                TargetPlayerAim = v.Name
                            end
                        end
                    end
                end
            )
        end
    end
)

spawn(
    function()
        pcall(
            function()
                game:GetService("RunService").RenderStepped:connect(
                    function()
                        if
                            AimSkillNearest and TargetPlayerAim ~= nil and
                                game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and
                                game.Players.LocalPlayer.Character[
                                    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
                                ]:FindFirstChild("MousePos")
                         then
                            local args = {
                                [1] = game:GetService("Players"):FindFirstChild(TargetPlayerAim).Character.HumanoidRootPart.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[
                                game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
                            ].RemoteEvent:FireServer(unpack(args))
                        end
                    end
                )
            end
        )
    end
)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.TweenMGear then
                        if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                            for i, v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
                                if v:IsA("MeshPart") then
                                    if v.Material == Enum.Material.Neon then
                                        topos(v.CFrame)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        )
    end
)

dagatcanmemay = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CheckTempleDoor")
MirrorFractal = CheckItem("Mirror Fractal")
Valk = CheckItem("Valkyrie Helm")
spawn(
    function()
        while wait() do
            if World3 and _G.AutoPullLever and not dagatcanmemay and IsMirageIsland2() then
                if CheckSea(3) then
                    if not MirrorFractal then
                        MirrorFractal = CheckItem("Mirror Fractal")
                    end
                    if not Valk then
                        Valk = CheckItem("Valkyrie Helm")
                    end
                    if Valk and MirrorFractal then
                        local cz = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaceV4Progress", "Check")
                        if cz == 1 then
                            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaceV4Progress", "Begin")
                        elseif cz == 2 then
                            TweenTempleLegit()
                        elseif cz == 3 then
                            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaceV4Progress", "Continue")
                        elseif
                            not DaGatCan and not game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CheckTempleDoor") and
                                IsMirageIsland2()
                         then
                            if getBlueGear() then
                                pcall(
                                    function()
                                        HighestPointRealCFrame = getHighestPoint().CFrame * CFrame.new(0, 211.88, 0)
                                    end
                                )
                                BlueGear = getBlueGear()
                                if BlueGear and not BlueGear.CanCollide and BlueGear.Transparency ~= 1 then
                                    repeat
                                        wait()
                                        _G.TweenMGear = true
                                    until not getBlueGear() or getBlueGear().Transparency == 1
                                    if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CheckTempleDoor") then
                                        DaGatCan = true
                                        MoveCamTooMoonToggle:Set(false)
                                        AutoPullLever:Set(false)
                                    end
                                elseif BlueGear and BlueGear.Transparency == 1 then
                                    if
                                        HighestPointRealCFrame and
                                            (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                                HighestPointRealCFrame.Position).Magnitude > 10
                                     then
                                        topos(HighestPointRealCFrame)
                                    elseif
                                        HighestPointRealCFrame and
                                            (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                                HighestPointRealCFrame.Position).Magnitude <= 10
                                     then
                                        MoveCamTooMoonToggle:Set(true)
                                        wait(.1)
                                        game:service("VirtualInputManager"):SendKeyEvent(true, "T", false, game)
                                        task.wait()
                                        game:service("VirtualInputManager"):SendKeyEvent(false, "T", false, game)
                                        task.wait(1.5)
                                    end
                                end
                            end
                        end
                    elseif DaGatCan then
                        PullLever()
                    end
                else
                    wait()
                end
            end
        end
    end
)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.AutoRace then
                        if game.Players.LocalPlayer.Character.RaceTransformed.Value == true then
                            StardFarm = false
                            topos(CFrame.new(216.211181640625, 126.9352035522461, -12599.0732421875))
                        end
                    end
                end
            end
        )
    end
)
spawn(
    function()
        while wait() do
            if StardFarm and World3 then
                pcall(
                    function()
                        if
                            game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Sweet Thief") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Candy Rebel")
                         then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if
                                    v.Name == "Cocoa Warrior" or v.Name == "Chocolate Bar Battler" or
                                        v.Name == "Sweet Thief" or
                                        v.Name == "Candy Rebel"
                                 then
                                    if
                                        v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0
                                     then
                                        repeat
                                            task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            FarmMag = true
                                            PosGG = v.HumanoidRootPart.CFrame
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                        until not StardFarm or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        else
                            FarmMag = false
                            topos(CFrame.new(216.211181640625, 126.9352035522461, -12599.0732421875))
                            for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                                if v.Name == "Cocoa Warrior" then
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                elseif v.Name == "Chocolate Bar Battler" then
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                elseif v.Name == "Sweet Thief" then
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                elseif v.Name == "Candy Rebel" then
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)
spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.AutoRace then
                        if game.Players.LocalPlayer.Character.RaceTransformed.Value == false then
                            StardFarm = true
                        end
                    end
                end
            end
        )
    end
)
spawn(
    function()
        while wait() do
            pcall(
                function()
                    if _G.AutoRace then
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "Y", false, game)
                        wait(0.1)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, "Y", false, game)
                    end
                end
            )
        end
    end
)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.AutoQuestRace then
                        if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                            if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
                                for i, v in pairs(game.Workspace.Enemies:GetDescendants()) do
                                    if
                                        v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0
                                     then
                                        pcall(
                                            function()
                                                repeat
                                                    wait(.1)
                                                    v.Humanoid.Health = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                    sethiddenproperty(
                                                        game.Players.LocalPlayer,
                                                        "SimulationRadius",
                                                        math.huge
                                                    )
                                                until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health <= 0
                                            end
                                        )
                                    end
                                end
                            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
                                for i, v in pairs(game:GetService("Workspace").Map.SkyTrial.Model:GetDescendants()) do
                                    if v.Name == "snowisland_Cylinder.081" then
                                        topos(v.CFrame * CFrame.new(0, 0, 0))
                                    end
                                end
                            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
                                for i, v in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
                                    if v.Name == "HumanoidRootPart" then
                                        topos(v.CFrame * Pos)
                                        for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                            if v:IsA("Tool") then
                                                if v.ToolTip == "Melee" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                                end
                                            end
                                        end
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            true,
                                            122,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            false,
                                            122,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        wait(.2)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            true,
                                            120,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            false,
                                            120,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        wait(.2)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            true,
                                            99,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            false,
                                            99,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                            if v:IsA("Tool") then
                                                if v.ToolTip == "Blox Fruit" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                                end
                                            end
                                        end
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            true,
                                            122,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            false,
                                            122,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        wait(.2)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            true,
                                            120,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            false,
                                            120,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        wait(.2)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            true,
                                            99,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            false,
                                            99,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )

                                        wait(0.5)
                                        for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                            if v:IsA("Tool") then
                                                if v.ToolTip == "Sword" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                                end
                                            end
                                        end
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            true,
                                            122,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            false,
                                            122,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        wait(.2)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            true,
                                            120,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            false,
                                            120,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        wait(.2)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            true,
                                            99,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            false,
                                            99,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        wait(0.5)
                                        for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                            if v:IsA("Tool") then
                                                if v.ToolTip == "Gun" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                                end
                                            end
                                        end
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            true,
                                            122,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            false,
                                            122,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        wait(.2)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            true,
                                            120,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            false,
                                            120,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        wait(.2)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            true,
                                            99,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                        game:GetService("VirtualInputManager"):SendKeyEvent(
                                            false,
                                            99,
                                            false,
                                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                        )
                                    end
                                end
                            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
                                topos(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
                                for i, v in pairs(game.Workspace.Enemies:GetDescendants()) do
                                    if
                                        v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0
                                     then
                                        pcall(
                                            function()
                                                repeat
                                                    wait(.1)
                                                    v.Humanoid.Health = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                    sethiddenproperty(
                                                        game.Players.LocalPlayer,
                                                        "SimulationRadius",
                                                        math.huge
                                                    )
                                                until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health <= 0
                                            end
                                        )
                                    end
                                end
                            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
                                for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
                                    if v.Name == "StartPoint" then
                                        topos(v.CFrame * CFrame.new(0, 3, 0))
                                        if
                                            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible ==
                                                false
                                         then
                                            _G.AutoQuestRace = false
                                            StopTween(_G.AutoQuestRace)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        )
    end
)

local Delay = 1

spawn(
    function()
        while wait() do
            pcall(
                function()
                    if KillPlayer then
                        for i, v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                            if v.Name ~= game.Players.LocalPlayer.Name then
                                if
                                    v:WaitForChild("Humanoid").Health > 0 and
                                        (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                            v.HumanoidRootPart.Position).Magnitude <= 100
                                 then
                                    plyselecthunthelpold = v.Humanoid.Health
                                    repeat
                                        task.wait()
                                        NameTarget = v.Name
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        NameTarget = v.Name
                                        TP1(v.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3))
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(100, 100, 100)
                                        Click()
                                        useskilltrial = true
                                        if tostring(game.Players.LocalPlayer.Team) == "Pirates" then
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3))
                                        elseif tostring(game.Players.LocalPlayer.Team) == "Marines" then
                                            if game.Players[NameTarget].Team ~= game.Players.LocalPlayer.Team then
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3))
                                            end
                                        end
                                        spawn(
                                            function()
                                                if
                                                    (v.HumanoidRootPart.Position -
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                        10
                                                 then
                                                    spawn(
                                                        function()
                                                            Z()
                                                            X()
                                                            C()
                                                        end
                                                    )
                                                end
                                            end
                                        )
                                        v.HumanoidRootPart.CanCollide = false
                                        TargetSelectHunt = v.Humanoid
                                    until KillPlayer == false or v.Humanoid.Health == 0 or
                                        not v:FindFirstChild("HumanoidRootPart") or
                                        not v:FindFirstChild("Humanoid") or
                                        not v.Parent or
                                        NextplySelect == true
                                    NextplySelect = false
                                    StartCheckTarget = false
                                end
                            end
                        end
                    end
                end
            )
        end
    end
)

spawn(
    function()
        while wait() do
            pcall(
                function()
                    if KillPlayer then
                        if Distance < 10 then
                            if useskilltrial then
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game)
                                wait(0.1)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game)
                                wait(0.1)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game)
                                wait(0.1)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game)
                                wait(0.1)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game)
                                wait(0.1)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game)
                                wait(0.1)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false, "V", false, game)
                                wait(0.1)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false, "V", false, game)
                            end
                        end
                    end
                end
            )
        end
    end
)

spawn(
    function()
        while wait() do
            pcall(
                function()
                    if _G.TurnKen then
                        repeat
                            task.wait()
                            if
                                not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                    "ImageLabel"
                                )
                             then
                                game:GetService("VirtualUser"):CaptureController()
                                game:GetService("VirtualUser"):SetKeyDown("0x65")
                                wait(2)
                                game:GetService("VirtualUser"):SetKeyUp("0x65")
                            end
                        until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or
                            not _G.AutoObservation
                    end
                end
            )
        end
    end
)

spawn(
    function()
        while wait() do
            if _G.Hopfinddao then
                if
                    game:GetService("Workspace").Map:FindFirstChild("MysticIsland") or
                        game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
                 then
                    if
                        HighestPointRealCFrame and
                            (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                HighestPointRealCFrame.Position).Magnitude > 10
                     then
                        topos(getHighestPoint().CFrame * CFrame.new(0, 211.88, 0))
                    end
                elseif
                    not game:GetService("Workspace").Map:FindFirstChild("MysticIsland") or
                        not game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
                 then
                    Hop()
                end
            end
        end
    end
)

spawn(
    function()
        while wait() do
            if _G.Hopfindmoon then
                if
                    game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" or
                        game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431"
                 then
                    wait(2.0)
                    OrionLib:MakeNotification(
                        {
                            Name = "Edward Newgate Hub",
                            Content = "Turn Off Hop Find Moon Please",
                            Time = 5
                        }
                    )
                elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709143733" then
                    Hop()
                    OrionLib:MakeNotification(
                        {
                            Name = "Edward Newgate Hub",
                            Content = "Hop Server",
                            Time = 5
                        }
                    )
                elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709150401" then
                    Hop()
                    OrionLib:MakeNotification(
                        {
                            Name = "Edward Newgate Hub",
                            Content = "Hop Server",
                            Time = 5
                        }
                    )
                elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149680" then
                    Hop()
                    OrionLib:MakeNotification(
                        {
                            Name = "Edward Newgate Hub",
                            Content = "Hop Server",
                            Time = 5
                        }
                    )
                else
                    Hop()
                end
            end
        end
    end
)

OrionLib:MakeNotification(
    {
        Name = "Edward Newgate Hub",
        Content = "Loading script complete!, You can now enable the function!",
        Time = 5
    }
)

_G.Remove_Effect = true

spawn(
    function()
        while wait() do
            for i, v in pairs(game.Players:GetPlayers()) do
                if
                    v.Name == "red_game43" or v.Name == "rip_indra" or v.Name == "Axiore" or v.Name == "Polkster" or
                        v.Name == "wenlocktoad" or
                        v.Name == "Daigrock" or
                        v.Name == "toilamvidamme" or
                        v.Name == "oofficialnoobie" or
                        v.Name == "Uzoth" or
                        v.Name == "Azarth" or
                        v.Name == "arlthmetic" or
                        v.Name == "Death_King" or
                        v.Name == "Lunoven" or
                        v.Name == "TheGreateAced" or
                        v.Name == "rip_fud" or
                        v.Name == "drip_mama" or
                        v.Name == "layandikit12" or
                        v.Name == "Hingoi"
                 then
                    Hop()
                end
            end
        end
    end
)

spawn(
    function()
        game:GetService("RunService").Stepped:Connect(
            function()
                if _G.Remove_Effect then
                    for i, v in pairs(game:GetService("ReplicatedStorage").Effect.Container:GetChildren()) do
                        if v.Name == "Death" then
                            v:Destroy()
                        end
                    end
                end
            end
        )
    end
)

spawn(
    function()
        while wait() do
            for i, v in pairs(game.Players.LocalPlayer:GetChildren()) do
                if v.Name == "DataLoaded" or v.Name == "DataPreloaded" then
                    v:Destroy()
                end
            end
        end
    end
)

OrionLib:Init()

OrionLib:MakeNotification(
    {
        Name = "Edward Newgate Hub",
        Content = "Loading Config Complete!!",
        Time = 5
    }
)
