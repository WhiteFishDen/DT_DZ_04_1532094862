insert into subjects (subjects_name)
values ('C#'), ('Database Theory'), ('C++'), ('Design');
insert into teachers (teacher_name, salary, surname)
values ('Samanta', 1200, 'Adams'), ('Tony', 1500, 'Stark'), ('Elon', 1300, 'Mask');
insert into lectures (lecture_room, fk_subject_id, fk_teachers_id)
values ('B103',2,2), ('B104',3,1),('B105',1,1),('B206',4,2),('B207',3,3);
insert into faculties (financing, faculties_name)
values (23000, 'Computer Science'), (19000, 'AI'),(21000,'Information Security');
insert into departments (financing, department_name, fk_faculties_id)
values (7000, 'cafedra_1',3), (3000, 'cafedra_2',3), (3500,'cafedra_3',1), (2957,'cafedra_4',2),(3750,'cafedra_5',1),(2198,'cafedra_6',2);
insert into _groups (group_name, _year, fk_departments_id)
values ('P107', 2, 7), ('P108', 3, 8), ('P109', 4, 9), ('P110', 1, 10), ('P111', 2,11),('P100', 3,12), ('P101', 2,7), ('P201', 3,8),('P202',5,9);
insert into group_lectures 
values(1,1),(2,1),(3,5),(4,3),(5,5),(6,4),(7,3),(8,3),(9,2),(1,5),(2,3),(3,2),(4,4);
insert into curators (firstname,surname)
values ('Robert','Barateon'),('John','Snow'), ('Eddard', 'Stark'), ('Aria','Stark'), ('Tirion', 'Lanister'), ('Briena', 'Tart');
insert into groups_curators 
values (1,1),(1,2),(3,3),(2,4),(4,5),(6,6),(3,7),(3,8),(5,9);
