--
-- Created by IntelliJ IDEA.
-- User: phil
-- Date: 12/01/2016
-- Time: 16:37
-- To change this template use File | Settings | File Templates.
--
local paused = {}

function paused:enter(from)
    self.from = from -- record previous state
    print(from)
end

function paused:draw()
    local W, H = love.graphics.getWidth(), love.graphics.getHeight()
    -- draw previous screen
    self.from:draw()
    -- overlay with pause message
    love.graphics.setColor(0,0,0, 100)
    love.graphics.rectangle('fill', 0,0, W,H)
    love.graphics.setColor(255,255,255)
    love.graphics.printf('INVENTORY', 0, 20, W, 'center')
    love.graphics.printf('GOLD: 400', 40, 80, W-40, 'left')
    love.graphics.printf('MAGIC: Some', 40, 100, W-40, 'left')
    love.graphics.printf('PEICES OF STRING: 3', 40, 120, W-40, 'left')
end

function paused:keyreleased(key)
    print(key)
    if key == 'i' or key == 'escape'  then
        GameState.pop()
    end
end

return paused

