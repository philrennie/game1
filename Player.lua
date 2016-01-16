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

Player.static.imgPath = 'assets/sprites/player.png'

function Player:initialize(x, y)
    Character:initialize(x, y, Player.imgPath)
    self.inventory = {
        gold = 10,
        weapons = {
            sword,
            bow
        }
    }
    self.sprite = nil
end

return Player
