local module = {}

local mutations = 
{
    ["Eclipsed"] = {
        Name = "Eclipsed",
        Color = Color3.fromRGB(44, 111, 162),
        ValueMulti = 30
    },
    ["Meteoric"] = {
        Name = "Meteoric",
        Color = Color3.fromRGB(73, 29, 193),
        ValueMulti = 125
    },
    ["Fried"] = {
        Name = "Fried",
        Color = Color3.fromRGB(223, 110, 34),
        ValueMulti = 8
    },
    ["Drenched"] = {
        Name = "Drenched",
        Color = Color3.fromRGB(0, 55, 228),
        ValueMulti = 5
    },
    ["Tempestuous"] = {
        Name = "Tempestuous",
        Color = Color3.fromRGB(143, 163, 180),
        ValueMulti = 12
    },
    ["Shocked"] = {
        Name = "Shocked",
        Color = Color3.fromRGB(255, 255, 100),
        ValueMulti = 100
    },
    ["Aurora"] = {
        Name = "Aurora",
        Color = Color3.fromRGB(99, 89, 175),
        ValueMulti = 90
    },
    ["Choc"] = {
        Name = "Choc",
        Color = Color3.fromRGB(92, 64, 51),
        ValueMulti = 2
    },
    ["Bloodlit"] = {
        Name = "Bloodlit",
        Color = Color3.fromRGB(200, 0, 0),
        ValueMulti = 4
    },
    ["Spaghetti"] = {
        Name = "Spaghetti",
        Color = Color3.fromRGB(255, 140, 70),
        ValueMulti = 15
    },
    ["Sliced"] = {
        Name = "Sliced",
        Color = Color3.fromRGB(223, 223, 223),
        ValueMulti = 50
    },
    ["Verdant"] = {
        Name = "Verdant",
        Color = Color3.fromRGB(34, 139, 34),
        ValueMulti = 4
    },
    ["Infected"] = {
        Name = "Infected",
        Color = Color3.fromRGB(67, 167, 0),
        ValueMulti = 75
    },
    ["Junkshock"] = {
        Name = "Junkshock",
        Color = Color3.fromRGB(147, 247, 0),
        ValueMulti = 45
    },
    ["AncientAmber"] = {
        Name = "AncientAmber",
        Color = Color3.fromRGB(204, 68, 0),
        ValueMulti = 50
    },
    ["Twisted"] = {
        Name = "Twisted",
        Color = Color3.fromRGB(191, 191, 191),
        ValueMulti = 5
    },
    ["Alienlike"] = {
        Name = "Alienlike",
        Color = Color3.fromRGB(0, 223, 197),
        ValueMulti = 100
    },
    ["FoxfireChakra"] = {
        Name = "FoxfireChakra",
        Color = Color3.fromRGB(255, 80, 65),
        ValueMulti = 90
    },
    ["CorruptChakra"] = {
        Name = "CorruptChakra",
        Color = Color3.fromRGB(0, 85, 255),
        ValueMulti = 15
    },
    ["Cooked"] = {
        Name = "Cooked",
        Color = Color3.fromRGB(210, 120, 60),
        ValueMulti = 10
    },
    ["Chilled"] = {
        Name = "Chilled",
        Color = Color3.fromRGB(135, 206, 250),
        ValueMulti = 2
    },
    ["Heavenly"] = {
        Name = "Heavenly",
        Color = Color3.fromRGB(255, 249, 160),
        ValueMulti = 5
    },
    ["Radioactive"] = {
        Name = "Radioactive",
        Color = Color3.fromRGB(98, 255, 0),
        ValueMulti = 55
    },
    ["Aromatic"] = {
        Name = "Aromatic",
        Color = Color3.fromRGB(162, 145, 57),
        ValueMulti = 3
    },
    ["Boil"] = {
        Name = "Boil",
        Color = Color3.fromRGB(150, 178, 225),
        ValueMulti = 15
    },
    ["Celestial"] = {
        Name = "Celestial",
        Color = Color3.fromRGB(255, 0, 255),
        ValueMulti = 120
    },
    ["Windstruck"] = {
        Name = "Windstruck",
        Color = Color3.fromRGB(162, 185, 209),
        ValueMulti = 2
    },
    ["Burnt"] = {
        Name = "Burnt",
        Color = Color3.fromRGB(40, 40, 40),
        ValueMulti = 4
    },
    ["Wet"] = {
        Name = "Wet",
        Color = Color3.fromRGB(64, 164, 223),
        ValueMulti = 2
    },
    ["Friendbound"] = {
        Name = "Friendbound",
        Color = Color3.fromRGB(255, 0, 127),
        ValueMulti = 70
    },
    ["Paradisal"] = {
        Name = "Paradisal",
        Color = Color3.fromRGB(176, 240, 0),
        ValueMulti = 100
    },
    ["Lightcycle"] = {
        Name = "Lightcycle",
        Color = Color3.fromRGB(255, 255, 255),
        ValueMulti = 12
    },
    ["Clay"] = {
        Name = "Clay",
        Color = Color3.fromRGB(147, 129, 122),
        ValueMulti = 5
    },
    ["Amber"] = {
        Name = "Amber",
        Color = Color3.fromRGB(255, 192, 0),
        ValueMulti = 10
    },
    ["Subzero"] = {
        Name = "Subzero",
        Color = Color3.fromRGB(0, 255, 255),
        ValueMulti = 40
    },
    ["HoneyGlazed"] = {
        Name = "HoneyGlazed",
        Color = Color3.fromRGB(255, 204, 0),
        ValueMulti = 5
    },
    ["Frozen"] = {
        Name = "Frozen",
        Color = Color3.fromRGB(108, 184, 255),
        ValueMulti = 10
    },
    ["Corrupt"] = {
        Name = "Corrupt",
        Color = Color3.fromRGB(176, 23, 26),
        ValueMulti = 20
    },
    ["OldAmber"] = {
        Name = "OldAmber",
        Color = Color3.fromRGB(252, 106, 33),
        ValueMulti = 20
    },
    ["Touchdown"] = {
        Name = "Touchdown",
        Color = Color3.fromRGB(203, 95, 0),
        ValueMulti = 105
    },
    ["Disco"] = {
        Name = "Disco",
        Color = Color3.fromRGB(255, 105, 180),
        ValueMulti = 125
    },
    ["Jackpot"] = {
        Name = "Jackpot",
        Color = Color3.fromRGB(132, 245, 112),
        ValueMulti = 15
    },
    ["Sandy"] = {
        Name = "Sandy",
        Color = Color3.fromRGB(212, 191, 141),
        ValueMulti = 3
    },
    ["Sauce"] = {
        Name = "Sauce",
        Color = Color3.fromRGB(200, 45, 35),
        ValueMulti = 3
    },
    ["Moonlit"] = {
        Name = "Moonlit",
        Color = Color3.fromRGB(153, 141, 255),
        ValueMulti = 2
    },
    ["Oil"] = {
        Name = "Oil",
        Color = Color3.fromRGB(52, 52, 77),
        ValueMulti = 15
    },
    ["Cloudtouched"] = {
        Name = "Cloudtouched",
        Color = Color3.fromRGB(225, 255, 255),
        ValueMulti = 5
    },
    ["Toxic"] = {
        Name = "Toxic",
        Color = Color3.fromRGB(85, 255, 0),
        ValueMulti = 12
    },
    ["Tranquil"] = {
        Name = "Tranquil",
        Color = Color3.fromRGB(255, 255, 255),
        ValueMulti = 20
    },
    ["Enlightened"] = {
        Name = "Enlightened",
        Color = Color3.fromRGB(255, 255, 255),
        ValueMulti = 35
    },
    ["Meatball"] = {
        Name = "Meatball",
        Color = Color3.fromRGB(139, 69, 19),
        ValueMulti = 3
    },
    ["CorruptFoxfireChakra"] = {
        Name = "CorruptFoxfireChakra",
        Color = Color3.fromRGB(0, 0, 255),
        ValueMulti = 90
    },
    ["HarmonisedFoxfireChakra"] = {
        Name = "HarmonisedFoxfireChakra",
        Color = Color3.fromRGB(170, 85, 255),
        ValueMulti = 190
    },
    ["HarmonisedChakra"] = {
        Name = "HarmonisedChakra",
        Color = Color3.fromRGB(170, 85, 255),
        ValueMulti = 35
    },
    ["Static"] = {
        Name = "Static",
        Color = Color3.fromRGB(255, 255, 0),
        ValueMulti = 8
    },
    ["Pasta"] = {
        Name = "Pasta",
        Color = Color3.fromRGB(255, 223, 128),
        ValueMulti = 3
    },
    ["Chakra"] = {
        Name = "Chakra",
        Color = Color3.fromRGB(255, 80, 65),
        ValueMulti = 15
    },
    ["Plasma"] = {
        Name = "Plasma",
        Color = Color3.fromRGB(208, 43, 137),
        ValueMulti = 5
    },
    ["Molten"] = {
        Name = "Molten",
        Color = Color3.fromRGB(223, 100, 0),
        ValueMulti = 25
    },
    ["Dawnbound"] = {
        Name = "Dawnbound",
        Color = Color3.fromRGB(255, 213, 0),
        ValueMulti = 150
    },
    ["Ceramic"] = {
        Name = "Ceramic",
        Color = Color3.fromRGB(234, 184, 146),
        ValueMulti = 32
    },
    ["Wiltproof"] = {
        Name = "Wiltproof",
        Color = Color3.fromRGB(0, 222, 155),
        ValueMulti = 4
    },
    ["Pollinated"] = {
        Name = "Pollinated",
        Color = Color3.fromRGB(255, 170, 0),
        ValueMulti = 3
    },
    ["Zombified"] = {
        Name = "Zombified",
        Color = Color3.fromRGB(128, 199, 127),
        ValueMulti = 25
    },
    ["Blitzshock"] = {
        Name = "Blitzshock",
        Color = Color3.fromRGB(0, 192, 245),
        ValueMulti = 50
    },
    ["Sundried"] = {
        Name = "Sundried",
        Color = Color3.fromRGB(207, 93, 0),
        ValueMulti = 85
    },
    ["Voidtouched"] = {
        Name = "Voidtouched",
        Color = Color3.fromRGB(225, 0, 255),
        ValueMulti = 135
    },
    ["Galactic"] = {
        Name = "Galactic",
        Color = Color3.fromRGB(243, 148, 255),
        ValueMulti = 120
    },
    ["Acidic"] = {
        Name = "Acidic",
        Color = Color3.fromRGB(224, 245, 129),
        ValueMulti = 15
    },
}

