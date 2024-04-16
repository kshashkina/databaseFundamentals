import mysql.connector

def create_connection(host, user, password, database, port):
    try:
        conn = mysql.connector.connect(
            host=host,
            user=user,
            password=password,
            database=database,
            port=port
        )
        print("Connection to MySQL database successful!")
        return conn
    except mysql.connector.Error as e:
        print(f"Error connecting to MySQL database: {e}")
        return None

def insert_user(conn, name, email, password, profile):
    try:
        cursor = conn.cursor()
        sql = "INSERT INTO user (name, email, password, profile) VALUES (%s, %s, %s, %s)"
        val = (name, email, password, profile)
        cursor.execute(sql, val)
        print("User inserted successfully")
    except mysql.connector.Error as e:
        print(f"Error inserting user: {e}")
        raise

def select_users(conn):
    try:
        cursor = conn.cursor()
        cursor.execute("SELECT * FROM user")
        rows = cursor.fetchall()
        for row in rows:
            print(row)
    except mysql.connector.Error as e:
        print(f"Error selecting users: {e}")
        raise

def update_user_profile(conn, user_id, new_profile):
    try:
        cursor = conn.cursor()
        sql = "UPDATE user SET profile = %s WHERE id = %s"
        val = (new_profile, user_id)
        cursor.execute(sql, val)
        print("User profile updated successfully")
    except mysql.connector.Error as e:
        print(f"Error updating user profile: {e}")
        raise

def delete_user(conn, user_id):
    try:
        cursor = conn.cursor()
        sql = "DELETE FROM user WHERE id = %s"
        val = (user_id,)
        cursor.execute(sql, val)
        print("User deleted successfully")
    except mysql.connector.Error as e:
        print(f"Error deleting user: {e}")
        raise

# Establish connection to the database
connection = create_connection("localhost", "root", "-Nt+ab&AkDL5idx", "trails", 3306)

# Start a transaction
try:
    connection.start_transaction()

    # Insert a new user
    insert_user(connection, "Claire Davis", "clare@example.com", "passclare", "Adventure is my passion!")

    # Display all users
    select_users(connection)

    # Update a user's profile
    update_user_profile(connection, 1, "New profile information")

    # Delete a user
    delete_user(connection, 2)

    # Commit the transaction
    connection.commit()

except mysql.connector.Error as e:
    print(f"Error executing transaction: {e}")
    connection.rollback()

finally:
    # Close the connection
    connection.close()
