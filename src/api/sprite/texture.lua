graphics = {}

rendercore = require 'src/native/engine/rendercore'

function graphics.newSprite(table, pixelsize, xpos, ypos, wireframebool)
    rendercore.drawCall(table, pixelsize, xpos, ypos, wireframebool)
end

function graphics.playAnim(sprAnimatedTable, animSpd, frames)
    
end

function graphics.backgroundImage(imgpath)
    --assert(path == nil, "No image has been loaded")
    background = love.graphics.newImage(imgpath)
 
    bgWidth = background:getWidth()
    bgHeight = background:getHeight()

    if bgWidth > 256 then
        error("Image have size higher than 256 pixels")
    end
    if bgHeight > 256 then
        error("Image have size higher than 256 pixels")
    end

    return background
end

function graphics.backgroundImageDraw()
    --assert(background == nil, "No image found to draw")
    love.graphics.draw(background, 640, 380)
end


return graphics