local lines = {}
local pos = 50
local crosses = 0

while true do
    local line = io.read("*l")
    if not line or line == "" then break end
    table.insert(lines, line)
end

for _, value in ipairs(lines) do
    local dir = value:sub(1, 1)
    local dist = tonumber(value:sub(2))

    local d = (dir == "R") and dist or -dist
    local raw = pos + d

    if d > 0 then
        crosses += math.floor(raw / 100) - math.floor(pos / 100)
    else
        crosses += math.ceil(pos / 100) - math.ceil(raw / 100)
    end

    pos = (raw % 100)
end

print(crosses)
