print("hi")
import datetime
import mysql.connector


DB_CONFIG = {
    'host': 'localhost',
    'user': 'root',
    'password': 'rootpasss',
    'database': 'test_data_db', # Ensure this database already exists
    'raise_on_warnings': True
}

try:
    conn = mysql.connector.connect(**DB_CONFIG)
    cursor = conn.cursor()

    now = datetime.datetime.now()
    format_seconds = now.strftime('%Y-%m-%d %H:%M:%S')
    print(f"Seconds precision: {format_seconds}")

    for x in range(1, 300000):
        new_user_data = {
            'first_name': str(x),
            'last_name': str(x),
            'email': format_seconds + "_" + str(x) + '@example.com',
            'is_active': True,
        }

        # 2. Define the INSERT query using %(key_name)s placeholders
        insert_query = """
        INSERT INTO test_data_db.customers (first_name, last_name, email, is_active)
        VALUES
            (%(first_name)s, %(last_name)s, %(email)s, %(is_active)s)
        """
        cursor.execute(insert_query, new_user_data)

        if x % 1000 == 0:
            print("finish:" + str(x))
            conn.commit()
            cursor.execute("select count(*) from test_data_db.customers")
            results = cursor.fetchall()
            print("count = " + str(results))
    print("done")
except Exception as e:
    print("error")
    print(e)
