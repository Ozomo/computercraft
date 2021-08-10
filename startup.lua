if fs.exists("github") then
    shell.run("cd ..")
    shell.run("github clone Ozomo/computercraft -b main")
    if fs.exists("upload.lua") then
        shell.run("delete update.lua")
        shell.run("move computercraft/update.lua /")
    else
        shell.run("move computercraft/update.lua /")
    end
else
    shell.run("cd ..")
    shell.run("pastebin run p8PJVxC4")
    shell.run("github clone Ozomo/computercraft -b main")
    if fs.exists("upload.lua") then
        shell.run("delete update.lua")
        shell.run("move computercraft/update.lua /")
    else
        shell.run("move computercraft/update.lua /")
    end
end
