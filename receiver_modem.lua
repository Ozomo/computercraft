local modem = peripheral.find("modem")
modem.open(2)

while true do
  local event, modemSide, senderChan, replyChan, msg, senderDist = os.pullEvent("modem_message")
  print("MSG: "..msg)
end