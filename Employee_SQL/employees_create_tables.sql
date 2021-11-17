CREATE TABLE departments(
dept_no INT, --PRIMARY KEY?
dept_name VARCHAR(20));

CREATE TABLE titles(
title_id INT, --PRIMARY KEY?
title VARCHAR (20)
);

CREATE TABLE employees(
emp_no INT, --PRIMARY KEY
emp_title_id INT, 
birth_date VARCHAR(10),
first_name VARCHAR, 
last_name VARCHAR,
sex VARCHAR (1),
hire_date VARCHAR(10),
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE dept_emp(
emp_no INT,
dept_no INT,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager(
dept_no INT,
emp_no INT,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries(
emp_no INT, --PRIMARY KEY?
salary INT,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

