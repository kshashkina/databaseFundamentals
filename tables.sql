-- Create the location table
CREATE TABLE location (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    country VARCHAR(100) NOT NULL,
    region VARCHAR(100) NOT NULL,
    coordinates POINT NOT NULL
);

-- Create the difficulty table
CREATE TABLE difficulty (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    description TEXT NOT NULL
);

-- Create the trail table
CREATE TABLE trail (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    length INT NOT NULL,
    elevation INT NOT NULL,
    description TEXT NOT NULL,
    image_url VARCHAR(255) NOT NULL,
    location_id INT,
    FOREIGN KEY (location_id) REFERENCES location(id) ON DELETE CASCADE
);

-- Create the Trail_Difficulty junction table for the many-to-many relationship
CREATE TABLE trail_difficulty (
    trail_id INT,
    difficulty_id INT,
    PRIMARY KEY (trail_id, difficulty_id),
    FOREIGN KEY (trail_id) REFERENCES trail(id) ON DELETE CASCADE,
    FOREIGN KEY (difficulty_id) REFERENCES difficulty(id) ON DELETE CASCADE
);

-- Create the User table
CREATE TABLE user (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    profile VARCHAR(255) NOT NULL
);

-- Create the rating table
CREATE TABLE rating (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    trail_id INT,
    difficulty_id INT,
    score INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE CASCADE,
    FOREIGN KEY (trail_id) REFERENCES trail(id) ON DELETE CASCADE,
    FOREIGN KEY (difficulty_id) REFERENCES difficulty(id) ON DELETE CASCADE
);

-- Create the review table
CREATE TABLE review (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    trail_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    date_posted DATE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE CASCADE,
    FOREIGN KEY (trail_id) REFERENCES trail(id) ON DELETE CASCADE
);