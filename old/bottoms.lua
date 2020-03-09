function loadBottoms()
  bottomButton0 = Button(8 + 32 * 0 + 8 * 0, 8 + 32 * 5 + 8 * 5, 32, 32, function() bottomNumber = 0 end, "0")
  bottomButton1 = Button(8 + 32 * 1 + 8 * 1, 8 + 32 * 5 + 8 * 5, 32, 32, function() bottomNumber = 1 bottomColor = 1 end, "1") 
  bottomButton2 = Button(8 + 32 * 2 + 8 * 2 , 8 + 32 * 5+ 8 * 5, 32, 32, function() bottomNumber = 2 bottomColor = 1 end, "2") 
  bottomButton3 = Button(8 + 32 * 3 + 8 * 3  , 8 + 32 * 5 + 8 * 5, 32, 32, function() bottomNumber = 3 bottomColor = 1 end, "3")
  
  bottom1ColorButton1 = Button(128 + 32 * 1 + 8 * 1, 8 + 32 * 5 + 8 * 5, 32, 32, function() bottomColor = 1 end, {91, 100,121})
  bottom1ColorButton2 = Button(128 + 32 * 2 + 8 * 2, 8 + 32 * 5 + 8 * 5, 32, 32, function() bottomColor = 2 end, {99, 117, 140})
  bottom1ColorButton3 = Button(128 + 32 * 3 + 8 * 3, 8 + 32 * 5 + 8 * 5, 32, 32, function() bottomColor = 3 end, {96, 142,136})
  bottom1ColorButton4 = Button(128 + 32 * 4 + 8 * 4, 8 + 32 * 5 + 8 * 5, 32, 32, function() bottomColor = 4 end, {63, 79,37})
  bottom1ColorButton5 = Button(128 + 32 * 5 + 8 * 5, 8 + 32 * 5 + 8 * 5, 32, 32, function() bottomColor = 5 end, {119, 92,66})
  bottom1ColorButton6 = Button(128 + 32 * 6 + 8 * 6, 8 + 32 * 5 + 8 * 5, 32, 32, function() bottomColor = 6 end, {66, 66,66})
  
  bottom2ColorButton1 = Button(128 + 32 * 1 + 8 * 1, 8 + 32 * 5 + 8 * 5, 32, 32, function() bottomColor = 1 end, {122, 122,122})
  bottom2ColorButton2 = Button(128 + 32 * 2 + 8 * 2, 8 + 32 * 5 + 8 * 5, 32, 32, function() bottomColor = 2 end, {104, 114, 78})
  bottom2ColorButton3 = Button(128 + 32 * 3 + 8 * 3, 8 + 32 * 5 + 8 * 5, 32, 32, function() bottomColor = 3 end, {119, 148,160})
  bottom2ColorButton4 = Button(128 + 32 * 4 + 8 * 4, 8 + 32 * 5 + 8 * 5, 32, 32, function() bottomColor = 4 end, {167, 127,130})
  bottom2ColorButton5 = Button(128 + 32 * 5 + 8 * 5, 8 + 32 * 5 + 8 * 5, 32, 32, function() bottomColor = 5 end, {70, 60,90})
  bottom2ColorButton6 = Button(128 + 32 * 6 + 8 * 6, 8 + 32 * 5 + 8 * 5, 32, 32, function() bottomColor = 6 end, {28, 29,33})
  
  bottom3ColorButton1 = Button(128 + 32 * 1 + 8 * 1, 8 + 32 * 5 + 8 * 5, 32, 32, function() bottomColor = 1 end, {208, 116,113})
  bottom3ColorButton2 = Button(128 + 32 * 2 + 8 * 2, 8 + 32 * 5 + 8 * 5, 32, 32, function() bottomColor = 2 end, {208, 191, 113})
  bottom3ColorButton3 = Button(128 + 32 * 3 + 8 * 3, 8 + 32 * 5 + 8 * 5, 32, 32, function() bottomColor = 3 end, {113, 208,172})
  bottom3ColorButton4 = Button(128 + 32 * 4 + 8 * 4, 8 + 32 * 5 + 8 * 5, 32, 32, function() bottomColor = 4 end, {144, 177,174})
  bottom3ColorButton5 = Button(128 + 32 * 5 + 8 * 5, 8 + 32 * 5 + 8 * 5, 32, 32, function() bottomColor = 5 end, {237, 242,242})
  bottom3ColorButton6 = Button(128 + 32 * 6 + 8 * 6, 8 + 32 * 5 + 8 * 5, 32, 32, function() bottomColor = 6 end, {240, 187,139})

