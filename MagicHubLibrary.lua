local Library = {}

local uis = game:GetService("UserInputService")
local plr = game:GetService("Players").LocalPlayer
local mouse = plr:GetMouse()
local ts = game:GetService("TweenService")

local showclose = false
local loaded = false
local TextFontName = Enum.Font.Nunito
local TitleName = "MagicHub"

local UI = {
	--//Gui//--
	Gui = Instance.new("ScreenGui"),
	--//MainFrame//--
	MainFrame = Instance.new("Frame"),
	MainFrameUiAspect = Instance.new("UIAspectRatioConstraint"),
	MainFrameCorner = Instance.new("UICorner"),
	MainFrameStroke = Instance.new("UIStroke"),
	MainFrameGradient = Instance.new("UIGradient"),
	--//Title//--
	Title = Instance.new("TextLabel"),
	--//Categories//--
	Categories = Instance.new("TextLabel"),
	--//Outlines//--
	Outlines = Instance.new("Frame"),
	Outline1 = Instance.new("Frame"),
	Outline2 = Instance.new("Frame"),
	OutlinesStroke = Instance.new("UIStroke"),
	--//Sector//--
	Sector = Instance.new("ScrollingFrame"),
	SectorList = Instance.new("UIListLayout"),
	SectorButton = Instance.new("TextButton"),
	SectorButtonBorder = Instance.new("UIStroke"),
	SectorButtonStroke = Instance.new("UIStroke"),
	SectorButtonCorner = Instance.new("UICorner"),
	--//Sectors//--
	MainSectors = Instance.new("Frame"),
	SectorsFrame = Instance.new("ScrollingFrame"),
	SectorsFrameList = Instance.new("UIListLayout"),
	--//Button//--
	Button = Instance.new("TextButton"),
	ButtonBorder = Instance.new("UIStroke"),
	ButtonStroke = Instance.new("UIStroke"),
	ButtonCorner = Instance.new("UICorner"),
	--//Trigger//--
	Trigger = Instance.new("TextButton"),
	TriggerBorder = Instance.new("UIStroke"),
	TriggerStroke = Instance.new("UIStroke"),
	TriggerCorner = Instance.new("UICorner"),
	--//Slider//--
	Slider = Instance.new("Frame"),
	SliderCorner = Instance.new('UICorner'),
	SliderTextLabel = Instance.new("TextLabel"),
	SliderTextLabelStroke = Instance.new("UIStroke"),
	SliderButton = Instance.new("TextButton"),
	SliderButtonCorner = Instance.new("UICorner"),
	SliderFill = Instance.new("Frame"),
	SliderFillCorner = Instance.new("UICorner"),
	SliderFillBorder = Instance.new("UIStroke"),
	--//DropDown//--
	DropDown = Instance.new("Frame"),
	DropDownBorder = Instance.new("UIStroke"),
	DropDownCorner = Instance.new("UICorner"),
	DropDownButton = Instance.new("TextButton"),
	DropDownButtonUiAspect = Instance.new("UIAspectRatioConstraint"),
	DropDownButtonCorner = Instance.new("UICorner"),
	DropDownScroll = Instance.new("ScrollingFrame"),
	DropDownScrollList = Instance.new("UIListLayout"),
	DropDownOption = Instance.new("TextButton"),
	DropDownOptionUiAspect = Instance.new("UIAspectRatioConstraint"),
	DropDownOptionBorder = Instance.new("UIStroke"),
	DropDownOptionCorner = Instance.new("UICorner"),
	
}

