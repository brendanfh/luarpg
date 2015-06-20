import { }

AssetManager = singleton {
    init = function(self)
        self.images = {}
        self.sounds = {}
    end;

    addImage = function(self, name, img)
        self.images[name] = img
    end;

    addSound = function(self, name, snd)
        self.sounds[name] = snd
    end;

    getImage = function(self, name)
        return self.images[name]
    end;

    getSound = function(self, name)
        return self.sounds[name]
    end;
}

return module { AssetManager }
