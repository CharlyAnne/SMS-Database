SELECT courses.CourseName, COUNT(enrollments.StudentID) AS TotalEnrollments  # Students enrolled per course
FROM enrollments # Starting from Enrollments table since each row there represents one student/course enrollment
JOIN courses #Join to courses table to access more course names
ON enrollments.CourseID = courses.CourseID  # Join the Courses table to get the course names associated with each enrollment
GROUP BY courses.CourseName # So the Count func gives total courses 
ORDER BY TotalEnrollments DESC;