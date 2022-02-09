Keys = {
    ['ESC'] = 322, ['F1'] = 288, ['F2'] = 289, ['F3'] = 170, ['F5'] = 166, ['F6'] = 167, ['F7'] = 168, ['F8'] = 169, ['F9'] = 56, ['F10'] = 57,
    ['~'] = 243, ['1'] = 157, ['2'] = 158, ['3'] = 160, ['4'] = 164, ['5'] = 165, ['6'] = 159, ['7'] = 161, ['8'] = 162, ['9'] = 163, ['-'] = 84, ['='] = 83, ['BACKSPACE'] = 177,
    ['TAB'] = 37, ['Q'] = 44, ['W'] = 32, ['E'] = 38, ['R'] = 45, ['T'] = 245, ['Y'] = 246, ['U'] = 303, ['P'] = 199, ['['] = 39, [']'] = 40, ['ENTER'] = 18,
    ['CAPS'] = 137, ['A'] = 34, ['S'] = 8, ['D'] = 9, ['F'] = 23, ['G'] = 47, ['H'] = 74, ['K'] = 311, ['L'] = 182,
    ['LEFTSHIFT'] = 21, ['Z'] = 20, ['X'] = 73, ['C'] = 26, ['V'] = 0, ['B'] = 29, ['N'] = 249, ['M'] = 244, [','] = 82, ['.'] = 81,
    ['LEFTCTRL'] = 36, ['LEFTALT'] = 19, ['SPACE'] = 22, ['RIGHTCTRL'] = 70,
    ['HOME'] = 213, ['PAGEUP'] = 10, ['PAGEDOWN'] = 11, ['DELETE'] = 178,
    ['LEFT'] = 174, ['RIGHT'] = 175, ['TOP'] = 27, ['DOWN'] = 173,
}

Config = {}

Config.BailPrice = 250

Config.Locations = {
    ["main"] = {
        label = "PaySlip",
        coords = {x = 2137.65, y = 4791.34, z = 40.97, h = 306.27},
    },
    ["vehicle"] = {
        label = "Plane PickUp",
        coords = {x = 2134.43, y = 4779.82, z = 40.97, h = 26.53},
    },
    ["runways"] ={
        [1] = {
            name = "sandyairfield",
            coords = {x = 1725.86, y = 3325.08, z = 41.22, h = 12.05},
        },
        [2] = {
            name = "grapeseed",
            coords = {x = 2137.85, y = 4771.76, z = 41.0, h = 201.27},
        },
        [3] = {
            name = "army",
            coords = {x = -2297.53, y = 3187.42, z = 32.81, h = 64.16},
        },
        [4] = {
            name = "battleship",
            coords = {x = 3090.41, y = -4722.48, z = 15.26, h = 132.45},
        },
        [5] = {
            name = "island",    -- remove if you don't have Cayo Island enabled.
            coords = {x = 4434.17, y = -4469.34, z = 4.33, h = 125.67},
        },
        [6] = {
            name = "lsia",
            coords = {x = -1242.2, y = -3393.33, z = 13.94, h = 227.9},
        },
    },
}

Config.Vehicles = {
    ["cuban800"] = "Cuban Plane",
}