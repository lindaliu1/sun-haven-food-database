CREATE TABLE Consumable (
    consumableName CHAR(100) PRIMARY KEY, 
    health INTEGER, 
    mana INTEGER, 
    station CHAR(100)
);

CREATE TABLE StatIncrease (
    ability CHAR(100) PRIMARY KEY
);

CREATE TABLE NonedibleIngredient (
    niName CHAR(100) PRIMARY KEY
);

CREATE TABLE Gives (
    consumableName CHAR(100), 
    ability CHAR(100), 
    amount CHAR(100),
    PRIMARY KEY (consumableName, ability),
    FOREIGN KEY (consumableName) REFERENCES Consumable,
    FOREIGN KEY (ability) REFERENCES StatIncrease
);

CREATE TABLE Crafts (
    consumableName CHAR(100),
    niName CHAR(100), 
    quantity INTEGER,
    PRIMARY KEY (consumableName, niName),
    FOREIGN KEY (consumableName) REFERENCES Consumable,
    FOREIGN KEY (niName) REFERENCES NonedibleIngredient
);

CREATE TABLE Contains (
    consumableNameIn CHAR(100),
    consumableNameOut CHAR(100),
    inQuantity INTEGER,
    PRIMARY KEY (consumableNameIn, consumableNameOut),
    FOREIGN KEY (consumableNameIn) REFERENCES Consumable(consumableName),
    FOREIGN KEY (consumableNameOut) REFERENCES Consumable(consumableName)
);

-- Consumable(consumableName, health, mana, station)
-- FORAGEABLES
INSERT INTO Consumable VALUES ('Apple', 10, NULL, 'Forageable');
INSERT INTO Consumable VALUES ('Berry', 10, 10, 'Forageable');
INSERT INTO Consumable VALUES ('Blueberries', 10, NULL, 'Forageable');
INSERT INTO Consumable VALUES ('Mushroom', 30, 10, 'Forageable');
INSERT INTO Consumable VALUES ('Orange', 10, NULL, 'Forageable');
INSERT INTO Consumable VALUES ('Peach', 15, NULL, 'Forageable');
INSERT INTO Consumable VALUES ('Raspberries', 20, NULL, 'Forageable');
INSERT INTO Consumable VALUES ('Strawberries', 15, NULL, 'Forageable');
INSERT INTO Consumable VALUES ('Seaweed', NULL, 10, 'Forageable');

