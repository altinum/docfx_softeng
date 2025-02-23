-- Create the HauntedPlaces table
CREATE TABLE HauntedPlaces (
    PlaceID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(150) NOT NULL,
    Location VARCHAR(100) NOT NULL,
    Type VARCHAR(50) NOT NULL,
    IsAccessible BIT NOT NULL,
    Description VARCHAR(255) NOT NULL
);

-- Insert 50 sample rows
INSERT INTO HauntedPlaces (Name, Location, Type, IsAccessible, Description)
VALUES
('The Tower of London', 'London, England', 'Fortress', 1, 'Famous for ghost sightings, including Anne Boleyn.'),
('Eastern State Penitentiary', 'Philadelphia, USA', 'Prison', 1, 'Known for eerie sounds and shadowy figures.'),
('Bhangarh Fort', 'Rajasthan, India', 'Fort', 0, 'A cursed and abandoned fort shrouded in mystery.'),
('The Stanley Hotel', 'Colorado, USA', 'Hotel', 1, 'Inspired Stephen King’s *The Shining*.'),
('Aokigahara Forest', 'Mount Fuji, Japan', 'Forest', 0, 'Known as the Suicide Forest, with unsettling energy.'),
('Poveglia Island', 'Venice, Italy', 'Island', 0, 'A former quarantine zone haunted by its tragic past.'),
('Winchester Mystery House', 'California, USA', 'House', 1, 'Built to confuse spirits with its odd architecture.'),
('The Myrtles Plantation', 'Louisiana, USA', 'Plantation', 1, 'Alleged home to multiple spirits, including Chloe.'),
('Château de Brissac', 'Brissac, France', 'Castle', 1, 'Known for the “Green Lady” ghost.'),
('The Catacombs of Paris', 'Paris, France', 'Catacombs', 1, 'A labyrinth filled with human remains and hauntings.'),
('Leap Castle', 'Offaly, Ireland', 'Castle', 1, 'Home to an “Elemental” spirit and many ghostly tales.'),
('The Ancient Ram Inn', 'Gloucestershire, England', 'Inn', 1, 'Reputed to be one of the most haunted inns in England.'),
('Hoia Baciu Forest', 'Cluj, Romania', 'Forest', 0, 'A paranormal hotspot with unexplained phenomena.'),
('The Amityville House', 'New York, USA', 'House', 0, 'Scene of the infamous Amityville Horror.'),
('The Queen Mary', 'California, USA', 'Ship', 1, 'A retired ocean liner with ghostly passengers.'),
('Edinburgh Castle', 'Edinburgh, Scotland', 'Castle', 1, 'Has dungeons and tunnels with ghostly activity.'),
('Port Arthur', 'Tasmania, Australia', 'Prison', 1, 'A former penal colony with chilling apparitions.'),
('Changi Hospital', 'Singapore', 'Hospital', 0, 'Abandoned and known for its eerie atmosphere.'),
('Highgate Cemetery', 'London, England', 'Cemetery', 1, 'Home to reports of ghostly sightings.'),
('Monte Cristo Homestead', 'New South Wales, Australia', 'House', 1, 'Known as Australia’s most haunted house.'),
('The White House', 'Washington, USA', 'Government Building', 1, 'Sightings of Abraham Lincoln’s ghost reported.'),
('Castle of Good Hope', 'Cape Town, South Africa', 'Castle', 1, 'A colonial-era fort with ghostly soldiers.'),
('The Lemp Mansion', 'Missouri, USA', 'House', 1, 'A historic home with numerous ghostly tales.'),
('Hill of Crosses', 'Šiauliai, Lithuania', 'Hill', 1, 'Known for its unsettling atmosphere and sightings.'),
('The Fairmont Banff Springs Hotel', 'Alberta, Canada', 'Hotel', 1, 'Home to the ghost of a bride and a bellman.'),
('Boggo Road Gaol', 'Brisbane, Australia', 'Prison', 1, 'A former jail with ghostly prisoners.'),
('Raynham Hall', 'Norfolk, England', 'Mansion', 1, 'Famous for the “Brown Lady” photograph.'),
('Island of the Dolls', 'Mexico City, Mexico', 'Island', 0, 'Covered with creepy dolls, said to be haunted.'),
('Bodie Ghost Town', 'California, USA', 'Town', 1, 'An abandoned town with lingering spirits.'),
('Ancient City of Pompeii', 'Naples, Italy', 'City', 1, 'Ghostly figures reported among the ruins.'),
('The Driskill Hotel', 'Texas, USA', 'Hotel', 1, 'Hosts apparitions, including that of a little girl.'),
('Pendle Hill', 'Lancashire, England', 'Hill', 0, 'Known for its history of witchcraft and hauntings.'),
('Corvin Castle', 'Hunedoara, Romania', 'Castle', 1, 'Linked to Vlad the Impaler and ghost sightings.'),
('Pluckley Village', 'Kent, England', 'Village', 1, 'Dubbed the most haunted village in England.'),
('Helltown', 'Ohio, USA', 'Town', 0, 'Abandoned town with legends of hauntings.'),
('The Ridges Asylum', 'Ohio, USA', 'Asylum', 0, 'A former psychiatric hospital with ghostly activity.'),
('The Screaming Tunnel', 'Ontario, Canada', 'Tunnel', 1, 'Known for its chilling screams at night.'),
('The Beechworth Lunatic Asylum', 'Victoria, Australia', 'Asylum', 1, 'A former mental hospital with ghostly encounters.'),
('St. Augustine Lighthouse', 'Florida, USA', 'Lighthouse', 1, 'Haunted by the spirits of children and workers.'),
('Alcatraz Island', 'San Francisco, USA', 'Prison', 1, 'A former prison with lingering spirits.'),
('El Campo Santo Cemetery', 'San Diego, USA', 'Cemetery', 1, 'Known for ghostly encounters and cursed graves.'),
('The Old Vicarage', 'Borgvattnet, Sweden', 'House', 1, 'One of the most haunted places in Scandinavia.'),
('Fort George', 'Nova Scotia, Canada', 'Fort', 1, 'A historic site with paranormal activity.'),
('Château de Chillon', 'Montreux, Switzerland', 'Castle', 1, 'A lakeside castle with ghostly legends.'),
('Crescent Hotel', 'Arkansas, USA', 'Hotel', 1, 'Known as “America’s Most Haunted Hotel.”'),
('Berry Pomeroy Castle', 'Devon, England', 'Castle', 1, 'A ruin with reports of ghostly figures.'),
('Bélmez Faces', 'Bélmez, Spain', 'House', 0, 'Known for mysterious face-like images on the walls.'),
('Humberstone and Santa Laura', 'Chile', 'Town', 0, 'Abandoned mining towns with ghostly stories.');

-- Verify the inserted data
SELECT * FROM HauntedPlaces;
