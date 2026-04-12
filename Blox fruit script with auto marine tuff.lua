local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local LP = Players.LocalPlayer

local function handleTeam()
    local Remote = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("CommF_")
    local teamService = game:GetService("Teams")
    
    repeat
        task.wait(1)
        local pirateTeam = teamService:FindFirstChild("Pirates")
        if LP.Team == pirateTeam or LP.Team == nil then
            Remote:InvokeServer("SetTeam", "Marines") --change the quotation marks to pirates or marines fuckface
            task.wait(0.5)
            Remote:InvokeServer("SetTeam", "Marines") --also change here bro
        end
    until LP.Team == teamService:FindFirstChild("Marines")
    
    print("marine teams join tuff mango ez noob script is made by averagedude50 on discord")
end

local queue = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
if queue then
    queue([[
        repeat task.wait() until game:IsLoaded()
        loadstring(game:HttpGet("YOUR_RAW_GITHUB_LINK_HERE"))()
    ]])
end

if not game:IsLoaded() then
    game.Loaded:Wait()
end

task.spawn(handleTeam)
