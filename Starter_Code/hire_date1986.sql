SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE RIGHT(employees.hire_date, 4) = '1986';