end

function drawBottom()
  if bottomNumber ~= 0 then
       love.graphics.draw(bottoms[bottomNumber][bottomColor], GAME_WIDTH/2 + 280, GAME_HEIGHT/2 + 120, 0, 1, 1, bottoms[bottomNumber][bottomColor]:getWidth()/2, bottoms[bottomNumber][bottomColor]:getHeight()/2)
  end
end

function drawBottomsButtons()
  bottomButton0:draw()
  bottomButton1:draw()
  bottomButton2:draw()
  bottomButton3:draw()
end

function drawBottomsColorMenu()
   if bottomNumber == 1 then
    drawBottom1ColorMenu()
  elseif bottomNumber == 2 then
    drawBottom2ColorMenu()
  elseif bottomNumber == 3 then
    drawBottom3ColorMenu()
  end
end

function drawBottom1ColorMenu()
  bottom1ColorButton1:draw()
  bottom1ColorButton2:draw()
  bottom1ColorButton3:draw()
  bottom1ColorButton4:draw()
  bottom1ColorButton5:draw()
  bottom1ColorButton6:draw()
end

function drawBottom2ColorMenu()
  bottom2ColorButton1:draw()
  bottom2ColorButton2:draw()
  bottom2ColorButton3:draw()
  bottom2ColorButton4:draw()
  bottom2ColorButton5:draw()
  bottom2ColorButton6:draw()
end

function drawBottom3ColorMenu()
  bottom3ColorButton1:draw()
  bottom3ColorButton2:draw()
  bottom3ColorButton3:draw()
  bottom3ColorButton4:draw()
  bottom3ColorButton5:draw()
  bottom3ColorButton6:draw()
end

function bottomButtonsPressed(x,y,button,istouch)
  bottomButton0:mousepressed(x,y,button,istouch)
  bottomButton1:mousepressed(x, y, button, istouch)
  bottomButton2:mousepressed(x, y, button, istouch)
  bottomButton3:mousepressed(x, y, button, istouch)
end

function bottomColorButtonsPressed(x,y,button,istouch)
  if bottomNumber == 1 then
    bottom1ColorButton1:mousepressed(x, y, button, istouch)
    bottom1ColorButton2:mousepressed(x, y, button, istouch)
    bottom1ColorButton3:mousepressed(x, y, button, istouch)
    bottom1ColorButton4:mousepressed(x, y, button, istouch)
    bottom1ColorButton5:mousepressed(x, y, button, istouch)
    bottom1ColorButton6:mousepressed(x, y, button, istouch)
  elseif bottomNumber == 2 then
    bottom2ColorButton1:mousepressed(x, y, button, istouch)
    bottom2ColorButton2:mousepressed(x, y, button, istouch)
    bottom2ColorButton3:mousepressed(x, y, button, istouch)
    bottom2ColorButton4:mousepressed(x, y, button, istouch)
    bottom2ColorButton5:mousepressed(x, y, button, istouch)
    bottom2ColorButton6:mousepressed(x, y, button, istouch)
  elseif bottomNumber == 3 then
    bottom3ColorButton1:mousepressed(x, y, button, istouch)
    bottom3ColorButton2:mousepressed(x, y, button, istouch)
    bottom3ColorButton3:mousepressed(x, y, button, istouch)
    bottom3ColorButton4:mousepressed(x, y, button, istouch)
    bottom3ColorButton5:mousepressed(x, y, button, istouch)
    bottom3ColorButton6:mousepressed(x, y, button, istouch)
  end
end