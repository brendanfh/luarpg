import {
    BaseState = "src.states.base:";
    Game = "src.game:";
}

MenuState = BaseState.extend {
    update = function(self, dt)
        if love.keyboard.isDown " " then
            Game:setState "play"
        end
    end;

    draw = function(self)
        love.graphics.setColor(255, 0, 0)
        love.graphics.rectangle("fill", 100, 100, 100, 100)
    end;
}

return module { MenuState }
