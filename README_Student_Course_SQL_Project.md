# 🎓 Student Course Management System - SQL Project

A relational database project to manage students, courses, instructors, and their enrollment data.

## 🗂️ Project Overview

This project demonstrates:
- Database schema design using MySQL
- Table creation with primary and foreign key constraints
- Insertion of sample data
- Writing analytical SQL queries using JOINs and GROUP BY
- Basic ER diagram representation

## 📁 Project Files

- `One_Click_SQL_Project.sql` – Complete script (DB creation, tables, sample data)
- `ER_Diagram_Student_Course_Project.png` – Visual of the ER diagram
- `output_screenshots/` – Query result screenshots (add yours here!)

## 🧠 Key SQL Concepts Used

- `CREATE TABLE` with constraints
- `FOREIGN KEY` relationships
- `INNER JOIN` for multi-table queries
- `GROUP BY` with aggregation

## 🖥️ Sample Queries

```sql
-- List students and their enrolled courses
SELECT s.name AS student, c.course_name
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON c.course_id = e.course_id;
```

## 📌 How to Run

1. Open MySQL Workbench
2. Open and run `One_Click_SQL_Project.sql`
3. Run the queries from `queries.sql` or write your own

## 👩‍💻 Author

Built by Rishitha | June 2025  
Project guided by ChatGPT – OpenAI

---

## 📄 Resume Entry Example

**SQL-Based Student Course Management System**  
*MySQL, Database Design, Query Optimization*

- Designed and implemented a relational database to manage students, courses, instructors, and enrollments.
- Developed schema with foreign key relationships and inserted sample records using MySQL Workbench.
- Executed analytical queries using `JOIN`, `GROUP BY`, and filtering to extract insights from relational data.
- Visualized data model using an ER diagram and documented the project on GitHub for recruiters and learning showcase.
