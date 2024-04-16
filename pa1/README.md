# Task 1: Database Schema and Data Population

This task involves creating tables for location, difficulty, trail, trail_user, rating, and review, and populating them with sample data.

### SQL Queries:

- **Create the location table:** Defines a table to store information about trail locations.
- **Create the difficulty table:** Defines a table to store information about trail difficulty levels.
- **Create the trail table:** Defines a table to store information about trails, including their name, length, elevation, and location.
- **Create the trail_user table:** Defines a table to store information about trail users, including their name, email, and profile type.
- **Create the rating table:** Defines a table to store ratings given by users for trails.
- **Create the review table:** Defines a table to store reviews written by users for trails.

### Data Population:

- **Insert data into the location table:** Inserts sample location data, including names, countries, regions, and coordinates.
- **Insert data into the difficulty table:** Inserts sample difficulty data, including names and descriptions.
- **Insert data into the trail table:** Inserts sample trail data, including names, lengths, elevations, descriptions, image URLs, location IDs, and difficulty IDs.
- **Insert data into the trail_user table:** Inserts sample user data, including names, emails, passwords, and profile types.
- **Insert data into the rating table:** Inserts sample rating data, including user IDs, trail IDs, and scores.
- **Insert data into the review table:** Inserts sample review data, including user IDs, trail IDs, titles, contents, and dates posted.

### Additional Queries:

- **Selects the name and country of locations where the X coordinate is greater than 0 (North Hemisphere):** Retrieves location names and countries for locations with positive X coordinates.
- **Selects user ID, user name, and count of reviews for users who have more than one review:** Retrieves user IDs, names, and review counts for users with more than one review, ordered by review count.
- **Selects the name and elevation of the top 3 trails by elevation:** Retrieves the names and elevations of the top three trails based on elevation.
- **Selects the name, difficulty, and region of trails with a length greater than 10,000 meters and not located in the United States:** Retrieves trail names, difficulty levels, and regions for trails with lengths greater than 10,000 meters and located outside the United States.

### How to Run:

To set up and run the database schema and populate it with sample data:

1. **Ensure you have a MySQL server installed and running on your machine.**
2. **Execute the SQL queries provided in a MySQL database management tool like MySQL Workbench or phpMyAdmin.**
3. **Run each SQL query sequentially in the order provided above.**
4. **Ensure that the database user running the queries has appropriate privileges to create tables, insert data, and execute queries.**

Following these steps will create the necessary database schema and populate it with sample data for further analysis and testing.

### Author
Kateryna Shahkina

### [< Back to main README](https://github.com/kshashkina/databaseFundamentals/blob/main/README.md) 
