function love.load()
    sprite = require 'src/api/sprite/texture'
    state = require 'src/system/statemngr'
    sfxr = require 'src.native.engine/sfxr'

    spr = {
        frame0 = {
            {3,3,3},
            {1,1,1},
            {1,1,1}
        },
        frame1 = {
            {1,1,1},
            {3,3,3},
            {1,1,1}
        },
        frame2 = {
            {1,1,1},
            {1,1,1},
            {3,3,3}
        }
    }



end

function love.draw()
    state.stateDraw("bootloader")
end

function love.update(dt)

end