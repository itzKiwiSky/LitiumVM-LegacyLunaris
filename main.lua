function love.load()
    --[[ bootloader stuff ]]-- 
    --bootloader = require 'src/bootutils/bootloader'
    --btassets = require 'src/bootutils/bootassets'
    state = require 'src/states'
    bootLoading = false
end

function love.update(dt)
    --[[ states ]]--
    --state.updateState(1)
end

function love.draw()
    state.initState("error")
end