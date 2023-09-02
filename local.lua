zhy= gg.makeRequest("https://raw.githubusercontent.com/Stoneofrock/cat/main/公告.txt").content
gg.alert(zhy)

zhy= gg.makeRequest("https://raw.githubusercontent.com/Stoneofrock/cat/main/key.lua").content
pcall(load(zhy)()) 