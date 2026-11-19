// ========================================================
// Nexus Crucible: Expert Recipe Overhaul
// Module: Pam's HarvestCraft Gourmet Culinary Arts
// Generated Recipes: 102
// ========================================================

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// Кулинарная кастрюля
recipes.remove(<harvestcraft:potitem>);
recipes.addShaped("nexus_exp_pams_tool_pot", <harvestcraft:potitem>, [
    [<thermalfoundation:material:32>, null, <thermalfoundation:material:32>],
    [<thermalfoundation:material:32>, null, <thermalfoundation:material:32>],
    [null, <thermalfoundation:material:32>, null]
]);

// Кулинарная сковорода
recipes.remove(<harvestcraft:skilletitem>);
recipes.addShaped("nexus_exp_pams_tool_skillet", <harvestcraft:skilletitem>, [
    [null, <thermalfoundation:material:32>, null],
    [<thermalfoundation:material:32>, <thermalfoundation:material:32>, null],
    [null, null, <minecraft:stick>]
]);

// Сотейник
recipes.remove(<harvestcraft:saucepanitem>);
recipes.addShaped("nexus_exp_pams_tool_saucepan", <harvestcraft:saucepanitem>, [
    [<thermalfoundation:material:32>, null, null],
    [<thermalfoundation:material:32>, <thermalfoundation:material:32>, null],
    [null, null, <minecraft:stick>]
]);

// Форма для выпечки
recipes.remove(<harvestcraft:bakewareitem>);
recipes.addShaped("nexus_exp_pams_tool_bakeware", <harvestcraft:bakewareitem>, [
    [<minecraft:brick>, <minecraft:brick>, <minecraft:brick>],
    [<minecraft:brick>, null, <minecraft:brick>],
    [<minecraft:brick>, <minecraft:brick>, <minecraft:brick>]
]);

// Разделочная доска
recipes.remove(<harvestcraft:cuttingboarditem>);
recipes.addShaped("nexus_exp_pams_tool_cutting_board", <harvestcraft:cuttingboarditem>, [
    [<thermalfoundation:material:32>, <minecraft:stick>],
    [<minecraft:planks>, <minecraft:planks>]
]);

// Миска для смешивания
recipes.remove(<harvestcraft:mixingbowlitem>);
recipes.addShaped("nexus_exp_pams_tool_mixing_bowl", <harvestcraft:mixingbowlitem>, [
    [<minecraft:stick>, null, <minecraft:stick>],
    [<minecraft:planks>, null, <minecraft:planks>],
    [null, <minecraft:planks>, null]
]);

// Соковыжималка
recipes.remove(<harvestcraft:juiceritem>);
recipes.addShaped("nexus_exp_pams_tool_juicer", <harvestcraft:juiceritem>, [
    [null, <minecraft:stone>, null],
    [<thermalfoundation:material:320>, null, <thermalfoundation:material:320>]
]);

// Ручная мельница
recipes.remove(<harvestcraft:grinderitem>);
recipes.addShaped("nexus_exp_pams_tool_grinder", <harvestcraft:grinderitem>, [
    [<minecraft:stick>, <minecraft:flint>],
    [<minecraft:stone>, <minecraft:stone>]
]);

// Кулинарный деликатес: hearty_breakfast
recipes.remove(<harvestcraft:heartybreakfastitem>);
recipes.addShapeless("nexus_exp_pams_hearty_breakfast", <harvestcraft:heartybreakfastitem>, [<harvestcraft:skilletitem>, <minecraft:cooked_porkchop>, <minecraft:egg>, <harvestcraft:toastitem>]);

// Кулинарный деликатес: deluxe_cheeseburger
recipes.remove(<harvestcraft:deluxecheeseburgeritem>);
recipes.addShapeless("nexus_exp_pams_deluxe_cheeseburger", <harvestcraft:deluxecheeseburgeritem>, [<harvestcraft:skilletitem>, <harvestcraft:cheeseburgeritem>, <harvestcraft:baconitem>, <harvestcraft:lettuceitem>, <harvestcraft:tomatoitem>]);

// Кулинарный деликатес: supreme_pizza
recipes.remove(<harvestcraft:supremepizzaitem>);
recipes.addShapeless("nexus_exp_pams_supreme_pizza", <harvestcraft:supremepizzaitem>, [<harvestcraft:bakewareitem>, <harvestcraft:pizzaitem>, <harvestcraft:bellpepperitem>, <harvestcraft:onionitem>, <minecraft:cooked_beef>]);

// Кулинарный деликатес: beef_wellington
recipes.remove(<harvestcraft:beefwellingtonitem>);
recipes.addShapeless("nexus_exp_pams_beef_wellington", <harvestcraft:beefwellingtonitem>, [<harvestcraft:bakewareitem>, <minecraft:cooked_beef>, <harvestcraft:doughitem>, <minecraft:brown_mushroom>]);

