utils = {}

function utils.split(s, delimiter)
    result = {}
    for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match)
    end
    return result
end

function utils.checkCollision(x1, y1, l1, a1, x2, y2, l2, a2)
    return x2 < x1 + l1 and
    x1 < x2 + l2 and
    y1 < y2 + a2 and
    y2 < y1 + a1
end

return utils 