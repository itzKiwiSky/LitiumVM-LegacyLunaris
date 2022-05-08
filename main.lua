function love.load()
    sprite = require 'src/api/sprite/lunagraphics'
    state = require 'src/system/statemngr'
    font = require 'src/native/engine/resources/font'
    textRender = require 'src/native/engine/rendercore/textrender'
    soundGen = require 'src/native/engine/sound/soundgen'
    State = "bootloader"
    lunasound = require 'src/api/sound/lunasound'

    tracktest = {
        {5, 1, "square", 20},
        {5, 2, "square", 20},
        {5, 3, "square", 20},
        {5, 4, "square", 60},
        {5, 4, "square", 20},
        {5, 4, "square", 20},
        {5, 1, "square", 60},
        {5, 2, "square", 20},
        {5, 1, "square", 20},
        {5, 2, "square", 20},
        {5, 2, "square", 20},
        {5, 2, "square", 20},
        {5, 1, "square", 20},
        {5, 6, "square", 20},
        {5, 5, "square", 20},
        {5, 4, "square", 20},
        {5, 3, "square", 20},
        {5, 3, "square", 20},
        {5, 3, "square", 20},
        {5, 1, "square", 20},
        {5, 2, "square", 20},
        {5, 3, "square", 20},
        {5, 4, "square", 20},
        {5, 4, "square", 20},
        {5, 4, "square", 20}
    }

end

function love.draw()
    --state.stateDraw(State)
end

function love.update(dt)
    --state.stateUpdate(State)
    lunasound.playTrack(tracktest)
end