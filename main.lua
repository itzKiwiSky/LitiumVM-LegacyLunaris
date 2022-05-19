 function love.load()
    chan = require 'src/native/engine/chan/decode'
    imageloader = require 'src/native/engine/loader/imageloader'

    --=[: API Stuff :]=--
    lunagraphics        =       require 'API/sprite/lunagraphics'
    lunasound           =       require 'API/sound/lunasound'
    lunagame            =       require 'API/game/lunagame'
    lunadata            =       require 'API/data/lunadata'

    initLogoTimer = 0


    --diskcheck.init()
    imagedata = imageloader.getImage()
    --pcall(imagedata(), start())
end

function love.draw()
    lunagraphics.clearScreen()
    pcall(imagedata(), render())
end

function love.update(dt)
    pcall(imagedata(), update())
end

function love.keypressed(k)
    pcall(imagedata(), keydown(k))
end

function love.keyrelease(k)
    pcall(imagedata(), keyup(k))
end