// Кулинарный деликатес: shepherds_pie
recipes.remove(<harvestcraft:shepherdspieitem>);
recipes.addShapeless("nexus_exp_pams_shepherds_pie", <harvestcraft:shepherdspieitem>, [<harvestcraft:bakewareitem>, <minecraft:cooked_mutton>, <harvestcraft:mashedpotatoesitem>, <harvestcraft:peasitem>]);

// Кулинарный деликатес: chicken_pot_pie
recipes.remove(<harvestcraft:chickenpotpieitem>);
recipes.addShapeless("nexus_exp_pams_chicken_pot_pie", <harvestcraft:chickenpotpieitem>, [<harvestcraft:bakewareitem>, <minecraft:cooked_chicken>, <harvestcraft:potatocakesitem>, <harvestcraft:doughitem>]);

// Кулинарный деликатес: fish_and_chips
recipes.remove(<harvestcraft:fishandchipsitem>);
recipes.addShapeless("nexus_exp_pams_fish_and_chips", <harvestcraft:fishandchipsitem>, [<harvestcraft:skilletitem>, <minecraft:cooked_fish>, <harvestcraft:friesitem>, <harvestcraft:tartarsauceitem>]);

// Кулинарный деликатес: sunday_roast
recipes.remove(<harvestcraft:sundayroastitem>);
recipes.addShapeless("nexus_exp_pams_sunday_roast", <harvestcraft:sundayroastitem>, [<harvestcraft:bakewareitem>, <minecraft:cooked_beef>, <harvestcraft:bakedpotatoitem>, <harvestcraft:roastedcarrotsitem>]);

// Кулинарный деликатес: loaded_baked_potato
recipes.remove(<harvestcraft:loadedbakedpotatoitem>);
recipes.addShapeless("nexus_exp_pams_loaded_baked_potato", <harvestcraft:loadedbakedpotatoitem>, [<harvestcraft:bakewareitem>, <minecraft:baked_potato>, <harvestcraft:cheeseitem>, <harvestcraft:baconitem>]);

// Кулинарный деликатес: chili
recipes.remove(<harvestcraft:chiliitem>);
recipes.addShapeless("nexus_exp_pams_chili", <harvestcraft:chiliitem>, [<harvestcraft:potitem>, <minecraft:cooked_beef>, <harvestcraft:chilipepperitem>, <harvestcraft:beanitem>, <harvestcraft:tomatoitem>]);

// Кулинарный деликатес: ribs
recipes.remove(<harvestcraft:bbqribsitem>);
recipes.addShapeless("nexus_exp_pams_ribs", <harvestcraft:bbqribsitem>, [<harvestcraft:skilletitem>, <minecraft:cooked_porkchop>, <harvestcraft:bbqsauceitem>]);

// Кулинарный деликатес: taco
recipes.remove(<harvestcraft:tacoitem>);
recipes.addShapeless("nexus_exp_pams_taco", <harvestcraft:tacoitem>, [<harvestcraft:skilletitem>, <harvestcraft:tortillaitem>, <minecraft:cooked_beef>, <harvestcraft:cheeseitem>]);

// Кулинарный деликатес: burrito
recipes.remove(<harvestcraft:burritoitem>);
recipes.addShapeless("nexus_exp_pams_burrito", <harvestcraft:burritoitem>, [<harvestcraft:skilletitem>, <harvestcraft:tortillaitem>, <harvestcraft:beanitem>, <harvestcraft:riceitem>, <minecraft:cooked_chicken>]);

// Кулинарный деликатес: chimichanga
recipes.remove(<harvestcraft:chimichangaitem>);
recipes.addShapeless("nexus_exp_pams_chimichanga", <harvestcraft:chimichangaitem>, [<harvestcraft:skilletitem>, <harvestcraft:burritoitem>, <harvestcraft:cheeseitem>]);

// Кулинарный деликатес: spaghetti_meatballs
recipes.remove(<harvestcraft:spaghettiandmeatballsitem>);
recipes.addShapeless("nexus_exp_pams_spaghetti_meatballs", <harvestcraft:spaghettiandmeatballsitem>, [<harvestcraft:potitem>, <harvestcraft:spaghettiitem>, <harvestcraft:meatballitem>, <harvestcraft:tomatosauceitem>]);

// Кулинарный деликатес: lasagna
recipes.remove(<harvestcraft:lasagnaitem>);
recipes.addShapeless("nexus_exp_pams_lasagna", <harvestcraft:lasagnaitem>, [<harvestcraft:bakewareitem>, <harvestcraft:pastadoughitem>, <harvestcraft:cheeseitem>, <minecraft:cooked_beef>, <harvestcraft:tomatosauceitem>]);

