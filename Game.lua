--
-- Created by IntelliJ IDEA.
-- User: phil
-- Date: 12/01/2016
-- Time: 14:51
-- To change this template use File | Settings | File Templates.
--
local pretty = require 'pl.pretty'
local class = require 'middleclass'
local Game = class('Game')

local Player = require 'Player' -- player class
local sti = require "sti" -- Standard Tiled Loader

function Game:initialize()
    self.maps= {}
    self:findMaps()
    self.player = Player:new(0, 0, '')
    for i = 1, #self.maps do
        print(self.maps[i])
    end
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

function Game:loadMap()

end

function Game:GetExt(file)
    return file:match("^.+(%..+)$")
end

return Game

