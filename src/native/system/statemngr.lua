state = {}

bootloader = require 'src/native/system/bootloader'

function state.stateDraw(statename)
    if statename == "bootloader" then
        bootloader.draw()
    end
end

function state.stateUpdate(statename)
    
end

return state