state = {}

bootloader = require 'src/system/bootloader'
warning = require 'src/system/warning'
lunamenu = require 'src/system/lunamenu'

function state.stateDraw(statename)
    if statename == "bootloader" then
        bootloader.draw()
    end
    if statename == "warning" then
        warning.draw()
    end
    if statename == "lunamenu" then
        lunamenu.draw()
    end
end

function state.stateUpdate(statename)
    if statename == "bootloader" then
        bootloader.update()
    end
    if statename == "warning" then
        warning.update()
    end
    if statename == "lunamenu" then
        lunamenu.update()
    end
end

return state