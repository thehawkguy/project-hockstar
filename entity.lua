Entity = Object:extend()

function Entity:new(x, y, speed)
    self.x = x
    self.y = y
    self.speed = speed
    self.width = width
    self.height = height
end

function Entity:draw()
    love.graphics.draw(self.image, self.x, self.y)
end