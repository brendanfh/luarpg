import {
    BaseState = "src.states.base:";
    Screen = "src.gfx.screen:";
    G = "src.constants";

    World = "src.world.world:";
    Player = "src.world.sprites.player:";
    Game = "src.game:";
}

PlayState = BaseState.extend {
    init = function(self, parent)
        BaseState.init(self, parent)
        self.world = World()
        self.player = Player()

        self.world.sprites:add(self.player)
    end;

    update = function(self, dt)
        self.world:update(dt)
        if love.keyboard.isDown "t" then
            Game:setState(self.parent)
        end
    end;

    draw = function(self)
        self.world:draw()
    end;
}

return module { PlayState }
