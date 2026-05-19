lib.locale()

Config = {}
Config.npcTalk = true
Config.Debug = false
Config.Target = "ox_target"               -- only supporting ox_target and qb-target | nil to disable targeting
Config.SpawnDelay = 1             -- seconds [how much time it should take between spawning animals]
Config.DeleteEntityRadius = 300.0 -- will delete animal if your 400 meters away from them

Config.TrackerItem = "animal_tracker"
Config.TrackingDuration = 60      -- seconds
Config.DelayBetweenTracks = 120   -- seconds
Config.TrackingFailureChance = 20 -- [1 - 100]

Config.AimBlock = {
    enable = false,    -- DESABILITADO - Sistema de bloqueio de mira desativado
    global = false,    -- false para ter aimblock apenas fora das zonas de caça
    weaponsToBlock = { -- weapons that are disabled to shoot at players
        `WEAPON_HEAVYSNIPER_MK2`,
        `WEAPON_MUSKET`,
    }
}

Config.BaitItem = "huntingbait"
Config.BaitAttractionDistance = 100.0 -- in 200 radius it will atract an animal
Config.BaitTimeLimit = 2              -- minutes

Config.ImagesPath = "nui://ox_inventory/web/images/"


-- _____                           __  _
-- / ____|                         / _| (_)
-- | |      __ _  _ __ ___   _ __  | |_  _  _ __  ___
-- | |     / _` || '_ ` _ \ | '_ \ |  _|| || '__|/ _ \
-- | |____| (_| || | | | | || |_) || |  | || |  |  __/
-- \_____|\__,_||_| |_| |_|| .__/ |_|  |_||_|   \___|
--                         | |
--                         |_|

Config.Campfire = {
    enable = true,
    campfireItem = "campfire",
    items = {
        {
            label = "Carne cozida",
            give = "cooked_meat",
            cookTime = 5, -- seconds
            require = {
                {
                    label = "Carne crua",
                    quantity = 1,
                    item = "raw_meat",
                },
            }
        },
        -- {
        --     label = "Cooked meat",
        --     give = "cooked_meat",
        --     cookTime = 5, -- seconds
        --     require = {
        --         {
        --             label = "Raw Meat",
        --             quantity = 1,
        --             item = "raw_meat",
        --         },
        --     }
        -- },
    }
}

