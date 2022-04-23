function love.load()
    sprite = require 'src/api/sprite/texture'
    state = require 'src/native/system/statemngr'
    sfxr = require 'src.native.engine/sfxr'

    spr1 = {
        {1,3,1,3,1},
        {3,3,3,3,3},
        {3,3,3,3,3},
        {1,3,3,3,1},
        {1,1,3,1,1}
    }

    size = 32

end

function love.draw()
    --love.graphics.setBackgroundColor(0.2,0.2,0.2)
    --sprite.newSprite(spr1, 14, 150, 32, false)
    state.stateDraw("bootloader")
end

function love.update(dt)

end