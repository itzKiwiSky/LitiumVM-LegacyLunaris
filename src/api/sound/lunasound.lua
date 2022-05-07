lunasound = {}

-- waveLength, noteID, waveType, waitToNextWave

music = {
    start = 5,
    spd = 3,
    {5, 1, "square", 200}
}

sounddriver = require 'src/native/engine/sound/soundgen'


function lunasound.newWave(waveLength, ToneID, waveType)
    sounddriver.newWave(waveLength, ToneID, waveType)
end

function lunasound.playTrack(trackTable)
    readSpeed = trackTable.spd

end



return lunasound