#Creating a database to store student and course information
CREATE DATABASE CollegeDB;

#Switching to the database I just created
USE CollegeDB;

#Creating Students table with basic details
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Department VARCHAR(50)
);

#Creating Courses table where each course is linked to a student
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    StudentID INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

#Adding some student records
INSERT INTO Students (StudentID, StudentName, Department)
VALUES 
(1, 'Rahul Desai', 'Computer Science'),
(2, 'Priya Iyer', 'Mechanical'),
(3, 'Zoya Shaikh', 'Electronics'),
(4, 'Neel Joshi', 'Civil');

#Adding course data – some students have multiple courses, and one course is linked to a non-existing student
INSERT INTO Courses (CourseID, CourseName, StudentID)
VALUES 
(101, 'DBMS', 1),
(102, 'Thermodynamics', 2),
(103, 'Digital Circuits', 1),
(104, 'Structural Design', 3); 

#INNER JOIN: shows only students who are actually enrolled in courses
SELECT 
    Students.StudentName,
    Courses.CourseName
FROM Students
INNER JOIN Courses
ON Students.StudentID = Courses.StudentID;

#LEFT JOIN: shows all students, even those who haven’t taken any course
SELECT 
    Students.StudentName,
    Courses.CourseName
FROM Students
LEFT JOIN Courses
ON Students.StudentID = Courses.StudentID;

#RIGHT JOIN: shows all courses, including those not assigned to any valid student
SELECT 
    Students.StudentName,
    Courses.CourseName
FROM Students
RIGHT JOIN Courses
ON Students.StudentID = Courses.StudentID;

#FULL JOIN: since MySQL doesn't support FULL JOIN, I used UNION of LEFT and RIGHT
SELECT 
    Students.StudentName,
    Courses.CourseName
FROM Students
LEFT JOIN Courses
ON Students.StudentID = Courses.StudentID

UNION

SELECT 
    Students.StudentName,
    Courses.CourseName
FROM Students
RIGHT JOIN Courses
ON Students.StudentID = Courses.StudentID;
