boot = {}

btassets = require 'src/bootutils/bootassets'
bootAssets = btassets.load()

r = 0       -- rotation angle

draw = love.graphics.draw
lprint = love.graphics.print

text = "booting this shit....."

function boot.init()
    bootIcon()
end

function bootIcon()
    draw(boot_assets.bticon, 640, 180, 0, 1, 1, 64, 64)
    draw(boot_assets.btloadicon, 640, 480, r, 1, 1, 32, 32)
    --lprint(text, 580, 250)
end

function boot.update()
    r = r + 0.05
end

return boot