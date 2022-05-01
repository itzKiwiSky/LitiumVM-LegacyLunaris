function love.load()
    sprite = require 'src/api/sprite/lunagraphics'
    state = require 'src/system/statemngr'
    font = require 'src/native/engine/resources/font'
    textRender = require 'src/native/engine/rendercore/textrender'
    soundGen = require 'src/native/engine/sound/soundgen'

    State = "warning"
end

function love.draw()
    state.stateDraw(State)
end

function love.update(dt)
    state.stateUpdate(State)
end