<<<<<<< HEAD
﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/XlCpr4
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE departments (
    dept_no VARCHAR   NOT NULL,
    dept_name VARCHAR   NOT NULL,
    CONSTRAINT pk_departments PRIMARY KEY (
        dept_no
     )
);

CREATE TABLE dept_emp (
    emp_no INT   NOT NULL,
    dept_no VARCHAR   NOT NULL,
    from_date DATE   NOT NULL,
    to_date DATE   NOT NULL
);

CREATE TABLE dept_manager (
    dept_no VARCHAR   NOT NULL,
    emp_no INT   NOT NULL,
    from_date DATE   NOT NULL,
    to_date DATE   NOT NULL
);

CREATE TABLE employees (
    emp_no INT   NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    gender VARCHAR   NOT NULL,
    hire_date DATE   NOT NULL,
    CONSTRAINT pk_employees PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE salaries (
    emp_no INT   NOT NULL,
    salary INT   NOT NULL,
    from_date DATE   NOT NULL,
    to_date DATE   NOT NULL
);

CREATE TABLE titles (
    emp_no INT   NOT NULL,
    title VARCHAR   NOT NULL,
    from_date DATE   NOT NULL,
    to_date DATE   NOT NULL
);

ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE salaries ADD CONSTRAINT fk_salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE titles ADD CONSTRAINT fk_titles_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

=======
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
>>>>>>> 13c096a3980302e2a524e7a1aebe5f279b58a15b
