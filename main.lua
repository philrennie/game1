--
-- Created by IntelliJ IDEA.
-- User: phil
-- Date: 09/01/2016
-- Time: 14:31
-- To change this template use File | Settings | File Templates.
--
local pretty = require 'pl.pretty'
local sti = require "sti"
local HC = require "hardoncollider"

local map, world, windowWidth, windowHeight

local Player = require "Player"
local player = Player:new(200, 300, 'sdfsdfsf')

local playerSpawn, spawnLayer
local playerSpeed = 400
local playerWindow = {
    width = 0,
    height = 0,
    x = 0,
    y = 0
}
local playerMargin = {  -- area we try to keep the 'camera' in if the world allows
    x = 0,
    y = 0
}

local worldWidth = 0 -- maximum map width
local worldHeight = 0 -- maximum map height

local worldCollisionRects = {} -- collision items to restrict world movement


function love.load()
    -- Load a map exported to Lua from Tiled
    map = sti.new("assets/maps/map01.lua")

    -- Grab the size of the map in pixels
    worldWidth = map.width * map.tilewidth
    worldHeight = map.height * map.tilewidth

    -- Create a Custom Layer
    map:addCustomLayer("Sprite Layer", 3)

    -- Grab window size
    windowWidth  = love.graphics.getWidth()
    windowHeight = love.graphics.getHeight()

    -- find the player spawn
    playerSpawn = { x = nil, y = nil }
    spawnLayer = map.layers["objects"]
    for i, object in ipairs(spawnLayer.objects) do
        if object.name == "playerspawn" then
            playerSpawn.x = object.x
            playerSpawn.y = object.y
        end
    end
    map.layers["objects"].visible = false

    -- Add data to Custom Layer - place the player center in the world
    local spriteLayer = map.layers["Sprite Layer"]
    local playerimage = love.graphics.newImage("assets/sprites/player.png")
    local cRect = HC.rectangle(playerSpawn.x, playerSpawn.y, 32, 32)
    spriteLayer.sprites = {
        player = {
            image = playerimage,
            x = playerSpawn.x,
            y = playerSpawn.y,
            r = 0,
            colliderRect = cRect
        }
    }

    -- Update callback for Custom Layer
    function spriteLayer:update(dt)
        for _, sprite in pairs(self.sprites) do
            sprite.r = sprite.r + math.rad(90 * dt)
        end
    end

    -- Draw callback for Custom Layer
    function spriteLayer:draw()
        for _, sprite in pairs(self.sprites) do
            local x = math.floor(sprite.x)
            local y = math.floor(sprite.y)
            local r = sprite.r
            r = 0
            love.graphics.draw(sprite.image, x, y, r)
        end
    end

    -- margin we try to keep the player in from edge of screen
    playerMargin.x = love.graphics.getWidth()/4
    playerMargin.y = love.graphics.getHeight()/4

    -- setup the size and position of the player window
    playerWindow.width = 2 * playerMargin.x
    playerWindow.height = 2 * playerMargin.y

    -- we keep the player window within the margins of the map
    playerWindow.x = clamp(playerMargin.x, spriteLayer.sprites.player.x - playerMargin.x, worldWidth - playerMargin.x)
    playerWindow.y = clamp(playerMargin.y, spriteLayer.sprites.player.y - playerMargin.y, worldHeight - playerMargin.y)

    addWorldCollisions()

end

function addWorldCollisions()
    local collisionLayer = map.layers["collisions"]
    collisionLayer.visible = false

    for i, object in ipairs(collisionLayer.objects) do
        if object.shape == "rectangle" then
            worldCollisionRects[#worldCollisionRects+1] = HC.rectangle(object.x, object.y, object.width, object.height)
        elseif object.shape == "polygon" then
            local thisPolygon = object.polygon
            local corners = {}
            for i = 1, #thisPolygon, 1 do
                corners[#corners+1] = thisPolygon[i].x
                corners[#corners+1] = thisPolygon[i].y
            end
            worldCollisionRects[#worldCollisionRects+1] = HC.polygon(unpack(corners))
        end
    end
    -- HC.polygon(1024, 840, 1044,840, 1044,850, 1024,850)
end

function love.update(dt)
    local player = map.layers["Sprite Layer"].sprites.player

    checkMovement(dt)
    positionPlayerWindow()

    map:update(dt)

    -- check for collisions
--    local collisions = HC.collisions(player.colliderRect)
--    for shape, delta in pairs(collisions) do
--        text[#text+1] = string.format(" Colliding. Separating vector = (%s,%s)", delta.x, delta.y)
--    end
--    local pccx, pccy = player.colliderRect:center()
--    text[#text+1] = string.format("PLayer x, y, crx, cry, wcrc = (%s, %s, %s, %s, %s)", player.x, player.y, pccx - 16, pccy -16, #worldCollisionRects)
--
--    while #text > 40 do
--        table.remove(text, 1)
--    end
end

function checkMovement(dt)
    local player = map.layers["Sprite Layer"].sprites.player
    local previousXY = {}
    previousXY = player.x, player.y

    if love.keyboard.isDown("left", 'a') then
        player.x = clamp(0, player.x - playerSpeed * dt, worldWidth)
    end
    if love.keyboard.isDown("right", 'd') then
        player.x = clamp(0, player.x + playerSpeed * dt, worldWidth)
    end
    if love.keyboard.isDown("up", 'w') then
        player.y = clamp(0, player.y - playerSpeed * dt, worldHeight)
    end
    if love.keyboard.isDown("down", 's') then
        player.y = clamp(0, player.y + playerSpeed * dt, worldHeight)
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

-- Move the player window if needed
function positionPlayerWindow()
    local player = map.layers["Sprite Layer"].sprites.player
    if player.x < playerWindow.x then
        -- move window position left
        playerWindow.x = clamp(playerMargin.x, player.x, worldWidth - playerMargin.x)
    end
    if player.x > playerWindow.x + playerWindow.width then
        -- move window position right
        playerWindow.x = clamp(playerMargin.x, player.x - playerWindow.width, worldWidth - playerMargin.x)
    end
    if player.y < playerWindow.y then
        -- move window position up
        playerWindow.y = clamp(playerMargin.y, player.y, worldHeight - playerMargin.y)
    end
    if player.y > playerWindow.y + playerWindow.height then
        -- move window position down
        playerWindow.y = clamp(playerMargin.y, player.y - playerWindow.height, worldHeight - playerMargin.y)
    end
end

function clamp(min, val, max)
    return math.max(min, math.min(val, max));
end

function love.draw()
    local player = map.layers["Sprite Layer"].sprites.player

    local translateX = clamp(0, playerWindow.x - playerMargin.x, worldWidth-windowWidth)
    local translateY = clamp(0, playerWindow.y - playerMargin.y, worldHeight-windowHeight)

    love.graphics.push()
    -- Draw Range culls unnecessary tiles
    love.graphics.translate(-translateX, -translateY)
    map:setDrawRange(translateX, translateY, windowWidth, windowHeight)

    -- Draw the map and all objects within
    map:draw()

    love.graphics.pop()

    -- print messages
--    for i = 1,#text do
--        love.graphics.setColor(255,255,255, 255 - (i-1) * 6)
--        love.graphics.print(text[#text - (i-1)], 10, i * 15)
--    end
end