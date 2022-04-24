bootloader = {}

-- render core --
lunagraph = require 'src/api/sprite/texture'

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
    lunagraph.sceneColor(3)
    lunagraph.newSprite(logo, 16, 640, 320)
end


return bootloader