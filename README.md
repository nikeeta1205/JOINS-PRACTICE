# JOINS-PRACTICE

*COMPANY* : CODTECH IT SOLUTIONS

*NAME* : Nikeeta Nitin Sawant

*INTERN ID* : CT04DK245

*Domain* : SQL

*Duration* : 4 WEEKS

*MENTOR* : Neela Santosh Kumar

##DESCRIPTION : Internship Task: Performing SQL Joins to Combine Student and Course Data Meaningfully

As part of my internship responsibilities, I was assigned a task that involved working with relational databases to extract meaningful insights from structured data. The primary objective was to apply and understand various types of SQL joins — including INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL JOIN (simulated) — to combine and interpret data across multiple related tables.

Tools and Technologies Used:
MySQL Workbench:
I used MySQL Workbench as the primary tool to interact with the database. It provided a graphical user interface for writing SQL queries, designing tables, and visualizing results.

Structured Query Language (SQL):
SQL was used to create the database, define tables, insert data, and perform various join operations. The task helped reinforce the use of SQL in real-world data modeling and querying.

Project Overview:
To simulate a real-world scenario, I designed a database called CollegeDB with two core tables:

Students Table – to store details like student ID, name, and department.

Courses Table – to record course information along with a reference to the student enrolled in that course using a foreign key (Student ID).

The relationship between these tables was one-to-many, where one student could be enrolled in multiple courses, but each course was linked to a single student.

After creating the tables, I inserted sample records to reflect a realistic academic setting. This included:

Students enrolled in multiple courses.

A few students not enrolled in any courses.

Join Operations Performed:
INNER JOIN:
This join was used to extract a list of students who were actually enrolled in at least one course. It helped identify valid relationships where the Student ID existed in both tables.

LEFT JOIN:
The LEFT JOIN returned all student records, including those who were not registered in any course. This was useful for spotting students who were yet to begin their coursework.

RIGHT JOIN:
This join displayed all course records, even those not linked to a valid student. It helped in identifying course entries that might have been assigned incorrectly or had missing references.

FULL JOIN (Simulated using UNION):
Since MySQL does not support FULL JOIN directly, I simulated it by combining the results of LEFT JOIN and RIGHT JOIN using the UNION operator. This provided a complete overview of all students and courses, including unmatched records on both sides.

Learning Outcome:
Through this task, I developed a strong understanding of relational data modeling and the importance of different types of joins in database management. I learned how INNER JOIN helps focus on valid relationships, while OUTER JOINS (LEFT and RIGHT) are useful for identifying missing or unmatched data. Simulating a FULL JOIN with UNION helped me understand how to work around limitations in certain SQL dialects like MySQL.

Using MySQL Workbench made it easy to visualize join results and debug queries. It also allowed me to practice writing efficient queries and analyzing data relationships through a clean, structured interface.

This hands-on experience helped bridge the gap between theoretical SQL knowledge and practical database handling. It also gave me insights into how data inconsistencies can be detected and resolved in real-world systems, making it an essential learning exercise in my internship. 

#OUTPUT : 
INNER JOIN:
![Image](https://github.com/user-attachments/assets/2d8c921c-fb10-4f5a-90e9-7d2563a2b7ee)
LEFT JOIN:
![Image](https://github.com/user-attachments/assets/0ce8a3d7-3d0b-489e-8051-54cfec35922d)
RIGHT JOIN:
![Image](https://github.com/user-attachments/assets/baf3c248-8c4f-4153-a346-6a56d4c3f2eb)
FULL JOIN 
![Image](https://github.com/user-attachments/assets/dc00ff72-de16-4547-99b9-adc51edf3ac8)
