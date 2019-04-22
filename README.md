# SQL Intro


* We can model our databases using a ERD (Entity Relationship Diagram)
  - Crows foot notation
  - what side does the crows foot go on?
* All of the relationships
  - one-to-one
  - one-to-many
  - many-to-many
  * Sometimes we have foreign keys
* Each table has a primary key, so we easily identify a single row in a table.
* `SELECT FROM WHERE ORDER BY GROUP BY LIMIT AS IN HAVING CASE JOIN ON END INSERT`

* Different from mongo because it's relational.
* Tables that are related to each other rather than just JSON
* Relational databases store data in a more complex way than a noSQL database.

* Why mongo? cause we're js devs and don't want to learn new stuff. scale much better. a bit faster.

## TABLES

* They use tables and columns and rows
* A table is the most fundamental building block of relational databases.
* EAch table has columns which are the attributes.
* Each table has rows which are the entries, the data.


```
+--------------------------------------+
| students                             |
+--------------------------------------+
| id | name              | cohort_name |
+--------------------------------------+
| 1  | Sam Billings      | FEB12       |
| 2  | Susan Hudson      | MAR12       |
| 3  | Malloy Jenkins    | APR09       |
| 4  | Maximilian Alesio | APR09       |
| 5  | Pegasus Larue     | APR09       |
+--------------------------------------+
```

```js
{
  1: {
    id: 1,
    name: "Sam Billings ",
    cohort_name: "FEB12",
  },
  2: {
    id: 2,
    name: "Susan Hudson",
    cohort_name: "FEB12",
  }
}
```

* A PK is a **unique** identifier. Every table has a PK. To be able to differentiate between each individual entity and to be able to quickly a single entity. 

* You **MUST** define the schema for your tables, before you can save any data.
* You **MUST** plan out your database before saving data.

We need a way of Diagraming the Relationship between our Entities.

## Entity Relationship Diagram

* One of the most valuable tools when creating a database.

## Relationships

### One-To-Many

* A student has A favorite teacher
* A teacher has many fans

### Many-To-Many

* A student has **many** allergies
* An allergy can belong to **many** students.

* You need another table because you can't do many to many

* What's better:
  - do everything in the query language SQL
  - do some in SQL and some in JS

* SQL is much more performant at querying than JavaScript.
* SQL is declarative. 
  - You just say what you want.
  - it should be more difficult to make mistakes.

## Types

* Every column **needs** a type. 
* SQL is really strict with these types.
* The types are more sepecifc than most programming langauges. 

## SQL Commands

```psql
create database school;
\c school;
\i ~/Desktop/W04D1/schema.sql
\d
\dt
\i ~/Desktop/W04D1/seeds.sql
select * from students;
SELECT * FROM students;
SELECT name, ageFROM students;
SELECT name, ageFROM studentsWHERE age > 20;
SELECT count(phone_number) FROM students;
SELECT count(*) FROM students;
SELECT count(*) AS total_students FROM students;
SELECT students.name as student, age, teachers.name as favorite_teacherFROM students, teachers;
SELECT students.name as student, age, teachers.name as favorite_teacherFROM students JOIN teachers ON favorite_teacher = teachers.id;
select name, age, favorite_teacher from students;
SELECT students.name as student, age, teachers.name as favorite_teacherFROM students LEFT OUTER JOIN teachers ON favorite_teacher = teachers.id;
SELECT students.name as student, age, teachers.name as favorite_teacherFROM students RIGHT OUTER JOIN teachers ON favorite_teacher = teachers.id;
SELECT students.name as student, age, teachers.name as favorite_teacherFROM students FULL OUTER JOIN teachers ON favorite_teacher = teachers.id;
SELECT students.name as student, age, teachers.name as favorite_teacherFROM students LEFT JOIN teachers ON favorite_teacher = teachers.id;
```

## Links

* ERD: https://drive.google.com/file/d/1rxcK3hQO4n2hSi4gtHjPRN_gN5jS8bBn/view?usp=sharing
* Karls Notes:
  - https://github.com/jensen/sqlintro-notes/
  - https://github.com/jensen/moresql-notes/