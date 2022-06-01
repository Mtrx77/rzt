repeat
    wait()
until game:IsLoaded()
if game.Players.LocalPlayer.UserId ~= 1617220336 and game.Players.LocalPlayer.UserId ~= 292497312 and game.Players.LocalPlayer.UserId ~= 1666771059
and game.Players.LocalPlayer.UserId ~= 1739491684 and game.Players.LocalPlayer.UserId ~= 1517621440 and game.Players.LocalPlayer.UserId ~= 2539181650  then
-- Variables
local stats = require(game.Players.LocalPlayer.PlayerGui.Main.MainClient.StatModuleClient)
local playerl = {}
local tp
local random = math.random(1,2)
local l
local mob1
local mobP
local client = require(game.Players.LocalPlayer.PlayerGui.Main.MainClient.SpecialsClient)
local VirtualInputManager = game:GetService('VirtualInputManager')
local died = false
local npcdied = false
--algunos ciclos
for i, v in pairs(game:GetService("Players"):GetPlayers()) do
    if v ~= game.Players.LocalPlayer then 
        table.insert(playerl,v.Name)
    end
    end
    game.Players.PlayerAdded:Connect(function(player)
        table.insert(playerl,player.Name)
    end)
    game.Players.PlayerRemoving:Connect(function(player)
     for i=0,50 do
     if i == table.find(playerl,player.Name) then
        table.remove(playerl,i)
     end
    end
    end)
-- // Initialising the UI
local Venyx = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stefanuk12/Venyx-UI-Library/main/source2.lua"))()
local UI = Venyx.new({
    title = "NAM Hub | Matrixxx#9999 | JAS#0027"
})

local Themes = {
    Background = Color3.fromRGB(14, 13, 13),
    Glow = Color3.fromRGB(0, 0, 0),
    Accent = Color3.fromRGB(10, 10, 10),
    LightContrast = Color3.fromRGB(20, 20, 20),
    DarkContrast = Color3.fromRGB(14, 14, 14),  
    TextColor = Color3.fromRGB(0, 247, 255)
}

local Training1 = UI:addPage({
    title = "Training",
    icon = 9574083105
})
local Spins = UI:addPage({
    title = "Infinite Spins",
    icon = 9573898432
})
local Teleport1 = UI:addPage({
    title = "Teleport",
    icon = 9573858567 
})
local Players1 = UI:addPage({
    title = "Players",
    icon = 9726996129
})
local Farm = UI:addPage({
    title = "AutoFarm",
    icon = 9573984012
})

