while true do

    local yes = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0'}
    local value1 = math.random(1, 62)
    local value2 = math.random(1, 62)
    local value3 = math.random(1, 62)
    local value4 = math.random(1, 62)
    local value5 = math.random(1, 62)
    local value6 = math.random(1, 62)
    
    local code = yes[value1] .. yes[value2] .. yes[value3] .. yes[value4] .. yes[value5] .. yes[value6]
    print(code)
    wait(1)

    local args = {
        [1] = "join",
        [2] = code
    }
    
    game:GetService("ReplicatedStorage").PS:FireServer(unpack(args))

    
    appendfile("generated.txt", code .. "\n")
    
end