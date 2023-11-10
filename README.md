--Notfication-Sound  
local notification = Instance.new("Sound")
notification.Parent = game:GetService("SoundService")
notification.SoundId = "rbxassetid://9086208751"
notification.Volume = 10

game.StarterGui:SetCore("SendNotification", {
      Icon = "http://www.roblox.com/asset/?id=12523036534";
      Title = "Domadic Hub", 
      Text = "ðŸ”ƒLoading...ðŸ”ƒ";
})
wait(2)
game.StarterGui:SetCore("SendNotification", {
      Icon = "http://www.roblox.com/asset/?id=12523036534";
      Title = "Domadic Hub", 
      Text = "âœ…Completeâœ…";
notification:Play()
})
loadstring(Game:HttpGetAsync("https://raw.githubusercontent.com/Domadicoof/Domadicoof/22e9107765cdd4833fc127d9e8f00cdaee740d20/Domadic%20Hub%20ScrObf.lua"))()
