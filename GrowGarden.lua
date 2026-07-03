local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Grow a Garden 2 | Auto Farm",
   LoadingTitle = "Đang tải giao diện...",
   LoadingSubtitle = "by hoanghai-hub",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "GardenHub",
      FileName = "GardenConfig"
   },
   KeySystem = false
})
local MainTab = Window:CreateTab("Cài Đặt Chính", 4483362458) 

MainTab:CreateToggle({
   Name = "Màn Hình Trắng (Giảm Lag)",
   CurrentValue = getgenv().Config["Setting"]["White Screen"],
   Callback = function(Value)
        getgenv().Config["Setting"]["White Screen"] = Value
        if Value then
            game:GetService("Lighting").Brightness = 2
            game:GetService("Lighting").Ambient = Color3.fromRGB(255, 255, 255)
        else
            game:GetService("Lighting").Brightness = 1
            game:GetService("Lighting").Ambient = Color3.fromRGB(200, 200, 200)
        end
   end,
})

MainTab:CreateToggle({
   Name = "Tăng FPS (Xóa Texture)",
   CurrentValue = getgenv().Config["Main"]["FPS Boost"],
   Callback = function(Value)
        getgenv().Config["Main"]["FPS Boost"] = Value
        if Value then
            settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
        else
            settings().Rendering.QualityLevel = Enum.QualityLevel.Automatic
        end
   end,
})

MainTab:CreateSlider({
   Name = "Số Cây Tối Đa Trong Vườn",
   Range = {10, 500},
   Increment = 10,
   Suffix = "Cây",
   CurrentValue = getgenv().Config["Main"]["Max Plant"],
   Callback = function(Value)
        getgenv().Config["Main"]["Max Plant"] = Value
   end,
})

MainTab:CreateToggle({
   Name = "Tự Động Mở Rộng Vườn",
   CurrentValue = getgenv().Config["Main"]["Expand Garden"],
   Callback = function(Value)
        getgenv().Config["Main"]["Expand Garden"] = Value
   end,
})

MainTab:CreateToggle({
   Name = "Xóa Cây Rẻ Tiền (<40% Giá Trị)",
   CurrentValue = getgenv().Config["Main"]["Destroy Plants Priced Under 40% Most Expensive Plant"],
   Callback = function(Value)
        getgenv().Config["Main"]["Destroy Plants Priced Under 40% Most Expensive Plant"] = Value
   end,
})

MainTab:CreateToggle({
   Name = "Tự Nhặt Hạt Vàng/Cầu Vồng",
   CurrentValue = getgenv().Config["Main"]["Collect Gold/Rainbow Seed"],
   Callback = function(Value)
        getgenv().Config["Main"]["Collect Gold/Rainbow Seed"] = Value
   end,
})

MainTab:CreateToggle({
   Name = "Tấn Công Người Trộm Quả",
   CurrentValue = getgenv().Config["Main"]["Attack Player Steal Your Fruits"],
   Callback = function(Value)
        getgenv().Config["Main"]["Attack Player Steal Your Fruits"] = Value
   end,
})
local FarmTab = Window:CreateTab("Nông Trại", 4483362458)

FarmTab:CreateToggle({
   Name = "Tự Động Trồng Hạt Giống",
   CurrentValue = getgenv().Config["Plant Seed"]["Enable"],
   Callback = function(Value)
        getgenv().Config["Plant Seed"]["Enable"] = Value
   end,
})

FarmTab:CreateToggle({
   Name = "Tự Động Mua Hạt Giống",
   CurrentValue = getgenv().Config["Buy Seed"]["Enable"],
   Callback = function(Value)
        getgenv().Config["Buy Seed"]["Enable"] = Value
   end,
})
local FarmTab = Window:CreateTab("Nông Trại", 4483362458)

FarmTab:CreateToggle({
   Name = "Tự Động Trồng Hạt Giống",
   CurrentValue = getgenv().Config["Plant Seed"]["Enable"],
   Callback = function(Value)
        getgenv().Config["Plant Seed"]["Enable"] = Value
   end,
})
local GearTab = Window:CreateTab("Trang Bị & Pet", 4483362458)

GearTab:CreateToggle({
   Name = "Tự Động Mua Trang Bị",
   CurrentValue = getgenv().Config["Buy Gear"]["Enable"],
   Callback = function(Value)
        getgenv().Config["Buy Gear"]["Enable"] = Value
   end,
})

GearTab:CreateToggle({
   Name = "Tự Động Mua Thú Cưng (Pet)",
   CurrentValue = getgenv().Config["Buy Pet"]["Enable"],
   Callback = function(Value)
        getgenv().Config["Buy Pet"]["Enable"] = Value
   end,
})

GearTab:CreateToggle({
   Name = "Sử Dụng Bình Tưới",
   CurrentValue = getgenv().Config["Use Gear"]["Use Watering Can"],
   Callback = function(Value)
        getgenv().Config["Use Gear"]["Use Watering Can"] = Value
   end,
})

GearTab:CreateToggle({
   Name = "Sử Dụng Vòi Phun Nước",
   CurrentValue = getgenv().Config["Use Gear"]["Use Sprinkler"],
   Callback = function(Value)
        getgenv().Config["Use Gear"]["Use Sprinkler"] = Value
   end,
})
Rayfield:Notify({
   Title = "Thành Công!",
   Content = "Bảng điều khiển đã được tải đầy đủ.",
   Duration = 5,
   Image = 4483362458,
})
