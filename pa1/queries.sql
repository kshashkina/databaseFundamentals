-- Selects the name and country of locations where the X coordinate is greater than 0
SELECT name, country
FROM location
WHERE ST_X(coordinates) > 0;

-- Selects user ID, user name, and count of reviews for users who have more than one review, ordered by review count
SELECT trail_user.id AS user_id, trail_user.name AS user_name, COUNT(review.trail_user_id) AS review_count
FROM trail_user
JOIN review ON trail_user.id = review.trail_user_id
GROUP BY user_id, user_name
HAVING COUNT(review.trail_user_id) > 1
ORDER BY review_count DESC;

-- Selects the name and elevation of the top 3 trails by elevation
SELECT name, elevation
FROM trail
ORDER BY elevation DESC
LIMIT 3;

-- Selects the name, difficulty, and region of trails with a length greater than 10,000 meters and not located in the United States
SELECT trail.name AS trail_name, difficulty.name AS difficulty, location.region AS region
FROM trail
JOIN difficulty ON trail.difficulty_id = difficulty.id
JOIN location ON trail.location_id = location.id
WHERE trail.length > 10000
AND location.country != 'United States';
