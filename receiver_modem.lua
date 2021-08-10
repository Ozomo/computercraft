local modem = peripheral.find("modem")
local monit = peripheral.wrap("right")
modem.open(2)
monit.clear()
monit.setCursorPos(1,1)
while true do
local event, modemSide, senderChannel, 
  replyChannel, message, senderDistance = os.pullEvent("modem_message")
monit.write(message)
end
modem.close(2)