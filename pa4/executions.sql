-- Call the find_user_by_email procedure with the email address as a parameter
CALL find_user_by_email('emily.rivera@example.com');

-- Expected Output: The procedure will retrieve the name of the user with the provided email address.

-- Call the count_users procedure to count the total number of users
CALL count_users(@total_users);
-- Display the total number of users using the variable @total_users
SELECT @total_users AS TotalUsers;

-- Expected Output: The procedure will count the total number of users in the user table and store the result in the variable @total_users.
-- The SELECT statement will display the value of @total_users.

-- Set up variables to pass as parameters
SET @user_id = 1;  -- Assuming user ID 1 needs to update their profile
SET @new_profile = 'New profile information goes here';
-- Call the update_user_profile stored procedure to update the user's profile
CALL update_user_profile(@user_id, @new_profile);
-- Display the updated profile of the user with ID 1
SELECT profile FROM user WHERE id = @user_id;

-- Expected Output: The procedure will update the profile of the user with ID 1 to the new profile information.
-- The SELECT statement will display the updated profile of the user with ID 1.

-- Call the add_location procedure with values for parameters to add a new location
CALL add_location('New Location Name', 'New Country', 'New Region', POINT(50.0, 30.0));
-- Select the newly added location from the location table
SELECT * FROM location WHERE name = 'New Location Name';

-- Expected Output: The procedure will add a new location to the location table with the provided details.
-- The SELECT statement will retrieve and display the information of the newly added location.
