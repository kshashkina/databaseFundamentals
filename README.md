# Precise Guide to Basic MySQL Operations

Welcome to the Precise Guide to Basic MySQL Operations! Here, we will explore fundamental MySQL database operations, including creating databases, tables, inserting data, performing queries, creating procedures, and generating views of tables. Let's dive in!

## Table of Contents

1. [Introduction](#introduction)
2. [Project structure](#structure)
3. [How to start?](#how-to-install-all-requirements)
4. [How to create database?](#how-to-create-database)
5. [Project deployment](#how-to-deploy-the-project)
6. [Contributing](#contributing)
7. [GitLab](#gitlab)
8. [Author](#info-about-author)

## Introduction
MySQL is a widely-used relational database management system known for its simplicity and flexibility. Understanding basic operations is crucial for effective database management.

## Structure

The project is structured into several directories, each containing specific SQL files for different purposes:

- `pa1/`: Initialization of a database schema, populating it with data and some queries.
- `pa2/`: Enhancement of the schema initialization process to support many-to-many connections, examples of queries to showcase the results
- `pa3/`: Creating SELECT, UPDATE and DELETE queries incorporating various clauses and subqueries, along with four SELECT queries utilizing UNION, UNION ALL, INTERSECT, and EXCEPT set operations.
- `pa4/`: Developing a stored procedure showcasing various parameter types (IN, OUT, INOUT) alongside a transactional mechanism incorporating conditional logic for committing or rolling back changes.
- `pa5/`: Crafting views to provide a structured and simplified presentation of data, enhancing accessibility and analysis.

Each directory includes a README.md file providing detailed information about the feature implemented and instructions for running them.

## How to install all requirements?
Before you embark on the Precise Guide to Basic MySQL Operations, make sure you've completed the following steps:

1. **Install MySQL Server:** Download and install MySQL server from the [official website](https://dev.mysql.com/downloads/mysql/), following the provided installation instructions for your operating system.
2. **Set Up SQL Client:** Choose and install a SQL client such as MySQL Workbench, DBeaver, or phpMyAdmin on your system. Download the SQL client from the respective official websites and install it according to the provided instructions. In this guide I have used [MySQL Workbench](https://dev.mysql.com/downloads/workbench/), so examples will be provided from this environment.
3. **Ensure Access Privileges:** Verify that you have the necessary access privileges to perform database operations on the MySQL server. If you're setting up MySQL locally, you may have administrative access by default. For remote servers, ensure you have the required credentials and permissions provided by the server administrator.

With MySQL server installed, a SQL client set up, access privileges ensured you're fully prepared to dive into the Precise Guide to Basic MySQL Operations!

## How to create database?

Here is the instruction of how to create database in SQL client, in this case I'll be telling you about MySQL Workbench.

---
To create a schema (also known as a database) in MySQL Workbench, you can use either the SQL editor or the graphical interface. Here's how to do it using both methods:

### Using SQL Editor:

1. Open MySQL Workbench and connect to your MySQL server.
2. In the SQL Editor tab, type the following SQL command to create a new schema:
```sql
CREATE SCHEMA your_schema_name;
```
Replace `your_schema_name` with the desired name for your schema.
3. Execute the SQL command by clicking on the lightning bolt icon or by pressing `Ctrl + Enter`.
4. MySQL Workbench will execute the command, and if successful, it will display a message confirming the creation of the schema.

### Using Graphical Interface:

1. Open MySQL Workbench and connect to your MySQL server.
2. In the Navigator panel on the left side of the window, you'll see a section titled "Navigator". Underneath it, you'll find the "Schemas" section.
3. Right-click on the "Schemas" section and select "Create Schema..." from the context menu.
4. In the "Create Schema" dialog box, enter the name of your schema in the "Name" field.
5. Optionally, you can specify the default collation and character set for the schema.
6. Click on the "Apply" button to create the schema.
7. MySQL Workbench will create the schema, and if successful, it will appear in the list of schemas under the "Schemas" section in the Navigator panel.

That's it! You've now created a schema in MySQL Workbench using either the SQL editor or the graphical interface.

## How to deploy the project?

To deploy the project, follow these steps:
1. **Clone the repository to your local machine:**
   ```
   git clone https://github.com/kshashkina/databaseFundamentals
   ```
2. **Navigate to the cloned repository directory:**
   ```
   cd databaseFundamentals
   ```
3. **Open your preferred SQL client (as we concluded previously, I'm using MySQL Workbench).**
4. **Execute the SQL files in each directory sequentially:**
   - Start with the `pa1/` directory and progress to `pa5/`.
   - Read `README.md` provided in each directory for better understanding how to run various tasks.
     - [Here](pa1/README.md) you can read more about setting up database, creating schema and basic queries.
     - [Here](pa2/README.md) you can discover more about many-to-many connections.
     - [Here](pa3/README.md) you can read more about subqueries for CRUD (Create, Read, Update, and Delete) operations.
     - [Here](pa4/README.md) you can read materials for stored procedures and transactions.
     - [Here](pa5/README.md) you can read more about views.
   - Use the appropriate commands in your SQL client to run the SQL files. For example, in MySQL Workbench, you can use the "Open SQL Script" option to open and execute each file.

Following these steps will deploy the project and set up the necessary database schema and data.

## Contributing
Contributions to the project are welcome! Here's how you can contribute:
1. **Fork the Repository:** Click on the "Fork" button at the top right corner of the repository's page to create your own copy of the repository on GitHub.
2. **Clone the Forked Repository:** Clone the forked repository to your local machine using the `git clone` command followed by the URL of your fork.
   ```
   git clone https://github.com/your-username/databaseFundamentals.git
   ```
3. **Create a Branch:** Create a new branch on your local machine to work on your contribution. It's recommended to create a branch specific to the feature or fix you're working on.
   ```
   git checkout -b your-branch-name
   ```
4. **Make Changes:** Make the necessary changes to the codebase in your local repository.
5. **Commit Changes:** Once you've made your changes, commit them to your branch with a descriptive commit message.
   ```
   git add .
   git commit -m "Your descriptive commit message here"
   ```
6. **Push Changes:** Push your changes to your forked repository on GitHub.

   ```
   git push origin your-branch-name
   ```
7. **Submit a Pull Request:** Go to the GitHub page of your forked repository and click on the "New pull request" button. Provide a descriptive title and description for your pull request, and submit it.
8. **Review and Collaborate:** Your pull request will be reviewed by the project maintainers. Collaborate with them to address any feedback or changes requested.
9. **Merge Pull Request:** Once your pull request is approved and all feedback has been addressed, it will be merged into the main repository.

Thank you for contributing to the project! Your efforts are appreciated.

## GitLab

This project is also available on [GitLab](https://gitlab.com/kshashkina/databaseFundamentals), providing you with the option to access it from there if it is more convenient for you.

## Info about author

- **Author:** Kateryna Shashkina
- **Contact:** [kshashkina@kse.org.ua](mailto:kshashkina@kse.org.ua)
- **GitHub:** [kshashkina](https://github.com/kshashkina)
- **LinkedIn:** [Kateryna Shashkina](https://www.linkedin.com/in/kateryna-shashkina-4332bb291/)

Feel free to reach out if you have any questions or feedback regarding this guide.

