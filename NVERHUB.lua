-- สร้าง UI Container หลัก
local NeverWinUI = Instance.new("ScreenGui")
NeverWinUI.Name = "NeverWinUI"
NeverWinUI.ResetOnSpawn = false
NeverWinUI.Parent = game.CoreGui

-- สร้างหน้าต่างหลัก (Background Frame)
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = NeverWinUI
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MainFrame.BorderColor3 = Color3.fromRGB(40, 40, 40)
MainFrame.BorderSizePixel = 1
MainFrame.Position = UDim2.new(0.5, -375, 0.5, -210)
MainFrame.Size = UDim2.new(0, 750, 0, 420)

-- สร้าง Title Bar ด้านบนสุด
local TitleBar = Instance.new("Frame")
TitleBar.Name = "TitleBar"
TitleBar.Parent = MainFrame
TitleBar.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
TitleBar.BorderSizePixel = 0
TitleBar.Size = UDim2.new(1, 0, 0, 30)

-- โลโก้ซ้ายบน
local LogoIcon = Instance.new("TextLabel")
LogoIcon.Name = "LogoIcon"
LogoIcon.Parent = TitleBar
LogoIcon.BackgroundTransparency = 1.000
LogoIcon.Position = UDim2.new(0, 10, 0, 0)
LogoIcon.Size = UDim2.new(0, 30, 1, 0)
LogoIcon.Font = Enum.Font.SourceSansBold
LogoIcon.Text = "∮"
LogoIcon.TextColor3 = Color3.fromRGB(200, 200, 200)
LogoIcon.TextSize = 18.000

-- ชื่อโปรแกรมตรงกลาง
local TitleText = Instance.new("TextLabel")
TitleText.Name = "TitleText"
TitleText.Parent = TitleBar
TitleText.AnchorPoint = Vector2.new(0.5, 0)
TitleText.BackgroundTransparency = 1.000
TitleText.Position = UDim2.new(0.5, 0, 0, 0)
TitleText.Size = UDim2.new(0, 200, 1, 0)
TitleText.Font = Enum.Font.SourceSansBold
TitleText.Text = "NEVER WIN"
TitleText.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleText.TextSize = 16.000

-- ปุ่มควบคุมหน้าต่าง (Minimize, Close)
local CloseButton = Instance.new("TextButton")
CloseButton.Name = "CloseButton"
CloseButton.Parent = TitleBar
CloseButton.BackgroundTransparency = 1.000
CloseButton.Position = UDim2.new(1, -30, 0, 0)
CloseButton.Size = UDim2.new(0, 30, 1, 0)
CloseButton.Font = Enum.Font.SourceSans
CloseButton.Text = "✕"
CloseButton.TextColor3 = Color3.fromRGB(200, 200, 200)
CloseButton.TextSize = 14.000

local MinimizeButton = Instance.new("TextButton")
MinimizeButton.Name = "MinimizeButton"
MinimizeButton.Parent = TitleBar
MinimizeButton.BackgroundTransparency = 1.000
MinimizeButton.Position = UDim2.new(1, -60, 0, 0)
MinimizeButton.Size = UDim2.new(0, 30, 1, 0)
MinimizeButton.Font = Enum.Font.SourceSans
MinimizeButton.Text = "-"
MinimizeButton.TextColor3 = Color3.fromRGB(200, 200, 200)
MinimizeButton.TextSize = 16.000

-- แถบเมนูด้านบน
local MenuBar = Instance.new("Frame")
MenuBar.Name = "MenuBar"
MenuBar.Parent = MainFrame
MenuBar.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MenuBar.BorderSizePixel = 0
MenuBar.Position = UDim2.new(0, 0, 0, 30)
MenuBar.Size = UDim2.new(1, 0, 0, 25)

local function createMenu(name, text, posX)
	local btn = Instance.new("TextButton")
	btn.Name = name
	btn.Parent = MenuBar
	btn.BackgroundTransparency = 1.000
	btn.Position = UDim2.new(0, posX, 0, 0)
	btn.Size = UDim2.new(0, 80, 1, 0)
	btn.Font = Enum.Font.SourceSans
	btn.Text = text
	btn.TextColor3 = Color3.fromRGB(200, 200, 200)
	btn.TextSize = 13.000
	return btn
end

createMenu("FileMenu", "File", 10)
createMenu("CreditsMenu", "Credits", 90)
createMenu("GamesMenu", "Games", 170)
createMenu("HotScriptsMenu", "Hot-Scripts", 250)
createMenu("OthersMenu", "Others", 350)

-- แถบจัดการแท็บสคริปต์
local TabBar = Instance.new("ScrollingFrame")
TabBar.Name = "TabBar"
TabBar.Parent = MainFrame
TabBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TabBar.BorderSizePixel = 0
TabBar.Position = UDim2.new(0, 0, 0, 55)
TabBar.Size = UDim2.new(0, 570, 0, 25)
TabBar.CanvasSize = UDim2.new(2, 0, 0, 0)
TabBar.ScrollBarThickness = 0

