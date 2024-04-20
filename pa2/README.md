# Enhanced Database Schema, Data Insertion, and Advanced Queries

In this task, we've updated the database schema, inserted new data, and added more advanced queries, focusing particularly on many-to-many relationships.
## Table of Contents
- [Structure](#structure)
- [Requirements](#requirements)
- [Schema Update](#schema-update)
- [Data Insertion](#data-insertion)
- [Additional Queries](#additional-queries)
- [Understanding many-to-many relationships](#understanding-many-to-many-relationships)
- [Bonus Task: Understanding Indexing](#bonus-task-understanding-indexing)
- [How to Run](#how-to-run)
- [Author](#author)
- [< Back to main README](https://github.com/kshashkina/databaseFundamentals/blob/main/README.md)


### Structure
- `schema_updates.sql`: Includes schema update queries.
- `queries.sql`: Includes queries related to CRUD operations.
- `README.md`: Information about task.
- `pa2_bonus/`: Directory containing bonus task concerning indexes.
  - `bonus.pdf`: Includes bonus task explanation.
  - `pa2_bonus.sql`: Bonus task queries.

### Requirements

You should read main README for this project and have installed MySQL Server, preferred client for this server and created database. Use the following statement to work with database that you have created:
```mysql
USE your_schema_name;
```
After that you can proceed with the understanding the features.

If you have not proceeded with this, go to the main [README](https://github.com/kshashkina/databaseFundamentals/blob/main/README.md) for this project and go through set up steps.


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

### Understanding many-to-many relationships
A many-to-many relationship in database design refers to a situation where multiple records in one table can be associated with multiple records in another table, and vice versa. This type of relationship cannot be directly represented in a relational database schema using just tables and foreign keys. Instead, it requires a junction table, also known as an association or linking table, to connect the two related tables.

Let's illustrate this with an example from the provided database schema:

Suppose we have two entities: trails and difficulty levels. A trail can have multiple difficulty levels (e.g., Easy, Moderate, Hard), and a difficulty level can be associated with multiple trails.

Here's how we can represent this many-to-many relationship:

1. **Trail Table:**
   - Contains information about trails, such as trail ID, name, length, elevation, etc.

2. **Difficulty Table:**
   - Contains information about difficulty levels, such as difficulty ID, name, description, etc.

3. **Trail Difficulty Table (Junction Table):**
   - This table serves as a bridge between the `Trail` and `Difficulty` tables.
   - It typically consists of two foreign key columns: one referencing the `Trail` table (`trail_id`) and the other referencing the `Difficulty` table (`difficulty_id`).
   - Additionally, it can include any additional attributes specific to the relationship between trails and difficulty levels (e.g., date added, notes, etc.).

Here's how the schema looks:

```plaintext
Trail Table:
+-----------+--------------+--------+----------+
| trail_id  | trail_name   | length | elevation|
+-----------+--------------+--------+----------+
| 1         | Trail A      | 5      | 1000     |
| 2         | Trail B      | 8      | 1500     |
| ...       | ...          | ...    | ...      |
+-----------+--------------+--------+----------+

Difficulty Table:
+--------------+---------------+
| difficulty_id| difficulty_name|
+--------------+---------------+
| 1            | Easy          |
| 2            | Moderate      |
| 3            | Hard          |
+--------------+---------------+

Trail Difficulty Table:
+-----------+---------------+
| trail_id  | difficulty_id |
+-----------+---------------+
| 1         | 1             |  (Trail A is Easy)
| 1         | 2             |  (Trail A is Moderate)
| 2         | 2             |  (Trail B is Moderate)
| 2         | 3             |  (Trail B is Hard)
+-----------+---------------+
```

In this setup:

- Trail A has both Easy and Moderate difficulty levels.
- Trail B has Moderate and Hard difficulty levels.

With this schema, we can efficiently query and manage the many-to-many relationship between trails and difficulty levels. Each trail can have multiple difficulty levels associated with it, and each difficulty level can be linked to multiple trails, making it a flexible and scalable solution for representing complex relationships in a relational database.
  
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
[Kateryna Shahkina](https://github.com/kshashkina)

### [< Back to main README](https://github.com/kshashkina/databaseFundamentals/blob/main/README.md) 
