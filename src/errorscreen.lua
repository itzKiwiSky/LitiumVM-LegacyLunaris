error = {}

bgcolor         =       love.graphics.setBackgroundColor
scale           =       love.graphics.scale
color           =       love.graphics.setColor
lprint          =       love.graphics.print
push            =       love.graphics.push
pop             =       love.graphics.pop



err_text = [[
    you found a way to fuck with your system
    good job :D
]]

function error.init()
    backcolor = {0.3, 0.2, 1}
    bgcolor(backcolor)
    textdraw(err_text)
end

function textdraw(string)
    push()
        color(1, 1, 1)
        scale(2, 2)
        lprint(string, 48, 48)
    pop()
end

return error