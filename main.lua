function love.load()
    sprite = require 'src/api/sprite/texture'
    state = require 'src/system/statemngr'
    sfxr = require 'src.native.engine/sfxr'
    font = require 'src/system/resources/font'

    spr = {
        {
            {3,3,3},
            {1,1,1},
            {1,1,1}
        },
        {
            {1,1,1},
            {3,3,3},
            {1,1,1}
        },
        {
            {1,1,1},
            {1,1,1},
            {3,3,3}
        }
    }

end

function love.draw()
    --state.stateDraw("bootloader")
    --lunagraph.playAnim(spr, 50, 3, false)
    --lunagraph.newSprite(font[1], 8, 90, 90)
    love.graphics.rectangle("fill", 1200, 490, 32, 32)
    xPos = 16
    yPos = 90
    for letter=1,  #font do
        lunagraph.newSprite(font[letter], 8, xPos, yPos, false)
        xPos = xPos + 64
        letter = letter + 1
        if xPos > 1190 then 
            xPos = 16
            yPos = yPos + 64
        end
    end
end

function love.update(dt)

end