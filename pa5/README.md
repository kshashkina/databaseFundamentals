## Assignment 5: Creating Views for Trails

This assignment involves creating views in a database to select trails from specific regions, namely Europe and North America. Views are virtual tables derived from the result of a SQL query and are stored in the database. Here are the views created:

### Table of Contents
- [Structure](#structure)
- [Requirements](#requirements)
- [View: europe_trails](#view-europe_trails)
- [View: north_america_trails](#view-north_america_trails)
- [Explanation of Views](#explanation-of-views)
- [Author](#author)
- [< Back to main README](https://github.com/kshashkina/databaseFundamentals/blob/main/README.md)


### Structure
- `views.sql`: Includes queries related to views.
- `README.md`: Information about task.

### Requirements

You should read main README for this project and have installed MySQL Server, preferred client for this server and created database. Use the following statement to work with database that you have created:
```mysql
USE your_schema_name;
```
After that you can proceed with the understanding the features.

If you have not proceeded with this, go to the main [README](https://github.com/kshashkina/databaseFundamentals/blob/main/README.md) for this project and go through set up steps.



### View: europe_trails

- **Purpose:** Select trails from the Europe region.
- **Columns Selected:**
    - `trail_name`: Trail name.
    - `image`: Image URL of the trail.
    - `coordinates`: Coordinates of the location.
    - `description`: Description of the trail.
    - `recent_reviews`: Concatenated recent reviews for each trail (only the first sentence), ordered by date posted.
- **Join:**
    - `trail t` joined with `location l` based on `location_id`.
- **Subquery:**
    - Selects reviews with row numbers for each trail, ordered by date posted.
- **Conditions:**
    - Filter trails from the Europe region.
    - Select only the two most recent reviews for each trail.
- **Grouping:**
    - Group by trail id to aggregate data for each trail.
- **Ordering:**
    - Order trails by the count of recent reviews in descending order.

### View: north_america_trails

- **Purpose:** Select trails from the North America region.
- **Columns Selected:**
    - `trail_name`: Trail name.
    - `image`: Image URL of the trail.
    - `coordinates`: Coordinates of the location.
    - `description`: Description of the trail.
    - `recent_reviews`: Concatenated recent reviews for each trail (only the first sentence), ordered by date posted.
- **Join:**
    - `trail t` joined with `location l` based on `location_id`.
- **Subquery:**
    - Selects reviews with row numbers for each trail, ordered by date posted.
- **Conditions:**
    - Filter trails from the North America region.
    - Select only the two most recent reviews for each trail.
- **Grouping:**
    - Group by trail id to aggregate data for each trail.
- **Ordering:**
    - Order trails by the count of recent reviews in descending order.

These views provide a convenient way to access information about trails from specific regions with recent reviews, allowing for easier analysis and presentation of trail data.

### Explanation of views

Views in a relational database are virtual tables that are derived from the result of a predefined query. They provide a way to present data in a customized or simplified manner without altering the underlying database schema. Views offer several benefits, including:

1. **Data Abstraction:** Views allow users to interact with a subset of data or to see the data in a particular format, hiding the complexity of underlying tables. 
2. **Security:** Views can restrict access to sensitive data by exposing only the necessary columns and rows to specific users or roles.
3. **Simplicity:** Views simplify complex queries by encapsulating them into a single virtual table, making it easier for users to retrieve desired information.
4. **Performance:** Views can improve performance by precomputing and storing query results, reducing the need to repeatedly execute expensive operations.

#### Querying Views
Once a view is created, it can be queried just like a regular table using a SELECT statement. Users can retrieve data from the view without needing to know the underlying structure or complexity of the query that generated it.

```mysql
SELECT * FROM view_name;
```

### Author
Kateryna Shahkina

### [< Back to main README](https://github.com/kshashkina/databaseFundamentals/blob/main/README.md) 
