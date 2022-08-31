# CRUD System made with Python and MySQL

## App for studying SQL queries writing and Python integration with MySQL as well as Algorithms.   What I've used: Python, MySQL, mysql-connector-python, Docker, VirtualEnv.

### Running this repository in your machine:  

##### After cloning the repository you wanna initiate the MySQL container -> docker compose up -d

##### Restoring the Database:
docker cp ./course_database.sql [mysql_container_id]:///

go in MySQL container -> docker exec -it [mysql_container_id] bash

inside MySQL container verify if copy was successful -> ls /

create database to restore to -> mysqladmin -u [UserName] -p[Password] create [db_name]
then restore -> mysql -u [Username] -p[Password] [db_name] < course_database.sql

##### To use mysql-connector you have to -> pip3 install -r requirements.txt

##### Running Python CRUD App: Inside repo's directory -> python3 ./python/main.py
