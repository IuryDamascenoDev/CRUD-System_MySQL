# CRUD System made with Python and MySQL

## App for studying SQL and Python integration with MySQL as well as Algorithms.<br><br> Tools used: Python, MySQL, mysql-connector-python, Docker, VirtualEnv.<br><br> OS: Linux Ubuntu

### Running this repository in your machine:  

##### After cloning the repository you wanna initiate the MySQL container -> docker compose up -d

##### Restoring the Database:
docker cp ./course_database.sql [mysql_container_id]:///

go in MySQL container -> docker exec -it [mysql_container_id] bash

inside MySQL container verify if copy was successful -> ls /

create database to restore to -> mysqladmin -u [UserName] -p[Password] create [db_name]<br>
then restore -> mysql -u [Username] -p[Password] [db_name] < course_database.sql

##### To use mysql-connector you have to -> pip3 install -r requirements.txt

##### Running Python CRUD App: Inside repo's directory -> python3 ./python/main.py

### Manual:
##### First options menu:
1.Operations -> CRUD in database<br>
2.Logout -> Ends app<br>

##### Second options menu:
1.Insert new student -> Receive full student name and create new id and register it in the database.<br>
2.Remove student(needs id) -> Receive student's id and remove the student registry.<br>
3.Read student's info(needs id) -> Receive student's id and return student's information (id, first name, last name, grade1 and grade2).<br>
4.Update or insert grade -> Receive student's id, grade user wants to update and the update value, then update the database.<br>
5.Get student's id -> Receive student's first name and retrieves (id, first name and last name) of all students with that first name.<br>
6.Logout Logout -> Ends app<br>
