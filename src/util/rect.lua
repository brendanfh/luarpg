import {
}

Rectangle = class {
    init = function(self, x, y, w, h)
        self.x = x
        self.y = y
        self.w = w
        self.h = h;
    end;

    intersects = function(self, other)
        return self.x + self.w >= other.x and
                self.y + self.h >= other.y and
                self.x <= other.x + other.h and
                self.y <= other.y + other.h
    end;
}

return module { Rectangle }
