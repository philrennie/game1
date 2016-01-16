--
-- Created by IntelliJ IDEA.
-- User: phil
-- Date: 12/01/2016
-- Time: 16:10
-- To change this template use File | Settings | File Templates.
--

local menu = {}

function menu:enter()
    if #game.maps == 0 then
        game:findMaps()
    end
end

function menu:draw()
    love.graphics.print('Menu', 10, 20)
    love.graphics.print('Choose a map', 10, 40)
    for i, map in ipairs(game.maps) do
        love.graphics.print(i .. ') ' .. map, 10, 40 + i*20)
    end
end

function menu:update(dt) end

function menu:keyreleased(key, code)
    if game.maps[tonumber(key)] ~= nil then
        game:loadMap("assets/maps/" .. game.maps[tonumber(key)])
        GameState.switch(level1)
    end

    if key == 'escape' then
        love.event.push('quit')
    end
end


return menu