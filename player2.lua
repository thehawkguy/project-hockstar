require "player"
Player2 = Player:extend()

function Player2:new(x, y)
    -- body
    Player2.super.new(self, x, y)
    self.image = love.graphics.newImage("paddle_2.png")
end