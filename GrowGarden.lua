getgenv().Config = {
    ["Setting"] = {
        ["White Screen"] = false
    },
    ["Main"] = {
        ["Max Plant"] = 200,
        ["Expand Garden"] = true,
        ["Destroy Plants Priced Under 40% Most Expensive Plant"] = true,
        ["Collect Gold/Rainbow Seed"] = true,
        ["Attack Player Steal Your Fruits"] = true,
        ["FPS Boost"] = true
    },
    ["Plant Seed"] = {
        ["Enable"] = true,
        ["Seed"] = {"Bamboo","Blueberry","Apple","Tomato","Banana","Sunflower","Corn","Mushroom","Cherry","Mango","Grape","Coconut","Cactus","Baby Cactus","Pomegranate","Pineapple","Dragon Fruit","Poison Apple","Moon Bloom","Poison Ivy","Ghost Pepper","Venus Fly Trap","Dragon's Breath"}
    },
    ["Buy Seed"] = {
        ["Enable"] = true,
        ["Seed"] = {"Bamboo","Blueberry","Apple","Tomato","Banana","Sunflower","Corn","Mushroom","Cherry","Mango","Grape","Coconut","Cactus","Baby Cactus","Pomegranate","Pineapple","Dragon Fruit","Poison Apple","Moon Bloom","Poison Ivy","Ghost Pepper","Venus Fly Trap","Dragon's Breath"}
    },
    ["Buy Gear"] = {
        ["Enable"] = true,
        ["Gear"] = {"Common Watering Can","Common Sprinkler","Uncommon Sprinkler","Rare Sprinkler","Legendary Sprinkler","Super Watering Can","Super Sprinkler"}
    },
    ["Buy Pet"] = {
        ["Enable"] = false,
        ["Pet"] = {}
    },
    ["Use Gear"] = {
        ["Use Watering Can"] = true,
        ["Use Sprinkler"] = true
    },
    ["Favorite"] = {
        ["Enable"] = false,
        ["Rarity Fruits"] = {"Legendary","Mythic","Super"},
        ["Mutation"] = {"Starstruck","Bloodlit","Solarflare"},
        ["Minium Weight"] = 20
    },
    ["Mailbox"] = {
        ["Enable"] = false,
        ["Username"] = "",
        ["Note"] = "Send By hoanghai-hub",
        ["Delay"] = 40,
        ["Seed"] = {"Rainbow","Gold","Dragon's Breath"},
        ["Count Seed"] = 1,
        ["Gear"] = {},
        ["Count Gear"] = 1,
        ["Pet"] = {},
        ["Count Pet"] = 1
    },
    ["Webhook"] = {
        ["Enable"] = false,
        ["UrlWebhook"] = "",
        ["Favorite Fruits"] = true,
        ["Gold/Rainbow Seed"] = true,
        ["Buy Pet"] = true,
        ["Send Profile Player"] = true,
        ["Delay Send Profile Player"] = 180
    },
}

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "hoanghaizhub | Grow a Garden 2",
   LoadingTitle = "Đang tải bảng điều khiển...",
   LoadingSubtitle = "by Gemini Custom",
   ConfigurationSaving = {
      Enabled = false
   },
   KeySystem = false
})

local MainTab = Window:CreateTab("Cài Đặt Chính", 4483362458)

MainTab:CreateToggle({
   Name = "Màn hình trắng (Giảm lag/Treo máy)",
   CurrentValue = getgenv().Config["Setting"]["White Screen"],
   Callback = function(Value)
      getgenv().Config["Setting"]["White Screen"] = Value
   end,
})

MainTab:CreateSlider({
   Name = "Số cây tối đa trong vườn",
   Min = 10,
   Max = 500,
   CurrentValue = getgenv().Config["Main"]["Max Plant"],
   Increment = 10,
   ValueName = "Cây",
   Callback = function(Value)
      getgenv().Config["Main"]["Max Plant"] = Value
   end,
})

