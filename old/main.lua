io.stdout:setvbuf("no")

GAME_WIDTH = 800
GAME_HEIGHT = 600

Object = require("classic")
require("assets")
require("Button")
require("skins")
require("tops")
require("bottoms")
require("language")
require("Ship")
require("hairs")
require("eyes")
require("eyebrows")
require("mouths")
require("ShowIcon")


function love.load()
  guioffx = 0
  guioffy = 0
  parallax = 0
  titleFont = love.graphics.newFont(24)
  creditFont = love.graphics.newFont(16)
  timer = 0
  ship1 = Ship(1, GAME_WIDTH/2 - 200, GAME_HEIGHT - 80, 10, 1)
  ship2 = Ship(2, GAME_WIDTH/2 + 300, GAME_HEIGHT- 50, 15, -1)
  --Other Stages - Play
  --Show
  currentStage = "Play"
  selectedLanguage = ""
  
  importAssets()
  
  skinColor = 1
  topNumber = 1
  topColor = 1
  bottomNumber = 1
  bottomColor = 1
  hairNumber = 1
  hairColor = 1
  eyeNumber = 1
  eyeColor = 1
  eyebrowNumber = 1
  mouthNumber = 1
  
  loadSkins()
  loadHairs()
  loadEyes()
  loadMouths()
  loadEyebrows()
  loadTops()
  loadBottoms()
end

function love.update(dt)
  timer = timer + dt
  ship1:update(dt)
  ship2:update(dt)
  
  --parallax = love.mouse.getPosition() - GAME_WIDTH / 2
  
  parallax = math.sin(timer) * 240
  
  --local touches = love.touch.getTouches()
  --if #touches ~= 0 then
    --local x, y = love.touch.getPosition(touches[0])
    --parallax = x - GAME_WIDTH / 2
  --end
  
  if currentStage == "Language Select" then
    
  elseif currentStage == "Play" then
    

  elseif currentStage == "Show" then
  
  end
end

function love.draw()
  love.graphics.setColor(1,1,1)

  love.graphics.push()
  love.graphics.translate(-parallax / 24, -50)
  --Arkaplan
  love.graphics.draw(backgroundImage,-50,0,0,1.1,1.1)
  love.graphics.pop()
  
  love.graphics.push()
  love.graphics.translate(-parallax / 24, 0 )
  ship1:draw()
  ship2:draw()
  love.graphics.pop()
  
  love.graphics.setFont(titleFont)
  love.graphics.print("Date in Istanbul Prototype", 12, GAME_HEIGHT-82)
  love.graphics.setFont(creditFont)
  love.graphics.print("Burak and Ozge", 13 , GAME_HEIGHT-54)
   love.graphics.setFont(creditFont)
  love.graphics.print("Fullscreen mode is buggy and somethings can't display in mobile!", 13 , GAME_HEIGHT-34)
  if currentStage == "Language Select" then
    overEffect()
  elseif currentStage == "Play" then
    

    love.graphics.push()
    love.graphics.translate(parallax / 16, 0)
    --Karakter
    drawSkin()
    drawEyes()
    drawEyebrow()
    drawMouth()
    drawBottom()
    drawTop()
    drawHair()
    
    love.graphics.pop()

    
    --love.graphics.translate(0,64)
    
    
    drawSkinsButtons()
    drawHairsButtons()
    --drawHairsColorMenu()
    drawTopsButtons()
    drawTopsColorMenu()
    drawEyesButtons()
    drawEyesColorMenu()
    drawBottomsButtons()
    drawBottomsColorMenu()
    drawEyebrowButtons()
    drawMouthsButtons()
  elseif currentStage == "Show" then
  
  end
end

function love.mousepressed(x, y, button, istouch)
  if currentStage == "Language Select" then
    selectLanguage(x,y,button,istouch)
  elseif currentStage == "Play" then
    skinColorButtonsPressed(x, y, button, istouch)
    hairButtonsPressed(x,y,button,istouch)
    hairColorButtonsPressed(x,y,button,istouch)
    topButtonsPressed(x,y,button,istouch)
    topColorButtonsPressed(x,y,button,istouch)
    bottomButtonsPressed(x,y,button,istouch)
    bottomColorButtonsPressed(x,y,button,istouch)
    eyesButtonsPressed(x,y,button,istouch)
    eyebrowButtonsPressed(x,y,button,istouch)
    mouthsButtonsPressed(x,y,button,istouch)
  elseif currentStage == "Show" then
  
  end
end

function love.touchpressed( id, x, y, dx, dy, pressure )
  
  local button = 1
  local istouch = 1
    if currentStage == "Language Select" then
    selectLanguage(x,y,button,istouch)
  elseif currentStage == "Play" then
    skinColorButtonsPressed(x, y, button, istouch)
    hairButtonsPressed(x,y,button,istouch)
    hairColorButtonsPressed(x,y,button,istouch)
    topButtonsPressed(x,y,button,istouch)
    topColorButtonsPressed(x,y,button,istouch)
    bottomButtonsPressed(x,y,button,istouch)
    bottomColorButtonsPressed(x,y,button,istouch)
    eyesButtonsPressed(x,y,button,istouch)
    eyebrowButtonsPressed(x,y,button,istouch)
    mouthsButtonsPressed(x,y,button,istouch)
  elseif currentStage == "Show" then
  
  end
end