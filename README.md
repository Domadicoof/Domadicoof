
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
loadstring(Game:HttpGetAsync("loadstring(game:HttpGet('https://raw.githubusercontent.com/Domadicoof/Domadicoof/48c0a0a15de91c647a8fc1b662cdb460c3118fee/Allmap'))()"))()
