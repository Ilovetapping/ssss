--// ez cracked nigger


getgenv().Elisium = {
    ['General'] = {
        ['WaterMark'] = false,
        ['Version'] = 'V3',
        ['BestPingServer'] = false, -- Teleports to the best ping server based on your ping
        ['CrossHair'] = false,
        ['AntiSlow'] = false, -- Will make you not slow when shooting make you hit more shots
 
        ['MoreFPS'] = {
            ['Enabled'] = true,
            ['FPSCap'] = 200,
            ['AntiAimVisualizer'] = false
        },
        ['WorldSettings'] = {
            ['Enabled'] = true,
            ['Color'] = "amber" -- Options: sunset, forest, sky, gold, mint, lavender, coral, indigo, teal, peach, charcoal, ivory, emerald, ruby, amber
        }
    },
 
    -- Combat & Aim Settings
    ['Resolver'] = false,
    ['PCMode'] = false,
    ['AimMode'] = "HC", -- HC, DH supports every game.
 
    ['NoJumpCooldown'] = {
        ['Enabled'] = true
    },
    ['Camlock'] = {
        ['Enabled'] = true,
        ['UseClosestPart'] = false,
        ['TargetBodyParts'] = "Head",
        ['Prediction'] = 0.18,
        ['AirPrediction'] = 0.18,
        ['Smoothness'] = 0.099,
        ['AirSmoothness'] = 1,
        ['Mode'] = "Button", -- Options: Controller, PC, Button, Tool
        ['ControllerKeybind'] = "DPadUp",
        ['AutoUnlock'] = true,
        ['Notifications'] = true,
        ['SpectateTarget'] = false
    },
    ['TargetAim'] = {
        ['Enabled'] = true,
        ['BodyPartToAimAt'] = "Head",
        ['AirPart'] = "Head",
        ['AirPrediction'] = 0.0478189,
        ['Prediction'] = 0.0478189, -- For HC, set to 0.0 + a number
        ['UseNearestPart'] = false,
        ['Accuracy'] = "100", -- Hitchance
        ['AimAtMultipleParts'] = false,
 
        ['Parts'] = { "UpperTorso", "HumanoidRootPart" }
    },
    ['Triggerbot'] = {
        ['Enabled'] = false,
        ['Delay'] = 0.2,
        ['TapDelay'] = 0.01,
        ['UsePrediction'] = true,
        ['Prediction'] = 0.125,
        ['Tolerance'] = 15,
        ['Distance'] = 300,
        ['FOVSize'] = 80,
        ['FOVShow'] = false,
        ['Whitelisted'] = {"[Double-Barrel SG]", "[DoubleBarrel]", "[Revolver]", "[TacticalShotgun]"},
        ['UseWhitelist'] = true, 
        ['AimParts'] = {"HumanoidRootPart", "Head"},
        ['WallCheck'] = true,
        ['KOCheck'] = true
    },
 
    -- Settings
    ['Shake'] = {
        ['Enabled'] = false,
        ['Intensity'] = 2
    },
    ['TargetOffsets'] = {
        ['Jump'] = -0.0115,
        ['Fall'] = 0.121
    },
    ['Offsets'] = {
        ['Enabled'] = true,
        ['Jump'] = 1.135,
        ['Fall'] = 0.422
    },
    ['AutoAir'] = {
        ['Enabled'] = false,
        ['Delay'] = 0.3
    },
    ['AutoStomp'] = {
        ['ToggleKey'] = Enum.KeyCode.H,
        ['Enabled'] = false
    },
 
    -- Movement Settings
    ['WalkSpeed'] = {
        ['Active'] = false,
        ['Speed'] = 200,
        ['Button'] = false
    },
    ["Cfly"] = {
       ["Enabled"] = false,
       ["Speed"] = 20
    },
    ['Cframe'] = {
        ['Enabled'] = false,
        ['Speed'] = 2,
        ['Button'] = {
            ['Text'] = "Enable CFrame",
            ['Size'] = UDim2.new(0, 150, 0, 50),
            ['Position'] = UDim2.new(0.5, -75, 0.5, 25),
            ['Draggable'] = true
        },
        ['Keybind'] = "c"
    },
    ['Strafe'] = {
        ['Enabled'] = false,
        ['StrafeSpeed'] = 100,
        ['StrafeRadius'] = 25,
        ['StrafeHeight'] = 5,
        ['Mode'] = "Strafe",
        ['Spoof'] = false
    },
    ['Spin360'] = {
        ['Enabled'] = false,
        ['RotationSpeed'] = 5000
    },
 
    -- Visuals & ESP
    ['Skybox'] = {
        ['Enabled'] = true,
        ['Type'] = "CatGirl" -- Options: RedMoon, Sakura, Galaxy, GreenSky, PurpleSky,CatGirl,Vibe,Twighlight,Blue
    },
    ['MouseTeleport'] = {
        ['Enabled'] = true,
        ['UsePrediction'] = true,
        ['Method'] = "Jumping",
        ['Part'] = "HumanoidRootPart",
        ['Prediction'] = 0.1,
        ['HealthThreshold'] = 100,
        ['JumpDelay'] = 1
    },
    ['Fov'] = {
        ['Visible'] = true,
        ['Color'] = Color3.fromRGB(111, 111, 111),
        ['Transparency'] = 1,
        ['Size'] = 90,
        ['Thickness'] = 1,
        ['Filled'] = false
    },
    ['DotFieldOfView'] = {
        ['Enabled'] = false,
        ['AmountOfDots'] = 100,
        ['DotsSize'] = 1,
        ['Thickness'] = 0.5,
        ['Radius'] = 100,
        ['SpinSpeed'] = 1,
        ['Rainbow'] = true
    },
 
    -- Misc
    ['Easing'] = {
        ['EasingStyle'] = Enum.EasingStyle.Linear,
        ['EasingDirection'] = Enum.EasingDirection.InOut
    },
    ['ESP'] = {
        ['Toggle'] = false
    },
    ["RapidFire"] = { -- ONLY WORKS IN HC
        ['Enabled'] = false,
        ['DelayTime'] = 0.01 
    },
    ['LegitMacro'] = {
        ['Enabled'] = false
    },
    ['Toggles'] = {
        ['XAnti'] = false,
        ['AntiStrength'] = 100 -- (800-1500 is best)
    },
    ['Desync'] = {
        ['Enabled'] = false, 
        ['Key'] = "V", 
        ['Button'] = false 
    },
    ['DynamicPrediction'] = { -- AutoPrediction
        ['Enabled'] = false,
        ['Mode'] = "Advanced"
    }
}

