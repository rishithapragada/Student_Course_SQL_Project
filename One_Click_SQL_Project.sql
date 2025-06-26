-- Create and use the database
CREATE DATABASE IF NOT EXISTS student_course_db;
USE student_course_db;

-- Create Students table
CREATE TABLE IF NOT EXISTS Students (
  student_id INT PRIMARY KEY,
  name VARCHAR(100),
  age INT,
  gender VARCHAR(10)
);

-- Create Courses table
CREATE TABLE IF NOT EXISTS Courses (
  course_id INT PRIMARY KEY,
  course_name VARCHAR(100),
  credits INT
);

-- Create Instructors table
CREATE TABLE IF NOT EXISTS Instructors (
  instructor_id INT PRIMARY KEY,
  name VARCHAR(100),
  department VARCHAR(100)
);

-- Create Enrollments table
CREATE TABLE IF NOT EXISTS Enrollments (
  enrollment_id INT PRIMARY KEY,
  student_id INT,
  course_id INT,
  instructor_id INT,
  grade CHAR(2),
  FOREIGN KEY (student_id) REFERENCES Students(student_id),
  FOREIGN KEY (course_id) REFERENCES Courses(course_id),
  FOREIGN KEY (instructor_id) REFERENCES Instructors(instructor_id)
);

-- Insert sample data into Students
INSERT INTO Students VALUES 
(1, 'Alice', 20, 'Female'),
(2, 'Bob', 22, 'Male'),
(3, 'Charlie', 21, 'Male');

-- Insert sample data into Courses
INSERT INTO Courses VALUES 
(101, 'SQL Basics', 3),
(102, 'Data Analytics', 4);

-- Insert sample data into Instructors
INSERT INTO Instructors VALUES 
(11, 'Dr. Smith', 'Computer Science'),
(12, 'Dr. Lee', 'Analytics');

-- Insert sample data into Enrollments
INSERT INTO Enrollments VALUES 
(1001, 1, 101, 11, 'A'),
(1002, 2, 102, 12, 'B'),
(1003, 3, 101, 11, 'C');
