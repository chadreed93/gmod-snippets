-- You have two choices, run this first one in luapad or use it in a self contained script or use the second option below for use with the shown lua_run_cl command. 

-- Run this with luapad:
local crow = ClientsideModel("models/animals/crow.mdl", RENDERGROUP_OPAQUE) --change your model you want to get animations for here
crow:ResetSequence(crow:LookupSequence("idle"))  -- force it to load its sequences
for idx, name in ipairs(crow:GetSequenceList()) do
    print(idx, name)
end
crow:Remove()

-- OR Run this one liner in singleplayer or multiplayer:
lua_run_cl local c=ClientsideModel("models/animals/crow.mdl"); for i,n in ipairs(c:GetSequenceList()) do print(i,n) end; c:Remove()