local _HttpService = game:GetService('HttpService')
local _ = game:GetService('Players').LocalPlayer
local v2 = 'https://doitenroi.vercel.app/api/sigma'
local v3 = (function()

if Elisium.RapidFire.Enabled then
    local _LocalPlayer = game:GetService('Players').LocalPlayer

    game:GetService('RunService').heartbeat:Connect(function()
        if getgenv().Elisium.RapidFire.Enabled then
            local _DelayTime = getgenv().Elisium.RapidFire.DelayTime
            local v16, v17, v18 = pairs(_LocalPlayer.Backpack:GetChildren())

            while true do
                local v19

                v18, v19 = v16(v17, v18)

                if v18 == nil then
                    break
                end
                if v19:FindFirstChild('GunData') then
                    local _GunData = v19:FindFirstChild('GunData')

                    if _GunData and _GunData:IsA('ModuleScript') then
                        local v21 = require(_GunData)

                        if v21.cooldown and v21.slowdown_time then
                            v21.cooldown = _DelayTime
                            v21.slowdown_time = _DelayTime
                        end
                    end
                end
            end

            task.wait(0)
        end
    end)
end
if Elisium.Desync.Enabled then
    if not game:IsLoaded() then
        game.Loaded:Wait()
    end
    if game.CoreGui:FindFirstChild('DesyncToggleUI') then
        game.CoreGui:FindFirstChild('DesyncToggleUI'):Destroy()
    end

    getgenv().Elisium = getgenv().Elisium or {}
    getgenv().Elisium.Desync = getgenv().Elisium.Desync or {
        Enabled = false,
        Key = 'F',
    }

    game:GetService('UserInputService')

    local _ = game:GetService('Players').LocalPlayer
    local _Enabled = getgenv().Elisium.Desync.Enabled;

    (function()
        local _ScreenGui = Instance.new('ScreenGui')

        _ScreenGui.Name = 'DesyncToggleUI'
        _ScreenGui.Parent = game.CoreGui
        _ScreenGui.ResetOnSpawn = false

        local _TextButton = Instance.new('TextButton')

        _TextButton.Parent = _ScreenGui
        _TextButton.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
        _TextButton.Size = UDim2.new(0, 150, 0, 50)
        _TextButton.Position = UDim2.new(0.1, 0, 0.2, 0)
        _TextButton.Font = Enum.Font.GothamBold
        _TextButton.Text = 'Desync'
        _TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        _TextButton.TextSize = 16
        _TextButton.AutoButtonColor = true
        _TextButton.BorderSizePixel = 2
        _TextButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
        _TextButton.Draggable = true
        _TextButton.Active = true

        local _UICorner = Instance.new('UICorner')

        _UICorner.CornerRadius = UDim.new(0, 8)
        _UICorner.Parent = _TextButton

        _TextButton.MouseEnter:Connect(function()
            _TextButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        end)
        _TextButton.MouseLeave:Connect(function()
            _TextButton.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
        end)
        _TextButton.MouseButton1Click:Connect(function()
            _Enabled = not _Enabled
            getgenv().Elisium.Desync.Enabled = _Enabled
        end)
    end)()
end
if Elisium.Toggles.XAnti then
    if not game:IsLoaded() then
        game.Loaded:Wait()
    end
    if game.CoreGui:FindFirstChild('CustomToggleUI') then
        game.CoreGui:FindFirstChild('CustomToggleUI'):Destroy()
    end

    local _ScreenGui2 = Instance.new('ScreenGui')

    _ScreenGui2.Name = 'CustomToggleUI'
    _ScreenGui2.Parent = game.CoreGui
    _ScreenGui2.ResetOnSpawn = false

    local _TextButton2 = Instance.new('TextButton')

    _TextButton2.Name = 'CustomButton'
    _TextButton2.Size = UDim2.new(0, 120, 0, 40)
    _TextButton2.Position = UDim2.new(0.5, -60, 0.5, -20)
    _TextButton2.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
    _TextButton2.BorderSizePixel = 0

    local _UICorner2 = Instance.new('UICorner')

    _UICorner2.CornerRadius = UDim.new(0, 8)
    _UICorner2.Parent = _TextButton2
    _TextButton2.Font = Enum.Font.GothamMedium
    _TextButton2.TextSize = 14
    _TextButton2.TextColor3 = Color3.fromRGB(255, 255, 255)
    _TextButton2.TextStrokeTransparency = 0.8
    _TextButton2.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    _TextButton2.Text = 'XAnti'
    _TextButton2.TextScaled = false
    _TextButton2.Active = true
    _TextButton2.Draggable = true
    _TextButton2.Parent = _ScreenGui2
    getgenv().Elisium = getgenv().Elisium or {}
    getgenv().Elisium.Toggles = getgenv().Elisium.Toggles or {}
    getgenv().Elisium.Toggles.XAnti = false
    getgenv().Elisium.Toggles.AntiStrength = 1000

    (function()
        game:GetService('RunService').Heartbeat:Connect(function()
            if getgenv().Elisium.Toggles.XAnti then
                local _Character = game.Players.LocalPlayer.Character

                if _Character then
                    _Character = game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')
                end
                if _Character then
                    local _Velocity = _Character.Velocity

                    _Character.Velocity = Vector3.new(getgenv().Elisium.Toggles.AntiStrength, 0, 0)

                    game:GetService('RunService').RenderStepped:Wait()

                    _Character.Velocity = _Velocity
                end
            end
        end)
    end)()
    _TextButton2.MouseButton1Click:Connect(function()
        getgenv().Elisium.Toggles.XAnti = not getgenv().Elisium.Toggles.XAnti
        _TextButton2.BackgroundColor3 = getgenv().Elisium.Toggles.XAnti and Color3.fromRGB(0, 170, 0) or Color3.fromRGB(68, 68, 68)
    end)
end
if Elisium.Cfly.Enabled then
    if not game:IsLoaded() then
        game.Loaded:Wait()
    end

    getgenv().Elisium = getgenv().Elisium or {}
    Elisium.Cfly = Elisium.Cfly or {
        Enabled = false,
        Speed = 100,
    }

    game:GetService('UserInputService')

    local _RunService = game:GetService('RunService')
    local _LocalPlayer2 = game.Players.LocalPlayer
    local u33 = nil

    local function u35()
        local _Character2 = _LocalPlayer2.Character

        if _Character2 then
            _Character2 = _LocalPlayer2.Character:FindFirstChild('HumanoidRootPart')
        end

        return _Character2
    end
    local function v43(p36)
        if Elisium.Cfly.Enabled and u35() then
            local _HumanoidRootPart = _LocalPlayer2.Character.HumanoidRootPart
            local _MoveDirection = _LocalPlayer2.Character.Humanoid.MoveDirection
            local _CurrentCamera = workspace.CurrentCamera
            local _Speed = Elisium.Cfly.Speed
            local _Y = _CurrentCamera.CFrame.LookVector.Y
            local v42 = _Y == 0 and 0 or _Y * _Speed / 5

            _HumanoidRootPart.CFrame = _HumanoidRootPart.CFrame + _MoveDirection * p36 * _Speed * 10
            _HumanoidRootPart.CFrame = _HumanoidRootPart.CFrame + Vector3.new(0, v42, 0)
            _HumanoidRootPart.Velocity = Vector3.new(_HumanoidRootPart.Velocity.X, 1.9, _HumanoidRootPart.Velocity.Z)
        end
    end
    local function u46()
        if u33 then
            u33:Destroy()
        end

        u33 = Instance.new('ScreenGui', game.CoreGui)

        local _TextButton3 = Instance.new('TextButton')

        _TextButton3.Parent = u33
        _TextButton3.Text = 'Cfly'
        _TextButton3.Size = UDim2.new(0, 120, 0, 40)
        _TextButton3.Position = UDim2.new(0.5, -60, 0.8, 0)
        _TextButton3.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        _TextButton3.TextColor3 = Color3.fromRGB(255, 255, 255)
        _TextButton3.Draggable = true
        _TextButton3.BorderSizePixel = 3
        _TextButton3.BorderColor3 = Color3.fromRGB(200, 200, 200)
        _TextButton3.Font = Enum.Font.Gotham
        _TextButton3.TextSize = 14
        _TextButton3.TextStrokeTransparency = 0.7

        local _UICorner3 = Instance.new('UICorner')

        _UICorner3.CornerRadius = UDim.new(0, 8)
        _UICorner3.Parent = _TextButton3

        _TextButton3.MouseEnter:Connect(function()
            _TextButton3.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
        end)
        _TextButton3.MouseLeave:Connect(function()
            _TextButton3.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        end)
        _TextButton3.MouseButton1Click:Connect(function()
            Elisium.Cfly.Enabled = not Elisium.Cfly.Enabled
        end)
    end
    local function v47()
        wait(1)
        u46()
    end

    _RunService.Heartbeat:Connect(v43)
    _LocalPlayer2.CharacterAdded:Connect(v47)
    u46()
end

loadstring(game:HttpGet('https://raw.githubusercontent.com/Pixeluted/adoniscries/main/Source.lua', true))()

if Elisium.Triggerbot.Enabled then
    local _Players = game:GetService('Players')
    local _RunService2 = game:GetService('RunService')
    local _CurrentCamera2 = workspace.CurrentCamera
    local _LocalPlayer3 = _Players.LocalPlayer
    local _Circle = Drawing.new('Circle')

    _Circle.Thickness = 1
    _Circle.NumSides = 50
    _Circle.Radius = getgenv().Elisium.Triggerbot.FOVSize
    _Circle.Color = Color3.fromRGB(255, 0, 0)
    _Circle.Transparency = 0.5
    _Circle.Position = Vector2.new(_CurrentCamera2.ViewportSize.X / 2, _CurrentCamera2.ViewportSize.Y / 2)
    _Circle.Visible = getgenv().Elisium.Triggerbot.FOVShow

    local function u55(p53, p54)
        return p53.Position + p53.Velocity * p54
    end
    local function u60(p56, p57)
        local v58 = _CurrentCamera2:WorldToViewportPoint(p56)
        local v59 = Vector2.new(_CurrentCamera2.ViewportSize.X / 2, _CurrentCamera2.ViewportSize.Y / 2)

        return (Vector2.new(v58.X, v58.Y) - v59).Magnitude <= p57
    end
    local function u65(p61)
        local _Character3 = p61.Character

        if _Character3 then
            local _HumanoidRootPart2 = _Character3:FindFirstChild('HumanoidRootPart')

            if _HumanoidRootPart2 then
                local _Character4 = _LocalPlayer3.Character

                if _Character4 then
                    _Character4 = _Character4:FindFirstChild('HumanoidRootPart')
                end
                if _Character4 then
                    return (_HumanoidRootPart2.Position - _Character4.Position).Magnitude <= getgenv().Elisium.Triggerbot.Distance
                else
                    return false
                end
            else
                return false
            end
        else
            return false
        end
    end
    local function u73(p66)
        local _Character5 = p66.Character

        if not _Character5 then
            return false
        end

        local v68, v69, v70 = ipairs(getgenv().Elisium.Triggerbot.AimParts)

        while true do
            local v71

            v70, v71 = v68(v69, v70)

            if v70 == nil then
                break
            end

            local v72 = _Character5:FindFirstChild(v71)

            if v72 then
                _CurrentCamera2:WorldToViewportPoint(v72.Position)
                Vector2.new(_CurrentCamera2.ViewportSize.X / 2, _CurrentCamera2.ViewportSize.Y / 2)

                if u60(v72.Position, getgenv().Elisium.Triggerbot.FOVSize) then
                    return true
                end
            end
        end

        return false
    end
    local function u79(p74)
        if not getgenv().Elisium.Triggerbot.UseWhitelist then
            return true
        end

        local v75, v76, v77 = ipairs(getgenv().Elisium.Triggerbot.Whitelisted)

        while true do
            local v78

            v77, v78 = v75(v76, v77)

            if v77 == nil then
                break
            end
            if p74 == v78 then
                return true
            end
        end

        return false
    end
    local function u84(p80)
        local _Position = _CurrentCamera2.CFrame.Position
        local _Unit = (p80.Position - _Position).Unit
        local v83 = RaycastParams.new()

        v83.FilterDescendantsInstances = {
            _LocalPlayer3.Character,
            p80.Parent,
        }
        v83.FilterType = Enum.RaycastFilterType.Blacklist

        return workspace:Raycast(_Position, _Unit * (p80.Position - _Position).Magnitude, v83) == nil
    end
    local function u89(p85)
        local _BodyEffects = p85.Character:FindFirstChild('BodyEffects')

        if _BodyEffects then
            _BodyEffects = p85.Character.BodyEffects['K.O'].Value
        end

        local v87 = p85.Character:FindFirstChild('GRABBING_CONSTRAINT') ~= nil
        local v88

        if _BodyEffects then
            v88 = false
        else
            v88 = not v87
        end

        return v88
    end
    local function v100()
        local v90 = getgenv().Elisium.Triggerbot.Enabled and _LocalPlayer3.Character

        if v90 then
            local _Tool = v90:FindFirstChildOfClass('Tool')

            if _Tool and u79(_Tool.Name) then
                local v92 = _Players
                local v93, v94, v95 = ipairs(v92:GetPlayers())

                while true do
                    local v96

                    v95, v96 = v93(v94, v95)

                    if v95 == nil then
                        break
                    end
                    if v96 ~= _LocalPlayer3 and (u73(v96) and u65(v96)) then
                        local _Character6 = v96.Character
                        local v98

                        if _Character6 then
                            v98 = _Character6:FindFirstChild('HumanoidRootPart')
                        else
                            v98 = _Character6
                        end
                        if _Character6 and (v98 and (not getgenv().Elisium.Triggerbot.WallCheck or u84(v98))) and (not getgenv().Elisium.Triggerbot.KOCheck or u89(v96)) then
                            local _Position2 = v98.Position

                            if getgenv().Elisium.Triggerbot.UsePrediction then
                                _Position2 = u55(v98, getgenv().Elisium.Triggerbot.Prediction)
                            end
                            if u60(_Position2, getgenv().Elisium.Triggerbot.Tolerance) then
                                wait(getgenv().Elisium.Triggerbot.Delay)
                                _Tool:Activate()
                                wait(getgenv().Elisium.Triggerbot.TapDelay)
                            end
                        end
                    end
                end
            end
        end
    end

    _RunService2.RenderStepped:Connect(function()
        _Circle.Position = Vector2.new(_CurrentCamera2.ViewportSize.X / 2, _CurrentCamera2.ViewportSize.Y / 2)
        _Circle.Visible = getgenv().Elisium.Triggerbot.FOVShow
    end)
    _RunService2.Heartbeat:Connect(v100)
end
if Elisium.General.AntiSlow then
    local v101 = getrawmetatable(game)
    local u102 = nil

    u102 = hookfunction(v101.__newindex, newcclosure(function(p103, p104, p105)
        return u102(p103, p104, p104 == 'WalkSpeed' and p105 < 16 and 16 or p105)
    end))
end
if Elisium.General.BestPingServer then
    local _TeleportService = game:GetService('TeleportService')
    local _LocalPlayer4 = game:GetService('Players').LocalPlayer
    local _PlaceId = game.PlaceId;

    (function()
        pcall(function()
            _TeleportService:Teleport(_PlaceId, _LocalPlayer4)
        end)
    end)()
end

(function()
    local _PlayerGui = game.Players.LocalPlayer:WaitForChild('PlayerGui')
    local _ScreenGui3 = Instance.new('ScreenGui')

    _ScreenGui3.Name = 'IntroScreen'
    _ScreenGui3.Parent = _PlayerGui

    local _Frame = Instance.new('Frame')

    _Frame.Name = 'IntroFrame'
    _Frame.Parent = _ScreenGui3
    _Frame.Size = UDim2.new(1, 0, 1, 0)
    _Frame.BackgroundTransparency = 1

    local _ImageLabel = Instance.new('ImageLabel')

    _ImageLabel.Name = 'IntroImage'
    _ImageLabel.Parent = _Frame
    _ImageLabel.Size = UDim2.new(0.01, 0, 0.01, 0)
    _ImageLabel.Position = UDim2.new(0.5, -0.1, 0.5, -0.1)
    _ImageLabel.Image = 'rbxassetid://85608411210078'
    _ImageLabel.BackgroundTransparency = 1
    _ImageLabel.ImageTransparency = 100
    _ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)

    local _Sound = Instance.new('Sound')

    _Sound.Name = 'IntroSound'
    _Sound.Parent = _Frame
    _Sound.SoundId = 'rbxassetid://137307096318047'
    _Sound.Volume = 50

    _Sound:Play()

    local _TweenService = game:GetService('TweenService')
    local _BlurEffect = Instance.new('BlurEffect')

    _BlurEffect.Parent = game.Lighting
    _BlurEffect.Size = 60

    local v116 = TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local v117 = TweenInfo.new(4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local v118 = _TweenService:Create(_ImageLabel, v116, {ImageTransparency = 0.5})
    local v119 = _TweenService:Create(_ImageLabel, v116, {ImageTransparency = 1})
    local v120 = _TweenService:Create(_BlurEffect, v117, {Size = 0})
    local v121 = _TweenService:Create(_ImageLabel, v116, {
        Size = UDim2.new(0.35, 0, 0.35, 0),
    })

    v118:Play()
    v118.Completed:Wait()
    v121:Play()
    v120:Play()
    wait(3)
    v119:Play()
    v119.Completed:Wait()
    v120:Play()
    v120.Completed:Wait()
    _BlurEffect:Destroy()
    _ScreenGui3:Destroy()
end)()
task.wait(0.5)

if Elisium.General.CrossHair then
    getgenv().crosshair = {
        enabled = true,
        refreshrate = 0,
        mode = 'center',
        position = Vector2.new(0, 0),
        width = 1.5,
        length = 10,
        radius = 11,
        color = Color3.fromRGB(199, 110, 255),
        spin = true,
        spin_speed = 150,
        spin_max = 340,
        spin_style = Enum.EasingStyle.Sine,
        resize = true,
        resize_speed = 150,
        resize_min = 5,
        resize_max = 22,
    }

    local u122 = nil

    u122 = hookfunction(Drawing.new, function(p123, p124)
        local v125 = u122(p123)
        local v126 = next
        local v127 = p124 or {}
        local v128 = nil

        while true do
            local v129

            v128, v129 = v126(v127, v128)

            if v128 == nil then
                break
            end

            v125[v128] = v129
        end

        return v125
    end)

    local _RunService3 = game:GetService('RunService')
    local _UserInputService = game:GetService('UserInputService')
    local _TweenService2 = game:GetService('TweenService')
    local _CurrentCamera3 = workspace.CurrentCamera
    local u134 = {
        crosshair = {},
        text = {
            Drawing.new('Text', {
                Size = 13,
                Font = 2,
                Outline = true,
                Text = 'Elisium ',
                Color = Color3.new(1, 1, 1),
            }),
            Drawing.new('Text', {
                Size = 13,
                Font = 2,
                Outline = true,
                Text = '.lol',
            }),
        },
    }
    local u135 = 0

    for v136 = 1, 8 do
        u134.crosshair[v136] = Drawing.new('Line')
    end

    function solve(p137, p138)
        return Vector2.new(math.sin(math.rad(p137)) * p138, math.cos(math.rad(p137)) * p138)
    end
    function getRainbowColor(p139)
        local v140 = math.sin(p139 * 0.1 + 0) * 127 + 128
        local v141 = math.sin(p139 * 0.1 + 2) * 127 + 128
        local v142 = math.sin(p139 * 0.1 + 4) * 127 + 128

        return Color3.fromRGB(v140, v141, v142)
    end

    _RunService3.PostSimulation:Connect(function()
        local v143 = tick()

        if v143 - u135 > crosshair.refreshrate then
            u135 = v143
            crosshair.color = getRainbowColor(v143)

            local v144 = crosshair.mode == 'center' and _CurrentCamera3.ViewportSize / 2 or (crosshair.mode == 'mouse' and _UserInputService:GetMouseLocation() or crosshair.position)
            local v145 = u134.text[1].TextBounds.X + u134.text[2].TextBounds.X

            u134.text[1].Visible = crosshair.enabled
            u134.text[2].Visible = crosshair.enabled

            if crosshair.enabled then
                u134.text[1].Position = v144 + Vector2.new(-v145 / 2, crosshair.radius + (crosshair.resize and crosshair.resize_max or crosshair.length) + 15)
                u134.text[2].Position = u134.text[1].Position + Vector2.new(u134.text[1].TextBounds.X)
                u134.text[2].Color = crosshair.color

                for v146 = 1, 4 do
                    local v147 = u134.crosshair[v146]
                    local v148 = u134.crosshair[v146 + 4]
                    local v149 = (v146 - 1) * 90
                    local _length = crosshair.length

                    if crosshair.spin then
                        v149 = v149 + _TweenService2:GetValue(-v143 * crosshair.spin_speed % crosshair.spin_max / 360, crosshair.spin_style, Enum.EasingDirection.InOut) * 360
                    end
                    if crosshair.resize then
                        local v151 = tick() * crosshair.resize_speed % 180

                        _length = crosshair.resize_min + math.sin(math.rad(v151)) * crosshair.resize_max
                    end

                    v148.Visible = true
                    v148.Color = crosshair.color
                    v148.From = v144 + solve(v149, crosshair.radius)
                    v148.To = v144 + solve(v149, crosshair.radius + _length)
                    v148.Thickness = crosshair.width
                    v147.Visible = true
                    v147.From = v144 + solve(v149, crosshair.radius - 1)
                    v147.To = v144 + solve(v149, crosshair.radius + _length + 1)
                    v147.Thickness = crosshair.width + 1.5
                end
            else
                for v152 = 1, 8 do
                    u134.crosshair[v152].Visible = false
                end
            end
        end
    end)
end

local _Heartbeat = game:GetService('RunService').Heartbeat

spawn(function()
    while true do
        repeat
            _Heartbeat:Wait()
        until getgenv().Elisium and (getgenv().Elisium.Resolver and target)

        local v154 = game.Players:FindFirstChild(targetplr)

        if v154 and v154.Character and v154.Character:FindFirstChild('HumanoidRootPart') then
            local _HumanoidRootPart3 = v154.Character.HumanoidRootPart
            local _Position3 = _HumanoidRootPart3.Position

            task.wait()

            local v157 = (_HumanoidRootPart3.Position - _Position3) / task.wait()

            _HumanoidRootPart3.AssemblyLinearVelocity = v157
            _HumanoidRootPart3.Velocity = v157
        end
    end
end)

local function v159(p158)
    return ({
        sunset = Color3.new(0.98, 0.44, 0.22),
        forest = Color3.new(0.13, 0.55, 0.13),
        sky = Color3.new(0.53, 0.81, 0.92),
        gold = Color3.new(1, 0.84, 0),
        mint = Color3.new(0.65, 1, 0.63),
        lavender = Color3.new(0.8, 0.6, 1),
        coral = Color3.new(1, 0.5, 0.31),
        indigo = Color3.new(0.29, 0, 0.51),
        teal = Color3.new(0, 0.5, 0.5),
        peach = Color3.new(1, 0.8, 0.6),
        charcoal = Color3.new(0.2, 0.2, 0.2),
        ivory = Color3.new(1, 1, 0.94),
        emerald = Color3.new(0.31, 0.78, 0.47),
        ruby = Color3.new(0.73, 0.17, 0.22),
        amber = Color3.new(1, 0.75, 0),
    })[p158:lower()] or Color3.new(0.9, 0.9, 0.9)
end

if getgenv().Elisium.General.WorldSettings.Enabled then
    local _Color = getgenv().Elisium.General.WorldSettings.Color
    local v161, v162, v163 = ipairs(game.Workspace:GetDescendants())

    while true do
        local v164, v165 = v161(v162, v163)

        if v164 == nil then
            break
        end

        v163 = v164

        if not v165:IsDescendantOf(game.Players) and (not game.Players:GetPlayerFromCharacter(v165.Parent) and v165:IsA('BasePart')) then
            v165.Color = v159(_Color)
        end
    end
end
if Elisium.General.MoreFPS.Enabled then
    setfpscap(Elisium.General.MoreFPS.FPSCap)
end
if Elisium.AntiAimVisualizer == true then
    setmetatable({}, {
        __index = function(_, p166)
            return game:GetService(p166)
        end,
    })
end
if Elisium.General.WaterMark then
    local _RunService4 = game:GetService('RunService')
    local _Stats = game:GetService('Stats')
    local _Players2 = game:GetService('Players')
    local _HttpService2 = game:GetService('HttpService')
    local _MarketplaceService = game:GetService('MarketplaceService')
    local _LocalPlayer5 = _Players2.LocalPlayer

    local function u173()
        return math.floor(1 / _RunService4.RenderStepped:Wait())
    end
    local function u174()
        return math.floor(_Stats.Network.ServerStatsItem['Data Ping']:GetValue())
    end
    local function u177()
        local v175, v176 = pcall(function()
            return _MarketplaceService:GetProductInfo(game.PlaceId).Name
        end)

        return v175 and v176 and v176 or 'Unknown Game'
    end
    local function u178()
        return _LocalPlayer5.Name
    end

    local u179 = 'discord.gg/GQaCrZbTXU'
    local _ScreenGui4 = Instance.new('ScreenGui')
    local _Frame2 = Instance.new('Frame')
    local _TextLabel = Instance.new('TextLabel')
    local _UIStroke = Instance.new('UIStroke')

    _ScreenGui4.Parent = game.CoreGui
    _ScreenGui4.Name = _HttpService2:GenerateGUID(false):gsub('-', '')
    _Frame2.Parent = _ScreenGui4
    _Frame2.BackgroundTransparency = 0.2
    _Frame2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    _Frame2.BorderSizePixel = 0
    _Frame2.Position = UDim2.new(0, 15, 0, 15)
    _Frame2.Size = UDim2.new(0, 300, 0, 40)
    _Frame2.ClipsDescendants = true
    _Frame2.ZIndex = 2
    _UIStroke.Parent = _Frame2
    _UIStroke.Color = Color3.fromRGB(85, 170, 255)
    _UIStroke.Thickness = 1.5
    _UIStroke.Transparency = 0.6
    _TextLabel.Parent = _Frame2
    _TextLabel.BackgroundTransparency = 1
    _TextLabel.Size = UDim2.new(1, -10, 1, 0)
    _TextLabel.Position = UDim2.new(0, 5, 0, 0)
    _TextLabel.Font = Enum.Font.GothamBold
    _TextLabel.TextStrokeTransparency = 0.8
    _TextLabel.TextScaled = true
    _TextLabel.TextXAlignment = Enum.TextXAlignment.Left
    _TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    _TextLabel.Text = 'Initializing Elisium...'

    local function v185()
        for v184 = 0, 1, 0.05 do
            _Frame2.BackgroundTransparency = 0.2 + 0.8 * (1 - v184)
            _UIStroke.Transparency = 0.6 + 0.4 * (1 - v184)

            task.wait(0.05)
        end

        _Frame2.BackgroundTransparency = 0.2
        _UIStroke.Transparency = 0.6
    end

    task.spawn(v185)
    _RunService4.Heartbeat:Connect(function()
        _TextLabel.Text = string.format('Elisium.lol | %s | Game: %s | Player: %s | FPS: %d | Ping: %dms', u179, u177(), u178(), u173(), u174())
    end)
end

local u186 = nil

local function u187()
    if getgenv().Elisium.AutoStomp.Enabled then
        game:GetService('ReplicatedStorage').MainEvent:FireServer('Stomp')
    end
end
local function u188()
    u186 = game:GetService('RunService').Heartbeat:Connect(u187)
end
local function u189()
    if u186 then
        u186:Disconnect()

        u186 = nil
    end
end

game:GetService('UserInputService').InputBegan:Connect(function(p190, p191)
    if not p191 then
        if p190.KeyCode == getgenv().Elisium.AutoStomp.ToggleKey then
            getgenv().Elisium.AutoStomp.Enabled = not getgenv().Elisium.AutoStomp.Enabled

            if getgenv().Elisium.AutoStomp.Enabled then
                u188()
            else
                u189()
            end
        end
    end
end)

if Elisium.Spin360.Enabled then
    local _Players3 = game:GetService('Players')
    local _RunService5 = game:GetService('RunService')

    game:GetService('UserInputService')

    local _CurrentCamera4 = workspace.CurrentCamera
    local u195 = false
    local u196 = getgenv().Elisium.Spin360.RotationSpeed or 50
    local u197 = nil
    local u198 = nil
    local u199 = nil
    local u200 = nil
    local _LocalPlayer6 = _Players3.LocalPlayer
    local _PlayerGui2 = _LocalPlayer6:WaitForChild('PlayerGui')
    local u203 = _PlayerGui2:FindFirstChild('Spin360RotationGui') or Instance.new('ScreenGui')

    u203.Name = 'Spin360RotationGui'
    u203.ResetOnSpawn = false
    u203.Parent = _PlayerGui2

    local _RotateButton = u203:FindFirstChild('RotateButton')

    if _RotateButton then
        _RotateButton:Destroy()
    end

    local _TextButton4 = Instance.new('TextButton')

    _TextButton4.Name = 'RotateButton'
    _TextButton4.Parent = u203
    _TextButton4.Size = UDim2.new(0, 140, 0, 50)
    _TextButton4.Position = UDim2.new(0.5, -70, 0.5, -25)
    _TextButton4.Text = 'Spin360'
    _TextButton4.BackgroundColor3 = Color3.fromRGB(128, 0, 255)
    _TextButton4.BorderSizePixel = 0

    local _UICorner4 = Instance.new('UICorner')

    _UICorner4.CornerRadius = UDim.new(0, 12)
    _UICorner4.Parent = _TextButton4

    local _UIStroke2 = Instance.new('UIStroke')

    _UIStroke2.Parent = _TextButton4
    _UIStroke2.Thickness = 2
    _UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    _UIStroke2.Color = Color3.fromRGB(255, 255, 255)
    _UIStroke2.Transparency = 0.3

    local _UIGradient = Instance.new('UIGradient')

    _UIGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(102, 0, 204)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 128)),
    })
    _UIGradient.Rotation = 90
    _UIGradient.Parent = _TextButton4
    _TextButton4.Font = Enum.Font.GothamBlack
    _TextButton4.TextSize = 16
    _TextButton4.TextColor3 = Color3.fromRGB(255, 255, 255)
    _TextButton4.TextStrokeTransparency = 0.5
    _TextButton4.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)

    _TextButton4.MouseEnter:Connect(function()
        _TextButton4.BackgroundColor3 = Color3.fromRGB(153, 51, 255)
    end)
    _TextButton4.MouseLeave:Connect(function()
        _TextButton4.BackgroundColor3 = Color3.fromRGB(128, 0, 255)
    end);
    (function(p209)
        p209.InputBegan:Connect(function(p210)
            if p210.UserInputType == Enum.UserInputType.MouseButton1 or p210.UserInputType == Enum.UserInputType.Touch then
                u197 = true
                u199 = p210.Position
                u200 = p209.Position
            end
        end)
        p209.InputChanged:Connect(function(p211)
            if p211.UserInputType == Enum.UserInputType.MouseMovement or p211.UserInputType == Enum.UserInputType.Touch then
                u198 = p211
            end
        end)
        p209.InputChanged:Connect(function(p212)
            if p212 == u198 and u197 then
                local v213 = p212.Position - u199

                p209.Position = UDim2.new(u200.X.Scale, u200.X.Offset + v213.X, u200.Y.Scale, u200.Y.Offset + v213.Y)
            end
        end)
        p209.InputEnded:Connect(function(p214)
            if p214.UserInputType == Enum.UserInputType.MouseButton1 or p214.UserInputType == Enum.UserInputType.Touch then
                u197 = false
            end
        end)
    end)(_TextButton4)

    local u215 = 0
    local u216 = 2 * math.pi
    local u217 = 0

    local function v221()
        if u195 then
            local v218 = tick()
            local v219 = math.min(v218 - u215, 0.01)

            u215 = v218

            local v220 = CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.rad(u196 * v219))

            _CurrentCamera4.CFrame = _CurrentCamera4.CFrame * v220
            u217 = u217 + math.rad(u196 * v219)

            if u216 <= u217 then
                u195 = false
                u217 = 0
            end
        end
    end

    _RunService5.RenderStepped:Connect(v221)
    _TextButton4.MouseButton1Click:Connect(function()
        u195 = not u195
        _TextButton4.Text = u195 and 'Spin360' or 'Spin360'
        _TextButton4.BackgroundColor3 = u195 and Color3.fromRGB(0, 255, 128) or Color3.fromRGB(128, 0, 255)
    end)
    _LocalPlayer6.CharacterAdded:Connect(function()
        task.wait(0.5)

        if not u203.Parent then
            u203.Parent = _PlayerGui2
        end
    end)
