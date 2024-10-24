local AeroEvent = TriggerServerEvent
Laboratoire = {
    ["lab_weed"] = {
        Name = "Laboratoire de Weed",
        Champs = {
            [0] = {coords = vector3(-1856.0888671875,4810.5346679688,2.8598175048828), radius = 7.0, item = "weed_graine", message = "Appuyez sur ~INPUT_CONTEXT~ pour ~q~récolter~s~ de la Graine de cannabis."},
            [1] = {coords = vector3(-471.16357421875,5512.474609375,79.996429443359), radius = 5.0, item = "weed_fertiligene", message = "Appuyez sur ~INPUT_CONTEXT~ pour ~q~récolter~s~ de la Fertiligène."}
        },
        Assemblage = {
            itemName = "weed",
            count = 1,
            pos = {coords = vector3(1034.6499023438,-3205.5678710938,-38.176643371582), heading = 70.10}
        },
        Pochon = {
            itemName = "weed_pooch",
            count = 1,
            pos = {coords = vector3(1036.4373779297,-3203.7270507812,-38.173206329346), heading = 3.79}
        },
        enter = vector3(1066.0982666016,-3183.4067382812,-39.163528442383),
        heading = 92.43,
    },
    ["lab_coke"] = {
        Name = "Laboratoire de Coke",
        Champs = {
            [0] = {coords = vector3(-2365.8110351563,2468.7485351563,2.9087681770325), radius = 10.0, item = "coca_feuille", message = "Appuyez sur ~INPUT_CONTEXT~ pour ~q~récolter~s~ de la Feuille de coca."},
            [1] = {coords = vector3(519.76910400391,3091.2609863281,40.463680267334), radius = 5.0, item = "coca_acide", message = "Appuyez sur ~INPUT_CONTEXT~ pour ~q~récolter~s~ de L’acide chlorhydrique."}
        },
        Assemblage = {
            itemName = "coke",
            count = 1,
            pos = {coords = vector3(1093.0593261719,-3196.6499023438,-38.993469238281), heading = 12.87}
        },
        Pochon = {
            itemName = "coke_pooch",
            count = 1,
            pos = {coords = vector3(1100.3223876953,-3198.7739257812,-38.993469238281), heading = 179.45}
        },
        enter = vector3(1088.6553955078,-3187.5046386719,-38.993473052979),
        heading = 179.47,
    },
    ["lab_meth"] = {
        Name = "Laboratoire de Meth",
        Champs = {
            [0] = {coords = vector3(989.47271728516,2730.3239746094,39.503410339355), radius = 7.0, item = "meth_lode", message = "Appuyez sur ~INPUT_CONTEXT~ pour ~q~récolter~s~ de la Lode cristalisé."},
            [1] = {coords = vector3(-357.5143737793,-2669.9079589844,6.0002932548523), radius = 7.0, item = "meth_phosphore", message = "Appuyez sur ~INPUT_CONTEXT~ pour ~q~récolter~s~ du Phosphore rouge."}
        },
        Assemblage = {
            itemName = "meth",
            count = 1,
            pos = {coords = vector3(978.17633056641,-146.64123535156,-48.525840759277), heading = 181.112}
        },
        Pochon = {
            itemName = "meth_pooch",
            count = 1,
            pos = {coords = vector3(985.88610839844,-141.49186706543,-48.999626159668), heading = 357.74}
        },
        enter = vector3(969.44372558594,-147.06689453125,-46.400207519531),
        heading = 273.54,
    },
}