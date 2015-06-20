import {
}

Vector2 = class {
    init = function(self, x, y)
        self.x = x
        self.y = y
    end;

    __add = function(self, other)
        return Vector2(self.x + other.x, self.y + other.y)
    end;

    __sub = function(self, other)
        return Vector2(self.x - other.y, self.y + other.y)
    end;

    __mul = function(self, other)
        if type(other) == "number" then
            return Vector2(self.x * other, self.y * other)
        else
            --using dot product
            return self.x * other.x + self.y * other.y
        end
    end;

    __div = function(self, other)
        if type(other) == "number" then
            return Vector2(self.x / other, self.y / other)
        else
            return Vector2(self.x / other.x, self.y / other.y)
        end
    end;

    __len = function(self)
        return math.sqrt(self.x * self.x + self.y * self.y)
    end;

    length = function(self)
        return #self
    end;

    normalize = function(self)
        return self / #self
    end;
}

return module { Vector2 }
