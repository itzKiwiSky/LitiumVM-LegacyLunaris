function love.load()
    chan = require 'src/native/engine/chan/decode'
    diskcheck = require 'src/native/engine/loader/diskcheck'
    imageloader = require 'src/native/engine/loader/imageloader'
    lunagraphics = require 'src/api/sprite/lunagraphics'
    versionbios = require 'src/native/engine/bios/versionchecker'

    versionbios.getVersionFile()

    --gambiarra
    if chan.decode("bios", "BIOS_BOOTMESSAGE") == "true" then
        bool = true
    else
        bool = false
    end

    --diskcheck.init()
    --imageloader.getImage()
end

function love.draw()
    if bool then
        lunagraphics.newText("Checking for BIOS Updates", 30, 30, 4, 2, 1)
    end
end

function love.update(dt)

end