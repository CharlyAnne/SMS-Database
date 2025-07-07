-- Select the department name and count of students in each department
SELECT departments.departmentName, COUNT(students.studentID) AS TotalStudents 
FROM departments
-- Join Students table to match each student with their department
LEFT JOIN students 
ON departments.DepartmentID = students.DepartmentID  -- Join and group by the depts
GROUP BY departments.DepartmentName      -- Group so we get counts per dept
ORDER BY TotalStudents      -- fewest students comes first
LIMIT 3;     -- Limit result to only the dept with fewest students                             -