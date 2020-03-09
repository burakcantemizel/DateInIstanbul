local offx = 8
local offy = 8

function loadHairs()
  hairButtons = {}
  hairColorButtons = {}
  hairColorList = {
      {255,255,255},
      {255,255,255},
      {255,255,255},
      {255,255,255},
      {255,255,255},
      {255,255,255},
      {255,255,255},
      {255,255,255},
      {255,255,255},
      {255,255,255},
      {255,255,255},
      {255,255,255},
      {255,255,255},
      {255,255,255},
      {255,255,255}
  }
  
  for i=1,6 do
    table.insert(hairColorButtons, {})
    table.insert(hairButtons, Button(8 + 32 * (i-1) + 8 * (i-1), 8 + 32 * 6 + 8 * 6, 32, 32, function() hairNumber = i-1 end, ""..i))
    for j=1,15 do
      if j <= 5 then
        table.insert(hairColorButtons[i], Button(208-32*4-8*4 + 32 * j + 8 * j, 8 + 32 * 6 + 8 *6, 32, 32, function() hairColor = j end, hairColorList[j]))
      elseif j <= 10 then
        table.insert(hairColorButtons[i], Button(208-32*4-8*4 + 32 * (j-5) + 8 * (j-5), 8 + 32 * 7 + 8 *7, 32, 32, function() hairColor = j end, hairColorList[j]))
      else 
        table.insert(hairColorButtons[i], Button(208-32*4-8*4 + 32 * (j-10) + 8 * (j-10), 8 + 32 * 7 + 8 *7, 32, 32, function() hairColor = j end, hairColorList[j]))
      end
    end
  end
  --[[
  hairButton0 = Button(8 + 32 * 0 + 8 * 0, 8 + 32 * 1 + 8 * 1, 32, 32, function() hairNumber = 0 end, "0")
  hairButton1 = Button(8 + 32 * 1 + 8 * 1, 8 + 32 * 1 + 8 * 1, 32, 32, function() hairNumber = 1 end, "1")
  hairButton2 = Button(8 + 32 * 2 + 8 * 2, 8 + 32 * 1 + 8 * 1, 32, 32, function() hairNumber = 2 end, "2")
  hairButton3 = Button(8 + 32 * 3 + 8 * 3, 8 + 32 * 1 + 8 * 1, 32, 32, function() hairNumber = 3 end, "3")
  hairButton4 = Button(8 + 32 * 4 + 8 * 4, 8 + 32 * 1 + 8 * 1, 32, 32, function() hairNumber = 4 end, "4")
  hairButton5 = Button(8 + 32 * 5 + 8 * 5, 8 + 32 * 1 + 8 * 1, 32, 32, function() hairNumber = 5 end, "5")
  --]]
  
  --[[
  hair1ColorButton1 = Button(208 + 32 * 1 + 8 * 1, 8 + 32 * 1 + 8 *1, 32, 32, function() hairColor = 1 end, {255,255,255})
  hair1ColorButton2 = Button(208 + 32 * 2 + 8 * 2, 8 + 32 * 1 + 8 *1, 32, 32, function() hairColor = 2 end, {255,255,255})
  hair1ColorButton3 = Button(208 + 32 * 3 + 8 * 3, 8 + 32 * 1 + 8 *1, 32, 32, function() hairColor = 3 end, {255,255,255})
  hair1ColorButton4 = Button(208 + 32 * 4 + 8 * 4, 8 + 32 * 1 + 8 *1, 32, 32, function() hairColor = 4 end, {255,255,255})
  hair1ColorButton5 = Button(208 + 32 * 5 + 8 * 5, 8 + 32 * 1 + 8 *1, 32, 32, function() hairColor = 5 end, {255,255,255})
  hair1ColorButton6 = Button(208 + 32 * 1 + 8 * 1, 8 + 32 * 2 + 8 *2, 32, 32, function() hairColor = 6 end, {255,255,255})
  hair1ColorButton7 = Button(208 + 32 * 2 + 8 * 2, 8 + 32 * 2 + 8 *2, 32, 32, function() hairColor = 7 end, {255,255,255})
  hair1ColorButton8 = Button(208 + 32 * 3 + 8 * 3, 8 + 32 * 2 + 8 *2, 32, 32, function() hairColor = 8 end, {255,255,255})
  hair1ColorButton9 = Button(208 + 32 * 4 + 8 * 4, 8 + 32 * 2 + 8 *2, 32, 32, function() hairColor = 9 end, {255,255,255})
  hair1ColorButton10 = Button(208 + 32 * 5 + 8 * 5, 8 + 32 * 2 + 8 *2, 32, 32, function() hairColor = 10 end, {255,255,255})
  hair1ColorButton11 = Button(208 + 32 * 1 + 8 * 1, 8 + 32 * 3 + 8 *3, 32, 32, function() hairColor = 11 end, {255,255,255})
  hair1ColorButton12 = Button(208 + 32 * 2 + 8 * 2, 8 + 32 * 3 + 8 *3, 32, 32, function() hairColor = 12 end, {255,255,255})
  hair1ColorButton13 = Button(208 + 32 * 3 + 8 * 3, 8 + 32 * 3 + 8 *3, 32, 32, function() hairColor = 13 end, {255,255,255})
  hair1ColorButton14 = Button(208 + 32 * 4 + 8 * 4, 8 + 32 * 3 + 8 *3, 32, 32, function() hairColor = 14 end, {255,255,255})
  hair1ColorButton15 = Button(208 + 32 * 5 + 8 * 5, 8 + 32 * 3 + 8 *3, 32, 32, function() hairColor = 15 end, {255,255,255})
  
  hair2ColorButton1 = Button(208 + 32 * 1 + 8 * 1, 8 + 32 * 1 + 8 *1, 32, 32, function() hairColor = 1 end, {255,255,255})
  hair2ColorButton2 = Button(208 + 32 * 2 + 8 * 2, 8 + 32 * 1 + 8 *1, 32, 32, function() hairColor = 2 end, {255,255,255})
  hair2ColorButton3 = Button(208 + 32 * 3 + 8 * 3, 8 + 32 * 1 + 8 *1, 32, 32, function() hairColor = 3 end, {255,255,255})
  hair2ColorButton4 = Button(208 + 32 * 4 + 8 * 4, 8 + 32 * 1 + 8 *1, 32, 32, function() hairColor = 4 end, {255,255,255})
  hair2ColorButton5 = Button(208 + 32 * 5 + 8 * 5, 8 + 32 * 1 + 8 *1, 32, 32, function() hairColor = 5 end, {255,255,255})
  hair2ColorButton6 = Button(208 + 32 * 1 + 8 * 1, 8 + 32 * 2 + 8 *2, 32, 32, function() hairColor = 6 end, {255,255,255})
  hair2ColorButton7 = Button(208 + 32 * 2 + 8 * 2, 8 + 32 * 2 + 8 *2, 32, 32, function() hairColor = 7 end, {255,255,255})
  hair2ColorButton8 = Button(208 + 32 * 3 + 8 * 3, 8 + 32 * 2 + 8 *2, 32, 32, function() hairColor = 8 end, {255,255,255})
  hair2ColorButton9 = Button(208 + 32 * 4 + 8 * 4, 8 + 32 * 2 + 8 *2, 32, 32, function() hairColor = 9 end, {255,255,255})
  hair2ColorButton10 = Button(208 + 32 * 5 + 8 * 5, 8 + 32 * 2 + 8 *2, 32, 32, function() hairColor = 10 end, {255,255,255})
  hair2ColorButton11 = Button(208 + 32 * 1 + 8 * 1, 8 + 32 * 3 + 8 *3, 32, 32, function() hairColor = 11 end, {255,255,255})
  hair2ColorButton12 = Button(208 + 32 * 2 + 8 * 2, 8 + 32 * 3 + 8 *3, 32, 32, function() hairColor = 12 end, {255,255,255})
  hair2ColorButton13 = Button(208 + 32 * 3 + 8 * 3, 8 + 32 * 3 + 8 *3, 32, 32, function() hairColor = 13 end, {255,255,255})
  hair2ColorButton14 = Button(208 + 32 * 4 + 8 * 4, 8 + 32 * 3 + 8 *3, 32, 32, function() hairColor = 14 end, {255,255,255})
  hair2ColorButton15 = Button(208 + 32 * 5 + 8 * 5, 8 + 32 * 3 + 8 *3, 32, 32, function() hairColor = 15 end, {255,255,255})
  
  hair3ColorButton1 = Button(208 + 32 * 1 + 8 * 1, 8 + 32 * 1 + 8 *1, 32, 32, function() hairColor = 1 end, {255,255,255})
  hair3ColorButton2 = Button(208 + 32 * 2 + 8 * 2, 8 + 32 * 1 + 8 *1, 32, 32, function() hairColor = 2 end, {255,255,255})
  hair3ColorButton3 = Button(208 + 32 * 3 + 8 * 3, 8 + 32 * 1 + 8 *1, 32, 32, function() hairColor = 3 end, {255,255,255})
  hair3ColorButton4 = Button(208 + 32 * 4 + 8 * 4, 8 + 32 * 1 + 8 *1, 32, 32, function() hairColor = 4 end, {255,255,255})
  hair3ColorButton5 = Button(208 + 32 * 5 + 8 * 5, 8 + 32 * 1 + 8 *1, 32, 32, function() hairColor = 5 end, {255,255,255})
  hair3ColorButton6 = Button(208 + 32 * 1 + 8 * 1, 8 + 32 * 2 + 8 *2, 32, 32, function() hairColor = 6 end, {255,255,255})
  hair3ColorButton7 = Button(208 + 32 * 2 + 8 * 2, 8 + 32 * 2 + 8 *2, 32, 32, function() hairColor = 7 end, {255,255,255})
  hair3ColorButton8 = Button(208 + 32 * 3 + 8 * 3, 8 + 32 * 2 + 8 *2, 32, 32, function() hairColor = 8 end, {255,255,255})
  hair3ColorButton9 = Button(208 + 32 * 4 + 8 * 4, 8 + 32 * 2 + 8 *2, 32, 32, function() hairColor = 9 end, {255,255,255})
  hair3ColorButton10 = Button(208 + 32 * 5 + 8 * 5, 8 + 32 * 2 + 8 *2, 32, 32, function() hairColor = 10 end, {255,255,255})
  hair3ColorButton11 = Button(208 + 32 * 1 + 8 * 1, 8 + 32 * 3 + 8 *3, 32, 32, function() hairColor = 11 end, {255,255,255})
  hair3ColorButton12 = Button(208 + 32 * 2 + 8 * 2, 8 + 32 * 3 + 8 *3, 32, 32, function() hairColor = 12 end, {255,255,255})
  hair3ColorButton13 = Button(208 + 32 * 3 + 8 * 3, 8 + 32 * 3 + 8 *3, 32, 32, function() hairColor = 13 end, {255,255,255})
  hair3ColorButton14 = Button(208 + 32 * 4 + 8 * 4, 8 + 32 * 3 + 8 *3, 32, 32, function() hairColor = 14 end, {255,255,255})
  hair3ColorButton15 = Button(208 + 32 * 5 + 8 * 5, 8 + 32 * 3 + 8 *3, 32, 32, function() hairColor = 15 end, {255,255,255})
  
  hair4ColorButton1 = Button(208 + 32 * 1 + 8 * 1, 8 + 32 * 1 + 8 *1, 32, 32, function() hairColor = 1 end, {255,255,255})
  hair4ColorButton2 = Button(208 + 32 * 2 + 8 * 2, 8 + 32 * 1 + 8 *1, 32, 32, function() hairColor = 2 end, {255,255,255})
  hair4ColorButton3 = Button(208 + 32 * 3 + 8 * 3, 8 + 32 * 1 + 8 *1, 32, 32, function() hairColor = 3 end, {255,255,255})
  hair4ColorButton4 = Button(208 + 32 * 4 + 8 * 4, 8 + 32 * 1 + 8 *1, 32, 32, function() hairColor = 4 end, {255,255,255})
  hair4ColorButton5 = Button(208 + 32 * 5 + 8 * 5, 8 + 32 * 1 + 8 *1, 32, 32, function() hairColor = 5 end, {255,255,255})
  hair4ColorButton6 = Button(208 + 32 * 1 + 8 * 1, 8 + 32 * 2 + 8 *2, 32, 32, function() hairColor = 6 end, {255,255,255})
  hair4ColorButton7 = Button(208 + 32 * 2 + 8 * 2, 8 + 32 * 2 + 8 *2, 32, 32, function() hairColor = 7 end, {255,255,255})
  hair4ColorButton8 = Button(208 + 32 * 3 + 8 * 3, 8 + 32 * 2 + 8 *2, 32, 32, function() hairColor = 8 end, {255,255,255})
  hair4ColorButton9 = Button(208 + 32 * 4 + 8 * 4, 8 + 32 * 2 + 8 *2, 32, 32, function() hairColor = 9 end, {255,255,255})
  hair4ColorButton10 = Button(208 + 32 * 5 + 8 * 5, 8 + 32 * 2 + 8 *2, 32, 32, function() hairColor = 10 end, {255,255,255})
  hair4ColorButton11 = Button(208 + 32 * 1 + 8 * 1, 8 + 32 * 3 + 8 *3, 32, 32, function() hairColor = 11 end, {255,255,255})
  hair4ColorButton12 = Button(208 + 32 * 2 + 8 * 2, 8 + 32 * 3 + 8 *3, 32, 32, function() hairColor = 12 end, {255,255,255})
  hair4ColorButton13 = Button(208 + 32 * 3 + 8 * 3, 8 + 32 * 3 + 8 *3, 32, 32, function() hairColor = 13 end, {255,255,255})
  hair4ColorButton14 = Button(208 + 32 * 4 + 8 * 4, 8 + 32 * 3 + 8 *3, 32, 32, function() hairColor = 14 end, {255,255,255})
  hair4ColorButton15 = Button(208 + 32 * 5 + 8 * 5, 8 + 32 * 3 + 8 *3, 32, 32, function() hairColor = 15 end, {255,255,255})
  
  hair5ColorButton1 = Button(208 + 32 * 1 + 8 * 1, 8 + 32 * 1 + 8 *1, 32, 32, function() hairColor = 1 end, {255,255,255})
  hair5ColorButton2 = Button(208 + 32 * 2 + 8 * 2, 8 + 32 * 1 + 8 *1, 32, 32, function() hairColor = 2 end, {255,255,255})
  hair5ColorButton3 = Button(208 + 32 * 3 + 8 * 3, 8 + 32 * 1 + 8 *1, 32, 32, function() hairColor = 3 end, {255,255,255})
  hair5ColorButton4 = Button(208 + 32 * 4 + 8 * 4, 8 + 32 * 1 + 8 *1, 32, 32, function() hairColor = 4 end, {255,255,255})
  hair5ColorButton5 = Button(208 + 32 * 5 + 8 * 5, 8 + 32 * 1 + 8 *1, 32, 32, function() hairColor = 5 end, {255,255,255})
  hair5ColorButton6 = Button(208 + 32 * 1 + 8 * 1, 8 + 32 * 2 + 8 *2, 32, 32, function() hairColor = 6 end, {255,255,255})
  hair5ColorButton7 = Button(208 + 32 * 2 + 8 * 2, 8 + 32 * 2 + 8 *2, 32, 32, function() hairColor = 7 end, {255,255,255})
  hair5ColorButton8 = Button(208 + 32 * 3 + 8 * 3, 8 + 32 * 2 + 8 *2, 32, 32, function() hairColor = 8 end, {255,255,255})
  hair5ColorButton9 = Button(208 + 32 * 4 + 8 * 4, 8 + 32 * 2 + 8 *2, 32, 32, function() hairColor = 9 end, {255,255,255})
  hair5ColorButton10 = Button(208 + 32 * 5 + 8 * 5, 8 + 32 * 2 + 8 *2, 32, 32, function() hairColor = 10 end, {255,255,255})
  hair5ColorButton11 = Button(208 + 32 * 1 + 8 * 1, 8 + 32 * 3 + 8 *3, 32, 32, function() hairColor = 11 end, {255,255,255})
  hair5ColorButton12 = Button(208 + 32 * 2 + 8 * 2, 8 + 32 * 3 + 8 *3, 32, 32, function() hairColor = 12 end, {255,255,255})
  hair5ColorButton13 = Button(208 + 32 * 3 + 8 * 3, 8 + 32 * 3 + 8 *3, 32, 32, function() hairColor = 13 end, {255,255,255})
  hair5ColorButton14 = Button(208 + 32 * 4 + 8 * 4, 8 + 32 * 3 + 8 *3, 32, 32, function() hairColor = 14 end, {255,255,255})
  hair5ColorButton15 = Button(208 + 32 * 5 + 8 * 5, 8 + 32 * 3 + 8 *3, 32, 32, function() hairColor = 15 end, {255,255,255})
  
  --]]
