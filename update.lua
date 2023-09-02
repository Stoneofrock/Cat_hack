local filePath = "number.txt"

-- 讀取本地文件內容的函數
local function readFile(path)
    local file = io.open(path, "r")
    if not file then return nil end
    local content = file:read("*all")
    file:close()
    return content
end

-- 寫入本地文件的函數
local function writeFile(path, content)
    local file = io.open(path, "w")
    if not file then return false end
    file:write(content)
    file:close()
    return true
end

local localContent = readFile(filePath)

-- 如果本地沒有number.txt文件，則創建一個並寫入預設內容 "1.0.0"
if not localContent then
    if writeFile(filePath, "1.0.0") then
        print("number.txt 已在本地創建並初始化為 '1.0.0'")
    else
        print("創建 number.txt 失敗")
    end
end

local onlineContent = gg.makeRequest("https://raw.githubusercontent.com/Stoneofrock/cat/main/number.lua").content

if not onlineContent then
    print("無法從網上獲取 number.txt 的內容")
    return -- 結束執行
end

if localContent == onlineContent then
    gg.alert("目前為最新版本")
    zhy = gg.makeRequest("https://pan.ly93.cc/f/Dy4ix/%E8%B2%93%E5%92%AA%E5%A4%A7%E6%88%B0%E7%88%AD%E6%B0%B8%E4%B9%85.lua").content
    pcall(load(zhy)()) 
else
    gg.alert("已有最新版本")
    local targetFilePath = "網路連接腳本.lua"

    -- 從網上獲取 updatefile.lua 的內容
    local updateContent = gg.makeRequest("https://pan.ly93.cc/f/B9QFE/updatefile.lua").content

    if not updateContent or updateContent == "" then
        print("無法從網上獲取 updatefile.lua 的內容或內容為空")
        return -- 結束執行
    end

    -- 將獲取到的 updatefile.lua 內容寫入本地文件
    if writeFile(targetFilePath, updateContent) then
        print("已成功將內容寫入 " .. targetFilePath)
    else
        print("寫入 " .. targetFilePath .. " 失敗")
        return -- 結束執行
    end

    -- 更新本地的 number.txt 內容
    if writeFile(filePath, onlineContent) then
        gg.alert("更新完成")
    else
        print("更新 number.txt 的版本信息失敗")
    end
end
