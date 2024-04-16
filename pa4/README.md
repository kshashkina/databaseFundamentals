## Task 4: Stored Procedures and Python Script for Database Interaction

This task involves the creation and execution of stored procedures in MySQL to perform various database operations. Additionally, it includes a Python script demonstrating interaction with a MySQL database, showcasing CRUD (Create, Read, Update, Delete) operations.

### Stored Procedures:

Stored procedures are precompiled SQL code blocks stored in the database server and executed when called. They enhance database security, modularity, and performance. Here are the stored procedures created in this task:

1. **find_user_by_email:**
   - Finds a user's name based on their email address.

2. **count_users:**
   - Counts the total number of users in the database.

3. **update_user_profile:**
   - Updates the profile of a specified user.

4. **add_location:**
   - Adds a new location to the database, handling transactional integrity.

### Python Script for Database Interaction:

The Python script interacts with the MySQL database, demonstrating basic CRUD operations. It includes the following functionalities:

- **Create Connection:** Establishes a connection to the MySQL database.
- **Insert User:** Inserts a new user into the database.
- **Select Users:** Retrieves and displays all users from the database.
- **Update User Profile:** Updates the profile of a specific user.
- **Delete User:** Deletes a user from the database.
- **Transaction Handling:** Demonstrates transaction management using try-except blocks.

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

### Execution Examples:

- **Executing Stored Procedures:**
  - Calls the stored procedures to find a user by email, count total users, update a user's profile, and add a new location.

- **Executing Python Script:**
  - Inserts a new user, displays all users, updates a user's profile, and deletes a user using the Python script.

By following these steps, you'll be able to understand and execute the provided stored procedures and Python script for database interaction.

### Author
Kateryna Shahkina

### [< Back to main README](https://github.com/kshashkina/databaseFundamentals/blob/main/README.md) 
