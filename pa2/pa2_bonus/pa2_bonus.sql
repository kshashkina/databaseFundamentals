CREATE TABLE location_clone AS SELECT * FROM location;
CREATE INDEX idx_country ON location_clone (country);

SELECT COUNT(*) AS argentina_count
FROM location
WHERE country = 'Argentina';

SELECT COUNT(*) AS argentina_count
FROM location_clone
WHERE country = 'Argentina';