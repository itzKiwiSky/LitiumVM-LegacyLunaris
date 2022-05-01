function love.load()
    sprite = require 'src/api/sprite/lunagraphics'
    state = require 'src/system/statemngr'
    font = require 'src/native/engine/resources/font'
    textRender = require 'src/native/engine/rendercore/textrender'
    soundGen = require 'src/native/engine/sound/soundgen'

    State = "bootloader"
    toneID = 1
    setSleep(0.3)
end

function love.draw()
    --state.stateDraw(State)
end

function setSleep(duration) --call setSleep(2) to "sleep" update for 2 seconds
    sleepTimer = duration
end

function love.update(dt)
    --state.stateUpdate(State)

    if sleepTimer > 0 then --Is sleeping
        sleepTimer = sleepTimer - dt
    else
        -- Do your normal update loop
        toneID = toneID + 1
        sleepTimer = 0.3
        soundGen.newWave(3, toneID, "sine")
    end
end