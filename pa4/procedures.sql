DELIMITER $$
-- Procedure to find a user by email and retrieve their name
CREATE PROCEDURE find_user_by_email (IN user_email VARCHAR(255))
BEGIN
    -- Select the user's name based on the provided email
    SELECT name FROM user WHERE email = user_email;
END $$


-- Procedure to count the total number of users in the database
CREATE PROCEDURE count_users (OUT total_users INT)
BEGIN
    -- Count the number of users in the user table
    SELECT COUNT(*) INTO total_users FROM user;
END $$


-- The procedure updates the profile of the specified user
CREATE PROCEDURE update_user_profile (INOUT user_id INT, IN new_profile VARCHAR(255))
BEGIN
    -- Update the profile of the user
    UPDATE user SET profile = new_profile WHERE id = user_id;
    -- Set the output parameter to the updated user ID
    SET user_id = user_id;
END $$

-- Procedure to add a new location to the database
CREATE PROCEDURE add_location (
    IN loc_name VARCHAR(255),
    IN loc_country VARCHAR(100),
    IN loc_region VARCHAR(100),
    IN loc_coordinates POINT
)
BEGIN
    -- Variable to track whether to rollback transaction
    DECLARE rollback_flag BOOLEAN DEFAULT FALSE;

    -- Start a new transaction
    START TRANSACTION;

    -- Insert the new location into the location table
    INSERT INTO location (name, country, region, coordinates)
    VALUES (loc_name, loc_country, loc_region, loc_coordinates);

    -- Check for errors in the insertion
    IF (SELECT ROW_COUNT()) = 0 THEN
        SET rollback_flag = TRUE;
    END IF;

    -- Condition for committing or rolling back the transaction
    IF rollback_flag THEN
        -- Rollback the transaction if an error occurred
        ROLLBACK;
    ELSE
        -- Commit the transaction if successful
        COMMIT;
    END IF;
END $$

DELIMITER ;


