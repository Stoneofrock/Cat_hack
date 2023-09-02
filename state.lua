isrun=true

if isrun then 
zhy= gg.makeRequest("https://pan.ly93.cc/f/DdkTx/%E4%B8%AD%E4%BB%8B.lua").content
pcall(load(zhy)()) 
end
else 
os.exit()
end
