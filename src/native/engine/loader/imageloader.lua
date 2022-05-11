imageloader = {}

load = love.filesystem.load

chan = require 'src/native/engine/chan/decode'

function imageloader.getImage()
    defaultimage = chan.decode("bios", "BIOS_DEFAULTIMAGE")

    load("disk/" .. defaultimage .. "/main.lua")
end
 
return imageloader