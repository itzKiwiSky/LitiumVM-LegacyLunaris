bg = {}

path = "lunaris/user/background/"
loadImage = love.graphics.newImage

function bg.load(name)
    return loadImage(path .. name .. ".png")
end

return bg