// Кулинарный деликатес: bacon_mushroom_burger
recipes.remove(<harvestcraft:baconmushroomburgeritem>);
recipes.addShapeless("nexus_exp_pams_bacon_mushroom_burger", <harvestcraft:baconmushroomburgeritem>, [<harvestcraft:skilletitem>, <harvestcraft:cheeseburgeritem>, <harvestcraft:baconitem>, <minecraft:brown_mushroom>]);

// Кулинарный деликатес: gourmet_beef_burger
recipes.remove(<harvestcraft:gourmetbeefburgeritem>);
recipes.addShapeless("nexus_exp_pams_gourmet_beef_burger", <harvestcraft:gourmetbeefburgeritem>, [<harvestcraft:skilletitem>, <harvestcraft:deluxeburgeritem>, <harvestcraft:cheddarcurditem>, <harvestcraft:picklesitem>]);

// Кулинарный деликатес: gourmet_pork_burger
recipes.remove(<harvestcraft:gourmetporkburgeritem>);
recipes.addShapeless("nexus_exp_pams_gourmet_pork_burger", <harvestcraft:gourmetporkburgeritem>, [<harvestcraft:skilletitem>, <harvestcraft:porkburgeritem>, <harvestcraft:bbqsauceitem>, <harvestcraft:onionitem>]);

// Кулинарный деликатес: gourmet_mutton_burger
recipes.remove(<harvestcraft:gourmetmuttonburgeritem>);
recipes.addShapeless("nexus_exp_pams_gourmet_mutton_burger", <harvestcraft:gourmetmuttonburgeritem>, [<harvestcraft:skilletitem>, <harvestcraft:muttonburgeritem>, <harvestcraft:garlicitem>, <harvestcraft:cheeseitem>]);

// Кулинарный деликатес: chocolate_bacon
recipes.remove(<harvestcraft:chocolatebaconitem>);
recipes.addShapeless("nexus_exp_pams_chocolate_bacon", <harvestcraft:chocolatebaconitem>, [<harvestcraft:skilletitem>, <harvestcraft:baconitem>, <harvestcraft:chocolatebaritem>]);

// Кулинарный деликатес: berry_pavlova
recipes.remove(<harvestcraft:pavlovaitem>);
recipes.addShapeless("nexus_exp_pams_berry_pavlova", <harvestcraft:pavlovaitem>, [<harvestcraft:bakewareitem>, <minecraft:egg>, <minecraft:sugar>, <harvestcraft:blackberryitem>, <harvestcraft:strawberryitem>]);

// Кулинарный деликатес: tiramisu
recipes.remove(<harvestcraft:tiramisuitem>);
recipes.addShapeless("nexus_exp_pams_tiramisu", <harvestcraft:tiramisuitem>, [<harvestcraft:bakewareitem>, <harvestcraft:coffeeitem>, <harvestcraft:creamitem>, <harvestcraft:sweetdoughitem>]);

// Кулинарный деликатес: mango_smoothie
recipes.remove(<harvestcraft:mangosmoothieitem>);
recipes.addShapeless("nexus_exp_pams_mango_smoothie", <harvestcraft:mangosmoothieitem>, [<harvestcraft:juiceritem>, <harvestcraft:mangoitem>, <harvestcraft:yogurtitem>, <minecraft:sugar>]);

// Кулинарный деликатес: strawberry_rhubarb_pie
recipes.remove(<harvestcraft:strawberryrhubarbpieitem>);
recipes.addShapeless("nexus_exp_pams_strawberry_rhubarb_pie", <harvestcraft:strawberryrhubarbpieitem>, [<harvestcraft:bakewareitem>, <harvestcraft:strawberryitem>, <harvestcraft:rhubarbitem>, <harvestcraft:doughitem>]);

// Кулинарный деликатес: cinnamon_roll
recipes.remove(<harvestcraft:cinnamonrollitem>);
recipes.addShapeless("nexus_exp_pams_cinnamon_roll", <harvestcraft:cinnamonrollitem>, [<harvestcraft:bakewareitem>, <harvestcraft:cinnamonitem>, <harvestcraft:doughitem>, <minecraft:sugar>, <harvestcraft:butteritem>]);

// Кулинарный деликатес: apple_fritter
recipes.remove(<harvestcraft:applefritteritem>);
recipes.addShapeless("nexus_exp_pams_apple_fritter", <harvestcraft:applefritteritem>, [<harvestcraft:skilletitem>, <minecraft:apple>, <harvestcraft:doughitem>, <harvestcraft:cinnamonitem>]);

// Кулинарный деликатес: pancakes
recipes.remove(<harvestcraft:pancakesitem>);
recipes.addShapeless("nexus_exp_pams_pancakes", <harvestcraft:pancakesitem>, [<harvestcraft:skilletitem>, <harvestcraft:batteritem>, <harvestcraft:maplesyrupitem>]);

