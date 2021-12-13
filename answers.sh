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

#Joins
#1)Produce a table that contains, for each employee, his/her name, company name, and company date.
SELECT employees.Name, employees.Company, companies.Date 
FROM employees
INNER JOIN companies ON companies.Name = employees.Company;

#2)Find the name of employees that work in companies made before 2000.
SELECT employees.Name, employees.Company, companies.Date 
FROM employees
INNER JOIN companies ON companies.Name = employees.Company
WHERE companies.DATE<2000

#3)Find the name of company that has a graphic designer.
SELECT employees.Company
FROM employees
INNER JOIN companies ON companies.Name = employees.Company
WHERE employees.role='Graphic Designer'
