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
    love.graphics.printf('PAUSE', 0, H/2, W, 'center')
end

function paused:keyreleased(key)
    if key == 'p' then
        GameState.pop()
    end
end

return paused

