local channel = 0
local sSide = "back"

print("What channel?")
channel = tonumber(read())

print("Connecting to "..channel)
rednet.open(sSide)
rednet.send(channel, "Init")
local id, msg = rednet.receive()

if not msg or id ~= channel then
    print("Could not connect")
    return
end

while true do
    local event, sc = os.pullEvent("key")

    if sc == 79 then
            rednet.send(channel, sc)
            print("Closing")
            rednet.close(sSide)
            return
    else
        rednet.send(channel, sc)
    end
end
