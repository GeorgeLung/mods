local OV = angelsmods.functions.OV

if mods["bobplates"] then
  -- CATEGORY
  if angelsmods.industries and angelsmods.industries.overhaul then
    if data.raw["item-group"]["bob-gems"] then
      -- gems group
      data.raw["item-group"]["bob-gems"].icon = nil
      data.raw["item-group"]["bob-gems"].icon_size = nil
      data.raw["item-group"]["bob-gems"].icons = {
        {
          icon = "__bobplates__/graphics/icons/technology/gems.png",
          icon_size = 64
        },
        {
          icon = "__angelsrefining__/graphics/icons/bobs-logo.png",
          icon_size = 1080,
          scale = 64/1080 * 0.35,
          shift = {20, -20}
        },
      }
      data.raw["item-group"]["bob-gems"].order = "lb[bobs]-c[gems]"
      data.raw["item-group"]["bob-gems"].inventory_order = "lb[bobs]-c[gems]"

      -- gems subgroups
      data.raw["item-subgroup"]["bio-biter-processing-raw"].group = "bob-gems"
      data.raw["item-subgroup"]["bio-biter-processing-raw"].order = "7"..data.raw["item-subgroup"]["bio-biter-processing-raw"].order
      data.raw["item-subgroup"]["bio-biter-processing-cutting"].group = "bob-gems"
      data.raw["item-subgroup"]["bio-biter-processing-cutting"].order = "7"..data.raw["item-subgroup"]["bio-biter-processing-cutting"].order
      data.raw["item-subgroup"]["bio-biter-processing-powder"].group = "bob-gems"
      data.raw["item-subgroup"]["bio-biter-processing-powder"].order = "7"..data.raw["item-subgroup"]["bio-biter-processing-powder"].order

      data.raw["recipe"]["crystal-splinter-cutting"].subgroup = "bio-biter-processing-raw"
      data.raw["recipe"]["crystal-splinter-cutting"].order = "a[raw]-a[splinter]"
      data.raw["recipe"]["crystal-shard-cutting"].subgroup = "bio-biter-processing-raw"
      data.raw["recipe"]["crystal-shard-cutting"].order = "a[raw]-b[shard]"
      data.raw["recipe"]["crystal-full-cutting"].subgroup = "bio-biter-processing-raw"
      data.raw["recipe"]["crystal-full-cutting"].order = "a[raw]-c[full]"
      data.raw["recipe"]["crystal-splinter-harmonic"].subgroup = "bio-biter-processing-raw"
      data.raw["recipe"]["crystal-splinter-harmonic"].order = "b[harmonic]-a[splinter]"
      data.raw["recipe"]["crystal-shard-harmonic"].subgroup = "bio-biter-processing-raw"
      data.raw["recipe"]["crystal-shard-harmonic"].order = "b[harmonic]-b[shard]"
      data.raw["recipe"]["crystal-full-harmonic"].subgroup = "bio-biter-processing-raw"
      data.raw["recipe"]["crystal-full-harmonic"].order = "b[harmonic]-c[full]"

      data.raw["item"]["grinding-wheel"].subgroup = "bob-gems-cut"
      data.raw["item"]["grinding-wheel"].order = "g-4"
      data.raw["item"]["polishing-wheel"].subgroup = "bob-gems-polished"
      data.raw["item"]["polishing-wheel"].order = "g-5-a"
      data.raw["item"]["polishing-compound"].subgroup = "bob-gems-polished"
      data.raw["item"]["polishing-compound"].order = "g-5-b"
      data.raw["recipe"]["polishing-compound"].subgroup = "bob-gems-polished"
      data.raw["recipe"]["polishing-compound"].order = "g-5-b"

      data.raw["item"]["crystal-grindstone"].subgroup = "bio-biter-processing-raw"
      data.raw["item"]["crystal-grindstone"].order = "d"
      data.raw["recipe"]["crystal-grindstone"].subgroup = "bio-biter-processing-raw"
      data.raw["recipe"]["crystal-grindstone"].order = "c[tool]-a[grindstone]"
    end
  end

  -- CRYSTALS
  OV.modify_input("crystal-grindstone", {"grinding-wheel", "iron-plate"})
  OV.add_prereq("bio-processing-crystal-1", "grinding")
end



