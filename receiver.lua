local sSide = "back"
local y = 1
local x = 1
local monit = peripheral.wrap("right")
monit.clear()
monit.setCursorPos(x,y)
print("Computer running on Channel "..os.getComputerID())
rednet.open(sSide)
while true do
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
   elseif msg == 50 then monit.write("b")
   elseif msg == 51 then monit.write(",")
   elseif msg == 52 then monit.write(".")
   elseif msg == 53 then monit.write("/")
   elseif msg == 57 then monit.write(" ")

   else print("Unknown command "..msg)
   end
  end
end
end
