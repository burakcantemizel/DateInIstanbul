local offx = 8 + 48 + 8
local offy = 8 + 8

function loadSkins()
  skinShowIcon = ShowIcon(8,8,nil,"ten")
  
  skinColorButton1 = Button(guioffx + offx, guioffy + offy, 32, 32, function() skinColor = 1 end, {253, 236,210})
  skinColorButton2 = Button(guioffx + offx + 32 * 1 + 8 * 1, guioffy + offy, 32 , 32, function() skinColor = 2 end,  {255, 245, 212})
  skinColorButton3 = Button(guioffx + offx + 32 * 2 + 8 * 2, guioffy + offy, 32 , 32, function() skinColor = 3 end,  {210, 174, 138})
  skinColorButton4 = Button(guioffx + offx + 32 * 3 + 8 * 3, guioffy + offy, 32 , 32, function() skinColor = 4 end,  {202, 153, 105})
  skinColorButton5 = Button(guioffx + offx + 32 * 4 + 8 * 4, guioffy + offy, 32 , 32, function() skinColor = 5 end,  {166, 128, 90})
end


function drawSkinsButtons()
  skinShowIcon:draw()
  skinColorButton1:draw()
  skinColorButton2:draw()
  skinColorButton3:draw()
  skinColorButton4:draw()
  skinColorButton5:draw()
end

function drawSkin()
  if skinColor == 1 then
    love.graphics.draw(base1Image, GAME_WIDTH/2 + 280, GAME_HEIGHT/2 + 120, 0, 1, 1, base1Image:getWidth()/2, base1Image:getHeight()/2)
  elseif skinColor == 2 then
    love.graphics.draw(base2Image, GAME_WIDTH/2 + 280, GAME_HEIGHT/2 + 120, 0, 1, 1, base1Image:getWidth()/2, base1Image:getHeight()/2)
  elseif skinColor == 3 then
    love.graphics.draw(base3Image, GAME_WIDTH/2 + 280, GAME_HEIGHT/2 + 120, 0, 1, 1, base1Image:getWidth()/2, base1Image:getHeight()/2)
  elseif skinColor == 4 then
    love.graphics.draw(base4Image, GAME_WIDTH/2 + 280, GAME_HEIGHT/2 + 120, 0, 1, 1, base1Image:getWidth()/2, base1Image:getHeight()/2)
  elseif skinColor == 5 then
    love.graphics.draw(base5Image, GAME_WIDTH/2 + 280, GAME_HEIGHT/2 + 120, 0, 1, 1, base1Image:getWidth()/2, base1Image:getHeight()/2)
  end
end

function skinColorButtonsPressed(x,y,button,istouch)
  skinColorButton1:mousepressed(x, y, button, istouch)
  skinColorButton2:mousepressed(x, y, button, istouch)
  skinColorButton3:mousepressed(x, y, button, istouch)
  skinColorButton4:mousepressed(x, y, button, istouch)
  skinColorButton5:mousepressed(x, y, button, istouch)
end