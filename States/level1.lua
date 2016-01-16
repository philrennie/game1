--
-- Created by IntelliJ IDEA.
-- User: phil
-- Date: 12/01/2016
-- Time: 17:26
-- To change this template use File | Settings | File Templates.
--

local level1 = {}

function level1:enter()
    print('Enter level 1')
--    game:loadMap("assets/maps/map01.lua")
    print('Done enering level 1')
end

function level1:update(dt)
    checkMovement(dt)
    game:positionPlayerWindow()

    game:updateMap(dt)
end

function level1:draw()
    local player = game.map.layers["Sprite Layer"].sprites.player

    local translateX = clamp(0, game.playerWindow.x - game.playerMargin.x, game.worldWidth - game.windowWidth)
    local translateY = clamp(0, game.playerWindow.y - game.playerMargin.y, game.worldHeight - game.windowHeight)

    love.graphics.push()
    -- Draw Range culls unnecessary tiles
    love.graphics.translate(-translateX, -translateY)
    game.map:setDrawRange(translateX, translateY, game.windowWidth, game.windowHeight)

    -- Draw the map and all objects within
    map:draw()

    love.graphics.pop()
end

function checkMovement(dt)
    local previousXY = {}
    previousXY = game.player.x, game.player.y
    local player = game.player.sprite
    local playerSpeed = game.playerSpeed

    if love.keyboard.isDown("left", 'a') then
        player.x = clamp(0, player.x - playerSpeed * dt, game.worldWidth)
    end
    if love.keyboard.isDown("right", 'd') then
        player.x = clamp(0, player.x + playerSpeed * dt, game.worldWidth)
    end
    if love.keyboard.isDown("up", 'w') then
        player.y = clamp(0, player.y - playerSpeed * dt, game.worldHeight)
    end
    if love.keyboard.isDown("down", 's') then
        player.y = clamp(0, player.y + playerSpeed * dt, game.worldHeight)
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

function level1:keyreleased(key)
    if key == 'escape' then
        GameState.switch(menu)
    end

    if key == 'p' then
        GameState.push(paused)
    end

    if key == 'i' then
        GameState.push(inventory)
    end
end

return level1

