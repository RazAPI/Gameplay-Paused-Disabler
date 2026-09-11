local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui.RobloxGui
local Modules = RobloxGui.Modules

if CoreGui:FindFirstChild("RobloxNetworkPauseNotification") then
    local NetworkPauseScreen = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
    local NetworkPauseCoreScript = RobloxGui:FindFirstChild("CoreScripts/NetworkPause") 
    local NetworkPauseModuleScript = Modules:FindFirstChild("NetworkPauseNotification")

    if NetworkPauseModuleScript == nil and typeof(NetworkPauseScreen) ~= "Instance" then
        return
    end

    NetworkPauseModuleScript:Destroy()
    NetworkPauseCoreScript:Destroy()
    NetworkPauseScreen:Destroy()
end