local TrainStrength = Training1:addSection({
    title = "Strength"
})
local TrainChakra = Training1:addSection({
    title = "Chakra"
})
local TrainDurability = Training1:addSection({
    title = "Durability"
})
local TrainSword = Training1:addSection({
    title = "Sword"
})
local InfiniteSpins = Spins:addSection({
    title = "Infinite Spins"
})
local TeleportP = Teleport1:addSection({
    title = "Teleport to Players"
})
local TeleportD = Teleport1:addSection({
    title = "Teleport to Dimensions"
})
local Conceal1 = Players1:addSection({
    title = "Total Power"
})
local FarmMobs1 = Farm:addSection({
    title = "AutoFarm Mobs Dimension 1"
})
local FarmMobs2 = Farm:addSection({
    title = "AutoFarm Mobs Dimension 2"
})
wait(1)
TrainStrength:addToggle({
    title = "Train",
    callback = function(Strength)
        getgenv().toggle1 = Strength
        while wait() do
            if getgenv().toggle1 == true then
             wait()
             stats.SendToServer("Strength")
            end
        end
    end
})
TrainChakra:addToggle({
    title = "Train",
    callback = function(Chakra)
        getgenv().toggle2 = Chakra
        while wait() do
            if getgenv().toggle2 == true then
                task.spawn(function()
                    stats.SendToServer("Chakra")
                end)
            end
            end
    end
})
TrainChakra:addButton({
    title = "Train Chakra OP",
    callback = function()
        game.StarterGui:SetCore("SendNotification",{Title = "Wait", Text = "It can take a minute or a little more to start training", Duration = 15})
        coroutine.wrap(function()
            while wait(60) do
            for i=0, 14000 do
                task.spawn(function()
                    stats.SendToServer("Chakra")
                end)
            end
        end
        end)()
    end
})
TrainChakra:addButton({
    title = "Chakra Ultimate(In Testing)",
    callback = function()
        game.StarterGui:SetCore("SendNotification",{Title = "HEY", Text = "Wait a minute after executing the script, if it doesn't work, change the server and try again", Duration = 5})
        wait(5)
        game.StarterGui:SetCore("SendNotification",{Title = "Low chance", Text = "Just to remind you that there is little chance that it will work", Duration = 5})
        for i, v in pairs(debug.getupvalues(client.UpdateFruits)[2]["Data"]["Stats"]["Chakra"]) do
            if i == 1 then
                bc = BrickColor.new("Hot pink")
        
                game.StarterGui:SetCore("ChatMakeSystemMessage", {
                
                Text = "System: Your current chakra is: " .. v;
                
                Font = Enum.Font.Highway;
                
                Color = bc.Color;
                
                FontSize = Enum.FontSize.Size8;
                })
            end
        end
        local Player = game.Players.LocalPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
for i=1,2 do
coroutine.wrap(function()
coroutine.wrap(function()
    for i = 1,5000 do 
      task.spawn(function()
        stats.SendToServer("Chakra")
      end)
    end
  end)()
end)()
wait(.5)
end
wait(1)
Humanoid.Health = 0
wait(1)
for i=1,3 do
    coroutine.wrap(function()
    coroutine.wrap(function()
        for i = 1,5000 do 
          task.spawn(function()
            stats.SendToServer("Chakra")
          end)
        end
      end)()
    end)()
    wait(.5)
end
for i=1,3 do
wait(20)
for i, v in pairs(debug.getupvalues(client.UpdateFruits)[2]["Data"]["Stats"]["Chakra"]) do
    if i == 1 then
        bc = BrickColor.new("Hot pink")

        game.StarterGui:SetCore("ChatMakeSystemMessage", {
        
        Text = "System: Your current chakra is: " .. v;
        
        Font = Enum.Font.Highway;
        
        Color = bc.Color;
        
        FontSize = Enum.FontSize.Size8;
        })
    end
end
end
    end
})
TrainDurability:addToggle({
    title = "Train",
    callback = function(Durability)
        getgenv().toggle3 = Durability
        while wait() do
            if getgenv().toggle3 == true then
             stats.SendToServer("Durability")
            end
        end
    end
})
TrainSword:addToggle({
    title = "Train",
    callback = function(Sword)
        getgenv().toggle4 = Sword
        if getgenv().toggle4 == true then game.StarterGui:SetCore("SendNotification",{Title = "Hey", Text = "Remember to equip the sword", Duration = 7})
        while wait() do
            if getgenv().toggle4 == true then
             stats.SendToServer("Sword")
            end
        end
    end
end
})

