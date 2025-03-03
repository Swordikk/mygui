local players = game:GetService("Players")
local localplayer = players.LocalPlayer
local playergui = localplayer.PlayerGui

local screengui = Instance.new("ScreenGui")
screengui.Parent = playergui

local frame = Instance.new("Frame")
frame.Parent = screengui
frame.Size = UDim2.new(0, 500, 0, 300)
frame.Position = UDim2.new(0, 700, 0, 300)
frame.BackgroundTransparency = 1
frame.BackgroundColor3 = Color3.new(160/255, 159/255, 161/255)
frame.BorderColor3 = Color3.new(160/255, 159/255, 161/255)

while frame.BackgroundTransparency > 0 do
    wait(0.01)
    frame.BackgroundTransparency -= 0.05
end

local textbutton1 = Instance.new("TextButton")
textbutton1.Parent = frame
textbutton1.Size = UDim2.new(0, 150, 0, 40)
textbutton1.Position = UDim2.new(0, 5, 0, 5)
textbutton1.BackgroundTransparency = 1
textbutton1.BackgroundColor3 = Color3.new(93/255, 93/255, 93/255)
textbutton1.BorderColor3 = Color3.new(93/255, 93/255, 93/255)
textbutton1.TextColor3 = Color3.new(32/255, 32/255, 32/255)
textbutton1.Text = "Main"
textbutton1.TextSize = 10

local textbutton2 = Instance.new("TextButton")
textbutton2.Parent = frame
textbutton2.Size = UDim2.new(0, 150, 0, 40)
textbutton2.Position = UDim2.new(0, 5, 0, 50)
textbutton2.BackgroundTransparency = 1
textbutton2.BackgroundColor3 = Color3.new(93/255, 93/255, 93/255)
textbutton2.BorderColor3 = Color3.new(93/255, 93/255, 93/255)
textbutton1.TextColor3 = Color3.new(32/255, 32/255, 32/255)
textbutton2.Text = "AutoFarm"
textbutton2.TextSize = 10

local textbutton2 = Instance.new("TextButton")
textbutton2.Parent = frame
textbutton2.Size = UDim2.new(0, 150, 0, 40)
textbutton2.Position = UDim2.new(0, 5, 0, 90)
textbutton2.BackgroundTransparency = 1
textbutton2.BackgroundColor3 = Color3.new(93/255, 93/255, 93/255)
textbutton2.BorderColor3 = Color3.new(93/255, 93/255, 93/255)
textbutton1.TextColor3 = Color3.new(32/255, 32/255, 32/255)
textbutton2.Text = "Button"
textbutton2.TextSize = 10
