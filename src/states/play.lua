import {
    BaseState = "src.states.base:";
    Screen = "src.gfx.screen:";
    G = "src.constants";

    World = "src.world.world:"
}

PlayState = BaseState.extend {
    init = function(self)
        self.world = World()
    end;

    draw = function(self)
        love.graphics.setColor(255, 0, 0)
        love.graphics.rectangle("fill", 0, 0, G.width, G.height)

        love.graphics.setColor(0, 0, 0)
        love.graphics.rectangle("fill", 5, 5, G.width - 10, G.height - 10)
    end;
}

return module { PlayState }
