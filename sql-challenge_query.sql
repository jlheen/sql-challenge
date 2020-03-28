-- Here are the code inputs for the requested queries:
---NOTE: go back over and give aliases to table names


-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
-- Using a created view
CREATE VIEW emp_salaries AS
SELECT employees.emp_no,
  employees.last_name,
  employees.first_name,
  employees.gender,
  salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no;

SELECT * 
FROM emp_salaries;

-- 2. List employees who were hired in 1986.
SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date < '1986-12-31'

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
CREATE VIEW dept_managers as
SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name, e.hire_date, titles.to_date
FROM departments as d
INNER JOIN dept_manager ON 
d.dept_no = dept_manager.dept_no
INNER JOIN employees as e ON
dept_manager.emp_no = e.emp_no
INNER JOIN titles ON
e.emp_no = titles.emp_no;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
CREATE VIEW dept_employees as
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
INNER JOIN dept_emp ON 
e.emp_no = dept_emp.emp_no
INNER JOIN departments as d ON
dept_emp.dept_no = d.dept_no;

-- Ensure this virtual table prints out correctly
SELECT *
FROM dept_employees
LIMIT 10;

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT *
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'; 

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
CREATE VIEW sales_dept as
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
INNER JOIN dept_emp ON 
e.emp_no = dept_emp.emp_no
INNER JOIN departments as d ON
dept_emp.dept_no = d.dept_no
WHERE dept_name = 'Sales';

-- Run small query to ensure the virtual table is correct
SELECT *
FROM sales_dept
LIMIT 10;

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
CREATE VIEW sales_dev_depts as
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
INNER JOIN dept_emp ON 
e.emp_no = dept_emp.emp_no
INNER JOIN departments as d ON
dept_emp.dept_no = d.dept_no
WHERE dept_name IN ('Sales', 'Development');

-- Run a small sample query to see the virutal table
SELECT *
FROM sales_dev_depts
LIMIT 20;

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, count(*)
FROM employees
GROUP BY last_name
ORDER BY last_name DESC;