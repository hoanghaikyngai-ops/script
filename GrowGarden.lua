local Config = getgenv().Config

local MainTab = Window:CreateTab("Cài Đặt Chính", 4483362458) 

MainTab:CreateSection("Tối Ưu Hoá")
MainTab:CreateToggle({
   Name = "Màn Hình Trắng (Giảm Lag)",
   CurrentValue = Config.Setting["White Screen"],
   Callback = function(Value)
        Config.Setting["White Screen"] = Value
        if Value then
            game:GetService("RunService"):Set3dRenderingEnabled(false) -- Cách xịn hơn để giảm lag
        else
            game:GetService("RunService"):Set3dRenderingEnabled(true)
        end
   end,
})

MainTab:CreateToggle({
   Name = "Tăng FPS (Xóa Texture)",
   CurrentValue = Config.Main["FPS Boost"],
   Callback = function(Value)
        Config.Main["FPS Boost"] = Value
   end,
})

MainTab:CreateSection("Tính Năng Vườn")
MainTab:CreateSlider({
   Name = "Số Cây Tối Đa Trong Vườn",
   Range = {10, 500},
   Increment = 10,
   Suffix = "Cây",
   CurrentValue = Config.Main["Max Plant"],
   Callback = function(Value)
        Config.Main["Max Plant"] = Value
   end,
})

MainTab:CreateToggle({
   Name = "Tự Động Mở Rộng Vườn",
   CurrentValue = Config.Main["Expand Garden"],
   Callback = function(Value)
        Config.Main["Expand Garden"] = Value
   end,
})

MainTab:CreateToggle({
   Name = "Xóa Cây Rẻ Tiền (<40% Giá Trị)",
   CurrentValue = Config.Main["Destroy Plants Priced Under 40% Most Expensive Plant"],
   Callback = function(Value)
        Config.Main["Destroy Plants Priced Under 40% Most Expensive Plant"] = Value
   end,
})

MainTab:CreateToggle({
   Name = "Tự Nhặt Hạt Vàng/Cầu Vồng",
   CurrentValue = Config.Main["Collect Gold/Rainbow Seed"],
   Callback = function(Value)
        Config.Main["Collect Gold/Rainbow Seed"] = Value
   end,
})

MainTab:CreateToggle({
   Name = "Tấn Công Người Trộm Quả",
   CurrentValue = Config.Main["Attack Player Steal Your Fruits"],
   Callback = function(Value)
        Config.Main["Attack Player Steal Your Fruits"] = Value
   end,
})
local FarmTab = Window:CreateTab("Nông Trại", 4483362458)

FarmTab:CreateSection("Quản Lý Hạt Giống")
FarmTab:CreateToggle({
   Name = "Tự Động Trồng Hạt Giống",
   CurrentValue = Config["Plant Seed"].Enable,
   Callback = function(Value)
        Config["Plant Seed"].Enable = Value
   end,
})

FarmTab:CreateToggle({
   Name = "Tự Động Mua Hạt Giống",
   CurrentValue = Config["Buy Seed"].Enable,
   Callback = function(Value)
        Config["Buy Seed"].Enable = Value
   end,
})
local GearTab = Window:CreateTab("Trang Bị & Pet", 4483362458)

GearTab:CreateSection("Mua Sắm Tự Động")
GearTab:CreateToggle({
   Name = "Tự Động Mua Trang Bị",
   CurrentValue = Config["Buy Gear"].Enable,
   Callback = function(Value)
        Config["Buy Gear"].Enable = Value
   end,
})

GearTab:CreateToggle({
   Name = "Tự Động Mua Thú Cưng (Pet)",
   CurrentValue = Config["Buy Pet"].Enable,
   Callback = function(Value)
        Config["Buy Pet"].Enable = Value
   end,
})

GearTab:CreateSection("Sử Dụng Trang Bị")
GearTab:CreateToggle({
   Name = "Sử Dụng Bình Tưới Nước",
   CurrentValue = Config["Use Gear"]["Use Watering Can"],
   Callback = function(Value)
        Config["Use Gear"]["Use Watering Can"] = Value
   end,
})

GearTab:CreateToggle({
   Name = "Sử Dụng Vòi Phun Nước",
   CurrentValue = Config["Use Gear"]["Use Sprinkler"],
   Callback = function(Value)
        Config["Use Gear"]["Use Sprinkler"] = Value
   end,
})
