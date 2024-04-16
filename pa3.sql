-- SELECTS
-- Вибирає всі дані про траси, де ідентифікатор розташування дорівнює ідентифікатору країни "USA".
SELECT id, name, length, elevation, description, image_url, location_id
FROM trail
WHERE location_id = (SELECT id FROM location WHERE country = 'Argentina');

-- Вибирає всі дані про траси, де ідентифікатор розташування є в ідентифікаторах країни "USA".
SELECT id, name, length, elevation, description, image_url, location_id
FROM trail
WHERE location_id IN (SELECT id FROM location WHERE country = 'USA');

-- Вибирає всі дані про траси, де ідентифікатор розташування не є в ідентифікаторах країни "USA".
SELECT id, name, length, elevation, description, image_url, location_id
FROM trail
WHERE location_id NOT IN (SELECT id FROM location WHERE country = 'USA');


-- Вибирає всі дані про траси, які мають оцінку 5 або більше.
SELECT t.id, t.name, t.length, t.elevation, t.description, t.image_url, t.location_id
FROM trail t
WHERE EXISTS (
    SELECT 1
    FROM rating r
    WHERE r.trail_id = t.id
    AND r.score >= 5
);

-- Вибирає всі дані про траси, які не мають оцінки більше 5.
SELECT t.id, t.name, t.length, t.elevation, t.description, t.image_url, t.location_id
FROM trail t
WHERE NOT EXISTS (
    SELECT 1
    FROM rating r
    WHERE r.trail_id = t.id
    AND r.score >= 5
);

-- Вибирає всі траси, де довжина дорівнює довжині траси з ідентифікатором 1.
SELECT id, name, length, elevation, description, image_url, location_id
FROM trail
WHERE length = (
    SELECT length
    FROM trail
    WHERE id = 1
);

-- Вибирає всі траси, де довжина є в списку довжин трас у США.
SELECT t.id, t.name, t.length, t.elevation, t.description, t.image_url, t.location_id
FROM trail t
WHERE t.length IN (
    SELECT length
    FROM trail
    WHERE location_id IN (SELECT id FROM location WHERE country = 'USA')
);

-- Вибирає всі траси, які не мають такої ж довжини, як жодна з трас у США.
SELECT t.id, t.name, t.length, t.elevation, t.description, t.image_url, t.location_id
FROM trail t
WHERE t.length NOT IN (
    SELECT length
    FROM trail
    WHERE location_id IN (SELECT id FROM location WHERE country = 'USA')
);

-- Вибирає всі траси, які мають хоча б одну рецензію.
SELECT t.id, t.name, t.length, t.elevation, t.description, t.image_url, t.location_id
FROM trail t
WHERE EXISTS (
    SELECT 1
    FROM review
    WHERE trail_id = t.id
);

-- Вибирає всі траси, які не мають рецензій.
SELECT t.id, t.name, t.length, t.elevation, t.description, t.image_url, t.location_id
FROM trail t
WHERE NOT EXISTS (
    SELECT 1
    FROM review
    WHERE trail_id = t.id
);

-- UPDATES
-- Оновлює довжину трас, де розташування дорівнює країні "Argentina", збільшуючи довжину на 10%.
UPDATE trail
SET length = length * 1.1
WHERE location_id = (SELECT id FROM location WHERE country = 'Argentina');

-- Оновлює довжину трас, де розташування є в ідентифікаторах країни "USA", збільшуючи довжину на 10%.
UPDATE trail
SET length = length * 1.1
WHERE location_id IN (SELECT id FROM location WHERE country = 'USA');

-- Оновлює довжину трас, де розташування не є в ідентифікаторах країни "USA", збільшуючи довжину на 10%.
UPDATE trail
SET length = length * 1.1
WHERE location_id NOT IN (SELECT id FROM location WHERE country = 'USA');

-- Оновлює висоту трас, які мають оцінку 5 або більше, збільшуючи висоту на 20%.
UPDATE trail t
SET elevation = elevation * 1.2
WHERE EXISTS (
    SELECT 1
    FROM rating r
    WHERE r.trail_id = t.id
    AND r.score >= 5
);

-- Оновлює висоту трас, які не мають оцінки більше 5, збільшуючи висоту на 20%.
UPDATE trail t
SET elevation = elevation * 1.2
WHERE NOT EXISTS (
    SELECT 1
    FROM rating r
    WHERE r.trail_id = t.id
    AND r.score >= 5
);

-- Оновлює довжину траси з ідентифікатором 1, щоб вона дорівнювала довжині траси з ідентифікатором 2.
UPDATE trail t1
INNER JOIN trail t2 ON t1.id = 1 AND t2.id = 2
SET t1.length = t2.length;

