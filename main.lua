function love.load()
    sprite = require 'src/api/sprite/lunagraphics'
    state = require 'src/system/statemngr'
    sfxr = require 'src.native.engine/sfxr'
    font = require 'src/native/engine/resources/font'
    textRender = require 'src/native/engine/rendercore/textrender'

    State = "bootloader"
end

function love.draw()
    state.stateDraw(State)
end

function love.update(dt)
    state.stateUpdate(State)
end