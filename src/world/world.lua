import {
    SpriteManager = "src.world.sprites.spriteManager:";
}

World = class {
    init = function(self)
        self.sprites = SpriteManager()
    end;

    update = function(self, dt)
        self.sprites:update(dt)
    end;

    draw = function(self)
        self.sprites:draw()
    end;
}

return module { World }
