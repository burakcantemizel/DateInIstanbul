ShowIcon = Object:extend()

function ShowIcon:new(x, y, image, text)
  self.x = x
  self.y = y
  self.image = image
  self.w = 48
  self.h = 48
  self.text = text
end

function ShowIcon:draw()
  love.graphics.setColor(0.2,0.2,0.2)
  love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)
  
  if self.image ~= nil then
    love.graphics.draw(self.image, self.x, self.y)
  end
  
  if self.text ~= nil then
    love.graphics.setFont(creditFont)
    love.graphics.print(self.text, self.x, self.y)
  end
  
end