select teacher_name, salary, surname, group_name, _year 
from teachers join lectures on teachers_id = fk_teachers_id
join group_lectures on lectures_id = lecture_id 
join _groups on group_id = groups_id
order by group_name;
-- task 1

select faculties_name as факультет, sum(departments.financing) as сумма_финансирования_кафедр
from faculties inner join departments on fk_faculties_id = faculties_id
group by faculties_name, faculties.financing 
having sum(departments.financing)>faculties.financing; -- task 2

select curators.surname, _groups.group_name 
from _groups  join groups_curators on groups_id = group_id
join curators on curator_id = curators_id; --task 3

select teacher_name, surname
from teachers join lectures on teachers_id = fk_teachers_id
join group_lectures on lectures_id = lecture_id 
join _groups on group_id = groups_id
where group_name = 'P107'; --task 4

select surname, faculties_name
from teachers join lectures on teachers_id = fk_teachers_id
join group_lectures on lectures_id = lecture_id 
join _groups on group_id = groups_id 
join departments on fk_departments_id = departments_id
join faculties on fk_faculties_id = faculties_id; --task 5

select group_name, department_name
from _groups inner join departments on fk_departments_id = departments_id
order by group_name; --task 6

select subjects_name as Дисциплина
from subjects join lectures on subjects_id = fk_subject_id 
join teachers on fk_teachers_id = teachers_id
where teacher_name = 'Samantha' and surname = 'Adams'; -- task 7

select department_name
from departments join _groups on departments_id = fk_departments_id
join group_lectures on groups_id = group_id join lectures on lecture_id = lectures_id
join subjects on fk_subject_id = subjects_id
where subjects_name = 'Database Theory'; -- task 8

select group_name
from _groups join departments on fk_departments_id = departments_id
join faculties on fk_faculties_id = faculties_id
where faculties_name = 'Computer Science'
order by group_name; -- task 9

select group_name, faculties_name
from _groups join departments on fk_departments_id = departments_id
join faculties on fk_faculties_id = faculties_id
where _year = 5; -- task 10

select concat(teacher_name,' ', surname) "Teacher", concat(subjects_name, ' ', group_name) "Lecture"
from _groups join group_lectures on groups_id = group_id join lectures on lecture_id = lectures_id 
join teachers on fk_teachers_id = teachers_id join subjects on fk_subject_id = subjects_id
where lecture_room = 'B103'; -- task 11

