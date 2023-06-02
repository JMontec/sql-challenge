SELECT dept_emp.dept_no, employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM dept_emp
LEFT JOIN employees
ON dept_emp.emp_no = employees.emp_no
LEFT JOIN departments
ON departments.dept_no = dept_emp.dept_no;