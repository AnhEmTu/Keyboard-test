-- Tạo ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "KeyGUI"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Tạo Frame để chứa key và các nút
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 400, 0, 300) -- Kích thước (400x300)
frame.Position = UDim2.new(0.5, -200, 0.5, -150) -- Giữa màn hình
frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
frame.BorderSizePixel = 2
frame.Parent = screenGui

-- Tạo tiêu đề
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 50)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Text = "Nhập Key Của Bạn"
title.Font = Enum.Font.SourceSansBold
title.TextSize = 24
title.Parent = frame

-- Tạo TextBox để người dùng nhập key
local keyBox = Instance.new("TextBox")
keyBox.Size = UDim2.new(0.8, 0, 0, 50)
keyBox.Position = UDim2.new(0.1, 0, 0.3, 0)
keyBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
keyBox.TextColor3 = Color3.fromRGB(0, 0, 0)
keyBox.PlaceholderText = "Nhập key vào đây..."
keyBox.Font = Enum.Font.SourceSans
keyBox.TextSize = 20
keyBox.Parent = frame

-- Tạo nút xác nhận
local confirmButton = Instance.new("TextButton")
confirmButton.Size = UDim2.new(0.8, 0, 0, 50)
confirmButton.Position = UDim2.new(0.1, 0, 0.5, 0)
confirmButton.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
confirmButton.TextColor3 = Color3.fromRGB(255, 255, 255)
confirmButton.Text = "Xác Nhận"
confirmButton.Font = Enum.Font.SourceSansBold
confirmButton.TextSize = 20
confirmButton.Parent = frame

-- Tạo nút thoát
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0.8, 0, 0, 50)
closeButton.Position = UDim2.new(0.1, 0, 0.7, 0)
closeButton.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Text = "Thoát"
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextSize = 20
closeButton.Parent = frame

-- Xử lý sự kiện nút
confirmButton.MouseButton1Click:Connect(function()
    local enteredKey = keyBox.Text
    if enteredKey == "test" then -- Thay "your_key_here" bằng key bạn muốn kiểm tra
        print("Key hợp lệ!")
        -- Thực hiện chức năng khi key hợp lệ (vd: kích hoạt skill hoặc mở khóa)
    else
        print("Key không hợp lệ!")
        -- Hiển thị thông báo key sai
    end
end)

closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy() -- Đóng GUI
end)