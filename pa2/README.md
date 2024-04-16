# Task 2: Enhanced Database Schema, Data Insertion, and Advanced Queries

In this task, we've updated the database schema, inserted new data, and added more advanced queries, focusing particularly on many-to-many relationships.

### Schema Update:

- **Location Table:** Stores information about trail locations, including their name, country, region, and coordinates.
- **Difficulty Table:** Stores information about trail difficulty levels, including their name and description.
- **Trail Difficulty Table:** Junction table for the many-to-many relationship between trails and difficulty levels.
- **Trail Table:** Stores information about trails, including their name, length, elevation, description, image URL, and location ID.
- **User Table:** Stores information about users, including their name, email, password, and profile.
- **Rating Table:** Stores ratings given by users for trails, including user ID, trail ID, difficulty ID, and score.
- **Review Table:** Stores reviews written by users for trails, including user ID, trail ID, title, content, and date posted.

### Data Insertion:

- Inserts data into the `location`, `difficulty`, `trail_difficulty`, `trail`, and `user` tables.

### Additional Queries:

1. **Users Rating Hard Trails:** Retrieves the names of users, scores given, and trail names for users who rated trails with a difficulty level of "Hard".
2. **Trail Count by Difficulty:** Retrieves the count of trails for each difficulty level.
3. **Average Rating per Trail:** Retrieves the name of the trail, its average rating, and the difficulty levels associated with each trail.
  
### Bonus Task: Understanding Indexing

In this bonus task, we create a clone of the `location` table named `location_clone` and add an index on the `country` column. The purpose of this task is to demonstrate the difference between indexed and non-indexed tables and their impact on query performance.

**Reason for the Task:**
Adding an index on a column can significantly improve query performance, especially when filtering or searching based on that column. By creating a clone of the `location` table with an index on the `country` column, we can compare the performance of queries involving this column between the original and cloned tables.

#### Steps:

1. **Duplicate Location Table:**
   - We create a clone of the `location` table named `location_clone` using the `CREATE TABLE ... AS SELECT` syntax.

2. **Index Creation:**
   - An index is added to the `country` column of the `location_clone` table to optimize search operations based on country names.

3. **Count Argentina Locations:**
   - We retrieve the count of locations in Argentina from both the original `location` table and the cloned `location_clone` table.

#### Importance:

Understanding the impact of indexing on query performance is crucial for optimizing database operations, especially in scenarios where large datasets are involved. By comparing the query execution times between the indexed and non-indexed tables, we gain insights into the efficiency gains achieved through indexing.

### How to Run:

1. **Ensure you have a MySQL server installed and running.**
2. **Execute the provided SQL queries in a MySQL database management tool (e.g., MySQL Workbench, phpMyAdmin).**
3. **Run each SQL query sequentially following the order provided above.**
4. **Review the results of each query to analyze the data as required.**

By following these steps, you'll have an updated database schema, populated with new data, and be able to perform advanced queries and bonus tasks for further analysis.

### Author
Kateryna Shahkina

### [< Back to main README](https://github.com/kshashkina/databaseFundamentals/blob/main/README.md) 
