local SOL_PROD = require "prototypes.shared"

local technology_icons = function()
  return {
    {
      icon = "__base__/graphics/technology/solar-energy.png",
      icon_size = 256, 
      icon_mipmaps = 4
    },
    {
      icon = "__core__/graphics/icons/technology/constants/constant-mining-productivity.png",
      icon_size = 128,
      icon_mipmaps = 3,
      shift = {100, 100}
    }
  }
end

data:extend({
  -- SP-1
  {
    type = "technology",
    name = "solar-productivity-1",
    icon_size = 256,
    icon_mipmaps = 4,
    icons = technology_icons(),    
    effects =
    {
      {
        type = "nothing",
        effect_description = "Solar productivity: +40%"
      },
    },
    prerequisites = {"solar-energy", "electric-energy-accumulators"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "sp-1"
  },
  -- SP-2
  {
    type = "technology",
    name = "solar-productivity-2",
    icon_size = 256,
    icon_mipmaps = 4,
    icons = technology_icons(), 
    effects =
    {
      {
        type = "nothing",
        effect_description = "Solar productivity: +30%"
      },
    },
    prerequisites = {"solar-productivity-1"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "sp-2"
  },
  -- SP-3
  {
    type = "technology",
    name = "solar-productivity-3",
    icon_size = 256,
    icon_mipmaps = 4,
    icons = technology_icons(), 
    effects =
    {
      {
        type = "nothing",
        effect_description = "Solar productivity: +20%"
      },
    },
    prerequisites = {"solar-productivity-2"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "sp-3"
  },
  -- SP-4
  {
    type = "technology",
    name = "solar-productivity-4",
    icon_size = 256,
    icon_mipmaps = 4,
    icons = technology_icons(),
    effects =
    {
      {
        type = "nothing",
        effect_description = "Solar productivity: +15%"
      },
    },
    prerequisites = {"solar-productivity-3", "space-science-pack"},
    unit =
    {
      count_formula = "2500*(L - 3)",
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    },
    max_level = SOL_PROD.LEVELS,
    upgrade = true,
    order = "sp-4",
  }
})

