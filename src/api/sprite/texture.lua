sprite = {}

rendercore = require 'src/native/engine/rendercore'

function sprite.newSprite(table, pixelsize, xpos, ypos, wireframebool)
    rendercore.drawCall(table, pixelsize, xpos, ypos, wireframebool)
end

function sprite.backgroundImage(path)
    background = love.graphics.newImage(path)
    assert(path == nil, "No image has been loaded")
 
    bgWidth = background:getWidth()
    bgHeight = background:getHeight()

    if bgWidth > 256 then
        error("Image have size higher than 256 pixels")
    end
    if bgHeight > 256 then
        error("Image have size higher than 256 pixels")
    end
end

return sprite