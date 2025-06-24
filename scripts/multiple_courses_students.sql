# Which students are enrolled in multiple courses, and which courses are they taking?
SELECT students.StudentID, students.Name, COUNT(enrollments.CourseID) AS NoOfCourses
FROM students
JOIN enrollments 
ON students.StudentID = enrollments.StudentID
GROUP BY students.StudentID, students.Name
HAVING COUNT(enrollment.CourseID) > 1; # Finds students enrolled in more than one course

SELECT students.Name AS StudentName, courses.CourseName
FROM enrollments
JOIN students 
ON enrollments.StudentID = students.StudentID
JOIN courses
ON enrollments.CourseID = courses.CourseID
WHERE  # Listing their actual courses using IN()
	students.StudentID IN (
		SELECT studentID
        FROM enrollments
        GROUP BY studentID
        HAVING COUNT(CourseID) > 1
	)
ORDER BY students.Name
    
