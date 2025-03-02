create table titles(
  title_id varchar(10) primary key,
  title varchar(100) not null
);

create table employees(
  emp_no INT primary key,
  emp_title_id varchar(10),
  birth_date text not null,
  first_name varchar(50) not null,
  last_name varchar (50) not null,
  sex varchar (10),
  hire_date text not null,
  foreign key (emp_title_id) references titles(title_id)
);


create table salaries(
  emp_no INT,
  salary INT not null,
  primary key(emp_no, salary),
  foreign key(emp_no) references employees(emp_no)
);

create table departments(
  dept_no varchar(10) primary key,
  dept_name varchar(100) not null
);

create table dept_emp(
  emp_no INT,
  dept_no varchar(10),
  primary key (emp_no, dept_no),
  foreign key (emp_no) references employees (emp_no),
  foreign key (dept_no) references departments (dept_no)
);

create table dept_manager(
  dept_no varchar(10),
  emp_no INT,
  primary key (dept_no, emp_no),
  foreign key (dept_no) references departments(dept_no),
  foreign key (emp_no) references employees(emp_no)
);

select * from titles
select * from employees
select * from salaries
select * from departments
select * from dept_emp
select * from dept_manager


