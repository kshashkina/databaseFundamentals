## Assignment 5: Creating Views for Trails

This assignment involves creating views in a database to select trails from specific regions, namely Europe and North America. Views are virtual tables derived from the result of a SQL query and are stored in the database. Here are the views created:

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

### Author
Kateryna Shahkina

### [< Back to main README](https://github.com/kshashkina/databaseFundamentals/blob/main/README.md) 
