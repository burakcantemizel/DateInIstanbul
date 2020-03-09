languageState = {}

function languageState:enter()
  createLanguageButtons()
end

function languageState:update()
  
end

function languageState:draw()
  gooi.draw()
end

function languageState:mousepressed(x, y, button) gooi.pressed() end
function languageState:mousereleased(x, y, button) gooi.released() end

function createLanguageButtons()
  gooi.newButton(
    {
      icon = "Assets/Flags/tr.png",
      text = "",
      x = GAME_WIDTH / 2 - (187/2) - 100,
      y = GAME_HEIGHT / 2 - (125/2),
      w = 190,
      h = 128
    }):onRelease(
    function()
     love.event.quit() 
    end)
  
  gooi.newButton(
    {
      icon = "Assets/Flags/gb.png",
      text = "",
      x = GAME_WIDTH / 2 - (187/2) + 100,
      y = GAME_HEIGHT / 2 - (125/2),
      w = 190,
      h = 128
    }):onRelease(
    function()
      love.event.quit()
    end)
end