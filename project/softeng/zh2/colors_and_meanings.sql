-- Create the ColorsAndMeanings table
CREATE TABLE ColorsAndMeanings (
    ColorID INT IDENTITY(1,1) PRIMARY KEY,
    Color VARCHAR(50) NOT NULL,
    Culture VARCHAR(100) NOT NULL,
    Meaning VARCHAR(255) NOT NULL,
    IsPositive BIT NOT NULL
);

-- Insert 50 sample rows
INSERT INTO ColorsAndMeanings (Color, Culture, Meaning, IsPositive)
VALUES
('Red', 'China', 'Luck and prosperity', 1),
('Red', 'Western', 'Love and passion', 1),
('Red', 'South Africa', 'Mourning', 0),
('White', 'Western', 'Purity and innocence', 1),
('White', 'China', 'Death and mourning', 0),
('Black', 'Western', 'Elegance and power', 1),
('Black', 'Western', 'Death and mourning', 0),
('Black', 'India', 'Bad luck and negativity', 0),
('Green', 'Ireland', 'Luck and vitality', 1),
('Green', 'Western', 'Jealousy and envy', 0),
('Yellow', 'China', 'Royalty and honor', 1),
('Yellow', 'Western', 'Happiness and sunshine', 1),
('Yellow', 'India', 'Learning and knowledge', 1),
('Blue', 'Western', 'Calm and trust', 1),
('Blue', 'Iran', 'Mourning and spirituality', 0),
('Blue', 'Mexico', 'Protection and trust', 1),
('Purple', 'Western', 'Royalty and wealth', 1),
('Purple', 'Thailand', 'Mourning for widows', 0),
('Purple', 'Japan', 'Wealth and nobility', 1),
('Orange', 'Hinduism', 'Sacredness and purity', 1),
('Orange', 'Western', 'Energy and enthusiasm', 1),
('Pink', 'Western', 'Romance and femininity', 1),
('Pink', 'Japan', 'Spring and cherry blossoms', 1),
('Gold', 'Western', 'Wealth and success', 1),
('Gold', 'China', 'Fortune and prosperity', 1),
('Gold', 'South America', 'Greed and corruption', 0),
('Silver', 'Western', 'Modernity and sophistication', 1),
('Silver', 'China', 'Wealth and clarity', 1),
('Brown', 'Western', 'Stability and reliability', 1),
('Brown', 'China', 'Earth and agriculture', 1),
('Gray', 'Western', 'Neutrality and balance', 1),
('Gray', 'China', 'Mourning and old age', 0),
('Pink', 'India', 'Hope and optimism', 1),
('Blue', 'Hinduism', 'Godliness and divinity', 1),
('White', 'Japan', 'Purity and simplicity', 1),
('Red', 'Japan', 'Happiness and joy', 1),
('Black', 'Japan', 'Mystery and formality', 1),
('Green', 'Islam', 'Paradise and growth', 1),
('Yellow', 'Mexico', 'Death and mourning', 0),
('Purple', 'Hinduism', 'Spirituality and detachment', 1),
('Orange', 'Western', 'Autumn and warmth', 1),
('Silver', 'India', 'Purity and strength', 1),
('Gold', 'Western', 'Extravagance and richness', 1),
('Black', 'Western', 'Sophistication and luxury', 1),
('White', 'Western', 'Peace and surrender', 1),
('Blue', 'Greece', 'Protection from evil', 1),
('Yellow', 'Western', 'Cowardice and caution', 0),
('Red', 'Christianity', 'Blood of martyrs', 0),
('Green', 'Western', 'Growth and renewal', 1),
('Orange', 'Buddhism', 'Transformation and enlightenment', 1);

-- Verify the inserted data
SELECT * FROM ColorsAndMeanings;