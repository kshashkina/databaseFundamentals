-- Create a view to select trails from Europe region
CREATE VIEW europe_trails AS
SELECT
    t.name AS trail_name, -- Select the trail name
    t.image_url AS image, -- Select the image URL
    l.coordinates, -- Select the coordinates of the location
    t.description, -- Select the trail description
    GROUP_CONCAT(
        SUBSTRING_INDEX(r.content, '.', 1) -- Concatenate recent reviews for each trail, taking only the first sentence
        ORDER BY r.date_posted DESC -- Order reviews by date posted in descending order
        SEPARATOR ', ' -- Separate reviews by comma
    ) AS recent_reviews -- Alias for the concatenated recent reviews
FROM
    trail t -- Select from the trail table
JOIN
    location l ON t.location_id = l.id -- Join with the location table based on location_id
JOIN
    (
        -- Subquery to select reviews with row numbers for each trail, ordered by date posted
        SELECT
            trail_id,
            SUBSTRING_INDEX(content, '.', 1) AS content,
            date_posted,
            ROW_NUMBER() OVER (PARTITION BY trail_id ORDER BY date_posted DESC) AS row_num
        FROM
            review
    ) r ON t.id = r.trail_id -- Join with the review table based on trail_id
WHERE
    l.region = "Europe" AND r.row_num <= 2 -- Filter trails from Europe region and select only the two most recent reviews for each trail
GROUP BY
    t.id -- Group by trail id to aggregate data for each trail
ORDER BY
    COUNT(r.date_posted) DESC; -- Order trails by the count of recent reviews in descending order

-- Create a view to select trails from North America region
CREATE VIEW north_america_trails AS
SELECT
    t.name AS trail_name, -- Select the trail name
    t.image_url AS image, -- Select the image URL
    l.coordinates, -- Select the coordinates of the location
    t.description, -- Select the trail description
    GROUP_CONCAT(
        SUBSTRING_INDEX(r.content, '.', 1) -- Concatenate recent reviews for each trail, taking only the first sentence
        ORDER BY r.date_posted DESC -- Order reviews by date posted in descending order
        SEPARATOR ', ' -- Separate reviews by comma
    ) AS recent_reviews -- Alias for the concatenated recent reviews
FROM
    trail t -- Select from the trail table
JOIN
    location l ON t.location_id = l.id -- Join with the location table based on location_id
JOIN
    (
        -- Subquery to select reviews with row numbers for each trail, ordered by date posted
        SELECT
            trail_id,
            SUBSTRING_INDEX(content, '.', 1) AS content,
            date_posted,
            ROW_NUMBER() OVER (PARTITION BY trail_id ORDER BY date_posted DESC) AS row_num
        FROM
            review
    ) r ON t.id = r.trail_id -- Join with the review table based on trail_id
WHERE
    l.region = "North America" AND r.row_num <= 2 -- Filter trails from North America region and select only the two most recent reviews for each trail
GROUP BY
    t.id -- Group by trail id to aggregate data for each trail
ORDER BY
    COUNT(r.date_posted) DESC; -- Order trails by the count of recent reviews in descending order
