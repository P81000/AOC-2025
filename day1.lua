local lines = {}
local zero_counter = 0
local pos = 50

while true do
    local line = io.read("*l")
    if not line or line == "" then break end
    table.insert(lines, line)
end

for _, value in ipairs(lines) do
    local dir = string.sub(value, 1, 1)
    local dist = tonumber(string.sub(value, 2))

    if dir == "R" then
        pos = (pos + dist) % 100
    else
        pos = (pos - dist) % 100
    end

    if pos == 0 then zero_counter += 1 end
end

print(zero_counter)
