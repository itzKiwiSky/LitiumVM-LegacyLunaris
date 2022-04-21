function love.load()
    render = require 'src/render/renderCore'

    spr = {
        {1,3,1,3,1},
        {3,3,3,3,3},
        {3,3,3,3,3},
        {1,3,3,3,1},
        {1,1,3,1,1}
    }
end

function love.draw()
    love.graphics.setBackgroundColor(0.2,0.2,0.2)
    render.addSprite(spr, 32, false)
end

function love.update(dt)
    
end