-- _    _                _    _                  ______
-- | |  | |              | |  (_)                |___  /
-- | |__| | _   _  _ __  | |_  _  _ __    __ _      / /  ___   _ __    ___  ___
-- |  __  || | | || '_ \ | __|| || '_ \  / _` |    / /  / _ \ | '_ \  / _ \/ __|
-- | |  | || |_| || | | || |_ | || | | || (_| |   / /__| (_) || | | ||  __/\__ \
-- |_|  |_| \__,_||_| |_| \__||_||_| |_| \__, |  /_____|\___/ |_| |_| \___||___/
--                                        __/ |
--                                       |___/

Config.HuntingZones = {

    ["CHILIAD_MOUNTAINS"] = {
        coords = vector3(49.42, 3191.2, 27.82),
        radius = 250.0,
        maxSpawns = 8,
        -- allowedWeapons = { "WEAPON_HEAVYSNIPER_MK2", "WEAPON_MUSKET", "WEAPON_DAGGER", "WEAPON_KNIFE" }, -- DESABILITADO - Permite qualquer arma

        zone_radius = {
            enable = true,
            color = 37,
            opacity = 120,
        },

        blip = {
            enable = false,
            name = 'Hunting Zone',
            type = 141,
            scale = 1.0,
            color = 0,
        },

        animals = {

            {
                model = "a_c_deer",
                chance = 80,
                harvestTime = 5,
                harvestWeapons = { "WEAPON_DAGGER", "WEAPON_KNIFE" },

                blip = {
                    enable = true,
                    name = 'Alvo',
                    type = 119,
                    scale = 0.8,
                    color = 1,
                },

                marker = {
                    enable = true,
                    color = { r = 196, g = 136, b = 77, a = 150 }
                },

                items = {
                    skins = {
                        { item = "skin_deer_ruined", chance = 70, maxQuantity = 1 },
                        { item = "skin_deer_low", chance = 50, maxQuantity = 1 },
                        { item = "skin_deer_medium", chance = 30, maxQuantity = 1 },
                        { item = "skin_deer_good", chance = 25, maxQuantity = 1 },
                        { item = "skin_deer_perfect", chance = 5, maxQuantity = 1 },
                    },

                    meat = {
                        { item = "raw_meat", chance = 100, maxQuantity = 10 },
                    },

                    extra = {
                        { item = "deer_horn", chance = 30, maxQuantity = 1 },
                    }
                }
            },

            {
                model = "a_c_boar",
                chance = 80,
                harvestTime = 5,
                harvestWeapons = { "WEAPON_DAGGER", "WEAPON_KNIFE" },

                blip = {
                    enable = true,
                    name = 'Alvo',
                    type = 119,
                    scale = 0.8,
                    color = 1,
                },

                marker = {
                    enable = true,
                    color = { r = 196, g = 136, b = 77, a = 150 }
                },

                items = {
                    skins = {
                        { item = "skin_boar_ruined", chance = 70, maxQuantity = 1 },
                        { item = "skin_boar_low", chance = 50, maxQuantity = 1 },
                        { item = "skin_boar_medium", chance = 30, maxQuantity = 1 },
                        { item = "skin_boar_good", chance = 25, maxQuantity = 1 },
                        { item = "skin_boar_perfect", chance = 5, maxQuantity = 1 },
                    },

                    meat = {
                        { item = "raw_meat", chance = 100, maxQuantity = 10 },
                        { item = "raw_meat", chance = 100, maxQuantity = 10 },
                    },

                    extra = {
                        { item = "boar_horn", chance = 30, maxQuantity = 1 },
                        { item = "boar_horn", chance = 30, maxQuantity = 1 },
                    }
                }
            }
        }
    },

    ["CHILIAD_MOUNTAINS2"] = {
        coords = vector3(-1556.31, 4597.94, 19.82),
        radius = 250.0,
        maxSpawns = 5,
        -- allowedWeapons = { "WEAPON_HEAVYSNIPER_MK2", "WEAPON_DAGGER" }, -- DESABILITADO - Permite qualquer arma
        zone_radius = {
            enable = true,
            color = 37,
            opacity = 120,
        },

        blip = {
            enable = false,
            name = "Hunting Zone",
            type = 141,
            scale = 1.0,
            color = 1,
        },

        animals = {

            {
                model = "a_c_deer",
                chance = 80,
                harvestTime = 5,
                harvestWeapons = { "WEAPON_DAGGER", "WEAPON_KNIFE" },

                blip = {
                    enable = true,
                    name = 'Alvo',
                    type = 119,
                    scale = 0.8,
                    color = 1,
                },

                marker = {
                    enable = true,
                    color = { r = 196, g = 136, b = 77, a = 150 }
                },

                items = {
                    skins = {
                        { item = "skin_deer_ruined", chance = 50, maxQuantity = 4 },
                        { item = "skin_deer_low", chance = 60, maxQuantity = 3 },
                        { item = "skin_deer_medium", chance = 40, maxQuantity = 4 },
                        { item = "skin_deer_good", chance = 25, maxQuantity = 2 },
                        { item = "skin_deer_perfect", chance = 10, maxQuantity = 1 },
                    },

                    meat = {
                        { item = "raw_meat", chance = 100, maxQuantity = 10 },
                        { item = "raw_meat", chance = 100, maxQuantity = 10 },
                    },

                    extra = {
                        { item = "deer_horn", chance = 30, maxQuantity = 1 },
                        { item = "deer_horn", chance = 30, maxQuantity = 1 },
                    }
                }
            }
        }
    }
}



-- _____  _
-- / ____|| |
-- | (___  | |__    ___   _ __   ___
-- \___ \ | '_ \  / _ \ | '_ \ / __|
-- ____) || | | || (_) || |_) |\__ \
-- |_____/ |_| |_| \___/ | .__/ |___/
--                      | |
--                      |_|

Config.Shops = {
    ["Loja de Caçador"] = {
        coords = vec4(-679.28, 5834.25, 16.33, 132.58),
        ped = {
            enable = Config.Target and true or true, -- false the last bool to dont use ped
            model = "s_m_m_ammucountry"
        },
        blip = {
            enable = true,
            type = 442,
            scale = 0.7,
            color = 3,
        },
        useDrawText = true,
        items = {
            sell = {
                {
                    item = "raw_meat",
                    price = 50,
                    label = "Comida"

                },
                {
                    item = "skin_boar_ruined",
                    price = 240,
                    label = "x"

                },
                {
                    item = "skin_boar_low",
                    price = 400,
                    label = "x"

                },
                                {
                    item = "skin_boar_medium",
                    price = 650,
                    label = "x"

                },
                                {
                    item = "skin_boar_good",
                    price = 1150,
                    label = "x"

                },
                                {
                    item = "skin_boar_perfect",
                    price = 900,
                    label = "x"

                },
                {
                    item = "skin_deer_ruined",
                    price = 250,
                    label = "Tattered Deer Pelt"

                },
                {
                    item = "skin_deer_low",
                    price = 500,
                    label = "Worn Deer Pelt"

                },
                {
                    item = "skin_deer_medium",
                    price = 700,
                    label = "Supple Deer Pelt"


                },
                {
                    item = "skin_deer_good",
                    price = 1000,
                    label = "Prime Deer Pelt"

                },
                {
                    item = "skin_deer_perfect",
                    price = 1250,
                    label = "Flawless Deer Pelt"


                },
            },
            buy = {
                {
                    item = "huntingbait",
                    label = "Isca de Caçador",
                    price = 250,
                },
                {
                    item = "campfire",
                    label = "Fogueira",
                    price = 750,
                },
                {
                    item = "animal_tracker",
                    label = "Rastreador Animal",
                    price = 1050,
                },
                {
                    item = "WEAPON_MUSKET",
                    label = "Espingarda Antiga",
                    description = "Desbloqueado",
                    price = 15000,
                },
                {
                    item = "ammo-musket",
                    label = "Munição de Espingarda",
                    description = "Desbloqueado",
                    price = 100,
                },
                {
                    item = "WEAPON_HEAVYSNIPER_MK2",
                    label = "Rifle de Precisão Pesado",
                    levelmin = 10,
                    price = 200000,
                },
                {
                    item = "ammo-heavysniper",
                    label = "Munição de Rifle .50 BGM",
                    levelmin = 10,
                    price = 1000,
                },
                {
                    item = "WEAPON_KNIFE",
                    label = "Faca para esfolar",
                    levelmin = 1,
                    price = 1000,
                },
            }

        }
    },
     ["Loja de Caçador raro"] = {
         coords = vector4(-1856.88, 7306.08, 60.57, 39.0),
         ped = {
             enable = Config.Target and true or true, -- false the last bool to dont use ped
             model = "s_m_m_ammucountry"
         },
         blip = {
             enable = false,
             type = 442,
             scale = 0.7,
             color = 3,
         },
         useDrawText = true,
         items = {
             sell = {
                 {
                     item = "deer_horn",
                     price = 5100,
                     label = "Supple Deer Pelt"


                 },
                 {
                     item = "boar_horn",
                     price = 4100,
                     label = "Prime Deer Pelt"

                 },
                 {
                     item = "skin_deer_perfect",
                     price = 2550,
                     label = "Flawless Deer Pelt"


                 },
                                  {
                     item = "skin_boar_perfect",
                     price = 2350,
                     label = "Flawless Deer Pelt"


                 },
             },
             buy = {
                 {
                     item = "huntingbait",
                     label = "hunting Bait",
                     price = 150,
                 },
                 {
                     item = "campfire",
                     label = "Campfire",
                     price = 150,
                 },
                 {
                     item = "animal_tracker",
                     label = "Animal Tracker",
                     price = 550,
                 },
             }

         }
     }
}


-- __  __  _            _
-- |  \/  |(_)          (_)
-- | \  / | _  ___  ___  _   ___   _ __   ___
-- | |\/| || |/ __|/ __|| | / _ \ | '_ \ / __|
-- | |  | || |\__ \\__ \| || (_) || | | |\__ \
-- |_|  |_||_||___/|___/|_| \___/ |_| |_||___/

Config.HuntMaster = {
    coords = vector4(-1100.68, 7394.2, 126.67, 120.98),
    model = "cs_fabien",
    blip = {
        enable = false,
        name = 'Missões de Caça',
        type = 543,
        scale = 0.8,
        color = 5,
    },
    vehicleSpawn = vector4(-1106.95, 7399.47, 126.67, 45.89),
    vehicleDeposit = vector4(-1106.95, 7399.47, 126.67, 45.89)
}

Config.Missions = {
    {
        label = "Couro de alta qualidade",
        content = "Traga-me 10 peles de veado de alta qualidade",
        icon = "fa-solid fa-bullseye",
        image = Config.ImagesPath .. "skin_deer_good.png",
        delay = 10, -- wait 10 minutes do another of this mission
        time = 20,  -- minutes
        type = "item",
        id = "mission_1",
        vehicle = {
            enable = false,
            model = "bodhi2",
        },
        requirements = {
            {
                item = "skin_deer_good",
                label = "Pele de veado prime",
                quantity = 10
            }
        },
        rewards = {
            {
                item = "money",
                quantity = 3500
            }
        }
    },
    {
        label = "Coleção de Chifres",
        content = "Reúna 5 chifres de veados para minha coleção",
        icon = "fa-solid fa-bullseye",
        image = Config.ImagesPath .. "deer_horn.png",
        delay = 10, -- wait 10 minutes do another of this mission
        time = 25,  -- minutes
        type = "item",
        id = "mission_2",
        vehicle = {
            enable = false,
            model = "bodhi2",
        },
        requirements = {
            {
                item = "deer_horn",
                label = "Chifres de veado",
                quantity = 5
            }
        },
        rewards = {
            {
                item = "money",
                quantity = 5000
            }
        }
    },
    {
        label = "Recompensa de javali",
        content = "Pegue o javali e leve-o para o Mestre Caçador",
        icon = "fa-solid fa-bullseye",
        image = Config.ImagesPath .. "boar.png",
        delay = 0, -- wait 10 minutes do another of this mission
        time = 10,  -- minutes
        type = "animal",
        id = "mission_3",
        animal = "a_c_boar",
        vehicle = {
            enable = true,
            model = "bodhi2",

        },
        attach = {
            pos = vector3(-0.6, 1.0, -0.5),
            rot = vector3(0.0, 0.0, 0.0)
        },
        vehicleAttach = {
            pos = vector3(-1.2, 1.0, 0.8),
            rot = vector3(0.0, 0.0, 0.0),
        },
        blip = {
            name = 'Hunt Me',
            type = 1,
            scale = 0.8,
            color = 4,
        },
        spawns = {
            vector3(-1640.24, 4726.76, 53.4),
            vector3(-1166.44, 5068.44, 142.92)
        },
        rewards = {
            {
                item = "money",
                quantity = 2500
            }
        }
    },

}
