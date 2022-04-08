btassets = {}

imageload = love.graphics.newImage

path = "lunaris/system/boot/resources/"

function btassets.load()
    return {
        bticon              =       imageload(path .. "icon.png"),
        btloadicon          =       imageload(path .. "icon2.png")
    }
end

return btassets