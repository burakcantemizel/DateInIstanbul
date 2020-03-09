function overEffect()
  local mouse_x, mouse_y = love.touch.getPosition()
  mouse_x, mouse_y = love.mouse.getPosition()
    
    if mouse_x >=  GAME_WIDTH/2 - trFlagImage:getWidth()/2 - 20 - trFlagImage:getWidth()/2 and
    mouse_x <=  GAME_WIDTH/2 - trFlagImage:getWidth()/2 - 20 + trFlagImage:getWidth()/2 and
    mouse_y >= GAME_HEIGHT/2 - trFlagImage:getHeight()/2 and
    mouse_y <= GAME_HEIGHT/2 + trFlagImage:getHeight()/2 then
      love.graphics.setColor(0.5,0.5,0.5)
    else 
      love.graphics.setColor(1,1,1)
    end
    love.graphics.draw(trFlagImage, GAME_WIDTH/2 - trFlagImage:getWidth()/2 - 20, GAME_HEIGHT/2, 0, 1, 1, trFlagImage:getWidth()/2, trFlagImage:getHeight()/2)
    
    if mouse_x >=  GAME_WIDTH/2 + gbFlagImage:getWidth()/2 + 20 - gbFlagImage:getWidth()/2 and
    mouse_x <=  GAME_WIDTH/2 + gbFlagImage:getWidth()/2 + 20 + gbFlagImage:getWidth()/2 and
    mouse_y >= GAME_HEIGHT/2 - gbFlagImage:getHeight()/2 and
    mouse_y <= GAME_HEIGHT/2 + gbFlagImage:getHeight()/2 then
      love.graphics.setColor(0.5,0.5,0.5)
    else 
      love.graphics.setColor(1,1,1)
    end
    love.graphics.draw(gbFlagImage, GAME_WIDTH/2 + gbFlagImage:getWidth()/2 + 20, GAME_HEIGHT/2, 0, 1, 1, gbFlagImage:getWidth()/2, gbFlagImage:getHeight()/2)
end

function selectLanguage()
    local mouse_x, mouse_y = love.touch.getPosition()
    mouse_x, mouse_y = love.mouse.getPosition()
    
    if mouse_x >=  GAME_WIDTH/2 - trFlagImage:getWidth()/2 - 20 - trFlagImage:getWidth()/2 and
    mouse_x <=  GAME_WIDTH/2 - trFlagImage:getWidth()/2 - 20 + trFlagImage:getWidth()/2 and
    mouse_y >= GAME_HEIGHT/2 - trFlagImage:getHeight()/2 and
    mouse_y <= GAME_HEIGHT/2 + trFlagImage:getHeight()/2 then
      selectLanguage = "tr"
      currentStage = "Play"
    end
    
    if mouse_x >=  GAME_WIDTH/2 + gbFlagImage:getWidth()/2 + 20 - gbFlagImage:getWidth()/2 and
    mouse_x <=  GAME_WIDTH/2 + gbFlagImage:getWidth()/2 + 20 + gbFlagImage:getWidth()/2 and
    mouse_y >= GAME_HEIGHT/2 - gbFlagImage:getHeight()/2 and
    mouse_y <= GAME_HEIGHT/2 + gbFlagImage:getHeight()/2 then
      selectLanguage = "en"
      currentStage = "Play"
    end
end
