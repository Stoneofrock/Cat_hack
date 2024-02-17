local filePath = "number.txt"
local current_time = os.date()
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
 return True
end

local function writeFile2(path, content)
    local file = io.open(path, "a")
    if not file then return false end
    file:write(content "\n" )
    file:close()
   return True
end
local localContent = readFile(filePath)

-- 如果本地沒有number.txt文件，則創建一個並寫入預設內容 "1.0.0"
if not localContent then
    if writeFile(filePath, "1.0.0") then
        
    else
        
    end
end

local onlineContent = gg.makeRequest("https://raw.githubusercontent.com/Stoneofrock/cat/main/number.lua").content

if not onlineContent then
    print("無法從網上獲取 number.txt 的內容")
    return -- 結束執行
end

if localContent == onlineContent then
    gg.alert("目前為最新版本")
    writeFile2("log.txt", current_time)
    zhy = gg.makeRequest("https://raw.githubusercontent.com/Stoneofrock/cat/main/code.lua").content
     
    pcall(load(zhy)()) 
    
else
    gg.alert("已有最新版本")
    local targetFilePath = "key.lua"

    -- 從網上獲取 updatefile.lua 的內容
    local updateContent = gg.makeRequest("https://raw.githubusercontent.com/Stoneofrock/cat/main/updatefile.lua").content

    if not updateContent or updateContent == "" then
        print("無法從網上獲取 updatefile.lua 的內容或內容為空")
        return -- 結束執行
    end

    -- 將獲取到的 updatefile.lua 內容寫入本地文件
    if writeFile(targetFilePath, updateContent) then
       
    else
      
        return -- 結束執行
    end

    -- 更新本地的 number.txt 內容
    if writeFile(filePath, onlineContent) then
        gg.alert("更新完成")
    else
       
    end
end
