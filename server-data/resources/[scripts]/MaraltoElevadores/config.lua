
local cfg = {}

-- # [CONFIG ELEVADORES]
-- # permission = permissão para abrir o elevador, se quiser sem permissão, é só deixar = nil
-- # blips = locais onde o blip deste elevador deverá aparecer [coloque a coordenada de cada andar que deve ter o blip do elevador]
-- # andares = andares que irão aparecer neste elevador
-- # andares [text = texto que irá aparecer no menu, tp_coords = coordenada do andar]

cfg.elevadores = {
    [1] = { -- PM
        
    permission = nil,
        blips = {
            {-2290.64, 266.03, 164.47}, -- G
            {-2279.34, 344.98, 174.61}, -- 1
            {-2268.47, 378.65, 188.77 }, -- 2
        },
        andares = {
            [3] = {
                text = "2",
                tp_coords = {-2268.47, 378.65, 188.775}
            },
            [2] = {
                text = "1",
                tp_coords = {-2279.34, 344.98, 174.61}
            },
            [1] = {
                text = "G",
                tp_coords = {-2290.64, 266.03, 164.47}
            }
        }
    },
  
    -- [2] = { -- HOPISTAL
        
    -- permission = nil,
    --     blips = {
    --         {-435.87, -359.02, 34.95}, -- 1
    --         {-487.66, -328.39, 42.31}, -- 2
    --         {-490.64, -327.69, 69.51}, -- 3
    --         {-439.37, -335.87, 78.31}, -- H
    --         {-418.81, -344.81, 24.24}, -- -1
    --     },
    --     andares = {
    --         [5] = {
    --             text = "-1",
    --             tp_coords = {-418.81, -344.81, 24.24}
    --         },
    --         [4] = {
    --             text = "H",
    --             tp_coords = {-439.37, -335.87, 78.31}
    --         },
    --         [3] = {
    --             text = "3",
    --             tp_coords = {-490.64, -327.69, 69.51}
    --         },
    --         [2] = {
    --             text = "2",
    --             tp_coords = {-487.66, -328.39, 42.31}
    --         },
    --         [1] = {
    --             text = "1",
    --             tp_coords = {-435.87, -359.02, 34.95}
    --         }
    --     }
    -- },

    -- [3] = { -- PMESP 2
        
    -- permission = nil,
    --     blips = {
    --         {2504.64, -432.85, 99.12}, -- 1
    --         {2504.38, -432.95, 106.92}, -- 2
    --     },
    --     andares = {
    --         [2] = {
    --             text = "3",
    --             tp_coords = {2504.38, -432.95, 106.92}
    --         },
    --         [1] = {
    --             text = "1",
    --             tp_coords = {2504.64, -432.85, 99.12}
    --         }
    --     }
    -- },

    -- [4] = { -- Exercito
        
    -- permission = nil,
    --     blips = {
    --         {-2360.81, 3249.61, 32.82}, -- 1
    --         {-2360.6, 3250.07, 92.9}, -- 2
    --     },
    --     andares = {
    --         [2] = {
    --             text = "2",
    --             tp_coords = {-2360.6, 3250.07, 92.9}
    --         },
    --         [1] = {
    --             text = "1",
    --             tp_coords = {-2360.81, 3249.61, 32.82}
    --         }
    --     }
    -- },

}

return cfg