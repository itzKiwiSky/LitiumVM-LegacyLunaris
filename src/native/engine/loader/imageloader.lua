imageloader = {}

load = love.filesystem.load

chan = require 'src/native/engine/chan/decode'

function imageloader.getImage()     --get operating system name image (folder)
    defaultimage = chan.decode("bios", "BIOS_DEFAULTIMAGE")
    imagedata, err = load("disk/" .. defaultimage .. "/main.lua")

    if imagedata == nil then
        
        error(err, 2)
    end
    return imagedata
end
 
return imageloader