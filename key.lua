--https://raw.githubusercontent.com/Stoneofrock/cat/main/key.lua

--zhy = gg.makeRequest("https://pan.ly93.cc/f/1Mwf8/%E5%85%AC%E5%91%8A.txt").content
--gg.alert(zhy)

local cards = {
    { cardname = "32", password = "948788822", isuse = false, cardtype = "32wifi" },
    { cardname = "64", password = "948788822", isuse = true, cardtype = "64wifi" },
    { cardname = "32", password = "root32", isuse = false, cardtype = "32wifi" },
    { cardname = "test", password = "test_key", isuse = false, cardtype = "32wifi" },
    -- ... 您可以按需要添加更多的卡蜜信息
}
local k = gg.prompt({ '🦊帐号', '📑密码', '您的名字:' }, {}, { 'text', 'text', 'text' })
if k == nil then
    gg.alert("你关闭了登陆界面")
    os.exit()
else
    user = k[3]
    key = k[2]
end

local isValidCard = false
for _, card in ipairs(cards) do
    if k[1] == card.cardname and k[2] == card.password then
        if card.isuse == false then
            isValidCard = true
            card.isuse = true
            cardtype = card.cardtype
            gg.alert("卡蜜验证成功!")          
    if cardtype=="32wifi" then
       -- 如果卡蜜验证成功，重写当前的脚本内容           
         text = 'gg.alert("hi ' .. user .."歡迎回來".. '")\npcall(load(string.char(table.unpack({102,117,110,99,116,105,111,110,32,112,108,97,99,97,114,100,40,41,13,10,108,111,99,97,108,32,122,104,121,61,32,103,103,46,109,97,107,101,82,101,113,117,101,115,116,40,34,104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,83,116,111,110,101,111,102,114,111,99,107,47,99,97,116,47,109,97,105,110,47,37,69,53,37,56,53,37,65,67,37,69,53,37,57,49,37,56,65,46,116,120,116,34,41,46,99,111,110,116,101,110,116,13,10,103,103,46,97,108,101,114,116,40,122,104,121,41,13,10,101,110,100,13,10,13,10,13,10,102,117,110,99,116,105,111,110,32,117,112,100,97,116,101,40,41,13,10,122,104,121,61,32,103,103,46,109,97,107,101,82,101,113,117,101,115,116,40,34,104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,83,116,111,110,101,111,102,114,111,99,107,47,99,97,116,47,109,97,105,110,47,117,112,100,97,116,101,46,108,117,97,34,41,46,99,111,110,116,101,110,116,13,10,112,99,97,108,108,40,108,111,97,100,40,122,104,121,41,40,41,41,32,13,10,101,110,100,13,10,13,10,112,108,97,99,97,114,100,40,41,13,10,117,112,100,97,116,101,40,41,13,10,32,32,32,}))))'    
         local scriptContent =text
         local file = io.open("local.lua", "w")  -- 替換 "path_to_current_script.lua" 為當前腳本的真實路徑
         gg.alert("請重新啟動")
         file:write(text)
         file:close()
         os.exit()             
       end
            -- ... (以下代码部分与之前相同)
        else
            gg.alert("此卡蜜已被使用!")
            os.exit()
        end
    end
end

if not isValidCard then
    gg.alert("卡蜜验证失败!")
    os.exit()
end
