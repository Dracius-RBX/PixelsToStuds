
local math = {}

function math:getConversion(x, y)
    return x / y
end

function math:getConversionFromFraction(fraction, total, y)
    return self:getConversion(fraction * total, y)
end

return math