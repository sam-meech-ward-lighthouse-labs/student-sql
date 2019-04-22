## Aggregate Functions

* `sum`, `avg`, `count`, `min`, `max`


## Group By & Having

* Total students in each age group
* Total number of students for each favorite teacher

## Joins

* Every teacher that is a favorite to a student that is allergic to water

* Total students with each allergy

* Total students with each allergy, only show groups with 2 or more.

## Sub Select

* All students that are older than Ben







---


## Aggregate Functions


## Group By & Having

* Total students in each age group
* Total number of students for each favorite teacher

## Joins

* Every teacher that is a favorite to a student that is allergic to water

```sql
SELECT teachers.name 
FROM teachers 
JOIN students ON favorite_teacher = teachers.id
JOIN allergies_students ON student = students.id
JOIN allergies ON allergy = allergies.id
WHERE allergies.name = 'water';
```

* Total students with each allergy

```sql
SELECT count(students), allergies.name 
FROM students
JOIN allergies_students ON student = students.id
JOIN allergies ON allergy = allergies.id
GROUP BY allergies.name
ORDER BY allergies.name DESC;
```

* Total students with each allergy, only show groups with 2 or more.

## Sub Select

* 
* All students that are older than Ben
