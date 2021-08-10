local modem = peripheral.find("modem")
modem.open(2)
clear()
while true do
local event, modemSide, senderChannel, 
  replyChannel, message, senderDistance = os.pullEvent("modem_message")
print(message.." ")
end
modem.close(2)