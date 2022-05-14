function love.load()
    chan = require 'src/native/engine/chan/decode'
    imageloader = require 'src/native/engine/loader/imageloader'

    --=[: API Stuff :]=--
    lunagraphics      =       require 'src/api/sprite/lunagraphics'
    --lunasound         =       require 'src/api/sound/lunasound'
    --lunagame          =       require 'src/api/game/lunagame'

    initLogoTimer = 0


    --diskcheck.init()
    imagedata = imageloader.getImage()
    --pcall(imagedata(), start())
end

function love.draw()
    pcall(imagedata(), render())
end

function love.update(dt)
    pcall(imagedata(), update())
end