-- Create the MythicalCreatures table
CREATE TABLE MythicalCreatures (
    CreatureID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Origin VARCHAR(100) NOT NULL,
    Type VARCHAR(50) NOT NULL,
    IsFriendly BIT NOT NULL,
    Description VARCHAR(255) NOT NULL
);

-- Insert 50 sample rows
INSERT INTO MythicalCreatures (Name, Origin, Type, IsFriendly, Description)
VALUES
('Dragon', 'Global', 'Beast', 0, 'A large, fire-breathing reptile, often depicted as a guardian.'),
('Unicorn', 'Europe', 'Beast', 1, 'A horse-like creature with a single magical horn on its forehead.'),
('Phoenix', 'Egypt', 'Bird', 1, 'A bird that is reborn from its ashes after death.'),
('Minotaur', 'Greek', 'Humanoid', 0, 'A creature with the body of a man and the head of a bull.'),
('Mermaid', 'Global', 'Humanoid', 1, 'A half-human, half-fish creature that lives in the sea.'),
('Griffin', 'Greek', 'Beast', 0, 'A creature with the body of a lion and the head and wings of an eagle.'),
('Pegasus', 'Greek', 'Beast', 1, 'A winged horse known for its loyalty and speed.'),
('Cerberus', 'Greek', 'Beast', 0, 'A three-headed dog that guards the entrance to the underworld.'),
('Yeti', 'Himalayas', 'Humanoid', 0, 'A giant, ape-like creature believed to inhabit snowy mountains.'),
('Banshee', 'Irish', 'Spirit', 0, 'A female spirit that wails as a warning of imminent death.'),
('Werewolf', 'Global', 'Humanoid', 0, 'A human who transforms into a wolf during a full moon.'),
('Fairy', 'Europe', 'Spirit', 1, 'A small, magical being with wings.'),
('Chimera', 'Greek', 'Beast', 0, 'A fire-breathing hybrid with a lion, goat, and serpent body.'),
('Kraken', 'Nordic', 'Beast', 0, 'A massive sea monster capable of sinking ships.'),
('Gorgon', 'Greek', 'Humanoid', 0, 'A woman with snakes for hair who can turn people to stone.'),
('Elf', 'Norse', 'Humanoid', 1, 'A magical humanoid often associated with nature and mischief.'),
('Vampire', 'European', 'Humanoid', 0, 'An undead creature that feeds on the blood of the living.'),
('Cyclops', 'Greek', 'Humanoid', 0, 'A one-eyed giant known for its brute strength.'),
('Leprechaun', 'Irish', 'Humanoid', 1, 'A mischievous spirit often associated with luck and gold.'),
('Kelpie', 'Scottish', 'Beast', 0, 'A shape-shifting water spirit often appearing as a horse.'),
('Nymph', 'Greek', 'Spirit', 1, 'A female spirit associated with nature, such as trees or rivers.'),
('Bigfoot', 'North America', 'Humanoid', 0, 'A large, ape-like creature believed to live in forests.'),
('Sphinx', 'Egypt', 'Beast', 0, 'A creature with the body of a lion and the head of a human.'),
('Zombie', 'Global', 'Humanoid', 0, 'A reanimated corpse with no consciousness.'),
('Djinn', 'Middle Eastern', 'Spirit', 0, 'A supernatural being capable of granting wishes, often with a trick.'),
('Hippogriff', 'Greek', 'Beast', 1, 'A creature with the front half of an eagle and the back half of a horse.'),
('Selkie', 'Scottish', 'Humanoid', 1, 'A seal that can shed its skin to become human.'),
('Basilisk', 'European', 'Beast', 0, 'A serpent-like creature whose gaze can kill.'),
('Manticore', 'Persian', 'Beast', 0, 'A creature with a lion’s body, a human face, and a scorpion tail.'),
('Dryad', 'Greek', 'Spirit', 1, 'A tree spirit that protects forests.'),
('Kitsune', 'Japanese', 'Spirit', 1, 'A fox spirit known for its intelligence and magical powers.'),
('Wendigo', 'Native American', 'Humanoid', 0, 'A cannibalistic creature born of human greed and starvation.'),
('Succubus', 'European', 'Spirit', 0, 'A female demon that seduces men in their dreams.'),
('Incubus', 'European', 'Spirit', 0, 'A male demon that seduces women in their dreams.'),
('Golem', 'Jewish', 'Humanoid', 1, 'A clay figure brought to life to protect its creator.'),
('Chupacabra', 'Latin American', 'Beast', 0, 'A creature that feeds on the blood of livestock.'),
('Hydra', 'Greek', 'Beast', 0, 'A serpent-like creature with multiple heads that regrow when severed.'),
('Fenrir', 'Norse', 'Beast', 0, 'A giant wolf prophesied to cause the end of the world.'),
('Kappa', 'Japanese', 'Spirit', 0, 'A water creature known for its mischief and love of cucumbers.'),
('Krampus', 'Austrian', 'Spirit', 0, 'A horned figure that punishes misbehaving children during Christmas.'),
('Harpy', 'Greek', 'Beast', 0, 'A creature with the body of a bird and the face of a woman.'),
('Peryton', 'Mediterranean', 'Beast', 0, 'A winged deer with the shadow of a human.'),
('Qilin', 'Chinese', 'Beast', 1, 'A gentle, unicorn-like creature that brings prosperity.'),
('Roc', 'Middle Eastern', 'Beast', 0, 'A giant bird capable of carrying elephants.'),
('Satyr', 'Greek', 'Humanoid', 1, 'A half-goat, half-man creature associated with revelry.'),
('Gremlin', 'Global', 'Spirit', 0, 'A mischievous creature that sabotages machinery.'),
('Jorogumo', 'Japanese', 'Spirit', 0, 'A spider that can transform into a beautiful woman to lure prey.'),
('Tarasque', 'French', 'Beast', 1, 'A dragon-like creature tamed by a saint.');

-- Verify the inserted data
SELECT * FROM MythicalCreatures;
