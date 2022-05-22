mt = getrawmetatable(game)
make_writeable(mt)
old_index = mt.__index
mt.__index = function(a, b)
    if tostring(a) == "cooldown" then
        if tostring(b) == "Value" then
            return false
        end
    end
    return old_index(a, b)
end