InfiniteSpins:addButton({
    title = "Start Spining",
    callback = function()
        if game.PlaceId == 7220986579 or game.PlaceId == 7220975160 then 
            for i = 0,100 do
                task.spawn(function()
                    while wait() do
                    game:GetService("ReplicatedStorage").RSPackage.Events.GeneralFunction:InvokeServer("LotteryRandomDraw")
                    game:GetService("ReplicatedStorage").RSPackage.Events.GeneralEvent:FireServer("SpinFinished")
                    end
                end)
            end 
        else 
            game.StarterGui:SetCore("SendNotification",{Title = "Use it in dungeon", Text = "Only works in dungeons", Duration = 5})
            wait(5)
            game.StarterGui:SetCore("SendNotification",{Title = "Teleporting", Text = "You will be teleported to a dungeon", Duration = 5})
            wait(5)
            if random == 1 then game:GetService("TeleportService"):Teleport(7220975160)
                elseif random == 2  then game:GetService("TeleportService"):Teleport(7220986579)
                end
            
    end
    end
})
TeleportP:addDropdown({
    title = "Players",
    list = playerl,
    callback = function(jugador)
        for _, value in pairs(game:GetService("Players"):GetPlayers()) do
            if value.Name == jugador then
               tp = value
            end
        end
    end
})
TeleportP:addToggle({
    title = "Teleport To Player",
    callback = function(teleport)
        getgenv().toggle5 = teleport
        while wait() do
            if getgenv().toggle5 == true then
                for i2, v2 in pairs(tp.Character:GetChildren()) do
                    if v2.Name == "HumanoidRootPart" then
                       l = v2.Position
                    end
                end
                task.spawn(function() 
                    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local location = CFrame.new(l)
                    local humanoid = game.Players.LocalPlayer.Character.Humanoid
                    pl.CFrame = location
                    end)
            end
        end
    end
})
TeleportD:addDropdown({
    title = "Dimensions",
    list = {"Dimension 1","Dimension 2","Dimension 3","Dimension 4","Dimension 5","Dimension 6",},
    callback = function(dimension)
        if dimension == "Dimension 1" then game:GetService("TeleportService"):Teleport(4042427666)
        elseif dimension == "Dimension 2"  then game:GetService("TeleportService"):Teleport(5113678354) 
        elseif dimension == "Dimension 3"  then game:GetService("TeleportService"):Teleport(5113680396) 
        elseif dimension == "Dimension 4"  then game:GetService("TeleportService"):Teleport(5445525505) 
        elseif dimension == "Dimension 5"  then game:GetService("TeleportService"):Teleport(6479720355) 
        elseif dimension == "Dimension 6"  then game:GetService("TeleportService"):Teleport(9386500519) 
        end
    end
})
Conceal1:addButton({
    title = "See Total Power of all players",
    callback = function()
        while wait() do
            local players = game.Players:GetPlayers()
            for i, v in pairs(players) do
                 for i2, v2 in pairs(v.Character:GetChildren()) do
                    if v2.Name == "HumanoidRootPart" then
                        for i3, v3 in pairs(v2:GetChildren()) do
                            if v3.Name == "TotalPower" then
                                if v3.Enabled == false then
                                    v3.Enabled = true
                                    for i4, v4 in pairs(v3:GetChildren()) do
                                        if v4.Name == "Num" then
                                            v4.TextColor3 = Color3.new(0, 0.717647, 1) 
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
            game.Players.PlayerAdded:Connect(function(player)
                wait(7)
                while wait(2) do
               local players = game.Players:GetPlayers()
            for i, v in pairs(players) do
                for i2, v2 in pairs(v.Character:GetChildren()) do
                   if v2.Name == "HumanoidRootPart" then
                       for i3, v3 in pairs(v2:GetChildren()) do
                           if v3.Name == "TotalPower" then
                               if v3.Enabled == false then
                                   v3.Enabled = true
                                   for i4, v4 in pairs(v3:GetChildren()) do
                                    if v4.Name == "Num" then
                                        v4.TextColor3 = Color3.new(0, 0.717647, 1) 
                                    end
                                end
                               end
                           end
                       end
                   end
               end
            end
            end
            end)
            wait(6)
            end
    end
})
FarmMobs1:addDropdown({
    title = "Mobs",
    list = {"Weak Ninja","Masked Ninja","Strong Ninja","Bain","Marado","Small Crystal","Large Crystal",},
    callback = function(mob)
        mob1 = mob
    end
})
FarmMobs1:addToggle({
    title = "Farm",
    callback = function(AutoFarm)
        getgenv().toggle6 = AutoFarm
        if getgenv().toggle6 == true then
        if game.PlaceId == 4042427666 then
        while wait() do
            if getgenv().toggle6 == true then
                if died == true then
                    wait(6)
                end
                for i, v in pairs(game:GetService("Workspace").Scriptable.SpawnedMobs:GetChildren()) do
                    if v.Name == mob1  then
                        for i2, v2 in pairs(v:GetChildren()) do
                            if  v2.Name == "Hitpart" then
                                mobP = v2
                            end
                        end
                    end
                end
                 if npcdied == false or died == true then
                for i, v in pairs(debug.getupvalues(client.UpdateFruits)[2]["Data"]["Powers"]) do
                    if v == "67" or v == "56" or v == "55" 
                    or v == "43" or v == "27" or v == "23"
                    or v == "21" or v == "13" or v == "9"   then
                        VirtualInputManager:SendKeyEvent(true, i, false, game)
                        wait()
                        VirtualInputManager:SendKeyEvent(false, i, false, game)
                    end
                end
                    end
                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Died:Connect(function()
                        died = true
                    end) 
                    died = false          
                    game:GetService("Workspace").Scriptable.SpawnedMobs.ChildRemoved:Connect(function(mb)
                            if mb == mobP.Parent then
                                npcdied = true
                            end
                     end)
                    npcdied = false
                    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local location = CFrame.new(mobP.Position)
                    local humanoid = game.Players.LocalPlayer.Character.Humanoid
                    pl.CFrame = location
                    wait(2)
                    repeat
                        local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
                        local location = CFrame.new(mobP.Position)
                        local humanoid = game.Players.LocalPlayer.Character.Humanoid
                        pl.CFrame = location
                        for i, v in pairs(debug.getupvalues(client.UpdateFruits)[2]["Data"]["Powers"]) do
                            if v == "67" or v == "56" or v == "55" 
                            or v == "43" or v == "27" or v == "23"
                            or v == "21" or v == "13" or v == "9" or v == "17"   then
                                else
                                    VirtualInputManager:SendKeyEvent(true, i, false, game)
                                    wait()
                                    VirtualInputManager:SendKeyEvent(false, i, false, game)
                            end
                            end 
     
                        until died == true or  getgenv().toggle6 == false or  npcdied == true     
            end
        end
    else game.StarterGui:SetCore("SendNotification",{Title = "Bruh", Text = "You're not in dimension 1, are you stupid or what?", Duration = 5}) 
    end
    end
end
})
FarmMobs2:addDropdown({
    title = "Mobs",
    list = {"Seed","Kappa","Jinu Squad","Mito","Boo","Small Namekian Crystal",},
    callback = function(mob)
        mob1 = mob
    end
})
FarmMobs2:addToggle({
    title = "Farm",
    callback = function(AutoFarm)
        getgenv().toggle7 = AutoFarm
        if getgenv().toggle7 == true then
        if game.PlaceId == 5113678354 then
        while wait() do
            if getgenv().toggle7 == true then
                if died == true then
                    wait(6)
                end
                for i, v in pairs(game:GetService("Workspace").Scriptable.SpawnedMobs:GetChildren()) do
                    if v.Name == mob1  then
                        for i2, v2 in pairs(v:GetChildren()) do
                            if  v2.Name == "Hitpart" then
                                mobP = v2
                            end
                        end
                    end
                end
                 if npcdied == false or died == true then
                for i, v in pairs(debug.getupvalues(client.UpdateFruits)[2]["Data"]["Powers"]) do
                    if v == "67" or v == "56" or v == "55" 
                    or v == "43" or v == "27" or v == "23"
                    or v == "21" or v == "13" or v == "9"   then
                        VirtualInputManager:SendKeyEvent(true, i, false, game)
                        wait()
                        VirtualInputManager:SendKeyEvent(false, i, false, game)
                    end
                end
                    end
                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Died:Connect(function()
                        died = true
                    end) 
                    died = false          
                    game:GetService("Workspace").Scriptable.SpawnedMobs.ChildRemoved:Connect(function(mb)
                            if mb == mobP.Parent then
                                npcdied = true
                            end
                     end)
                    npcdied = false
                    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local location = CFrame.new(mobP.Position)
                    local humanoid = game.Players.LocalPlayer.Character.Humanoid
                    pl.CFrame = location
                    wait(2)
                    repeat
                        local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
                        local location = CFrame.new(mobP.Position)
                        local humanoid = game.Players.LocalPlayer.Character.Humanoid
                        pl.CFrame = location
                        for i, v in pairs(debug.getupvalues(client.UpdateFruits)[2]["Data"]["Powers"]) do
                            if v == "67" or v == "56" or v == "55" 
                            or v == "43" or v == "27" or v == "23"
                            or v == "21" or v == "13" or v == "9" or v == "17"   then
                                else
                                    VirtualInputManager:SendKeyEvent(true, i, false, game)
                                    wait()
                                    VirtualInputManager:SendKeyEvent(false, i, false, game)
                            end
                            end 
                        until died == true or  getgenv().toggle7 == false or  npcdied == true     
            end
        end
    else game.StarterGui:SetCore("SendNotification",{Title = "Bruh", Text = "You're not in dimension 2, are you stupid or what?", Duration = 5}) 
    end
    end
end
})