local function castomizegui()
	--//Gui//--
	UI.Gui.Parent = plr.PlayerGui
	UI.Gui.Name = math.random(1,10000)..math.random(1,10000)..math.random(1,10000)
	UI.Gui.IgnoreGuiInset = true
	UI.Gui.ResetOnSpawn = false
	UI.Gui.DisplayOrder = 1000
	--//MainFrame//--
	UI.MainFrame.Name = "MainFrame"
	UI.MainFrame.Size = UDim2.new(0.363, 0,0.321, 0)
	UI.MainFrame.Position = UDim2.new(0.391, 0,0.338, 0)
	UI.MainFrame.Active = true
	UI.MainFrame.Draggable = true
	UI.MainFrameUiAspect.AspectRatio = 1.8
	UI.MainFrameGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(48,48,48)),ColorSequenceKeypoint.new(1, Color3.fromRGB(21,21,21))})
	UI.MainFrameGradient.Rotation = -90
	UI.MainFrameCorner.CornerRadius = UDim.new(0,8)
	UI.MainFrameStroke.Color = Color3.fromRGB(85,85,85)
	UI.MainFrameStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UI.MainFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
	UI.MainFrameStroke.Thickness = 1
	--//Title//--
	UI.Title.Name = "Title"
	UI.Title.Size = UDim2.new(0.803, 0,0.128, 0)
	UI.Title.Position = UDim2.new(0.194, 0,0, 0)
	UI.Title.BackgroundTransparency = 1
	UI.Title.Font = TextFontName
	UI.Title.TextColor3 = Color3.fromRGB(255,255,255)
	UI.Title.TextScaled = true
	UI.Title.Text = TitleName
	--//Categories//--
	UI.Categories.Name = "Categories"
	UI.Categories.Size = UDim2.new(0.197, 0,0.128, 0)
	UI.Categories.Position = UDim2.new(0, 0,0, 0)
	UI.Categories.BackgroundTransparency = 1
	UI.Categories.Font = TextFontName
	UI.Categories.TextColor3 = Color3.fromRGB(255,255,255)
	UI.Categories.TextScaled = true
	UI.Categories.Text = "Categories"
	--//Outlines//--
	UI.Outlines.Name = "Outlines"
	UI.Outlines.Size = UDim2.new(1, 0,1, 0)
	UI.Outlines.Position = UDim2.new(0, 0,0, 0)
	UI.Outlines.BackgroundTransparency = 1
	UI.Outline1.Name = "Outline1"
	UI.Outline1.Size = UDim2.new(1, 0,0, 0)
	UI.Outline1.Position = UDim2.new(0, 0,0.128, 0)
	UI.Outline1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	UI.Outline2.Name = "Outline2"
	UI.Outline2.Size = UDim2.new(0, 0,1, 0)
	UI.Outline2.Position = UDim2.new(0.195, 0,0, 0)
	UI.Outline2.BackgroundColor3 = Color3.fromRGB(255,255,255)
	UI.OutlinesStroke.Color = Color3.fromRGB(57,57,57)
	UI.OutlinesStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UI.OutlinesStroke.LineJoinMode = Enum.LineJoinMode.Round
	UI.OutlinesStroke.Thickness = 1
	--//Sector//--
	UI.Sector.Name = "Sector"
	UI.Sector.MidImage = ""
	UI.Sector.TopImage = ""
	UI.Sector.BottomImage = ""
	UI.Sector.ScrollBarThickness = 0
	UI.Sector.AutomaticCanvasSize = Enum.AutomaticSize.XY
	UI.Sector.CanvasSize = UDim2.new(0,0,0,0)
	UI.Sector.Size = UDim2.new(0.193, 0,0.871, 0)
	UI.Sector.Position = UDim2.new(0, 0,0.128, 0)
	UI.Sector.BackgroundTransparency = 1
	UI.SectorList.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UI.SectorList.Padding = UDim.new(0,5)
	UI.SectorButton.Size = UDim2.new(0.789, 0,0.121, 0)
	UI.SectorButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
	UI.SectorButton.BackgroundTransparency = 0.65
	UI.SectorButton.Font = TextFontName
	UI.SectorButton.TextColor3 = Color3.fromRGB(255,255,255)
	UI.SectorButton.TextScaled = true
	--//MainSectors//--
	UI.MainSectors.Name = "MainSectors"
	UI.MainSectors.Size = UDim2.new(0.803, 0,0.83, 0)
	UI.MainSectors.Position = UDim2.new(0.197, 0,0.17, 0)
	UI.MainSectors.BackgroundTransparency = 1
	UI.SectorsFrame.Size = UDim2.new(1,0,1,0)
	UI.SectorsFrame.MidImage = ""
	UI.SectorsFrame.TopImage = ""
	UI.SectorsFrame.BottomImage = ""
	UI.SectorsFrame.ScrollBarThickness = 0
	UI.SectorsFrame.AutomaticCanvasSize = Enum.AutomaticSize.XY
	UI.SectorsFrame.CanvasSize = UDim2.new(0,0,0,0)
	UI.SectorsFrame.BackgroundTransparency = 1
	UI.SectorsFrameList.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UI.SectorsFrameList.Padding = UDim.new(0,7)
	--//Button//--
	UI.Button.Size = UDim2.new(0.927, 0,0.114, 0)
	UI.Button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
	UI.Button.BackgroundTransparency = 0.65
	UI.Button.Font = TextFontName
	UI.Button.TextColor3 = Color3.fromRGB(255,255,255)
	UI.Button.TextScaled = true
	UI.ButtonCorner.CornerRadius = UDim.new(0,8)
	UI.ButtonBorder.Color = Color3.fromRGB(80,80,80)
	UI.ButtonBorder.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UI.ButtonBorder.LineJoinMode = Enum.LineJoinMode.Round
	UI.ButtonBorder.Thickness = 1
	UI.ButtonStroke.Color = Color3.fromRGB(0,0,0)
	UI.ButtonStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
	UI.ButtonStroke.LineJoinMode = Enum.LineJoinMode.Round
	UI.ButtonStroke.Thickness = 1
	--//Trigger//--
	UI.Trigger.Size = UDim2.new(0.927, 0,0.114, 0)
	UI.Trigger.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
	UI.Trigger.BackgroundTransparency = 0.65
	UI.Trigger.Font = TextFontName
	UI.Trigger.TextColor3 = Color3.fromRGB(255,255,255)
	UI.Trigger.TextScaled = true
	UI.TriggerCorner.CornerRadius = UDim.new(0,8)
	UI.TriggerBorder.Color = Color3.fromRGB(80,80,80)
	UI.TriggerBorder.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UI.TriggerBorder.LineJoinMode = Enum.LineJoinMode.Round
	UI.TriggerBorder.Thickness = 1
	UI.TriggerStroke.Color = Color3.fromRGB(0,0,0)
	UI.TriggerStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
	UI.TriggerStroke.LineJoinMode = Enum.LineJoinMode.Round
	UI.TriggerStroke.Thickness = 1
	--//Slider//--
	UI.Slider.Size = UDim2.new(0.927, 0,0.114, 0)
	UI.Slider.BackgroundTransparency = 1
	UI.SliderCorner.CornerRadius = UDim.new(0,8)
	UI.SliderTextLabel.ZIndex = 3
	UI.SliderTextLabel.BackgroundTransparency = 1
	UI.SliderTextLabel.Size = UDim2.new(0.563, 0,1, 0)
	UI.SliderTextLabel.Position = UDim2.new(0.239, 0,0, 0)
	UI.SliderTextLabel.Font = TextFontName
	UI.SliderTextLabel.TextColor3 = Color3.fromRGB(255,255,255)
	UI.SliderTextLabel.TextScaled = true
	UI.SliderTextLabelStroke.Color = Color3.fromRGB(0,0,0)
	UI.SliderTextLabelStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
	UI.SliderTextLabelStroke.LineJoinMode = Enum.LineJoinMode.Round
	UI.SliderTextLabelStroke.Thickness = 1
	UI.SliderButton.Name = "SliderButton"
	UI.SliderButton.BackgroundTransparency = 0
	UI.SliderButton.BackgroundColor3 = Color3.fromRGB(170,170,170)
	UI.SliderButton.Size = UDim2.new(0.07, 0,1, 0)
	UI.SliderButton.Position = UDim2.new(0.95, 0,0.04, 0)
	UI.SliderButton.ZIndex = 3
	UI.SliderButtonCorner.CornerRadius = UDim.new(1,0)
	UI.SliderFill.Name = "SliderFill"
	UI.SliderFill.Size = UDim2.new(1, 0,1, 0)
	UI.SliderFill.Position = UDim2.new(0,0,0,0)
	UI.SliderFill.BackgroundTransparency = 0.6
	UI.SliderFill.BackgroundColor3 = Color3.fromRGB(60,60,60)
	UI.SliderFillBorder.Color = Color3.fromRGB(80,80,80)
	UI.SliderFillBorder.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UI.SliderFillBorder.LineJoinMode = Enum.LineJoinMode.Round
	UI.SliderFillBorder.Thickness = 1
	UI.SliderFillCorner.CornerRadius = UDim.new(0,8)
	--//DropDown//--
	UI.DropDown.Size = UDim2.new(0.927, 0,0.114, 0)
	UI.DropDown.BackgroundTransparency = 1
	UI.DropDownButton.Name = "DropDownButton"
	UI.DropDownButton.Size = UDim2.new()
	UI.DropDown.BackgroundTransparency = 1
	UI.DropDownBorder.Color = Color3.fromRGB(80,80,80)
	UI.DropDownButton.Size = UDim2.new(1, 0,1, 0)
	UI.DropDownButton.Position = UDim2.new(0,0,0,0)
	UI.DropDownButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
	UI.DropDownButton.BackgroundTransparency = 0.65
	UI.DropDownButton.Font = TextFontName
	UI.DropDownButton.TextColor3 = Color3.fromRGB(255,255,255)
	UI.DropDownButton.TextScaled = true
	UI.DropDownButtonUiAspect.AspectRatio = 15
	UI.DropDownButtonUiAspect.DominantAxis = Enum.DominantAxis.Height
	UI.DropDownScroll.Name = "DropDownScroll"
	UI.DropDownScroll.Size = UDim2.new(1, 0,0, 0)
	UI.DropDownScroll.Position = UDim2.new(0, 0,1.28, 0)
	UI.DropDownScroll.BackgroundTransparency = 1
	UI.DropDownScroll.MidImage = ""
	UI.DropDownScroll.TopImage = ""
	UI.DropDownScroll.BottomImage = ""
	UI.DropDownScroll.ScrollBarThickness = 0
	UI.DropDownScroll.AutomaticCanvasSize = Enum.AutomaticSize.XY
	UI.DropDownScroll.CanvasSize = UDim2.new(0,0,0,0)
	UI.DropDownScrollList.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UI.DropDownScrollList.Padding = UDim.new(0,6)
	UI.DropDownOption.Size = UDim2.new(1, 0,1, 0)
	UI.DropDownOption.Position = UDim2.new(0,7,0,0)
	UI.DropDownOption.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
	UI.DropDownOption.BackgroundTransparency = 0.5
	UI.DropDownOption.Font = TextFontName
	UI.DropDownOption.TextColor3 = Color3.fromRGB(255,255,255)
	UI.DropDownOption.TextScaled = true
	UI.DropDownOptionUiAspect.AspectRatio = 15
	UI.DropDownOptionUiAspect.DominantAxis = Enum.DominantAxis.Height
