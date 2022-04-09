btassets = {}

imageload = love.graphics.newImage

btpath = "lunaris/system/boot/resources/"

function btassets.load()
    return {
        bticon              =       imageload(btpath .. "icon.png"),
        btloadicon          =       imageload(btpath .. "icon2.png")
    }
end

return btassets