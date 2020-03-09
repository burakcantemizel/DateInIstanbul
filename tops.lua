function loadTops()
  
  topButton0 = Button(8 + 32 * 0 + 8 * 0 , 8 + 32 * 4 + 8 * 4, 32 ,32, function() topNumber = 0 end, "0")
  topButton1 = Button(8 + 32 * 1 + 8 * 1 , 8 + 32 * 4 + 8 * 4 ,32, 32, function() topNumber = 1 topColor = 1 end, "1") 
  topButton2 = Button(8 + 32 * 2 + 8 * 2 , 8 + 32 * 4 + 8 * 4, 32, 32, function() topNumber = 2 topColor = 1 end, "2") 
  topButton3 = Button(8 + 32 * 3 + 8 * 3 , 8 + 32 * 4 + 8 * 4, 32, 32, function() topNumber = 3 topColor = 1 end, "3") 
  topButton4 = Button(8 + 32 * 4 + 8 * 4 , 8 + 32 * 4 + 8 * 4, 32, 32, function() topNumber = 4 topColor = 1 end, "4") 
  topButton5 = Button(8 + 32 * 5 + 8 * 5 , 8 + 32 * 4 + 8 * 4, 32, 32, function() topNumber = 5 topColor = 1 end, "5") 
  
  top1ColorButton1 = Button(208 + 32 * 1 + 8 * 1, 8 + 32 * 4 + 8 * 4, 32, 32, function() topColor = 1 end, {124, 113,113})
  top1ColorButton2 = Button(208 + 32 * 2 + 8 * 2, 8 + 32 * 4 + 8 * 4, 32, 32, function() topColor = 2 end, {88, 110, 141})
  top1ColorButton3 = Button(208 + 32 * 3 + 8 * 3, 8 + 32 * 4 + 8 * 4, 32, 32, function() topColor = 3 end, {59, 59,59})
  top1ColorButton4 = Button(208 + 32 * 4 + 8 * 4, 8 + 32 * 4 + 8 * 4, 32, 32, function() topColor = 4 end, {136, 136,136})
  top1ColorButton5 = Button(208 + 32 * 5 + 8 * 5, 8 + 32 * 4 + 8 * 4, 32, 32, function() topColor = 5 end, {243, 178,147})
  top1ColorButton6 = Button(208 + 32 * 6 + 8 * 6, 8 + 32 * 4 + 8 * 4, 32, 32, function() topColor = 6 end, {144, 190,218})
  
  top2ColorButton1 = Button(208 + 32 * 1 + 8 * 1, 8 + 32 * 4 + 8 * 4, 32, 32, function() topColor = 1 end, {38, 58, 89})
  top2ColorButton2 = Button(208 + 32 * 2 + 8 * 2, 8 + 32 * 4 + 8 * 4, 32, 32, function() topColor = 2 end, {76, 46, 76})
  top2ColorButton3 = Button(208 + 32 * 3 + 8 * 3, 8 + 32 * 4 + 8 * 4, 32, 32, function() topColor = 3 end, {47, 77,47})
  top2ColorButton4 = Button(208 + 32 * 4 + 8 * 4, 8 + 32 * 4 + 8 * 4, 32, 32, function() topColor = 4 end, {41, 41,41})
  top2ColorButton5 = Button(208 + 32 * 5 + 8 * 5, 8 + 32 * 4 + 8 * 4, 32, 32, function() topColor = 5  end, {61, 33,33})
  top2ColorButton6 = Button(208 + 32 * 6 + 8 * 6, 8 + 32 * 4 + 8 * 4, 32, 32, function() topColor = 6  end, {89, 88,61})
  
  top3ColorButton1 = Button(208 + 32 * 1 + 8 * 1, 8 + 32 * 4 + 8 * 4, 32, 32, function() topColor = 1 end, {38, 58, 89})
  top3ColorButton2 = Button(208 + 32 * 2 + 8 * 2, 8 + 32 * 4 + 8 * 4, 32, 32, function() topColor = 2 end, {76, 46, 76})
  top3ColorButton3 = Button(208 + 32 * 3 + 8 * 3, 8 + 32 * 4 + 8 * 4, 32, 32, function() topColor = 3 end, {47, 77,47})
  top3ColorButton4 = Button(208 + 32 * 4 + 8 * 4, 8 + 32 * 4 + 8 * 4, 32, 32, function() topColor = 4  end, {41, 41,41})
  top3ColorButton5 = Button(208 + 32 * 5 + 8 * 5, 8 + 32 * 4 + 8 * 4, 32, 32, function() topColor = 5 end, {61, 33,33})
  top3ColorButton6 = Button(208 + 32 * 6 + 8 * 6, 8 + 32 * 4 + 8 * 4, 32, 32, function() topColor = 6 end, {89, 88,61})
  
  top4ColorButton1 = Button(208 + 32 * 1 + 8 * 1, 8 + 32 * 4 + 8 * 4, 32, 32, function() topColor = 1 end, {180, 173,173})
  top4ColorButton2 = Button(208 + 32 * 2 + 8 * 2, 8 + 32 * 4 + 8 * 4, 32, 32, function() topColor = 2 end, {144, 170,188})
  top4ColorButton3 = Button(208 + 32 * 3 + 8 * 3, 8 + 32 * 4 + 8 * 4, 32, 32, function() topColor = 3 end, {191, 205,180})
  top4ColorButton4 = Button(208 + 32 * 4 + 8 * 4, 8 + 32 * 4 + 8 * 4, 32, 32, function() topColor = 4 end, {101, 86,68})
  top4ColorButton5 = Button(208 + 32 * 5 + 8 * 5, 8 + 32 * 4 + 8 * 4, 32, 32, function() topColor = 5 end, {31, 31,31})
  top4ColorButton6 = Button(208 + 32 * 6 + 8 * 6, 8 + 32 * 4 + 8 * 4, 32, 32, function() topColor = 6 end, {234, 234,234})
  
  top5ColorButton1 = Button(208 + 32 * 1 + 8 * 1, 8 + 32 * 4 + 8 * 4, 32, 32, function() topColor = 1 end, {255, 255, 255})
  top5ColorButton2 = Button(208 + 32 * 2 + 8 * 2, 8 + 32 * 4 + 8 * 4, 32, 32, function() topColor = 2 end, {248, 243,239})
  top5ColorButton3 = Button(208 + 32 * 3 + 8 * 3, 8 + 32 * 4 + 8 * 4, 32, 32, function() topColor = 3 end, {239, 248,244})
  top5ColorButton4 = Button(208 + 32 * 4 + 8 * 4, 8 + 32 * 4 + 8 * 4, 32, 32, function() topColor = 4 end, {238, 238,238})
  top5ColorButton5 = Button(208 + 32 * 5 + 8 * 5, 8 + 32 * 4 + 8 * 4, 32, 32, function() topColor = 5 end, {74, 74,74})
  top5ColorButton6 = Button(208 + 32 * 6 + 8 * 6, 8 + 32 * 4 + 8 * 4, 32, 32, function() topColor = 6 end, {180, 208,224})
