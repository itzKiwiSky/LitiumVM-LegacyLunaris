bootloader = {}

-- render core --
lunagraph = require 'src/api/sprite/lunagraphics'

progress = 0

function bootloader.draw()
    --[[ initialize all objects to screen ]]--

    -- logo
    logo = {
        {1,1,3,3,3,3,1,1},
        {1,3,3,3,3,2,3,1},
        {3,3,2,3,3,3,3,3},
        {3,2,2,2,3,3,3,3},
        {3,3,2,3,3,3,3,3},
        {3,3,3,3,3,2,3,3},
        {1,3,3,3,2,2,3,1},
        {1,1,3,3,3,3,1,1}
    }

    lunagraph.sceneColor(1)
    lunagraph.newSprite(logo, 16, 580, 170, 2)
    lunagraph.newText("Loading components", 320, 490, 6, 1)
    lunagraph.rect(0, 708, progress, 8, 3, "fill")
end

function bootloader.update()

    -- progress loading stuff
    
    math.randomseed(os.clock())
    progress = progress + math.random(1, 15)
end

return bootloader