local monit = peripheral.wrap("right")
monit.clear()
monit.setCursorPos(1, 1)
function printLine(line)
    _, y = monit.getCursorPos()
    monit.write(line)
    monit.setCursorPos(1, y + 1)
end
to_do = {
    "-----------------Kolory ender chestow-----------------",
    "niebieski, czerwony, bialy - spatial kurczaki",
    "niebieski, bialy, niebieski - Quarry",
    "niebieski, niebieski, niebieski - moby",
    "bialy, niebieski, bialy - drewno",
    "czerwony, czerwony, czerwony - zaginione snowballe",
    "pomaranczowy, pomaranczowy, pomaranczowy - ciemciak",
}
for _, line in ipairs(to_do) do
    printLine(line)
end

-- pastebin run p8PJVxC4 - github extension
