SELECT count(students), teachers.name 
FROM students LEFT JOIN teachers ON teachers.id = favorite_teacher
WHERE age > 19 AND teachers.name IS NOT NULL
GROUP BY teachers.name
HAVING count(students) > 1 
ORDER BY teachers.name;

-- SELECT count(*), age
-- FROM students
-- GROUP BY age;

-- SELECT teachers.name
-- FROM students
-- JOIN teachers ON teachers.id = students.favorite_teacher
-- JOIN allergies_students ON students.id = student
-- JOIN allergies ON allergies.id = allergy
-- WHERE allergies.name = 'bees';

-- SELECT * 
-- FROM students
-- JOIN teachers ON teachers.id = favorite_teacher;

-- SELECT stus.name 
-- FROM (
--   SELECT * 
--   FROM students
--   WHERE age > 20
--   ) AS stus;

-- select name 
-- from students 
-- where age > 20;

-- SELECT name 
-- FROM students
-- WHERE age > (
--   SELECT age 
--   FROM students 
--   WHERE name = 'Ben'
-- );