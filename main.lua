local Players = game:GetService("Players")
local player = Players.LocalPlayer
repeat task.wait() until player
local gui = Instance.new("ScreenGui")
gui.Name = "MM2MobileHelper"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 350)
frame.Position = UDim2.new(0.5, -150, 0.5, -175)
frame.BackgroundColor3 = Color3.fromRGB(35,35,35)
frame.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0,12)
corner.Parent = frame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,0,0,40)
title.BackgroundTransparency = 1
title.Text = "MM2 Mobile Helper"
title.TextScaled = true
title.Font = Enum.Font.GothamBold
title.TextColor3 = Color3.new(1,1,1)
title.Parent = frame

local close = Instance.new("TextButton")
close.Size = UDim2.new(0,35,0,35)
close.Position = UDim2.new(1,-40,0,5)
close.Text = "X"
close.Font = Enum.Font.GothamBold
close.TextScaled = true
close.BackgroundColor3 = Color3.fromRGB(220,60,60)
close.TextColor3 = Color3.new(1,1,1)
close.Parent = frame

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0,8)
closeCorner.Parent = close

close.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

local search = Instance.new("TextBox")
search.Size = UDim2.new(0.9,0,0,40)
search.Position = UDim2.new(0.05,0,0,55)
search.PlaceholderText = "Search item..."
search.Text = ""
search.Font = Enum.Font.Gotham
search.TextScaled = true
search.BackgroundColor3 = Color3.fromRGB(55,55,55)
search.TextColor3 = Color3.new(1,1,1)
search.Parent = frame

local searchCorner = Instance.new("UICorner")
searchCorner.CornerRadius = UDim.new(0,8)
searchCorner.Parent = search

local buttons = {
    "Value Checker",
    "Mega W",
    "W",
    "Fair"
    }

for i,v in ipairs(buttons) do
    local b = Instance.new("TextButton")
    b.Size = UDim2.new(0.9,0,0,40)
    b.Position = UDim2.new(0.05,0,0,110 + (i-1)*50)
    b.BackgroundColor3 = Color3.fromRGB(45,45,45)
    b.Text = v
    b.TextScaled = true
    b.Font = Enum.Font.GothamBold
    b.TextColor3 = Color3.new(1,1,1)
    b.Parent = frame

    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0,8)
    c.Parent = b

    b.MouseButton1Click:Connect(function()
        print(v.." clicked!")
    end)
end

print("MM2 Mobile Helper loaded!")
    
end    
