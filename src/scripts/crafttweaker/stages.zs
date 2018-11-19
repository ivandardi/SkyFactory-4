#priority 3000

/*
	SkyFactory 4 Stages Stages Script

	Creates the statics to import the Stages to other scripts.
*/
import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

import scripts.crafttweaker.utils.convertSnakeToCamel;

global stages as Stage[string] = {};

// Mod Stages
var stageStrings as string[] = [
	"bonsai_trees",
	"flux_networks",
	"iron_jetpacks",
	"mob_grinding_utils",
	"mystcraft",
	"mystical_agradditions",
	"mystical_agriculture",
	"open_computers",
	"portal_gun",
	"project_e",
	"twilight_forest",

	// Misc Prestige-related Stages
	"amber_mulch",
	"android",
	"black_mulch",
	"blue_mulch",
	"blue_slime_dirt",
	"brown_mulch",
	"fertile_soil",
	"mega_torch",
	"orange_slime_dirt",
	"ore_excavation",
	"pacifist",
	"prosperity_tree",
	"purple_slime_dirt",
	"red_mulch",
	"ruby_mulch",
	"smeltery",
	"yellow_mulch"
];

for stageString in stageStrings {
	stages[convertSnakeToCamel(stageString)] = ZenStager.initStage(stageString);
}
