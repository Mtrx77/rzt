repeat
    wait()
until game:IsLoaded()
-- Variables
local stats = require(game.Players.LocalPlayer.PlayerGui.Main.MainClient.StatModuleClient)
local playerl = {}
local tp
local random = math.random(1,2)
local l
--algunos ciclos
wait(1)
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
    wait(1)
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
    TextColor = Color3.fromRGB(255, 153, 0)
}

local Training1 = UI:addPage({
    title = "Training",
    icon = 5012544693
})
local Spins = UI:addPage({
    title = "Infinite Spins",
    icon = 5012544693
})
local Teleport1 = UI:addPage({
    title = "Teleport",
    icon = 5012544693
})
local Players1 = UI:addPage({
    title = "Players",
    icon = 5012544693
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
wait(1)
bc = BrickColor.new("Lime green")

game.StarterGui:SetCore("ChatMakeSystemMessage", {

Text = "[Scripter][Matrixplayer]: YO!!.";

Font = Enum.Font.Highway;

Color = bc.Color;

FontSize = Enum.FontSize.Size8;
})
wait(2)
bc = BrickColor.new("Lime green")
game.StarterGui:SetCore("ChatMakeSystemMessage", {
    
    Text = "[Scripter][Matrixplayer]: I just updated the script, these are the new features. ";
    
    Font = Enum.Font.Highway;
    
    Color = bc.Color;
    
    FontSize = Enum.FontSize.Size8;
    })
    wait(5)
    bc = BrickColor.new("Toothpaste")

game.StarterGui:SetCore("ChatMakeSystemMessage", {

Text = "+Train Sword";

Font = Enum.Font.Highway;

Color = bc.Color;

FontSize = Enum.FontSize.Size8;
})
wait(2)
bc = BrickColor.new("Toothpaste")

game.StarterGui:SetCore("ChatMakeSystemMessage", {

Text = "+Infinite Spins Working(Only in dungeons)";

Font = Enum.Font.Highway;

Color = bc.Color;

FontSize = Enum.FontSize.Size8;
})
wait(2)
bc = BrickColor.new("Toothpaste")

game.StarterGui:SetCore("ChatMakeSystemMessage", {

Text = "+Enable Total Power of players";

Font = Enum.Font.Highway;

Color = bc.Color;

FontSize = Enum.FontSize.Size8;
})
wait(2)
bc = BrickColor.new("Lime green")

game.StarterGui:SetCore("ChatMakeSystemMessage", {

Text = "[Scripter][Matrixplayer]: Well that's all for now, I have to do homework -_-";

Font = Enum.Font.Highway;

Color = bc.Color;

FontSize = Enum.FontSize.Size8;
})
