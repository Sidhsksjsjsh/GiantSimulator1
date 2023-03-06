local speed = 10000 -- set this lower to make it slower
local bodyvelocityenabled = true -- set this to false if you are getting kicked
local Imput = game:GetService("UserInputService")
local Plr = game.Players.LocalPlayer
local Mouse = Plr:GetMouse()
function To(position)
   local Chr = Plr.Character
   if Chr ~= nil then
       local ts = game:GetService("TweenService")
       local char = game.Players.LocalPlayer.Character
       local hm = char.HumanoidRootPart
       local dist = (hm.Position - Mouse.Hit.p).magnitude
       local tweenspeed = dist / tonumber(speed)
       local ti = TweenInfo.new(tonumber(tweenspeed), Enum.EasingStyle.Linear)
       local tp = {
           CFrame = CFrame.new(position)
       }
       ts:Create(hm, ti, tp):Play()
       if bodyvelocityenabled == true then
           local bv = Instance.new("BodyVelocity")
           bv.Parent = hm
           bv.MaxForce = Vector3.new(100000, 100000, 100000)
           bv.Velocity = Vector3.new(0, 0, 0)
           wait(tonumber(tweenspeed))
           bv:Destroy()
       end
   end
end

local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/NMEHkVTb"))()

local Window = OrionLib:MakeWindow({Name = "VIP Turtle Hub V3", HidePremium = false, SaveConfig = true, ConfigFolder = "TurtleFi"})


local Tab_1 = Window:MakeTab({
Name = "Auto farm",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})

local S1 = Tab_1:AddSection({
Name = "Auto Click"
})

local S2 = Tab_1:AddSection({
Name = "BOSS"
})

local Tab_2 = Window:MakeTab({
Name = "Misc",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})

local S3 = Tab_2:AddSection({
Name = "Anti-AFK"
})

local Tab_3 = Window:MakeTab({
Name = "Egg",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})

local S4 = Tab_2:AddSection({
Name = "Egg"
})

getgenv().Start = false
S1:AddToggle({
Name = "Auto Click",
Default = false,
Callback = function(bool)
   Start=bool
   game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
   while true and Start do
pcall(function()
       for i,v in pairs(game.Workspace.Scene:GetDescendants()) do
           if v.Name == "ResourceNode" and v.NodeType.Value == 6 then
       To(v.Position + Vector3.new(v.CFrame.lookVector * -3.5) + Vector3.new(0,0,5))
       game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.WeaponAttackStart:FireServer()
               game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.WeaponAttackStart:FireServer()
end
       end
               wait()
               end)
   end
end
})

S2:AddDropdown({
Name = "Boss selected",
Default = "none",
Options = {"Borock", "Demon King", "Gnome"},
Callback = function(BossName)
     ProtocolBoss = BossName
end
})

getgenv().Start1 = false
S2:AddToggle({
Name = "Farm Boss",
Default = false,
Callback = function(bool1)
if ProtocolBoss == "Borock" then
   Start1=bool1
   game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
   while true and Start1 do
pcall(function()
       To(game.Workspace.NPC.Boss:findFirstChild("Borock").HumanoidRootPart.Position + Vector3.new(game.Workspace.NPC.Boss:findFirstChild("Borock").HumanoidRootPart.CFrame.lookVector * -3.5) + Vector3.new(0,0,5))
       game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.WeaponAttackStart:FireServer()
               game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.WeaponAttackStart:FireServer()
end)
                           wait()
   end
end
if ProtocolBoss == "Demon King" then
   Start2=bool1
   game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
   while true and Start2 do
pcall(function()
       To(game.Workspace.NPC.DemonKing.DemonKing.HumanoidRootPart.Position + Vector3.new(game.Workspace.NPC.DemonKing.DemonKing.HumanoidRootPart.CFrame.lookVector * -1.5) + Vector3.new(0,0,5))
       game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.WeaponAttackStart:FireServer()
               game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.WeaponAttackStart:FireServer()
end)
                          wait()
   end
end
if ProtocolBoss == "Gnome" then
   Start3=bool1
   game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
   while true and Start3 do
pcall(function()
       To(game.Workspace.NPC.Gnomes:findFirstChild("Gnome").HumanoidRootPart.Position + Vector3.new(game.Workspace.NPC.Gnomes:findFirstChild("Gnome").HumanoidRootPart.CFrame.lookVector * 1.5) + Vector3.new(0,0,0))
       game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.WeaponAttackStart:FireServer()
               game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.WeaponAttackStart:FireServer()
end)
                           wait()
   end
end
end
})

S4:AddDropdown({
Name = "Egg selected",
Default = "none",
Options = {"5K", "25K", "125K", "1M", "20M"},
Callback = function(EggPrice)
     ProtocolEgg = EggPrice
end
})

S4:AddToggle({
Name = "Farm Egg",
Default = false,
Callback = function(egger)
 if ProtocolEgg == "5K" then
   eg=egger
   while true and eg do
       pcall(function()
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.OpenPetCrate:InvokeServer(1)
       end)
               wait(0)
   end
end
if ProtocolEgg == "25K" then
   eg1=egger
   while true and eg1 do
       pcall(function()
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.OpenPetCrate:InvokeServer(2)
       end)
               wait(0)
   end
end
if ProtocolEgg == "125K" then
   eg2=egger
   while true and eg2 do
       pcall(function()
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.OpenPetCrate:InvokeServer(3)
       end)
               wait(0)
   end
end
if ProtocolEgg == "1M" then
   eg4=egger
   while true and eg4 do
       pcall(function()
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.OpenPetCrate:InvokeServer(4)
       end)
               wait(0)
   end
end
if ProtocolEgg == "20M" then
   eg5=egger
   while true and eg5 do
       pcall(function()
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.OpenPetCrate:InvokeServer(5)
       end)
               wait(0)
   end
end
end
})

S3:AddButton({
Name = "ANTI-AFK",
Callback = function()
   local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
  vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
  wait(1)
  vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
print("Done!")
end
})
