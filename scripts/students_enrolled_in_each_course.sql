SELECT courses.CourseName, COUNT(enrollments.StudentID) AS TotalStudent
FROM enrollments
JOIN courses #Join enrollment to Courses so we can have the Course names
ON enrollments.CourseID = courses.CourseID
GROUP BY courses.CourseName
ORDER BY TotalStudent DESC