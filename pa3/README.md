# Task 3: Subqueries, Set Operations, and Bonus Task

In this task, we explore subqueries, set operations, and provide a bonus task involving database interaction using Python.

#### Subqueries:

Subqueries, also known as nested queries or inner queries, allow us to use the result of one query as the input for another query within the WHERE clause or other parts of a SQL statement. Here's an explanation of each subquery used in this task:

### SELECT Queries

1. **Trails in Argentina:**
   - Selects all data about trails where the location identifier equals the identifier of the country "Argentina".

2. **Trails in the USA:**
   - Selects all data about trails where the location identifier is in the identifiers of the country "USA".

3. **Trails not in the USA:**
   - Selects all data about trails where the location identifier is not in the identifiers of the country "USA".

4. **Trails with Ratings 5 or Higher:**
   - Selects all data about trails that have a rating of 5 or higher.

5. **Trails without Ratings Above 5:**
   - Selects all data about trails that do not have a rating above 5.

6. **Trails with Same Length as Trail 1:**
   - Selects all trails where the length is equal to the length of the trail with identifier 1.

7. **Trails with Lengths in the USA:**
   - Selects all trails where the length is among the lengths of trails in the USA.

8. **Trails with Different Lengths than USA Trails:**
   - Selects all trails where the length is not among the lengths of trails in the USA.

9. **Trails with at Least One Review:**
   - Selects all trails that have at least one review.

10. **Trails with No Reviews:**
    - Selects all trails that do not have any reviews.

### UPDATE Queries

11. **Update Length of Trails in Argentina:**
    - Updates the length of trails in Argentina by increasing it by 10%.

12. **Update Length of Trails in the USA:**
    - Updates the length of trails in the USA by increasing it by 10%.

13. **Update Length of Trails Not in the USA:**
    - Updates the length of trails not in the USA by increasing it by 10%.

14. **Update Elevation of Trails with Ratings of 5 or Higher:**
    - Increases the elevation of trails with ratings of 5 or higher by 20%.

15. **Update Elevation of Trails with No Ratings Above 5:**
    - Increases the elevation of trails with no ratings above 5 by 20%.

16. **Update Length of Trail 1 to Match Trail 2:**
    - Updates the length of trail 1 to match the length of trail 2.

17. **Increase Score by 1 for Trails in the USA:**
    - Increases the score by 1 for trails in the USA.

18. **Decrease Score by 1 for Trails Not in the USA:**
    - Decreases the score by 1 for trails not in the USA.

19. **Increase Score by 1 for Trails with Specific Review Title:**
    - Increases the score by 1 for trails with at least one review having the title 'Incredible Views!'.

20. **Decrease Score by 1 for Trails without Specific Review Title:**
    - Decreases the score by 1 for trails without any review having the title 'Incredible Views!'.

### DELETE Queries

21. **Delete Ratings by User 'Carlos Gomez':**
    - Deletes all ratings given by the user with the name 'Carlos Gomez'.

22. **Delete Ratings by Users 'Emily Rivera' and 'Aisha Khan':**
    - Deletes all ratings given by the users 'Emily Rivera' and 'Aisha Khan'.

23. **Delete Trails Not in the USA:**
    - Deletes all trails that are not located in the USA.

24. **Delete Trails with Ratings of 5 or Higher:**
    - Deletes all trails that have a rating score of 5 or higher.

25. **Delete Trails with No Ratings Above 5:**
    - Deletes all trails that do not have a rating score higher than 5.

26. **Delete Trails with Length Equal to Average Length of Trails in Same Location:**
    - Deletes all trails where the length is equal to the average length of trails in the same location.

27. **Delete Ratings for Trails with No Reviews:**
    - Deletes ratings for trails that do not have any reviews.

28. **Delete Ratings for Trails Not in the USA:**
    - Deletes ratings for trails that are not located in the USA.

29. **Delete Trails with Reviews:**
    - Deletes all trails that have at least one review.

30. **Delete Users with No Ratings:**
    - Deletes users who have not left any ratings.

### Set Operations:

#### UNION / UNION ALL / INTERSECT / EXCEPT

These set operations allow us to combine, compare, or exclude the result sets of two or more SELECT statements.

- **UNION:** Combines the result sets of two SELECT statements into a single result set, removing duplicate rows.
- **UNION ALL:** Combines the result sets of two SELECT statements into a single result set, including duplicate rows.
- **INTERSECT:** Returns only the rows that appear in both result sets of two SELECT statements.
- **EXCEPT:** Returns only the distinct rows that appear in the first result set but not in the second result set of two SELECT statements.

#### Examples:

1. **Selecting Unique Countries from the Location Table:**
   - Combines the unique country names from the "location" table with the unique user names from the "user" table.

2. **Selecting Unique Trail Names and Difficulty Levels:**
   - Combines the unique trail names from the "trail" table with all difficulty levels from the "difficulty" table, preserving duplicate trail names.

3. **Selecting Trails with High Difficulty and High Ratings:**
   - Finds trails with difficulty levels 'Hard' or 'Expert' and also have a rating score of 5.

4. **Selecting Trails with Reviews:**
   - Retrieves all trail names that have reviews associated with them.

### Bonus Task: Python Script for Database Interaction

In the bonus task, we provided a Python script demonstrating how to interact with a MySQL database. The script includes functionalities to connect to the database, execute queries, and perform basic CRUD operations (Create, Read, Update, Delete).

### How to Run Python Script:

1. **Install MySQL Connector:**
   - Ensure that the `mysql-connector-python` package is installed. You can install it via pip:

     ```
     pip install mysql-connector-python
     ```

2. **Update Connection Details:**
   - Modify the connection details in the Python script (`create_connection` function) to match your MySQL server configuration.

3. **Run the Script:**
   - Execute the Python script. It will connect to the MySQL database, execute the provided queries, and demonstrate basic CRUD operations.

By following these steps, you'll be able to understand and execute the provided SQL queries and Python script for database interaction.

### Author
Kateryna Shahkina
### [< Back to main README](https://github.com/kshashkina/databaseFundamentals/blob/main/README.md) 
