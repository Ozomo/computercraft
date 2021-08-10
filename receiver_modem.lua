local modem = peripheral.find("modem")
local monit = peripheral.wrap("right")
modem.open(2)

local event, modemSide, senderChannel, 
  replyChannel, message, senderDistance = os.pullEvent("modem_message")

monit.write(message)

modem.close(2)