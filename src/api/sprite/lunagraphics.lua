lunagraphics = {}

rendercore = require 'src/native/engine/rendercore/graph'
textrender = require 'src/native/engine/rendercore/textrender'

--- Create a new Sprite.
--- @param table | Parse the sprite table
--- @param spriteSize | Change the sprite size
--- @param xpos | X position to create sprite
--- @param ypos | Y Position to create sprite
--- @param wireframebool | boolean to show wireframe (Debug)
function lunagraphics.newSprite(table, spriteSize, xpos, ypos, wireDebug)
    rendercore.drawCall(table, spriteSize, xpos, ypos, wireDebug)
end


--- Create a new text.
--- @param table | Parse the sprite table
--- @param textPosX | X position to create sprite
--- @param textPosY | Y Position to create sprite
--- @param FontSize | Set the font size
--- @param ColoriD | Set font color
--- @param wireframebool | boolean to show wireframe (Debug)
function lunagraphics.newText(textStr, textPosX, textPosY, fontSize, textColor, bgcolor)
    textrender.drawStr(textStr, textPosX, textPosY, fontSize, textColor, bgcolor)
end

--- Change scene background color
--- @param id | Color id (1-9)
function lunagraphics.sceneColor(id)
    rendercore.windowColor(id)
end

--- Create primitive rectangle
--- @param xp | x position
--- @param yp | y position
--- @param wt | width of rectangle
--- @param ht | height of rectangle
--- @param color | color id
--- @param fill | fill mode (1 = true, 2 = line)
function lunagraphics.rect(xp, yp, wt, ht, color, fill)

    if fill == 1 then
        typeFill = "fill"
    end
    if fill == 2 then
        typeFill = "line"
    end
    if fill < 1 or fill > 2 or type(fill) ~= "number" then
        error("Inexistent type" .. fill .. " id")
    end

    rendercore.rect(xp, yp, wt, ht, color, typeFill)
end



return lunagraphics