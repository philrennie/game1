--
-- Created by IntelliJ IDEA.
-- User: phil
-- Date: 12/01/2016
-- Time: 17:26
-- To change this template use File | Settings | File Templates.
--
local pretty = require 'pl.pretty'

local level1 = {}

function level1:enter()
    print('Enter level 1')
    pretty.dump(game.maps)
    game:loadMap("assets/maps/map01.lua")

end

function level1.update(dt)

    checkMovement(dt)
    positionPlayerWindow()

    game.map:update(dt)
end

function level1.draw()
    local player = game.map.layers["Sprite Layer"].sprites.player

    local translateX = clamp(0, playerWindow.x - playerMargin.x, self.worldWidth - self.windowWidth)
    local translateY = clamp(0, playerWindow.y - playerMargin.y, self.worldHeight - self.windowHeight)

    love.graphics.push()
    -- Draw Range culls unnecessary tiles
    love.graphics.translate(-translateX, -translateY)
    game.map:setDrawRange(translateX, translateY, self.windowWidth, self.windowHeight)

    -- Draw the map and all objects within
    map:draw()

    love.graphics.pop()
end

function checkMovement(dt)
    print('Check movement')

    local player = game.map.layers["Sprite Layer"].sprites.player
    local previousXY = {}
    previousXY = player.x, player.y

    if love.keyboard.isDown("left", 'a') then
        player.x = clamp(0, player.x - playerSpeed * dt, self.worldWidth)
    end
    if love.keyboard.isDown("right", 'd') then
        player.x = clamp(0, player.x + playerSpeed * dt, self.worldWidth)
    end
    if love.keyboard.isDown("up", 'w') then
        player.y = clamp(0, player.y - playerSpeed * dt, self.worldHeight)
    end
    if love.keyboard.isDown("down", 's') then
        player.y = clamp(0, player.y + playerSpeed * dt, self.worldHeight)
    end
    player.colliderRect:moveTo(player.x + 16, player.y + 16)

    -- check if player is colliding with world and prevent it
    local collisions = HC.collisions(player.colliderRect)
    for other, separating_vector in pairs(collisions) do
        player.x = player.x + separating_vector.x
        player.y = player.y + separating_vector.y
        player.colliderRect:move(-separating_vector.x, -separating_vector.y)
    end
end

return level1

