--
-- Created by IntelliJ IDEA.
-- User: phil
-- Date: 12/01/2016
-- Time: 14:51
-- To change this template use File | Settings | File Templates.
--

local Player = require 'Player' -- player class
local sti = require "libs.sti" -- Standard Tiled Loader

local class = require 'libs.middleclass'
local Game = class('Game')

function Game:initialize()

    self.maps= {}

    self.player = Player:new(0, 0)

    -- Grab window size
    self.windowWidth = love.graphics.getWidth()
    self.windowHeight = love.graphics.getHeight()

    self.playerMargin = {}

    -- margin we try to keep the player in from edge of screen
    self.playerMargin.x = love.graphics.getWidth()/4
    self.playerMargin.y = love.graphics.getHeight()/4

    self.playerSpeed = 300

    self.playerWindow = {
        x = 0,
        y = 0,
        width = 0,
        height = 0
    }
    self.worldCollisionRects = {}
end

function Game:findMaps()
    local maps = self.maps
    local files = love.filesystem.getDirectoryItems('assets/maps')
    for i = 1, #files do
        if self:GetExt(files[i]) == '.lua' then
            maps[#maps+1] = files[i]
        end
    end
end

-- Move the player window if needed
function Game:positionPlayerWindow()
    local player = self.map.layers["Sprite Layer"].sprites.player

    if player.x < self.playerWindow.x then
        -- move window position left
        self.playerWindow.x = clamp(self.playerMargin.x, player.x, self.worldWidth - self.playerMargin.x)
    end
    if player.x > self.playerWindow.x + self.playerWindow.width then
        -- move window position right
        self.playerWindow.x = clamp(self.playerMargin.x, player.x - self.playerWindow.width, self.worldWidth - self.playerMargin.x)
    end
    if player.y < self.playerWindow.y then
        -- move window position up
        self.playerWindow.y = clamp(self.playerMargin.y, player.y, self.worldHeight - self.playerMargin.y)
    end
    if player.y > self.playerWindow.y + self.playerWindow.height then
        -- move window position down
        self.playerWindow.y = clamp(self.playerMargin.y, player.y - self.playerWindow.height, self.worldHeight - self.playerMargin.y)
    end
end

function Game:updateMap(dt)
    map = self.map
    map:update(dt)
end

function Game:loadMap(mapPath)

    -- Load a map exported to Lua from Tiled
    self.map = sti.new(mapPath)

    -- Grab the size of the map in pixels
    self.worldWidth = self.map.width * self.map.tilewidth
    self.worldHeight = self.map.height * self.map.tilewidth

    -- Create a Custom Layer
    self.map:addCustomLayer("Sprite Layer", 3)

    -- find the player spawn
    local playerSpawn = { x = nil, y = nil }
    local spawnLayer = self.map.layers["objects"]
    for i, object in ipairs(spawnLayer.objects) do
        if object.name == "playerspawn" then
            playerSpawn.x = object.x
            playerSpawn.y = object.y
        end
    end
    self.map.layers["objects"].visible = false

    -- Add data to Custom Layer - place the player center in the world
    local spriteLayer = self.map.layers["Sprite Layer"]
    local playerimage = love.graphics.newImage(self.player.imgPath)
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
--        for _, sprite in pairs(self.sprites) do
--            sprite.r = sprite.r + math.rad(90 * dt)
--        end
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

    self.player.sprite = spriteLayer.sprites.player

    -- setup the size and position of the player window
    self.playerWindow.width = 2 * self.playerMargin.x
    self.playerWindow.height = 2 * self.playerMargin.y

    -- we keep the player window within the margins of the map
    self.playerWindow.x = clamp(self.playerMargin.x, spriteLayer.sprites.player.x - self.playerMargin.x,
        self.worldWidth - self.playerMargin.x)
    self.playerWindow.y = clamp(self.playerMargin.y, spriteLayer.sprites.player.y - self.playerMargin.y,
        self.worldHeight - self.playerMargin.y)

    self:addWorldCollisions()
end

function Game:addWorldCollisions()
    local collisionLayer = self.map.layers["collisions"]
    collisionLayer.visible = false

    for i, object in ipairs(collisionLayer.objects) do
        if object.shape == "rectangle" then
            self.worldCollisionRects[#self.worldCollisionRects+1] = HC.rectangle(object.x, object.y, object.width, object.height)
        elseif object.shape == "polygon" then
            local thisPolygon = object.polygon
            local corners = {}
            for i = 1, #thisPolygon, 1 do
                corners[#corners+1] = thisPolygon[i].x
                corners[#corners+1] = thisPolygon[i].y
            end
            self.worldCollisionRects[#self.worldCollisionRects+1] = HC.polygon(unpack(corners))
        end
    end
end

function Game:GetNameAndExt(file)
    local name = file:match("^.+/(.+)$")
    local ext = file:match("^.+(%..+)$")
    return name, ext
end

function Game:GetExt(file)
    return file:match("^.+(%..+)$")
end

return Game

