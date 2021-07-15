# Introduction to Software Systems (CS6.201)
## Summer 2021, IIIT Hyderabad
## 15 July, Thursday (Lecture 15) – Databases

Taught by Abhinav Gupta

## SQLite
SQLite is a library which allows us to create and use databases in Python.  

First, a connection has to be made with the database and a cursor has to be created:
```py
connection = sqlite3.connect('data.db')
cursor = connection.cursor()
```
Then we can execute commands using the cursor:
```py
create_table = "CREATE TABLE users (id int, username text, password text)"
cursor.execute(create_table)

user = (1, 'Abhinav', 'Test1234')
insert_query = "INSERT INTO users VALUES (?,?,?)"
cursor.execute(insert_query,user)
```
In order to make sure the data is not lost when the runtime is over, we need to commit the changes and close the connection:
```py
connection.commit()
connection.close()
```

We can execute many commands simultaneously:
```py
user = [(2, 'Rolf', 'asd'), (3, 'Anne', 'xyz')]
cursor.executemany(insert_query, user)
```

The database can be accessed as follows:
```py
select_query = "SELECT * FROM users"
for row in cursor.execute(select_query):
    print(row)
```

## MySQL
The `mysql-connector-python` library interfaces the MySQL server with Python programs.  

After installing the MySQL server, one can open MySQL Workbench to view its GUI.  

A connection has to be established with the server (which runs on the port 3306), and then the database can be opened. This is established by the following code:
```py
connection = mysql.connector.connect(host='localhost', \
user='root', passwd='thing', database='Demographics')
```
From here, the code works the same way as it does with the SQLite library, except the `execute` statement; for instance:
```py
select_query = "SELECT * FROM users"
cursor.execute(select_query)
for row in cursor:
    print(row)
```
