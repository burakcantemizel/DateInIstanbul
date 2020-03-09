Ship = Object:extend()

function Ship:new(shipType, x, y, speed, direction)
  self.shipType = shipType
  self.x = x
  self.y = y
  self.speed = speed
  self.direction = direction
end

function Ship:update(dt)
  if self.direction == -1 then
    self.x = self.x - self.speed * dt
    
    if self.x <= -150 then
      self.x = GAME_WIDTH + 150
    end
  else 
    self.x = self.x + self.speed * dt
    
    if self.x >= GAME_WIDTH+150 then
      self.x = -150
    end
  end
end

function Ship:draw()
  if self.shipType == 1 then
    love.graphics.setColor(1,1,1,0.6)
    love.graphics.draw(ship1Image, self.x, self.y+42, 0, self.direction * 0.5, -1* 0.5, ship1Image:getWidth()/2, ship1Image:getHeight()/2)
    love.graphics.setColor(1,1,1)
    love.graphics.draw(ship1Image, self.x, self.y, 0, self.direction * 0.5, 0.5, ship1Image:getWidth()/2, ship1Image:getHeight()/2)
  else
    love.graphics.setColor(1,1,1,0.6)
    love.graphics.draw(ship2Image, self.x, self.y+20, 0, self.direction * 0.35, -1*0.35, ship2Image:getWidth()/2, ship2Image:getHeight()/2)
    love.graphics.setColor(1,1,1)
    love.graphics.draw(ship2Image, self.x, self.y, 0, self.direction * 0.35, 0.35, ship2Image:getWidth()/2, ship2Image:getHeight()/2)
  end
end