MainTab:CreateToggle({
   Name = "Tự động mở rộng vườn",
   CurrentValue = getgenv().Config["Main"]["Expand Garden"],
   Callback = function(Value)
      getgenv().Config["Main"]["Expand Garden"] = Value
   end,
})

MainTab:CreateToggle({
   Name = "Tự động nhổ cây rẻ tiền (<40%)",
   CurrentValue = getgenv().Config["Main"]["Destroy Plants Priced Under 40% Most Expensive Plant"],
   Callback = function(Value)
      getgenv().Config["Main"]["Destroy Plants Priced Under 40% Most Expensive Plant"] = Value
   end,
})

MainTab:CreateToggle({
   Name = "Nhặt hạt giống Vàng/Cầu vồng",
   CurrentValue = getgenv().Config["Main"]["Collect Gold/Rainbow Seed"],
   Callback = function(Value)
      getgenv().Config["Main"]["Collect Gold/Rainbow Seed"] = Value
   end,
})

MainTab:CreateToggle({
   Name = "Đập đứa nào trộm quả",
   CurrentValue = getgenv().Config["Main"]["Attack Player Steal Your Fruits"],
   Callback = function(Value)
      getgenv().Config["Main"]["Attack Player Steal Your Fruits"] = Value
   end,
})

MainTab:CreateToggle({
   Name = "Tăng FPS",
   CurrentValue = getgenv().Config["Main"]["FPS Boost"],
   Callback = function(Value)
      getgenv().Config["Main"]["FPS Boost"] = Value
   end,
})

local FarmTab = Window:CreateTab("Trồng & Mua Hạt", 4483362458)

FarmTab:CreateToggle({
   Name = "Tự Động Trồng Cây",
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

local UpgradeTab = Window:CreateTab("Trang Bị & Pet", 4483362458)

UpgradeTab:CreateToggle({
   Name = "Tự động mua Bình tưới/Máy phun nước",
   CurrentValue = getgenv().Config["Buy Gear"]["Enable"],
   Callback = function(Value)
      getgenv().Config["Buy Gear"]["Enable"] = Value
   end,
})

UpgradeTab:CreateToggle({
   Name = "Sử dụng Bình tưới nước",
   CurrentValue = getgenv().Config["Use Gear"]["Use Watering Can"],
   Callback = function(Value)
      getgenv().Config["Use Gear"]["Use Watering Can"] = Value
   end,
})

UpgradeTab:CreateToggle({
   Name = "Sử dụng Máy phun nước",
   CurrentValue = getgenv().Config["Use Gear"]["Use Sprinkler"],
   Callback = function(Value)
      getgenv().Config["Use Gear"]["Use Sprinkler"] = Value
   end,
})

UpgradeTab:CreateToggle({
   Name = "Tự động mua Thú cưng (Pet)",
   CurrentValue = getgenv().Config["Buy Pet"]["Enable"],
   Callback = function(Value)
      getgenv().Config["Buy Pet"]["Enable"] = Value
   end,
})

local FavoriteTab = Window:CreateTab("Ưu Tiên", 4483362458)

FavoriteTab:CreateToggle({
   Name = "Bật chức năng yêu thích",
   CurrentValue = getgenv().Config["Favorite"]["Enable"],
   Callback = function(Value)
      getgenv().Config["Favorite"]["Enable"] = Value
   end,
})

local ActionTab = Window:CreateTab("Kích Hoạt", 4483362458)

ActionTab:CreateButton({
   Name = "BẮT ĐẦU CHẠY SCRIPT (START)",
   Callback = function()
      Rayfield:Notify({
         Title = "HoangHaizHub",
         Content = "Đang kích hoạt mã nguồn cày game...",
         Duration = 5,
         Image = 4483362458,
      })
      
      -- Script logic will be implemented here
      print("Script activated! Config loaded.")
   end,
})

Rayfield:Notify({
   Title = "Thành công!",
   Content = "Đã tạo bảng điều khiển. Hãy chỉnh thông số rồi bấm Kích Hoạt!",
   Duration = 5,
   Image = 4483362458,
})
