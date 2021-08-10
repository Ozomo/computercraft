local sSide = "back"
local y = 1
local x = 1
local monit = peripheral.wrap("right")
monit.clear()
monit.setCursorPos(x,y)
monit.setTextColor(colors.white)
print("Computer running on Channel "..os.getComputerID())
rednet.open(sSide)
while true do
if y > 50 then
  y = 1
end
local id, msg = rednet.receive()
if msg then
  if msg == "Init" then
   rednet.send(id, "Good")
  else
   msg = tonumber(msg)
 
   if msg == 79 then
        print("Stopping")
        rednet.close(sSide)
        return
      
  elseif msg == 2 then monit.write("1")
  elseif msg == 3 then monit.write("2")
  elseif msg == 4 then monit.write("3")
  elseif msg == 5 then monit.write("4")
  elseif msg == 6 then monit.write("5")
  elseif msg == 7 then monit.write("6")
  elseif msg == 8 then monit.write("7")
  elseif msg == 9 then monit.write("8")
  elseif msg == 10 then monit.write("9")
  elseif msg == 11 then monit.write("0")
  elseif msg == 14 then 
    xPos, yPos = monit.getCursorPos()
    monit.setCursorPos(xPos - 1, y)   -- backspace
    monit.write(" ")
    monit.setCursorPos(xPos - 1, y)
  elseif msg == 16 then monit.write("q")
  elseif msg == 17 then monit.write("w")
  elseif msg == 18 then monit.write("e")
  elseif msg == 19 then monit.write("r")
  elseif msg == 20 then monit.write("t")
  elseif msg == 21 then monit.write("y")
  elseif msg == 22 then monit.write("u")
  elseif msg == 23 then monit.write("i")
  elseif msg == 24 then monit.write("o")
  elseif msg == 25 then monit.write("p")
  elseif msg == 26 then monit.write("[")
  elseif msg == 27 then monit.write("]")
  elseif msg == 28 then monit.setCursorPos(1, y +1)
  elseif msg == 30 then monit.write("a")
  elseif msg == 31 then monit.write("s")
  elseif msg == 32 then monit.write("d")
  elseif msg == 33 then monit.write("f")
  elseif msg == 34 then monit.write("g")
  elseif msg == 35 then monit.write("h")
  elseif msg == 36 then monit.write("j")
  elseif msg == 37 then monit.write("k")
  elseif msg == 38 then monit.write("l")
  elseif msg == 39 then monit.write(";")
  elseif msg == 40 then monit.write("'")
  elseif msg == 41 then monit.write("`")
-- elseif msg == 42 then monit.write("")
  elseif msg == 43 then monit.write("b")
  elseif msg == 44 then monit.write("z")
  elseif msg == 45 then monit.write("x")
  elseif msg == 46 then monit.write("c")
  elseif msg == 47 then monit.write("v")
  elseif msg == 48 then monit.write("b")
  elseif msg == 49 then monit.write("n")
  elseif msg == 50 then monit.write("m")
  elseif msg == 51 then monit.write(",")
  elseif msg == 52 then monit.write(".")
  elseif msg == 53 then monit.write("/")
  elseif msg == 57 then monit.write(" ")

   else print("Unknown command "..msg)
   end
  end
end
end
