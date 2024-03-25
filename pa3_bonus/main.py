import mysql.connector
from mysql.connector import Error


def create_connection(host_name, user_name, user_password, db_name, port):
    connection = None
    try:
        connection = mysql.connector.connect(
            host=host_name,
            user=user_name,
            passwd=user_password,
            database=db_name,
            port=port
        )
        print("Connection to MySQL DB successful")
    except Error as e:
        print(f"The error '{e}' occurred")
    return connection


def execute_query(connection, query):
    cursor = connection.cursor()
    try:
        cursor.execute(query)
        connection.commit()
        print("Query executed successfully")
    except Error as e:
        print(f"The error '{e}' occurred")


def execute_read_query(connection, query):
    cursor = connection.cursor()
    result = None
    try:
        cursor.execute(query)
        result = cursor.fetchall()
        return result
    except Error as e:
        print(f"The error '{e}' occurred")


connection = create_connection("localhost", "root", "-Nt+ab&AkDL5idx", "trails", 3306)

# CREATE
create_location_query = """
INSERT INTO location (name, country, region, coordinates) 
VALUES ('Example Location', 'Example Country', 'Example Region', ST_GeomFromText('POINT(0 0)'));
"""
execute_query(connection, create_location_query)

# READ
read_location_query = "SELECT id, name, country, region, ST_AsText(coordinates) AS coordinates FROM location;"
locations = execute_read_query(connection, read_location_query)
for location in locations:
    print(location)

# UPDATE
update_location_query = """
UPDATE location 
SET name = 'Updated Location' 
WHERE name = 'Example Location';
"""
execute_query(connection, update_location_query)

# DELETE
delete_location_query = "DELETE FROM location WHERE name = 'Updated Location'"
execute_query(connection, delete_location_query)

connection.close()
