SELECT name FROM sys.databases;
CREATE DATABASE CompanyDB;

USE CompanyDB;

CREATE TABLE Departments(
Name VARCHAR(100) NOT NULL UNIQUE);

CREATE TABLE Employees(
 
 Name VARCHAR(100) NOT NULL,
 Surname VARCHAR(100) NOT NULL,
 Email VARCHAR(50) NOT NULL UNIQUE,
 Salary DECIMAL(100,50) NOT NULL,
 DepartmentName VARCHAR(100) NOT NULL,
 FOREIGN KEY (DepartmentName) References Departments(Name)
 );

 ALTER TABLE Employees
 ADD INT Qulu;
 ALTER TABLE Employees
 ALTER COLUMN Surname VARCHAR(200);
 ALTER TABLE Employees DROP COLUMN Qulu;

 INSERT INTO Departments(Name)
 VALUES
 ('Satisagentliyi'),
 ('muhafize'),
 ('nezaret'),
 ('nezaretenezaret');
 INSERT INTO Employees(Name,Surname,Email,Salary,DepartmentName)
 Values
 ('mike','musayev','mikemusayev099@gmail.com',3000,'Satisagentliyi'),
 ('coni','qareqareyev','creyzboy000@gmail.com',2200,'muhafize'),
 ('kevn','memmedli','salam123@gmail.com',1700,'nezaret'),
 ('angelina','mireliyeva','gizlisihre@gmail.com',1900,'nezaretenezaret');

 UPDATE Employees
 SET Salary = 4000
 WHERE Name = 'mike' AND Surname = 'musayev';
 SELECT * FROM Employees
 WHERE Name LIKE '%a%';
 DELETE  FROM Employees
 WHERE Name='coni'AND Surname = 'qareareyev';
 SELECT * FROM Employees
 WHERE Salary < 2000;
 SELECT * FROM Employees
 WHERE Salary BETWEEN 1000 AND 2000;