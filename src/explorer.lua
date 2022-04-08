explorer = {}

bg = require 'src/backgroundAssets'

--[[ Functions ]]--
color = love.graphics.setColor
draw = love.graphics.draw
newImage = love.graphics.newImage
rectangle = love.graphics.rectangle

--[[ da path :O ]]--
path = "lunaris/user/background/"
--background = newImage(path .. "bg1.png")
background = bg.load("bg1")


function explorer.init()
    drawBackground()
    createStartBar()
end


--[[ drawers ]]--
function createStartBar()
    color(0.2, 0.2, 0.2)
    rectangle("fill", 0, 720 - 32, 1280, 32)
    color(0.5, 0.5, 0.5)
    rectangle("fill", 0, 720 - 32, 32, 32)
end

function drawBackground()
    color(1, 1, 1)
    draw(background)
end

return explorer