-- Збільшуємо на 1 оцінку для маршрутів, розташованих в США.
UPDATE rating
SET score = score + 1
WHERE trail_id IN (
    SELECT t.id
    FROM trail t
    INNER JOIN location l ON t.location_id = l.id
    WHERE l.country = 'USA'
);

-- Зменшуємо на 1 оцінку для маршрутів, які не розташовані в США.
UPDATE rating
SET score = score - 1
WHERE trail_id NOT IN (
    SELECT t.id
    FROM trail t
    JOIN location l ON t.location_id = l.id
    WHERE l.country = 'USA'
);

-- Збільшуємо на 1 оцінку для маршрутів з відгуками, що мають заголовок 'Incredible Views!'.
UPDATE rating
SET score = score + 1
WHERE EXISTS (
    SELECT 1
    FROM review r
    WHERE r.trail_id = rating.trail_id AND r.title = 'Incredible Views!'
);


-- Зменшуємо на 1 оцінку для маршрутів без відгуків з заголовком 'Incredible Views!'.
UPDATE rating
SET score = score - 1
WHERE NOT EXISTS (
    SELECT 1
    FROM review r
    WHERE r.trail_id = rating.trail_id AND r.title = 'Incredible Views!'
);


-- DELETES
-- Видаляємо всі оцінки від користувача з іменем 'Carlos Gomez'.
DELETE FROM rating
WHERE user_id = (SELECT id FROM user WHERE name = 'Carlos Gomez');

-- Видаляємо всі оцінки від користувачів 'Emily Rivera' та 'Aisha Khan'.
DELETE FROM rating
WHERE user_id IN (SELECT id FROM user WHERE name IN ('Emily Rivera', 'Aisha Khan'));

-- Видаляємо всі маршрути, що не знаходяться в США.
DELETE FROM trail
WHERE location_id NOT IN (SELECT id FROM location WHERE country = 'USA');

-- Видаляє дані про траси, які мають оцінку 5 або більше.
DELETE FROM trail
WHERE EXISTS (
    SELECT 1
    FROM rating
    WHERE rating.trail_id = trail.id
    AND rating.score >= 5
);

-- Видаляє дані про траси, які не мають оцінки більше 5.
DELETE FROM trail t
WHERE NOT EXISTS (
    SELECT 1
    FROM rating
    WHERE rating.trail_id = trail.id
    AND rating.score >= 5
);

-- Видаляє всі траси, де довжина дорівнює середній довжині траси у відповідному розташуванні.
DELETE FROM trail
WHERE length = (
    SELECT AVG(t1.length)
    FROM trail t1
    JOIN location l ON t1.location_id = l.id
    WHERE l.id = trail.location_id
);

-- Видаляємо оцінки для троп, що не отримали жодної оцінки.
DELETE FROM rating
WHERE trail_id IN (
    SELECT t.id
    FROM trail t
    WHERE NOT EXISTS (
        SELECT 1
        FROM rating r
        WHERE r.trail_id = t.id
    )
);

-- Видаляємо оцінки троп, розташованих поза США.
DELETE FROM rating
WHERE trail_id NOT IN (
    SELECT t.id
    FROM trail t
    JOIN location l ON t.location_id = l.id
    WHERE l.country = 'USA'
);

-- Видаляємо тропи, для яких є відгуки.
DELETE FROM trail
WHERE EXISTS (
    SELECT 1
    FROM review r
    WHERE r.trail_id = trail.id
);

-- Видаляємо користувачів, що не залишили жодної оцінки.
DELETE FROM user
WHERE NOT EXISTS (
    SELECT 1
    FROM rating r
    WHERE r.user_id = user.id
);

-- UNION / UNION ALL / INTERSECT / EXCEPT
-- Вибираємо унікальні країни з таблиці локацій
SELECT country AS value FROM location
UNION
-- Додаємо імена користувачів до вибірки, отримуючи унікальні значення
SELECT name FROM user;


-- Вибираємо назви стежок
SELECT name FROM trail
UNION ALL
-- Додаємо назви рівнів складності, зберігаючи дублікати
SELECT name FROM difficulty;

-- Вибираємо стежки з високою складністю
SELECT trail.name
FROM trail
JOIN difficulty ON trail.id = difficulty.id
WHERE difficulty.name IN ('Hard', 'Expert')
INTERSECT
-- Вибираємо стежки з високими оцінками користувачів
SELECT trail.name
FROM trail
JOIN rating ON trail.id = rating.trail_id
WHERE rating.score = 5;

-- Вибираємо всі назви стежок
SELECT name FROM trail
EXCEPT
-- Вибираємо ті, на які є відгуки
SELECT trail.name FROM trail JOIN review ON trail.id = review.trail_id;