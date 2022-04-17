bios = {}

push                =           love.graphics.push
pop                 =           love.graphics.pop
scale               =           love.graphics.scale
lprint              =           love.graphics.print
color               =           love.graphics.setColor
colorbg             =           love.graphics.setBackgroundColor
isDir               =           love.filesystem.isDirectory
getDirContent       =           love.filesystem.getDirectoryItems
insert              =           table.insert
remove              =           table.remove

function bios.load()
    resc = require 'src/states/substates/biosResources'
end

function bios.draw()
    colorbg(0.3, 0, 0.7)
    push()
        color(1, 1, 1)
        scale(1.5, 1.5)
        printBootFolderNames()
    pop()
end

function checkBootFolders()
    for folders in getDirContent("../../disks") do
        if isDir() then
            insert(bootfiles, files, getDirContent())
        end
    end
end

function printBootFolderNames()
    bootfiles = {
        "test1",
        "test2",
        "test3"
    }

    textY = 45
    i = 0

    for filename in ipairs(bootfiles) do
        i = i + 1
        lprint(bootfiles[i], 32, textY)
        textY = textY + 24
    end
end

function bios.update()

    
end

return bios