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
loadstring(Game:HttpGetAsync("https://pastebin.com/raw/uHg5K6WB"))()
