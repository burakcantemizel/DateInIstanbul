gameStateManager = require("Libraries/GameState")
Object = require("Libraries/Classic")
require("Libraries/Gooi")

require("assets")

require("States/playState")
require("States/languageState")

GAME_WIDTH = 800
GAME_HEIGHT = 600
WINDOW_WIDTH = 800
WINDOW_HEIGHT = 600

function love.load()
   gameStateManager.registerEvents()
   gameStateManager.switch(languageState)
end

function love.draw()
  
end

function love.update()
  
end