end

function drawHair()
   if hairNumber ~= 0 then
       love.graphics.draw(hairs[hairNumber][hairColor], GAME_WIDTH/2 + 280, GAME_HEIGHT/2 + 120, 0, 1, 1, hairs[hairNumber][hairColor]:getWidth()/2, hairs[hairNumber][hairColor]:getHeight()/2)
  end
end

function drawHairsButtons()
  for i,v in ipairs(hairButtons) do
    v:draw()
  end
end

function hairButtonsPressed(x,y,button,istouch)
  for i,v in ipairs(hairButtons) do
    v:mousepressed(x, y, button, istouch)
  end
end

function drawHairsColorMenu()
  
  --[[
   if hairNumber == 1 then
    drawHair1ColorMenu()
  elseif hairNumber == 2 then
    drawHair2ColorMenu()
  elseif hairNumber == 3 then
    drawHair3ColorMenu()
  elseif hairNumber == 4 then
    drawHair4ColorMenu()
  elseif hairNumber == 5 then
    drawHair5ColorMenu()
  end
  
  --]]
  
  if hairNumber == 1 then
    for i,v in ipairs(hairColorButtons[1]) do
      v:draw()
    end
  elseif hairNumber == 2 then
    for i,v in ipairs(hairColorButtons[2]) do
      v:draw()
    end
  elseif hairNumber == 3 then
    for i,v in ipairs(hairColorButtons[3]) do
      v:draw()
    end
  elseif hairNumber == 4 then
    for i,v in ipairs(hairColorButtons[4]) do
      v:draw()
    end
  elseif hairNumber == 5 then
    for i,v in ipairs(hairColorButtons[5]) do
      v:draw()
    end
  end