end

local function settingsgui()
	castomizegui()
	--//MainFrame//--
	UI.MainFrameUiAspect.Parent = UI.MainFrame
	UI.MainFrameCorner.Parent = UI.MainFrame
	UI.MainFrameStroke.Parent = UI.MainFrame
	UI.MainFrameGradient.Parent = UI.MainFrame
	--//Title//--
	UI.Title.Parent = UI.MainFrame
	--//Categories//--
	UI.Categories.Parent = UI.MainFrame
	--//Outlines//--
	UI.Outlines.Parent = UI.MainFrame
	UI.Outline1.Parent = UI.Outlines
	UI.Outline2.Parent = UI.Outlines
	UI.OutlinesStroke:Clone().Parent = UI.Outline1
	UI.OutlinesStroke:Clone().Parent = UI.Outline2
	--//Sector//--
	UI.Sector.Parent = UI.MainFrame
	UI.SectorList.Parent = UI.Sector	
	UI.SectorButtonCorner.Parent = UI.SectorButton
	UI.SectorButtonBorder.Parent = UI.SectorButton
	UI.SectorButtonStroke.Parent = UI.SectorButton
	--//Sectors//--
	UI.MainSectors.Parent = UI.MainFrame
	UI.SectorsFrameList.Parent = UI.SectorsFrame
	--//Button//--
	UI.ButtonCorner.Parent = UI.Button
	UI.ButtonBorder.Parent = UI.Button
	UI.ButtonStroke.Parent = UI.Button
	--//Trigger//--
	UI.TriggerCorner.Parent = UI.Trigger
	UI.TriggerBorder.Parent = UI.Trigger
	UI.TriggerStroke.Parent = UI.Trigger
	--//Slider//--
	UI.SliderCorner.Parent = UI.Slider
	UI.SliderTextLabel.Parent = UI.Slider
	UI.SliderTextLabelStroke.Parent = UI.SliderTextLabel
	UI.SliderButton.Parent = UI.Slider
	UI.SliderButtonCorner.Parent = UI.SliderButton
	UI.SliderFill.Parent = UI.Slider
	UI.SliderFillCorner.Parent = UI.SliderFill
	UI.SliderFillBorder.Parent = UI.SliderFill
	--//DropDown//--
	UI.DropDownBorder.Parent = UI.DropDown
	UI.DropDownCorner.Parent = UI.DropDown
	UI.DropDownButton.Parent = UI.DropDown
	UI.DropDownButtonUiAspect.Parent = UI.DropDownButton
	UI.DropDownButtonCorner.Parent = UI.DropDownButton
	UI.DropDownScroll.Parent = UI.DropDownButton
	UI.DropDownScrollList.Parent = UI.DropDownScroll
	UI.DropDownOptionUiAspect.Parent = UI.DropDownOption
	UI.DropDownOptionCorner.Parent = UI.DropDownOption
	UI.DropDownOptionBorder.Parent = UI.DropDownOption
	--//Gui//--
	UI.MainFrame.Parent = UI.Gui
