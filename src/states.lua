state = {}


--[[ scene scrips ]]--

-- boot --
boot_assets = require 'src/bootutils/bootassets'
bootloader = require 'src/bootutils/bootloader'
boot_assets = btassets.load()

-- error screen --
errorscreen = require 'src/errorscreen'

-- explorer desktop --
explorer = require 'src/explorer'


function state.initState(stateName)
    if stateName == "bootloader" then
        bootloader.init()
    end
    if stateName == "explorer" then
        explorer.init()
    end
    if stateName == "error" then
        errorscreen.init()
    end
end

function state.updateState(stateName)
    if stateName == "bootloader" then
        bootloader.update()
    end
    if stateName == "explorer" then
        explorer.update()
    end
end

return state