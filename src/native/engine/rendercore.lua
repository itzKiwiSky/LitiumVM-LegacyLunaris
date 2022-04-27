rendercore = {}

rect                    =               love.graphics.rectangle
setColor                =               love.graphics.setColor
setBackgroundcolor      =               love.graphics.setBackgroundColor

text = require 'src/native/engine/text'
fonts = require 'src/native/engine/resources/font'

function rendercore.drawCall(tablespr, pixelSize, Xpos, Ypos, wireframeBool)
    cellSize = pixelSize

    if wireframe == nil then
        wireframe = "fill"
    else
        if wireframeBool then
            wireframe = "line"
        else
            wireframe = "fill"
        end
    end

    for y=1, #tablespr do
		for x=1, #tablespr[1] do
            if y > 50 or x > 50 then
                return nil
            else
                if tablespr[y][x] == 0 then
                    setColor(0,0,0)
                end
                if tablespr[y][x] == 1 then
                    setColor(0,0,0)
                end
                if tablespr[y][x] == 2 then
                    setColor(0.5,0.5,0.5)
                end
                if tablespr[y][x] == 3 then
                    setColor(1,1,1)
                end
                if tablespr[y][x] == 4 then
                    setColor(1,0,0)
                end
                if tablespr[y][x] == 5 then
                    setColor(0,1,0)
                end
                if tablespr[y][x] == 6 then
                    setColor(0,0,1)
                end
                if tablespr[y][x] == 7 then
                    setColor(1,1,0)
                end
                if tablespr[y][x] == 8 then
                    setColor(0,1,1)
                end
                if tablespr[y][x] == 9 then
                    setColor(1,0,1)
                end
                rect(wireframe, Xpos + (x * cellSize), Ypos + (y * cellSize), cellSize, cellSize)
            end
		end
	end
end


-- rendercore callback to generate string

function rendercore.drawStr(Textstr, x, y, FontSize, debugWireframe)
    --textStr = text.splitLetters(str)

    textOutput = string.lower(Textstr)

    letters = "abcdefghijklmnopqrstuvwxyz0123456789 !@#$%¨&*(),.:;/?|-_"

    textX = x
    textY = y

    for i = 1, #Textstr do

        char = textOutput   :sub(i,i) -- this gets the current letter of whatever number we are in the loop
        num = letters:find(char) -- this returns the position of char in our letters string.

        rendercore.drawCall(fonts[num], FontSize, textX, textY, debugWireframe)
        textX = textX + (FontSize * 6)      -- table sprite size
    end
end

return rendercore