end

local function visiblesector(sectorname)
	for i,v in UI.Sector:GetChildren() do
		if v:IsA("TextButton") then
			v.BackgroundColor3 = Color3.fromRGB(60,60,60)
		end
	end
	for i,v in UI.MainSectors:GetChildren() do
		v.Visible = false
	end
	UI.Sector[sectorname.."Sector"].BackgroundColor3 = Color3.fromRGB(30,30,30)
	UI.MainSectors[sectorname].Visible = true
end
	
local Tweens = {
	OpenGui = ts:Create(UI.MainFrame, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0.363, 0,0.321, 0)}),

	CloseGui = ts:Create(UI.MainFrame, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0.363, 0,0, 0)}),
}

local function closegui()
	showclose = true
	Tweens.CloseGui:Play()
	Tweens.CloseGui.Completed:Wait()
	UI.Gui.Enabled = false
	task.wait(0.25)
	showclose = false
end

local function opengui()
	showclose = true
	UI.Gui.Enabled = true
	Tweens.OpenGui:Play()
	Tweens.OpenGui.Completed:Wait()
	task.wait(0.25)
	showclose = false
end

Library.createlibrary = function()
	if loaded == false then
		loaded = true
		task.wait(2.5)
		settingsgui()
		--//CloseGui
		UI.MainFrame.Size = UDim2.new(0.363, 0,0, 0)
		--//OpenGui
		opengui()
		--//OpenClose
		uis.InputBegan:Connect(function(key,chatting)
			if chatting then return end	
			if showclose == false then
				if key.KeyCode == Enum.KeyCode.Insert then
					if UI.Gui.Enabled == true then
						closegui()
					elseif UI.Gui.Enabled == false then
						opengui()
					end
				end
			end
		end)
	else
		return warn(TitleName.." Alredy Executed! HaveFun✌")
	end