function module.GetMutations()
    local list = {}
    for _, data in pairs(mutations) do
        table.insert(list, data)
    end
    return list
end

function module:CalcValueMulti(plant)
    if typeof(plant) ~= "Instance" then
        return 1
    end

    local valueMulti = 1
    local detected = {}
    
    for name, data in pairs(mutations) do
        if plant:GetAttribute(name) then
            valueMulti += (data.ValueMulti - 1)
            detected[name] = true
        end
    end

    for _, child in ipairs(plant:GetChildren()) do
        if child:IsA("StringValue") then
            local name = child.Value
            if mutations[name] and not detected[name] then
                valueMulti += (mutations[name].ValueMulti - 1)
                detected[name] = true
            end
        end
    end

    return math.max(1, valueMulti)
end

function module:CalcValueMultiFromText(nameWithWeight)
    if typeof(nameWithWeight) ~= "string" then
        return 1
    end

    local valueMulti = 1

    -- Ambil isi di dalam [ ... ] pertama (mutasi/variant)
    local variantListStr = nameWithWeight:match("^%[(.-)%]")
    if variantListStr then
        for v in string.gmatch(variantListStr, "[^,%s]+") do
            if module.MutationsByName[v] then
                valueMulti += (module.MutationsByName[v].ValueMulti - 1)
            end
        end
    end

    return math.max(1, valueMulti)
end

module.MutationsByName = mutations
return module
