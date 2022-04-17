state = {}

bios = require 'src/states/bios'


function state.drawState(str)
    if str == "bios" then
        bios.draw()
    end
end

function state.updateState(str)

end

return state