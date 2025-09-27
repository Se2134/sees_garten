-- Some example data for development testing

-- plantSpecies
INSERT INTO "plantSpecies" ("genus", "species", "veriety", "commonName", "origin") VALUES
('Anubias', 'barteri', 'var. nana', 'Zwerg-Anubias', 'Westafrika'),
('Cryptocoryne', 'wendtii', 'green', 'Wendt Cryptocoryne', 'Sri Lanka'),
('Echinodorus', 'bleheri', '', 'Amazonas Schwertpflanze', 'Südamerika');

-- animalSpecies
INSERT INTO "animalSpecies" ("order", "family", "subfamily", "genus", "species", "subspecies", "variety", "commonName", "origin", "food", "demands", "sozial", "reproduction", "size") VALUES
('Perciformes', 'Osphronemidae', '', 'Trichogaster', 'honeyi', '', '', 'Honiggurami', 'Südostasien', 'Flockenfutter, Lebendfutter', 'leicht', 'friedlich', 'ovipar', 5.0),
('Cypriniformes', 'Cyprinidae', '', 'Carassius', 'auratus', '', '', 'Goldfisch', 'China', 'Flockenfutter', 'leicht', 'gesellig', 'ovipar', 15.0),
('Cichliformes', 'Cichlidae', '', 'Pelvicachromis', 'pulcher', '', '', 'Kribensis', 'Westafrika', 'Flockenfutter, Lebendfutter', 'mittel', 'paarweise', 'ovipar', 8.0);

-- substrate
INSERT INTO "substrate" ("name", "content", "granularity", "waterRetention", "aeration", "desity", "pH", "nutrient", "lifetime", "usecase") VALUES
('Aqua Soil', 'Ton, Mineralien', 'fein', 'hoch', 'gut', 'leicht', '5.5-6.5', 'reich', '2 Jahre', 'Pflanzenbecken'),
('Sand', 'Quarzsand', 'fein', 'niedrig', 'gut', 'mittel', '7.0', 'arm', 'unbegrenzt', 'Bodengrund für Welse'),
('Kies', 'Mineralien', 'mittel', 'mittel', 'gut', 'hoch', '6.5-7.5', 'arm', 'unbegrenzt', 'Allgemein');

-- container
INSERT INTO "container" ("name", "type", "length", "width", "hight") VALUES
('100L Pflanzenaquarium', 'Glas', 100.0, 40.0, 50.0),
('60L Nano-Aquarium', 'Glas', 60.0, 30.0, 35.0),
('120L Gemeinschaftsbecken', 'Glas', 120.0, 50.0, 50.0);

-- project
INSERT INTO "project" ("name", "type", "maintenance", "build", "container", "substrate", "notes") VALUES
('Planted Tank', 'Aquascape', 'wöchentlich Wasserwechsel, Düngen', 'DIY', 1, 1, 'Schwerpunkt auf Pflanzen'),
('Honey Gourami Nano', 'Fischbecken', '2x/Woche Fütterung, monatlich Teilwasserwechsel', 'DIY', 2, 2, 'Aufzucht von Honigguramis'),
('Community Tank', 'Fischbecken', 'regelmäßige Kontrolle, Wasserwechsel', 'Kaufbecken', 3, 3, 'Gemischte Arten');

-- plant
INSERT INTO "plant" ("speciesID", "name", "got", "location", "substrate", "watering", "fertilizing", "repotted", "health", "price", "notes", "project") VALUES
(1, 'Anubias Nana', '2025-03-15', '100L Aquarium', 1, '1x/Woche', 'Aquarium Dünger', '2025-06-01', 'gesund', 5.50, 'Braucht wenig Licht', 1),
(2, 'Cryptocoryne W.', '2025-04-01', '60L Nano', 2, '2x/Woche', 'Flüssigdünger', '2025-07-01', 'leicht geschwächt', 3.20, 'Langsame Wuchsgeschwindigkeit', 2),
(3, 'Echinodorus Bleheri', '2025-01-20', '120L Becken', 3, '1x/Woche', 'Wöchentlicher Dünger', '2025-05-01', 'gesund', 6.00, 'Wächst schnell', 3);

-- animal
INSERT INTO "animal" ("speciesID", "name", "got", "count", "sex", "age", "healthHistory", "price", "notes", "project") VALUES
(1, 'Honiggurami 1', '2025-07-01', 2, 'm/w', 2, 'keine', 4.00, 'friedlich', 2),
(2, 'Goldfisch 1', '2025-05-10', 3, 'm/w', 1, 'leichte Flossenprobleme', 2.50, 'benötigt kühleres Wasser', 3),
(3, 'Kribensis Paar', '2025-06-15', 2, 'm/w', 1, 'gesund', 7.50, 'braucht Höhlen', 3);

-- equipmentType
INSERT INTO "equipmentType" ("type") VALUES
('Filter'),
('Heizung'),
('Beleuchtung');

-- equipment
INSERT INTO "equipment" ("name", "typeID", "power", "specifications", "maintinance", "price", "link", "picturePath", "notes", "project") VALUES
('Fluval Filter', 1, '50W', 'Für bis 100L', 'monatlich reinigen', 45.00, '', '', 'Leise', 1),
('Eheim Heizung', 2, '100W', 'Thermostat 24-28°C', 'jährlich prüfen', 25.00, '', '', 'Stabil', 2),
('LED Light 60cm', 3, '15W', 'Vollspektrum', 'jährlich reinigen', 30.00, '', '', 'Für Pflanzenwachstum', 3);

-- plantPicture
INSERT INTO "plantPicture" ("refID", "caption", "isPrimary", "path") VALUES
(1, 'Anubias im Vordergrund', 1, 'images/anubias1.jpg'),
(2, 'Cryptocoryne Wendt', 1, 'images/cryptocoryne1.jpg'),
(3, 'Echinodorus Bleheri', 1, 'images/echinodorus1.jpg');

-- animalPicture
INSERT INTO "animalPicture" ("refID", "caption", "isPrimary", "path") VALUES
(1, 'Honigguramis im Nano', 1, 'images/honey1.jpg'),
(2, 'Goldfische im Becken', 1, 'images/goldfish1.jpg'),
(3, 'Kribensis Paar', 1, 'images/kribensis1.jpg');

-- projectPicture
INSERT INTO "projectPicture" ("refID", "caption", "isPrimary", "path") VALUES
(1, 'Planted Tank Übersicht', 1, 'images/plantedtank.jpg'),
(2, 'Nano mit Honigguramis', 1, 'images/nano.jpg'),
(3, 'Community Tank', 1, 'images/community.jpg');