rendercore = {}

function rendercore.addSprite(tablespr, pixelSize ,wireframeBool)
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
            if tablespr[y][x] == 0 then
                love.graphics.setColor(0,0,0)
                love.graphics.rectangle(wireframe, x * cellSize, y * cellSize, cellSize, cellSize)
            end
            if tablespr[y][x] == 1 then
                love.graphics.setColor(0,0,0)
                love.graphics.rectangle(wireframe, x * cellSize, y * cellSize, cellSize, cellSize)
            end
            if tablespr[y][x] == 2 then
                love.graphics.setColor(1,1,1)
                love.graphics.rectangle(wireframe, x * cellSize, y * cellSize, cellSize, cellSize)
            end
            if tablespr[y][x] == 3 then
                love.graphics.setColor(1,0,0)
                love.graphics.rectangle(wireframe, x * cellSize, y * cellSize, cellSize, cellSize)
            end
            if tablespr[y][x] == 4 then
                love.graphics.setColor(0,1,0)
                love.graphics.rectangle(wireframe, x * cellSize, y * cellSize, cellSize, cellSize)
            end
            if tablespr[y][x] == 5 then
                love.graphics.setColor(0,0,1)
                love.graphics.rectangle(wireframe, x * cellSize, y * cellSize, cellSize, cellSize)
            end
            if tablespr[y][x] == 6 then
                love.graphics.setColor(1,1,0)
                love.graphics.rectangle(wireframe, x * cellSize, y * cellSize, cellSize, cellSize)
            end
            if tablespr[y][x] == 7 then
                love.graphics.setColor(0,1,1)
                love.graphics.rectangle(wireframe, x * cellSize, y * cellSize, cellSize, cellSize)
            end
            if tablespr[y][x] == 8 then
                love.graphics.setColor(1,0,1)
                love.graphics.rectangle(wireframe, x * cellSize, y * cellSize, cellSize, cellSize)
            end
		end
	end
end

return rendercore