--
-- Created by IntelliJ IDEA.
-- User: phil
-- Date: 12/01/2016
-- Time: 16:10
-- To change this template use File | Settings | File Templates.
--

local notmenu = {}

function notmenu:enter()

end

function notmenu:draw()
    love.graphics.print('Not Menu', 10, 20)
    love.graphics.print('Press r to continue', 10, 40)
end

function notmenu:update(dt) end

function notmenu:keyreleased(key, code)
    if key == 'r' then
        GameState.switch(menu)
    end
    if key == 'p' then
        GameState.push(paused)
    end
end


return notmenu