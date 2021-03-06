data:extend(
{
  {
    type = "technology",
    name = "bio-processing-brown",
    icon = "__angelsbioprocessing__/graphics/technology/algae-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "water-treatment"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "algae-farm"
      },
      {
        type = "unlock-recipe",
        recipe = "algae-brown"
      },

      {
        type = "unlock-recipe",
        recipe = "solid-alginic-acid"
      },
      {
        type = "unlock-recipe",
        recipe = "algae-green-simple"
      },
      {
        type = "unlock-recipe",
        recipe = "cellulose-fiber-algae"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "bio-processing-green",
    icon = "__angelsbioprocessing__/graphics/technology/algae-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
	"bio-processing-brown",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "algae-green"
      },
      {
        type = "unlock-recipe",
        recipe = "algae-farm-2"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-methanol-from-wood"
      },
      {
        type = "unlock-recipe",
        recipe = "algae-brown-burning"
      },
      {
        type = "unlock-recipe",
        recipe = "algae-brown-burning-wash"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
      },
      time = 30
    },
  },

  {
    type = "technology",
    name = "bio-processing-blue",
    icon = "__angelsbioprocessing__/graphics/technology/algae-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "bio-processing-green",
      "bio-processing-brown",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "algae-farm-3"
      },
      {
        type = "unlock-recipe",
        recipe = "algae-blue"
      },
      {
        type = "unlock-recipe",
        recipe = "blue-fiber-algae"
      },
      {
        type = "unlock-recipe",
        recipe = "gas-ammonia-from-blue-fiber"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "bio-processing-red",
    icon = "__angelsbioprocessing__/graphics/technology/algae-farm-tech.png",
    icon_size = 128,
    order = "c-a",
    prerequisites =
    {
      "bio-processing-blue",
    },
    effects =
    {
      -- {
      -- type = "unlock-recipe",
      -- recipe = "algae-farm-3"
      -- },
      {
        type = "unlock-recipe",
        recipe = "algae-red"
      },
      {
        type = "unlock-recipe",
        recipe = "red-fiber-algae"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-calcium-carbonate"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 30
    },
  },
}
)