function love.load()
    render = require 'src/native/render/renderCore'

    spr = {
        {1,3,1,3,1},
        {3,3,3,3,3},
        {3,3,3,3,3},
        {1,3,3,3,1},
        {1,1,3,1,1}
    }

    test = {
        {1,2,3},
        {4,5,6},
        {7,8,0}
    }

    size = 32

end

function love.draw()
    love.graphics.setBackgroundColor(0.2,0.2,0.2)
    render.newSprite(spr, 16, 32, 32, false)
    render.newSprite(spr, 16, 128, 128, false)
    render.newSprite(test, 90, 356, 128, false)
end

function love.update(dt)

end