-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
-- Host: localhost    Database: students_mgt_system
-- Server version	8.0.42
---------------------------------------------------------

-- Table structure for table departments
-- Created first because other tables depend on it
DROP TABLE IF EXISTS departments;
CREATE TABLE departments (
  DepartmentID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  DepartmentName VARCHAR(100) NOT NULL
)

-- Table structure for table students
DROP TABLE IF EXISTS students;
CREATE TABLE students (
  StudentID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(100) NOT NULL,
  Gender ENUM('Male','Female') DEFAULT NULL,
  DOB DATE DEFAULT NULL,
  DepartmentID INT DEFAULT NULL,
  FOREIGN KEY (DepartmentID) REFERENCES departments(DepartmentID)
)
  
-- Table structure for table courses
DROP TABLE IF EXISTS courses;
CREATE TABLE courses (
  CourseID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  CourseName VARCHAR(100) NOT NULL,
  FOREIGN KEY (DepartmentID) REFERENCES departments(DepartmentID)
)

-- Table structure for table enrollments
CREATE TABLE enrollments (
    EnrollmentID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    CourseID INT,
    EnrollmentDATE DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
)

-- Table structure for table instructors
DROP TABLE IF EXISTS instructors;
CREATE TABLE instructors (
  InstructorID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(100) NOT NULL,
  DepartmentID INT DEFAULT NULL,
  CourseID INT DEFAULT NULL,
  FOREIGN KEY (DepartmentID) REFERENCES departments(DepartmentID),
  FOREIGN KEY (CourseID) REFERENCES courses(CourseID)
)
