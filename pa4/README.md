## Stored Procedures and Python Script for Database Interaction

This task involves the creation and execution of stored procedures in MySQL to perform various database operations. Additionally, it includes a Python script demonstrating interaction with a MySQL database, showcasing CRUD (Create, Read, Update, Delete) operations.

- [Structure](#structure)
- [Requirements](#requirements)
- [Stored Procedures](#stored-procedures)
- [Explanation of stored procedures and transactions](#explanation-of-stored-procedures-and-transactions)
- [Python Script for Database Interaction](#bonus-task-python-script-for-database-interaction)
- [How to Run Python Script](#how-to-run-python-script)
- [Execution Examples](#execution-examples)
- [Author](#author)
- [< Back to main README](https://github.com/kshashkina/databaseFundamentals/blob/main/README.md)

### Structure
- `procedures.sql`: Includes stored procedure queries.
- `executions.sql`: Includes queries to execute stored procedures.
- `README.md`: Information about task.
- `pa4_bonus/`: Directory containing a Python script for connecting to the database and performing CRUD operations, handling transactions with error handling.
  - `pa4_bonus.py`: Python script for bonus task.
  - `output.png`: Screenshots that show output of CRUD operations.

### Requirements

You should read main README for this project and have installed MySQL Server, preferred client for this server and created database. Use the following statement to work with database that you have created:
```mysql
USE your_schema_name;
```
After that you can proceed with the understanding the features.

If you have not proceeded with this, go to the main [README](https://github.com/kshashkina/databaseFundamentals/blob/main/README.md) for this project and go through set up steps.



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


### Explanation of stored procedures and transactions

Stored procedures are sets of SQL statements that are stored in the database and can be called by name to perform a specific task or set of tasks. They provide a way to encapsulate complex logic, reduce redundancy, and enhance security by allowing controlled access to database operations. Stored procedures can accept parameters, perform operations, and return result sets or scalar values.

Key features of stored procedures include:

1. **Parameterization:** Stored procedures can accept input parameters, making them dynamic and flexible.
2. **Modularity:** Procedures allow for modular code organization, promoting reusability and maintainability.
3. **Performance:** They can improve performance by reducing network traffic and optimizing query execution plans.
4. **Security:** Stored procedures can be granted execute permissions, allowing fine-grained control over database access.

### Transactions

Transactions are units of work performed within a database that must be executed as a whole or not at all. They ensure data integrity by allowing multiple operations to be grouped together and either committed (applied) or rolled back (undone) as a single, atomic operation. Transactions adhere to the ACID properties:

1. **Atomicity:** Transactions are atomic, meaning that either all operations within the transaction are successfully completed, or none of them are.
2. **Consistency:** Transactions maintain the consistency of the database, ensuring that it transitions from one valid state to another.
3. **Isolation:** Transactions are isolated from each other, preventing interference or contention between concurrent transactions.
4. **Durability:** Once a transaction is committed, its changes are permanently stored in the database and are not affected by system failures.

Key concepts related to transactions include:

1. **Begin Transaction:** Marks the start of a transaction.
2. **Commit:** Makes the changes within a transaction permanent.
3. **Rollback:** Undoes the changes within a transaction and restores the database to its state before the transaction began.
4. **Savepoint:** Allows partial rollback within a transaction, providing a point to which the transaction can be rolled back without affecting previous operations.

### Usage

Stored procedures and transactions are essential tools in database development and management. They are commonly used to:

- Implement complex business logic and data processing tasks.
- Ensure data integrity and consistency in multi-step operations.
- Optimize performance by reducing overhead and improving resource utilization.
- Enhance security by encapsulating sensitive operations and controlling access.

By leveraging stored procedures and transactions effectively, developers can build robust, efficient, and secure database systems that meet the requirements of modern applications.

### Bonus Task: Python Script for Database Interaction:

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
[Kateryna Shahkina](https://github.com/kshashkina)

### [< Back to main README](https://github.com/kshashkina/databaseFundamentals/blob/main/README.md) 
