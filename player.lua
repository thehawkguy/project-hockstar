require("entity")
Player = Entity:extend()

function Player:new(x, y, speed, side)
    -- body
    Player.super.new(self, x, y, speed, side)
    self.side = side
    self.midX = self.x + (Settings.Player1Width / 2)
    if self.side == 1 then
        self.keyLeft = "a"
        self.keyRight = "d"
        self.width = Settings.Player1Width
        self.height = Settings.Player1Height
        self.midY = self.y
    else
        self.keyLeft = "left"
        self.keyRight = "right"
        self.width = Settings.Player2Width
        self.height = Settings.Player2Height
        self.midY = self.y + (Settings.Player2Height / 2)
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

    self.midX = self.x + (Settings.Player1Width / 2)

end