-- List the following details of each employee: employee number, last name, first name, sex, and salary.
Select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
From employees
Join salaries on employees.emp_no = salaries.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
-- We use LIKE because hire date contains dates and months as well so we want any date that contains any combination with the year 1986
Select first_name, last_name, hire_date
From employees
Where hire_date LIKE '%1986';

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
-- To do this, must join departments with dept_manager and employees
Select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
From dept_manager
Join departments on dept_manager.dept_no = departments.dept_no
Join employees on dept_manager.emp_no = employees.emp_no;


-- List the department of each employee with the following information: employee number, last name, first name, and department name.
Select employees.emp_no,employees.last_name,employees.first_name,departments.dept_name
From employees
Join dept_emp on employees.emp_no = dept_emp.emp_no
Join departments on dept_emp.dept_no = departments.dept_no;


-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."


-- List all employees in the Sales department, including their employee number, last name, first name, and department name.


-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.