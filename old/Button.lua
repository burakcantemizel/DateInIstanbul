
Button = Object:extend()

function Button:new(x, y, w, h, func, color)
  self.x = x
  self.y = y
  self.w = w
  self.h = h
  self.func = func
  self.color = color
end

function Button:draw()
  if type(self.color) ~= "string" then
    love.graphics.setColor(self.color[1]/255, self.color[2]/255, self.color[3]/255)
    love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)
  else
    love.graphics.setColor(0,0,0)
    love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)
    --Color burada aslında butondaki numara
    love.graphics.setColor(1,1,1)
    love.graphics.setFont(titleFont)
    love.graphics.print(self.color, self.x + 8, self.y + 2)
  end
    
end

function Button:mousepressed(x, y, button, istouch)
  if x >= self.x and x <= self.x + self.w and y >= self.y and y <= self.y + self.h then
    self.func()
  end
end