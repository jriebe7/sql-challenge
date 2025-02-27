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
select s.dept_no, e.emp_no, e.last_name, e.first_name, s.dept_name
from employees e
join dept_emp d
on (e.emp_no = d.emp_no)
join departments s
on (d.dept_no = s.dept_no)
order by emp_no asc

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like '%B%'

--List each employee in the Sales department, including their employee number, last name, and first name
select s.dept_name, e.emp_no, e.last_name, e.first_name 
from employees e
join dept_emp d
on (e.emp_no = d.emp_no)
join departments s
on (d.dept_no = s.dept_no)
where dept_name = 'Sales'
order by emp_no asc

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
select e.emp_no, e.last_name, e.first_name, s.dept_name
from employees e
join dept_emp d
on (e.emp_no = d.emp_no)
join departments s
on (d.dept_no = s.dept_no)
where dept_name = 'Sales' or dept_name = 'Development'
order by emp_no asc

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
select count(last_name) as count, last_name
from employees
group by last_name
order by count desc