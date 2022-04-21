function love.load()
    render = require 'src/render/renderCore'

    player = {
        {1,2,3,4,5,6,7,8}
    }
end

function love.draw()
    love.graphics.setBackgroundColor(0.3,0.3,0.3)
    render.addSprite(player, 32, false)
end

function love.update(dt)
    
end