function importAssets()
  --Arkaplan
  backgroundImage = love.graphics.newImage("assets/Backgrounds/background.png")
  
  trFlagImage = love.graphics.newImage("assets/Flags/tr.png")
  gbFlagImage = love.graphics.newImage("assets/Flags/gb.png")
  
  --Karakter
  base1Image = love.graphics.newImage("assets/Base/base1.png")
  base2Image = love.graphics.newImage("assets/Base/base2.png")
  base3Image = love.graphics.newImage("assets/Base/base3.png")
  base4Image = love.graphics.newImage("assets/Base/base4.png")
  base5Image = love.graphics.newImage("assets/Base/base5.png")
  
  ship1Image = love.graphics.newImage("assets/Ships/ship1.png")
  ship2Image = love.graphics.newImage("assets/Ships/ship2.png")
  
  tops = {}
  bottoms = {}
  hairs = {}
  eyes = {}
  eyebrows = {}
  mouths = {}
  
  for i=1,5  do
      table.insert(tops, {})
    for j=1,6 do
        table.insert(tops[i], love.graphics.newImage("assets/Tops/top"..i.."_"..j..".png"))
    end
  end
  
  for i=1,3  do
      table.insert(bottoms, {})
    for j=1,6 do
        table.insert(bottoms[i], love.graphics.newImage("assets/Bottoms/bottom"..i.."_"..j..".png"))
    end
  end
  
  for i=1,5 do
    table.insert(hairs, {})
    for j=1,15 do
      table.insert(hairs[i], love.graphics.newImage("assets/Hair/hair"..i.."_"..j..".png"))
    end
  end
  
  for i=1,2 do
    table.insert(eyes, {})
    for j=1,10 do
      table.insert(eyes[i], love.graphics.newImage("assets/Eyes/eyes"..i.."_"..j..".png"))
    end
  end
  
  for i=1,5 do
    table.insert(eyebrows, love.graphics.newImage("assets/Eyebrows/eyebrows"..i.."_1.png"))
  end
  
   for i=1,5 do
    table.insert(mouths, love.graphics.newImage("assets/Mouth/mouth"..i.."_1.png"))
    end
end


  