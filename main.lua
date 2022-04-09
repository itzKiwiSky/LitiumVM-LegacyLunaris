function love.load()
    state = require 'src/states'
end

function love.update(dt)
    --[[ states ]]--
    --state.updateState(1)
end

function love.draw()
    state.initState("error")
end