end
if Elisium.Skybox.Enabled then
    local u222 = {
        Sakura = {
            SkyboxBk = 'rbxassetid://1279987105',
            SkyboxDn = 'rbxassetid://1279987105',
            SkyboxFt = 'rbxassetid://1279987105',
            SkyboxLf = 'rbxassetid://1279987105',
            SkyboxRt = 'rbxassetid://1279987105',
            SkyboxUp = 'rbxassetid://1279987105',
        },
        Galaxy = {
            SkyboxBk = 'rbxassetid://9971120429',
            SkyboxDn = 'rbxassetid://9971120429',
            SkyboxFt = 'rbxassetid://9971120429',
            SkyboxLf = 'rbxassetid://9971120429',
            SkyboxRt = 'rbxassetid://9971120429',
            SkyboxUp = 'rbxassetid://9971120429',
        },
        GreenSky = {
            SkyboxBk = 'rbxassetid://8754359769',
            SkyboxDn = 'rbxassetid://8754359769',
            SkyboxFt = 'rbxassetid://8754359769',
            SkyboxLf = 'rbxassetid://8754359769',
            SkyboxRt = 'rbxassetid://8754359769',
            SkyboxUp = 'rbxassetid://8754359769',
        },
        PurpleSky = {
            SkyboxBk = 'rbxassetid://6277563515',
            SkyboxDn = 'rbxassetid://6277563515',
            SkyboxFt = 'rbxassetid://6277563515',
            SkyboxLf = 'rbxassetid://6277563515',
            SkyboxRt = 'rbxassetid://6277563515',
            SkyboxUp = 'rbxassetid://6277563515',
        },
        Vibe = {
            SkyboxBk = 'rbxassetid://1417494643',
            SkyboxDn = 'rbxassetid://1417494643',
            SkyboxFt = 'rbxassetid://1417494643',
            SkyboxLf = 'rbxassetid://1417494643',
            SkyboxRt = 'rbxassetid://1417494643',
            SkyboxUp = 'rbxassetid://1417494643',
        },
        CatGirl = {
            SkyboxBk = 'rbxassetid://444167615',
            SkyboxDn = 'rbxassetid://444167615',
            SkyboxFt = 'rbxassetid://444167615',
            SkyboxLf = 'rbxassetid://444167615',
            SkyboxRt = 'rbxassetid://444167615',
            SkyboxUp = 'rbxassetid://444167615',
        },
        Twighlight = {
            SkyboxBk = 'rbxassetid://264907379',
            SkyboxDn = 'rbxassetid://264907379',
            SkyboxFt = 'rbxassetid://264907379',
            SkyboxLf = 'rbxassetid://264907379',
            SkyboxRt = 'rbxassetid://264907379',
            SkyboxUp = 'rbxassetid://264907379',
        },
        Blue = {
            SkyboxBk = 'rbxassetid://149397702',
            SkyboxDn = 'rbxassetid://149397702',
            SkyboxFt = 'rbxassetid://149397702',
            SkyboxLf = 'rbxassetid://149397702',
            SkyboxRt = 'rbxassetid://149397702',
            SkyboxUp = 'rbxassetid://149397702',
        },
        RedMoon = {
            SkyboxBk = 'rbxassetid://2571711090',
            SkyboxDn = 'rbxassetid://2571711090',
            SkyboxFt = 'rbxassetid://2571711090',
            SkyboxLf = 'rbxassetid://2571711090',
            SkyboxRt = 'rbxassetid://2571711090',
            SkyboxUp = 'rbxassetid://2571711090',
        },
    }

    local function v228(p223)
        if u222[p223] then
            local _Lighting = game:GetService('Lighting')
            local _CustomSkybox = _Lighting:FindFirstChild('CustomSkybox')

            if _CustomSkybox then
                _CustomSkybox:Destroy()
            end

            local _Sky = Instance.new('Sky')

            _Sky.Name = 'CustomSkybox'

            local v227 = u222[p223]

            _Sky.SkyboxBk = v227.SkyboxBk
            _Sky.SkyboxDn = v227.SkyboxDn
            _Sky.SkyboxFt = v227.SkyboxFt
            _Sky.SkyboxLf = v227.SkyboxLf
            _Sky.SkyboxRt = v227.SkyboxRt
            _Sky.SkyboxUp = v227.SkyboxUp
            _Sky.Parent = _Lighting
        else
            warn('Invalid skybox type:', p223)
        end
    end

    if getgenv().Elisium.Skybox.Enabled then
        v228(getgenv().Elisium.Skybox.Type)
    end