// Кулинарный деликатес: waffles
recipes.remove(<harvestcraft:wafflesitem>);
recipes.addShapeless("nexus_exp_pams_waffles", <harvestcraft:wafflesitem>, [<harvestcraft:bakewareitem>, <harvestcraft:batteritem>, <harvestcraft:butteritem>, <harvestcraft:maplesyrupitem>]);

// Кулинарный деликатес: eggs_benedict
recipes.remove(<harvestcraft:eggsbenedictitem>);
recipes.addShapeless("nexus_exp_pams_eggs_benedict", <harvestcraft:eggsbenedictitem>, [<harvestcraft:skilletitem>, <minecraft:egg>, <harvestcraft:toastitem>, <harvestcraft:hollandaisesauceitem>, <harvestcraft:baconitem>]);

// Кулинарный деликатес: montecristo
recipes.remove(<harvestcraft:montecristosandwichitem>);
recipes.addShapeless("nexus_exp_pams_montecristo", <harvestcraft:montecristosandwichitem>, [<harvestcraft:skilletitem>, <harvestcraft:toastitem>, <minecraft:cooked_porkchop>, <harvestcraft:cheeseitem>, <minecraft:egg>]);

// Кулинарный деликатес: clam_chowder
recipes.remove(<harvestcraft:clamchowderitem>);
recipes.addShapeless("nexus_exp_pams_clam_chowder", <harvestcraft:clamchowderitem>, [<harvestcraft:potitem>, <harvestcraft:clamrawitem>, <harvestcraft:potatocakesitem>, <harvestcraft:heavycreamitem>]);

// Кулинарный деликатес: onion_soup
recipes.remove(<harvestcraft:onionsoupitem>);
recipes.addShapeless("nexus_exp_pams_onion_soup", <harvestcraft:onionsoupitem>, [<harvestcraft:potitem>, <harvestcraft:onionitem>, <harvestcraft:stockitem>, <harvestcraft:toastitem>, <harvestcraft:cheeseitem>]);

// Кулинарный деликатес: mushroom_risotto
recipes.remove(<harvestcraft:mushroomrisottoitem>);
recipes.addShapeless("nexus_exp_pams_mushroom_risotto", <harvestcraft:mushroomrisottoitem>, [<harvestcraft:potitem>, <harvestcraft:riceitem>, <minecraft:brown_mushroom>, <harvestcraft:butteritem>, <harvestcraft:cheeseitem>]);

// Кулинарный деликатес: guacamole
recipes.remove(<harvestcraft:guacamoleitem>);
recipes.addShapeless("nexus_exp_pams_guacamole", <harvestcraft:guacamoleitem>, [<harvestcraft:cuttingboarditem>, <harvestcraft:avocadoitem>, <harvestcraft:onionitem>, <harvestcraft:tomatoitem>, <harvestcraft:limeitem>]);

// Кулинарный деликатес: sushi
recipes.remove(<harvestcraft:sushiitem>);
recipes.addShapeless("nexus_exp_pams_sushi", <harvestcraft:sushiitem>, [<harvestcraft:cuttingboarditem>, <minecraft:cooked_fish>, <harvestcraft:riceitem>, <harvestcraft:seaweeditem>]);

// Кулинарный деликатес: calamari
recipes.remove(<harvestcraft:calamariitem>);
recipes.addShapeless("nexus_exp_pams_calamari", <harvestcraft:calamariitem>, [<harvestcraft:skilletitem>, <harvestcraft:calamarirawitem>, <harvestcraft:flouritem>, <harvestcraft:lemonitem>]);

// Кулинарный деликатес: pad_thai
recipes.remove(<harvestcraft:padthaiitem>);
recipes.addShapeless("nexus_exp_pams_pad_thai", <harvestcraft:padthaiitem>, [<harvestcraft:potitem>, <harvestcraft:pastadoughitem>, <harvestcraft:peanutbutteritem>, <minecraft:egg>, <harvestcraft:beansproutitem>]);

// Кулинарный деликатес: ramen
recipes.remove(<harvestcraft:ramenitem>);
recipes.addShapeless("nexus_exp_pams_ramen", <harvestcraft:ramenitem>, [<harvestcraft:potitem>, <harvestcraft:pastadoughitem>, <harvestcraft:stockitem>, <minecraft:egg>, <minecraft:cooked_porkchop>]);

// Кулинарный деликатес: hotdog
recipes.remove(<harvestcraft:hotdogitem>);
recipes.addShapeless("nexus_exp_pams_hotdog", <harvestcraft:hotdogitem>, [<harvestcraft:skilletitem>, <minecraft:bread>, <minecraft:cooked_porkchop>, <harvestcraft:mustardseedsitem>]);

// Кулинарный деликатес: corned_beef_hash
recipes.remove(<harvestcraft:cornedbeefhashitem>);
recipes.addShapeless("nexus_exp_pams_corned_beef_hash", <harvestcraft:cornedbeefhashitem>, [<harvestcraft:skilletitem>, <minecraft:cooked_beef>, <minecraft:potato>, <harvestcraft:onionitem>]);

