--queries
--List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary FROM employees as e
INNER JOIN salaries as s 
ON s.emp_no = e.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date FROM employees
	WHERE hire_date LIKE '%/1986';

--List the manager of each department with the following information: department number, department name, 
--the manager's employee number, last name, first name.
SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name FROM employees as e
	INNER JOIN dept_manager as dm
	ON dm.emp_no = e.emp_no
			INNER JOIN departments as d
			ON d.dept_no = dm.dept_no;

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name FROM employees as e
	INNER JOIN dept_emp as de
	ON de.emp_no = e.emp_no
			INNER JOIN departments as d
			ON d.dept_no = de.dept_no;

--List first name, last name, and sex for employees whose first name is "Hercules" 
--and last names begin with "B."
SELECT first_name, last_name, sex FROM employees
	WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%';

--List all employees in the Sales department, including their employee number, 
--ast name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name FROM employees as e
	INNER JOIN dept_emp as de
	ON de.emp_no = e.emp_no
			INNER JOIN departments as d
			ON d.dept_no = de.dept_no
WHERE dept_name = 'Sales';

--List all employees in the Sales and Development departments, including their employee number, 
--last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name FROM employees as e
	INNER JOIN dept_emp as de
	ON de.emp_no = e.emp_no
			INNER JOIN departments as d
			ON d.dept_no = de.dept_no
WHERE dept_name = 'Sales'
OR dept_name = 'Development';

--In descending order, list the frequency count of employee last names, i.e., 
--how many employees share each last name.
SELECT last_name, COUNT(last_name) AS shared_by_number FROM employees
GROUP BY last_name
ORDER BY shared_by_number DESC;

--id number 499942
SELECT e.emp_no, e.last_name, e.first_name, e.hire_date, d.dept_name, s.salary, t.title FROM employees as e
	INNER JOIN titles as t
	ON t.title_id = e.emp_title_id	
		INNER JOIN salaries as s 
		ON s.emp_no = e.emp_no
			INNER JOIN dept_emp as de
			ON de.emp_no = e.emp_no
					INNER JOIN departments as d
					ON d.dept_no = de.dept_no
WHERE e.emp_no = 499942;
--April Foolsday, cute...