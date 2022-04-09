function love.load()
    --[[ bootloader stuff ]]-- 
    --bootloader = require 'src/bootutils/bootloader'
    --btassets = require 'src/bootutils/bootassets'
    state = require 'src/states'
    bootLoading = false


    -- explorer desktop stuff
    explorer = require 'src/explorer'
    --bootloader.init()
end

function love.update(dt)
    --[[ states ]]--
    state.updateState(0)
end

function love.draw()
    state.initState(3)
end