// Кулинарный деликатес: meatloaf
recipes.remove(<harvestcraft:meatloafitem>);
recipes.addShapeless("nexus_exp_pams_meatloaf", <harvestcraft:meatloafitem>, [<harvestcraft:bakewareitem>, <minecraft:cooked_beef>, <minecraft:cooked_porkchop>, <minecraft:egg>, <harvestcraft:breaditem>]);

// Кулинарный деликатес: cheesesteak
recipes.remove(<harvestcraft:cheesesteakitem>);
recipes.addShapeless("nexus_exp_pams_cheesesteak", <harvestcraft:cheesesteakitem>, [<harvestcraft:skilletitem>, <harvestcraft:toastitem>, <minecraft:cooked_beef>, <harvestcraft:cheeseitem>, <harvestcraft:onionitem>]);

// Кулинарный деликатес: blt
recipes.remove(<harvestcraft:bltitem>);
recipes.addShapeless("nexus_exp_pams_blt", <harvestcraft:bltitem>, [<harvestcraft:cuttingboarditem>, <harvestcraft:toastitem>, <harvestcraft:baconitem>, <harvestcraft:lettuceitem>, <harvestcraft:tomatoitem>]);

// Кулинарный деликатес: grilledcheese
recipes.remove(<harvestcraft:grilledcheeseitem>);
recipes.addShapeless("nexus_exp_pams_grilledcheese", <harvestcraft:grilledcheeseitem>, [<harvestcraft:skilletitem>, <harvestcraft:toastitem>, <harvestcraft:cheeseitem>, <harvestcraft:butteritem>]);

// Кулинарный деликатес: apple_pie
recipes.remove(<harvestcraft:applepieitem>);
recipes.addShapeless("nexus_exp_pams_apple_pie", <harvestcraft:applepieitem>, [<harvestcraft:bakewareitem>, <minecraft:apple>, <harvestcraft:doughitem>, <minecraft:sugar>]);

// Кулинарный деликатес: cherry_pie
recipes.remove(<harvestcraft:cherrypieitem>);
recipes.addShapeless("nexus_exp_pams_cherry_pie", <harvestcraft:cherrypieitem>, [<harvestcraft:bakewareitem>, <harvestcraft:cherryitem>, <harvestcraft:doughitem>, <minecraft:sugar>]);

// Кулинарный деликатес: blueberry_pie
recipes.remove(<harvestcraft:blueberrypieitem>);
recipes.addShapeless("nexus_exp_pams_blueberry_pie", <harvestcraft:blueberrypieitem>, [<harvestcraft:bakewareitem>, <harvestcraft:blueberryitem>, <harvestcraft:doughitem>, <minecraft:sugar>]);

// Кулинарный деликатес: blackberry_cobbler
recipes.remove(<harvestcraft:blackberrycobbleritem>);
recipes.addShapeless("nexus_exp_pams_blackberry_cobbler", <harvestcraft:blackberrycobbleritem>, [<harvestcraft:bakewareitem>, <harvestcraft:blackberryitem>, <harvestcraft:doughitem>, <minecraft:sugar>]);

// Кулинарный деликатес: pumpkin_cheesecake
recipes.remove(<harvestcraft:pumpkincheesecakeitem>);
recipes.addShapeless("nexus_exp_pams_pumpkin_cheesecake", <harvestcraft:pumpkincheesecakeitem>, [<harvestcraft:bakewareitem>, <minecraft:pumpkin>, <harvestcraft:cheeseitem>, <harvestcraft:doughitem>]);

// Кулинарный деликатес: spinach_dip
recipes.remove(<harvestcraft:spinachpieitem>);
recipes.addShapeless("nexus_exp_pams_spinach_dip", <harvestcraft:spinachpieitem>, [<harvestcraft:bakewareitem>, <harvestcraft:spinachitem>, <harvestcraft:cheeseitem>, <harvestcraft:doughitem>]);

// Кулинарный деликатес: stuffed_eggplant
recipes.remove(<harvestcraft:stuffedeggplantitem>);
recipes.addShapeless("nexus_exp_pams_stuffed_eggplant", <harvestcraft:stuffedeggplantitem>, [<harvestcraft:bakewareitem>, <harvestcraft:eggplantitem>, <harvestcraft:cheeseitem>, <harvestcraft:tomatoitem>]);

// Кулинарный деликатес: pot_roast
recipes.remove(<harvestcraft:potroastitem>);
recipes.addShapeless("nexus_exp_pams_pot_roast", <harvestcraft:potroastitem>, [<harvestcraft:potitem>, <minecraft:cooked_beef>, <minecraft:carrot>, <minecraft:potato>]);

