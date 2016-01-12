--
-- Created by IntelliJ IDEA.
-- User: phil
-- Date: 12/01/2016
-- Time: 16:10
-- To change this template use File | Settings | File Templates.
--

local menu = {}

function menu:enter()

end

function menu:draw()
    love.graphics.print('Menu', 10, 20)
    love.graphics.print('Press r to continue', 10, 40)
end

function menu:update(dt) end

function menu:keyreleased(key, code)
    if key == 'r' then
        GameState.switch(level1)
    end
end


return menu