end

function hairColorButtonsPressed(x,y,button,istouch)
  
  
  
  for i=1,5 do
    for j=1,15 do
      hairColorButtons[i][j]:mousepressed(x, y, button, istouch)
    end
  end
  --[[
  if hairNumber == 1 then
    hair1ColorButton1:mousepressed(x, y, button, istouch)
    hair1ColorButton2:mousepressed(x, y, button, istouch)
    hair1ColorButton3:mousepressed(x, y, button, istouch)
    hair1ColorButton4:mousepressed(x, y, button, istouch)
    hair1ColorButton5:mousepressed(x, y, button, istouch)
    hair1ColorButton6:mousepressed(x, y, button, istouch)
    hair1ColorButton7:mousepressed(x, y, button, istouch)
    hair1ColorButton8:mousepressed(x, y, button, istouch)
    hair1ColorButton9:mousepressed(x, y, button, istouch)
    hair1ColorButton10:mousepressed(x, y, button, istouch)
    hair1ColorButton11:mousepressed(x, y, button, istouch)
    hair1ColorButton12:mousepressed(x, y, button, istouch)
    hair1ColorButton13:mousepressed(x, y, button, istouch)
    hair1ColorButton14:mousepressed(x, y, button, istouch)
    hair1ColorButton15:mousepressed(x, y, button, istouch)
  elseif hairNumber == 2 then
    hair2ColorButton1:mousepressed(x, y, button, istouch)
    hair2ColorButton2:mousepressed(x, y, button, istouch)
    hair2ColorButton3:mousepressed(x, y, button, istouch)
    hair2ColorButton4:mousepressed(x, y, button, istouch)
    hair2ColorButton5:mousepressed(x, y, button, istouch)
    hair2ColorButton6:mousepressed(x, y, button, istouch)
    hair2ColorButton7:mousepressed(x, y, button, istouch)
    hair2ColorButton8:mousepressed(x, y, button, istouch)
    hair2ColorButton9:mousepressed(x, y, button, istouch)
    hair2ColorButton10:mousepressed(x, y, button, istouch)
    hair2ColorButton11:mousepressed(x, y, button, istouch)
    hair2ColorButton12:mousepressed(x, y, button, istouch)
    hair2ColorButton13:mousepressed(x, y, button, istouch)
    hair2ColorButton14:mousepressed(x, y, button, istouch)
    hair2ColorButton15:mousepressed(x, y, button, istouch)
  elseif hairNumber == 3 then
    hair3ColorButton1:mousepressed(x, y, button, istouch)
    hair3ColorButton2:mousepressed(x, y, button, istouch)
    hair3ColorButton3:mousepressed(x, y, button, istouch)
    hair3ColorButton4:mousepressed(x, y, button, istouch)
    hair3ColorButton5:mousepressed(x, y, button, istouch)
    hair3ColorButton6:mousepressed(x, y, button, istouch)
    hair3ColorButton7:mousepressed(x, y, button, istouch)
    hair3ColorButton8:mousepressed(x, y, button, istouch)
    hair3ColorButton9:mousepressed(x, y, button, istouch)
    hair3ColorButton10:mousepressed(x, y, button, istouch)
    hair3ColorButton11:mousepressed(x, y, button, istouch)
    hair3ColorButton12:mousepressed(x, y, button, istouch)
    hair3ColorButton13:mousepressed(x, y, button, istouch)
    hair3ColorButton14:mousepressed(x, y, button, istouch)
    hair3ColorButton15:mousepressed(x, y, button, istouch)
  elseif hairNumber == 4 then
    hair4ColorButton1:mousepressed(x, y, button, istouch)
    hair4ColorButton2:mousepressed(x, y, button, istouch)
    hair4ColorButton3:mousepressed(x, y, button, istouch)
    hair4ColorButton4:mousepressed(x, y, button, istouch)
    hair4ColorButton5:mousepressed(x, y, button, istouch)
    hair4ColorButton6:mousepressed(x, y, button, istouch)
    hair4ColorButton7:mousepressed(x, y, button, istouch)
    hair4ColorButton8:mousepressed(x, y, button, istouch)
    hair4ColorButton9:mousepressed(x, y, button, istouch)
    hair4ColorButton10:mousepressed(x, y, button, istouch)
    hair4ColorButton11:mousepressed(x, y, button, istouch)
    hair4ColorButton12:mousepressed(x, y, button, istouch)
    hair4ColorButton13:mousepressed(x, y, button, istouch)
    hair4ColorButton14:mousepressed(x, y, button, istouch)
    hair4ColorButton15:mousepressed(x, y, button, istouch)
  elseif hairNumber == 5 then
    hair5ColorButton1:mousepressed(x, y, button, istouch)
    hair5ColorButton2:mousepressed(x, y, button, istouch)
    hair5ColorButton3:mousepressed(x, y, button, istouch)
    hair5ColorButton4:mousepressed(x, y, button, istouch)
    hair5ColorButton5:mousepressed(x, y, button, istouch)
    hair5ColorButton6:mousepressed(x, y, button, istouch)
    hair5ColorButton7:mousepressed(x, y, button, istouch)
    hair5ColorButton8:mousepressed(x, y, button, istouch)
    hair5ColorButton9:mousepressed(x, y, button, istouch)
    hair5ColorButton10:mousepressed(x, y, button, istouch)
    hair5ColorButton11:mousepressed(x, y, button, istouch)
    hair5ColorButton12:mousepressed(x, y, button, istouch)
    hair5ColorButton13:mousepressed(x, y, button, istouch)
    hair5ColorButton14:mousepressed(x, y, button, istouch)
    hair5ColorButton15:mousepressed(x, y, button, istouch)
  end
  --]]
