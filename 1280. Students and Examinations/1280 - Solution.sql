SELECT 
    S.student_id, 
    S.student_name, 
    Su.subject_name, 
    COUNT(E.subject_name) AS attended_exams
FROM 
    Students S
CROSS JOIN 
    Subjects Su
LEFT JOIN 
    Examinations E ON S.student_id = E.student_id AND Su.subject_name = E.subject_name
GROUP BY 
    S.student_id, S.student_name, Su.subject_name
ORDER BY 
    S.student_id, Su.subject_name;
-- Key: The use of cross join and Grouping via multiple columns
/* A CROSS JOIN produces a Cartesian product of two tables, meaning every row in the first table is combined with every row in the second table.
A LEFT JOIN returns all records from the left table (Students S cross-joined with Subjects Su), and the matched records from the right table (Examinations E). If there's no match, the result is NULL on the right side.
This join checks if a student (S.student_id) has attended an exam for a particular subject (Su.subject_name). If no such exam exists, the E.subject_name will be NULL.
Grouping by these three columns allows the query to aggregate data for each combination of student and subject, which is necessary for the COUNT function to work correctly. */
