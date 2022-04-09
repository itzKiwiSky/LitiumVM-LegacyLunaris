state = {}

boot_assets = require 'src/bootutils/bootassets'
bootloader = require 'src/bootutils/bootloader'

errorscreen = require 'src/errorscreen'

explorer = require 'src/explorer'
boot_assets = btassets.load()

function state.initState(id)
    if id == 1 then
        bootloader.init()
    end
    if id == 2 then
        explorer.init()
    end
    if id == 3 then
        errorscreen.init()
    end
end

function state.updateState(id)
    if id == 1 then
        bootloader.update()
    end
    if id == 2 then
        explorer.update()
    end
end

return state