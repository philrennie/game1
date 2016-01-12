--
-- Created by IntelliJ IDEA.
-- User: phil
-- Date: 12/01/2016
-- Time: 13:22
-- To change this template use File | Settings | File Templates.
--
local class = require 'middleclass'
local Character = require 'character'

local Player = class('Player', Character)

function Player:init(x, y, imgPath)
    Character:initialize(self, x, y, imgPath)
end

return Player
