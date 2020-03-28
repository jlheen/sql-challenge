-- For quickdatabasediagrams
departments
- 
dept_no
dept_name

dept_emp
-
emp_no
dept_no
from_date
to_date

dept_manager
-
dept_no
emp_no
from_date
to_date

employees
-
emp_no INT PK
birth_date
first_name
last_name
gender
hire_date

salaries
-
emp_no
salary
from_date
to_date

titles
-
emp_no
title
from_date
to_date

-- Create the database

-- Begin by creating tables and importing csv data into these tables

-- Create a departements table
CREATE TABLE departments (
	dept_no VARCHAR,
	dept_name VARCHAR
);

-- Run a query of the table to verify the contents loaded correctly
SELECT *
FROM departments;

-- Create a department employees table
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR,
	from_date DATE,
	to_date DATE
);

-- Run a query of the table to verify the contents loaded correctly
SELECT *
FROM dept_emp;

-- Create a department manager table
CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no INT,
	from_date DATE,
	to_date DATE
);

-- Run a query of the table to verify the contents loaded correctly
SELECT *
FROM dept_manager;

-- Create an employees table
CREATE TABLE employees (
	emp_no INT,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	gender VARCHAR,
	hire_date DATE
);

-- Run a query of the table to verify the contents loaded correctly
SELECT *
FROM employees;

-- Create a salaries table
CREATE TABLE salaries (
	emp_no INT,
	salary INT,
	from_date DATE,
	to_date DATE
);

-- Run a query of the table to verify the contents loaded correctly
SELECT *
FROM salaries;

-- Create a titles table
CREATE TABLE titles (
	emp_no INT,
	title VARCHAR,
	from_date DATE,
	to_date DATE
);

-- Run a query of the table to verify the contents loaded correctly
SELECT *
FROM titles;