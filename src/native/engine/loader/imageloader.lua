imageloader = {}

load = love.filesystem.load

chan = require 'src/native/engine/chan/decode'

function imageloader.getImage()     --get operating system name image (folder)
    defaultimage = chan.decode("bios", "BIOS_DEFAULTIMAGE")
    imagedata = load("disk/" .. defaultimage .. "/main.lua")
    return imagedata
end
 
return imageloader