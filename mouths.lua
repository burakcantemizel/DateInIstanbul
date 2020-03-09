function loadMouths()
  mouthButton1 = Button(8 + 32 * 0 + 8 * 0 , 8 + 32 * 9 + 8 * 9, 32 ,32, function() mouthNumber = 1 end, "1")
  mouthButton2 = Button(8 + 32 * 1 + 8 * 1 , 8 + 32 * 9 + 8 * 9, 32 ,32, function() mouthNumber = 2 end, "2")
  mouthButton3 = Button(8 + 32 * 2 + 8 * 2 , 8 + 32 * 9 + 8 * 9, 32 ,32, function() mouthNumber = 3 end, "3")
  mouthButton4 = Button(8 + 32 * 3 + 8 * 3 , 8 + 32 * 9 + 8 * 9, 32 ,32, function() mouthNumber = 4 end, "4")
  mouthButton5 = Button(8 + 32 * 4 + 8 * 4 , 8 + 32 * 9 + 8 * 9, 32 ,32, function() mouthNumber = 5 end, "5")
end

function drawMouth()
    love.graphics.draw(mouths[mouthNumber], GAME_WIDTH/2 + 280, GAME_HEIGHT/2 + 120, 0, 1, 1, mouths[mouthNumber]:getWidth()/2, mouths[mouthNumber]:getHeight()/2)
end

function drawMouthsButtons()
  mouthButton1:draw()
  mouthButton2:draw()
  mouthButton3:draw()
  mouthButton4:draw()
  mouthButton5:draw()
end

function mouthsButtonsPressed(x, y, button, istouch)
  mouthButton1:mousepressed(x,y,button,istouch)
  mouthButton2:mousepressed(x,y,button,istouch)
  mouthButton3:mousepressed(x,y,button,istouch)
  mouthButton4:mousepressed(x,y,button,istouch)
  mouthButton5:mousepressed(x,y,button,istouch)
end