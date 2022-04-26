str = {}
-- split each letter at individual position on table and return
function str.splitLetters(contentstr)
    char = {}

    for i in string.gmatch(contentstr, "%U") do
        table.insert(char, i)
    end
    return char
end

return str