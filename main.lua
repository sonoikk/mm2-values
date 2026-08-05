print("Loading MM2 Helper...")

local Values = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/sonoikk/mm2-values/refs/heads/main/values.lua"
))()

local CreateGUI = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/sonoikk/mm2-values/refs/heads/main/gui.lua"
))()

CreateGUI(Values)

print("MM2 Helper Loaded!")
