function love.load()
    -- bootloader stuff
    bootloader = require 'src/bootutils/bootloader'
    btassets = require 'src/bootutils/bootassets'
    bootLoading = true
    boot_assets = btassets.load()


    -- after bootloader
    explorer = require 'src/explorer'
    bootloader.init()
end

function love.update(dt)
    bootloader.update()
end

function love.draw()
   --boot.init()
   explorer.init()
end