lunagraphics = {}

rendercore = require 'src/native/engine/rendercore/graph'
textrender = require 'src/native/engine/rendercore/textrender'
textureFile = require 'src/native/engine/rendercore/texture'

--- Create a new Sprite.
--- @param table | Parse the sprite table
--- @param spriteSize | Change the sprite size
--- @param xpos | X position to create sprite
--- @param ypos | Y Position to create sprite
function lunagraphics.newSprite(table, spriteSize, xpos, ypos)
    rendercore.drawCall(table, spriteSize, xpos, ypos)
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
--- @param fill | fill mode ("fill" or "line")
function lunagraphics.rect(xp, yp, wt, ht, color, fill)
    rendercore.rect(xp, yp, wt, ht, color, fill)
end

--- Clear screen content
function lunagraphics.clearScreen()
    love.graphics.clear()
end

function lunagraphics.loadSpriteFile(path)
    return textureFile.loadfile(path)
end

return lunagraphics