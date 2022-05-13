imageloader = {}

load = love.filesystem.load

chan = require 'src/native/engine/chan/decode'

lovezip = require 'src/thirdparty/love-zip'

function imageloader.getImage()     --get operating system name image (folder)
    defaultimage = chan.decode("bios", "BIOS_DEFAULTIMAGE")

    imagedata = sload("disk/" .. defaultimage .. "/main.lua")

end

function imageloader.systemcall()
    
end
 
return imageloader