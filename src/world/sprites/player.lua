import {
    Sprite = "src.world.sprites.sprite:";
    Vec2 = "src.util.vec2:";
}

Player = Sprite.extend {
    init = function(self)
        Sprite.init(self)

        self.pos = Vec2(100, 50)
        self.width = 25
        self.height = 25
    end;

    update = function(self, dt)
        local x = 0
        local y = 0
        local speed = 100
        if love.keyboard.isDown "w" then
            y = -speed
        end
        if love.keyboard.isDown "s" then
            y = speed
        end
        if love.keyboard.isDown "a" then
            x = -speed
        end
        if love.keyboard.isDown "d" then
            x = speed
        end
        self.vel = Vec2(x, y) * dt
        self:move()
    end;
}

return module { Player }