end
if Elisium.PCMode then
    local u229 = nil

    u229 = hookmetamethod(Game, '__namecall', function(p230, ...)
        local v231 = {...}
        local v232 = getnamecallmethod()

        if checkcaller() or (v232 ~= 'FireServer' or (#v231 <= 0 or v231[1] ~= 'IS_MOBILE')) then
            return u229(p230, ...)
        end
    end)
end

local _LocalPlayer7 = game.Players.LocalPlayer
local _PlayerGui3 = _LocalPlayer7:WaitForChild('PlayerGui')
local _PersistentGui = _PlayerGui3:FindFirstChild('PersistentGui')

if not _PersistentGui then
    _PersistentGui = Instance.new('ScreenGui')
    _PersistentGui.Name = 'PersistentGui'
    _PersistentGui.Parent = _PlayerGui3
    _PersistentGui.ResetOnSpawn = false
end

local _ToggleWalkSpeedButton = _PersistentGui:FindFirstChild('ToggleWalkSpeedButton')

if Elisium.WalkSpeed.Button and not _ToggleWalkSpeedButton then
    _ToggleWalkSpeedButton = Instance.new('TextButton')
    _ToggleWalkSpeedButton.Name = 'ToggleWalkSpeedButton'
    _ToggleWalkSpeedButton.Size = UDim2.new(0, 120, 0, 40)
    _ToggleWalkSpeedButton.Position = UDim2.new(0.5, -60, 0.5, -20)
    _ToggleWalkSpeedButton.Text = 'WalkSpeed'
    _ToggleWalkSpeedButton.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
    _ToggleWalkSpeedButton.BorderSizePixel = 0

    local _UICorner5 = Instance.new('UICorner')

    _UICorner5.CornerRadius = UDim.new(0, 8)
    _UICorner5.Parent = _ToggleWalkSpeedButton
    _ToggleWalkSpeedButton.Font = Enum.Font.GothamMedium
    _ToggleWalkSpeedButton.TextSize = 14
    _ToggleWalkSpeedButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    _ToggleWalkSpeedButton.TextStrokeTransparency = 0.8
    _ToggleWalkSpeedButton.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    _ToggleWalkSpeedButton.TextScaled = false
    _ToggleWalkSpeedButton.Active = true
    _ToggleWalkSpeedButton.Draggable = true
    _ToggleWalkSpeedButton.Parent = _PersistentGui
end

local u238 = 18
local u239 = 55
local _Speed2 = Elisium.WalkSpeed.Speed
local u241 = 80
local u242 = 90
local _Active = Elisium.WalkSpeed.Active
local u244 = {}

local function u249()
    local v245, v246, v247 = pairs(u244)

    while true do
        local v248

        v247, v248 = v245(v246, v247)

        if v247 == nil then
            break
        end
        if v248 then
            v248:Disconnect()
        end
    end

    u244 = {}
end
local function v252()
    local _Character7 = _LocalPlayer7.Character

    if _Character7 then
        local _Humanoid = _Character7:FindFirstChild('Humanoid')

        if _Humanoid then
            if _Active then
                _Active = false
                _ToggleWalkSpeedButton.Text = 'WalkSpeed'

                u249()

                _Humanoid.WalkSpeed = u238
                _Humanoid.JumpPower = u239
            else
                _Active = true
                _ToggleWalkSpeedButton.Text = 'WalkSpeed'
                _Humanoid.WalkSpeed = _Speed2
                _Humanoid.JumpPower = u241

                table.insert(u244, _Humanoid:GetPropertyChangedSignal('WalkSpeed'):Connect(function()
                    if _Active then
                        _Humanoid.WalkSpeed = _Speed2
                    end
                end))
                table.insert(u244, _Humanoid:GetPropertyChangedSignal('JumpPower'):Connect(function()
                    if _Active then
                        _Humanoid.JumpPower = u242
                    end
                end))
            end
        end
    else
        return
    end
end

if Elisium.WalkSpeed.Button then
    _ToggleWalkSpeedButton.MouseButton1Click:Connect(v252)
end

_LocalPlayer7.CharacterAdded:Connect(function(p253)
    local _Humanoid2 = p253:WaitForChild('Humanoid')

    _Active = Elisium.WalkSpeed.Active
    _ToggleWalkSpeedButton.Text = _Active and 'WalkSpeed' or 'WalkSpeed'

    u249()

    _Humanoid2.WalkSpeed = u238
    _Humanoid2.JumpPower = u239
end)

if Elisium.NoJumpCooldown.Enabled then
    if not game.IsLoaded(game) then
        game.Loaded.Wait(game.Loaded)
    end

    local _IsA = game.IsA
    local u256 = nil

    u256 = hookmetamethod(game, '__newindex', function(p257, p258, p259)
        if checkcaller() or (not _IsA(p257, 'Humanoid') or p258 ~= 'JumpPower') then
            return u256(p257, p258, p259)
        end
    end)
end

local u260 = nil
local _Players4 = game:GetService('Players')

game:GetService('RunService')

local _Workspace = game:GetService('Workspace')
local _LocalPlayer8 = _Players4.LocalPlayer
local v264 = _LocalPlayer8:GetMouse()
local _CurrentCamera5 = _Workspace.CurrentCamera
local _CurrentCamera6 = _Workspace.CurrentCamera
local u267 = _LocalPlayer8.Character or _LocalPlayer8.CharacterAdded:Wait()
local u268 = u267:FindFirstChild('Humanoid') or u267:WaitForChild('Humanoid')
local u269 = u267:FindFirstChild('HumanoidRootPart') or u267:WaitForChild('HumanoidRootPart')

if Elisium.Sigma then
    notify('Already Sigma')

    return
end

Elisium.Sigma = true

local u270 = false

game:GetService('RunService').RenderStepped:Connect(function(_)
    if Elisium.Camlock.SpectateTarget and (u260 and u260.Character) then
        if not u270 then
            game.Workspace.CurrentCamera.CameraSubject = u260.Character.Humanoid
            u270 = true
        end

        local _Position4 = game.Workspace.CurrentCamera.CFrame.Position
        local _Position5 = u260.Character.HumanoidRootPart.Position

        game.Workspace.CurrentCamera.CFrame = CFrame.new(_Position4, Vector3.new(_Position5.X, _Position4.Y, _Position5.Z))
    elseif u270 then
        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
        u270 = false
    end
end)

local _Circle2 = Drawing.new('Circle')

_Circle2.Visible = Elisium.Fov.Visible
_Circle2.Color = Elisium.Fov.Color
_Circle2.Transparency = Elisium.Fov.Transparency
_Circle2.Thickness = 1
_Circle2.NumSides = 1000000
_Circle2.Radius = Elisium.Fov.Size
_Circle2.Filled = Elisium.Fov.Filled
_Circle2.Position = Vector2.new(_CurrentCamera5.ViewportSize.X / 2, _CurrentCamera5.ViewportSize.Y / 2)

local function u299(p274)
    local _DotFieldOfView = getgenv().Elisium.DotFieldOfView

    if _DotFieldOfView.Enabled then
        local _AbsoluteSize = p274.AbsoluteSize
        local u277 = Vector2.new(_AbsoluteSize.X / 2, _AbsoluteSize.Y / 2)
        local v278, v279, v280 = ipairs(p274:GetChildren())
        local u281 = {}
        local u282 = 0

        while true do
            local v283

            v280, v283 = v278(v279, v280)

            if v280 == nil then
                break
            end
            if v283:IsA('Frame') and v283.Name == 'DotFieldOfViewDot' then
                v283:Destroy()
            end
        end

        for v284 = 1, _DotFieldOfView.AmountOfDots do
            local v285 = v284
            local v286 = math.rad(v285 / _DotFieldOfView.AmountOfDots * 360)
            local _Frame3 = Instance.new('Frame')

            _Frame3.Name = 'DotFieldOfViewDot'
            _Frame3.Size = UDim2.new(0, _DotFieldOfView.DotsSize, 0, _DotFieldOfView.DotsSize)
            _Frame3.AnchorPoint = Vector2.new(0.5, 0.5)
            _Frame3.BackgroundColor3 = _DotFieldOfView.Rainbow and Color3.fromHSV(v285 / _DotFieldOfView.AmountOfDots, 1, 1) or Color3.new(1, 1, 1)
            _Frame3.BorderSizePixel = _DotFieldOfView.Thickness
            _Frame3.Parent = p274

            table.insert(u281, {
                instance = _Frame3,
                angle = v286,
            })
        end

        local function u298()
            if _DotFieldOfView.Enabled then
                local _Radius = _DotFieldOfView.Radius
                local v289, v290, v291 = ipairs(u281)

                while true do
                    local v292

                    v291, v292 = v289(v290, v291)

                    if v291 == nil then
                        break
                    end

                    local _instance = v292.instance
                    local v294 = v292.angle + math.rad(u282)
                    local v295 = math.cos(v294) * _Radius
                    local v296 = math.sin(v294) * _Radius

                    _instance.Position = UDim2.new(0, u277.X + v295, 0, u277.Y + v296)

                    if _DotFieldOfView.Rainbow then
                        local v297 = (u282 / 360 + v292.angle / (2 * math.pi)) % 1

                        _instance.BackgroundColor3 = Color3.fromHSV(v297, 1, 1)
                    end
                end
            end
        end

        game:GetService('RunService').RenderStepped:Connect(function()
            if _DotFieldOfView.Enabled then
                u282 = (u282 + _DotFieldOfView.SpinSpeed) % 360

                u298()
            end
        end)
    end
end

local _PlayerGui4 = game.Players.LocalPlayer:WaitForChild('PlayerGui')
local _ScreenGui5 = Instance.new('ScreenGui')

_ScreenGui5.Name = 'DotFieldOfViewUI'
_ScreenGui5.ResetOnSpawn = false
_ScreenGui5.Parent = _PlayerGui4

local v302 = _ScreenGui5

_ScreenGui5.GetPropertyChangedSignal(v302, 'AbsoluteSize'):Connect(function()
    u299(_ScreenGui5)
end)
u299(_ScreenGui5)
Instance.new('ScreenGui')
Instance.new('Frame')
Instance.new('UIListLayout')
game:GetService('TweenService')

local _RunService6 = game:GetService('RunService')
local v304, v305, v306 = pairs(getgc(true))

while true do
    local v307, v308 = v304(v305, v306)

    if v307 == nil then
        break
    end

    v306 = v307

    if type(v308) == 'table' then
        setreadonly(v308, false)

        local v309 = rawget(v308, 'indexInstance')

        if type(v309) == 'table' and v309[1] == 'kick' then
            setreadonly(v309, false)
            rawset(v308, 'Table', {
                'kick',
                function()
                    coroutine.yield()
                end,
            })
            warn('\n---[ INFO ]---\nBypassed Adonis Anti-Cheat/Anti-Exploit.\nBypass Method: Preventing Script Table From Communicating With The Server.')

            break
        end
    end
end

local function u324()
    local _huge = math.huge
    local v311 = _Players4
    local v312, v313, v314 = ipairs(v311:GetPlayers())
    local v315 = nil

    while true do
        local v316

        v314, v316 = v312(v313, v314)

        if v314 == nil then
            break
        end
        if v316 ~= _LocalPlayer8 and v316.Character then
            local v317, v318, v319 = ipairs(v316.Character:GetChildren())

            while true do
                local v320

                v319, v320 = v317(v318, v319)

                if v319 == nil then
                    break
                end
                if v320:IsA('BasePart') and v320.Transparency ~= 1 then
                    local v321, v322 = _CurrentCamera6:WorldToViewportPoint(v320.Position)
                    local _Magnitude = (Vector2.new(v321.X, v321.Y) - _Circle2.Position).Magnitude

                    if v322 and _Magnitude < _huge then
                        if _Magnitude <= _Circle2.Radius then
                            v315 = v316
                            _huge = _Magnitude
                        end
                    end
                end
            end
        end
    end

    return v315
end

local u325 = nil

Elisium.Camlock.AutoUnlock = true

local u326 = nil

local function u327()
    if Elisium.Camlock.Enabled and Elisium.Camlock.AutoUnlock then
        u325 = nil

        Notify('Camlock: Auto-unlocked due to target KO or death', 5)
    end
end
local function u328()
    if u326 then
        u326:Disconnect()

        u326 = nil
    end
end
local function u331()
    if u325 and u325.Character then
        local _BodyEffects2 = u325.Character:FindFirstChild('BodyEffects')
        local u330 = _BodyEffects2 and _BodyEffects2:FindFirstChild('K.O')

        if u330 then
            u328()

            u326 = u330:GetPropertyChangedSignal('Value'):Connect(function()
                if u330.Value == true then
                    u327()
                end
            end)
        end
    end
end
local function u334(p332, p333)
    if getgenv().Elisium.Camlock.Notifications then
        game.StarterGui:SetCore('SendNotification', {
            Title = 'Elisium.lol',
            Text = p332,
            Duration = p333,
        })
    end
end
local function u337()
    if Elisium.Camlock.Enabled then
        if u325 then
            u334('Camlock: Unlocked!', 5)

            u325 = nil

            u328()
        else
            local v335 = u324()

            if v335 and v335.Character then
                local _Humanoid3 = v335.Character:FindFirstChildOfClass('Humanoid')

                if _Humanoid3 and _Humanoid3.Health > 0 then
                    u325 = v335

                    u334('Camlock: Locked onto ' .. tostring(u325.Name), 5)
                    u331()
                else
                    u334('Camlock: Target is not valid', 5)
                end
            else
                u334('Camlock: No target found', 5)
            end
        end
    else
        u334('Camlock not enabled', 5)
    end
end

local _UserInputService2 = game:GetService('UserInputService')

if Elisium.Camlock.Mode ~= 'Tool' then
    if Elisium.Camlock.Mode ~= 'Pc' then
        if Elisium.Camlock.Mode ~= 'Button' then
            if Elisium.Camlock.Mode == 'Controller' then
                _UserInputService2.InputBegan:Connect(function(p339, p340)
                    if not p340 and p339.KeyCode == Enum.KeyCode[Elisium.Camlock.ControllerKeybind] then
                        u337()
                    end
                end)
            end
        else
            local _LocalPlayer9 = game.Players.LocalPlayer
            local _PlayerGui5 = _LocalPlayer9:WaitForChild('PlayerGui')
            local u343 = UDim2.new(1, -100, 0, 20)

            local function u355()
                local _LockScreenGui = _PlayerGui5:FindFirstChild('LockScreenGui')

                if not _LockScreenGui then
                    _LockScreenGui = Instance.new('ScreenGui')
                    _LockScreenGui.Name = 'LockScreenGui'
                    _LockScreenGui.Parent = _PlayerGui5
                end
                if not _LockScreenGui:FindFirstChild('LockButton') then
                    local _ImageButton = Instance.new('ImageButton')

                    _ImageButton.Name = 'LockButton'
                    _ImageButton.Size = UDim2.new(0, 100, 0, 100)
                    _ImageButton.Position = u343
                    _ImageButton.Image = 'rbxassetid://98074175562146'
                    _ImageButton.ImageTransparency = 0
                    _ImageButton.BackgroundTransparency = 1
                    _ImageButton.Parent = _LockScreenGui
                    _ImageButton.Active = true
                    _ImageButton.Draggable = false

                    local _UICorner6 = Instance.new('UICorner')

                    _UICorner6.CornerRadius = UDim.new(0, 25)
                    _UICorner6.Parent = _ImageButton

                    _ImageButton.MouseButton1Click:Connect(function()
                        u337()
                    end)

                    local u347 = false
                    local u348 = nil
                    local u349 = nil
                    local u350 = nil

                    _ImageButton.InputBegan:Connect(function(p351)
                        if p351.UserInputType == Enum.UserInputType.MouseButton1 or p351.UserInputType == Enum.UserInputType.Touch then
                            u347 = true
                            u349 = p351.Position
                            u350 = _ImageButton.Position

                            p351.Changed:Connect(function()
                                if p351.UserInputState == Enum.UserInputState.End then
                                    u347 = false
                                end
                            end)
                        end
                    end)
                    _ImageButton.InputChanged:Connect(function(p352)
                        if p352.UserInputType == Enum.UserInputType.MouseMovement or p352.UserInputType == Enum.UserInputType.Touch then
                            u348 = p352
                        end
                    end)
                    _ImageButton.InputChanged:Connect(function(p353)
                        if p353 == u348 and u347 then
                            local v354 = p353.Position - u349

                            _ImageButton.Position = UDim2.new(u350.X.Scale, u350.X.Offset + v354.X, u350.Y.Scale, u350.Y.Offset + v354.Y)
                            u343 = _ImageButton.Position
                        end
                    end)
                end
            end

            u355()
            _LocalPlayer9.CharacterAdded:Connect(function()
                u355()
            end)
        end
    else
        v264.KeyDown:Connect(function(p356)
            if p356 == 'c' then
                u337()
            end
        end)
    end
else
    local _Tool2 = Instance.new('Tool')

    _Tool2.RequiresHandle = false
    _Tool2.Name = 'Lock Tool '
    _Tool2.Parent = _LocalPlayer8.Backpack

    _Tool2.Activated:Connect(u337)
end

_RunService6.RenderStepped:Connect(function() end)
_RunService6.RenderStepped:Connect(function(_)
    if u325 and u325.Character then
        local v358 = nil
        local v359 = Elisium.Camlock.TargetBodyParts:split(',')

        if Elisium.Camlock.UseClosestPart then
            local _huge2 = math.huge
            local v361, v362, v363 = pairs(u325.Character:GetChildren())

            while true do
                local v364

                v363, v364 = v361(v362, v363)

                if v363 == nil then
                    break
                end
                if v364:IsA('BasePart') then
                    local _Magnitude2 = (v364.Position - _CurrentCamera6.CFrame.Position).Magnitude

                    if _Magnitude2 < _huge2 then
                        v358 = v364
                        _huge2 = _Magnitude2
                    end
                end
            end
        elseif #v359 > 0 then
            local v366, v367, v368 = ipairs(v359)

            while true do
                local v369

                v368, v369 = v366(v367, v368)

                if v368 == nil then
                    break
                end

                local _ss = v369:match('^%s*(.-)%s*$')

                if u325.Character:FindFirstChild(_ss) then
                    v358 = u325.Character[_ss]

                    break
                end
            end
        end
        if v358 then
            local v371

            if u325.Character:FindFirstChild('HumanoidRootPart') then
                local _Humanoid4 = u325.Character:FindFirstChild('Humanoid')

                if _Humanoid4 and _Humanoid4:GetState() == Enum.HumanoidStateType.Physics then
                    v371 = v358.Position + v358.Velocity * Elisium.Camlock.AirPrediction
                else
                    v371 = v358.Position + v358.Velocity * Elisium.Camlock.Prediction
                end
            else
                v371 = v358.Position
            end

            local _Position6 = _CurrentCamera6.CFrame.Position
            local v374 = CFrame.new(_Position6, v371)
            local v375 = math.clamp(Elisium.Camlock.Smoothness, 0, 1)
            local v376 = math.clamp(Elisium.Camlock.AirSmoothness, 0, 1)

            _CurrentCamera6.CFrame = _CurrentCamera6.CFrame:Lerp(v374, v375 * v376)

            local v377, v378, v379

            if Elisium.Shake.Enabled then
                local _Intensity = Elisium.Shake.Intensity
                local v381 = 0.05

                v377 = math.random(-_Intensity, _Intensity) * v381
                v378 = math.random(-_Intensity, _Intensity) * v381
                v379 = math.random(-_Intensity, _Intensity) * v381
            else
                v377 = 0
                v378 = 0
                v379 = 0
            end

            _CurrentCamera6.CFrame = _CurrentCamera6.CFrame * CFrame.new(v377, v378, v379)
        end
    end
end)

if Elisium.Strafe.Enabled then
    local _Character8 = _LocalPlayer8.Character
    local _Position7 = u325.Character.HumanoidRootPart.Position
    local v384 = nil

    if Elisium.Strafe.Mode ~= 'Random' then
        if Elisium.Strafe.Mode == 'Strafe' then
            v384 = Vector3.new(math.cos(tick() * Elisium.Strafe.StrafeSpeed) * Elisium.Strafe.StrafeRadius, Elisium.Strafe.StrafeHeight, math.sin(tick() * Elisium.Strafe.StrafeSpeed) * Elisium.Strafe.StrafeRadius)
        end
    else
        if Elisium.Strafe and Elisium.Strafe.StrafeRadius then
            v384 = Vector3.new(math.random(-Elisium.Strafe.StrafeRadius, Elisium.Strafe.StrafeRadius), 0, math.random(-Elisium.Strafe.StrafeRadius, Elisium.Strafe.StrafeRadius))
        else
            v384 = Vector3.new(0, 0, 0)
        end

        math.random(0, Elisium.Strafe.StrafeHeight)
        math.random(-Elisium.Strafe.StrafeRadius, Elisium.Strafe.StrafeRadius)
    end

    local v385 = _Position7 + v384
    local v386 = Vector3.new(v385.X, math.max(v385.Y, _Position7.Y), v385.Z)

    _Character8:SetPrimaryPartCFrame(CFrame.new(v386))

    _LocalPlayer8.Character.HumanoidRootPart.CFrame = CFrame.new(_LocalPlayer8.Character.HumanoidRootPart.CFrame.Position, Vector3.new(_Position7.X, _LocalPlayer8.Character.HumanoidRootPart.CFrame.Position.Y, _Position7.Z))
end

_RunService6.RenderStepped:Connect(function(_)
    local v387 = Elisium.AutoAir.Enabled and (u325 and u325.Character) and (u325.Character:FindFirstChild('HumanoidRootPart') and u325.Character:FindFirstChild('Humanoid'))

    if v387 then
        local v388 = v387:GetState()
        local _Character9 = game.Players.LocalPlayer.Character

        if _Character9 then
            _Character9 = _Character9:FindFirstChildOfClass('Tool')
        end
        if (v388 == Enum.HumanoidStateType.Jumping or v388 == Enum.HumanoidStateType.Freefall) and (_Character9 and _Character9.Name ~= 'Lock Tool') then
            task.wait(Elisium.AutoAir.Delay)
            _Character9:Activate()
        end
    end
    if Elisium.Strafe.Mode == 'Random' then
        _RunService6.RenderStepped:Connect(function()
            if Elisium.Strafe.Enabled and (u325 and u325.Character) and u325.Character:FindFirstChild('HumanoidRootPart') then
                local _HumanoidRootPart4 = u325.Character.HumanoidRootPart
                local v391 = Vector3.new(math.random(-1, 1) * Elisium.Strafe.StrafeRadius, Elisium.Strafe.StrafeHeight, math.random(-1, 1) * Elisium.Strafe.StrafeRadius)

                _HumanoidRootPart4.CFrame = _HumanoidRootPart4.CFrame + v391
            end
        end)
    end
end)
_RunService6.Heartbeat:Connect(function(_)
    if Elisium.Camlock.Enabled and (Elisium.Strafe.Enabled and (Elisium.Strafe.Mode == 'CSync' and (u267 and (u268 and (u269 and u325))))) then
        local v392 = tick() * Elisium.Strafe.StrafeSpeed
        local v393 = Vector3.new(math.cos(v392) * Elisium.Strafe.StrafeRadius, Elisium.Strafe.StrafeHeight, math.sin(v392) * Elisium.Strafe.StrafeRadius)

        playerHumanoidRootPartCFrame = u269.CFrame
        u268.AutoRotate = true
        u269.CFrame = CFrame.new(u325.Character.HumanoidRootPart.Position + v393)
        u269.CFrame = CFrame.lookAt(u269.Position, Vector3.new(u325.Character.HumanoidRootPart.Position.X, u269.Position.Y, u325.Character.HumanoidRootPart.Position.Z))

        clonePlayerForVisualizer()

        if playerClone and playerClone:FindFirstChild('HumanoidRootPart') then
            playerClone.HumanoidRootPart.CFrame = CFrame.new(u325.Character.HumanoidRootPart.Position + v393)
            playerClone.HumanoidRootPart.CFrame = CFrame.lookAt(playerClone.HumanoidRootPart.Position, Vector3.new(u325.Character.HumanoidRootPart.Position.X, playerClone.HumanoidRootPart.Position.Y, u325.Character.HumanoidRootPart.Position.Z))
        end
        if Elisium.Strafe.Spoof then
            _RunService6.RenderStepped:Wait()

            u269.CFrame = playerHumanoidRootPartCFrame
            playerHumanoidRootPartCFrame = u269.CFrame
        end
    elseif playerClone then
        playerClone:Destroy()

        playerClone = nil
    end
end)

local u394 = nil

u394 = hookmetamethod(game, '__index', function(p395, p396)
    if Elisium.Strafe.Enabled and (Elisium.Strafe.Spoof and (not checkcaller() and (u325 and (u267 and (u269 and (p395 == u269 and p396 == 'CFrame')))))) then
        return playerHumanoidRootPartCFrame
    else
        return u394(p395, p396)
    end
end)

spawn(function()
    _RunService6.Heartbeat:Connect(function() end)
end)

if Elisium.Cframe.Enabled then
    local _Elisium = getgenv().Elisium
    local _UserInputService3 = game:GetService('UserInputService')
    local _RunService7 = game:GetService('RunService')
    local _LocalPlayer10 = game:GetService('Players').LocalPlayer
    local v401 = game.CoreGui:FindFirstChild('ElisiumUI') or Instance.new('ScreenGui', game.CoreGui)

    v401.Name = 'ElisiumUI'

    local _TextButton5 = Instance.new('TextButton', v401)

    _TextButton5.Name = 'CFrameToggleButton'
    _TextButton5.Size = _Elisium.Cframe.Button.Size
    _TextButton5.Position = _Elisium.Cframe.Button.Position
    _TextButton5.Text = 'Enable CFrame'
    _TextButton5.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    _TextButton5.TextColor3 = Color3.fromRGB(255, 255, 255)
    _TextButton5.Font = Enum.Font.GothamBold
    _TextButton5.TextSize = 16
    _TextButton5.BorderSizePixel = 0
    Instance.new('UICorner', _TextButton5).CornerRadius = UDim.new(0, 8)

    local _UIStroke3 = Instance.new('UIStroke', _TextButton5)

    _UIStroke3.Thickness = 2
    _UIStroke3.Color = Color3.fromRGB(85, 170, 255)

    local u404 = nil
    local u405 = nil
    local u406 = nil
    local u407 = nil

    local function u410(p408)
        local v409 = p408.Position - u406

        _TextButton5.Position = UDim2.new(u407.X.Scale, u407.X.Offset + v409.X, u407.Y.Scale, u407.Y.Offset + v409.Y)
    end

    _TextButton5.InputBegan:Connect(function(p411)
        if p411.UserInputType == Enum.UserInputType.MouseButton1 or p411.UserInputType == Enum.UserInputType.Touch then
            u404 = true
            u406 = p411.Position
            u407 = _TextButton5.Position

            p411.Changed:Connect(function()
                if p411.UserInputState == Enum.UserInputState.End then
                    u404 = false
                end
            end)
        end
    end)
    _TextButton5.InputChanged:Connect(function(p412)
        if p412.UserInputType == Enum.UserInputType.MouseMovement or p412.UserInputType == Enum.UserInputType.Touch then
            u405 = p412
        end
    end)
    _UserInputService3.InputChanged:Connect(function(p413)
        if p413 == u405 and u404 then
            u410(p413)
        end
    end)

    local function u414()
        if _Elisium.Cframe.Enabled then
            _TextButton5.Text = 'Disable CFrame'
            _TextButton5.BackgroundColor3 = Color3.fromRGB(85, 255, 127)
            _UIStroke3.Color = Color3.fromRGB(85, 255, 127)
        else
            _TextButton5.Text = 'Enable CFrame'
            _TextButton5.BackgroundColor3 = Color3.fromRGB(255, 85, 85)
            _UIStroke3.Color = Color3.fromRGB(255, 85, 85)
        end
    end

    _TextButton5.MouseButton1Click:Connect(function()
        _Elisium.Cframe.Enabled = not _Elisium.Cframe.Enabled

        u414()
        print(_Elisium.Cframe.Enabled and 'Enabled CFrame WalkSpeed' or 'Disabled CFrame WalkSpeed')
    end)
    _LocalPlayer10:GetMouse().KeyDown:Connect(function(p415)
        if p415 == string.lower(_Elisium.Cframe.Keybind) then
            _Elisium.Cframe.Enabled = not _Elisium.Cframe.Enabled

            u414()
            print(_Elisium.Cframe.Enabled and 'Enabled CFrame WalkSpeed' or 'Disabled CFrame WalkSpeed')
        end
    end)
    u414()
    _RunService7.Heartbeat:Connect(function()
        if _Elisium.Cframe.Enabled then
            local _Character10 = _LocalPlayer10.Character

            if _Character10 and (_Character10:FindFirstChild('HumanoidRootPart') and _Character10:FindFirstChild('Humanoid')) then
                _Character10.HumanoidRootPart.CFrame = _Character10.HumanoidRootPart.CFrame + _Character10.Humanoid.MoveDirection * _Elisium.Cframe.Speed
            end
        end
    end)
end
if Elisium.TargetAim.Enabled then
    local v417, v418, v419 = pairs(getconnections(_CurrentCamera6.Changed))

    while true do
        local v420

        v419, v420 = v417(v418, v419)

        if v419 == nil then
            break
        end

        v420:Disable()
    end

    local v421, v422, v423 = pairs(getconnections(_CurrentCamera6:GetPropertyChangedSignal('CFrame')))

    while true do
        local v424

        v423, v424 = v421(v422, v423)

        if v423 == nil then
            break
        end

        v424:Disable()
    end

    local _RunService8 = game:GetService('RunService')
    local _LocalPlayer11 = game.Players.LocalPlayer
    local v427 = _LocalPlayer11
    local v428 = _LocalPlayer11.GetMouse(v427)
    local _AimMode = getgenv().Elisium.AimMode
    local u430 = {}
    local _ = game.Players.LocalPlayer

    local function u431()
        return (tonumber(Elisium.TargetAim.Accuracy) or 100) >= math.random(0, 100)
    end
    local function u440(p432)
        if p432 and p432.Character then
            local _huge3 = math.huge
            local v434, v435, v436 = pairs(p432.Character:GetChildren())
            local v437 = nil

            while true do
                local v438

                v436, v438 = v434(v435, v436)

                if v436 == nil then
                    break
                end
                if IndexIsA(v438, 'BasePart') and v438.Name ~= 'HumanoidRootPart' then
                    local _Magnitude3 = (v438.Position - _LocalPlayer11.Character.HumanoidRootPart.Position).Magnitude

                    if _Magnitude3 < _huge3 then
                        v437 = v438
                        _huge3 = _Magnitude3
                    end
                end
            end

            return v437
        end
    end

    local u441 = 1

    local function u444()
        local v442 = Elisium.TargetAim.Parts or {
            'Head',
            'UpperTorso',
        }

        if u441 > #v442 then
            u441 = 1
        end

        local v443 = v442[u441]

        u441 = u441 + 1

        return v443
    end
    local function u447(p445)
        if p445 and (p445.Character and p445.Character.Humanoid) and (p445.Character.Humanoid.FloorMaterial == nil and Elisium.TargetAim.AirPart) then
            return Elisium.TargetAim.AirPart
        end
        if Elisium.TargetAim.AimAtMultipleParts then
            return u444()
        end
        if not Elisium.TargetAim.UseNearestPart then
            return Elisium.TargetAim.BodyPartToAimAt
        end

        local v446 = u440(p445)

        return v446 and v446.Name or Elisium.TargetAim.BodyPartToAimAt
    end
    local function u453(p448, p449)
        local v450 = p448.Character:FindFirstChild(p449)

        if v450 then
            local _Prediction = Elisium.TargetAim.Prediction
            local v452 = Vector3.new(0, 0, 0)

            if p448.Character.Humanoid.FloorMaterial ~= nil then
                if p448.Character.Humanoid.FloorMaterial then
                    v452 = Vector3.new(0, Elisium.TargetOffsets.Fall or 0, 0)
                end
            else
                _Prediction = Elisium.TargetAim.AirPrediction
                v452 = Vector3.new(0, Elisium.TargetOffsets.Jump or 0, 0)
            end

            return v450.Position + v450.Velocity * _Prediction + v452
        end
    end

    u430[1] = hookmetamethod(v428, '__index', newcclosure(function(p454, p455)
        if p455 == 'Hit' and (Elisium.TargetAim.Enabled and (u325 and (u325.Character and u431()))) then
            local v456 = u447(u325)

            if v456 and u325.Character[v456] then
                local v457 = u453(u325, v456)

                return CFrame.new(v457)
            end
        end

        return u430[1](p454, p455)
    end))

    local u458 = nil
    local _zero = Vector3.zero

    _RunService8.PostSimulation:Connect(function()
        if u325 and u325.Character then
            u458 = u447(u325)
            _zero = u453(u325, u458)
        end
    end)

    local v460 = getrawmetatable(game)
    local ___namecall = v460.__namecall

    setreadonly(v460, false)

    v460.__namecall = newcclosure(function(p462, ...)
        local v463 = {...}
        local v464 = getnamecallmethod()
        local v465 = tonumber(Elisium.TargetAim.Accuracy) or 100

        if not checkcaller() and (v464 == 'FireServer' and (Elisium.TargetAim.Enabled and (_AimMode == 'DH' and math.random(0, 100) <= v465))) then
            local v466, v467, v468 = ipairs(v463)

            while true do
                local v469

                v468, v469 = v466(v467, v468)

                if v468 == nil then
                    break
                end
                if typeof(v469) == 'Vector3' and (u325 and (u325.Character and (u458 and u325.Character[u458]))) then
                    v463[v468] = _zero

                    return ___namecall(p462, unpack(v463))
                end
            end
        end

        return ___namecall(p462, ...)
    end)

    setreadonly(v460, true)
    _RunService8.PostSimulation:Connect(function(_)
        local _Framework = _LocalPlayer11.PlayerGui:WaitForChild('Framework', 1000000000)

        if _Framework then
            local v471 = getsenv(_Framework)

            if v471._G and (v471._G.MOUSE_POSITION and (u325 and (u325.Character and (u325.Character.Humanoid and (u325.Character.Humanoid.RootPart and u431()))))) then
                local v472 = u447(u325)

                if v472 and u325.Character[v472] then
                    local v473 = u453(u325, v472)

                    v471._G.MOUSE_POSITION = v473
                end
            end
        end
    end)
end

_RunService6.Heartbeat:Connect(function(_)
    if Elisium.DynamicPrediction.Enabled and Elisium.DynamicPrediction.Mode == 'Ping' then
        local v474 = game:GetService('Stats').Network.ServerStatsItem['Data Ping']:GetValueString()
        local v475 = tonumber((v474:match('%d+')))

        if v475 then
            if v475 > 225 then
                Elisium.Camlock.prediction = 0.166547
            elseif v475 > 215 then
                Elisium.Camlock.prediction = 0.15692
            elseif v475 > 205 then
                Elisium.Camlock.prediction = 0.165732
            elseif v475 > 190 then
                Elisium.Camlock.prediction = 0.169
            elseif v475 > 185 then
                Elisium.Camlock.prediction = 0.1235666
            elseif v475 > 180 then
                Elisium.Camlock.prediction = 0.16779123
            elseif v475 > 175 then
                Elisium.Camlock.prediction = 0.165455312399999
            elseif v475 > 170 then
                Elisium.Camlock.prediction = 0.16
            elseif v475 > 165 then
                Elisium.Camlock.prediction = 0.15
            elseif v475 > 160 then
                Elisium.Camlock.prediction = 0.1223333
            elseif v475 > 155 then
                Elisium.Camlock.prediction = 0.125333
            elseif v475 > 150 then
                Elisium.Camlock.prediction = 0.1652131
            elseif v475 > 145 then
                Elisium.Camlock.prediction = 0.129934
            elseif v475 > 140 then
                Elisium.Camlock.prediction = 0.1659921
            elseif v475 > 135 then
                Elisium.Camlock.prediction = 0.1659921
            elseif v475 > 130 then
                Elisium.Camlock.prediction = 0.12399
            elseif v475 > 125 then
                Elisium.Camlock.prediction = 0.15465
            elseif v475 > 110 then
                Elisium.Camlock.prediction = 0.142199
            elseif v475 > 105 then
                Elisium.Camlock.prediction = 0.141199
            elseif v475 > 100 then
                Elisium.Camlock.prediction = 0.134143
            elseif v475 > 90 then
                Elisium.Camlock.prediction = 0.1433333333392
            elseif v475 > 80 then
                Elisium.Camlock.prediction = 0.1332241241231
            elseif v475 > 70 then
                Elisium.Camlock.prediction = 0.1513989
            elseif v475 > 60 then
                Elisium.Camlock.prediction = 0.133
            elseif v475 > 50 then
                Elisium.Camlock.prediction = 0.12118333
            elseif v475 > 40 then
                Elisium.Camlock.prediction = 0.12588244444444
            elseif v475 > 35 then
                Elisium.Camlock.prediction = 0.12565
            elseif v475 > 30 then
                Elisium.Camlock.prediction = 0.1419283
            elseif v475 > 25 then
                Elisium.Camlock.prediction = 0.12948111
            elseif v475 > 20 then
                Elisium.Camlock.prediction = 0.1211928
            end
        end
    end
end)
_RunService6.Heartbeat:Connect(function(_)
    if Elisium.DynamicPrediction.Enabled and Elisium.DynamicPrediction.Mode == 'Advanced' then
        local v476 = game:GetService('Stats').Network.ServerStatsItem['Data Ping']:GetValueString()
        local v477 = tonumber(v476:match('%d+'))

        if u325 and u325.Character and u325.Character:FindFirstChild('HumanoidRootPart') then
            local _HumanoidRootPart5 = u325.Character.HumanoidRootPart
            local _Velocity2 = _HumanoidRootPart5.Velocity
            local _Position8 = _HumanoidRootPart5.Position
            local _magnitude = (_Position8 - _CurrentCamera6.CFrame.Position).magnitude
            local v482 = math.clamp(_magnitude / 1000, 0, 0.5)
            local v483 = math.random() * 0.1 - 0.05
            local v484 = Ray.new(_CurrentCamera6.CFrame.Position, (_Position8 - _CurrentCamera6.CFrame.Position).unit * _magnitude)
            local v485, _ = workspace:FindPartOnRay(v484, _CurrentCamera6.Parent)
            local v486 = v485 and v485.Transparency < 0.5 and 0.1 or 0

            if v477 and 0 < v477 then
                local v487 = math.clamp(v477 / 1000, 0, 0.3)
                local v488 = _Velocity2.magnitude / 500
                local v489 = v487 + v482 + v488 + v483 + v486

                Elisium.Camlock.Prediction = v489
                Elisium.TargetAim.Prediction = v489
            end
        end
    end
end)

if Elisium.LegitMacro.Enabled then
    if not Game:IsLoaded() then
        Game.Loaded:Wait()
    end

    local _Players5 = Game:GetService('Players')
    local _RunService9 = Game:GetService('RunService')

    Game:GetService('UserInputService')

    local _LocalPlayer12 = _Players5.LocalPlayer
    local u493 = _LocalPlayer12.Character or _LocalPlayer12.CharacterAdded:Wait()
    local _HumanoidRootPart6 = u493:FindFirstChild('HumanoidRootPart')
    local _Humanoid5 = u493:FindFirstChildOfClass('Humanoid')
    local _CurrentCamera7 = workspace.CurrentCamera
    local v497 = _LocalPlayer12:FindFirstChild('PlayerGui') or _LocalPlayer12:WaitForChild('PlayerGui')
    local u498 = {
        Functions = {},
        Settings = {
            Marco = {
                Enabled = false,
                Connection = nil,
                Delay = 0.02,
            },
        },
    }

    _LocalPlayer12.CharacterAdded:Connect(function(p499)
        u493 = p499
        _Humanoid5 = u493:FindFirstChildOfClass('Humanoid') or u493:WaitForChild('Humanoid')
        _HumanoidRootPart6 = u493:WaitForChild('HumanoidRootPart')
    end)

    function u498.Functions.EnableShiftlock()
        if u493 and (_Humanoid5 and _HumanoidRootPart6) then
            _Humanoid5.AutoRotate = false
            _HumanoidRootPart6.CFrame = CFrame.new(_HumanoidRootPart6.Position, Vector3.new(_CurrentCamera7.CFrame.LookVector.X * 100000000000, _HumanoidRootPart6.Position.Y, _CurrentCamera7.CFrame.LookVector.Z * 100000000000))
        end
    end
    function u498.Functions.DisableShiftlock()
        if u493 and (_Humanoid5 and _HumanoidRootPart6) then
            _Humanoid5.AutoRotate = true
        end
        if u498.Settings.Marco.Connection then
            u498.Settings.Marco.Connection:Disconnect()

            u498.Settings.Marco.Connection = nil
        end
    end

    local _ScreenGui6 = Instance.new('ScreenGui')

    _ScreenGui6.Parent = v497
    _ScreenGui6.Name = 'Marco UI'
    _ScreenGui6.Enabled = true
    _ScreenGui6.ResetOnSpawn = false
    _ScreenGui6.DisplayOrder = math.huge
    _ScreenGui6.IgnoreGuiInset = false
    _ScreenGui6.AutoLocalize = true
    _ScreenGui6.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    _ScreenGui6.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
    _ScreenGui6.RootLocalizationTable = nil

    local _Frame4 = Instance.new('Frame')

    _Frame4.Parent = _ScreenGui6
    _Frame4.Name = 'Container'
    _Frame4.Position = UDim2.new(0.5, 0, 0.5, 0)
    _Frame4.Size = UDim2.new(0, 120, 0, 40)
    _Frame4.AnchorPoint = Vector2.new(0.5, 0.5)
    _Frame4.BackgroundTransparency = 1
    _Frame4.BorderSizePixel = 0
    _Frame4.Active = true
    _Frame4.Draggable = true
    _Frame4.Visible = true
    _Frame4.ZIndex = math.huge

    local _TextButton6 = Instance.new('TextButton')

    _TextButton6.Parent = _Frame4
    _TextButton6.Name = 'Marco Button'
    _TextButton6.Text = 'Macro'
    _TextButton6.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    _TextButton6.BackgroundTransparency = 0.3
    _TextButton6.Size = UDim2.new(0, 120, 0, 40)
    _TextButton6.AnchorPoint = Vector2.new(0.5, 0.5)
    _TextButton6.Position = UDim2.new(0.5, 0, 0.5, 0)
    _TextButton6.Font = Enum.Font.GothamBold
    _TextButton6.TextColor3 = Color3.fromRGB(255, 255, 255)
    _TextButton6.TextScaled = true
    _TextButton6.TextSize = 20
    _TextButton6.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    _TextButton6.TextStrokeTransparency = 0.7
    _TextButton6.Active = false
    _TextButton6.Archivable = true
    _TextButton6.AutoLocalize = true
    _TextButton6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    _TextButton6.BorderMode = Enum.BorderMode.Outline
    _TextButton6.BorderSizePixel = 2
    _TextButton6.ClipsDescendants = false
    _TextButton6.LayoutOrder = 0
    _TextButton6.Modal = false
    _TextButton6.RichText = false
    _TextButton6.Rotation = 0
    _TextButton6.Selectable = true
    _TextButton6.Selected = false
    _TextButton6.SizeConstraint = Enum.SizeConstraint.RelativeXY
    _TextButton6.Style = Enum.ButtonStyle.Custom
    _TextButton6.TextStrokeTransparency = 1
    _TextButton6.TextTransparency = 0
    _TextButton6.TextTruncate = Enum.TextTruncate.None
    _TextButton6.TextWrapped = false
    _TextButton6.Visible = true
    _TextButton6.ZIndex = math.huge
    _TextButton6.AutoButtonColor = false

    local _UICorner7 = Instance.new('UICorner')

    _UICorner7.Parent = _TextButton6
    _UICorner7.Name = 'UICorner'
    _UICorner7.CornerRadius = UDim.new(0.25, 0)
    _UICorner7.Archivable = true

    local _UITextSizeConstraint = Instance.new('UITextSizeConstraint')

    _UITextSizeConstraint.Parent = _TextButton6
    _UITextSizeConstraint.Name = 'UITextSizeConstraint'
    _UITextSizeConstraint.MaxTextSize = 50
    _UITextSizeConstraint.MinTextSize = 10
    _UITextSizeConstraint.Archivable = true

    _TextButton6.MouseEnter:Connect(function()
        _TextButton6.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
        _TextButton6.TextStrokeTransparency = 0.5
    end)
    _TextButton6.MouseLeave:Connect(function()
        _TextButton6.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        _TextButton6.TextStrokeTransparency = 0.7
    end)
    _TextButton6.MouseButton1Click:Connect(function()
        u498.Settings.Marco.Enabled = not u498.Settings.Marco.Enabled

        if not (u498.Settings.Marco.Enabled or u498.Settings.Marco.Enabled) then
            u498.Functions.DisableShiftlock()
        end
    end)

    local u505 = 0

    _RunService9.RenderStepped:Connect(function(p506)
        u505 = u505 + p506

        if u505 >= u498.Settings.Marco.Delay then
            if u498.Settings.Marco.Enabled then
                if u498.Settings.Marco.Connection then
                    if u498.Settings.Marco.Connection then
                        u498.Functions.DisableShiftlock()
                    end
                else
                    u498.Settings.Marco.Connection = _RunService9.RenderStepped:Connect(function()
                        u498.Functions.EnableShiftlock()
                    end)
                end
            end

            u505 = 0
        end
    end)
end
if Elisium.ESP.Toggle then
    local v507 = cloneref(game:GetService('Workspace'))
    local v508 = cloneref(game:GetService('RunService'))
    local v509 = cloneref(game:GetService('Players'))
    local _CoreGui = game:GetService('CoreGui')

    cloneref(game:GetService('Lighting'))

    local u511 = {
        Enabled = true,
        TeamCheck = true,
        MaxDistance = 200,
        FontSize = 11,
        FadeOut = {
            OnDistance = true,
            OnDeath = false,
            OnLeave = false,
        },
        Options = {
            Teamcheck = false,
            TeamcheckRGB = Color3.fromRGB(0, 255, 0),
            Friendcheck = true,
            FriendcheckRGB = Color3.fromRGB(0, 255, 0),
            Highlight = false,
            HighlightRGB = Color3.fromRGB(255, 0, 0),
        },
        Drawing = {
            Chams = {
                Enabled = true,
                Thermal = true,
                FillRGB = Color3.fromRGB(119, 120, 255),
                Fill_Transparency = 100,
                OutlineRGB = Color3.fromRGB(119, 120, 255),
                Outline_Transparency = 100,
                VisibleCheck = true,
            },
            Names = {
                Enabled = true,
                RGB = Color3.fromRGB(255, 255, 255),
            },
            Flags = {Enabled = true},
            Distances = {
                Enabled = true,
                Position = 'Text',
                RGB = Color3.fromRGB(255, 255, 255),
            },
            Weapons = {
                Enabled = true,
                WeaponTextRGB = Color3.fromRGB(119, 120, 255),
                Outlined = false,
                Gradient = false,
                GradientRGB1 = Color3.fromRGB(255, 255, 255),
                GradientRGB2 = Color3.fromRGB(119, 120, 255),
            },
            Healthbar = {
                Enabled = true,
                HealthText = true,
                Lerp = false,
                HealthTextRGB = Color3.fromRGB(119, 120, 255),
                Width = 2.5,
                Gradient = true,
                GradientRGB1 = Color3.fromRGB(200, 0, 0),
                GradientRGB2 = Color3.fromRGB(60, 60, 125),
                GradientRGB3 = Color3.fromRGB(119, 120, 255),
            },
            Boxes = {
                Animate = true,
                RotationSpeed = 300,
                Gradient = false,
                GradientRGB1 = Color3.fromRGB(119, 120, 255),
                GradientRGB2 = Color3.fromRGB(0, 0, 0),
                GradientFill = true,
                GradientFillRGB1 = Color3.fromRGB(119, 120, 255),
                GradientFillRGB2 = Color3.fromRGB(0, 0, 0),
                Filled = {
                    Enabled = true,
                    Transparency = 0.75,
                    RGB = Color3.fromRGB(0, 0, 0),
                },
                Full = {
                    Enabled = true,
                    RGB = Color3.fromRGB(255, 255, 255),
                },
                Corner = {
                    Enabled = true,
                    RGB = Color3.fromRGB(255, 255, 255),
                },
            },
        },
        Connections = {RunService = v508},
        Fonts = {},
    }
    local _Connections = u511.Connections
    local _LocalPlayer13 = v509.LocalPlayer
    local _ = game.Workspace.CurrentCamera
    local _CurrentCamera8 = v507.CurrentCamera
    local u515 = -45
    local u516 = tick()
    local u526 = {
        Create = function(_, p517, p518)
            if typeof(p517) == 'string' then
                p517 = Instance.new(p517) or p517
            end

            local v519, v520, v521 = pairs(p518)

            while true do
                local v522

                v521, v522 = v519(v520, v521)

                if v521 == nil then
                    break
                end

                p517[v521] = v522
            end

            return p517
        end,
        FadeOutOnDist = function(_, p523, p524)
            local v525 = math.max(0.1, 1 - p524 / u511.MaxDistance)

            if p523:IsA('TextLabel') then
                p523.TextTransparency = 1 - v525
            elseif p523:IsA('ImageLabel') then
                p523.ImageTransparency = 1 - v525
            elseif p523:IsA('UIStroke') then
                p523.Transparency = 1 - v525
            elseif p523:IsA('Frame') and (p523 == Healthbar or p523 == BehindHealthbar) then
                p523.BackgroundTransparency = 1 - v525
            elseif p523:IsA('Frame') then
                p523.BackgroundTransparency = 1 - v525
            elseif p523:IsA('Highlight') then
                p523.FillTransparency = 1 - v525
                p523.OutlineTransparency = 1 - v525
            end
        end,
    }
    local v527 = u526
    local u528 = u526.Create(v527, 'ScreenGui', {
        Parent = _CoreGui,
        Name = 'ESPHolder',
    })

    local function u530(p529)
        if u528:FindFirstChild(p529.Name) then
            u528[p529.Name]:Destroy()
        end
    end
    local function u568(p531)
        coroutine.wrap(u530)(p531)

        local _TextLabel2 = u526:Create('TextLabel', {
            Parent = u528,
            Position = UDim2.new(0.5, 0, 0, -11),
            Size = UDim2.new(0, 100, 0, 20),
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundTransparency = 1,
            TextColor3 = Color3.fromRGB(255, 255, 255),
            Font = Enum.Font.Code,
            TextSize = u511.FontSize,
            TextStrokeTransparency = 0,
            TextStrokeColor3 = Color3.fromRGB(0, 0, 0),
            RichText = true,
        })
        local _TextLabel3 = u526:Create('TextLabel', {
            Parent = u528,
            Position = UDim2.new(0.5, 0, 0, 11),
            Size = UDim2.new(0, 100, 0, 20),
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundTransparency = 1,
            TextColor3 = Color3.fromRGB(255, 255, 255),
            Font = Enum.Font.Code,
            TextSize = u511.FontSize,
            TextStrokeTransparency = 0,
            TextStrokeColor3 = Color3.fromRGB(0, 0, 0),
            RichText = true,
        })
        local _TextLabel4 = u526:Create('TextLabel', {
            Parent = u528,
            Position = UDim2.new(0.5, 0, 0, 31),
            Size = UDim2.new(0, 100, 0, 20),
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundTransparency = 1,
            TextColor3 = Color3.fromRGB(255, 255, 255),
            Font = Enum.Font.Code,
            TextSize = u511.FontSize,
            TextStrokeTransparency = 0,
            TextStrokeColor3 = Color3.fromRGB(0, 0, 0),
            RichText = true,
        })
        local _Frame5 = u526:Create('Frame', {
            Parent = u528,
            BackgroundColor3 = Color3.fromRGB(0, 0, 0),
            BackgroundTransparency = 0.75,
            BorderSizePixel = 0,
        })
        local _UIGradient2 = u526:Create('UIGradient', {
            Parent = _Frame5,
            Enabled = u511.Drawing.Boxes.GradientFill,
            Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, u511.Drawing.Boxes.GradientFillRGB1),
                ColorSequenceKeypoint.new(1, u511.Drawing.Boxes.GradientFillRGB2),
            }),
        })
        local _UIStroke4 = u526:Create('UIStroke', {
            Parent = _Frame5,
            Enabled = u511.Drawing.Boxes.Gradient,
            Transparency = 0,
            Color = Color3.fromRGB(255, 255, 255),
            LineJoinMode = Enum.LineJoinMode.Miter,
        })
        local _UIGradient3 = u526:Create('UIGradient', {
            Parent = _UIStroke4,
            Enabled = u511.Drawing.Boxes.Gradient,
            Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, u511.Drawing.Boxes.GradientRGB1),
                ColorSequenceKeypoint.new(1, u511.Drawing.Boxes.GradientRGB2),
            }),
        })
        local _Frame6 = u526:Create('Frame', {
            Parent = u528,
            BackgroundColor3 = Color3.fromRGB(255, 255, 255),
            BackgroundTransparency = 0,
        })
        local _Frame7 = u526:Create('Frame', {
            Parent = u528,
            ZIndex = -1,
            BackgroundColor3 = Color3.fromRGB(0, 0, 0),
            BackgroundTransparency = 0,
        })

        u526:Create('UIGradient', {
            Parent = _Frame6,
            Enabled = u511.Drawing.Healthbar.Gradient,
            Rotation = -90,
            Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, u511.Drawing.Healthbar.GradientRGB1),
                ColorSequenceKeypoint.new(0.5, u511.Drawing.Healthbar.GradientRGB2),
                ColorSequenceKeypoint.new(1, u511.Drawing.Healthbar.GradientRGB3),
            }),
        })

        local _TextLabel5 = u526:Create('TextLabel', {
            Parent = u528,
            Position = UDim2.new(0.5, 0, 0, 31),
            Size = UDim2.new(0, 100, 0, 20),
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundTransparency = 1,
            TextColor3 = Color3.fromRGB(255, 255, 255),
            Font = Enum.Font.Code,
            TextSize = u511.FontSize,
            TextStrokeTransparency = 0,
            TextStrokeColor3 = Color3.fromRGB(0, 0, 0),
        })
        local _Highlight = u526:Create('Highlight', {
            Parent = u528,
            FillTransparency = 1,
            OutlineTransparency = 0,
            OutlineColor = Color3.fromRGB(119, 120, 255),
            DepthMode = 'AlwaysOnTop',
        })
        local _ImageLabel2 = u526:Create('ImageLabel', {
            Parent = u528,
            BackgroundTransparency = 1,
            BorderColor3 = Color3.fromRGB(0, 0, 0),
            BorderSizePixel = 0,
            Size = UDim2.new(0, 40, 0, 40),
        })

        u526:Create('UIGradient', {
            Parent = _ImageLabel2,
            Rotation = -90,
            Enabled = u511.Drawing.Weapons.Gradient,
            Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, u511.Drawing.Weapons.GradientRGB1),
                ColorSequenceKeypoint.new(1, u511.Drawing.Weapons.GradientRGB2),
            }),
        })

        local _Frame8 = u526:Create('Frame', {
            Parent = u528,
            BackgroundColor3 = u511.Drawing.Boxes.Corner.RGB,
            Position = UDim2.new(0, 0, 0, 0),
        })
        local _Frame9 = u526:Create('Frame', {
            Parent = u528,
            BackgroundColor3 = u511.Drawing.Boxes.Corner.RGB,
            Position = UDim2.new(0, 0, 0, 0),
        })
        local _Frame10 = u526:Create('Frame', {
            Parent = u528,
            BackgroundColor3 = u511.Drawing.Boxes.Corner.RGB,
            Position = UDim2.new(0, 0, 0, 0),
        })
        local _Frame11 = u526:Create('Frame', {
            Parent = u528,
            BackgroundColor3 = u511.Drawing.Boxes.Corner.RGB,
            Position = UDim2.new(0, 0, 0, 0),
        })
        local _Frame12 = u526:Create('Frame', {
            Parent = u528,
            BackgroundColor3 = u511.Drawing.Boxes.Corner.RGB,
            Position = UDim2.new(0, 0, 0, 0),
        })
        local _Frame13 = u526:Create('Frame', {
            Parent = u528,
            BackgroundColor3 = u511.Drawing.Boxes.Corner.RGB,
            Position = UDim2.new(0, 0, 0, 0),
        })
        local _Frame14 = u526:Create('Frame', {
            Parent = u528,
            BackgroundColor3 = u511.Drawing.Boxes.Corner.RGB,
            Position = UDim2.new(0, 0, 0, 0),
        })
        local _Frame15 = u526:Create('Frame', {
            Parent = u528,
            BackgroundColor3 = u511.Drawing.Boxes.Corner.RGB,
            Position = UDim2.new(0, 0, 0, 0),
        })
        local _TextLabel6 = u526:Create('TextLabel', {
            Parent = u528,
            Position = UDim2.new(1, 0, 0, 0),
            Size = UDim2.new(0, 100, 0, 20),
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundTransparency = 1,
            TextColor3 = Color3.fromRGB(255, 255, 255),
            Font = Enum.Font.Code,
            TextSize = u511.FontSize,
            TextStrokeTransparency = 0,
            TextStrokeColor3 = Color3.fromRGB(0, 0, 0),
        })
        local _TextLabel7 = u526:Create('TextLabel', {
            Parent = u528,
            Position = UDim2.new(1, 0, 0, 0),
            Size = UDim2.new(0, 100, 0, 20),
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundTransparency = 1,
            TextColor3 = Color3.fromRGB(255, 255, 255),
            Font = Enum.Font.Code,
            TextSize = u511.FontSize,
            TextStrokeTransparency = 0,
            TextStrokeColor3 = Color3.fromRGB(0, 0, 0),
        })

        local function v567()
            local u554 = nil

            local function u555()
                _Frame5.Visible = false
                _TextLabel2.Visible = false
                _TextLabel3.Visible = false
                _TextLabel4.Visible = false
                _Frame6.Visible = false
                _Frame7.Visible = false
                _TextLabel5.Visible = false
                _ImageLabel2.Visible = false
                _Frame8.Visible = false
                _Frame9.Visible = false
                _Frame12.Visible = false
                _Frame13.Visible = false
                _Frame10.Visible = false
                _Frame11.Visible = false
                _Frame14.Visible = false
                _Frame15.Visible = false
                _TextLabel6.Visible = false
                _Highlight.Enabled = false
                _TextLabel7.Visible = false

                if not p531 then
                    u528:Destroy()
                    u554:Disconnect()
                end
            end

            local _ = _Connections.RunService.RenderStepped:Connect(function()
                if p531.Character and p531.Character:FindFirstChild('HumanoidRootPart') then
                    local _HumanoidRootPart7 = p531.Character.HumanoidRootPart
                    local _Humanoid6 = p531.Character:WaitForChild('Humanoid')
                    local v558, v559 = _CurrentCamera8:WorldToScreenPoint(_HumanoidRootPart7.Position)
                    local v560 = (_CurrentCamera8.CFrame.Position - _HumanoidRootPart7.Position).Magnitude / 3.5714285714

                    if v559 and v560 <= u511.MaxDistance then
                        local v561 = _HumanoidRootPart7.Size.Y * _CurrentCamera8.ViewportSize.Y / (v558.Z * 2)
                        local v562 = 3 * v561
                        local v563 = 4.5 * v561

                        if u511.FadeOut.OnDistance then
                            u526:FadeOutOnDist(_Frame5, v560)
                            u526:FadeOutOnDist(_UIStroke4, v560)
                            u526:FadeOutOnDist(_TextLabel2, v560)
                            u526:FadeOutOnDist(_TextLabel3, v560)
                            u526:FadeOutOnDist(_TextLabel4, v560)
                            u526:FadeOutOnDist(_Frame6, v560)
                            u526:FadeOutOnDist(_Frame7, v560)
                            u526:FadeOutOnDist(_TextLabel5, v560)
                            u526:FadeOutOnDist(_ImageLabel2, v560)
                            u526:FadeOutOnDist(_Frame8, v560)
                            u526:FadeOutOnDist(_Frame9, v560)
                            u526:FadeOutOnDist(_Frame12, v560)
                            u526:FadeOutOnDist(_Frame13, v560)
                            u526:FadeOutOnDist(_Frame10, v560)
                            u526:FadeOutOnDist(_Frame11, v560)
                            u526:FadeOutOnDist(_Frame14, v560)
                            u526:FadeOutOnDist(_Frame15, v560)
                            u526:FadeOutOnDist(_Highlight, v560)
                            u526:FadeOutOnDist(_TextLabel6, v560)
                            u526:FadeOutOnDist(_TextLabel7, v560)
                        end
                        if u511.TeamCheck and p531 ~= _LocalPlayer13 and (_LocalPlayer13.Team ~= p531.Team and p531.Team or not (_LocalPlayer13.Team or p531.Team)) and p531.Character and (p531.Character:FindFirstChild('HumanoidRootPart') and p531.Character:FindFirstChild('Humanoid')) then
                            _Highlight.Adornee = p531.Character
                            _Highlight.Enabled = u511.Drawing.Chams.Enabled
                            _Highlight.FillColor = u511.Drawing.Chams.FillRGB
                            _Highlight.OutlineColor = u511.Drawing.Chams.OutlineRGB

                            if u511.Drawing.Chams.Thermal then
                                local v564 = math.atan(math.sin(tick() * 2)) * 2 / math.pi

                                _Highlight.FillTransparency = u511.Drawing.Chams.Fill_Transparency * v564 * 0.01
                                _Highlight.OutlineTransparency = u511.Drawing.Chams.Outline_Transparency * v564 * 0.01
                            end
                            if u511.Drawing.Chams.VisibleCheck then
                                _Highlight.DepthMode = 'Occluded'
                            else
                                _Highlight.DepthMode = 'AlwaysOnTop'
                            end

                            _Frame8.Visible = u511.Drawing.Boxes.Corner.Enabled
                            _Frame8.Position = UDim2.new(0, v558.X - v562 / 2, 0, v558.Y - v563 / 2)
                            _Frame8.Size = UDim2.new(0, v562 / 5, 0, 1)
                            _Frame9.Visible = u511.Drawing.Boxes.Corner.Enabled
                            _Frame9.Position = UDim2.new(0, v558.X - v562 / 2, 0, v558.Y - v563 / 2)
                            _Frame9.Size = UDim2.new(0, 1, 0, v563 / 5)
                            _Frame12.Visible = u511.Drawing.Boxes.Corner.Enabled
                            _Frame12.Position = UDim2.new(0, v558.X - v562 / 2, 0, v558.Y + v563 / 2)
                            _Frame12.Size = UDim2.new(0, 1, 0, v563 / 5)
                            _Frame12.AnchorPoint = Vector2.new(0, 5)
                            _Frame13.Visible = u511.Drawing.Boxes.Corner.Enabled
                            _Frame13.Position = UDim2.new(0, v558.X - v562 / 2, 0, v558.Y + v563 / 2)
                            _Frame13.Size = UDim2.new(0, v562 / 5, 0, 1)
                            _Frame13.AnchorPoint = Vector2.new(0, 1)
                            _Frame10.Visible = u511.Drawing.Boxes.Corner.Enabled
                            _Frame10.Position = UDim2.new(0, v558.X + v562 / 2, 0, v558.Y - v563 / 2)
                            _Frame10.Size = UDim2.new(0, v562 / 5, 0, 1)
                            _Frame10.AnchorPoint = Vector2.new(1, 0)
                            _Frame11.Visible = u511.Drawing.Boxes.Corner.Enabled
                            _Frame11.Position = UDim2.new(0, v558.X + v562 / 2 - 1, 0, v558.Y - v563 / 2)
                            _Frame11.Size = UDim2.new(0, 1, 0, v563 / 5)
                            _Frame11.AnchorPoint = Vector2.new(0, 0)
                            _Frame14.Visible = u511.Drawing.Boxes.Corner.Enabled
                            _Frame14.Position = UDim2.new(0, v558.X + v562 / 2, 0, v558.Y + v563 / 2)
                            _Frame14.Size = UDim2.new(0, 1, 0, v563 / 5)
                            _Frame14.AnchorPoint = Vector2.new(1, 1)
                            _Frame15.Visible = u511.Drawing.Boxes.Corner.Enabled
                            _Frame15.Position = UDim2.new(0, v558.X + v562 / 2, 0, v558.Y + v563 / 2)
                            _Frame15.Size = UDim2.new(0, v562 / 5, 0, 1)
                            _Frame15.AnchorPoint = Vector2.new(1, 1)
                            _Frame5.Position = UDim2.new(0, v558.X - v562 / 2, 0, v558.Y - v563 / 2)
                            _Frame5.Size = UDim2.new(0, v562, 0, v563)
                            _Frame5.Visible = u511.Drawing.Boxes.Full.Enabled

                            if u511.Drawing.Boxes.Filled.Enabled then
                                _Frame5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

                                if u511.Drawing.Boxes.GradientFill then
                                    _Frame5.BackgroundTransparency = u511.Drawing.Boxes.Filled.Transparency
                                else
                                    _Frame5.BackgroundTransparency = 1
                                end

                                _Frame5.BorderSizePixel = 1
                            else
                                _Frame5.BackgroundTransparency = 1
                            end

                            u515 = u515 + (tick() - u516) * u511.Drawing.Boxes.RotationSpeed * math.cos(math.pi / 4 * tick() - math.pi / 2)

                            if u511.Drawing.Boxes.Animate then
                                _UIGradient2.Rotation = u515
                                _UIGradient3.Rotation = u515
                            else
                                _UIGradient2.Rotation = -45
                                _UIGradient3.Rotation = -45
                            end

                            u516 = tick()

                            local v565 = _Humanoid6.Health / _Humanoid6.MaxHealth

                            _Frame6.Visible = u511.Drawing.Healthbar.Enabled
                            _Frame6.Position = UDim2.new(0, v558.X - v562 / 2 - 6, 0, v558.Y - v563 / 2 + v563 * (1 - v565))
                            _Frame6.Size = UDim2.new(0, u511.Drawing.Healthbar.Width, 0, v563 * v565)
                            _Frame7.Visible = u511.Drawing.Healthbar.Enabled
                            _Frame7.Position = UDim2.new(0, v558.X - v562 / 2 - 6, 0, v558.Y - v563 / 2)
                            _Frame7.Size = UDim2.new(0, u511.Drawing.Healthbar.Width, 0, v563)

                            if u511.Drawing.Healthbar.HealthText then
                                local v566 = math.floor(_Humanoid6.Health / _Humanoid6.MaxHealth * 100)

                                _TextLabel5.Position = UDim2.new(0, v558.X - v562 / 2 - 6, 0, v558.Y - v563 / 2 + v563 * (1 - v566 / 100) + 3)
                                _TextLabel5.Text = tostring(v566)
                                _TextLabel5.Visible = _Humanoid6.Health < _Humanoid6.MaxHealth

                                if u511.Drawing.Healthbar.Lerp then
                                    _TextLabel5.TextColor3 = v565 >= 0.75 and Color3.fromRGB(0, 255, 0) or (v565 >= 0.5 and Color3.fromRGB(255, 255, 0) or (0.25 <= v565 and Color3.fromRGB(255, 170, 0) or Color3.fromRGB(255, 0, 0)))
                                else
                                    _TextLabel5.TextColor3 = u511.Drawing.Healthbar.HealthTextRGB
                                end
                            end

                            _TextLabel2.Visible = u511.Drawing.Names.Enabled

                            if u511.Options.Friendcheck and _LocalPlayer13:IsFriendsWith(p531.UserId) then
                                _TextLabel2.Text = string.format('(<font color="rgb(%d, %d, %d)">F</font>) %s', u511.Options.FriendcheckRGB.R * 255, u511.Options.FriendcheckRGB.G * 255, u511.Options.FriendcheckRGB.B * 255, p531.Name)
                            else
                                _TextLabel2.Text = string.format('(<font color="rgb(%d, %d, %d)">E</font>) %s', 255, 0, 0, p531.Name)
                            end

                            _TextLabel2.Position = UDim2.new(0, v558.X, 0, v558.Y - v563 / 2 - 9)

                            if u511.Drawing.Distances.Enabled then
                                if u511.Drawing.Distances.Position ~= 'Bottom' then
                                    if u511.Drawing.Distances.Position == 'Text' then
                                        _TextLabel4.Position = UDim2.new(0, v558.X, 0, v558.Y + v563 / 2 + 8)
                                        _ImageLabel2.Position = UDim2.new(0, v558.X - 21, 0, v558.Y + v563 / 2 + 5)
                                        _TextLabel3.Visible = false

                                        if u511.Options.Friendcheck and _LocalPlayer13:IsFriendsWith(p531.UserId) then
                                            _TextLabel2.Text = string.format('(<font color="rgb(%d, %d, %d)">F</font>) %s [%d]', u511.Options.FriendcheckRGB.R * 255, u511.Options.FriendcheckRGB.G * 255, u511.Options.FriendcheckRGB.B * 255, p531.Name, math.floor(v560))
                                        else
                                            _TextLabel2.Text = string.format('(<font color="rgb(%d, %d, %d)">E</font>) %s [%d]', 255, 0, 0, p531.Name, math.floor(v560))
                                        end

                                        _TextLabel2.Visible = u511.Drawing.Names.Enabled
                                    end
                                else
                                    _TextLabel4.Position = UDim2.new(0, v558.X, 0, v558.Y + v563 / 2 + 18)
                                    _ImageLabel2.Position = UDim2.new(0, v558.X - 21, 0, v558.Y + v563 / 2 + 15)
                                    _TextLabel3.Position = UDim2.new(0, v558.X, 0, v558.Y + v563 / 2 + 7)
                                    _TextLabel3.Text = string.format('%d meters', math.floor(v560))
                                    _TextLabel3.Visible = true
                                end
                            end

                            _TextLabel4.Text = 'none'
                            _TextLabel4.Visible = u511.Drawing.Weapons.Enabled
                        else
                            u555()
                        end
                    else
                        u555()
                    end
                else
                    u555()
                end
            end)
        end

        coroutine.wrap(v567)()
    end

    local v569, v570, v571 = pairs(game:GetService('Players'):GetPlayers())
    local v572 = _LocalPlayer13

    while true do
        local v573

        v571, v573 = v569(v570, v571)

        if v571 == nil then
            break
        end
        if v573.Name ~= v572.Name then
            coroutine.wrap(u568)(v573)
        end
    end

    game:GetService('Players').PlayerAdded:Connect(function(p574)
        coroutine.wrap(u568)(p574)
    end)