// Кулинарный деликатес: stew_hearty
recipes.remove(<harvestcraft:beefstewitem>);
recipes.addShapeless("nexus_exp_pams_stew_hearty", <harvestcraft:beefstewitem>, [<harvestcraft:potitem>, <minecraft:cooked_beef>, <minecraft:carrot>, <minecraft:potato>, <harvestcraft:flouritem>]);

// Кулинарный деликатес: chicken_curry
recipes.remove(<harvestcraft:curryitem>);
recipes.addShapeless("nexus_exp_pams_chicken_curry", <harvestcraft:curryitem>, [<harvestcraft:potitem>, <minecraft:cooked_chicken>, <harvestcraft:riceitem>, <harvestcraft:currypowderitem>]);

// Кулинарный деликатес: fried_rice
recipes.remove(<harvestcraft:friedriceitem>);
recipes.addShapeless("nexus_exp_pams_fried_rice", <harvestcraft:friedriceitem>, [<harvestcraft:skilletitem>, <harvestcraft:riceitem>, <minecraft:egg>, <minecraft:carrot>, <harvestcraft:peasitem>]);

// Кулинарный деликатес: chocolate_donut
recipes.remove(<harvestcraft:chocolatedonutitem>);
recipes.addShapeless("nexus_exp_pams_chocolate_donut", <harvestcraft:chocolatedonutitem>, [<harvestcraft:bakewareitem>, <harvestcraft:doughitem>, <harvestcraft:chocolatebaritem>]);

// Кулинарный деликатес: glazed_donut
recipes.remove(<harvestcraft:donutitem>);
recipes.addShapeless("nexus_exp_pams_glazed_donut", <harvestcraft:donutitem>, [<harvestcraft:bakewareitem>, <harvestcraft:doughitem>, <minecraft:sugar>]);

// Кулинарный деликатес: grape_juice
recipes.remove(<harvestcraft:grapejuiceitem>);
recipes.addShapeless("nexus_exp_pams_grape_juice", <harvestcraft:grapejuiceitem>, [<harvestcraft:juiceritem>, <harvestcraft:grapeitem>]);

// Кулинарный деликатес: apple_juice
recipes.remove(<harvestcraft:applejuiceitem>);
recipes.addShapeless("nexus_exp_pams_apple_juice", <harvestcraft:applejuiceitem>, [<harvestcraft:juiceritem>, <minecraft:apple>]);

// Кулинарный деликатес: orange_juice
recipes.remove(<harvestcraft:orangejuiceitem>);
recipes.addShapeless("nexus_exp_pams_orange_juice", <harvestcraft:orangejuiceitem>, [<harvestcraft:juiceritem>, <harvestcraft:orangeitem>]);

// Кулинарный деликатес: hot_chocolate
recipes.remove(<harvestcraft:hotchocolateitem>);
recipes.addShapeless("nexus_exp_pams_hot_chocolate", <harvestcraft:hotchocolateitem>, [<harvestcraft:potitem>, <harvestcraft:chocolatebaritem>, <minecraft:milk_bucket>]);

// Кулинарный деликатес: coffee
recipes.remove(<harvestcraft:coffeeitem>);
recipes.addShapeless("nexus_exp_pams_coffee", <harvestcraft:coffeeitem>, [<harvestcraft:potitem>, <harvestcraft:coffeebeanitem>, <minecraft:water_bucket>]);

// Кулинарный деликатес: tea
recipes.remove(<harvestcraft:teaitem>);
recipes.addShapeless("nexus_exp_pams_tea", <harvestcraft:teaitem>, [<harvestcraft:potitem>, <harvestcraft:tealeafitem>, <minecraft:water_bucket>]);

// Кулинарный деликатес: trail_mix
recipes.remove(<harvestcraft:trailmixitem>);
recipes.addShapeless("nexus_exp_pams_trail_mix", <harvestcraft:trailmixitem>, [<harvestcraft:cuttingboarditem>, <harvestcraft:walnutitem>, <harvestcraft:raisinsitem>, <harvestcraft:chocolatebaritem>]);

// Кулинарный деликатес: caramel
recipes.remove(<harvestcraft:caramelitem>);
recipes.addShapeless("nexus_exp_pams_caramel", <harvestcraft:caramelitem>, [<harvestcraft:saucepanitem>, <minecraft:sugar>, <harvestcraft:butteritem>]);

// Кулинарный деликатес: cheese
recipes.remove(<harvestcraft:cheeseitem>);
recipes.addShapeless("nexus_exp_pams_cheese", <harvestcraft:cheeseitem>, [<harvestcraft:potitem>, <minecraft:milk_bucket>, <harvestcraft:saltitem>]);

// Кулинарный деликатес: yogurt
recipes.remove(<harvestcraft:yogurtitem>);
recipes.addShapeless("nexus_exp_pams_yogurt", <harvestcraft:yogurtitem>, [<harvestcraft:potitem>, <minecraft:milk_bucket>, <minecraft:sugar>]);

