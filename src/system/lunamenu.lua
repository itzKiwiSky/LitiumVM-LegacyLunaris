lunamenu = {}

lunagraph           =       require         'src/api/sprite/lunagraphics'
lunasound           =       require         'src/api/sound/lunasound'

lunalogo = {
    {15,15,3,3,3,3,15,15},
    {15,3,3,3,3,2,3,15},
    {3,3,2,3,3,3,3,3},
    {3,2,2,2,3,3,3,3},
    {3,3,2,3,3,3,3,3},
    {3,3,3,3,3,2,3,3},
    {15,3,3,3,2,2,3,15},
    {15,15,3,3,3,3,15,15}
}

cursor = {
    {}
}

background = {
    {9,15,9,15,9,15},
    {15,9,15,9,15,9},
    {9,15,9,15,9,15},
    {15,9,15,9,15,9},
    {9,15,9,15,9,15},
    {15,9,15,9,15,9}
}

backgroundList = {}

function lunamenu.draw()
    lunagraph.newSprite(background, 16, 0, 0)
    lunagraph.rect(0, 0, 1280, 64, 15, "fill")
    lunagraph.rect(0, 0, 1280, 16, 9, "fill")
    lunagraph.newSprite(lunalogo, 5, 16, 12)
end

function lunamenu.update(dt)
    
end

return lunamenu