#Basic Queries
#1. Get all the names of students in the database
SELECT Name FROM students;

#2. Get all the data of students above 30 years old
SELECT * From students where age>30;

#3. Get the names of the females who are 30 years old
SELECT name, females From students where age>30;

#4. Get the number of Points of Alex 5.
SELECT Points from students
where name='Alex'

#5. Add yourself as a new student (your name, your age...)
INSERT INTO students
VALUES (7, 'Mohamad', 25, 'M', 500);

#6. Increase the points of Basma because she solved a new exercise
UPDATE students
set points=points+100
where Name='Basma'

#7. Decrease the points of Alex because he's late today
UPDATE students
set points=points-100
where name='Alex'

#Creating tables
CREATE TABLE graduates (
ID INTEGER PRIMARY KEY AUTOINCREMENT,
Name TEXT NOT NULL UNIQUE,
Age INTEGER,
Gender TEXT,
Points INTEGER,
Graduation date
);

#1)Copy Layal's data from students to graduates
INSERT INTO graduates(Name, Age, Gender, Points)
SELECT Name, Age, Gender, Points FROM students
where ID=4

#2)Add the graduation date previously mentioned to Layal's record in graduates
UPDATE graduates
set Graduation='08-09-2018'
WHERE ID=1

#3)Remove Layal's record from students
DELETE FROM students
WHERE id=4

