import { }

BaseState = class {
    init = function(self, parent)
        self.parent = parent
    end;
    update = function(self, dt) end;
    draw = function(self) end;
}

return module { BaseState }
