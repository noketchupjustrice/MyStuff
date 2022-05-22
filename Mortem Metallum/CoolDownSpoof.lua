mt = getrawmetatable(game)
make_writeable(mt)
old_index = mt.__index
mt.__index = function(a, b)
    if tostring(a) == "cooldown" then
        if tostring(b) == "Value" then
            return false --Turns CoolDown Off So You Can Infinitely Roll Or Something Idk Lol :3
        end
    end
    return old_index(a, b)
end
