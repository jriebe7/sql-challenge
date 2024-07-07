--List the employee number, last name, first name, sex, and salary of each employee
select e. emp_no, e.last_name, e.first_name, e.sex, s.salary
from Employees e
join Salaries s
on (e.emp_no = s.emp_no)
order by emp_no asc

--List the first name, last name, and hire date for the employees who were hired in 1986
select first_name, last_name, hire_date
from Employees
where hire_date like '%1986%'

--List the manager of each department along with their department number, department name, employee number, last name, and first name
select d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from departments d
join dept_manager m
on (d.dept_no = m.dept_no)
join employees e
on (m.emp_no = e.emp_no)

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name
