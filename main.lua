function love.load()
    sprite = require 'src/api/sprite/texture'

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
    love.graphics.setBackgroundColor(0.2,0.2,0.2)
    sprite.newSprite(spr1, 46, 32, 32, false)    
end

function love.update(dt)

end