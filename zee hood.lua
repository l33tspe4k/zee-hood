local GameInformation = loadstring(game:HttpGet("https://raw.githubusercontent.com/TheRealXORA/Roblox/refs/heads/Main/Scripts%20/Utilities%20/Fetch%20Game%20Information.luau", true))()

if not GameInformation.Name:find("Zee Hood") then return end

loadstring(game:HttpGet("https://raw.githubusercontent.com/TheRealXORA/Roblox/refs/heads/Main/Scripts%20/Anti-Cheats%20Bypassers%20/Adonis.luau", true))()

local OriginalNameCall; OriginalNameCall = hookmetamethod(game, "__namecall", newcclosure(function(Object, ...)
    local Arguments = {...}
    local Method = getnamecallmethod()
    if Method == "FireServer" and Object.Name == "MainRemoteEvent" and Arguments[1] == "Detection" then
        return coroutine.yield()
    end
    return OriginalNameCall(Object, ...)
end))