for i, v in pairs(Themes) do
            UI:setTheme({
                theme = i,
                color3 = v
            })
end

-- // Load
UI:SelectPage({
    page = UI.pages[1], 
    toggle = true
})
--Anti-afk
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
bc = BrickColor.new("Lime green")

game.StarterGui:SetCore("ChatMakeSystemMessage", {

Text = "[Scripter][Matrixplayer]: Hi there";

Font = Enum.Font.Highway;

Color = bc.Color;

FontSize = Enum.FontSize.Size8;
})
wait(3)
bc = BrickColor.new("Lime green")

game.StarterGui:SetCore("ChatMakeSystemMessage", {

Text = "[Scripter][Matrixplayer]: Well here is what many of you have been asking for, the chakra script that massively increases power.";

Font = Enum.Font.Highway;

Color = bc.Color;

FontSize = Enum.FontSize.Size8;
})
wait(7)
bc = BrickColor.new("Lime green")

game.StarterGui:SetCore("ChatMakeSystemMessage", {

Text = "[Scripter][Matrixplayer]: You can find it on the training page, in the chakra section.";

Font = Enum.Font.Highway;

Color = bc.Color;

FontSize = Enum.FontSize.Size8;
})
wait(5)
bc = BrickColor.new("Toothpaste")

game.StarterGui:SetCore("ChatMakeSystemMessage", {

Text = "[Scripter][Matrixplayer]: I have several things to comment about this feature.";

Font = Enum.Font.Highway;

Color = bc.Color;

FontSize = Enum.FontSize.Size8;
})
wait(5)
bc = BrickColor.new("New Yeller")

