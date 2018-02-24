require("entity")
Puck = Entity:extend()

function Puck:new(x, y, speed)
    -- body
    Puck.super.new(self, x, y, speed)
    self.image = Settings.PuckImage
    self.direction = math.random(2)
    self.angle = math.pi / 2
    self.sin = math.sin(self.angle)
    self.cos = math.cos(self.angle)

end

function Puck:update(dt)
    -- body
    -- if self.direction == 1 then
    --     self.y = self.y + self.speed * dt
    -- else
    --     self.y = self.y - self.speed * dt
    -- end

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

        self.angle = math.atan2(self.y - obj.midY, self.x - obj.midX)
        self.sin = math.sin(self.angle)
        self.cos = math.cos(self.angle)

        -- if self.direction == 1 then
        --     self.direction = 2
        -- else
        --     self.direction = 1
        -- end
    end

end