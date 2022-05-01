warning = {}

lunagraph = require 'src/api/sprite/lunagraphics'


function warning.draw()
    lunagraph.newText("Hey!", 90, 90, 8, 6, 1)
    lunagraph.newText("Thank you for using my little Engine", 90, 180, 3, 1, 1)
    lunagraph.newText("Is a side project and I put a lot of effort on this", 90, 220, 3, 1, 1)
    lunagraph.newText("hope you like developing with it", 90, 260, 3, 1, 1)
    lunagraph.newText("Stability Warning!", 90, 300, 8, 3, 1)
    lunagraph.newText("This engine is constant development so", 90, 390, 3, 1, 1)
    lunagraph.newText("Any bug you find, please report on Github page or", 90, 440, 3, 1, 1)
    lunagraph.newText("Discord server", 90, 490, 3, 1, 1)
    
end

function warning.update()

end

return warning