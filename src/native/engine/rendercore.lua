rendercore = {}

rect                    =               love.graphics.rectangle
setColor                =               love.graphics.setColor
setBackgroundcolor      =               love.graphics.setBackgroundColor

fonts = require 'src/native/engine/resources/font'


function rendercore.drawCall(tablespr, pixelSize, Xpos, Ypos, wireframeBool)

    if wireframe == nil then
        wireframe = "fill"
    else
        if wireframeBool then
            wireframe = "line"
        else
            wireframe = "fill"
        end
    end

    colors = {
        {0,0,0},
        {0.5,0.5,0.5},
        {1,1,1},
        {1,0,0},
        {0,1,0},
        {0,0,1},
        {1,1,0},
        {0,1,1},
        {1,0,1}
    }

    for y=1, #tablespr do
		for x=1, #tablespr[1] do
            color = colors[tablespr[y][x]]
            
            if y > 50 or x > 50 then
                return nil
            else
                setColor(color[1], color[2], color[3])
                rect(wireframe, Xpos + (x * pixelSize), Ypos + (y * pixelSize), pixelSize, pixelSize)
            end
		end
	end
end

function rendercore.windowColor(colorid)
    WindowColors = {
        {0,0,0},
        {0.5,0.5,0.5},
        {1,1,1},
        {1,0,0},
        {0,1,0},
        {0,0,1},
        {1,1,0},
        {0,1,1},
        {1,0,1}
    }

    setBackgroundcolor(WindowColors[colorid])
end


-- rendercore callback to generate string

function rendercore.drawStr(Textstr, x, y, FontSize, debugWireframe)
    --textStr = text.splitLetters(str)

    textOutput = string.lower(Textstr)

    letters = "abcdefghijklmnopqrstuvwxyz0123456789 !"

    letterSize = fonts.FontSpacing

    textX = x
    textY = y

    for i = 1, #Textstr do

        char = textOutput   :sub(i,i) -- this gets the current letter of whatever number we are in the loop
        num = letters:find(char) -- this returns the position of char in our letters string.

        rendercore.drawCall(fonts[num], FontSize, textX, textY, debugWireframe)
        textX = textX + (FontSize * letterSize)      -- table sprite size
    end
end

function rendercore.rect(x, y, w, h, colorid, wireframe)
    RectColor = {
        {0,0,0},
        {0.5,0.5,0.5},
        {1,1,1},
        {1,0,0},
        {0,1,0},
        {0,0,1},
        {1,1,0},
        {0,1,1},
        {1,0,1}
    }

    setColor(RectColor[colorid])

    rect(wireframe, x, y, w, h)
end

return rendercore