require("entity")
Puck = Entity:extend()

function Puck:new(x, y, speed)
    -- body
    Puck.super.new(self, x, y, speed)
    self.image = Settings.PuckImage
    self.direction = math.random(2)
end

function Puck:update(dt)
    -- body
    if self.direction == 1 then
        self.y = self.y + self.speed
    else
        self.y = self.y - self.speed
    end
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

        self.speed = self.speed + 1
        if self.direction == 1 then
            self.direction = 2
        else
            self.direction = 1
        end
    end

end
