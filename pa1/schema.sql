-- Create the location table
CREATE TABLE location (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    country VARCHAR(100),
    region VARCHAR(100),
    coordinates POINT
);

-- Create the difficulty table
CREATE TABLE difficulty (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    description TEXT
);

-- Create the trail table
CREATE TABLE trail (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    length INT NOT NULL,
    elevation INT NOT NULL,
    description TEXT,
    image_url VARCHAR(255),
    location_id INT,
    difficulty_id INT,
    FOREIGN KEY (location_id) REFERENCES location(id),
    FOREIGN KEY (difficulty_id) REFERENCES difficulty(id)
);

-- Create the trail_user table
CREATE TABLE trail_user (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE,
    user_password VARCHAR(255) NOT NULL,
    profile_type ENUM('noob', 'regular', 'pro') NOT NULL
);

-- Create the rating table
CREATE TABLE rating (
    id INT PRIMARY KEY AUTO_INCREMENT,
    trail_user_id INT,
    trail_id INT,
    score INT,
    FOREIGN KEY (trail_user_id) REFERENCES trail_user(id),
    FOREIGN KEY (trail_id) REFERENCES trail(id)
);

-- Create the review table
CREATE TABLE review (
    id INT PRIMARY KEY AUTO_INCREMENT,
    trail_user_id INT,
    trail_id INT NOT NULL,
    title VARCHAR(255),
    content TEXT,
    date_posted DATE,
    FOREIGN KEY (trail_user_id) REFERENCES trail_user(id),
    FOREIGN KEY (trail_id) REFERENCES trail(id)
);

-- Insert data into the location table
INSERT INTO location (name, country, region, coordinates)
VALUES
   ('Mountain Range Trail', 'United States', 'Rocky Mountains', POINT(40.7128, -74.0060)),
    ('Coastal Path', 'Australia', 'New South Wales', POINT(-33.8688, 151.2093)),
    ('Alpine Circuit', 'Switzerland', 'Swiss Alps', POINT(46.8182, 8.2275)),
    ('Redwood Forest Trail', 'United States', 'California', POINT(41.2132, -124.0046)),
    ('Snowy Peaks Trek', 'Canada', 'Alberta', POINT(51.1784, -115.5708)),
    ('Misty Valley Walk', 'New Zealand', 'South Island', POINT(-44.9778, 167.9988)),
    ('Sunny Hills Hike', 'Spain', 'Andalusia', POINT(36.7213, -4.4216)),
    ('Desert Oasis Trail', 'United Arab Emirates', 'Dubai', POINT(24.8607, 54.3470)),
    ('Tropical Paradise Trek', 'Brazil', 'Amazon Rainforest', POINT(-3.4653, -62.2159)),
    ('Northern Lights Expedition', 'Norway', 'Northern Norway', POINT(68.7219, 15.6256));

-- Insert data into the difficulty table
INSERT INTO difficulty (name, description)
VALUES
    ('Easy', 'Suitable for beginners with minimal elevation gain.'),
    ('Moderate', 'Intermediate difficulty with moderate elevation gain.'),
    ('Difficult', 'Challenging terrain and steep elevation gain.'),
    ('Very Easy', 'Flat terrain suitable for all skill levels.'),
    ('Strenuous', 'Challenging with steep ascents and descents.'),
    ('Extreme', 'Demanding trail with harsh conditions and high elevation.'),
    ('Beginner Friendly', 'Perfect for those new to hiking with low difficulty.'),
    ('Technical Climb', 'Requires specialized skills and equipment.'),
    ('Family-Friendly', 'Safe and enjoyable for all members of the family.'),
    ('Expert Only', 'Intense trail recommended for experienced hikers only.');


-- Insert data into the trail table
INSERT INTO trail (name, length, elevation, description, image_url, location_id, difficulty_id)
VALUES
    ('Hike to the Summit', 10000, 1200, 'A scenic trail to the mountain summit.', 'summit_image.jpg', 1, 2),
    ('Coastal Exploration', 15000, 200, 'Enjoy the beautiful views along the coast.', 'coastal_image.jpg', 2, 1),
    ('Alpine Adventure', 25000, 1800, 'Explore the breathtaking Swiss Alps.', 'alpine_image.jpg', 3, 3),
    ('Old Growth Grove Loop', 5000, 300, 'Explore the ancient redwood forest.', 'redwood_image.jpg', 4, 1),
    ('Snowy Peaks Summit', 18000, 1500, 'A challenging trek to reach snowy mountain peaks.', 'snowy_peaks_image.jpg', 5, 3),
    ('Misty Waterfall Trail', 8000, 400, 'Hike through a misty valley with stunning waterfalls.', 'misty_valley_image.jpg', 6, 2),
    ('Sunny Hills Stroll', 7000, 100, 'A leisurely walk through sunny hills and meadows.', 'sunny_hills_image.jpg', 7, 8),
    ('Desert Oasis Expedition', 12000, 600, 'Discover an oasis in the midst of the desert.', 'desert_oasis_image.jpg', 8, 6),
    ('Tropical Paradise Exploration', 14000, 300, 'Immerse yourself in the beauty of the Amazon Rainforest.', 'tropical_paradise_image.jpg', 9, 7),
    ('Northern Lights Night Hike', 20000, 800, 'Experience the magic of the Northern Lights in the Arctic.', 'northern_lights_image.jpg', 10, 9);

