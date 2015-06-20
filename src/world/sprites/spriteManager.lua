import {
    genUUID = "src.util.utils:genUUID";
}

SpriteManager = class {
    init = function(self)
        self.sprites = {}
    end;

    add = function(self, spr)
        spr.id = genUUID();
        table.insert(self.sprites, spr);
    end;
}

return module { SpriteManager }
