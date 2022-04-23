bootloader = {}

-- render core --
sprite = require 'src/api/sprite/texture'

function bootloader.draw()
    --[[ initialize all objects to screen ]]--

    -- logo
    logo = {
        {2,2,2,2,2,2,2,2},
        {2,2,2,2,2,2,2,2},
        {2,2,2,2,2,2,2,2},
        {2,2,2,2,2,2,2,2},
        {2,2,2,2,2,2,2,2},
        {2,2,2,2,2,2,2,2},
        {2,2,2,2,2,2,2,2},
        {2,2,2,2,2,2,2,2}
    }

    sprite.newSprite(logo, 16, 640 + 64, 424)

end


return bootloader