if mods["bobmodules"] then
  -- CATEGORY
  if angelsmods.industries and angelsmods.industries.overhaul then
    -- modules group
    data.raw["item-group"]["bobmodules"].icon = nil
    data.raw["item-group"]["bobmodules"].icon_size = nil
    data.raw["item-group"]["bobmodules"].icons = {
      {
        icon = "__base__/graphics/technology/module.png",
        icon_size = 128
      },
      {
        icon = "__angelsrefining__/graphics/icons/bobs-logo.png",
        icon_size = 1080,
        scale = 128/1080 * 0.35,
        shift = {40, -40}
      },
    }
    data.raw["item-group"]["bobmodules"].order = "lb[bobs]-d[modules]"
    data.raw["item-group"]["bobmodules"].inventory_order = "lb[bobs]-d[modules]"

    -- modules subgroups
    data.raw["item-subgroup"]["module-intermediates"].order = "f-0-a"
    data:extend(
    {
      {
        type = "item-subgroup",
        name = "module-intermediates-2",
        group = "bobmodules",
        order = "f-0-b"
      },
      {
        type = "item-subgroup",
        name = "module-intermediates-3",
        group = "bobmodules",
        order = "f-0-c"
      },
    }
    )
    data.raw["item"]["module-contact"].subgroup = "module-intermediates-2"
    data.raw["tool"]["module-circuit-board"].subgroup = "module-intermediates-3"
    data.raw["item"]["module-processor-board-2"].subgroup = "module-intermediates-2"
    data.raw["item"]["module-processor-board-3"].subgroup = "module-intermediates-3"
    data.raw["item"]["speed-processor-2"].subgroup = "module-intermediates-2"
    data.raw["item"]["speed-processor-3"].subgroup = "module-intermediates-3"
    data.raw["item"]["effectivity-processor-2"].subgroup = "module-intermediates-2"
    data.raw["item"]["effectivity-processor-3"].subgroup = "module-intermediates-3"
    data.raw["item"]["productivity-processor-2"].subgroup = "module-intermediates-2"
    data.raw["item"]["productivity-processor-3"].subgroup = "module-intermediates-3"
    data.raw["item"]["pollution-clean-processor-2"].subgroup = "module-intermediates-2"
    data.raw["item"]["pollution-clean-processor-3"].subgroup = "module-intermediates-3"
    data.raw["item"]["pollution-create-processor-2"].subgroup = "module-intermediates-2"
    data.raw["item"]["pollution-create-processor-3"].subgroup = "module-intermediates-3"
  end

  -- MODULES
  if angelsmods.industries and angelsmods.industries.overhaul then
    OV.patch_recipes({
      { name = "speed-module", ingredients = { {"crystal-splinter-blue", 0} } },
      { name = "speed-module-2", ingredients = { {"crystal-shard-blue", 0} } },
      { name = "speed-module-3", ingredients = { {"crystal-full-blue", 0} } },
      { name = "productivity-module", ingredients = { {"crystal-splinter-red", 0} } },
      { name = "productivity-module-2", ingredients = { {"crystal-shard-red", 0} } },
      { name = "productivity-module-3", ingredients = { {"crystal-full-red", 0} } },
      { name = "effectivity-module", ingredients = { {"crystal-splinter-green", 0} } },
      { name = "effectivity-module-2", ingredients = { {"crystal-shard-green", 0} } },
      { name = "effectivity-module-3", ingredients = { {"crystal-full-green", 0} } },
    })
    OV.remove_prereq("speed-module", "bio-processing-crystal-1")
    OV.remove_prereq("productivity-module", "bio-processing-crystal-1")
    OV.remove_prereq("effectivity-module", "bio-processing-crystal-1")
    OV.remove_prereq("speed-module-2", "bio-processing-crystal-2")
    OV.remove_prereq("productivity-module-2", "bio-processing-crystal-2")
    OV.remove_prereq("effectivity-module-2", "bio-processing-crystal-2")
    OV.remove_prereq("speed-module-3", "bio-processing-crystal-3")
    OV.remove_prereq("productivity-module-3", "bio-processing-crystal-3")
    OV.remove_prereq("effectivity-module-3", "bio-processing-crystal-3")
  end

  OV.patch_recipes({
    { name = "speed-processor", ingredients = { {"crystal-splinter-blue", 1} } },
    { name = "speed-processor-2", ingredients = { {"crystal-shard-blue", 1} } },
    { name = "speed-processor-3", ingredients = { {"crystal-full-blue", 1} } },
    { name = "productivity-processor", ingredients = { {"crystal-splinter-red", 1} } },
    { name = "productivity-processor-2", ingredients = { {"crystal-shard-red", 1} } },
    { name = "productivity-processor-3", ingredients = { {"crystal-full-red", 1} } },
    { name = "effectivity-processor", ingredients = { {"crystal-splinter-green", 1} } },
    { name = "effectivity-processor-2", ingredients = { {"crystal-shard-green", 1} } },
    { name = "effectivity-processor-3", ingredients = { {"crystal-full-green", 1} } },
    { name = "pollution-clean-processor", ingredients = { {"crystal-splinter-harmonic", 1} } },
    { name = "pollution-clean-processor-2", ingredients = { {"crystal-shard-harmonic", 1} } },
    { name = "pollution-clean-processor-3", ingredients = { {"crystal-full-harmonic", 1} } },
    { name = "pollution-create-processor", ingredients = { {"crystal-splinter-harmonic", 1} } },
    { name = "pollution-create-processor-2", ingredients = { {"crystal-shard-harmonic", 1} } },
    { name = "pollution-create-processor-3", ingredients = { {"crystal-full-harmonic", 1} } },
  })

  OV.add_prereq("modules", "bio-processing-crystal-1")
  data:extend(
  {
    {
      type = "technology",
      name = "modules-2",
      icon_size = 128,
      icon = "__base__/graphics/technology/module.png",
      prerequisites =
      {
        "modules",
        "advanced-electronics-2",
        "bio-processing-crystal-2",
      },
      effects =
      {
        {
          type = "unlock-recipe",
          recipe = "module-processor-board-2",
        },
        {
          type = "unlock-recipe",
          recipe = "speed-processor-2"
        },
        {
          type = "unlock-recipe",
          recipe = "effectivity-processor-2"
        },
        {
          type = "unlock-recipe",
          recipe = "productivity-processor-2"
        },
        {
          type = "unlock-recipe",
          recipe = "pollution-clean-processor-2"
        },
        {
          type = "unlock-recipe",
          recipe = "pollution-create-processor-2"
        }
      },
      unit =
      {
        count = 100,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1}
        },
        time = 30
      },
      order = "i-a"
    },
  }
  )
  OV.remove_unlock("speed-module-3", "speed-processor-2")
  OV.remove_unlock("productivity-module-3", "productivity-processor-2")
  OV.remove_unlock("effectivity-module-3", "effectivity-processor-2")
  OV.remove_unlock("pollution-clean-module-3", "pollution-clean-processor-2")
  OV.remove_unlock("pollution-create-module-3", "pollution-create-processor-2")
  OV.add_prereq("speed-module-3", "modules-2")
  OV.add_prereq("productivity-module-3", "modules-2")
  OV.add_prereq("effectivity-module-3", "modules-2")
  OV.add_prereq("pollution-clean-module-3", "modules-2")
  OV.add_prereq("pollution-create-module-3", "modules-2")
  OV.remove_unlock("advanced-electronics-2", "module-processor-board-2")
  data:extend(
  {
    {
      type = "technology",
      name = "modules-3",
      icon_size = 128,
      icon = "__base__/graphics/technology/module.png",
      prerequisites =
      {
        "modules-2",
        "bio-processing-crystal-3",
      },
      effects =
      {
        {
          type = "unlock-recipe",
          recipe = "module-processor-board-3",
        },
        {
          type = "unlock-recipe",
          recipe = "speed-processor-3"
        },
        {
          type = "unlock-recipe",
          recipe = "effectivity-processor-3"
        },
        {
          type = "unlock-recipe",
          recipe = "productivity-processor-3"
        },
        {
          type = "unlock-recipe",
          recipe = "pollution-clean-processor-3"
        },
        {
          type = "unlock-recipe",
          recipe = "pollution-create-processor-3"
        }
      },
      unit =
      {
        count = 100,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1}
        },
        time = 30
      },
      order = "i-a"
    },
  }
  )
  OV.remove_unlock("speed-module-6", "speed-processor-3")
  OV.remove_unlock("productivity-module-6", "productivity-processor-3")
  OV.remove_unlock("effectivity-module-6", "effectivity-processor-3")
  OV.remove_unlock("pollution-clean-module-6", "pollution-clean-processor-3")
  OV.remove_unlock("pollution-create-module-6", "pollution-create-processor-3")
  OV.add_prereq("speed-module-6", "modules-3")
  OV.add_prereq("productivity-module-6", "modules-3")
  OV.add_prereq("effectivity-module-6", "modules-3")
  OV.add_prereq("pollution-clean-module-6", "modules-3")
  OV.add_prereq("pollution-create-module-6", "modules-3")
  if data.raw.technology["advanced-electronics-3"] then
    OV.remove_unlock("advanced-electronics-3", "module-processor-board-3")
    OV.add_prereq("modules-3", "advanced-electronics-3")
    OV.remove_prereq("speed-module-6", "advanced-electronics-3")
    OV.remove_prereq("productivity-module-6", "advanced-electronics-3")
    OV.remove_prereq("effectivity-module-6", "advanced-electronics-3")
    OV.remove_prereq("pollution-clean-module-6", "advanced-electronics-3")
    OV.remove_prereq("pollution-create-module-6", "advanced-electronics-3")
  else
    OV.remove_unlock("advanced-electronics-2", "module-processor-board-3")
  end

  -- BEACONS
  if angelsmods.industries and angelsmods.industries.overhaul then
    OV.patch_recipes({
      { name = "beacon", ingredients = { {"crystal-full-harmonic", 0} } },
    })
    OV.remove_prereq("effect-transmission", "bio-processing-crystal-3")
  end

  OV.patch_recipes({
    { name = "beacon", ingredients = { {"crystal-splinter-harmonic", 1} } },
    { name = "beacon-2", ingredients = { {"crystal-shard-harmonic", 1} } },
    { name = "beacon-3", ingredients = { {"crystal-full-harmonic", 1} } },
  })

  OV.add_prereq("effect-transmission", "modules")
  OV.add_prereq("effect-transmission-2", "modules-2")
  OV.add_prereq("effect-transmission-3", "modules-3")
end



if mods["bobwarfare"] then
  OV.add_prereq("nitroglycerin-processing", "bio-nutrient-paste")
end