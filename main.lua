print("Loading MM2 Helper...")

local Values = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/sonoikk/mm2-values/main/values.lua"
))()

local CreateGUI = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/sonoikk/mm2-values/main/gui.lua"
))()

CreateGUI(Values)

print("MM2 Helper Loaded!")
