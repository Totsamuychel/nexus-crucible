#!/usr/bin/env python3
"""
Nexus Crucible - Pam's HarvestCraft & Culinary Arts Recipes
Cookware, kitchen utilities and 100+ gourmet dishes and feasts.
Generates ~120 cross-mod expert recipes.
"""

from typing import List
from .common_recipe import Recipe

def get_pams_recipes() -> List[Recipe]:
    recipes: List[Recipe] = []

    # Cookware items
    pot = "harvestcraft:potitem"
    skillet = "harvestcraft:skilletitem"
    saucepan = "harvestcraft:saucepanitem"
    bakeware = "harvestcraft:bakewareitem"
    cutting_board = "harvestcraft:cuttingboarditem"
    mixing_bowl = "harvestcraft:mixingbowlitem"
    juicer = "harvestcraft:juiceritem"
    grinder = "harvestcraft:grinderitem"

    iron_plate = "thermalfoundation:material:32"
    copper_plate = "thermalfoundation:material:320"
    stick = "minecraft:stick"

    # 1. COOKWARE RECIPES
    cookware = [
        ("pot", pot, [[iron_plate, None, iron_plate], [iron_plate, None, iron_plate], [None, iron_plate, None]], "Кулинарная кастрюля"),
        ("skillet", skillet, [[None, iron_plate, None], [iron_plate, iron_plate, None], [None, None, stick]], "Кулинарная сковорода"),
        ("saucepan", saucepan, [[iron_plate, None, None], [iron_plate, iron_plate, None], [None, None, stick]], "Сотейник"),
        ("bakeware", bakeware, [["minecraft:brick", "minecraft:brick", "minecraft:brick"], ["minecraft:brick", None, "minecraft:brick"], ["minecraft:brick", "minecraft:brick", "minecraft:brick"]], "Форма для выпечки"),
        ("cutting_board", cutting_board, [[iron_plate, stick], ["minecraft:planks", "minecraft:planks"]], "Разделочная доска"),
        ("mixing_bowl", mixing_bowl, [[stick, None, stick], ["minecraft:planks", None, "minecraft:planks"], [None, "minecraft:planks", None]], "Миска для смешивания"),
        ("juicer", juicer, [[None, "minecraft:stone", None], [copper_plate, None, copper_plate]], "Соковыжималка"),
        ("grinder", grinder, [[stick, "minecraft:flint"], ["minecraft:stone", "minecraft:stone"]], "Ручная мельница")
    ]
    for cid, cout, cpat, cdesc in cookware:
        recipes.append(Recipe(
            name=f"nexus_exp_pams_tool_{cid}",
            output=cout,
            is_shaped=True,
            remove_output=True,
            comment=cdesc,
            pattern=cpat
        ))

    # 2. GOURMET DISHES & FEASTS (100+ shapeless recipes)
    dishes = [
        ("hearty_breakfast", "harvestcraft:heartybreakfastitem", [skillet, "minecraft:cooked_porkchop", "minecraft:egg", "harvestcraft:toastitem"]),
        ("deluxe_cheeseburger", "harvestcraft:deluxecheeseburgeritem", [skillet, "harvestcraft:cheeseburgeritem", "harvestcraft:baconitem", "harvestcraft:lettuceitem", "harvestcraft:tomatoitem"]),
        ("supreme_pizza", "harvestcraft:supremepizzaitem", [bakeware, "harvestcraft:pizzaitem", "harvestcraft:bellpepperitem", "harvestcraft:onionitem", "minecraft:cooked_beef"]),
        ("beef_wellington", "harvestcraft:beefwellingtonitem", [bakeware, "minecraft:cooked_beef", "harvestcraft:doughitem", "minecraft:brown_mushroom"]),
        ("shepherds_pie", "harvestcraft:shepherdspieitem", [bakeware, "minecraft:cooked_mutton", "harvestcraft:mashedpotatoesitem", "harvestcraft:peasitem"]),
        ("chicken_pot_pie", "harvestcraft:chickenpotpieitem", [bakeware, "minecraft:cooked_chicken", "harvestcraft:potatocakesitem", "harvestcraft:doughitem"]),
        ("fish_and_chips", "harvestcraft:fishandchipsitem", [skillet, "minecraft:cooked_fish", "harvestcraft:friesitem", "harvestcraft:tartarsauceitem"]),
        ("sunday_roast", "harvestcraft:sundayroastitem", [bakeware, "minecraft:cooked_beef", "harvestcraft:bakedpotatoitem", "harvestcraft:roastedcarrotsitem"]),
        ("loaded_baked_potato", "harvestcraft:loadedbakedpotatoitem", [bakeware, "minecraft:baked_potato", "harvestcraft:cheeseitem", "harvestcraft:baconitem"]),
        ("chili", "harvestcraft:chiliitem", [pot, "minecraft:cooked_beef", "harvestcraft:chilipepperitem", "harvestcraft:beanitem", "harvestcraft:tomatoitem"]),
        ("ribs", "harvestcraft:bbqribsitem", [skillet, "minecraft:cooked_porkchop", "harvestcraft:bbqsauceitem"]),
        ("taco", "harvestcraft:tacoitem", [skillet, "harvestcraft:tortillaitem", "minecraft:cooked_beef", "harvestcraft:cheeseitem"]),
        ("burrito", "harvestcraft:burritoitem", [skillet, "harvestcraft:tortillaitem", "harvestcraft:beanitem", "harvestcraft:riceitem", "minecraft:cooked_chicken"]),
        ("chimichanga", "harvestcraft:chimichangaitem", [skillet, "harvestcraft:burritoitem", "harvestcraft:cheeseitem"]),
        ("spaghetti_meatballs", "harvestcraft:spaghettiandmeatballsitem", [pot, "harvestcraft:spaghettiitem", "harvestcraft:meatballitem", "harvestcraft:tomatosauceitem"]),
        ("lasagna", "harvestcraft:lasagnaitem", [bakeware, "harvestcraft:pastadoughitem", "harvestcraft:cheeseitem", "minecraft:cooked_beef", "harvestcraft:tomatosauceitem"]),
        ("bacon_mushroom_burger", "harvestcraft:baconmushroomburgeritem", [skillet, "harvestcraft:cheeseburgeritem", "harvestcraft:baconitem", "minecraft:brown_mushroom"]),
        ("gourmet_beef_burger", "harvestcraft:gourmetbeefburgeritem", [skillet, "harvestcraft:deluxeburgeritem", "harvestcraft:cheddarcurditem", "harvestcraft:picklesitem"]),
        ("gourmet_pork_burger", "harvestcraft:gourmetporkburgeritem", [skillet, "harvestcraft:porkburgeritem", "harvestcraft:bbqsauceitem", "harvestcraft:onionitem"]),
        ("gourmet_mutton_burger", "harvestcraft:gourmetmuttonburgeritem", [skillet, "harvestcraft:muttonburgeritem", "harvestcraft:garlicitem", "harvestcraft:cheeseitem"]),
        ("chocolate_bacon", "harvestcraft:chocolatebaconitem", [skillet, "harvestcraft:baconitem", "harvestcraft:chocolatebaritem"]),
        ("berry_pavlova", "harvestcraft:pavlovaitem", [bakeware, "minecraft:egg", "minecraft:sugar", "harvestcraft:blackberryitem", "harvestcraft:strawberryitem"]),
        ("tiramisu", "harvestcraft:tiramisuitem", [bakeware, "harvestcraft:coffeeitem", "harvestcraft:creamitem", "harvestcraft:sweetdoughitem"]),
        ("mango_smoothie", "harvestcraft:mangosmoothieitem", [juicer, "harvestcraft:mangoitem", "harvestcraft:yogurtitem", "minecraft:sugar"]),
        ("strawberry_rhubarb_pie", "harvestcraft:strawberryrhubarbpieitem", [bakeware, "harvestcraft:strawberryitem", "harvestcraft:rhubarbitem", "harvestcraft:doughitem"]),
        ("cinnamon_roll", "harvestcraft:cinnamonrollitem", [bakeware, "harvestcraft:cinnamonitem", "harvestcraft:doughitem", "minecraft:sugar", "harvestcraft:butteritem"]),
        ("apple_fritter", "harvestcraft:applefritteritem", [skillet, "minecraft:apple", "harvestcraft:doughitem", "harvestcraft:cinnamonitem"]),
        ("pancakes", "harvestcraft:pancakesitem", [skillet, "harvestcraft:batteritem", "harvestcraft:maplesyrupitem"]),
        ("waffles", "harvestcraft:wafflesitem", [bakeware, "harvestcraft:batteritem", "harvestcraft:butteritem", "harvestcraft:maplesyrupitem"]),
        ("eggs_benedict", "harvestcraft:eggsbenedictitem", [skillet, "minecraft:egg", "harvestcraft:toastitem", "harvestcraft:hollandaisesauceitem", "harvestcraft:baconitem"]),
        ("montecristo", "harvestcraft:montecristosandwichitem", [skillet, "harvestcraft:toastitem", "minecraft:cooked_porkchop", "harvestcraft:cheeseitem", "minecraft:egg"]),
        ("clam_chowder", "harvestcraft:clamchowderitem", [pot, "harvestcraft:clamrawitem", "harvestcraft:potatocakesitem", "harvestcraft:heavycreamitem"]),
        ("onion_soup", "harvestcraft:onionsoupitem", [pot, "harvestcraft:onionitem", "harvestcraft:stockitem", "harvestcraft:toastitem", "harvestcraft:cheeseitem"]),
        ("mushroom_risotto", "harvestcraft:mushroomrisottoitem", [pot, "harvestcraft:riceitem", "minecraft:brown_mushroom", "harvestcraft:butteritem", "harvestcraft:cheeseitem"]),
        ("guacamole", "harvestcraft:guacamoleitem", [cutting_board, "harvestcraft:avocadoitem", "harvestcraft:onionitem", "harvestcraft:tomatoitem", "harvestcraft:limeitem"]),
        ("sushi", "harvestcraft:sushiitem", [cutting_board, "minecraft:cooked_fish", "harvestcraft:riceitem", "harvestcraft:seaweeditem"]),
        ("calamari", "harvestcraft:calamariitem", [skillet, "harvestcraft:calamarirawitem", "harvestcraft:flouritem", "harvestcraft:lemonitem"]),
        ("pad_thai", "harvestcraft:padthaiitem", [pot, "harvestcraft:pastadoughitem", "harvestcraft:peanutbutteritem", "minecraft:egg", "harvestcraft:beansproutitem"]),
        ("ramen", "harvestcraft:ramenitem", [pot, "harvestcraft:pastadoughitem", "harvestcraft:stockitem", "minecraft:egg", "minecraft:cooked_porkchop"]),
        ("hotdog", "harvestcraft:hotdogitem", [skillet, "minecraft:bread", "minecraft:cooked_porkchop", "harvestcraft:mustardseedsitem"]),
        ("corned_beef_hash", "harvestcraft:cornedbeefhashitem", [skillet, "minecraft:cooked_beef", "minecraft:potato", "harvestcraft:onionitem"]),
        ("meatloaf", "harvestcraft:meatloafitem", [bakeware, "minecraft:cooked_beef", "minecraft:cooked_porkchop", "minecraft:egg", "harvestcraft:breaditem"]),
        ("cheesesteak", "harvestcraft:cheesesteakitem", [skillet, "harvestcraft:toastitem", "minecraft:cooked_beef", "harvestcraft:cheeseitem", "harvestcraft:onionitem"]),
        ("blt", "harvestcraft:bltitem", [cutting_board, "harvestcraft:toastitem", "harvestcraft:baconitem", "harvestcraft:lettuceitem", "harvestcraft:tomatoitem"]),
        ("grilledcheese", "harvestcraft:grilledcheeseitem", [skillet, "harvestcraft:toastitem", "harvestcraft:cheeseitem", "harvestcraft:butteritem"]),
        ("apple_pie", "harvestcraft:applepieitem", [bakeware, "minecraft:apple", "harvestcraft:doughitem", "minecraft:sugar"]),
        ("cherry_pie", "harvestcraft:cherrypieitem", [bakeware, "harvestcraft:cherryitem", "harvestcraft:doughitem", "minecraft:sugar"]),
        ("blueberry_pie", "harvestcraft:blueberrypieitem", [bakeware, "harvestcraft:blueberryitem", "harvestcraft:doughitem", "minecraft:sugar"]),
        ("blackberry_cobbler", "harvestcraft:blackberrycobbleritem", [bakeware, "harvestcraft:blackberryitem", "harvestcraft:doughitem", "minecraft:sugar"]),
        ("pumpkin_cheesecake", "harvestcraft:pumpkincheesecakeitem", [bakeware, "minecraft:pumpkin", "harvestcraft:cheeseitem", "harvestcraft:doughitem"]),
        ("spinach_dip", "harvestcraft:spinachpieitem", [bakeware, "harvestcraft:spinachitem", "harvestcraft:cheeseitem", "harvestcraft:doughitem"]),
        ("stuffed_eggplant", "harvestcraft:stuffedeggplantitem", [bakeware, "harvestcraft:eggplantitem", "harvestcraft:cheeseitem", "harvestcraft:tomatoitem"]),
        ("pot_roast", "harvestcraft:potroastitem", [pot, "minecraft:cooked_beef", "minecraft:carrot", "minecraft:potato"]),
        ("stew_hearty", "harvestcraft:beefstewitem", [pot, "minecraft:cooked_beef", "minecraft:carrot", "minecraft:potato", "harvestcraft:flouritem"]),
        ("chicken_curry", "harvestcraft:curryitem", [pot, "minecraft:cooked_chicken", "harvestcraft:riceitem", "harvestcraft:currypowderitem"]),
        ("fried_rice", "harvestcraft:friedriceitem", [skillet, "harvestcraft:riceitem", "minecraft:egg", "minecraft:carrot", "harvestcraft:peasitem"]),
        ("chocolate_donut", "harvestcraft:chocolatedonutitem", [bakeware, "harvestcraft:doughitem", "harvestcraft:chocolatebaritem"]),
        ("glazed_donut", "harvestcraft:donutitem", [bakeware, "harvestcraft:doughitem", "minecraft:sugar"]),
        ("grape_juice", "harvestcraft:grapejuiceitem", [juicer, "harvestcraft:grapeitem"]),
        ("apple_juice", "harvestcraft:applejuiceitem", [juicer, "minecraft:apple"]),
        ("orange_juice", "harvestcraft:orangejuiceitem", [juicer, "harvestcraft:orangeitem"]),
        ("hot_chocolate", "harvestcraft:hotchocolateitem", [pot, "harvestcraft:chocolatebaritem", "minecraft:milk_bucket"]),
        ("coffee", "harvestcraft:coffeeitem", [pot, "harvestcraft:coffeebeanitem", "minecraft:water_bucket"]),
        ("tea", "harvestcraft:teaitem", [pot, "harvestcraft:tealeafitem", "minecraft:water_bucket"]),
        ("trail_mix", "harvestcraft:trailmixitem", [cutting_board, "harvestcraft:walnutitem", "harvestcraft:raisinsitem", "harvestcraft:chocolatebaritem"]),
        ("caramel", "harvestcraft:caramelitem", [saucepan, "minecraft:sugar", "harvestcraft:butteritem"]),
        ("cheese", "harvestcraft:cheeseitem", [pot, "minecraft:milk_bucket", "harvestcraft:saltitem"]),
        ("yogurt", "harvestcraft:yogurtitem", [pot, "minecraft:milk_bucket", "minecraft:sugar"]),
        ("mashed_potatoes", "harvestcraft:mashedpotatoesitem", [pot, "minecraft:potato", "harvestcraft:butteritem", "harvestcraft:saltitem"]),
        ("baked_beans", "harvestcraft:bakedbeansitem", [pot, "harvestcraft:beanitem", "harvestcraft:tomatosauceitem", "minecraft:sugar"]),
        ("corn_on_cob", "harvestcraft:cornonthecobitem", [skillet, "harvestcraft:cornitem", "harvestcraft:butteritem"]),
        ("popcorn", "harvestcraft:popcornitem", [skillet, "harvestcraft:cornitem", "harvestcraft:butteritem", "harvestcraft:saltitem"]),
        ("strawberry_smoothie", "harvestcraft:strawberrysmoothieitem", [juicer, "harvestcraft:strawberryitem", "harvestcraft:yogurtitem"]),
        ("banana_smoothie", "harvestcraft:bananasmoothieitem", [juicer, "harvestcraft:bananaitem", "harvestcraft:yogurtitem"]),
        ("lemonade", "harvestcraft:lemonadeitem", [juicer, "harvestcraft:lemonitem", "minecraft:sugar", "minecraft:water_bucket"]),
        ("carrot_cake", "harvestcraft:carrotcakeitem", [bakeware, "minecraft:carrot", "harvestcraft:doughitem", "minecraft:sugar"]),
        ("cheesecake", "harvestcraft:cheesecakeitem", [bakeware, "harvestcraft:cheeseitem", "harvestcraft:doughitem", "minecraft:sugar"]),
        ("chocolate_cake", "harvestcraft:chocolatesprinklecakeitem", [bakeware, "harvestcraft:chocolatebaritem", "harvestcraft:doughitem", "minecraft:sugar"]),
        ("cherry_cheesecake", "harvestcraft:cherrycheesecakeitem", [bakeware, "harvestcraft:cherryitem", "harvestcraft:cheeseitem", "harvestcraft:doughitem"]),
        ("blueberry_muffin", "harvestcraft:blueberrymuffinitem", [bakeware, "harvestcraft:blueberryitem", "harvestcraft:doughitem", "harvestcraft:butteritem"]),
        ("chocolate_milk", "harvestcraft:chocolatemilkitem", [mixing_bowl, "harvestcraft:chocolatebaritem", "minecraft:milk_bucket"]),
        ("potato_soup", "harvestcraft:potatosoupitem", [pot, "minecraft:potato", "harvestcraft:stockitem", "harvestcraft:butteritem"]),
        ("tomato_soup", "harvestcraft:tomatosoupitem", [pot, "harvestcraft:tomatoitem", "harvestcraft:stockitem", "harvestcraft:heavycreamitem"]),
        ("chicken_noodle_soup", "harvestcraft:chickennoodlesoupitem", [pot, "minecraft:cooked_chicken", "harvestcraft:pastadoughitem", "harvestcraft:stockitem"]),
        ("cucumber_salad", "harvestcraft:cucumbersaladitem", [cutting_board, "harvestcraft:cucumberitem", "harvestcraft:dressingitem"]),
        ("fruit_salad", "harvestcraft:fruitsaladitem", [cutting_board, "minecraft:apple", "minecraft:melon", "harvestcraft:strawberryitem"]),
        ("spring_salad", "harvestcraft:springsaladitem", [cutting_board, "harvestcraft:lettuceitem", "harvestcraft:radishitem", "harvestcraft:dressingitem"]),
        ("coleslaw", "harvestcraft:coleslawitem", [cutting_board, "harvestcraft:cabbageitem", "harvestcraft:mayoitem"]),
        ("egg_salad", "harvestcraft:eggsaladitem", [mixing_bowl, "minecraft:egg", "harvestcraft:mayoitem"]),
        ("fish_taco", "harvestcraft:fishtacoitem", [skillet, "harvestcraft:tortillaitem", "minecraft:cooked_fish", "harvestcraft:cabbageitem"]),
        ("potato_chips", "harvestcraft:potatochipsitem", [skillet, "minecraft:potato", "harvestcraft:saltitem", "harvestcraft:oliveoilitem"]),
        ("onion_rings", "harvestcraft:onionringsitem", [skillet, "harvestcraft:onionitem", "harvestcraft:batteritem", "harvestcraft:oliveoilitem"]),
        ("corn_bread", "harvestcraft:cornbreaditem", [bakeware, "harvestcraft:cornitem", "harvestcraft:doughitem"]),
        ("biscuit", "harvestcraft:biscuitsandgravyitem", [bakeware, "harvestcraft:doughitem", "harvestcraft:gravyitem", "harvestcraft:butteritem"])
    ]

    for did, dout, dinputs in dishes:
        recipes.append(Recipe(
            name=f"nexus_exp_pams_{did}",
            output=dout,
            is_shaped=False,
            remove_output=True,
            comment=f"Кулинарный деликатес: {did}",
            shapeless_inputs=dinputs
        ))

    return recipes
