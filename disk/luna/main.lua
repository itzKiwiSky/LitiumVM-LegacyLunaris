function start()

end

function render()
    xspr = 50
    size = 8
    lunagraphics.rect(0, 0, 1280, 720, 2, "fill")
    note = lunagraphics.loadSpriteFile("disk/luna/note.json")
    for i = 1, 4 do
        lunagraphics.newSprite(note, 8, xspr, 50)
        xspr = xspr + 80
        i = i + 1
    end
end

function update()

end
