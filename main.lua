
function love.load()
    states = require 'src/states'
    utils = require 'src/utils'
end

function love.draw()
    state = "bios"
    states.drawState(state)
end

function love.update(dt)
    --states.updateState(state)
end
