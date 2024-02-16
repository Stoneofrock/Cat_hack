function p()
 local current_year = os.date("*t").year

  function aa1_cat() ---罐頭2.0
    gg.clearResults() 
    gg.setRanges(262207)
    local search_string = '28,800;' .. tostring(current_year) .. ':13'   
    gg.searchNumber(search_string,4)
    
    local y=gg.getResults(1) 
    local k=gg.prompt(   { '要修改的罐頭數量' } ,{ '填数字'}  )
    gg.addListItems(  {{ address=y[1]. address+-0xCC,flags=4,freeze=true,value=k[1]  }} )
    gg.addListItems(  {{ address=y[1]. address+-0xC8,flags=4,freeze=true,value=0 }} )
    gg.alert('修改成功 此功能不穩定')
    gg.clearResults() 
    end

  function aa1_XP() ---xp2.0改版
    gg.clearResults() 
    gg.setRanges(262207)
   local search_string = '28,800;' .. tostring(current_year) .. ':13'   
    gg.searchNumber(search_string,4)
    
    local y=gg.getResults(1) 
    local k=gg.prompt(   { '要修改的xp數量' } ,{ '填数字'}  )
    gg.addListItems(  {{ address=y[1]. address+0x30,flags=4,freeze=true,value=k[1]  }} )
    gg.addListItems(  {{ address=y[1]. address+0x34,flags=4,freeze=true,value=0 }} )
    gg.alert('修改成功 此功能不穩定')
    gg.clearResults() 
    end

  function s3()  --單爆塔
  gg.clearResults() 
  gg.setRanges(262207)
  gg.searchNumber('3,200;4,400;1,800',4)   
  local y=gg.getResults(1) 
  gg.setValues(  {{ address=y[1]. address+0x14,flags=4,value=0  }} )
  gg.clearResults() 
  end

  function s2()  ----常駐爆塔
  gg.clearResults() 
  gg.setRanges(262207)
  gg.searchNumber('3,200;4,400;1,800',4) 
  
  local y=gg.getResults(1) 
  gg.addListItems(  {{ address=y[1]. address+0x14,flags=4,freeze=true,value=0  }} )
  gg.clearResults()   
  end
   function allmap() --解鎖地圖
    gg.clearResults() 
    gg.setRanges(262207)
  local search_string = '28,800;' .. tostring(current_year) .. ':13'   
    gg.searchNumber(search_string,4)
    
    local y=gg.getResults(1) 
    gg.addListItems(  {{ address=y[1]. address+0x56C,flags=4,freeze=true,value=0  }} )
    gg.addListItems(  {{ address=y[1]. address+0x570,flags=4,freeze=true,value=0  }} )
    gg.addListItems(  {{ address=y[1]. address+0x574,flags=4,freeze=true,value=0  }} )
    gg.addListItems(  {{ address=y[1]. address+0x578,flags=4,freeze=true,value=0  }} )
    gg.addListItems(  {{ address=y[1]. address+0x57C,flags=4,freeze=true,value=0  }} )
    gg.addListItems(  {{ address=y[1]. address+0x580,flags=4,freeze=true,value=0  }} )
    gg.addListItems(  {{ address=y[1]. address+0x584,flags=4,freeze=true,value=0  }} )
    gg.addListItems(  {{ address=y[1]. address+0x588,flags=4,freeze=true,value=0  }} )
    gg.addListItems(  {{ address=y[1]. address+0x58C,flags=4,freeze=true,value=0  }} )
    gg.addListItems(  {{ address=y[1]. address+0x590,flags=4,freeze=true,value=0  }} )
    gg.addListItems(  {{ address=y[1]. address+0x594,flags=4,freeze=true,value=48  }} )
   
    gg.clearResults() 
    end
  

  function reset()
  gg.alert("重設完成")
  text= gg.makeRequest("https://raw.githubusercontent.com/Stoneofrock/cat/main/updatefile.lua").content
  file = io.open("local.lua", "w") 
  file:write(text)
  file:close()
  os.exit()
  end
  function ss1()  
  gg.alert("1.如果報錯重開即可 \n            ")
  gg.alert("2.秒通關是必須進遊戲才能用    ")
  gg.alert("3.如果有問題可以聯絡作者      ")
  gg.alert("⧸⎩⎠⎞͏(・∀・)⎛͏⎝⎭⧹")
  end
  function bbs()           
    zhy= gg.makeRequest("https://pan.ly93.cc/f/1Mwf8/%E5%85%AC%E5%91%8A.txt").content
