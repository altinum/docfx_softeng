-- Create the HistoricalLeaders table
CREATE TABLE HistoricalLeaders (
    LeaderID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Country VARCHAR(50) NOT NULL,
    ReignStart INT NOT NULL,
    ReignEnd INT NULL,
    IsStillAlive BIT NOT NULL
);

-- Insert 50 sample rows
INSERT INTO HistoricalLeaders (Name, Country, ReignStart, ReignEnd, IsStillAlive)
VALUES
('Queen Elizabeth II', 'United Kingdom', 1952, 2022, 0),
('George Washington', 'United States', 1789, 1797, 0),
('Napoleon Bonaparte', 'France', 1804, 1814, 0),
('Julius Caesar', 'Roman Empire', -49, -44, 0),
('Alexander the Great', 'Macedonia', -336, -323, 0),
('Mahatma Gandhi', 'India', 1921, 1948, 0),
('Winston Churchill', 'United Kingdom', 1940, 1945, 0),
('Nelson Mandela', 'South Africa', 1994, 1999, 0),
('Franklin D. Roosevelt', 'United States', 1933, 1945, 0),
('John F. Kennedy', 'United States', 1961, 1963, 0),
('Barack Obama', 'United States', 2009, 2017, 1),
('Donald Trump', 'United States', 2017, 2021, 1),
('Joe Biden', 'United States', 2021, NULL, 1),
('Abraham Lincoln', 'United States', 1861, 1865, 0),
('Cleopatra', 'Egypt', -51, -30, 0),
('Charlemagne', 'Frankish Empire', 768, 814, 0),
('Queen Victoria', 'United Kingdom', 1837, 1901, 0),
('Henry VIII', 'England', 1509, 1547, 0),
('Adolf Hitler', 'Germany', 1933, 1945, 0),
('Joseph Stalin', 'Soviet Union', 1924, 1953, 0),
('Vladimir Putin', 'Russia', 2000, NULL, 1),
('Xi Jinping', 'China', 2012, NULL, 1),
('Angela Merkel', 'Germany', 2005, 2021, 1),
('Kim Jong Un', 'North Korea', 2011, NULL, 1),
('Fidel Castro', 'Cuba', 1959, 2008, 0),
('Theodore Roosevelt', 'United States', 1901, 1909, 0),
('Margaret Thatcher', 'United Kingdom', 1979, 1990, 0),
('Ronald Reagan', 'United States', 1981, 1989, 0),
('Genghis Khan', 'Mongol Empire', 1206, 1227, 0),
('Attila the Hun', 'Hunnic Empire', 434, 453, 0),
('Harun al-Rashid', 'Abbasid Caliphate', 786, 809, 0),
('Akbar the Great', 'Mughal Empire', 1556, 1605, 0),
('Suleiman the Magnificent', 'Ottoman Empire', 1520, 1566, 0),
('Otto von Bismarck', 'Germany', 1862, 1890, 0),
('Elizabeth I', 'England', 1558, 1603, 0),
('Catherine the Great', 'Russia', 1762, 1796, 0),
('Mikhail Gorbachev', 'Soviet Union', 1985, 1991, 0),
('Yasser Arafat', 'Palestine', 1969, 2004, 0),
('Ho Chi Minh', 'Vietnam', 1945, 1969, 0),
('Mustafa Kemal Atatürk', 'Turkey', 1923, 1938, 0),
('Simón Bolívar', 'Gran Colombia', 1819, 1830, 0),
('Che Guevara', 'Cuba', 1959, 1967, 0),
('Eva Perón', 'Argentina', 1946, 1952, 0),
('Juan Perón', 'Argentina', 1946, 1955, 0),
('Thomas Jefferson', 'United States', 1801, 1809, 0),
('Richard Nixon', 'United States', 1969, 1974, 0),
('George III', 'United Kingdom', 1760, 1820, 0),
('Louis XIV', 'France', 1643, 1715, 0);

-- Verify the inserted data
SELECT * FROM HistoricalLeaders;
