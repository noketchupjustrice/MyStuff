mt = getrawmetatable(game) --Get Rawmetatables Of The Game
make_writeable(mt) --Make The Metatable Writeable
old_index = mt.__index --Old Index Before It Is Changed
mt.__index = function(a, b) --A = Instance Or The Object B = The Properties, So A = Stamina B = Value Of The Stamina
    if tostring(a) == "Stamina" then --If Stamina Is Being Read Then
        if tostring(b) == "Value" then --If B Is Equal To A Value
            return 69420 --If We Have It Return Our Own Value, The Game Will Think That's The Value They're Reading//(Insert Amount Of Stamina)
        end
    end
    return old_index(a, b) --Returns Old Index
end