end

Library.createsector = function(SectorName)
	--//SectorButton//--
	local SectorButton = UI.SectorButton:Clone()
	SectorButton.Parent = UI.Sector
	SectorButton.Name = SectorName.."Sector"
	SectorButton.Text = SectorName
	--//SectorFrame//--
	local SectorsFrame = UI.SectorsFrame:Clone()
	SectorsFrame.Parent = UI.MainSectors
	SectorsFrame.Name = SectorName
	for i,v in UI.MainSectors:GetChildren() do
		v.Visible = false
		if i == 1 then
			v.Visible = true
		end
	end
	SectorButton.MouseButton1Click:Connect(function()
		visiblesector(SectorsFrame.Name)
	end)
end

Library.createbutton = function(SectorName,Name,CallBack)
	local Button = UI.Button:Clone()
	Button.Parent = UI.MainSectors:FindFirstChild(SectorName)
	Button.Name = Name.."Button"
	Button.Text = Name
	Button.MouseButton1Click:Connect(function()
		CallBack("Trigered!")
	end)
end

Library.createtrigger = function(SectorName,Name,CallBack)
	local onoff = false
	local Trigger = UI.Trigger:Clone()
	Trigger.Parent = UI.MainSectors:FindFirstChild(SectorName)
	Trigger.Name = Name.."Trigger"
	Trigger.Text = Name..":"..tostring(onoff)
	Trigger.MouseButton1Click:Connect(function()
		onoff = not onoff
		Trigger.Text = Name..":"..tostring(onoff)
		CallBack(onoff)
	end)
