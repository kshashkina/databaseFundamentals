INSERT INTO location (name, country, region, coordinates) VALUES
('Glacier National Park', 'USA', 'Montana', POINT(-113.718510, 48.759613)),
('Grand Canyon', 'USA', 'Arizona', POINT(-112.112997, 36.106965)),
('Plitvice Lakes', 'Croatia', 'Plitvička Jezera', POINT(15.621374, 44.865397)),
('Mount Everest', 'Nepal', 'Mahalangur Himal', POINT(86.925018, 27.988121)),
('Kilimanjaro', 'Tanzania', 'Kilimanjaro Region', POINT(37.355627, -3.067425)),
('El Chalten', 'Argentina', 'Santa Cruz', POINT(-73.054752, -49.331494)),
('Machu Picchu', 'Peru', 'Cuzco Region', POINT(-72.544963, -13.163141)),
('Great Wall of China', 'China', 'Beijing', POINT(116.570375, 40.431908)),
('Grand Teton', 'USA', 'Wyoming', POINT(-110.802436, 43.790428)),
('Cinque Terre', 'Italy', 'Liguria', POINT(9.722952, 44.134578)),
('Great Ocean Road', 'Australia', 'Victoria', POINT(143.3926, -38.680564)),
('Fjordlands National Park', 'New Zealand', 'Southland', POINT(167.718053, -45.414451)),
('Blue Mountains', 'Australia', 'New South Wales', POINT(150.311401, -33.409983)),
('Serengeti National Park', 'Tanzania', 'Mara Region', POINT(34.834808, -2.332805)),
('Yakushima', 'Japan', 'Kagoshima Prefecture', POINT(130.557116, 30.358501));

INSERT INTO difficulty (name, description) VALUES
('Easy', 'Suitable for most people in fair condition.'),
('Moderate', 'Requires a bit more endurance and involves some elevation gain.'),
('Hard', 'Challenging for most people, involving steep inclines and possibly navigation challenges.'),
('Expert', 'Requires specialized skills, fitness, and equipment.');

INSERT INTO trail (name, length, elevation, description, image_url, location_id) VALUES
('Grinnell Glacier Trail', 10, 1600, 'A stunning hike showcasing glaciers, lakes, and wildlife.', 'https://[Log in to view URL]', 1),
('Bright Angel Trail', 9.5, 4340, 'Classic Grand Canyon hike with incredible canyon views.', 'https://[Log in to view URL]', 2),
('Plitvice Lake Tour', 5, 100, 'A beautiful walk through cascading lakes and waterfalls.', 'https://[Log in to view URL]', 3),
('Everest Base Camp Trek', 130, 17000, 'The ultimate trek to the base of the world''s highest mountain.', 'https://[Log in to view URL]', 4),
('Kilimanjaro Summit', 35, 19341, 'A challenging trek to the top of Africa''s highest peak.', 'https://[Log in to view URL]', 5),
('Fitz Roy Trek', 20, 3500, 'A breathtaking hike to the iconic Mount Fitz Roy.', 'https://[Log in to view URL]', 6),
('Inca Trail to Machu Picchu', 26, 4200, 'A historic trail leading to the ancient Incan city of Machu Picchu.', 'https://[Log in to view URL]', 7),
('Great Wall Hike', 4, 500, 'Walk a segment of this ancient marvel with stunning views.', 'https://[Log in to view URL]', 8),
('Teton Crest Trail', 40, 8000, 'A multi-day adventure through the heart of the Tetons.', 'https://[Log in to view URL]', 9),
('Sentiero Azzurro', 7.5, 500, 'Linking the picturesque villages of the Cinque Terre.', 'https://[Log in to view URL]', 10),
('Great Ocean Walk', 100, 1500, 'Experience the rugged beauty of the Victoria coastline.', 'https://[Log in to view URL]', 11),
('Milford Track', 33, 4000, 'A world-famous trek through New Zealand''s fjordlands.', 'https://[Log in to view URL]', 12),
('Blue Mountains Walk', 10, 2000, 'Explore the dramatic scenery of the Blue Mountains.', 'https://[Log in to view URL]', 13),
('Serengeti Safari Trek', 50, 200, 'A unique trek through the vast plains of the Serengeti.', 'https://[Log in to view URL]', 14),
('Yakushima Forest Trail', 8, 1000, 'Wander through ancient forests in this mystical island.', 'https://[Log in to view URL]', 15);

INSERT INTO trail_difficulty (trail_id, difficulty_id) VALUES
(1, 1), (2, 2), (3, 1), (4, 3), (5, 3),
(6, 2), (7, 2), (8, 1), (9, 3), (10, 1),
(11, 2), (12, 3), (13, 2), (14, 1), (15, 1);

INSERT INTO user (name, email, password, profile) VALUES
('Emily Rivera', 'emily.rivera@example.com', 'password', 'Passionate about wildlife photography.'),
('Carlos Gomez', 'carlos.gomez@example.com', 'password', 'Mountain biking enthusiast.'),
('Aisha Khan', 'aisha.khan@example.com', 'password', 'Lover of long hikes and camping.'),
('Marco Rossi', 'marco.rossi@example.com', 'password', 'Enjoys exploring historical trails.'),
('Sofia Chang', 'sofia.chang@example.com', 'password', 'Always ready for the next adventure.'),
('Mohammed Al-Farsi', 'mohammed.alfarsi@example.com', 'password', 'Dedicated to finding the most challenging climbs.'),
('Lucas Martin', 'lucas.martin@example.com', 'password', 'A fan of serene walks and sunsets.'),
('Olivia Smith', 'olivia.smith@example.com', 'password', 'Seeker of remote and untouched paths.');

INSERT INTO rating (user_id, trail_id, score) VALUES
(1, 1, 5), (2, 2, 4), (3, 3, 5), (4, 4, 4),
(5, 5, 5), (6, 6, 3), (7, 7, 5), (8, 8, 4),
(1, 9, 5), (2, 10, 4), (3, 11, 5), (4, 12, 4),
(5, 13, 5), (6, 14, 4), (7, 15, 5);

INSERT INTO review (user_id, trail_id, title, content, date_posted) VALUES
(1, 1, 'Incredible Views!', 'Absolutely loved this trail, the views are breathtaking.', '2022-07-01'),
(2, 2, 'Challenging but rewarding', 'A tough hike but the views are worth it.', '2022-08-15'),
(3, 3, 'Nature at its best', 'The waterfalls and lakes are stunning. A must-visit.', '2022-09-10'),
(4, 4, 'Bucket List Adventure', 'An unforgettable journey to the base of Everest.', '2022-10-05'),
(5, 5, 'Top of Africa', 'Reaching the summit of Kilimanjaro is an indescribable feeling.', '2022-11-20'),
(6, 6, 'Breathtaking Scenery', 'The Fitz Roy Trek offers some of the best views in Patagonia.', '2022-12-15'),
(7, 7, 'Historic and Beautiful', 'Walking the Inca Trail to Machu Picchu is like stepping back in time.', '2023-01-09'),
(8, 8, 'A Walk Through History', 'The Great Wall is an incredible, once-in-a-lifetime experience.', '2023-02-03'),
(1, 9, 'Wild and Wonderful', 'The Teton Crest Trail is wild, beautiful, and challenging.', '2023-03-01'),
(2, 10, 'Italian Riviera Gem', 'The Sentiero Azzurro offers stunning views of the Italian Riviera.', '2023-04-18');



