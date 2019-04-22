INSERT INTO teachers (name)
VALUES ('Nima'),
('Karl'),
('Travis'),
('Sam');

INSERT INTO students (name, age, favorite_teacher)
VALUES ('judy', 25, 1),
('Ben', 20, 2),
('Jenny', 20, NULL),
('Sarah', 22, NULL),
('Sam Billings', 18, 4),
('Susan Hudson', 19, 4),
('Malloy Jenkins', 20, 4),
('Maximilian Alesio', 21, 4),
('Pegasus Larue', 22, 4);

INSERT INTO allergies (name)
VALUES ('peanuts'),
('gluten'),
('bees'),
('dairy'),
('c food'),
('water'),
('alcohol');

INSERT INTO allergies_students (student, allergy, severity)
VALUES (1, 3, 10),
(1, 2, 10),
(1, 1, 10),
(1, 6, 10),
(2, 7, 5),
(4, 3, 6),
(4, 2, 6),
(4, 1, 6),
(4, 6, 6);
