require("entity")
Player = Entity:extend()

function Player:new(x, y, speed, side)
    -- body
    Player.super.new(self, x, y, speed, side)
    self.side = side
    if self.side == 1 then
        self.keyLeft = "a"
        self.keyRight = "d"
        self.width = Settings.Player1Width
        self.height = Settings.Player1Height
    else
        self.keyLeft = "left"
        self.keyRight = "right"
        self.width = Settings.Player2Width
        self.height = Settings.Player2Height
    end
end

function Player:update(dt)
    -- body
    if love.keyboard.isDown(self.keyLeft) then
        self.x = self.x - self.speed * dt
    end

    if love.keyboard.isDown(self.keyRight) then
        self.x = self.x + self.speed * dt
    end

end