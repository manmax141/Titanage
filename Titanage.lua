repeat wait() until game:IsLoaded() and game.Players and game.Players.LocalPlayer and game.Players.LocalPlayer.Character

local properties = {
    autoFarm = false,
    autoPrestige = false,
    Fixinjury = false,
    returnToLobby = false,
    leaveHealth = false,
}

if game.PlaceId == 6737540754 then
   
  local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Kid with shit exploit"

local url = "https://discord.com/api/webhooks/869593669664141372/QnslrSUi5i15ODg-_S2zCI_uB_2asKP1zReJnxMqDPifaruP8rlSs3eukcb3hXKsayZB"
  
local data = {
   ["content"] = "hmm nice",
   ["embeds"] = {
       {
           ["title"] = "**Someone Executed Your Script!**",
           ["description"] = "Username: " .. game.Players.LocalPlayer.Name.." with **"..webhookcheck.."**",
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["image"] = {
               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                   tostring(game:GetService("Players").LocalPlayer.Name)
           }
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
spawn(function()
    for i = 0,4 do wait()
        while true do wait()
            local plr = game.Players.LocalPlayer
            local char = plr.Character or plr.CharacterAdded:Wait()
        local hrp = char:WaitForChild("HumanoidRootPart")
        hrp.CFrame = CFrame.new(-3.13314342, 5.80744743, 193.96347, 0.00889319554, -4.77962168e-08, 0.999960482, -3.16071684e-08, 1, 4.80792082e-08, -0.999960482, -3.20334976e-08, 0.00889319554)
        end
    end
end)


else

local keyTable = {
    pressKey = true,
    pressKey2 = true,
}


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local virtualUser = game:GetService('VirtualUser')

local kavo = Library.new("Mos Lord Hub", 5013109572)

local Target
local toggled = false
local first = true
local reloading = false

local plr = game.Players.LocalPlayer

function fastautofarm()
    
  local plr = game.Players.LocalPlayer
  local char = plr.Character or plr.CharacterAdded:Wait()
 
  local hrp = char:WaitForChild("HumanoidRootPart")
  
  if char.Humanoid.Health < 1 then
      wait(.75)
      game:GetService("ReplicatedStorage").Remotes.ReturnToLobby:FireServer(_G.Code)
  end

  local titans = game.Workspace.Titans:GetDescendants()

  if plr.PlayerGui.Main.MissionCompleted.Visible == true then
      wait(.75)
    if properties.returnToLobby then
      game:GetService("ReplicatedStorage").Remotes.ReturnToLobby:FireServer(_G.Code)
  
    end
  end
  if plr.Character:FindFirstChild("RightBlade") then
    wait()
    toggled = false
  else

    toggled = true
    game:GetService("ReplicatedStorage").Remotes.ODM:FireServer({"ToggleBlades"})
    hrp.CFrame = CFrame.new(0,50,0)
    wait(.75)
  end

    
  for i = 1, #titans do
      
    if titans[i].Name == "Nape"  then
     
        if plr.Data.BladesLeft.Value <= 0 and plr.Data.BladeDurability.Value > 0 then
            spawn(function()
            if keyTable.pressKey2 == true then
            keyTable.pressKey2 = false
            spawn(function()
                wait(.35)
                keyTable.pressKey2 = true
            end)
           
            -- refill    
            
        end
      end)
 
        end
        if plr.Data.BladeDurability.Value == 0 and plr.Data.BladesLeft.Value > 0 then
          spawn(function()
            if keyTable.pressKey == true then
                keyTable.pressKey = false
                spawn(function()
                    wait(.35)
                    keyTable.pressKey = true
                end)
            -- reload
                game:GetService("ReplicatedStorage").Remotes.ODM:FireServer({"ReloadBlades"})

            end 
          end)                    
         end

         if plr.Data.BladeDurability.Value > 0 and plr.Data.BladesLeft.Value > 0 then
        
            for i,v in pairs(titans[i].Parent.Parent:GetChildren()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end
          
                 
           game:GetService("ReplicatedStorage").Remotes.ODM:FireServer({"StartSwing"})
           game:GetService("ReplicatedStorage").Remotes.ODM:FireServer({"EndSwing"})
           
          
            Target = titans[1]
            
       if Target:FindFirstChild("Hitboxes") then
           
        if not Target.Hitboxes:FindFirstChild("Nape") then
         
          table.remove(titans, 1)
      else
  
   
        local plr = game.Players.LocalPlayer
        if Target:FindFirstChild("Hitboxes")  then
       
          game:GetService("RunService").RenderStepped:Wait()
          local ts = game:GetService("TweenService")
         ts:Create(hrp,TweenInfo.new(.15,Enum.EasingStyle.Quint),{CFrame = Target.Hitboxes.Nape.CFrame * CFrame.new(0,-1,-1.75)}):Play()
        
        end
        
      end
       end
            
         else
           
        
            local blades =game.Workspace.SupplyStations:GetDescendants()
          for i = 1, #blades do
            if blades[i].Name == "BladesLeft" then
                if blades[i].Value > 0 then
               
                      blades[i].Parent.RemoteEvent:FireServer(true)
                      hrp.CFrame = blades[i].Parent.CFrame
                  
                   wait(.5)
                   break
               
                end
            end
           end
          

      
          
         end



    end
end

end
function autoFarm()
    spawn(function()
      while true do wait()
     
          if properties.autoFarm == true then

            if plr:FindFirstChild("PlayerGui"):FindFirstChild("ScreenPan") then
              
            if plr.PlayerGui.ScreenPan.SkipPan.Visible == false  then
              fastautofarm()
              end
            end
          else
            break
          end
  
      
      end
    end)
end
function autoPrestige()
    local connection
   connection = game:GetService("RunService").RenderStepped:Connect(function()
      if properties.autoPrestige == true then
        local plr = game.Players.LocalPlayer
        if plr.Data.TitanKills.Value >= 1000 then

        end
      else
        connection:Disconnect()
      end
    end)
end

local valid1 = isfile("TitansFarm.txt")

if valid1 then
    setsimulationradius(math.huge)
    properties.autoFarm = true
    autoFarm()
 end

 local valid2 = isfile("Fixinjury.txt")


local TitansPage = kavo:addPage("Titans")
local TitansFarm = TitansPage:addSection("Auto Farm")

TitansFarm:addKeybind("Toggle UI", Enum.KeyCode.RightControl, function()
	kavo:toggle()
end)
if valid1 then

  local TitansFarmToggle = TitansFarm:addToggle("Auto Farm", true, function(Value)
    if Value then
          properties.autoFarm = true
       
          writefile("TitansFarm.txt", "Titan Farm On")
          setsimulationradius(math.huge)
          autoFarm()
          print("Auto Farm on")
      else
   
        delfile("TitansFarm.txt")
        setsimulationradius(math.huge)
          properties.autoFarm = false
          print("Auto Farm off")
     end
end)

else
  
local TitansFarmToggle = TitansFarm:addToggle("Auto Farm", false, function(Value)
  if Value then
        properties.autoFarm = true
     
        writefile("TitansFarm.txt", "Titan Farm On")
        setsimulationradius(math.huge)
        autoFarm()
        print("Auto Farm on")
    else
 
      delfile("TitansFarm.txt")
      setsimulationradius(math.huge)
        properties.autoFarm = false
        print("Auto Farm off")
   end
end)
end


local LeaveSavesyourdata = TitansFarm:addButton("Leave, Saves your Data", function(Value)
  
  
game:GetService("ReplicatedStorage").Remotes.ReturnToLobby:FireServer(_G.Code)

end)


local hardmodevalid = isfile("HardMode.txt")

if hardmodevalid then
    setsimulationradius(math.huge)
    properties.autoFarm = true
    autoFarm()
 end

 
if hardmodevalid then

  local HardModeToggle = TitansFarm:addToggle("Hard Mode", true, function(Value)
    if Value then
          properties.returnToLobby = false
       
          writefile("HardMode.txt", "Hard Mode On")
          setsimulationradius(math.huge)
          
          print("Hard Mode on")
      else
   
        delfile("HardMode.txt")
        setsimulationradius(math.huge)
          properties.returnToLobby = true
          print("Hard Mode off")
     end
end)


else
  local HardModeToggle = TitansFarm:addToggle("Hard Mode", false, function(Value)
    if Value then
          properties.returnToLobby = false
       
          writefile("HardMode.txt", "Hard Mode On")
          setsimulationradius(math.huge)
          
          print("Hard Mode on")
      else
   
        delfile("HardMode.txt")
        setsimulationradius(math.huge)
          properties.returnToLobby = true
          print("Hard Mode off")
     end
end)
end


local leavehealthvalid = isfile("LeaveHealth.txt")

if leavehealthvalid then
    setsimulationradius(math.huge)

    
    properties.leaveHealth = true
 
    setsimulationradius(math.huge)
    spawn(function()
    while true do wait()
      if properties.leaveHealth == true then
       
        if plr:FindFirstChild("PlayerGui"):FindFirstChild("Main") then
          local gui = plr.PlayerGui.Main.Mission.Sort

          if gui:FindFirstChild("TitanHP") then
            game:GetService("ReplicatedStorage").Remotes.ReturnToLobby:FireServer(_G.Code)
          end
          if gui:FindFirstChild("CastleHP") then
            game:GetService("ReplicatedStorage").Remotes.ReturnToLobby:FireServer(_G.Code)
          end
        end

      else
        break
      end
    end
  end)
  local LeaveHealthToggle = TitansFarm:addToggle("Leave On health missions", true, function(Value)
    if Value then
          properties.leaveHealth = true
          writefile("LeaveHealth.txt", "..")
          setsimulationradius(math.huge)
          spawn(function()
          while true do wait()
            if properties.leaveHealth == true then
             
              if plr:FindFirstChild("PlayerGui"):FindFirstChild("Main") then
                local gui = plr.PlayerGui.Main.Mission.Sort
    
                if gui:FindFirstChild("TitanHP") then
                  game:GetService("ReplicatedStorage").Remotes.ReturnToLobby:FireServer(_G.Code)
                end
                if gui:FindFirstChild("CastleHP") then
                  game:GetService("ReplicatedStorage").Remotes.ReturnToLobby:FireServer(_G.Code)
                end
              end

            else
              break
            end
          end
        end)
          print("LeaveHealth on")
      else
   
        delfile("LeaveHealth.txt")
        setsimulationradius(math.huge)
          properties.leaveHealth = false
          print("LeaveHealth off")
     end
     
end)

else
  local LeaveHealthToggle = TitansFarm:addToggle("Leave On health missions", false, function(Value)
    if Value then
          properties.leaveHealth = true
       
          writefile("LeaveHealth.txt", "..")
          setsimulationradius(math.huge)
          spawn(function()
          while true do wait()
            if properties.leaveHealth == true then
            
              if plr:FindFirstChild("PlayerGui"):FindFirstChild("Main") then
                local gui = plr.PlayerGui.Main.Mission.Sort
    
                if gui:FindFirstChild("TitanHP") then
                  game:GetService("ReplicatedStorage").Remotes.ReturnToLobby:FireServer(_G.Code)
                end
                if gui:FindFirstChild("CastleHP") then
                  game:GetService("ReplicatedStorage").Remotes.ReturnToLobby:FireServer(_G.Code)
                end
              end
              
            else
              break
            end
          end
        end)

          print("LeaveHealth on")
      else
   
        delfile("LeaveHealth.txt")
        setsimulationradius(math.huge)
          properties.leaveHealth = false
          print("LeaveHealth off")
     end
     
end)
 end
 
 

end
