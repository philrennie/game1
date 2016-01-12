--
-- Created by IntelliJ IDEA.
-- User: phil
-- Date: 12/01/2016
-- Time: 13:22
-- To change this template use File | Settings | File Templates.
--
local class = require 'middleclass'

local Character = class('Character')

function Character:initialize(x, y, imgPath)
    self.x = x
    self.y = y
    self.imgPath = imgPath
end

return Character
