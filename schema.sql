DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS teachers;
DROP TABLE IF EXISTS allergies;
DROP TABLE IF EXISTS allergies_students;

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  age INTEGER,
  phone_number VARCHAR(50),
  favorite_teacher INTEGER
);

CREATE TABLE teachers (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE allergies (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE allergies_students (
  id SERIAL PRIMARY KEY,
  student INTEGER,
  allergy INTEGER,
  severity INTEGER
);