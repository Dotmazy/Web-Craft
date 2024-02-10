term.clear()
term.setCursorPos(1,1)



while true do
  event, p1, p2, p3, p4, p5 = os.pullEvent()
  if event == "alarm" then
    local id = p1
    term.clear()
    term.setCursorPos(10,10)
    term.write("ALARM")
  elseif event == "terminate" then
    print("END")
  elseif event == "disk" then
    local side = p1
    term.clear()
    term.setCursorPos(10,10)
    term.write("DISK INSERTED AT SIDE "..side)
  elseif event == "disk_eject" then
    local side = p1
    term.clear()
    term.setCursorPos(10,10)
    term.write("DISK EJECTED AT SIDE "..side)
  elseif event == "peripheral" then
    local side = p1
    term.clear()
    term.setCursorPos(10,10)
    term.write("PERIPHERAL CONNECTED AT SIDE "..side)
  elseif event == "modem_message" then
    local side = p1
    local freq = p2
    local replyFreq = p3
    local msg = p4
    local dist = p5
    term.clear()
    term.setCursorPos(10,10)
    term.write("MESSAGE RECEIVE: "..msg)
  elseif event == "key" then
    local key = p1
    local isHeld = p2
    term.clear()
    term.setCursorPos(10,10)
    term.write("KEY "..keys.getName(key).."; isHeld: "..isHeld)
  elseif event == "mouse_click" then
    local button = p1
    local x = p2
    local y = p3
    term.clear()
    term.setCursorPos(10,10)
    term.write("MOUSE "..button.." CLICK: "..x.." "..y)
  elseif event == "mouse_scroll" then
    local dir = p1
    local x = p2
    local y = p3
    term.clear()
    term.setCursorPos(10,10)
    term.write("MOUSE "..dir.." SCROLL: "..x.." "..y)
  end
end
