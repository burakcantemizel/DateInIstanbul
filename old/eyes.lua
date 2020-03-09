function loadEyes()
  eyesButtons = {}
  eyesColorButtons = {}
  eyesColorList = {
      {
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
      },
      
      {
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
      }
  }
  
  for i=1,2 do
    table.insert(eyesColorButtons, {})
    table.insert(eyesButtons, Button(8-32-8 + 32 * i + 8 * i, 8 + 32 * 6 + 8 * 6, 32, 32, function() eyeNumber = i end, ""..i))
    for j=1,10 do
      if j <= 5 then
        table.insert(eyesColorButtons[i], Button(208-32*4-8*4 + 32 * j + 8 * j, 8 + 32 * 6 + 8 *6, 32, 32, function() eyeColor = j end, eyesColorList[i][j]))
      else
        table.insert(eyesColorButtons[i], Button(208-32*4-8*4 + 32 * (j-5) + 8 * (j-5), 8 + 32 * 7 + 8 *7, 32, 32, function() eyeColor = j end, eyesColorList[i][j]))
      end
    end
  end
end

function drawEyes()
    love.graphics.draw(eyes[eyeNumber][eyeColor], GAME_WIDTH/2 + 280, GAME_HEIGHT/2 + 120, 0, 1, 1, eyes[eyeNumber][eyeColor]:getWidth()/2, eyes[eyeNumber][eyeColor]:getHeight()/2)
end

function drawEyesButtons()
  for i,v in ipairs(eyesButtons) do
    v:draw()
  end
end

function drawEyesColorMenu()
   if eyeNumber == 1 then
    for i,v in ipairs(eyesColorButtons[1]) do
      v:draw()
    end
  elseif eyeNumber == 2 then
    for i,v in ipairs(eyesColorButtons[2]) do
      v:draw()
    end
  end
end

function eyesButtonsPressed(x, y, button, istouch)
  for i,v in ipairs(eyesButtons) do
    v:mousepressed(x, y, button, istouch)
  end
  
  for i=1,2 do
    for j=1,10 do
      eyesColorButtons[i][j]:mousepressed(x, y, button, istouch)
    end
  end
end