-- ปุ่มเครื่องหมายบวก (+) สำหรับเพิ่มแท็บ
local AddTabButton = Instance.new("TextButton")
AddTabButton.Name = "AddTabButton"
AddTabButton.Parent = MainFrame
AddTabButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
AddTabButton.BorderSizePixel = 0
AddTabButton.Position = UDim2.new(0, 575, 0, 55)
AddTabButton.Size = UDim2.new(0, 25, 0, 25)
AddTabButton.Font = Enum.Font.SourceSansBold
AddTabButton.Text = "+"
AddTabButton.TextColor3 = Color3.fromRGB(200, 200, 200)
AddTabButton.TextSize = 16.000

-- โฟลเดอร์เก็บกล่องข้อความสคริปต์ (Editors) ของแต่ละแท็บ
local EditorContainer = Instance.new("Folder")
EditorContainer.Name = "EditorContainer"
EditorContainer.Parent = MainFrame

-- แผงด้านขวา (Side Panel)
local SidePanel = Instance.new("Frame")
SidePanel.Name = "SidePanel"
SidePanel.Parent = MainFrame
SidePanel.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
SidePanel.BorderColor3 = Color3.fromRGB(35, 35, 35)
SidePanel.BorderSizePixel = 1
SidePanel.Position = UDim2.new(0, 600, 0, 55)
SidePanel.Size = UDim2.new(0, 150, 1, -95)

-- แถบปุ่มควบคุมด้านล่าง
local BottomBar = Instance.new("Frame")
BottomBar.Name = "BottomBar"
BottomBar.Parent = MainFrame
BottomBar.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
BottomBar.BorderSizePixel = 0
BottomBar.Position = UDim2.new(0, 0, 1, -40)
BottomBar.Size = UDim2.new(1, 0, 0, 40)

local function createBottomBtn(name, text, posX, sizeX)
	local btn = Instance.new("TextButton")
	btn.Name = name
	btn.Parent = BottomBar
	btn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	btn.BorderSizePixel = 0
	btn.Position = UDim2.new(0, posX, 0, 5)
	btn.Size = UDim2.new(0, sizeX, 0, 30)
	btn.Font = Enum.Font.SourceSansBold
	btn.Text = text
	btn.TextColor3 = Color3.fromRGB(220, 220, 220)
	btn.TextSize = 13.000
	return btn
end

local ExecuteBtn = createBottomBtn("ExecuteBtn", "EXECUTE", 5, 110)
local ClearBtn = createBottomBtn("ClearBtn", "CLEAR", 120, 110)
local OpenFileBtn = createBottomBtn("OpenFileBtn", "OPEN FILE", 235, 110)
local SaveFileBtn = createBottomBtn("SaveFileBtn", "SAVE FILE", 350, 110)
local InjectBtn = createBottomBtn("InjectBtn", "INJECT", 465, 130)
local OptionsBtn = createBottomBtn("OptionsBtn", "OPTIONS", 605, 140)

-- ระบบจัดการแท็บ (Tabs System)
local tabs = {}
local activeTab = nil
local tabCount = 0

local function SwitchTab(tabData)
	for _, t in pairs(tabs) do
		t.Button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		t.Editor.Visible = false
	end
	tabData.Button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	tabData.Editor.Visible = true
	activeTab = tabData
end

local function UpdateTabPositions()
	for i, t in ipairs(tabs) do
		t.Button.Position = UDim2.new(0, (i - 1) * 95 + 5, 0, 0)
	end
end

