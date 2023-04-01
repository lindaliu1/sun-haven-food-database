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
    amount INTEGER,
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