-- Insert data into the trail_user table
INSERT INTO trail_user (name, email, user_password, profile_type)
VALUES
    ('John Doe', 'john@example.com', 'hashed_password_here', 'regular'),
    ('Alice Smith', 'alice@example.com', 'hashed_password_here', 'pro'),
    ('Bob Johnson', 'bob@example.com', 'hashed_password_here', 'noob'),
    ('Emma Davis', 'emma@example.com', 'hashed_password_here', 'regular'),
    ('Chris Miller', 'chris@example.com', 'hashed_password_here', 'pro'),
    ('Olivia White', 'olivia@example.com', 'hashed_password_here', 'noob'),
    ('Ethan Brown', 'ethan@example.com', 'hashed_password_here', 'pro'),
    ('Sophia Wilson', 'sophia@example.com', 'hashed_password_here', 'noob'),
    ('Daniel Taylor', 'daniel@example.com', 'hashed_password_here', 'regular'),
    ('Ava Moore', 'ava@example.com', 'hashed_password_here', 'pro');

-- Insert data into the rating table
INSERT INTO rating (trail_user_id, trail_id, score)
VALUES
    (1, 1, 4),
    (1, 2, 5),
    (1, 3, 3),
    (2, 2, 5),
    (2, 4, 3),
    (3, 3, 3),
    (3, 5, 3),
    (4, 4, 4),
    (4, 6, 4),
    (5, 5, 5),
    (6, 6, 3),
    (7, 7, 4),
    (8, 8, 5),
    (9, 9, 3),
    (10, 10, 4);

-- Insert data into the review table
INSERT INTO review (trail_user_id, trail_id, title, content, date_posted)
VALUES
    (1, 1, 'Amazing Summit Hike!', 'I loved every moment of this trail. The summit views are breathtaking.', '2024-02-01'),
    (1, 2, 'Breathtaking Coastline', 'The coastal views were absolutely stunning. A must-see for any hiker.', '2024-02-20'),
    (1, 3, 'Epic Alpine Adventure', 'The alpine trail challenged me in ways I never imagined. Absolutely unforgettable!', '2024-02-25'),
    (2, 2, 'Scenic Coastal Path', 'The coastal trail is perfect for a relaxing and picturesque hike.', '2024-02-02'),
    (2, 4, 'Magical Redwood Forest', 'Walking among the towering redwoods felt like stepping into a fairytale.', '2024-03-01'),
    (3, 5, 'Exhilarating Summit Experience', 'Reaching the summit was an achievement Ill never forget. The views were worth every step.', '2024-03-05'),
    (3, 3, 'Challenging Alpine Adventure', 'The alpine trail was tough but incredibly rewarding.', '2024-02-03'),
    (4, 4, 'Enchanting Redwood Forest', 'The old growth grove is simply enchanting. A must-visit for nature lovers.', '2024-02-05'),
    (4, 6, 'Serenity in the Mist', 'The misty valley trail provided a sense of peace and tranquility unlike any other.', '2024-03-10'),
    (5, 5, 'Conquered Snowy Peaks', 'Summiting the snowy peaks was an exhilarating experience. Highly recommended!', '2024-02-06'),
    (6, 6, 'Misty Valley Serenity', 'The misty valley trail offers serenity amidst breathtaking landscapes.', '2024-02-07'),
    (7, 7, 'Sunny Hills Stroll', 'A lovely walk through sunny hills and meadows. Great for a family outing.', '2024-02-08'),
    (8, 8, 'Desert Oasis Discovery', 'The oasis in the desert was a hidden gem. Loved every bit of the expedition.', '2024-02-10'),
    (9, 9, 'Tropical Paradise Bliss', 'Immersing in the Amazon Rainforest was a dream come true. Paradise on Earth!', '2024-02-12'),
    (10, 10, 'Northern Lights Magic', 'Hiking under the Northern Lights was a surreal experience. Truly magical.', '2024-02-15');