local function CreateNewTab(customName, initialText)
	tabCount = tabCount + 1
	local tabName = customName or ("Script" .. tabCount .. ".lua")
	
	-- ปุ่มแท็บ
	local tabBtn = Instance.new("TextButton")
	tabBtn.Name = "Tab_" .. tabCount
	tabBtn.Parent = TabBar
	tabBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	tabBtn.BorderSizePixel = 0
	tabBtn.Size = UDim2.new(0, 90, 1, 0)
	tabBtn.Font = Enum.Font.SourceSans
	tabBtn.Text = tabName
	tabBtn.TextColor3 = Color3.fromRGB(220, 220, 220)
	tabBtn.TextSize = 12.000
	
	-- ปุ่มปิดแท็บ (X) บนตัวแท็บ
	local closeTabBtn = Instance.new("TextButton")
	closeTabBtn.Name = "CloseTab"
	closeTabBtn.Parent = tabBtn
	closeTabBtn.BackgroundTransparency = 1.000
	closeTabBtn.Position = UDim2.new(1, -20, 0, 0)
	closeTabBtn.Size = UDim2.new(0, 20, 1, 0)
	closeTabBtn.Font = Enum.Font.SourceSans
	closeTabBtn.Text = "X"
	closeTabBtn.TextColor3 = Color3.fromRGB(180, 180, 180)
	closeTabBtn.TextSize = 12.000
	
	-- กล่องเขียนโค้ดสำหรับแท็บนี้
	local editor = Instance.new("TextBox")
	editor.Name = "Editor_" .. tabCount
	editor.Parent = EditorContainer
	editor.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	editor.BorderSizePixel = 0
	editor.Position = UDim2.new(0, 0, 0, 80)
	editor.Size = UDim2.new(0, 600, 1, -120)
	editor.ClearTextOnFocus = false
	editor.Font = Enum.Font.Code
	editor.MultiLine = true
	editor.PlaceholderColor3 = Color3.fromRGB(100, 100, 100)
	editor.PlaceholderText = "-- ใส่สคริปของคุณ"
	editor.Text = initialText or ""
	editor.TextColor3 = Color3.fromRGB(230, 230, 230)
	editor.TextSize = 14.000
	editor.TextXAlignment = Enum.TextXAlignment.Left
	editor.TextYAlignment = Enum.TextYAlignment.Top
	editor.Visible = false
	
	local tabData = {Button = tabBtn, Editor = editor, Name = tabName}
	table.insert(tabs, tabData)
	UpdateTabPositions()
	
	-- กดที่แท็บเพื่อสลับหน้า
	tabBtn.MouseButton1Click:Connect(function()
		SwitchTab(tabData)
	end)
	
	-- กดปุ่ม X เพื่อลบแท็บ (ต้องเหลืออย่างน้อย 1 แท็บ)
	closeTabBtn.MouseButton1Click:Connect(function()
		if #tabs <= 1 then return end
		local index = nil
		for i, t in ipairs(tabs) do
			if t == tabData then
				index = i
				break
			end
		end
		if index then
			table.remove(tabs, index)
			tabBtn:Destroy()
			editor:Destroy()
			UpdateTabPositions()
			if activeTab == tabData then
				SwitchTab(tabs[#tabs] or tabs[1])
			end
		end
	end)
	
	SwitchTab(tabData)
end

-- กดปุ่ม + เพื่อสร้างแท็บใหม่
AddTabButton.MouseButton1Click:Connect(function()
	CreateNewTab()
end)

-- สร้างแท็บเริ่มต้น 1 แท็บ
CreateNewTab("Script1.lua")

-- ระบบลากหน้าต่าง (Draggable Window)
local UserInputService = game:GetService("UserInputService")
local dragging, dragInput, dragStart, startPos

TitleBar.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = MainFrame.Position
		
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

TitleBar.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		local delta = input.Position - dragStart
		MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
end)

-- ระบบการทำงานของปุ่มควบคุม
local isInjected = false

InjectBtn.MouseButton1Click:Connect(function()
	if not isInjected then
		InjectBtn.Text = "INJECTING..."
		task.wait(1)
		isInjected = true
		InjectBtn.Text = "INJECTED"
		LogoIcon.TextColor3 = Color3.fromRGB(0, 255, 100)
	end
end)

ExecuteBtn.MouseButton1Click:Connect(function()
	if not isInjected then
		warn("กรุณากด INJECT ก่อนใช้งานสคริปต์!")
		return
	end
	
	if activeTab and activeTab.Editor.Text ~= "" and activeTab.Editor.Text ~= "1" then
		local success, err = pcall(function()
			loadstring(activeTab.Editor.Text)()
		end)
		if not success then
			warn("Execution Error: " .. tostring(err))
		end
	end
end)

ClearBtn.MouseButton1Click:Connect(function()
	if activeTab then
		activeTab.Editor.Text = ""
	end
end)

OpenFileBtn.MouseButton1Click:Connect(function()
	if activeTab then
		activeTab.Editor.Text = "-- เปิดไฟล์สคริปต์สำเร็จ\nprint('Hello from NEVER WIN!')"
	end
end)

SaveFileBtn.MouseButton1Click:Connect(function()
	print("บันทึกสคริปต์เรียบร้อยแล้ว!")
end)

local optionsOpen = false
OptionsBtn.MouseButton1Click:Connect(function()
	optionsOpen = not optionsOpen
	if optionsOpen then
		SidePanel.BackgroundColor3 = Color3.fromRGB(35, 30, 45)
	else
		SidePanel.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
	end
end)

createMenu("CreditsMenu", "Credits", 90).MouseButton1Click:Connect(function()
	if activeTab then
		activeTab.Editor.Text = "-- UI Designed by NEVER WIN\n-- Status: Active"
	end
end)

createMenu("GamesMenu", "Games", 170).MouseButton1Click:Connect(function()
	if activeTab then
		activeTab.Editor.Text = "-- Popular Games Loaded"
	end
end)

CloseButton.MouseButton1Click:Connect(function()
	NeverWinUI:Destroy()
end)

MinimizeButton.MouseButton1Click:Connect(function()
	MainFrame.Visible = false
	local OpenBtn = Instance.new("TextButton")
	OpenBtn.Name = "RestoreBtn"
	OpenBtn.Parent = NeverWinUI
	OpenBtn.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	OpenBtn.Position = UDim2.new(0, 10, 0, 10)
	OpenBtn.Size = UDim2.new(0, 100, 0, 35)
	OpenBtn.Font = Enum.Font.SourceSansBold
	OpenBtn.Text = "NEVER WIN"
	OpenBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
	OpenBtn.TextSize = 14.000
	OpenBtn.MouseButton1Click:Connect(function()
		MainFrame.Visible = true
		OpenBtn:Destroy()
	end)
end)
