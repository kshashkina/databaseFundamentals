SELECT user.name, rating.score, trail.name, difficulty.name AS difficulty_level
FROM rating
JOIN user ON rating.user_id = user.id
JOIN trail ON rating.trail_id = trail.id
JOIN trail_difficulty ON trail.id = trail_difficulty.trail_id
JOIN difficulty ON trail_difficulty.difficulty_id = difficulty.id
WHERE difficulty.name = 'Hard';

SELECT difficulty.name, COUNT(trail.id) AS trail_count
FROM difficulty
LEFT JOIN trail_difficulty ON difficulty.id = trail_difficulty.difficulty_id
LEFT JOIN trail ON trail_difficulty.trail_id = trail.id
GROUP BY difficulty.id;

SELECT trail.name, AVG(rating.score) AS average_rating, GROUP_CONCAT(difficulty.name SEPARATOR ', ') AS difficulty_levels
FROM trail
LEFT JOIN rating ON trail.id = rating.trail_id
LEFT JOIN trail_difficulty ON trail.id = trail_difficulty.trail_id
LEFT JOIN difficulty ON trail_difficulty.difficulty_id = difficulty.id
GROUP BY trail.id;

CREATE TABLE location_clone AS SELECT * FROM location;
CREATE INDEX idx_country ON location_clone (country);

SELECT COUNT(*) AS argentina_count
FROM location
WHERE country = 'Argentina';

SELECT COUNT(*) AS argentina_count
FROM location_clone
WHERE country = 'Argentina';