// Кулинарный деликатес: mashed_potatoes
recipes.remove(<harvestcraft:mashedpotatoesitem>);
recipes.addShapeless("nexus_exp_pams_mashed_potatoes", <harvestcraft:mashedpotatoesitem>, [<harvestcraft:potitem>, <minecraft:potato>, <harvestcraft:butteritem>, <harvestcraft:saltitem>]);

// Кулинарный деликатес: baked_beans
recipes.remove(<harvestcraft:bakedbeansitem>);
recipes.addShapeless("nexus_exp_pams_baked_beans", <harvestcraft:bakedbeansitem>, [<harvestcraft:potitem>, <harvestcraft:beanitem>, <harvestcraft:tomatosauceitem>, <minecraft:sugar>]);

// Кулинарный деликатес: corn_on_cob
recipes.remove(<harvestcraft:cornonthecobitem>);
recipes.addShapeless("nexus_exp_pams_corn_on_cob", <harvestcraft:cornonthecobitem>, [<harvestcraft:skilletitem>, <harvestcraft:cornitem>, <harvestcraft:butteritem>]);

// Кулинарный деликатес: popcorn
recipes.remove(<harvestcraft:popcornitem>);
recipes.addShapeless("nexus_exp_pams_popcorn", <harvestcraft:popcornitem>, [<harvestcraft:skilletitem>, <harvestcraft:cornitem>, <harvestcraft:butteritem>, <harvestcraft:saltitem>]);

// Кулинарный деликатес: strawberry_smoothie
recipes.remove(<harvestcraft:strawberrysmoothieitem>);
recipes.addShapeless("nexus_exp_pams_strawberry_smoothie", <harvestcraft:strawberrysmoothieitem>, [<harvestcraft:juiceritem>, <harvestcraft:strawberryitem>, <harvestcraft:yogurtitem>]);

// Кулинарный деликатес: banana_smoothie
recipes.remove(<harvestcraft:bananasmoothieitem>);
recipes.addShapeless("nexus_exp_pams_banana_smoothie", <harvestcraft:bananasmoothieitem>, [<harvestcraft:juiceritem>, <harvestcraft:bananaitem>, <harvestcraft:yogurtitem>]);

// Кулинарный деликатес: lemonade
recipes.remove(<harvestcraft:lemonadeitem>);
recipes.addShapeless("nexus_exp_pams_lemonade", <harvestcraft:lemonadeitem>, [<harvestcraft:juiceritem>, <harvestcraft:lemonitem>, <minecraft:sugar>, <minecraft:water_bucket>]);

// Кулинарный деликатес: carrot_cake
recipes.remove(<harvestcraft:carrotcakeitem>);
recipes.addShapeless("nexus_exp_pams_carrot_cake", <harvestcraft:carrotcakeitem>, [<harvestcraft:bakewareitem>, <minecraft:carrot>, <harvestcraft:doughitem>, <minecraft:sugar>]);

// Кулинарный деликатес: cheesecake
recipes.remove(<harvestcraft:cheesecakeitem>);
recipes.addShapeless("nexus_exp_pams_cheesecake", <harvestcraft:cheesecakeitem>, [<harvestcraft:bakewareitem>, <harvestcraft:cheeseitem>, <harvestcraft:doughitem>, <minecraft:sugar>]);

// Кулинарный деликатес: chocolate_cake
recipes.remove(<harvestcraft:chocolatesprinklecakeitem>);
recipes.addShapeless("nexus_exp_pams_chocolate_cake", <harvestcraft:chocolatesprinklecakeitem>, [<harvestcraft:bakewareitem>, <harvestcraft:chocolatebaritem>, <harvestcraft:doughitem>, <minecraft:sugar>]);

// Кулинарный деликатес: cherry_cheesecake
recipes.remove(<harvestcraft:cherrycheesecakeitem>);
recipes.addShapeless("nexus_exp_pams_cherry_cheesecake", <harvestcraft:cherrycheesecakeitem>, [<harvestcraft:bakewareitem>, <harvestcraft:cherryitem>, <harvestcraft:cheeseitem>, <harvestcraft:doughitem>]);

// Кулинарный деликатес: blueberry_muffin
recipes.remove(<harvestcraft:blueberrymuffinitem>);
recipes.addShapeless("nexus_exp_pams_blueberry_muffin", <harvestcraft:blueberrymuffinitem>, [<harvestcraft:bakewareitem>, <harvestcraft:blueberryitem>, <harvestcraft:doughitem>, <harvestcraft:butteritem>]);

// Кулинарный деликатес: chocolate_milk
recipes.remove(<harvestcraft:chocolatemilkitem>);
recipes.addShapeless("nexus_exp_pams_chocolate_milk", <harvestcraft:chocolatemilkitem>, [<harvestcraft:mixingbowlitem>, <harvestcraft:chocolatebaritem>, <minecraft:milk_bucket>]);

