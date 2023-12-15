create table if not exists subjects
(
	subjects_id serial primary key,
	subjects_name varchar(100) not null unique
);
create table if not exists teachers
(
	teachers_id serial primary key,
	teacher_name varchar not null unique,
	salary numeric not null check (salary>0),
	surname varchar not null
);
create table if not exists curators
(
	curators_id serial primary key,
	firstname varchar not null, 
	surname varchar not null
);
create table if not exists faculties
(
    faculties_id serial primary key,
    financing numeric not null default 0 check (financing>=0),
    faculties_name varchar(100) not null unique
);
create table if not exists departments
(
    departments_id serial primary key,
    financing numeric not null default 0 check (financing>=0),
    department_name varchar(100) not null unique,
    fk_faculties_id int references faculties(faculties_id) not null
);
create table if not exists lectures
(
	lectures_id serial primary key,
	lecture_room varchar not null,
	fk_subject_id int references subjects(subjects_id) not null,
	fk_teachers_id int references teachers(teachers_id) not null
);


create table if not exists _groups
(
   groups_id serial primary key,
   group_name varchar(10) not null unique,
   _year int not null check (_year>=1 and _year<=5),
   fk_departments_id int references departments(departments_id) not null
);

create table if not exists groups_curators
(
	curator_id int references curators(curators_id) not null,
	group_id int references _groups(groups_id) not null,
	constraint groups_curators_id primary key (curator_id, group_id)
);
create table if not exists group_lectures
(
	group_id int references _groups(groups_id) not null,
	lecture_id int references lectures(lectures_id) not null,
	constraint groups_lectures_id primary key(group_id, lecture_id)
);
