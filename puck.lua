require("entity")
Puck = Entity:extend()

function Puck:new(x, y, speed)
    -- body
    Puck.super.new(self, x, y, speed)
    self.image = Settings.PuckImage
    if flipCoin == 1 then
        self.angle = math.pi / 2
    else
        self.angle = math.pi * 1.5
    end
    self.sin = math.sin(self.angle)
    self.cos = math.cos(self.angle)
    self.midX = self.x + (Settings.PuckWidth / 2)
    self.midY = self.y + (Settings.PuckHeight / 2)

end

function Puck:update(dt)
    -- body
    -- if self.direction == 1 then
    --     self.y = self.y + self.speed * dt
    -- else
    --     self.y = self.y - self.speed * dt
    -- end
    self.sin = math.sin(self.angle)
    self.cos = math.cos(self.angle)

    self.x = self.x + self.speed * self.cos * dt
    self.y = self.y + self.speed * self.sin * dt

end

function Puck:checkCollision(obj)
    -- body
    local self_left = self.x
    local self_right = self.x + Settings.PuckWidth
    local self_top = self.y
    local self_bottom = self.y + Settings.PuckHeight

    local obj_left = obj.x
    local obj_right = obj.x + obj.width
    local obj_top = obj.y
    local obj_bottom = obj.y + obj.height

    if self_right > obj_left and
    self_left < obj_right and
    self_bottom > obj_top and
    self_top < obj_bottom then

        self.speed = self.speed + Settings.PuckAcc

        self.angle = math.atan2(self.midY - obj.midY, self.midX - obj.midX)

        -- if self.direction == 1 then
        --     self.direction = 2
        -- else
        --     self.direction = 1
        -- end
    end

end

function Puck:checkCollisionScreen()
    -- body
    local self_right = self.x + Settings.PuckWidth

    if self.x <= 0 then
        self.angle = math.atan2(0, self.midX)
    end

    if self_right >= Settings.WindowWidth then
        self.angle = math.atan2(0, self.midX - Settings.WindowWidth)
    end


end