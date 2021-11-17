CREATE TABLE departments(
dept_no INT, 
dept_name VARCHAR(20),
PRIMARY KEY(dept_no)
);

CREATE TABLE titles(
title_id INT, --PRIMARY KEY?
title VARCHAR (20),
PRIMARY KEY (title_id)
);

CREATE TABLE employees(
emp_no INT, --PRIMARY KEY
emp_title_id INT, 
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
dept_no INT,
PRIMARY KEY(emp_no,dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager(
dept_no INT,
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

