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
    "blue, red, white - spatial kurczaki",
    "blue, white, blue - Quarry",
    "blue, blue, blue - moby",
    "white, blue, white - drewno",
    "red, red, red - zaginione snowballe",
    "orange, orange, orange - ciemciak",
    "blue, orange, red - paliwo do reaktora",
    "blue, orange, white - paliwo z reaktora",
    "orange, pink, orange - carcoil",
    "grey, cyan, grey - QQ nikodema",
}
for _, line in ipairs(to_do) do
    printLine(line)
end

-- pastebin run p8PJVxC4 - github extension
