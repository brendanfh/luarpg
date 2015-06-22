import {
    genUUID = "src.util.utils:genUUID";
}

SpriteManager = class {
    init = function(self)
        self.sprites = {}
    end;

    add = function(self, spr)
        spr.id = genUUID();
        table.insert(self.sprites, spr)
    end;

    remove = function(self, spr)
        local i = nil
        for id, s in ipairs(self.sprites) do
            if spr.id == s.id then
                i = id
                break
            end
        end
        self.sprites[i] = nil
    end;

    update = function(self, dt)
        for _, spr in ipairs(self.sprites) do
            spr:update(dt)
        end
    end;

    draw = function(self)
        for _, spr in ipairs(self.sprites) do
            spr:draw()
        end
    end;
}

return module { SpriteManager }
