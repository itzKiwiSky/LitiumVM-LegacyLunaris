function love.load()
    sprite = require 'src/api/sprite/texture'
    state = require 'src/system/statemngr'
    sfxr = require 'src.native.engine/sfxr'
    font = require 'src/native/engine/resources/font'

    spr = {
        {
            {3,3,3},
            {1,1,1},
            {1,1,1}
        },
        {
            {1,3,1},
            {1,3,1},
            {1,3,1},
            {1,3,1},
            {3,3,3}
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
    --lunagraph.newSprite(spr[2], 8, 90, 90)
    love.graphics.setBackgroundColor(0.2, 0.2, 0.2)
    --genAlphabet()
    rendercore.drawStr("isso funciona caraii", 30, 128, 5, false)
    rendercore.drawStr("RECEBAAAAA", 30, 175, 5, false)
end

function genAlphabet()
    xPos = 16
    yPos = 28
    textSize = 2

    for letter=1,  #font do
        lunagraph.newSprite(font[letter], textSize, xPos, yPos, false)
        xPos = xPos + (textSize * 8)
        letter = letter + 1
        if xPos > 1190 then 
            xPos = 8
            yPos = yPos + (textSize * 8)
        end
    end
end

function love.update(dt)

end