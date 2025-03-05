-- Locals --
local players = game:GetService("Players")
local localplayer = players.LocalPlayer
local character = localplayer.Character
local humanoid = character.Humanoid
local humanoidrootpart = character.HumanoidRootPart
local playergui = localplayer.PlayerGui

-- AntiAFK --
while not game:IsLoaded() do wait() end
repeat wait() until game.Players.LocalPlayer.Character
Players = game:GetService("Players")
local GC = getconnections or get_signal_cons
if GC then
	for i,v in pairs(GC(Players.LocalPlayer.Idled)) do
		if v["Disable"] then v["Disable"](v)
		elseif v["Disconnect"] then v["Disconnect"](v)
		end
	end
else
Players.LocalPlayer.Idled:Connect(function()
	VirtualUser:CaptureController()
	VirtualUser:ClickButton2(Vector2.new())
  	end)
end

-- Tables --
local Thieving  = { 
    Vector3.new(194.7723846435547, 5.393672466278076, -1.0488529205322266),
    Vector3.new(220.02371215820312, 8.296595573425293, -10.974353790283203),
    Vector3.new(240.34519958496094, 8.2985200881958, -13.118978500366211),
    Vector3.new(274.0917663574219, 10.293213844299316, -41.420467376708984),
    Vector3.new(295.7476501464844, 10.351471900939941, -44.3170051574707),
    Vector3.new(321.22930908203125, 14.39346981048584, -23.170984268188477),
    Vector3.new(335.78338623046875, 14.409186363220215, -2.5764825344085693),
    Vector3.new(350.5539855957031, 19.969709396362305, 37.36346435546875),
    Vector3.new(301.1578369140625, 22.588266372680664, 64.06158447265625)
}

local screengui = Instance.new("ScreenGui")
screengui.Parent = playergui

local frame = Instance.new("Frame")
frame.Parent = screengui
frame.Size = UDim2.new(0, 500, 0, 300)
frame.Position = UDim2.new(0, 700, 0, 300)
frame.BackgroundTransparency = 1
frame.BackgroundColor3 = Color3.new(160/255, 159/255, 161/255)
frame.BorderColor3 = Color3.new(93/255, 93/255, 93/255)

while frame.BackgroundTransparency > 0 do wait(0.01)
    frame.BackgroundTransparency -= 0.04
end

local textbutton1 = Instance.new("TextButton")
textbutton1.Parent = frame
textbutton1.Size = UDim2.new(0, 150, 0, 40)
textbutton1.Position = UDim2.new(0, 5, 0, 5)
textbutton1.BackgroundTransparency = 1
textbutton1.TextTransparency = 1
textbutton1.BackgroundColor3 = Color3.new(93/255, 93/255, 93/255)
textbutton1.BorderColor3 = Color3.new(93/255, 93/255, 93/255)
textbutton1.TextColor3 = Color3.new(32/255, 32/255, 32/255)
textbutton1.Text = "AutoFarm"
textbutton1.Name = "AutoFarm"
textbutton1.TextSize = 10

local textbutton2 = Instance.new("TextButton")
textbutton2.Parent = frame
textbutton2.Size = UDim2.new(0, 150, 0, 40)
textbutton2.Position = UDim2.new(0, 5, 0, 50)
textbutton2.BackgroundTransparency = 1
textbutton2.TextTransparency = 1
textbutton2.BackgroundColor3 = Color3.new(93/255, 93/255, 93/255)
textbutton2.BorderColor3 = Color3.new(93/255, 93/255, 93/255)
textbutton2.TextColor3 = Color3.new(32/255, 32/255, 32/255)
textbutton2.Text = "Button" -- названиме кнопки(поменять в далдьнейшем)
textbutton2.Name = "Button" -- название файла(поменять в далдьнейшем)
textbutton2.TextSize = 10

local textbutton3 = Instance.new("TextButton")
textbutton3.Parent = frame
textbutton3.Size = UDim2.new(0, 150, 0, 40)
textbutton3.Position = UDim2.new(0, 5, 0, 95)
textbutton3.BackgroundTransparency = 1
textbutton3.TextTransparency = 1
textbutton3.BackgroundColor3 = Color3.new(93/255, 93/255, 93/255)
textbutton3.BorderColor3 = Color3.new(93/255, 93/255, 93/255)
textbutton3.TextColor3 = Color3.new(32/255, 32/255, 32/255)
textbutton3.Text = "Button" -- названиме кнопки(поменять в далдьнейшем)
textbutton3.Name = "Button" -- название файла(поменять в далдьнейшем)
textbutton3.TextSize = 10

while textbutton1.BackgroundTransparency > 0 do wait(0.01)
    textbutton1.BackgroundTransparency -= 0.02
    textbutton1.TextTransparency -= 0.02
    textbutton2.BackgroundTransparency -= 0.02
    textbutton2.TextTransparency -= 0.02
    textbutton3.BackgroundTransparency -= 0.02
    textbutton3.TextTransparency -= 0.02
end

local isAutoFarming = false

textbutton1.MouseButton1Click:Connect(function()
    if not isAutoFarming then
        isAutoFarming = true
        while isAutoFarming do
            for i = 1, #Thieving do
                humanoidrootpart.CFrame = CFrame.new(Thieving[i])
                wait(1)
            end
        end
    else
        isAutoFarming = false
    end
end)
