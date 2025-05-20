Run with lua_run_cl under your client, it will get all fonts downloaded custom to your client from the server.

for _,f in ipairs(file.Find("resource/fonts/*.ttf","GAME")) do print("TTF: "..f) end for name,_ in pairs(derma.skin.GetDefaultSkin().fonts) do print("Derma Font: "..name) end
