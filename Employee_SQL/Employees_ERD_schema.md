departments
-
dept_no PK VARCHAR(4)
dept_name VARCHAR(20)



dept_emp #junction
-
emp_no PK FK >- employees.emp_no
#employees can be associated with multiple depts.
dept_no PK VARCHAR(4) FK >- departments.dept_no
#each dept associated with multiple employees

dept_manager #junction
-
dept_no PK VARCHAR(4) FK >- departments.dept_no
#each dept_no is associated with multiple emp_no
emp_no PK FK - employees.emp_no
#each employee only asssociated with one dept 


employees
-
emp_no PK
emp_title_id VARCHAR(5) FK >- titles.title_id
    #each employee will have one title, 
    #each title will have many associated employees 
birth_date VARCHAR(10)
first_name VARCHAR
last_name VARCHAR
sex VARCHAR
hire_date VARCHAR(10)



salaries
-
emp_no FK - employees.emp_no
    #each employee will have one salary
    #each salary row will only have one employee
salary 



titles
-
title_id PK VARCHAR(5)
title VARCHAR(20)