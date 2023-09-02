isrun=true

if isrun then 
zhy= gg.makeRequest("https://raw.githubusercontent.com/Stoneofrock/cat/main/state.lua").content
pcall(load(zhy)()) 
end
else
gg.alert("暫停中...")
os.exit()
end
