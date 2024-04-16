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