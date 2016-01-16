--
-- Created by IntelliJ IDEA.
-- User: phil
-- Date: 12/01/2016
-- Time: 13:22
-- To change this template use File | Settings | File Templates.
--
local class = require 'libs.middleclass'
local Character = require 'Character'

local Player = class('Player', Character)

PLayer.static.imgPath = 'assets/sprites/player.png'

function Player:init(x, y)
    self.inventory = {
        gold = 10,
        weapons = {
            sword,
            bow
        }
    }
    Character:initialize(self, x, y, Player.imgPath)
    self.sprite = nil
end

return Player
