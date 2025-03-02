-- Question 1
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
from employees as e
join salaries as s
on e.emp_no = s.emp_no;

-- Question 2
select first_name, last_name, hire_date 
from employees 
where hire_date like '%1986';

-- Question 3
select dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from dept_manager as dm
join departments as d
on dm.dept_no = d.dept_no
join employees as e
on dm.emp_no = e.emp_no


-- Question 4
select de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp as de
join employees as e
on de.emp_no = e.emp_no
join departments as d
on de.dept_no = d.dept_no


-- Question 5
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%'

-- Question 6
select e.emp_no, e.last_name, e.first_name
from employees as e
join dept_emp as de 
on e.emp_no = de.emp_no
join departments as d 
on de.dept_no = d.dept_no
where d.dept_name = 'Sales';

-- Question 7
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
join dept_emp as de 
on e.emp_no = de.emp_no
join departments as d 
on de.dept_no = d.dept_no
where d.dept_name in ('Sales', 'Development');

-- Question 8
select last_name, count (*) as frequency
from employees
group by last_name
order by frequency desc;