game.StarterGui:SetCore("ChatMakeSystemMessage", {

Text = "[Scripter][Matrixplayer]: Basically the best thing you can do is to try in which chakra zone it works best for you, for some it works in the spawn, for others it doesn't, it depends on your internet connection.";

Font = Enum.Font.Highway;

Color = bc.Color;

FontSize = Enum.FontSize.Size8;
})
wait(9)
bc = BrickColor.new("New Yeller")

game.StarterGui:SetCore("ChatMakeSystemMessage", {

Text = "[Scripter][Matrixplayer]: From my own experience i can say that the chakra zone of 1 UD always works, so if your chakra is greater than 1 UD, try there.";

Font = Enum.Font.Highway;

Color = bc.Color;

FontSize = Enum.FontSize.Size8;
})
wait(5)
bc = BrickColor.new("Really red")

game.StarterGui:SetCore("ChatMakeSystemMessage", {

Text = "[Scripter][Matrixplayer]: Also keep in mind that if it doesn't work, change the server and try again, if you don't change the server it probably won't work.";

Font = Enum.Font.Highway;

Color = bc.Color;

FontSize = Enum.FontSize.Size8;
})
wait(6)
bc = BrickColor.new("Really red")

game.StarterGui:SetCore("ChatMakeSystemMessage", {

Text = "[Scripter][Matrixplayer]: Be patient it will probably take you many tries.";

Font = Enum.Font.Highway;

Color = bc.Color;

FontSize = Enum.FontSize.Size8;
})
wait(6)
bc = BrickColor.new("Lime green")

game.StarterGui:SetCore("ChatMakeSystemMessage", {

Text = "[Scripter][Matrixplayer]: Well that's all for now ;3";

Font = Enum.Font.Highway;

Color = bc.Color;

FontSize = Enum.FontSize.Size8;
})
else 
    bc = BrickColor.new("Really red")

    game.StarterGui:SetCore("ChatMakeSystemMessage", {
    
    Text = "System: You can't use this gui";
    
    Font = Enum.Font.Highway;
    
    Color = bc.Color;
    
    FontSize = Enum.FontSize.Size8;
    })
    game.StarterGui:SetCore("SendNotification",{Title = "Banned", Text = "You have been banned from this gui", Duration = 5})
    warn("You have been banned from this gui")
    wait(10)
    game:Shutdown()
end
