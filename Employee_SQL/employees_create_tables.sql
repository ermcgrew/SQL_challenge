DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE departments;
DROP TABLE salaries;
DROP TABLE employees;
DROP TABLE titles;

CREATE TABLE departments(
dept_no VARCHAR(4), 
dept_name VARCHAR(20),
PRIMARY KEY(dept_no)
);

CREATE TABLE titles(
title_id VARCHAR(5), 
title VARCHAR (20),
PRIMARY KEY (title_id)
);

CREATE TABLE employees(
emp_no INT, 
emp_title_id VARCHAR(5), 
birth_date VARCHAR(10),
first_name VARCHAR, 
last_name VARCHAR,
sex VARCHAR (1),
hire_date VARCHAR(10),
PRIMARY KEY (emp_no),
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE dept_emp(
emp_no INT,
dept_no VARCHAR(4),
PRIMARY KEY(emp_no,dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager(
dept_no VARCHAR(4),
emp_no INT,
PRIMARY KEY(dept_no,emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries(
emp_no INT,
salary INT,
PRIMARY KEY (emp_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--check that data imported correctly, replacing table name after each import
SELECT * FROM salaries;