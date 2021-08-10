local modem = peripheral.find("modem")
modem.open(1)
while true do
modem.transmit(2, 1, read())
end
modem.close(1)