end

function drawTop()
  if topNumber ~= 0 then
       love.graphics.draw(tops[topNumber][topColor], GAME_WIDTH/2 + 280, GAME_HEIGHT/2 + 120, 0, 1, 1, tops[topNumber][topColor]:getWidth()/2, tops[topNumber][topColor]:getHeight()/2)
  end
end

function drawTopsButtons()
  topButton0:draw()
  topButton1:draw()
  topButton2:draw()
  topButton3:draw()
  topButton4:draw()
  topButton5:draw()
end

function drawTopsColorMenu()
    if topNumber == 1 then
    drawTop1ColorMenu()
  elseif topNumber == 2 then
    drawTop2ColorMenu()
  elseif topNumber == 3 then
    drawTop3ColorMenu()
  elseif topNumber == 4 then
    drawTop4ColorMenu()
  elseif topNumber == 5 then
    drawTop5ColorMenu()
  end
end

function drawTop1ColorMenu()
  top1ColorButton1:draw()
  top1ColorButton2:draw()
  top1ColorButton3:draw()
  top1ColorButton4:draw()
  top1ColorButton5:draw()
  top1ColorButton6:draw()
end

function drawTop2ColorMenu()
  top2ColorButton1:draw()
  top2ColorButton2:draw()
  top2ColorButton3:draw()
  top2ColorButton4:draw()
  top2ColorButton5:draw()
  top2ColorButton6:draw()
