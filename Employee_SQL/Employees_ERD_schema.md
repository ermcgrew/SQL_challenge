departments
-
dept_no PK
dept_name VARCHAR



dept_emp (junction) both PK
-
emp_no FK >- employees.emp_no
dept_no FK - departments.dept_no

#employees can be associated with multiple depts.
#depts associated with multiple employees

dept_manager (junction) both PK
-
dept_no FK - departments.dept_no
emp_no FK - employees.emp_no

#each dept_no is associated with multiple emp_no
#each employee only asssociated with one dept 
    #one to one

employees
-
emp_no PK
emp_title_id FK >- titles.title_id
    #each employee will have one title, 
    #each title will have many associated employees 
    #will occur many times in the table

birth_date
first_name VARCHAR
last_name VARCHAR
sex
hire_date



salaries
-
emp_no FK - employees.emp_no
    #each employee will have one salary
    #each salary row will only have one employee
salary



titles
-
title_id PK
title VARCHAR