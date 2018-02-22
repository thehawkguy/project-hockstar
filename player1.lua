require "player"
Player1 = Player:extend()

function Player1:new(x, y)
    -- body
    Player1.super.new(self, x, y)
    self.image = love.graphics.newImage("paddle_1.png")
end