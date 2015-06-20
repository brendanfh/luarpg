local G = require "src/constants"

function love.conf(t)
    t.window = t.window or t.screen

    t.window.title = "Juego"
    t.window.width = G.width * G.scale
    t.window.height = G.height * G.scale
end