end

--[[
function drawHair1ColorMenu()
  hair1ColorButton1:draw()
  hair1ColorButton2:draw()
  hair1ColorButton3:draw()
  hair1ColorButton4:draw()
  hair1ColorButton5:draw()
  hair1ColorButton6:draw()
  hair1ColorButton7:draw()
  hair1ColorButton8:draw()
  hair1ColorButton9:draw()
  hair1ColorButton10:draw()
  hair1ColorButton11:draw()
  hair1ColorButton12:draw()
  hair1ColorButton13:draw()
  hair1ColorButton14:draw()
  hair1ColorButton15:draw()
end

function drawHair2ColorMenu()
  hair2ColorButton1:draw()
  hair2ColorButton2:draw()
  hair2ColorButton3:draw()
  hair2ColorButton4:draw()
  hair2ColorButton5:draw()
  hair2ColorButton6:draw()
  hair2ColorButton7:draw()
  hair2ColorButton8:draw()
  hair2ColorButton9:draw()
  hair2ColorButton10:draw()
  hair2ColorButton11:draw()
  hair2ColorButton12:draw()
  hair2ColorButton13:draw()
  hair2ColorButton14:draw()
  hair2ColorButton15:draw()
end

function drawHair3ColorMenu()
  hair3ColorButton1:draw()
  hair3ColorButton2:draw()
  hair3ColorButton3:draw()
  hair3ColorButton4:draw()
  hair3ColorButton5:draw()
  hair3ColorButton6:draw()
  hair3ColorButton7:draw()
  hair3ColorButton8:draw()
  hair3ColorButton9:draw()
  hair3ColorButton10:draw()
  hair3ColorButton11:draw()
  hair3ColorButton12:draw()
  hair3ColorButton13:draw()
  hair3ColorButton14:draw()
  hair3ColorButton15:draw()
end

function drawHair4ColorMenu()
  hair4ColorButton1:draw()
  hair4ColorButton2:draw()
  hair4ColorButton3:draw()
  hair4ColorButton4:draw()
  hair4ColorButton5:draw()
  hair4ColorButton6:draw()
  hair4ColorButton7:draw()
  hair4ColorButton8:draw()
  hair4ColorButton9:draw()
  hair4ColorButton10:draw()
  hair4ColorButton11:draw()
  hair4ColorButton12:draw()
  hair4ColorButton13:draw()
  hair4ColorButton14:draw()
  hair4ColorButton15:draw()
end

function drawHair5ColorMenu()
  hair5ColorButton1:draw()
  hair5ColorButton2:draw()
  hair5ColorButton3:draw()
  hair5ColorButton4:draw()
  hair5ColorButton5:draw()
  hair5ColorButton6:draw()
  hair5ColorButton7:draw()
  hair5ColorButton8:draw()
  hair5ColorButton9:draw()
  hair5ColorButton10:draw()
  hair5ColorButton11:draw()
  hair5ColorButton12:draw()
  hair5ColorButton13:draw()
  hair5ColorButton14:draw()
  hair5ColorButton15:draw()
end

--]]
