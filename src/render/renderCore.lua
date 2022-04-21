rendercore = {}

function rendercore.addSprite(table, pixelSize ,wireframeBool)
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


    for y=1, #table do
		for x=1, #table[1] do
			if table[y][x] == 1 then
                love.graphics.setColor(0, 0, 0)
                love.graphics.rectangle(wireframe, x * cellSize, y * cellSize, cellSize, cellSize)
            end
            if table[y][x] == 2 then
                love.graphics.setColor(1, 1, 1)
                love.graphics.rectangle(wireframe, x * cellSize, y * cellSize, cellSize, cellSize)
            end
            if table[y][x] == 3 then
                love.graphics.setColor(1, 0, 0)
                love.graphics.rectangle(wireframe, x * cellSize, y * cellSize, cellSize, cellSize)
            end
            if table[y][x] == 4 then
                love.graphics.setColor(0, 1, 0)
                love.graphics.rectangle(wireframe, x * cellSize, y * cellSize, cellSize, cellSize)
            end
            if table[y][x] == 5 then
                love.graphics.setColor(0, 0, 1)
                love.graphics.rectangle(wireframe, x * cellSize, y * cellSize, cellSize, cellSize)
            end
            if table[y][x] == 6 then
                love.graphics.setColor(1, 1, 0)
                love.graphics.rectangle(wireframe, x * cellSize, y * cellSize, cellSize, cellSize)
            end
            if table[y][x] == 7 then
                love.graphics.setColor(0, 1, 1)
                love.graphics.rectangle(wireframe, x * cellSize, y * cellSize, cellSize, cellSize)
            end
            if table[y][x] == 8 then
                love.graphics.setColor(1, 0, 1)
                love.graphics.rectangle(wireframe, x * cellSize, y * cellSize, cellSize, cellSize)
            end
		end
	end
end

return rendercore