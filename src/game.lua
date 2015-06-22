import {
    Screen = "src.gfx.screen:";
}

Game = singleton {
	init = function(self)
        self.states = {}
	end;

    registerStates = function(self, states)
        for k, v in pairs(states) do
            self.states[k] = v
        end
    end;

    setState = function(self, state, ...)
        if type(state) == "string" then
            self.state = self.states[state](self.state, ...)
        else
            self.state = state
        end
    end;

    getState = function(self)
        return self.state
    end;

    update = function(self, dt)
        self.state:update(dt)
    end;

    draw = function(self)
        Screen:begin()
        self.state:draw()
        Screen:release()
    end;
}

return module { Game }
