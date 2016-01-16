--
-- Created by IntelliJ IDEA.
-- User: phil
-- Date: 09/01/2016
-- Time: 14:31
-- To change this template use File | Settings | File Templates.
--
pretty = require 'pl.pretty'
GameState = require 'libs.hump.gamestate'


--menu = require 'States.menu'
--notmenu = require 'States.notmenu'
--paused = require 'States.paused'
--level1 = require 'States.level1'

HC = require "libs.hardoncollider"

local Game = require 'Game'
game = Game:new()

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
    -- load the game states from the States folder
    local states = love.filesystem.getDirectoryItems('States')
    for i = 1, #states do
        local stateFile = states[i]
        local name, ext = getNameAndExt(stateFile)
        if ext == 'lua' then
            print('Require: ' .. name )
            _G[string.sub(name, 1, -5)] = dofile('States/' .. tostring(name))
        end
    end


    GameState.registerEvents()
    GameState.switch(menu)
end

function love.update(dt)
    GameState.update(dt)
end
--
--
--function love.draw()
--    GameState.draw()
--end


function love.keypressed(key)
    GameState.keypressed(key)
end

function love.keyreleased(key)
    GameState.keyreleased(key)
end

function clamp(min, val, max)
    return math.max(min, math.min(val, max));
end

function getNameAndExt(file)
    local path, name, ext = string.match(file, "(.-)([^\\]-([^%.]+))$")
    return name, ext
end
