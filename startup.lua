term.clear()
term.setCursorPos(10,10)
term.write("A - Start Dot OS")
term.setCursorPos(10,11)
term.write("B - Start Craft OS")
while true do
  local event, char = os.pullEvent("char")
  if char == "a" then
    shell.run("main")
  else if char == "b" then
    break
  end
end
