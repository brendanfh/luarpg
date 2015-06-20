import {
    SpriteManager = "src.world.sprites.spriteManager:";
}

World = class {
    init = function(self)
        self.sprites = SpriteManager();
    end;
}

return module { World }
