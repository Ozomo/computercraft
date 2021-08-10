shell.run("cd ..")
shell.run("github clone Ozomo/computercraft -b main")
if fs.exist(update.lua) do
    shell.run("delete update.lua")
    shell.run("move computercraft/update.lua /")
else
    shell.run("move computercraft/update.lua /")
end