gg.alert(zhy)
    end

  function question1() ---xp問題
  gg.clearResults() 
  gg.setRanges(262207)
  gg.searchNumber('28,800;2,023:9',4)
  local y=gg.getResults(1)  
  gg.addListItems(  {{ address=y[1]. address+0x30,flags=4,freeze=true,value=0  }} )
  gg.clearResults() 
  end

  function question2() ---罐頭問題
  gg.clearResults() 
  gg.setRanges(262207)
  gg.searchNumber('28,800;2,023:9',4)   
  local y=gg.getResults(1) 
  gg.addListItems(  {{ address=y[1]. address+-0xc8,flags=4,freeze=true,value=0 }} )
  gg.clearResults() 
  end

  function question() ----解決問題
  k=gg.multiChoice (  {'xp出現亂碼' , '罐頭出現亂碼'  }  )
  if k==nil then gg.alert('請選擇出現的狀況喔')  os.exit() end   
  if k[1]==true then question1() end
   if k[2]==true then question2() end 
   gg.alert("問題解決*-*")
   gg.clearResults() 
   end
   function hp() --無敵
  gg.clearResults() 
  gg.setRanges(262207)
   local search_string = '4,400;1,000;' .. tostring(current_year) .. ':49'
  gg.searchNumber(search_string,4)   
  local y=gg.getResults(1) 
  gg.addListItems(  {{ address=y[1]. address+0x10,flags=4,freeze=true,value=9999999 }} )
  gg.clearResults() 
   end
  function pvp() ---排行榜
  gg.clearResults() 
  gg.setRanges(262207)
  gg.searchNumber('1,178;1,062;1,000;3,600;1,000:1921',4)   
  local y=gg.getResults(1)
  local k=gg.prompt(   { '修改排行榜' } ,{ '輸入數字'}  ) 
  gg.addListItems(  {{ address=y[1]. address+0x74,flags=4,freeze=true,value=k[1] }} )
  gg.clearResults() 
   end
  function cat1() ----解決問題
  k=gg.multiChoice (  {'無敵' , '秒過關',"排行榜","關閉"  }  )
  if k==nil then  os.exit() end   
  if k[1]==true then hp() end
   if k[2]==true then ff() end 
    if k[3]==true then gg.alert("修理中...") end
     if k[4]==true then os.exit() end
    
   gg.clearResults() 
   end
  
  function ff()       ---選單1
  k=gg.multiChoice (  {'常駐秒過關' , '秒過關',"關閉"  }  )
  if k==nil then os.exit() end   
  if k[1]==true then s2() end
   if k[2]==true then s3() end 
    if k[3] ==true then os.exit()end
   end
  function cc()         --選單2
  k=gg.multiChoice (  {"罐頭修改2.0","XP修改2.0","全通關","關閉"  }  )
  if k==nil then  os.exit() end   
  
    if k[1]==true then aa1_cat()end 
    if k[2]==true then aa1_XP()end 
    if k[3]==true then allmap( )end
    if k[4] ==true then os.exit()end
  end
 
  
  
  

  local y=gg.choice({"😺基礎功能","😈不穩定功能","關閉","解決問題","公告","重設"},1,'可以點擊按鈕') --選單3
   if y==3 then os.exit()
    elseif y==1 then cat1()
    elseif y==2 then cc()
    elseif y==4 then question()
    elseif y==5 then bbs()
    elseif y==6 then reset()
    else gg.setVisible(false)end
  end 
  
  gg.showUiButton()
  while true do
   if gg.isClickedUiButton()==true then p() end
  end
  gg.clearResults() 