-- COOKING POT RECIPES
INSERT INTO Consumable VALUES ('Acai Bowl', NULL, 25, 'Cooking Pot');
INSERT INTO Consumable VALUES ('Apple Cider', NULL, 60, 'Cooking Pot');
INSERT INTO Consumable VALUES ('Apple Sauce', NULL, 60, 'Cooking Pot');
INSERT INTO Consumable VALUES ('Beginner''s Apple Pie', 25, NULL, 'Cooking Pot'); -- 
INSERT INTO Consumable VALUES ('Berry Fruit Salad', 30, NULL, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Blizzard Berry Stew', 20, 50, 'Cooking Pot');
INSERT INTO Consumable VALUES ('BLT', NULL, 60, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Blueberry Muffin', NULL, 35, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Blueberry Salad', 10, 35, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Butternut Mac and Cheese', 40, 20, 'Cooking Pot');
INSERT INTO Consumable VALUES ('California Roll', NULL, 25, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Candied Yam', NULL, 120, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Caribbean Green Soup', NULL, 70, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Charcuterie Board', 30, 20, 'Cooking Pot');
INSERT INTO Consumable VALUES ('Cheese', NULL, 55, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Cheeseburger', 50, 50, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Cheesecake', NULL, 135, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Chicken Noodle Soup', 35, NULL, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Chili', 70, 20, 'Cooking Pot');
INSERT INTO Consumable VALUES ('Chocolate Milk', 30, 10, 'Cooking Pot');
INSERT INTO Consumable VALUES ('Churros', NULL, 70, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Cinnamon Apple Pie', NULL, 60, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Citrus Salad', 20, 10, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Clam Chowder', 25, 10, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Cookies', 15, 10, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Cooled Lava Honey', 20, 25, 'Cooking Pot');
INSERT INTO Consumable VALUES ('Creamy Beef Stew', 35, NULL, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Creamy Mushroom Soup', 5, 40, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Deviled Eggs', 30, 10, 'Cooking Pot');
INSERT INTO Consumable VALUES ('Egg Hash', 25, 20, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Egg Tarts', 30, 15, 'Cooking Pot');
INSERT INTO Consumable VALUES ('Eggplant Ravioli', 40, NULL, 'Cooking Pot');
INSERT INTO Consumable VALUES ('Energy Smoothie', NULL, 45, 'Cooking Pot'); -- 
INSERT INTO Consumable VALUES ('Fish and Chips', 25, NULL, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Fish Taco', NULL, 60, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Fried Carp', 20, NULL, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Fried Rice', 50, 30, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Frostfin Cocktail', 10, 25, 'Cooking Pot');
INSERT INTO Consumable VALUES ('Fruit Punch', NULL, 45, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Fruit Snacks', NULL, 25, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Fruit Tart', NULL, 40, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Gnocchi', 30, 10, 'Cooking Pot');
INSERT INTO Consumable VALUES ('Grilled Cheese', NULL, 60, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Grilled Pineapple', 30, 10, 'Cooking Pot');
INSERT INTO Consumable VALUES ('Honeyglazed Apple', NULL, 40, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Hummus', 35, NULL, 'Cooking Pot');
INSERT INTO Consumable VALUES ('Ice Cream', 5, 40, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Lasagna', 85, 75, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Linguine with Clams', 20, 20, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Lobster Bisque', 5, 40, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Lobster Roll', 5, 40, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Mashed Potatoes', 20, 20, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Mochi', NULL, 25, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Mochi Covered Strawberry', NULL, 35, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Mushroom Risotto', 20, 10, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Mushroom Stroganoff', 30, NULL, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Mushroom Toast', 20, 10, 'Cooking Pot');
INSERT INTO Consumable VALUES ('Nachos', NULL, 75, 'Cooking Pot');
INSERT INTO Consumable VALUES ('Omelet', 10, 40, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Onion Rings', 30, 15, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Pad Thai', 15, 40, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Peach Cobbler', 5, 25, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Peaches and Cream', 20, 40, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Pickled Veggie Salad', 30, 40, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Pizza', 70, 50, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Poke Bowl', 35, NULL, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Popcorn', 25, NULL, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Pot Pie', 30, NULL, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Potato Salad', 35, NULL, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Raspberry Crepes', NULL, 25, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Red Veggie Soup', 70, NULL, 'Cooking Pot'); -- 
INSERT INTO Consumable VALUES ('Rice Pilaf', 20, 10, 'Cooking Pot');
INSERT INTO Consumable VALUES ('Roasted Turnip', 10, 10, 'Cooking Pot');
INSERT INTO Consumable VALUES ('Salsa', 5, 40, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Seafood Gumbo', 40, NULL, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Sesame Rice Ball', NULL, 30, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Shimmeroot Treat', 120, 120, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Short Ribs', 30, NULL, 'Cooking Pot');
INSERT INTO Consumable VALUES ('Spaghetti', 15, 20, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Spicy Noodles', 20, 40, 'Cooking Pot');
INSERT INTO Consumable VALUES ('Spicy Ramen', 40, NULL, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Spring Roll', 125, 80, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Squid Tacos', 20, 10, 'Cooking Pot');
INSERT INTO Consumable VALUES ('Steak', 10, 10, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Steamed Eggplant', 10, 10, 'Cooking Pot');
INSERT INTO Consumable VALUES ('Strawberry Milk', NULL, 25, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Strawberry Salad', 35, NULL, 'Cooking Pot');
INSERT INTO Consumable VALUES ('Strawberry Shortcake', NULL, 20, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Stuffed Casserole', NULL, 50, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Stuffed Peppers', 40, 20, 'Cooking Pot');
INSERT INTO Consumable VALUES ('Sweet and Spicy Shrimp', 50, 40, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Tikka Masala', 135, 135, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Tomato Bread', 100, NULL, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Tomato Juice', 90, NULL, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Tomato Salad', 45, NULL, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Tomato Soup', 15, 30, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Tortilla', 25, NULL, 'Cooking Pot'); 
INSERT INTO Consumable VALUES ('Tortilla Chips', 30, 10, 'Cooking Pot');
INSERT INTO Consumable VALUES ('Trail Mix', 40, 40, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Tuna Nigiri', 30, NULL, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Veggie Kebab', 30, 10, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Veggie Wrap', NULL, 60, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Waffles', 10, 45, 'Cooking Pot'); --
INSERT INTO Consumable VALUES ('Yam Fettuccine Alfredo', 80, NULL, 'Cooking Pot');
INSERT INTO Consumable VALUES ('Yogurt', NULL, 20, 'Cooking Pot');
INSERT INTO Consumable VALUES ('Yogurt Parfait', NULL, 60, 'Cooking Pot'); --

-- StatIncrease(ability)
INSERT INTO StatIncrease VALUES ('Health');
INSERT INTO StatIncrease VALUES ('Mana');
INSERT INTO StatIncrease VALUES ('Attack Damage');
INSERT INTO StatIncrease VALUES ('Spell Damage');
INSERT INTO StatIncrease VALUES ('Defense');
INSERT INTO StatIncrease VALUES ('Health Regeneration');
INSERT INTO StatIncrease VALUES ('Mana Regeneration');
INSERT INTO StatIncrease VALUES ('Movement Speed');

-- Gives(consumableName, ability, amount)
-- FORAGEABLES 
INSERT INTO Gives VALUES ('Berry', 'Mana', 'moderate');

-- COOKING POT
INSERT INTO Gives VALUES ('Acai Bowl', 'Mana Regeneration', 'very small');
INSERT INTO Gives VALUES ('Apple Cider', 'Spell Damage', 'small');
INSERT INTO Gives VALUES ('Apple Sauce', 'Mana', 'moderate');