// Кулинарный деликатес: potato_soup
recipes.remove(<harvestcraft:potatosoupitem>);
recipes.addShapeless("nexus_exp_pams_potato_soup", <harvestcraft:potatosoupitem>, [<harvestcraft:potitem>, <minecraft:potato>, <harvestcraft:stockitem>, <harvestcraft:butteritem>]);

// Кулинарный деликатес: tomato_soup
recipes.remove(<harvestcraft:tomatosoupitem>);
recipes.addShapeless("nexus_exp_pams_tomato_soup", <harvestcraft:tomatosoupitem>, [<harvestcraft:potitem>, <harvestcraft:tomatoitem>, <harvestcraft:stockitem>, <harvestcraft:heavycreamitem>]);

// Кулинарный деликатес: chicken_noodle_soup
recipes.remove(<harvestcraft:chickennoodlesoupitem>);
recipes.addShapeless("nexus_exp_pams_chicken_noodle_soup", <harvestcraft:chickennoodlesoupitem>, [<harvestcraft:potitem>, <minecraft:cooked_chicken>, <harvestcraft:pastadoughitem>, <harvestcraft:stockitem>]);

// Кулинарный деликатес: cucumber_salad
recipes.remove(<harvestcraft:cucumbersaladitem>);
recipes.addShapeless("nexus_exp_pams_cucumber_salad", <harvestcraft:cucumbersaladitem>, [<harvestcraft:cuttingboarditem>, <harvestcraft:cucumberitem>, <harvestcraft:dressingitem>]);

// Кулинарный деликатес: fruit_salad
recipes.remove(<harvestcraft:fruitsaladitem>);
recipes.addShapeless("nexus_exp_pams_fruit_salad", <harvestcraft:fruitsaladitem>, [<harvestcraft:cuttingboarditem>, <minecraft:apple>, <minecraft:melon>, <harvestcraft:strawberryitem>]);

// Кулинарный деликатес: spring_salad
recipes.remove(<harvestcraft:springsaladitem>);
recipes.addShapeless("nexus_exp_pams_spring_salad", <harvestcraft:springsaladitem>, [<harvestcraft:cuttingboarditem>, <harvestcraft:lettuceitem>, <harvestcraft:radishitem>, <harvestcraft:dressingitem>]);

// Кулинарный деликатес: coleslaw
recipes.remove(<harvestcraft:coleslawitem>);
recipes.addShapeless("nexus_exp_pams_coleslaw", <harvestcraft:coleslawitem>, [<harvestcraft:cuttingboarditem>, <harvestcraft:cabbageitem>, <harvestcraft:mayoitem>]);

// Кулинарный деликатес: egg_salad
recipes.remove(<harvestcraft:eggsaladitem>);
recipes.addShapeless("nexus_exp_pams_egg_salad", <harvestcraft:eggsaladitem>, [<harvestcraft:mixingbowlitem>, <minecraft:egg>, <harvestcraft:mayoitem>]);

// Кулинарный деликатес: fish_taco
recipes.remove(<harvestcraft:fishtacoitem>);
recipes.addShapeless("nexus_exp_pams_fish_taco", <harvestcraft:fishtacoitem>, [<harvestcraft:skilletitem>, <harvestcraft:tortillaitem>, <minecraft:cooked_fish>, <harvestcraft:cabbageitem>]);

// Кулинарный деликатес: potato_chips
recipes.remove(<harvestcraft:potatochipsitem>);
recipes.addShapeless("nexus_exp_pams_potato_chips", <harvestcraft:potatochipsitem>, [<harvestcraft:skilletitem>, <minecraft:potato>, <harvestcraft:saltitem>, <harvestcraft:oliveoilitem>]);

// Кулинарный деликатес: onion_rings
recipes.remove(<harvestcraft:onionringsitem>);
recipes.addShapeless("nexus_exp_pams_onion_rings", <harvestcraft:onionringsitem>, [<harvestcraft:skilletitem>, <harvestcraft:onionitem>, <harvestcraft:batteritem>, <harvestcraft:oliveoilitem>]);

// Кулинарный деликатес: corn_bread
recipes.remove(<harvestcraft:cornbreaditem>);
recipes.addShapeless("nexus_exp_pams_corn_bread", <harvestcraft:cornbreaditem>, [<harvestcraft:bakewareitem>, <harvestcraft:cornitem>, <harvestcraft:doughitem>]);

// Кулинарный деликатес: biscuit
recipes.remove(<harvestcraft:biscuitsandgravyitem>);
recipes.addShapeless("nexus_exp_pams_biscuit", <harvestcraft:biscuitsandgravyitem>, [<harvestcraft:bakewareitem>, <harvestcraft:doughitem>, <harvestcraft:gravyitem>, <harvestcraft:butteritem>]);
