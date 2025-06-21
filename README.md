# Student Management System Database
## Project Task
Design and create a relational database for a Student Management System (SMS) using SQL. The database should efficiently store and manage data on students, courses, instructors, and enrollments, enabling users to perform key administrative functions such as adding students, assigning courses, and generating dynamic reports through SQL queries.
## Objectives
- Create a well-structured relational database using SQL (DDL).
- Populate tables with sample data using SQL or CSV imports (DML).
- Perform dynamic SQL queries to generate administrative reports.
- Analyze relationships between students, courses, and instructors.

## 🗂️Files Included

| File/Folder | Description |
|-------------|-------------|
| `/school_data` | Sample data for all five tables (Students, Departments, Courses, Instructors, Enrollments) |
| `/scripts/create_tables.sql` | SQL script to create all tables |
| `README.md` | This file |

---

## Database Tables
- FK = Foreign Key
- PK = Primary Key

### 1. departments
| Column         | Type         |
|----------------|--------------|
| DepartmentID   | INT, PK      |
| DepartmentName | VARCHAR(100) |

### 2. students
| Column       | Type         |
|--------------|--------------|
| StudentID    | INT, PK       |
| Name         | VARCHAR(100) |
| Gender       | ENUM('Male','Female','Other') |
| DOB          | DATE         |
| DepartmentID | INT, FK       |

### 3. courses
| Column       | Type         |
|--------------|--------------|
| CourseID     | INT, PK      |
| CourseName   | VARCHAR(100) |
| DepartmentID | INT, FK      |

### 4. instructors
| Column       | Type         |
|--------------|--------------|
| InstructorID | INT, PK      |
| Name         | VARCHAR(100) |
| DepartmentID | INT, FK      |
| CourseID     | INT, FK      |

### 5. enrollments
| Column         | Type         |
|----------------|--------------|
| EnrollmentID   | INT, PK      |
| StudentID      | INT, FK      |
| CourseID       | INT, FK      |
| EnrollmentDate | DATE         |

---
To be continued..
<!--
## 🔍 Sample SQL Queries (Reports)

- Students per course
- Multi-course enrollment detection
- Departmental student count
- Most enrolled courses
- Students not enrolled in any course
- Gender distribution across courses

## 🛠️ Tools Used
- **MySQL Workbench**
- **Excel / Google Sheets**
- **Git & GitHub**
- *(Optional)* ERD tools like dbdiagram.io or Lucidchart

## 🙌 Author
**Charlian Imoisili**  
Student, Developer & Analyst in Training  
Passionate about Data, AI, and Learning by Doing!
---
-->
  
<!--Instructors (provide relevant columns in relation to your tables) -->