end

Library.createslider = function(SectorName,Name,CallBack,Min,Max)
	local Slider = UI.Slider:Clone()
	Slider.Parent = UI.MainSectors:FindFirstChild(SectorName)
	Slider.Name = Name.."Slider"
	local SliderFill = Slider.SliderFill
	SliderFill.Name = Name.."SliderFill"
	local SliderButton = Slider.SliderButton
	SliderButton.Name = Name.."SliderButton"
	SliderButton.Text = ""
	local SliderTextLabel = Slider.TextLabel
	SliderTextLabel.Text = "100%"
	--//SliderScript//--
	local slidermove = false

	local pos = math.clamp(1, Min, 1)
	SliderButton.Position = UDim2.new(pos-0.05, 0, SliderButton.Position.Y, 0)
	SliderFill.Size = UDim2.fromScale(pos, 1)
	local procents = tostring((math.ceil(pos*Max)))
	SliderTextLabel.Text = Name.." "..(math.ceil(pos*Max)).."%"

	uis.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 and slidermove == true then
			slidermove = false
		end
	end)

	SliderButton.MouseButton1Down:Connect(function()
		slidermove = true
	end)

	uis.InputChanged:Connect(function(input)
		if slidermove and input.UserInputType == Enum.UserInputType.MouseMovement then
			local pos = math.clamp((mouse.X - Slider.AbsolutePosition.X) / Slider.AbsoluteSize.X, Min, 1)
			SliderButton.Position = UDim2.new(pos-0.05, 0, SliderButton.Position.Y, 0)
			SliderFill.Size = UDim2.fromScale(pos, 1)
			local procents1 = tostring((math.ceil(pos*Max)))
			SliderTextLabel.Text = Name.." "..(math.ceil(pos*Max)).."%"
			CallBack(procents1)
		end
	end)
	
	CallBack(procents)
end

Library.createdropdown = function(SectorName,Name,CallBack,Options)
	local DropDown = UI.DropDown:Clone()
	DropDown.Parent = UI.MainSectors:FindFirstChild(SectorName)
	DropDown.Name = Name.."DropDown"
	local DropDownButton = DropDown.DropDownButton
	DropDownButton.Name = Name.."DropDownButton"
	DropDownButton.Text = "Choose "..Name..":"
	local DropDownScrolling = DropDownButton.DropDownScroll
	DropDownScrolling.Visible = false
	--//DropDownScript//--
	local opened = false
	local openclose = false
	
	local function DropDownClose()
		openclose = true
		ts:Create(DropDown,TweenInfo.new(0.5,Enum.EasingStyle.Quad, Enum.EasingDirection.In),{Size = UDim2.new(0.927, 0,0.12, 0)}):Play()
		ts:Create(DropDownScrolling,TweenInfo.new(0.5,Enum.EasingStyle.Quad, Enum.EasingDirection.In),{Size = UDim2.new(1, 0,0, 0)}):Play()
		task.delay(0.5,function() openclose = false DropDownScrolling.Visible = false end)
	end
	
	local function DropDownOpen()
		openclose = true
		DropDownScrolling.Visible = true
		ts:Create(DropDown,TweenInfo.new(0.5,Enum.EasingStyle.Quad, Enum.EasingDirection.In),{Size = UDim2.new(0.927, 0,0.682, 0)}):Play()
		ts:Create(DropDownScrolling,TweenInfo.new(0.5,Enum.EasingStyle.Quad, Enum.EasingDirection.In),{Size = UDim2.new(1, 0,5, 0)}):Play()
		task.delay(0.5,function() openclose = false end)
	end
	
	for number,option in Options do
		local NewOption = UI.DropDownOption:Clone()
		NewOption.Name = Options[number]
		NewOption.Parent = DropDownScrolling
		NewOption.Text = Options[number]
		NewOption.MouseButton1Click:Connect(function()
			CallBack(NewOption.Name)
			DropDownButton.Text = "Choose "..Name..":"..NewOption.Name
			if openclose == false then
				DropDownClose()
				opened = false
			end
		end)
	end 
	
	DropDownButton.MouseButton1Click:Connect(function()
		if openclose == false then
			if opened == false then
				DropDownOpen()
				opened = true
			else
				DropDownClose()
				opened = false
			end
		end
	end)
	
end

return Library
