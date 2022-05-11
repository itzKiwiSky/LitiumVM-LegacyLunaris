imageloader = {}

chan = require 'src/native/engine/chan/decode'

function imageloader.getImage()
    defaultimage = chan.decode("bios", "BIOS_DEFAULTIMAGE")

    love.filesystem.load("disk/" .. defaultimage .. "/main.lua")
end
 
return imageloader