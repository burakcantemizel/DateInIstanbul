function loadEyebrows()
  eyebrowButton1 = Button(8 + 32 * 0 + 8 * 0 , 8 + 32 * 8 + 8 * 8, 32 ,32, function() eyebrowNumber = 1 end, "1")
  eyebrowButton2 = Button(8 + 32 * 1 + 8 * 1 , 8 + 32 * 8 + 8 * 8, 32 ,32, function() eyebrowNumber = 2 end, "2")
  eyebrowButton3 = Button(8 + 32 * 2 + 8 * 2 , 8 + 32 * 8 + 8 * 8, 32 ,32, function() eyebrowNumber = 3 end, "3")
  eyebrowButton4 = Button(8 + 32 * 3 + 8 * 3 , 8 + 32 * 8 + 8 * 8, 32 ,32, function() eyebrowNumber = 4 end, "4")
  eyebrowButton5 = Button(8 + 32 * 4 + 8 * 4 , 8 + 32 * 8 + 8 * 8, 32 ,32, function() eyebrowNumber = 5 end, "5")
end

function drawEyebrow()
    love.graphics.draw(eyebrows[eyebrowNumber], GAME_WIDTH/2 + 280, GAME_HEIGHT/2 + 120, 0, 1, 1, eyebrows[eyebrowNumber]:getWidth()/2, eyebrows[eyebrowNumber]:getHeight()/2)
end

function drawEyebrowButtons()
  eyebrowButton1:draw()
  eyebrowButton2:draw()
  eyebrowButton3:draw()
  eyebrowButton4:draw()
  eyebrowButton5:draw()
end

function eyebrowButtonsPressed(x, y, button, istouch)
  eyebrowButton1:mousepressed(x,y,button,istouch)
  eyebrowButton2:mousepressed(x,y,button,istouch)
  eyebrowButton3:mousepressed(x,y,button,istouch)
  eyebrowButton4:mousepressed(x,y,button,istouch)
  eyebrowButton5:mousepressed(x,y,button,istouch)
end