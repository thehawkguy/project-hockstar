-- local json = require 'dkjson'
-- local debuggee = require 'vscode-debuggee'
-- local startResult, breakerType = debuggee.start(json)
-- print('debuggee start ->', startResult, breakerType)

-- debuggee.poll()

function love.load()
    -- body
    Object = require("classic")
    require("settings")
    require("hawkkeys")
    require("player")
    -- require "entity"
    require("puck")

    gameRunning = true

    player1 = Player(Settings.Player1X, Settings.Player1Y, Settings.Player1Speed, 1)
    player2 = Player(Settings.Player2X, Settings.Player2Y, Settings.Player2Speed, 2)
    player1.image = Settings.Player1Image
    player2.image = Settings.Player2Image
    puck = Puck(Settings.PuckX, Settings.PuckY, Settings.PuckYSpeed)
end

function love.update(dt)
    -- body
    if gameRunning then
        player1:update(dt)
        player2:update(dt)
        puck:update(dt)

        puck:checkCollision(player1)
        puck:checkCollision(player2)
    end
end

function love.draw()
    -- body
    player1:draw()
    player2:draw()
    puck:draw()

    love.graphics.print(puck.direction, 10, 50)
end