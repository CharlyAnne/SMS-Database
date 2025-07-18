# Total number of students per department across all courses
SELECT departments.DepartmentID, COUNT(DISTINCT enrollments.StudentID) AS TotalStudents
FROM enrollments
JOIN students
ON enrollments.StudentID = students.StudentID
JOIN departments 
ON students.DepartmentID = departments.DepartmentID
GROUP BY departments.DepartmentID