end

_RunService6.Heartbeat:Connect(function() end)

if Elisium.MouseTeleport.Enabled then
    local v575 = nil

    if Elisium.MouseTeleport.UsePrediction or not Elisiumtarget then
        if Elisium.MouseTeleport.UsePrediction and Elisiumtarget then
            v575 = CFrame.new(workspace.CurrentCamera.CFrame.Position, Target.Character[Elisium.MouseTeleport.Part].Position + Target.Character[Elisium.MouseTeleport.Part].Velocity * Elisium.MouseTeleport.Prediction)
        end
    else
        v575 = CFrame.new(workspace.CurrentCamera.CFrame.Position, Target.Character[Elisium.MouseTeleport.Part].Position)
    end
    if Elisiumtarget and (Elisiumtarget.Character.Humanoid.Health == Elisium.MouseTeleport.HealthThreshold and Elisium.MouseTeleport.Method == 'Health') then
        workspace.CC.CFrame = v575
    elseif Elisiumtarget and (JumpState and Elisium.MouseTeleport.Method == 'Jumping') then
        wait(Elisium.MouseTeleport.JumpDelay)

        workspace.CC.CFrame = v575
    end
end
if getgenv().Elisium.Offsets.Enabled and humanoid then
    if humanoid:GetState() ~= Enum.HumanoidStateType.Jumping then
        if humanoid:GetState() == Enum.HumanoidStateType.Freefall then
            targetPos = targetPos + Vector3.new(0, getgenv().Elisium.Offsets.Fall, 0)
        end
    else
        targetPos = targetPos + Vector3.new(0, getgenv().Elisium.Offsets.Jump, 0)
    end
end
