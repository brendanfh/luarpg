require "lib/mod"

import {
	Game = "src.game:";
    MenuState = "src.states.menu:";
    PlayState = "src.states.play:";
}

function love.load()
    Game:registerStates {
        menu = MenuState;
        play = PlayState;
    }
    Game:setState "menu"
end

function love.update(dt)
    Game:update(dt)
end

function love.draw()
    Game:draw()
end
