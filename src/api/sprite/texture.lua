graphics = {}

rendercore = require 'src/native/engine/rendercore'

--- Create a new Sprite.
--- @param table | Parse the sprite table
--- @param pixelsize | Chnage the Pixelsize
--- @param xpos | X position to create sprite
--- @param ypos | Y Position to create sprite
--- @param wireframebool | boolean to show wireframe (Debug)
function graphics.newSprite(table, pixelsize, xpos, ypos, wireframebool)
    rendercore.drawCall(table, pixelsize, xpos, ypos, wireframebool)
end

function graphics.sceneColor(colorid)
    rendercore.windowColor(colorid)
end



return graphics