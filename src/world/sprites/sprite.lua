import {
    Vec2 = "src.util.vec2:";
    Rect = "src.util.rect:";
}

Sprite = class {
    id = "undefined";

    init = function(self)
        self.pos = Vec2(0, 0)
        self.vel = Vec2(0, 0)
        self.off_pos = Vec2(0, 0)

        self.width = 0
        self.height = 0
    end;

    move = function(self)
        self.pos = self.pos + self.vel
    end;

    getRect = function(self)
        return Rect(self.pos.x + self.off_pos.x, self.pos.y + self.off_pos.y, self.width, self.height)
    end;

    update = function(self)
    end;

    draw = function(self)
        love.graphics.setColor(255, 255, 255)
        local r = self:getRect()
        love.graphics.rectangle("fill", r.x, r.y, r.w, r.h)
    end;
}

return module { Sprite }
