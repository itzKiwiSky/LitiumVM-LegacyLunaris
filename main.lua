function love.load()
    chan = require 'src/native/engine/chan/decode'
    diskcheck = require 'src/native/engine/loader/diskcheck'
    imageloader = require 'src/native/engine/loader/imageloader'
    lunagraphics = require 'src/api/sprite/lunagraphics'


    --diskcheck.init()
    imagedata = imageloader.getImage()
    pcall(imagedata(), start())
end

function love.draw()
    pcall(imagedata(), render())
end

function love.update(dt)
    pcall(imagedata(), update())
end