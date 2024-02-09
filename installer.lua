local function makeFile(path, text)
  local file = io.open(path,"w")
  file:write(text)
  file:close()
end

local function get(name, url)
  url = "https://raw.githubusercontent.com/Dotmazy/Web-Craft/main/"..url
  if fs.exists(name) then
    fs.delete(name)
  end

  print("Downloading file '"..name.."' from "..url)

  makeFile(name,http.get(url).readAll())
end

get("startup","startup.lua")

print("\nThe computer needs to be restarted in order to apply the changes.")
print("(press any key to continue)")
os.pullEvent("key")
local i=0
local x,y = term.getCursorPos()
while i<6 do
  i=i+1
  term.setCursorPos(x,y)
  term.write("Rebooting computer "..string.rep(".",(i-1)%3+1)..string.rep(" ",3-((i-1)%3+1)))
  sleep(0.5)
end
os.reboot()
