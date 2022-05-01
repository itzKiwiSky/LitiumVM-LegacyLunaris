state = {}

bootloader = require 'src/system/bootloader'
bootmanager = require 'src/system/bootmanager'

function state.stateDraw(statename)
    if statename == "bootloader" then
        bootloader.draw()
    end
    if statename == "bootmanager" then
        bootmanager.draw()
    end
end

function state.stateUpdate(statename)
    if statename == "bootloader" then
        bootloader.update()
    end
    if statename == "bootmanager" then
        bootmanager.update()
    end
end

return state