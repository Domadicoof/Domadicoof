local Close = Instance.new("TextButton")
local Open2 = Instance.new("ScreenGui")
local Open = Instance.new("TextButton")
local FightingGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local Cre = Instance.new("TextLabel")
local HitBox = Instance.new("TextBox")
local Red = Instance.new("TextBox")
local Green = Instance.new("TextBox")
local Blue = Instance.new("TextBox")
local TextLabel = Instance.new("TextLabel")

local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
local UICorner_3 = Instance.new("UICorner")
local UICorner_4 = Instance.new("UICorner")


--Properties:

FightingGui.Name = "FightingGui"
FightingGui.Parent = game.CoreGui
FightingGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling


Open2.Name = "Tools"
Open2.Parent = game.CoreGui
Open2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Open.Name = "Open"
Open.Parent = Open2
Open.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Open.Position = UDim2.new(0, 0, 0.451871663, 0)
Open.Size = UDim2.new(0, 50, 0, 50)
Open.Font = Enum.Font.FredokaOne
Open.Text = "Open"
Open.TextColor3 = Color3.fromRGB(250, 0, 0)
Open.TextScaled = true
Open.TextSize = 14.000
Open.TextWrapped = true
Open.MouseButton1Down:Connect(function()
 FightingGui.Enabled = true
end)

Close.Name = "Close"
Close.Parent = main
Close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Close.Position = UDim2.new(1, 0,-0.001, 0)
Close.Size = UDim2.new(0, 30,0, 30)
Close.Font = Enum.Font.FredokaOne
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(0, 0, 0)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextWrapped = true
Close.MouseButton1Down:Connect(function()
 FightingGui.Enabled = false
end)

UICorner_4.Parent = Close

main.Parent = FightingGui
main.Active = true
main.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
main.Position = UDim2.new(0.259, 0,0.237, 0)
main.Size = UDim2.new(0, 127,0, 111)
main.Draggable = true

UICorner.Parent = main

Cre.Name = "Cre"
Cre.Parent = main
Cre.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
Cre.Position = UDim2.new(0, 0,-0.019, 0)
Cre.Size = UDim2.new(0, 127,0, 16)
Cre.Font = Enum.Font.FredokaOne
Cre.Text = "Script made by WarriorRoberr"
Cre.TextColor3 = Color3.fromRGB(0, 0, 0)
Cre.TextScaled = true
Cre.TextSize = 14.000
Cre.TextWrapped = true

UICorner_2.Parent = Cre
UICorner_3.Parent = Hitbox

HitBox.Name = "HitBox"
HitBox.Parent = main
HitBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
HitBox.Position = UDim2.new(0.113, 0,0.127, 0)
HitBox.Size = UDim2.new(0, 103,0, 79)
HitBox.Font = Enum.Font.FredokaOne
HitBox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
HitBox.PlaceholderText = "Put Number Here"
HitBox.Text = ""
HitBox.TextColor3 = Color3.fromRGB(0, 0, 0)
HitBox.TextScaled = true
HitBox.TextSize = 14.000
HitBox.TextWrapped = true
game:GetService('RunService').RenderStepped:connect(function()
 for i,v in next, game:GetService('Players'):GetPlayers() do
  if v.Name ~= game:GetService('Players').LocalPlayer.Name then
   v.Character.HumanoidRootPart.Size = Vector3.new(HitBox.Text,HitBox.Text,HitBox.Text)
   v.Character.HumanoidRootPart.Transparency = 0.9
   v.Character.HumanoidRootPart.Color = Color3.new(Red.Text,Green.Text,Blue.Text)
   v.Character.HumanoidRootPart.Material = "Neon"
   v.Character.HumanoidRootPart.CanCollide = false
  end
 end
end)
