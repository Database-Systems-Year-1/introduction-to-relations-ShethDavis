CREATE TABLE Countries (
    CountryID INT PRIMARY KEY,
    CountryName VARCHAR(50),
    Population INT
);

CREATE TABLE Cities (
    CityID INT PRIMARY KEY,
    CityName VARCHAR(50),
    CountryID INT,
    FOREIGN KEY (CountryID) REFERENCES Countries(CountryID)
);

CREATE TABLE Languages (
    LanguageID INT PRIMARY KEY,
    LanguageName VARCHAR(50),
    CountryID INT,
    FOREIGN KEY (CountryID) REFERENCES Countries(CountryID)
);
INSERT INTO Countries (CountryID, CountryName, Population) VALUES
(1, 'Kenya', 53771300),
(2, 'South Africa', 45741000),
(3, 'Ethiopia', 59734218);

INSERT INTO Cities (CityID, CityName, CountryID) VALUES
(1, 'Nairobi', 1),
(2, 'Johannesburg', 2),
(3, 'Adis Ababa', 3);

INSERT INTO Languages (LanguageID, LanguageName, CountryID) VALUES
(1, 'Swahili', 1),
(2, 'Tswana', 2),
(3, 'Oromo', 3);
SELECT * FROM Countries;
SELECT * FROM Cities;
SELECT * FROM Languages;
UPDATE Countries
SET Population = 54000000
WHERE CountryID = 1;
ALTER TABLE Countries ADD Continent VARCHAR(50);

ALTER TABLE Countries ALTER COLUMN Continent TYPE VARCHAR(100);

ALTER TABLE Countries DROP COLUMN Continent;
DROP TABLE Languages;








