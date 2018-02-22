SettingsClass = Object:extend()

function SettingsClass:new()
    self.WindowWidth, self.WindowHeight = love.graphics.getDimensions()
    self.Border = 25
    self.Player1Image = love.graphics.newImage("paddle_1.png")
    self.Player2Image = love.graphics.newImage("paddle_2.png")
    self.PuckImage = love.graphics.newImage("puck.png")
    self.Player1Height = self.Player1Image:getHeight()
    self.Player2Height = self.Player2Image:getHeight()
    self.PuckHeight = self.PuckImage:getHeight()
    self.Player1Width = self.Player1Image:getWidth()
    self.Player2Width = self.Player2Image:getWidth()
    self.PuckWidth = self.PuckImage:getWidth()
    self.Player1X = (self.WindowWidth / 2) - (self.Player1Width / 2)
    self.Player2X = (self.WindowWidth / 2) - (self.Player2Width / 2)
    self.PuckX = (self.WindowWidth / 2) - (self.PuckWidth / 2)
    self.Player1Y = self.Border
    self.Player2Y = self.WindowHeight - self.Player2Height - self.Border
    self.PuckY = (self.WindowHeight / 2) - (self.PuckHeight / 2)
    self.Player1Speed = 500
    self.Player2Speed = 500
    self.PuckXSpeed = 0
    self.PuckYSpeed = 3

end

Settings = SettingsClass()