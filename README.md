local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.1208337, 0, 0.0952890813, 0)
ImageButton.Size = UDim2.new(0, 50, 0, 50)
ImageButton.Image = "http://www.roblox.com/asset/?id=12523036534"
ImageButton.MouseButton1Down:connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
end)

loadstring(game:HttpGet("https://raw.githubusercontent.com/Domadicoof/Domadicoof/b74eb2c4068204537f96e58909f0436ba3b30033/Protected.lua%20(7).txt"))()
