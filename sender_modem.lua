local modem = peripheral.find("modem")
modem.open(1)
modem.transmit(1, 2, "dziala")
modem.close(1)