end

function drawTop3ColorMenu()
  top3ColorButton1:draw()
  top3ColorButton2:draw()
  top3ColorButton3:draw()
  top3ColorButton4:draw()
  top3ColorButton5:draw()
  top3ColorButton6:draw()
end

function drawTop4ColorMenu()
  top4ColorButton1:draw()
  top4ColorButton2:draw()
  top4ColorButton3:draw()
  top4ColorButton4:draw()
  top4ColorButton5:draw()
  top4ColorButton6:draw()
end

function drawTop5ColorMenu()
  top5ColorButton1:draw()
  top5ColorButton2:draw()
  top5ColorButton3:draw()
  top5ColorButton4:draw()
  top5ColorButton5:draw()
  top5ColorButton6:draw()
end

function topButtonsPressed(x,y,button,istouch)
  topButton0:mousepressed(x,y,button,istouch)
  topButton1:mousepressed(x, y, button, istouch)
  topButton2:mousepressed(x, y, button, istouch)
  topButton3:mousepressed(x, y, button, istouch)
  topButton4:mousepressed(x, y, button, istouch)
  topButton5:mousepressed(x, y, button, istouch)
end

function topColorButtonsPressed(x,y,button,istouch)
  if topNumber == 1 then
    top1ColorButton1:mousepressed(x, y, button, istouch)
    top1ColorButton2:mousepressed(x, y, button, istouch)
    top1ColorButton3:mousepressed(x, y, button, istouch)
    top1ColorButton4:mousepressed(x, y, button, istouch)
    top1ColorButton5:mousepressed(x, y, button, istouch)
    top1ColorButton6:mousepressed(x, y, button, istouch)
  elseif topNumber == 2 then
    top2ColorButton1:mousepressed(x, y, button, istouch)
    top2ColorButton2:mousepressed(x, y, button, istouch)
    top2ColorButton3:mousepressed(x, y, button, istouch)
    top2ColorButton4:mousepressed(x, y, button, istouch)
    top2ColorButton5:mousepressed(x, y, button, istouch)
    top2ColorButton6:mousepressed(x, y, button, istouch)
  elseif topNumber == 3 then
    top3ColorButton1:mousepressed(x, y, button, istouch)
    top3ColorButton2:mousepressed(x, y, button, istouch)
    top3ColorButton3:mousepressed(x, y, button, istouch)
    top3ColorButton4:mousepressed(x, y, button, istouch)
    top3ColorButton5:mousepressed(x, y, button, istouch)
    top3ColorButton6:mousepressed(x, y, button, istouch)
  elseif topNumber == 4 then
    top4ColorButton1:mousepressed(x, y, button, istouch)
    top4ColorButton2:mousepressed(x, y, button, istouch)
    top4ColorButton3:mousepressed(x, y, button, istouch)
    top4ColorButton4:mousepressed(x, y, button, istouch)
    top4ColorButton5:mousepressed(x, y, button, istouch)
    top4ColorButton6:mousepressed(x, y, button, istouch)
  elseif topNumber == 5 then
    top5ColorButton1:mousepressed(x, y, button, istouch)
    top5ColorButton2:mousepressed(x, y, button, istouch)
    top5ColorButton3:mousepressed(x, y, button, istouch)
    top5ColorButton4:mousepressed(x, y, button, istouch)
    top5ColorButton5:mousepressed(x, y, button, istouch)
    top5ColorButton6:mousepressed(x, y, button, istouch)
  end
end