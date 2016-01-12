--
-- Created by IntelliJ IDEA.
-- User: phil
-- Date: 09/01/2016
-- Time: 14:31
-- To change this template use File | Settings | File Templates.
--

GameState = require 'libs.hump.gamestate'
menu = require 'States.menu'
notmenu = require 'States.notmenu'
paused = require 'States.paused'

local HC = require "libs.hardoncollider"

local Game = require 'Game'
local game = Game:new()

local map, world, windowWidth, windowHeight


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
--    print('loading states')
--    local states = love.filesystem.getDirectoryItems('States')
--    for i = 1, #states do
--        local stateFile = states[i]
--        local name, ext = getNameAndExt(stateFile)
--        if ext == 'lua' then
--            print('Require: ' .. name )
--            _G[name] = require tostring(name)
--        end
--    end
--
--    for n,v in pairs(_G) do
--        print (n,v)
--    end


    GameState.switch(menu)
end

function love.update(dt)
    GameState.update(dt)
end


function love.draw()
    GameState.draw()
end


function love.keypressed(key)
    GameState.keypressed(key)
end

function love.keyreleased(key)
    GameState.keyreleased(key)
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

function getNameAndExt(file)
    local path, name, ext = string.match(file, "(.-)([^\\]-([^%.]+))$")
    return name, ext
end
